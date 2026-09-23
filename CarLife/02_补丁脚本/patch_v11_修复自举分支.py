# -*- coding: utf-8 -*-
"""
CarLife 车机端 修复直连自举器分支写反 v11  ->  产出 1.14
基线: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w113   (1.13)
产出: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w114

=============================================================================
Bug 来源: MuMu(Android 4.4.4) 实测发现。日志显示自举器 8 秒检查点打印
      "P2P group detected, bootstrap idle" —— 但模拟器根本不支持 P2P,
      不可能有组。说明"有无组"的判断方向反了。

两处方向写反 (patchH 重写 j$b/j$a 时引入的回归, 老坑复发):
-----------------------------------------------------------------------------
  bug1  j$b.run()  有无组判断
      i.f 的语义(见 i.smali 333/388/467 行):
        info.groupFormed == true  -> f = 1   (组已形成)
        groupFormed == false      -> f = 0
        wifi_p2p_state 断开       -> f = 0
      即 f=true 才是"有组"。
      原代码:  if-eqz v1, :formed   # f==false 却跳去打印"有组, 空闲"
      后果: 车机上正常无组状态(f=false) -> 永远不 createGroup, patchD 失效;
            反而已有组时(f=true) -> 又去 createGroup -> 必然 BUSY。
            这也解释了早期真机 createGroup BUSY 的现象。
      修复:  if-nez v1, :formed     # f==true(有组) -> 空闲; false -> 继续建组

  bug2  j$a.onFailure(reason) 分级
      原代码:
          if-eq p1, 1, :check_busy
          <give up>                       # 实际执行的是 reason==2/0
          :check_busy
          if-eq p1, 2, :backoff
          <removeGroup + 退避>            # 实际执行的是 reason==1
      即 reason=1(P2P 不支持) 被拿去无限退避重试, reason=2(BUSY) 反而直接放弃,
      分级完全对调。
      修复:
          a) 第一个比较常量 0x1 -> 0x2    # reason==2 才进 :check_busy
          b) 删掉 :check_busy 里的 if-eq p1, 2, :backoff
             (能走到这里只剩 reason==2, 无条件 removeGroup 后退避)
      修复后行为: reason=2 BUSY -> removeGroup + 退避重试
                  reason=1 UNSUPPORTED -> give up 提示降级
                  reason=0 ERROR -> give up (保守处理)

  patchX  版本号 113 -> 114

Android 4 兼容性: 只改分支方向与立即数, 不新增方法/寄存器/API。
"""
import os
import re
import shutil
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))
SRC = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w113')
DST = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w114')

JB = 'a/a/a/a/m/m/d/j$b.smali'
JA = 'a/a/a/a/m/m/d/j$a.smali'

errors = []


def err(m):
    errors.append(m)
    print('  [ERR] ' + m)


def log(m):
    print('  ' + m)


def rd(p):
    with open(p, 'r', encoding='utf-8') as f:
        return f.read()


def wr(p, s):
    with open(p, 'w', encoding='utf-8', newline='\n') as f:
        f.write(s)


def sub1(txt, old, new, what):
    if old not in txt:
        err('未找到锚点: %s' % what)
        return txt
    n = txt.count(old)
    if n != 1:
        err('锚点不唯一(%d 处): %s' % (n, what))
        return txt
    log('    OK %s' % what)
    return txt.replace(old, new)


# =========================================================================
# 0. 准备工程目录
# =========================================================================
if not os.path.isdir(SRC):
    print('!!! 基线不存在: %s' % SRC)
    sys.exit(1)

if os.environ.get('SKIP_COPY') == '1' and os.path.isdir(DST):
    # 目录很大(2400+ 文件), Python shutil.copytree 在 Windows 上会超时被杀。
    # 用 robocopy 预先复制好后再跑本脚本, 设 SKIP_COPY=1 跳过复制步骤。
    log('[0] SKIP_COPY=1, 复用已有 _w114')
else:
    if os.path.isdir(DST):
        shutil.rmtree(DST)
    log('[0] 复制基线 _w113 -> _w114')
    shutil.copytree(SRC, DST)

S = os.path.join(DST, 'smali')

# =========================================================================
# bug1: j$b 有无组判断方向
# =========================================================================
log('[1] bug1 修复 j$b 有无组判断 (if-eqz -> if-nez)')
jb_path = os.path.join(S, *JB.split('/'))
jb = rd(jb_path)

# 确认这是自举器 runnable
if 'P2pBootstrap.java' not in jb:
    err('%s 不是自举器 runnable' % JB)
if 'bootstrap idle' not in jb:
    err('%s 缺少 idle 日志字符串, 类定位错误' % JB)

jb = sub1(jb,
          '    if-eqz v1, :formed\n',
          '    # bug1 修复: i.f=true(组已形成) 才空闲; 原为 if-eqz 写反, 导致\n'
          '    # 无组时被判"有组"永不建组、有组时反而 createGroup 必 BUSY\n'
          '    if-nez v1, :formed\n',
          'j$b if-eqz v1, :formed -> if-nez')

