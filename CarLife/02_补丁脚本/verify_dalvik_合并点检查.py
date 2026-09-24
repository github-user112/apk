# -*- coding: utf-8 -*-
"""
Dalvik 合并点寄存器冲突静态检查 (为 Android 4.x 而生)

背景: Android 4.4 是 Dalvik。Dalvik 校验器最典型的崩法不是语法错,
      而是「同一个汇合点(标签)从不同前驱进来时, 某个寄存器的类型不一致」
      -> 运行时 VerifyError / ClassVerifyError 直接闪退。
      smali 能汇编通过不代表 Dalvik 校验通过, 所以必须单独查。

本脚本做简化类型推导:
  类型域 = { UNKNOWN, INT(含 boolean/byte/char/short/float), LONG(含 double),
             REF(class 名或 'null'), CONFLICT }
  规则:
    - 汇合点: 同一寄存器多前驱类型不同 -> 记为 CONFLICT
    - 之后若该寄存器被"读取"(用作指令参数) 且类型为 CONFLICT -> 报错
    - 被"写入"(move-result / const / iget / 目标寄存器) 则重新确定类型, 冲突解除
  这正好复刻 Dalvik 的行为: 冲突本身允许存在, 一旦使用就报错。
"""
import os
import re
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))
_PRJ = sys.argv[1] if len(sys.argv) > 1 else '_w112'
SMALI = os.path.join(ROOT, 'CarLife', '01_工程源码', _PRJ, 'smali')

UNKNOWN, INT, LONG, CONFLICT = '?', 'I', 'J', 'X'
# Dalvik 里 `const/4 vX, 0x0` 产生的是 "Zero/null" 类型: 既能当 int 也能当引用。
# 当成 INT 会产生海量假冲突 —— apktool 反编译出来的代码里普遍用它来当 null。
NULL = 'N'

INSN_RE = re.compile(r'^\s{4}([a-z0-9\-]+)(?:/\w+)?\s*(.*)$')

# 指令 -> (写入的寄存器, 写入类型, 读取的寄存器列表)
def parse(line):
    """返回 (op, writes[(reg,type)], reads[reg]) ; 无法识别返回 None"""
    m = INSN_RE.match(line)
    if not m:
        return None
    op, rest = m.group(1), m.group(2).strip()
    if not op or op.startswith('.'):
        return None
    regs = re.findall(r'\bv?(\d+)\b', rest)
    regs = [int(r) for r in regs]
    # 立即数指令(add-int/lit8 等)寄存器个数不定, 用 999 哨兵补齐避免越界
    regs = regs + [999] * (8 - len(regs))

    def wide(r):
        # 写入用: [(reg, type), ...]
        return [(r, LONG), (r + 1, LONG)]

    def rwide(r):
        # 读取用: [reg, ...]
        return [r, r + 1]

    if op.startswith('move-result-wide'):
        return op, [(regs[0], LONG), (regs[0] + 1, LONG)], []
    if op.startswith('move-result-object'):
        return op, [(regs[0], 'REF:?')], []
    if op.startswith('move-result'):
        return op, [(regs[0], INT)], []
    if op.startswith('move-object/16') or op.startswith('move-object'):
        return op, [(regs[0], 'REF:?')], [regs[1]]
    if op.startswith('move-wide'):
        return op, wide(regs[0]), rwide(regs[1])
    if op.startswith('move/16') or op.startswith('move '):
        return op, [(regs[0], INT)], [regs[1]]
    if op.startswith('const-string'):
        return op, [(regs[0], 'REF:java/lang/String')], []
    if op.startswith('const-wide'):
        return op, wide(regs[0]), []
    if op.startswith('const'):
        # const/4 vX, 0x0 是 Zero/null (见 NULL 说明), 不能用 INT 建模
        lit = rest.split(',')[-1].strip()
        return op, [(regs[0], NULL if lit in ('0x0', '0', '0x00') else INT)], []
    if op.startswith('iget-wide') or op.startswith('sget-wide'):
        return op, wide(regs[0]), []
    if op.startswith('iget-object') or op.startswith('sget-object'):
        return op, [(regs[0], 'REF:?')], []
    if op.startswith('iget-boolean') or op.startswith('sget-boolean') or \
       op.startswith('iget-byte') or op.startswith('sget-char') or \
       op.startswith('sget-short') or op.startswith('iget-short'):
        return op, [(regs[0], INT)], []
    if op.startswith('iget') or op.startswith('sget'):
        return op, [(regs[0], INT)], []
    if op.startswith('new-instance'):
        return op, [(regs[0], 'REF:' + (rest.split(',')[-1].strip().rstrip(';') if ',' in rest else '?'))], []
    if op.startswith('check-cast'):
        return op, [(regs[0], 'REF:?')], [regs[0]]
    if op.startswith('cmp-long') or op.startswith('cmpg-') or op.startswith('cmpl-'):
        return op, [(regs[0], INT)], rwide(regs[1]) + wide(regs[2])
    if op.startswith('if-'):
        # if-<op> vA [, vB] , :label   —— 读 vA(以及可选 vB)
        r = re.findall(r'\bv?(\d+)\b', rest.split(',')[0])
        return op, [], [int(x) for x in r]
    if op.startswith('monitor-') or op.startswith('throw') or op.startswith('return'):
        return op, [], regs
    if op.startswith('move-exception'):
        return op, [(regs[0], 'REF:?')], []
    if op.startswith('array-length'):
        return op, [(regs[0], INT)], [regs[1]]
    if op.startswith('aput-') or op.startswith('aget-'):
        return op, [], regs
    if op.startswith('add-int') or op.startswith('mul-int') or op.startswith('sub-int') or \
       op.startswith('shl-') or op.startswith('shr-') or op.startswith('and-int') or \
       op.startswith('or-int') or op.startswith('xor-int') or op.startswith('rem-int') or \
       op.startswith('div-int') or op.startswith('add-int/lit') or op.startswith('mul-int/lit'):
        if op.endswith('/lit8') or op.endswith('/lit16'):
            return op, [(regs[0], INT)], [regs[0], regs[1]]
        return op, [(regs[0], INT)], [regs[1], regs[2]]
    if op.startswith('add-long') or op.startswith('sub-long') or op.startswith('mul-long'):
        return op, wide(regs[0]), rwide(regs[1]) + wide(regs[2])
    if op.startswith('int-to-long') or op.startswith('int-to-double'):
        return op, wide(regs[0]), [regs[1]]
    if op.startswith('long-to-int') or op.startswith('double-to-int') or op.startswith('float-to-int'):
        return op, [(regs[0], INT)], rwide(regs[1])
    if op.startswith('add-int/2addr') or op.startswith('mul-int/2addr'):
        return op, [(regs[0], INT)], [regs[0], regs[1]]
    if op.startswith('invoke') or op.startswith('filled-new-array'):
        return op, [], regs
    if op.startswith('instance-of'):
        return op, [(regs[0], INT)], [regs[1]]
    # 默认: 保守地把第一个寄存器当写入, 其余当读取
    if regs:
        return op, [(regs[0], UNKNOWN)], regs[1:]
    return op, [], []


