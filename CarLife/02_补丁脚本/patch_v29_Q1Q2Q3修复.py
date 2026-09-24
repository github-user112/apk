# -*- coding: utf-8 -*-
# patch_v29: _w128 -> _w141 (versionCode 141 / mod1.41)
#
# ===================== 1.41: 三条用户反馈全修 =====================
# Q1 默认 wlan 直连, 不自动切换
#   ConnModeHelper.init() 读完 CarlifeConnectType 后强制 sMode=0x9
#   applyDefaultMode() 只 log, 不再 m/c.i() 恢复旧模式
#   VehicleApplication:93 的 CONNECT_TYPE 读取也钉死 0x9
#
# Q2 热点连上但车机卡住/黑屏 (手机显示连接成功, 车机啥也不显示)
#   根因: e/b.d() 7 个 new Socket 无 try/catch 无超时, 一个抛出跳出 for,
#        map 里只放前几个, 但 :cond_0 无条件 return true
#        + m/m/b.b() c.d() 不校验 7 通道齐不齐
#        + e/a.f() close 吞异常后置 null, 线程活在已关 socket
#   修:
#     e/b.d():   每个 new Socket 包 try/catch, 失败不 put, 计数
#                return count == 7 (至少 1 才算 ready)
#     m/m/b.b(): c.d() 前校验 map.size() >= 1, 不全不 ready
#     e/a.f():   close 前先 thread.interrupt(), close 用 try/catch 包住,
#                异常不置 null, 让线程自然退出
#
# Q3 1.40 无蓝牙直连 6 处问题
#   A. NoBtFallback.readField 私有字段没 setAccessible (P0)  → 加上
#   B. armTransport 挂进 list 但没 m/m/b.b(t) attach (P0)   → 加上
#   D. getPassphrase() API27+, 车机 4.4.2 直接 NoSuchMethodError (P0) → 反射
#   C. e/d.f() 闸门 v9 寄存器类型 (P1)                        → 核对
#   F. keepP2pGroup 一旦置 true 永不复位 (P3)                 → selectMode 时复位
#
# 涉及文件:
#   smali/com/baidu/carlifevehicle/logxfer/NoBtFallback.smali  ← 覆盖 (Java 重编)
#   smali/com/baidu/carlifevehicle/ConnModeHelper.smali        ← Q1
#   smali/com/baidu/carlifevehicle/VehicleApplication.smali    ← Q1
#   smali/a/a/a/a/m/m/e/b.smali                               ← Q2
#   smali/a/a/a/a/m/m/b.smali                                 ← Q2
#   smali/a/a/a/a/m/m/e/a.smali                               ← Q2
#   res/values/strings.xml                                     ← app_name 1.40 -> 1.41
#   apktool.yml                                                ← versionCode 140 -> 141

import hashlib
import os
import re
import subprocess
import shutil
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
LOGSRC = os.path.join(HERE, "logxfer_src")
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "01_工程源码")
SRC = os.path.join(ROOT, "_w140")
DST = os.path.join(ROOT, "_w141")

LOGXFER_SMALI_DST = "smali/com/baidu/carlifevehicle/logxfer"
EB = "smali/a/a/a/a/m/m/e/b.smali"
MB = "smali/a/a/a/a/m/m/b.smali"
EA = "smali/a/a/a/a/m/m/e/a.smali"
CMH = "smali/com/baidu/carlifevehicle/ConnModeHelper.smali"
VA = "smali/com/baidu/carlifevehicle/VehicleApplication.smali"
STRINGS = "res/values/strings.xml"


def read(p):
    with open(p, "r", encoding="utf-8") as f:
        return f.read().replace("\r\n", "\n")


def write(p, s):
    with open(p, "w", encoding="utf-8", newline="\n") as f:
        f.write(s)


