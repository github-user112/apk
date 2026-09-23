# -*- coding: utf-8 -*-
"""
patch_v25 —— 修 P0：createGroup 失败原因「三分」，reason=0 不再被永久放弃

背景（详见 04_文档/直连逻辑现状与优化点_2026-09-23.md 的 P0）
------------------------------------------------------------
`m.m.d.j$a.onFailure(I)`（P2P 自举器 createGroup 回调）在 1.14 时只判
`if-eq p1, 0x2`，1.14 修成 0x2 之后语义变成：

    p1 == 2 (BUSY)        -> removeGroup + 退避重试      ✅
    p1 != 2（含 0、1、..） -> 当作 UNSUPPORTED 永久放弃   ❌

而 WifiP2pManager 里 0 = ERROR、1 = P2P_UNSUPPORTED、2 = BUSY。
**reason=0 是「内部/临时错误」，重试是有意义的**，却被当成「驱动不支持」
直接 `j.b()` 彻底 disarm —— 车机「直连偶尔失败就只能切热点」很可能就是它。

修法
----
改成三分，且只有 reason==1 才是死路：
    1 = P2P_UNSUPPORTED -> 放弃（保留原行为：logP2pUnsupported + j.b() disarm）
    2 = BUSY            -> removeGroup + 退避重试
    0 / 其他未知值      -> 退避重试（不做 removeGroup，ERROR 时清组反而可能更糟）

实现细节（为什么把退避抽成 j.d()V）
----------------------------------
原实现的 `:backoff` 标签由「BUSY 分支 fall-through」独占。三分后会有两个前驱
（BUSY 与 ERROR）汇入同一标签，两处到达时 v0 的类型不同（一个是 j 引用、
一个是 int 常量），Dalvik/ART 在合并点可能判类型冲突 —— 1.18 就栽在这上面。
所以把退避逻辑抽成 `j.d()V`（新增，方法体无 try/catch、无参数），
两个分支各自 `invoke-virtual {v0}, ...j;->d()V` 再 `return-void`，
**彻底消除跨分支寄存器合并**。

同步
----
- ConnLog 新增 `logP2pError()`（reason=0 专用提示），`logP2pCreateFail` 增加
  reason==0 分支；其他未知值仍走 `logP2pNetFail`。
- 桌面图标名跟到 1.28（沿用 patch_v24 的做法，版本号从 apktool.yml 推导）。
"""
import os
import re
import subprocess
import sys

ROOT = r"C:\PJGG\apk\CarLife\01_工程源码"
SRC = os.path.join(ROOT, "_w127")
DST = os.path.join(ROOT, "_w128")

REL_JA = r"smali\a\a\a\a\m\m\d\j$a.smali"
REL_J = r"smali\a\a\a\a\m\m\d\j.smali"
REL_CONNLOG = r"smali\com\baidu\carlifevehicle\ConnLog.smali"
REL_STRINGS = r"res\values\strings.xml"

JREF = "La/a/a/a/m/m/d/j;"


def robocopy(src, dst):
    rc = subprocess.run(
        ["robocopy", src, dst, "/E", "/XD", os.path.join(src, "build"),
         "/R:0", "/W:0", "/NFL", "/NDL", "/NJH", "/NJS", "/NC", "/NS", "/NP"],
        capture_output=True,
    ).returncode
    if rc > 7:
        sys.exit("!!! robocopy 失败 rc=%d" % rc)
    if not os.path.isfile(os.path.join(dst, "apktool.yml")):
        sys.exit("!!! 复制失败: %s 不存在" % os.path.join(dst, "apktool.yml"))


def sub_once(text, old, new, what):
    if text.count(old) != 1:
        sys.exit("!!! %s: 期望匹配 1 次，实际 %d 次\n---\n%s" % (what, text.count(old), old))
    return text.replace(old, new)


def rw(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()


def ww(path, text):
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)