def method_blocks(lines):
    """把方法体切成基本块: 返回 [(label, [指令...])] 并给出每个块的后继"""
    blocks = {}
    order = []
    cur = 'entry'
    blocks[cur] = []
    order.append(cur)
    for ln in lines:
        s = ln.strip()
        if s.startswith(':') or (s.startswith('.catch ') is False and re.match(r'^:\w+', s)):
            if re.match(r'^:\w+', s):
                cur = s
                if cur not in blocks:
                    blocks[cur] = []
                    order.append(cur)
                continue
        blocks[cur].append(ln)
    return blocks, order


def successors(block_lines):
    """块的后继: 显式跳转标签 + 顺序下一块"""
    succ = []
    last = None
    for ln in block_lines:
        s = ln.strip()
        if s.startswith('goto') or s.startswith('if-') or s.startswith('return') or s.startswith('throw'):
            last = s
    if last:
        if last.startswith('goto'):
            m = re.search(r':(\w+)', last)
            if m:
                succ.append(':' + m.group(1))
        elif last.startswith('if-'):
            m = re.search(r':(\w+)', last)
            if m:
                succ.append(':' + m.group(1))
                succ.append('__fallthrough__')
        # return / throw: 无后继
    else:
        succ.append('__fallthrough__')
    return succ