def md5(p):
    h = hashlib.md5()
    with open(p, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def sub_once(text, old, new, what):
    if text.count(old) != 1:
        sys.exit("!!! %s: 期望匹配 1 次，实际 %d 次\n---\n%s" % (what, text.count(old), old))
    return text.replace(old, new)


# ======================================================================
# 0) 复制工程（每轮全新目录，绝不删旧目录）
# ======================================================================
print("=== 复制 _w140 -> _w141 ===")
if not os.environ.get("SKIP_COPY"):
    if os.path.exists(DST):
        sys.exit("!!! 目标已存在，不覆盖: %s（本产线只做全新目录）" % DST)
    shutil.copytree(SRC, DST, ignore=shutil.ignore_patterns("build"))
    rc = 0
    if not os.path.isfile(os.path.join(DST, "apktool.yml")):
        sys.exit("!!! 复制失败: %s 不存在" % os.path.join(DST, "apktool.yml"))
    print("  [OK] 复制完成")
else:
    print("  [skip] SKIP_COPY=1，沿用已有 %s" % DST)

# ======================================================================
# 1) 覆盖 logxfer smali (NoBtFallback 重编: readField setAccessible + armTransport attach + getPassphrase 反射)
# ======================================================================
print("\n=== 覆盖 logxfer smali ===")
src_smali_dir = os.path.join(LOGSRC, "smali")
dst_smali_dir = os.path.join(DST, LOGXFER_SMALI_DST)
assert os.path.isdir(src_smali_dir), "缺少产物目录 %s（先跑 构建日志下载smali.py）" % src_smali_dir


def copy_lf(src_f, dst_f):
    with open(src_f, "r", encoding="utf-8", newline="") as f:
        t = f.read()
    t = t.replace("\r\n", "\n")
    with open(dst_f, "w", encoding="utf-8", newline="\n") as f:
        f.write(t)


files = sorted(f for f in os.listdir(src_smali_dir) if f.endswith(".smali"))
assert len(files) >= 10, "logxfer smali 产物只有 %d 个文件" % len(files)
for must in ("NoBtFallback.smali", "NoBtFallback$1.smali", "NoBtFallback$2.smali"):
    assert must in files, "产物里没有 %s" % must
chg = []
for f in files:
    a = os.path.join(dst_smali_dir, f)
    b = os.path.join(src_smali_dir, f)
    before = md5(a) if os.path.exists(a) else "-"
    copy_lf(b, a)
    if before != md5(a):
        chg.append(f)
    print("  copy %-34s %s" % (f, "changed" if f in chg else "same"))
print("[info] 内容有变化的文件: %s" % (", ".join(chg) if chg else "(无)"))

# ======================================================================
# 2) Q1: ConnModeHelper 钉死直连
# ======================================================================
print("\n=== Q1: ConnModeHelper 钉死直连 ===")
cmh_p = os.path.join(DST, CMH)
cmh = read(cmh_p)

# 2a. init() 读完 CarlifeConnectType 后强制 sMode=0x9
OLD_INIT = """    :try_start_0
    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v2

    const-string v3, "CarlifeConnectType"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x9

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    :goto_0"""

NEW_INIT = """    :try_start_0
    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v2

    const-string v3, "CarlifeConnectType"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v2

    # --- 1.41 Q1: 钉死直连, 不再恢复上次模式 ---
    const/16 v2, 0x9

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x9

    sput v2, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    :goto_0"""

if "1.41 Q1: 钉死直连" in cmh:
    print("  [skip] init() 已钉死（幂等重跑）")
else:
    cmh = sub_once(cmh, OLD_INIT, NEW_INIT, "ConnModeHelper.init() 钉死直连")
    print("  [OK] init() 钉死 sMode=0x9")

# 2b. applyDefaultMode() 只 log, 不 m/c.i()
OLD_APPLY = """    :cond_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v0

    sget v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    invoke-interface {v0, v1}, La/a/a/a/m/c;->i(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u6062\\u590d\\u4e0a\\u6b21\\u8fde\\u63a5\\u6a21\\u5f0f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnMode"

    invoke-static {v1, v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V"""

NEW_APPLY = """    :cond_0
    # --- 1.41 Q1: 不再恢复上次模式, 只 log 提示 ---
    const-string v0, "ConnMode"

    const-string v1, "1.41: 默认直连, 不自动切换模式"

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/ConnModeHelper;->infoLog(Ljava/lang/String;Ljava/lang/String;)V"""

if "1.41: 默认直连, 不自动切换模式" in cmh:
    print("  [skip] applyDefaultMode() 已钉死（幂等重跑）")
else:
    cmh = sub_once(cmh, OLD_APPLY, NEW_APPLY, "ConnModeHelper.applyDefaultMode() 钉死")
    print("  [OK] applyDefaultMode() 不再恢复旧模式")

# 2c. selectMode() 里复位 keepP2pGroup
OLD_SEL = """    :cond_0
    sput p0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->highlight()V

    :try_start_0"""

NEW_SEL = """    :cond_0
    sput p0, Lcom/baidu/carlifevehicle/ConnModeHelper;->sMode:I

    # --- 1.41 Q3-F: 切模式时复位 keepP2pGroup, 防止 P2P 组永远不被清理 ---
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/NoBtFallback;->resetKeepGroup()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->highlight()V

    :try_start_0"""

if "1.41 Q3-F: 切模式时复位" in cmh:
    print("  [skip] selectMode() 已复位 keepP2pGroup（幂等重跑）")
else:
    cmh = sub_once(cmh, OLD_SEL, NEW_SEL, "ConnModeHelper.selectMode() 复位 keepP2pGroup")
    print("  [OK] selectMode() 复位 keepP2pGroup")

write(cmh_p, cmh)

# ======================================================================
# 3) Q1: VehicleApplication CONNECT_TYPE 钉死 0x9
# ======================================================================
print("\n=== Q1: VehicleApplication CONNECT_TYPE 钉死 ===")
va_p = os.path.join(DST, VA)
va = read(va_p)

OLD_VA = """    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v3

    const-string v4, "CarlifeConnectType"

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v3"""

NEW_VA = """    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object v3

    const-string v4, "CarlifeConnectType"

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, La/a/b/r/d;->b(Ljava/lang/String;I)I

    move-result v3

    # --- 1.41 Q1: 钉死直连, 不恢复旧模式 ---
    const/16 v3, 0x9"""

if "1.41 Q1: 钉死直连" in va:
    print("  [skip] VehicleApplication 已钉死（幂等重跑）")
else:
    va = sub_once(va, OLD_VA, NEW_VA, "VehicleApplication CONNECT_TYPE 钉死")
    write(va_p, va)
    print("  [OK] VehicleApplication CONNECT_TYPE 钉死 0x9")

# ======================================================================
# 4) Q2-A: e/b.d() 7×new Socket 加 try/catch
# ======================================================================
print("\n=== Q2-A: e/b.d() 加 try/catch ===")
eb_p = os.path.join(DST, EB)
eb = read(eb_p)

OLD_EB_LOOP = """    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, La/a/a/a/m/m/e/b;->b:Ljava/util/Map;

    .line 1
    iget-object v5, v3, Lc/c;->b:Ljava/lang/Object;

    .line 2
    new-instance v13, La/a/a/a/a/j/f/c;

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 3
    iget-object v3, v3, Lc/c;->c:Ljava/lang/Object;

    .line 4
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    iget-object v11, p0, La/a/a/a/m/m/e/b;->c:Ljava/util/concurrent/BlockingQueue;

    const/16 v12, 0x8

    move-object v6, v13

    move-object v8, p1

    invoke-direct/range {v6 .. v12}, La/a/a/a/a/j/f/c;-><init>(ILjava/lang/String;ILa/a/a/a/a/j/f/b$a;Ljava/util/concurrent/BlockingQueue;I)V

    invoke-interface {v4, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method"""

NEW_EB_LOOP = """    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, La/a/a/a/m/m/e/b;->b:Ljava/util/Map;

    .line 1
    iget-object v5, v3, Lc/c;->b:Ljava/lang/Object;

    .line 2
    # --- 1.41 Q2-A: 每个 new Socket 包 try/catch, 失败不 put, 计数 ---
    :try_start_0
    new-instance v13, La/a/a/a/a/j/f/c;

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 3
    iget-object v3, v3, Lc/c;->c:Ljava/lang/Object;

    .line 4
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, 0x0

    iget-object v11, p0, La/a/a/a/m/m/e/b;->c:Ljava/util/concurrent/BlockingQueue;

    const/16 v12, 0x8

    move-object v6, v13

    move-object v8, p1

    invoke-direct/range {v6 .. v12}, La/a/a/a/a/j/f/c;-><init>(ILjava/lang/String;ILa/a/a/a/a/j/f/b$a;Ljava/util/concurrent/BlockingQueue;I)V

    invoke-interface {v4, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "CarLife_SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e/b.d() new Socket failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    # --- 1.41 Q2-A: return count (至少 1 才算 ready) ---
    if-lez v14, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method"""

if "1.41 Q2-A" in eb:
    print("  [skip] e/b.d() 已加 try/catch（幂等重跑）")
else:
    eb = sub_once(eb, OLD_EB_LOOP, NEW_EB_LOOP, "e/b.d() 加 try/catch")
    # 改 .locals 14 -> 15 (加 v14 计数)
    eb = eb.replace(
        ".method public final d(Ljava/lang/String;)Z\n    .locals 14",
        ".method public final d(Ljava/lang/String;)Z\n    .locals 15",
        1
    )
    # 初始化 v14=0
    eb = eb.replace(
        "    iget-object v0, p0, La/a/a/a/m/m/e/b;->c:Ljava/util/concurrent/BlockingQueue;\n\n    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V\n",
        "    iget-object v0, p0, La/a/a/a/m/m/e/b;->c:Ljava/util/concurrent/BlockingQueue;\n\n    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V\n\n    const/4 v14, 0x0\n",
        1
    )
    write(eb_p, eb)
    print("  [OK] e/b.d() 加 try/catch + return count")

# ======================================================================
# 5) Q2-B: m/m/b.b() 校验通道齐全再 c.d()
# ======================================================================
print("\n=== Q2-B: m/m/b.b() 校验通道齐全 ===")
mb_p = os.path.join(DST, MB)
mb = read(mb_p)

OLD_MB_READY = """    :cond_4
    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, La/a/a/a/c;->h(Z)V

    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->d()V

    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, La/a/a/a/a/j/b;->start()V

    :goto_2
    return-void
.end method"""

NEW_MB_READY = """    :cond_4
    # --- 1.41 Q2-B: 校验通道齐全再 c.d() ---
    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-eqz p1, :cond_5

    iget-object p1, p1, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    check-cast p1, La/a/a/a/m/m/e/a;

    iget-object p1, p1, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    iget-object p1, p1, La/a/a/a/m/m/e/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gez p1, :cond_6

    :cond_5
    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, La/a/a/a/c;->h(Z)V

    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->d()V

    :cond_6
    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, La/a/a/a/a/j/b;->start()V

    :goto_2
    return-void
.end method"""

if "1.41 Q2-B" in mb:
    print("  [skip] m/m/b.b() 已校验（幂等重跑）")
else:
    mb = sub_once(mb, OLD_MB_READY, NEW_MB_READY, "m/m/b.b() 校验通道齐全")
    write(mb_p, mb)
    print("  [OK] m/m/b.b() 校验通道齐全")

# ======================================================================
# 6) Q2-C: e/a.f() close 吞异常后置 null
# ======================================================================
print("\n=== Q2-C: e/a.f() close 吞异常后置 null ===")
ea_p = os.path.join(DST, EA)
ea = read(ea_p)

OLD_EA_CLOSE = """    :goto_0
    iget-object v2, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    iput-object v0, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    iput-object v0, p0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;"""

NEW_EA_CLOSE = """    :goto_0
    iget-object v2, p0, La/a/a/a/m/m/e/a;->g:La/a/a/a/m/m/e/a$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iget-object v2, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    # --- 1.41 Q2-C: close 异常不置 null, 让线程自然退出 ---
    :cond_3
    iput-object v0, p0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;"""

if "1.41 Q2-C" in ea:
    print("  [skip] e/a.f() 已修（幂等重跑）")
else:
    ea = sub_once(ea, OLD_EA_CLOSE, NEW_EA_CLOSE, "e/a.f() close 修")
    write(ea_p, ea)
    print("  [OK] e/a.f() close 修")

# ======================================================================
# 7) 版本号 + 图标名
# ======================================================================
print("\n=== 版本号 ===")
yml_p = os.path.join(DST, "apktool.yml")
yml = read(yml_p)
if "versionCode: 141" in yml:
    print("  [skip] 版本号已是 141（幂等重跑）")
else:
    yml = sub_once(yml, "versionCode: 140", "versionCode: 141", "apktool.yml versionCode")
    yml = sub_once(yml, "versionName: mod1.40", "versionName: mod1.41", "apktool.yml versionName")
    write(yml_p, yml)
m = re.search(r"versionName:\s*mod([\d.]+)", yml)
assert m, "无法从 apktool.yml 解析 versionName"
ver = m.group(1)
print("  [OK] versionCode=141 versionName=mod1.41 (展示版本号 %s)" % ver)

print("\n=== 桌面图标名 ===")
sp = os.path.join(DST, STRINGS)
s = read(sp)
old_name = "百度CarLife 1.40"
new_name = "百度CarLife %s" % ver
if '<string name="app_name">%s</string>' % new_name in s:
    print("  [skip] app_name 已是 %s（幂等重跑）" % new_name)
else:
    s = sub_once(s, '<string name="app_name">%s</string>' % old_name,
                 '<string name="app_name">%s</string>' % new_name, "strings.xml app_name")
    write(sp, s)
    print("  [OK] app_name: %s -> %s" % (old_name, new_name))

# ======================================================================
# 8) 自检
# ======================================================================
print("\n=== 自检 ===")
bad = 0


def chk(name, ok):
    global bad
    print(("  [OK] " if ok else "  [!!] ") + name)
    if not ok:
        bad += 1


cmh = read(cmh_p)
va = read(va_p)
eb = read(eb_p)
mb = read(mb_p)
ea = read(ea_p)
nb = read(os.path.join(DST, LOGXFER_SMALI_DST, "NoBtFallback.smali"))
ymlv = read(yml_p)
sv = read(sp)

# Q1
chk("Q1 ConnModeHelper.init() 钉死 sMode=0x9", "1.41 Q1: 钉死直连" in cmh)
chk("Q1 ConnModeHelper.applyDefaultMode() 不恢复旧模式", "1.41: 默认直连, 不自动切换模式" in cmh)
chk("Q1 ConnModeHelper.selectMode() 复位 keepP2pGroup", "1.41 Q3-F: 切模式时复位" in cmh)
chk("Q1 VehicleApplication CONNECT_TYPE 钉死 0x9", "1.41 Q1: 钉死直连" in va)

# Q2
chk("Q2-A e/b.d() 加 try/catch", "1.41 Q2-A" in eb)
chk("Q2-A e/b.d() return count", "if-lez v14, :cond_1" in eb)
chk("Q2-B m/m/b.b() 校验通道齐全", "1.41 Q2-B" in mb)
chk("Q2-C e/a.f() close 修", "1.41 Q2-C" in ea)

# Q3
chk("Q3-A NoBtFallback readField setAccessible", "setAccessible" in nb)
chk("Q3-B NoBtFallback armTransport 调 m/m/b.b(t)", "a.a.a.a.m.m.b" in nb and "getMethod" in nb and "a.a.a.a.a.j.c" in nb)
chk("Q3-D NoBtFallback getPassphrase 反射", "getPassphrase" in nb and ("getMethod" in nb or "getDeclaredMethod" in nb))
chk("Q3-F NoBtFallback resetKeepGroup", "resetKeepGroup" in nb)

# 版本号
chk("apktool.yml versionCode=141", "versionCode: 141" in ymlv)
chk("apktool.yml versionName=mod1.41", "versionName: mod1.41" in ymlv)
chk("strings.xml app_name=%s" % new_name, '<string name="app_name">%s</string>' % new_name in sv)

print("\n" + ("[DONE] _w141 就绪" if bad == 0 else "[FAIL] %d 项自检不通过" % bad))
sys.exit(1 if bad else 0)