# ---------------------------------------------------------------- j$a.onFailure
OLD_ONFAILURE = """    # bug2 修复: 原比较 0x1 导致 reason=1(不支持) 走 BUSY 重试、
    # reason=2(BUSY) 反而直接放弃, 分级对调。现改为 0x2。
    const/4 v0, 0x2

    if-eq p1, v0, :check_busy

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "P2P UNSUPPORTED by driver -> give up, please use hotspot or USB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # --- 1.23: 界面失败提示（对齐 5+ e0） ---
    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void

    :check_busy

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "BUSY -> removeGroup to release the state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # --- 1.23: 界面失败提示（对齐 5+ e0） ---
    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :backoff
    # 退避: 4000 + attempt*2000 ms
    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    const/16 v1, 0xfa0

    iget v2, v0, La/a/a/a/m/m/d/j;->g:I

    const/16 v3, 0x7d0

    mul-int v2, v2, v3

    add-int v1, v1, v2

    int-to-long v4, v1

    iget-object v6, v0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v7, v0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method"""

NEW_ONFAILURE = """    # --- 1.28 / P0: 三分。 ---
    #     0 = ERROR (内部/临时错误)       -> 退避重试（★本次修复: 以前被当成"不支持"永久放弃）
    #     1 = P2P_UNSUPPORTED (驱动不支持) -> 放弃 + 提示降级（唯一死路）
    #     2 = BUSY (状态机被占)            -> removeGroup 清干净 + 退避重试
    #     其他未知值                        -> 按 ERROR 退避重试（永久放弃风险太高）
    #
    # 只有 reason==1 才 disarm；其余一律重试。
    const/4 v0, 0x1

    # p1 != 1 -> 不是"不支持"，去 :not_unsupported 继续分
    if-ne p1, v0, :not_unsupported

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "P2P UNSUPPORTED by driver -> give up, please use hotspot or USB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # --- 1.23: 界面失败提示（对齐 5+ e0） ---
    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->b()V

    return-void

    :not_unsupported
    const/4 v0, 0x2

    # if-ne = 不相等才跳：p1 != 2（0 或未知）-> :error_retry；
    #                    p1 == 2 -> fall through 走 BUSY。
    # ★注意别写成 if-eq（相等则跳）—— 那会把 BUSY 和 ERROR 整个对调。
    if-ne p1, v0, :error_retry

    const-string v0, "CarLifeP2PBoot"

    const-string v1, "BUSY -> removeGroup to release the state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    iget-object v1, v0, La/a/a/a/m/m/d/j;->b:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, v0, La/a/a/a/m/m/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    # 退避重试（抽成 j.d()V：两个分支各自调用后 return，避免共享标签的寄存器合并）
    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V

    return-void

    :error_retry
    # reason=0 (ERROR) 或未知值：临时错误，退避重试，绝不永久放弃。
    # 不做 removeGroup —— ERROR 时状态机多半本来就没组，清组反而可能把它搅乱。
    const-string v0, "CarLifeP2PBoot"

    const-string v1, "ERROR/unknown reason -> backoff retry (temporary, never give up)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pCreateFail(I)V

    iget-object v0, p0, La/a/a/a/m/m/d/j$a;->a:La/a/a/a/m/m/d/j;

    invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V

    return-void
.end method"""

# ---------------------------------------------------------------- j.d()V 新增
NEW_J_BACKOFF = """
.method public final d()V
    .locals 7

    # --- 1.28: 从 j$a.onFailure 抽出来的退避重试（4000 + attempt*2000 ms）。 ---
    #     抽成方法是为了让 BUSY / ERROR 两个分支各自调用后直接 return，
    #     不共享 :backoff 标签 —— 共享会让 v0 在合并点一边是 j 引用一边是 int。
    const/16 v0, 0xfa0

    iget v1, p0, La/a/a/a/m/m/d/j;->g:I

    const/16 v2, 0x7d0

    mul-int v1, v1, v2

    add-int v0, v0, v1

    int-to-long v3, v0

    iget-object v5, p0, La/a/a/a/m/m/d/j;->e:Landroid/os/Handler;

    iget-object v6, p0, La/a/a/a/m/m/d/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
"""