def check_method(name, lines, nlocals, errs):
    # 收集标签位置
    labels = {}
    for i, ln in enumerate(lines):
        s = ln.strip()
        if re.match(r'^:\w+$', s) or re.match(r'^:try_\w+$', s) or re.match(r'^:catch_\w+$', s):
            labels.setdefault(s, []).append(i)
    # 简化: 按标签切块
    idx = [i for i, ln in enumerate(lines) if re.match(r'^:\w+$', ln.strip())]
    bounds = []
    start = 0
    for i in idx:
        bounds.append((start, i))
        start = i
    bounds.append((start, len(lines)))

    blocks = []
    for (a, b) in bounds:
        body = lines[a:b]
        lab = body[0].strip() if body and re.match(r'^:\w+$', body[0].strip()) else None
        insns = [l for l in body if l.strip() and not re.match(r'^:\w+$', l.strip())
                 and not l.strip().startswith('.')]
        blocks.append((lab, insns, a))

    # 每个块的入状态
    state = {}
    state[0] = [UNKNOWN] * (nlocals + 4)
    for it in range(6):  # 迭代到不动点
        changed = False
        for bi, (lab, insns, pos) in enumerate(blocks):
            st = list(state.get(bi, [UNKNOWN] * (nlocals + 4)))
            for ln in insns:
                p = parse(ln)
                if not p:
                    continue
                op, writes, reads = p
                # 读取检查
                for r in reads:
                    r = int(r[0]) if isinstance(r, tuple) else int(r)
                    if r < len(st) and st[r] == CONFLICT:
                        errs.append('%s: 使用冲突寄存器 v%d @ "%s"' % (name, r, ln.strip()))
                for (r, t) in writes:
                    r = int(r[0]) if isinstance(r, tuple) else int(r)
                    while len(st) <= r + 1:
                        st.append(UNKNOWN)
                    st[r] = t
            # 传播给后继
            for nb in succ_indices(blocks, bi, insns, labels_idx(blocks)):
                old = state.get(nb)
                if old is None:
                    state[nb] = list(st)
                    changed = True
                else:
                    merged = list(old)
                    for k in range(min(len(merged), len(st))):
                        if merged[k] == UNKNOWN:
                            if st[k] != UNKNOWN:
                                merged[k] = st[k]
                                changed = True
                        elif st[k] == UNKNOWN:
                            pass
                        elif merged[k] != st[k]:
                            if merged[k] == CONFLICT:
                                pass
                            elif merged[k] == NULL:
                                # Zero/null 与 int 或引用合并 = 对方类型
                                merged[k] = st[k]
                                changed = True
                            elif st[k] == NULL:
                                # 对方是 Zero/null -> 保持 merged[k] 不变
                                pass
                            elif isinstance(merged[k], str) and merged[k].startswith('REF') \
                                    and isinstance(st[k], str) and st[k].startswith('REF'):
                                # Dalvik 允许两个引用类型合并 -> 公共父类 (这里保守取 Object)
                                if merged[k] != 'REF:?':
                                    merged[k] = 'REF:?'
                                    changed = True
                            else:
                                merged[k] = CONFLICT
                                changed = True
                    state[nb] = merged
        if not changed:
            break


def labels_idx(blocks):
    d = {}
    for i, (lab, insns, pos) in enumerate(blocks):
        if lab:
            d[lab] = i
    return d


# ---------------------------------------------------------------------------
# 1.42 新增: 寄存器索引越界检查
# 1.41 的 P0 就是 `const/4 v14` 被注进 .locals 2 的方法 —— Dalvik 直接拒收整类
# (VFY: register index out of range)。上面 check_method 的状态数组会自动扩容,
# 抓不到这类问题, 必须显式按「.locals + 参数个数(含 this)」查寄存器上限。
# 注意先剥掉字符串字面量 / `L..;` 类型描述符 / `->` 后的字段与方法引用,
# 否则 `Lb/b/h/p0;`、`->p0:` 这类名字会被当成寄存器误报。
# ---------------------------------------------------------------------------
REG_TOKEN_RE = re.compile(r'\b([vp])(\d+)\b')


def check_reg_bounds(name, sig_line, body, nlocals, errs):
    m = re.search(r'\(([^)]*)\)', sig_line)
    nparamregs = 0
    if m:
        s = m.group(1)
        i = 0
        while i < len(s):
            if s[i] == '[':
                i += 1
                continue
            if s[i] == 'L':
                i = s.index(';', i) + 1
                nparamregs += 1
            else:
                # J/D 是宽类型, 占 2 个寄存器(对应两个 p 编号)
                nparamregs += 2 if s[i] in 'JD' else 1
                i += 1
    nthis = 0 if ' static ' in sig_line else 1
    limit = nlocals + nparamregs + nthis
    for ln in body:
        s = ln.strip()
        if not s or s.startswith('.'):
            continue
        s = re.sub(r'"[^"]*"', '', s)          # 字符串字面量里的 "v1" 不算
        s = s.split('#', 1)[0]                 # 行尾注释里的寄存器名不算
        s = s.split('->', 1)[0]                # -> 后是字段/方法引用, 不是寄存器
        s = re.sub(r'L[^;()]*;', '', s)        # L..; 类型描述符(类名可能叫 p0)
        for m2 in REG_TOKEN_RE.finditer(s):
            base = nlocals if m2.group(1) == 'p' else 0
            if base + int(m2.group(2)) >= limit:
                errs.append('%s: 寄存器越界 %s%s (该方法寄存器上限 v%d) @ "%s"'
                            % (name, m2.group(1), m2.group(2), limit - 1, ln.strip()))


