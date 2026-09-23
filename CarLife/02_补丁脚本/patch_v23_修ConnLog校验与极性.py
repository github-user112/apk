# -*- coding: utf-8 -*-
"""
patch_v23 —— 修 1.25 在 MuMu(Android 4.4.4 / Dalvik) 上启动即崩的 VerifyError

现象（MuMu 实测，1.25 装上去一启动就 Force Close）：
    W/dalvikvm: VFY: invalid use of move-exception
    W/dalvikvm: Verifier rejected class Lcom/baidu/carlifevehicle/ConnLog;
    E/AndroidRuntime: FATAL EXCEPTION: main
                      java.lang.VerifyError: com/baidu/carlifevehicle/ConnLog
                        at a.a.a.a.n.g.c(:8) ... VehicleApplication.onCreate()

根因（1.25 新增的三个方法 try/catch 结构全部写坏）：
  1) hasUsableLocalIp() 把「循环退出」的三条分支跳到了 :catch_0 —— 而 :catch_0 是
     异常处理器入口、首条指令是 move-exception。正常控制流执行到 move-exception 就是
     "invalid use of move-exception"，Dalvik 验不过直接拒类（App 起不来）。
  2) precheck() / awaitLocalIp() 的正常出口（:done / :tick）落在 catch handler 之后，
     即正常分支跳进了 handler 区域 —— 同一类问题，必须让 handler 独占且放在方法末尾。
  3) hasUsableLocalIp() 里 hostAddress.length() 一处极性写反：
     `if-nez v5, :goto_1` 会在「长度非 0」时跳过该地址，导致空串地址被当成可用地址。

修法（最小改动，不碰逻辑）：
  * 循环/正常出口一律改跳普通标签（:ret / :done / :tick），且这些标签放在 :catch_0 **之前**；
  * catch handler 挪到方法末尾，入口只由异常到达，处理完自己 return 或 goto 回循环；
  * 长度判空 if-nez -> if-eqz。

另：把 _w125 复制为 _w126，versionCode 125 -> 126 / versionName mod1.25 -> mod1.26。
"""
import os
import re
import subprocess
import sys

ROOT = r"C:\PJGG\apk\CarLife\01_工程源码"
SRC = os.path.join(ROOT, "_w125")
DST = os.path.join(ROOT, "_w126")
CONNLOG = r"smali\com\baidu\carlifevehicle\ConnLog.smali"


def robocopy(src, dst):
    # /XD 必须绝对路径；返回值 <8 才算成功
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
    """精确替换一次，找不到就报错（防止补丁静默失效）。"""
    if text.count(old) != 1:
        sys.exit("!!! %s: 期望匹配 1 次，实际 %d 次\n---\n%s" % (what, text.count(old), old))
    return text.replace(old, new)


def main():
    robocopy(SRC, DST)

    # --- 版本号 125 -> 126 ---
    yml = os.path.join(DST, "apktool.yml")
    with open(yml, "r", encoding="utf-8") as f:
        t = f.read()
    t = sub_once(t, "versionCode: 125", "versionCode: 126", "apktool.yml versionCode")
    t = sub_once(t, "versionName: mod1.25", "versionName: mod1.26", "apktool.yml versionName")
    with open(yml, "w", encoding="utf-8") as f:
        f.write(t)

    p = os.path.join(DST, CONNLOG)
    with open(p, "r", encoding="utf-8") as f:
        s = f.read()

    # ---------------------------------------------------------------- precheck
    # 正常出口 :done 必须在 handler 之前；handler 独占且自己 return-void
    s = sub_once(
        s,
        """    :log_name
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :done

    :catch_0
    move-exception v0

    :done
    return-void
""",
        """    :log_name
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :done
    return-void

    :catch_0
    move-exception v0

    return-void
""",
        "precheck 出口/handler 结构",
    )

    # ------------------------------------------------------- hasUsableLocalIp
    # (1) 三条「循环退出」不再跳 :catch_0（那会执行 move-exception -> VerifyError）
    s = sub_once(s, "    if-eqz v1, :catch_0", "    if-eqz v1, :ret", "hasUsableLocalIp 退出1")
    s = sub_once(s, "    if-eqz v3, :catch_0", "    if-eqz v3, :ret", "hasUsableLocalIp 退出2")
    s = sub_once(s, "    if-ge v2, v3, :catch_0", "    if-ge v2, v3, :ret", "hasUsableLocalIp 退出3")

    # (2) 极性写反: 长度==0 才应跳过该地址 (if-eqz)，原写法把非空地址的 length 非零当跳过条件
    s = sub_once(
        s,
        """    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :goto_1
""",
        """    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :goto_1
""",
        "hasUsableLocalIp 长度判空极性",
    )

    # (3) 出口 :ret 提到 handler 之前；handler 挪到方法末尾自己 return
    s = sub_once(
        s,
        """    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

    :catch_0
    move-exception v4

    :ret
    return v0
""",
        """    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return v0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    return v0
""",
        "hasUsableLocalIp 出口/handler 结构",
    )

    # ---------------------------------------------------------- awaitLocalIp
    # sleep 之后顺序落到 :tick（不再 goto 进 handler 区），handler 挪到方法末尾 goto :tick
    s = sub_once(
        s,
        """    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :tick

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :tick
    add-int/lit8 v0, v0, 0x1
""",
        """    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :tick
    add-int/lit8 v0, v0, 0x1
""",
        "awaitLocalIp sleep 后续结构",
    )

    s = sub_once(
        s,
        """    :timeout
    const-string v1, "⚠ 等待网卡 IP 超时(5s)，可能影响热点握手（仍继续）"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method
""",
        """    :timeout
    const-string v1, "⚠ 等待网卡 IP 超时(5s)，可能影响热点握手（仍继续）"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :tick
.end method
""",
        "awaitLocalIp handler 挪到末尾",
    )

    with open(p, "w", encoding="utf-8") as f:
        f.write(s)

    # --- 自检：方法体内不得再出现“正常分支跳 :catch_x” ---
    for m in re.finditer(r"\.method ([^\n]*hasUsableLocalIp[^\n]*)\n(.*?)\.end method", s, re.S):
        body = m.group(2)
        bad = [l for l in body.splitlines()
               if (":catch_0" in l) and not l.strip().startswith((".catch", ":catch_0", "move-exception"))]
        if bad:
            sys.exit("!!! hasUsableLocalIp 仍有正常分支跳 :catch_0 ->\n" + "\n".join(bad))

    print("OK: _w126 已生成，ConnLog 三处 try/catch 结构已修 + 1 处极性已修")
    print("    versionCode=126 / versionName=mod1.26")


if __name__ == "__main__":
    main()