# ---------------------------------------------------------------- ConnLog
OLD_LOGCREATE = """    :check2
    const/4 v0, 0x2

    if-ne p0, v0, :other

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V

    goto :done

    :other
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pNetFail()V
"""

NEW_LOGCREATE = """    :check2
    const/4 v0, 0x2

    if-ne p0, v0, :check0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V

    goto :done

    :check0
    # --- 1.28: reason=0 (ERROR) 是临时错误，会退避重试，
    #     别再显示"请检查网络设置"（那句听着像死路） ---
    if-nez p0, :other

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pError()V

    goto :done

    :other
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pNetFail()V
"""

NEW_LOGP2PERROR = """.method public static logP2pError()V
    .locals 1

    const-string v0, "\u26a0 \u76f4\u8fde\u5efa\u7ec4\u5931\u8d25(\u7cfb\u7edf\u5185\u90e8\u9519\u8bef)\uff0c\u6b63\u5728\u81ea\u52a8\u91cd\u8bd5"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

"""


def main():
    robocopy(SRC, DST)

    # ---- 1) 版本号 127 -> 128 ----
    yml = os.path.join(DST, "apktool.yml")
    t = rw(yml)
    t = sub_once(t, "versionCode: 127", "versionCode: 128", "apktool.yml versionCode")
    t = sub_once(t, "versionName: mod1.27", "versionName: mod1.28", "apktool.yml versionName")
    ww(yml, t)

    m = re.search(r"versionName:\s*mod([\d.]+)", t)
    if not m:
        sys.exit("!!! 无法从 apktool.yml 解析 versionName")
    ver = m.group(1)
    new_name = "\u767e\u5ea6CarLife %s" % ver   # 百度CarLife 1.28

    # ---- 2) 桌面图标名跟版本 ----
    p = os.path.join(DST, REL_STRINGS)
    s = rw(p)
    s = sub_once(s,
                 '<string name="app_name">\u767e\u5ea6CarLife 1.27</string>',
                 '<string name="app_name">%s</string>' % new_name,
                 "strings.xml app_name")
    ww(p, s)

    # ---- 3) j$a.onFailure 三分 ----
    p = os.path.join(DST, REL_JA)
    s = rw(p)
    s = sub_once(s, OLD_ONFAILURE, NEW_ONFAILURE, "j$a.onFailure")
    ww(p, s)

    # ---- 3.5) 顺带修: j.a() 里 invoke-direct 调 public final c()V ----
    #     c()V 是 public final（不是 private/构造），只能用 invoke-virtual。
    #     写成 invoke-direct 时 Dalvik 报
    #       VFY: unable to resolve direct method 650: La/a/a/a/m/m/d/j;.c ()V
    #     运行时解析失败 -> 被 :catch_2 吞掉 -> 日志上只看到
    #       "addLocalService failed (ignored)"
    #     也就是说 **DNS-SD 本地服务从 1.15 起根本没发布成功过**（patchI 白做了）。
    p = os.path.join(DST, REL_J)
    s = rw(p)
    s = sub_once(s,
                 "invoke-direct {p0}, La/a/a/a/m/m/d/j;->c()V",
                 "invoke-virtual {p0}, La/a/a/a/m/m/d/j;->c()V",
                 "j.a() 调用 c()V 的助记符 invoke-direct -> invoke-virtual")
    ww(p, s)

    # ---- 4) j.d()V 新增（追加到文件末尾） ----
    p = os.path.join(DST, REL_J)
    s = rw(p)
    if ".method public final d()V" in s:
        sys.exit("!!! j.smali 里已经有 d()V")
    if not s.endswith("\n"):
        s += "\n"
    s += NEW_J_BACKOFF
    ww(p, s)

    # ---- 5) ConnLog: 新增 logP2pError + logP2pCreateFail 加 reason=0 ----
    p = os.path.join(DST, REL_CONNLOG)
    s = rw(p)
    s = sub_once(s, OLD_LOGCREATE, NEW_LOGCREATE, "ConnLog.logP2pCreateFail")
    anchor = ".method public static logWifiOff()V"
    s = sub_once(s, anchor, NEW_LOGP2PERROR + anchor, "ConnLog 插入 logP2pError")
    ww(p, s)

    # ---- 6) 自检 ----
    ja = rw(os.path.join(DST, REL_JA))
    for must in [":not_unsupported", ":error_retry",
                 "invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V"]:
        if must not in ja:
            sys.exit("!!! j$a.smali 缺少 %s" % must)
    if ":check_busy" in ja or ":backoff" in ja:
        sys.exit("!!! j$a.smali 仍留有旧标签 :check_busy/:backoff")
    # 极性静态核对（血泪第 4 条：分支方向已写反过三次，必须逐条断言）
    #   1) p1 == 1 必须 fall-through 到 give-up：=> 用 if-ne 跳走"不是 1"的情况
    #   2) p1 == 2 必须 fall-through 到 BUSY：  => 同样用 if-ne 跳走"不是 2"的情况
    #      写成 if-eq 就整个对调了（BUSY 去重试、ERROR 去 removeGroup）。
    i_ne1 = ja.index("if-ne p1, v0, :not_unsupported")
    i_giveup = ja.index("P2P UNSUPPORTED by driver")
    if not (i_ne1 < i_giveup):
        sys.exit("!!! 极性可疑: if-ne(1) 不在 give-up 之前")
    if "if-eq p1, v0, :not_unsupported" in ja:
        sys.exit("!!! 极性写反: reason==1 的判定用了 if-eq")
    i_ne2 = ja.index("if-ne p1, v0, :error_retry")
    i_busy = ja.index("BUSY -> removeGroup")
    if not (i_ne2 < i_busy):
        sys.exit("!!! 极性可疑: if-ne(2) 不在 BUSY 之前")
    if "if-eq p1, v0, :error_retry" in ja:
        sys.exit("!!! 极性写反: reason==2 的判定用了 if-eq（应为 if-ne）")

    j = rw(os.path.join(DST, REL_J))
    if "invoke-direct {p0}, La/a/a/a/m/m/d/j;->c()V" in j:
        sys.exit("!!! j.a() 仍在用 invoke-direct 调 c()V")
    if j.count("invoke-virtual {p0}, La/a/a/a/m/m/d/j;->c()V") != 1:
        sys.exit("!!! j.a() 调 c()V 的 invoke-virtual 数量异常")
    if j.count(".method public final d()V") != 1:
        sys.exit("!!! j.smali 里 d()V 定义数不是 1")
    if ja.count("invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V") != 2:
        sys.exit("!!! j$a.smali 里 j.d()V 调用数不是 2（实际 %d）"
                 % ja.count("invoke-virtual {v0}, La/a/a/a/m/m/d/j;->d()V"))

    cl = rw(os.path.join(DST, REL_CONNLOG))
    if ".method public static logP2pError()V" not in cl:
        sys.exit("!!! ConnLog.logP2pError 未写入")
    # 一处跳转 + 一处标签 = 2
    if cl.count(":check0") != 2:
        sys.exit("!!! ConnLog :check0 数量异常（实际 %d）" % cl.count(":check0"))

    # 结构自检：不能有非 handler 分支跳 :catch_x（1.26 的血泪）
    for rel in (REL_JA, REL_J, REL_CONNLOG):
        txt = rw(os.path.join(DST, rel))
        for ln in txt.splitlines():
            st = ln.strip()
            if (("goto :catch_" in st) or ("if-" in st and ":catch_" in st)) \
                    and "move-exception" not in st:
                sys.exit("!!! %s: 正常分支跳进了 catch handler -> %s" % (rel, st))

    print("OK: _w128 已生成")
    print("    P0 修好: onFailure 三分 (1=放弃 / 2=removeGroup+重试 / 0+未知=重试)")
    print("    退避抽成 j.d()V，两个分支各自 return，无共享标签")
    print("    ConnLog 新增 logP2pError（reason=0 专用提示）")
    print("    桌面图标名: %s / versionCode=128 / versionName=mod1.28" % new_name)


if __name__ == "__main__":
    main()