def succ_indices(blocks, bi, insns, lidx):
    out = []
    last = insns[-1].strip() if insns else ''
    if last.startswith('goto'):
        m = re.search(r':(\w+)', last)
        if m and (':' + m.group(1)) in lidx:
            out.append(lidx[':' + m.group(1)])
    elif last.startswith('if-'):
        m = re.search(r':(\w+)', last)
        if m and (':' + m.group(1)) in lidx:
            out.append(lidx[':' + m.group(1)])
        if bi + 1 < len(blocks):
            out.append(bi + 1)
    elif last.startswith('return') or last.startswith('throw'):
        pass
    else:
        if bi + 1 < len(blocks):
            out.append(bi + 1)
    return out


TARGETS = [
    'a/a/a/a/m/m/d/j.smali', 'a/a/a/a/m/m/d/j$a.smali', 'a/a/a/a/m/m/d/j$b.smali',
    'a/a/a/a/m/m/d/k.smali', 'a/a/a/a/m/m/d/i.smali', 'a/a/a/a/m/m/d/h.smali',
    'a/a/a/a/m/m/c/f.smali', 'a/a/a/a/m/m/c/c.smali',
    'a/a/a/a/m/m/e/e.smali', 'a/a/a/a/m/m/e/a.smali',
    # 1.15 起的手工插桩点（原来漏了，1.18 补上）
    'a/a/a/a/m/m/d/a.smali',                      # 蓝牙阶段(阶段1) 三处静默点补日志
    'a/a/a/a/m/m/e/b.smali', 'a/a/a/a/m/m/e/d.smali', 'a/a/a/a/m/m/e/f.smali',
    # 1.42: m/m/b 是 1.41 Q2-B 手改点, 一直是门禁盲区, 补上
    'a/a/a/a/m/m/b.smali',
    # 1.18 新增/改动
    'com/baidu/carlifevehicle/ConnSwitchTask.smali',      # 新增: 模式切换后台线程
    'com/baidu/carlifevehicle/ConnModeHelper.smali',
    # 1.25: ConnLog 大量零参插桩目标，一并进合并点门禁
    'com/baidu/carlifevehicle/ConnLog.smali',
    # 1.24: logxfer 由 D8 产出，但手改 Java 重编后仍要过合并点门禁（原先盲区）
    'com/baidu/carlifevehicle/logxfer/LogHttpServer.smali',
    'com/baidu/carlifevehicle/logxfer/LogDownloadActivity.smali',
    'com/baidu/carlifevehicle/logxfer/LogXferEntry.smali',
    'com/baidu/carlifevehicle/logxfer/LogHttpServer$1.smali',
    'com/baidu/carlifevehicle/logxfer/LogDownloadActivity$BackHandler.smali',
    # 1.29: BtGuard 从 1.22 引入就一直是门禁盲区，而它是**手改 Java 重编**的类
    # （1.29 又重写了一遍），必须过合并点检查。补上。
    'com/baidu/carlifevehicle/logxfer/BtGuard.smali',
    'com/baidu/carlifevehicle/logxfer/BtGuard$1.smali',
]

errs = []
checked = 0
for rel in TARGETS:
    p = os.path.join(SMALI, rel.replace('/', os.sep))
    if not os.path.exists(p):
        # 不算错误: TARGETS 是跨版本累积的清单, 老版本工程里本来就没有
        # 1.15 / 1.18 才新增的文件。工程是否"整份文件缺失"由
        # 校验并补齐工程.py 负责(它才是专门的完整性门禁)。
        print('  (跳过: 本版本工程无此文件) ' + rel)
        continue
    with open(p, 'r', encoding='utf-8', errors='replace') as f:
        text = f.read().replace('\r\n', '\n')
    lines = text.split('\n')
    i = 0
    while i < len(lines):
        if lines[i].startswith('.method'):
            j = i + 1
            nlocals = 0
            body = []
            while j < len(lines) and not lines[j].startswith('.end method'):
                if lines[j].strip().startswith('.locals'):
                    try:
                        nlocals = int(lines[j].split()[1])
                    except Exception:
                        pass
                else:
                    body.append(lines[j])
                j += 1
            name = rel.split('/')[-1] + ' :: ' + lines[i].strip()
            check_method(name, body, nlocals, errs)
            check_reg_bounds(name, lines[i], body, nlocals, errs)
            checked += 1
            i = j + 1
        else:
            i += 1

# 不动点迭代会把同一条错误重复收集(每轮都会重扫所有块), 这里按首次出现顺序去重
_seen = set()
_uniq = []
for _e in errs:
    if _e not in _seen:
        _seen.add(_e)
        _uniq.append(_e)
errs = _uniq

print('已检查方法数: %d (文件 %d)' % (checked, len(TARGETS)))
if errs:
    print('\n===== 发现 %d 处潜在 Dalvik 校验问题 =====' % len(errs))
    for e in errs[:60]:
        print(' - ' + e)
    sys.exit(1)
print('\n===== 未发现合并点寄存器冲突 (Dalvik 校验风险低) =====')
