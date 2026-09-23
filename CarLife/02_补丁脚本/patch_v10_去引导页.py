# -*- coding: utf-8 -*-
"""
CarLife 车机端 (com.baidu.carlifevehicle) 去掉开机引导界面 v10  ->  产出 1.13
基线: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w112   (已含 patchA~S, 1.12)
产出: C:\\PJGG\\apk\\CarLife\\01_工程源码\\_w113

=============================================================================
现象: 打开 CarLife 先看到 Logo 启动页约 2 秒, 首次安装还会进入
      可左右滑动的「用户引导」ViewPager, 要手动翻完才能进主界面。
      车机上每次冷启动都要等这两屏, 很烦。

根因(代码定位):
-----------------------------------------------------------------------------
  com/baidu/carlifevehicle/CarlifeActivity.onCreate()
      -> new a/a/b/n/k (Fragment 管理器)
      -> k.a(a/a/b/n/r)          # r = LaunchFragment, inflate frag_launch.xml (纯 Logo)

  a/a/b/n/r.onCreateView()       # LaunchFragment
      SharedPreferences.getBoolean("first_install_key", true)
      -> true (首次安装) : a/a/b/o/b.b(0x7d9, 2000)   # 延时 2000ms 发消息 2009
      -> false          : a/a/b/o/b.b(0x7d5, 2000)   # 延时 2000ms 发消息 2005
      并把 first_install_key 写回 false

  com/baidu/carlifevehicle/CarlifeActivity$a.handleMessage()
      0x7d9 (2009) -> :cond_9 -> k.a(a/a/b/n/u)      # u = 用户引导 ViewPager
      ------------------------------------------------  (fragment_user_guide.xml
                                                        + DirectionViewPager)
      0x7d5 (2005) -> :pswitch_1 -> 主界面

补丁内容:
-----------------------------------------------------------------------------
  patchT  LaunchFragment 永远走 2005(主界面)
      把  if-eqz p1, :cond_2   (首次安装 -> 引导页)
      换成 goto :cond_2        (无条件 -> 主界面)
      first_install_key 从此不再影响跳转; UserGuideFragment 成为死代码,
      即使将来有别处发 2009 也不会再被走到(那条分支保留, 不动, 零风险)。

  patchU  启动停留 2000ms -> 100ms
      const/16 p2, 0x7d0  ->  const/16 p2, 0x64
      保留极短延时是为了让 Activity/Fragment 事务提交完成再切页,
      直接给 0 在部分车机上会闪一下黑屏。

  patchV  版本号 112 -> 113

Android 4 兼容性:
      只改跳转与立即数, 不新增方法/寄存器/API。Dalvik(4.4) 上无新增汇合点,
      goto 与 if-eqz 都是 API 1 起就有的基础指令。
"""
import os
import re
import shutil
import sys

_HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(_HERE, '..', '..'))           # C:\PJGG\apk
SRC = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w112')        # 基线 1.12
DST = os.path.join(ROOT, 'CarLife', '01_工程源码', '_w113')        # 产出 1.13

R_SM = 'a/a/b/n/r.smali'        # LaunchFragment
U_SM = 'a/a/b/n/u.smali'        # UserGuideFragment (仅确认存在, 不改)

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
    """精确替换一次"""
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
    # 目录很大(2400+ 文件), Python shutil.copytree 在 Windows 上会超时。
    # 用 robocopy 预先复制好后再跑本脚本, 设 SKIP_COPY=1 跳过复制步骤。
    log('[0] SKIP_COPY=1, 复用已有 _w113')
else:
    if os.path.isdir(DST):
        shutil.rmtree(DST)
    log('[0] 复制基线 _w112 -> _w113')
    shutil.copytree(SRC, DST)

S = os.path.join(DST, 'smali')

# =========================================================================
# patchT: LaunchFragment 永远走主界面 (跳过用户引导 ViewPager)
# =========================================================================
log('[1] patchT 跳过用户引导页')
r_path = os.path.join(S, *R_SM.split('/'))
r = rd(r_path)

# 确认这就是 LaunchFragment (inflate 0x7f0c002c = frag_launch)
if '0x7f0c002c' not in r:
    err('%s 不含 frag_launch(0x7f0c002c), 类定位错误' % R_SM)
if 'LaunchFragment' not in r:
    err('%s 不含 LaunchFragment 日志 tag, 类定位错误' % R_SM)

# --- T-1: 2000ms -> 100ms ---
r = sub1(r,
         '    const/16 p2, 0x7d0\n',
         '    # patchU: 启动页停留 2000ms -> 100ms (0x64); 留 100ms 让 Fragment 事务提交完\n'
         '    const/16 p2, 0x64\n',
         'r.smali 延时 2000ms -> 100ms')