wr(jb_path, jb)

# =========================================================================
# bug2: j$a.onFailure 分级方向
# =========================================================================
log('[2] bug2 修复 j$a 失败分级 (reason=1/2 处理对调)')
ja_path = os.path.join(S, *JA.split('/'))
ja = rd(ja_path)

if 'createGroup failed, reason=' not in ja:
    err('%s 不是 createGroup 回调' % JA)

# a) 第一个比较常量 0x1 -> 0x2 (reason==2 即 BUSY 才进 :check_busy)
ja = sub1(ja,
          '    const/4 v0, 0x1\n\n    if-eq p1, v0, :check_busy\n',
          '    # bug2 修复: 原比较 0x1 导致 reason=1(不支持) 走 BUSY 重试、\n'
          '    # reason=2(BUSY) 反而直接放弃, 分级对调。现改为 0x2。\n'
          '    const/4 v0, 0x2\n\n    if-eq p1, v0, :check_busy\n',
          'j$a 第一个比较 0x1 -> 0x2')

# b) 删掉 :check_busy 里的 if-eq p1, 2, :backoff
#    (能走到 :check_busy 的只剩 reason==2, 无条件 removeGroup 后退避)
ja = sub1(ja,
          '    :check_busy\n    const/4 v0, 0x2\n\n    if-eq p1, v0, :backoff\n',
          '    :check_busy\n',
          'j$a 删除 check_busy 内的二次比较')

wr(ja_path, ja)

# =========================================================================
# patchX: 版本号 113 -> 114
# =========================================================================
log('[3] patchX 版本号 113 -> 114')
yml_path = os.path.join(DST, 'apktool.yml')
yml = rd(yml_path)
before = re.search(r'versionCode: .*', yml)
if not before:
    err('apktool.yml 无 versionCode')
else:
    # 血泪: versionCode 必须是裸整数, 加引号会抛 NumberFormatException
    yml = re.sub(r'versionCode: .*', 'versionCode: 114', yml, count=1)
    yml = re.sub(r'versionName: .*', 'versionName: mod1.14', yml, count=1)
    log('    %s  ->  versionCode: 114' % before.group(0).strip())
wr(yml_path, yml)

# =========================================================================
# 自检
# =========================================================================
log('[4] 自检')


def code_only(txt):
    """去掉注释行 + 统一 CRLF, 防止注释里的原代码字面量造成误报"""
    txt = txt.replace('\r\n', '\n')
    return '\n'.join(l for l in txt.split('\n') if not l.lstrip().startswith('#'))


jb2 = code_only(rd(jb_path))
ja2 = code_only(rd(ja_path))

# 1. j$b 分支方向
if 'if-eqz v1, :formed' in jb2:
    err('j$b 仍残留 if-eqz v1, :formed (方向未修)')
if 'if-nez v1, :formed' not in jb2:
    err('j$b 缺少 if-nez v1, :formed')
else:
    log('    j$b: f=true(有组)->空闲, f=false->建组 (方向正确)')

# 2. j$a 分级方向
if 'if-eq p1, v0, :check_busy' not in ja2:
    err('j$a 缺少 if-eq p1, v0, :check_busy')
if re.search(r'if-eq p1, v0, :backoff', ja2):
    err('j$a 仍残留 check_busy 内的二次比较')
if ja2.count('const/4 v0, 0x2') != 1:
    err('j$a 应恰好一处 const/4 v0, 0x2 (比较常量; 二次比较的应随删除消失)')
else:
    log('    j$a: reason=2->removeGroup+退避, reason=1->give up (方向正确)')

# 3. 寄存器范围 (smali 汇编器硬上限 v15)
for rel in (JB, JA):
    fp = os.path.join(S, *rel.split('/'))
    txt = rd(fp)
    for mm in re.finditer(r'^\s*(invoke-|if-|goto|const|move|add-|mul-|sub-|cmp-|int-to-)'
                          r'\S*', txt, re.M):
        line = mm.group(0)
        if '/range' in line:
            continue
        for rg in re.findall(r'\bv(\d+)\b', line):
            if int(rg) > 15:
                err('%s 寄存器越界 v%s: %s' % (rel, rg, line.strip()))
log('    寄存器范围自检完成 (严格 v0-v15)')

# 4. 版本号
yml2 = rd(yml_path).replace('\r\n', '\n')
if not re.search(r'^\s*versionCode:\s*114\s*$', yml2, re.M):
    err('apktool.yml versionCode 未升到 114')
elif 'versionName: mod1.14' not in yml2:
    err('apktool.yml versionName 未升到 mod1.14')
else:
    log('    apktool.yml: versionCode=114 / mod1.14')

print()
if errors:
    print('!!! 补丁失败，共 %d 个错误:' % len(errors))
    for e in errors:
        print('   - ' + e)
    sys.exit(1)
print('=== patch_v11 完成: _w114 (1.14, 自举器分支方向已修复) ===')