# --- T-2: 首次安装判断 -> 无条件走主界面 ---
r = sub1(r,
         '    if-eqz p1, :cond_2\n',
         '    # patchT: 原为 if-eqz p1, :cond_2 (first_install_key==true 就去引导页)。\n'
         '    #          改成无条件跳转 -> 永远走 :cond_2 (消息 2005 = 主界面), 跳过 UserGuideFragment。\n'
         '    goto :cond_2\n',
         'r.smali 首次安装引导分支 -> goto :cond_2')

wr(r_path, r)

# =========================================================================
# patchU: 版本号 112 -> 113
# =========================================================================
log('[2] patchV 版本号 112 -> 113')
yml_path = os.path.join(DST, 'apktool.yml')
yml = rd(yml_path)
before = re.search(r'versionCode: .*', yml)
if not before:
    err('apktool.yml 无 versionCode')
else:
    # 血泪: apktool.yml 的 versionCode 必须是裸整数, 加引号会让 apktool 抛
    #       NumberFormatException: For input string: "'113'"
    yml = re.sub(r'versionCode: .*', 'versionCode: 113', yml, count=1)
    yml = re.sub(r'versionName: .*', 'versionName: mod1.13', yml, count=1)
    log('    %s  ->  versionCode: 113' % before.group(0).strip())
wr(yml_path, yml)

# =========================================================================
# 自检
# =========================================================================
log('[3] 自检')


def code_only(txt):
    """去掉注释行再自检, 否则会命中注释里引用的原代码字面量。
    apktool 产出可能是 CRLF, 顺带统一成 LF, 否则行首锚定 ^ 匹配不到。"""
    txt = txt.replace('\r\n', '\n')
    return '\n'.join(l for l in txt.split('\n') if not l.lstrip().startswith('#'))


r2 = code_only(rd(r_path))

# 1. 引导分支已移除 (只看代码行)
if 'if-eqz p1, :cond_2' in r2:
    err('r.smali 仍残留 if-eqz p1, :cond_2 (引导页分支)')
if 'goto :cond_2' not in r2:
    err('r.smali 缺少 goto :cond_2')
else:
    log('    r.smali: 引导分支已改为无条件跳转主界面')

# 2. 延时已缩短
if 'const/16 p2, 0x7d0' in r2:
    err('r.smali 启动延时仍为 2000ms')
if 'const/16 p2, 0x64' not in r2:
    err('r.smali 未写入 100ms 延时')
else:
    log('    r.smali: 启动延时 100ms')

# 3. 主界面消息 2005(0x7d5) 仍在, 且它排在引导页消息 2009(0x7d9) 之后
#    注: 2009 那段字节仍在文件里, 但已被 goto 绕过成为死代码;
#        不动它最安全(避免破坏分支标签引用)。
if 'const/16 p1, 0x7d5' not in r2:
    err('r.smali 找不到 2005(主界面) 消息号')
elif r2.index('const/16 p1, 0x7d5') < r2.index('const/16 p1, 0x7d9'):
    err('消息号顺序异常: 2005 应在 2009(已死代码) 之后')
else:
    log('    r.smali: 跳转目标 2005(主界面); 2009(引导页) 已成不可达死代码')

# 4. 寄存器范围 (smali 汇编器硬上限 v15)
for rel in (R_SM,):
    fp = os.path.join(S, *rel.split('/'))
    txt = rd(fp)
    for mm in re.finditer(r'^\s*(invoke-|if-|goto|const|move|add-|mul-|sub-|cmp-)'
                          r'\S*', txt, re.M):
        line = mm.group(0)
        if '/range' in line:
            continue
        for rg in re.findall(r'\bv(\d+)\b', line):
            if int(rg) > 15:
                err('%s 寄存器越界 v%s: %s' % (rel, rg, line.strip()))
log('    寄存器范围自检完成 (严格 v0-v15)')

# 5. 版本号
yml2 = rd(yml_path).replace('\r\n', '\n')      # apktool.yml 可能是 CRLF
if not re.search(r'^\s*versionCode:\s*113\s*$', yml2, re.M):   # versionInfo 下有两空格缩进
    err('apktool.yml versionCode 未升到 113 (且必须是裸整数, 不能加引号)')
elif 'versionName: mod1.13' not in yml2:
    err('apktool.yml versionName 未升到 mod1.13')
else:
    log('    apktool.yml: versionCode=113 / mod1.13')

# 6. UserGuideFragment 仍在(未误删), 只是不再被跳转
u_path = os.path.join(S, *U_SM.split('/'))
if os.path.exists(u_path):
    log('    UserGuideFragment 保留(成为死代码), 未误删 -> 如需回滚把 goto 改回 if-eqz 即可')
else:
    err('UserGuideFragment 文件丢失')

print()
if errors:
    print('!!! 补丁失败，共 %d 个错误:' % len(errors))
    for e in errors:
        print('   - ' + e)
    sys.exit(1)
print('=== patch_v10 完成: _w113 (1.13, 已去掉开机引导界面) ===')
