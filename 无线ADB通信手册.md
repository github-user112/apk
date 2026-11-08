# BootTask ↔ 无线 ADB 通信手册（车机版）

> 适用：TCC893X_EVM / Android 4.4.2(API19) / eng / SELinux Disabled / serial 000018030809054701DC
> 适用代码：`BootTask/src/com/boottask/AdbBridge.java`（1.6.72 起）、`HotspotAuto.java`、`DevicePower.java`（1.6.73 起）
> 最后更新：2026-11-08（v1.6.73 / vc89）

---

## 0. 一页速查（先看这张表）

| 主题 | 一句话结论 |
|---|---|
| 提权原理 | App 自己永远提不了权（no_new_privs），一切 root 操作都丢给本机 adbd（127.0.0.1:5555，root）执行 |
| adbd 何时可用 | 开机后 **60~80 秒**才监听 5555，比 BOOT_COMPLETED 晚 → 开机规则 delay=90 |
| 校验和 | `data_check` = **逐字节求和**（不是 CRC32），填错当场 CLSE |
| OKAY/CLSE 的 arg | 必须是 `(LOCAL_ID, remoteId)`，写反 adbd 反查不到 socket 直接掐流 |
| 超时 | 三段独立：连接等待 / 握手 15s / 命令；开机 150s，手动点击 20s |
| 后台进程 | 只有 `busybox nohup` + **会话保持打开**才能活；「发完即断」的命令必须前台式 |
| 文本处理 | /system/bin 没有 cut/tr/awk/sed/wc/head/tail/sort/printf，一律 `busybox xxx` |
| 判成功 | 别信日志回显，要**探实况**（ifconfig 的 IP / `su -c id` 的 uid / 回读 settings） |
| CLOSE_WAIT | adbd 异常断开会攒尸体，几十条就 `killall adbd`（init 会拉起，5555 配置不丢） |
| MuMu | 模拟器上 App→5555 必然握手超时（PC 占线），只能验命令本体，不能验 App 链路 |

---

## 1. 架构：为什么必须借 adbd

```
BootTask App (zygote 子进程, PR_SET_NO_NEW_PRIVS)     本机 adbd (root, 0.0.0.0:5555)
        │                                                      │
        │  ① TCP 连 127.0.0.1:5555                              │
        │  ② ADB 线协议握手（CNXN/AUTH）                          │
        │  ③ OPEN "shell:<命令>"                                 │
        │ ────────────────────────────────────────────────────→ │
        │  ④ WRTE 回执 ←──────────────────────────────────────  │
        │                                                      │
        └─ ⑤ adbd 在自己进程里 fork exec 命令 → root 身份落地
```

三条**已证死路**，别再试：

| 死路 | 现象 |
|---|---|
| App 内 `su` / setuid | zygote 打了 `PR_SET_NO_NEW_PRIVS`，内核忽略 setuid 位，`setuid(0) failed`；车机也没有 su 二进制（mksu 是伪成功，退出码 0 但身份没变） |
| platform 签名 / QuickBoot 快照 / init 钩子 | 全部失败（详见 APP_CHANGE.md 前半） |
| `PowerManager.reboot()` | 要 signature 级 `REBOOT` 权限，appsinstall 装的 App 拿不到 |

**推论**：任何"需要 root"的新功能，先想清楚命令怎么交给 adbd，而不是怎么让 App 拿权限。

---

## 2. ADB 线协议实现要点（AdbBridge.java）

### 2.1 包格式与校验

| 项 | 值 / 规则 |
|---|---|
| 版本 | `A_VERSION = 0x01000001`，`MAXDATA = 4096` |
| `data_check` | **逐字节求和**（sum of all bytes），不是 CRC32 —— 填错 adbd 直接 CLSE，现象是"连接秒断" |
| OKAY/CLSE 的 arg0/arg1 | 发送方填 `(自己的 LOCAL_ID, 对端 remoteId)`。写反成 `(remoteId, LOCAL_ID)` 时 adbd 用 `find_local_socket(arg1, arg0)` 反查不到 → 主动 CLSE，shell 流被提前掐断（输出截断甚至命令被 SIGPIPE） |
| remoteId 来源 | 优先取 OKAY 包的 arg0；没收到 OKAY 时退回 WRTE 的 arg1 |
| 对端"暂时没话" | 读超时 ≠ 失败，继续等 deadline（长命令 + `sleep` 尾巴是常态） |

### 2.2 三段计时（1.6.72 固化，别合并）

| 阶段 | 时限 | 理由 |
|---|---|---|
| 连接等待 `connectWaitMs` | 开机规则 150s / 手动点击 20s | adbd 晚起（60~80s），开机必须长等；人手点的时候连不上就是真连不上，等 150s 像卡死（MuMu 实测 154s 才返回） |
| 握手 `HANDSHAKE_MS=15s` | 固定 15s | "对方不回握手"不该陪跑整个命令超时 |
| 命令 `timeoutMs` | 按命令给 | 从握手成功起算，热点 150s、重启 15s、settings 读写 12s |

**新写调用时的选择**：开机场景 → `exec(cmd, timeout)`（默认等 150s）；按钮触发 → `exec(cmd, timeout, 20000)` 以内。

---

## 3. 时序：开机链路

```
BOOT_COMPLETED ──→ rules.xml 命中 adbcmd / delay=90
                     │（这 90 秒就是在等 adbd 的 5555 起来）
                     ▼
             AdbBridge.exec（连接窗口 150s，内部 8s 重试）
                     ▼
     busybox nohup sh /data/local/hotspot/boot_hotspot.sh（会话保持）
```

| 注意点 | 说明 |
|---|---|
| delay=90 别改小 | adbd 实测开机 60~80s 才监听；App 侧还有 150s 连接窗口兜底，但 delay 太小会让第一次连接白白撞 refused（每次重试间隔 8s） |
| adbd 配置持久化 | `persist.adb.tcp.port=5555`（车机上是 SystemTools 写的 settings 库/系统属性，重启不丢）。若发现重启后连不上，先查这个值 |
| BOOT_COMPLETED 不一定来 | App 被 `am force-stop` 后成 stopped 状态，Android 不投递开机广播（MuMu 上连手动广播都不投）→ 排查时先 `am start` 一次解 stopped，或 `am startservice ExecService --es event boot` 直接触发规则 |
| 车机 cold boot 实测 | 15:46:03 广播 → 15:47:33 脚本 → 15:48:13 热点就绪（2分10秒），全程无需人工 |

---

## 4. 后台进程存活规则（最容易翻车的地方）

| 写法 | 会话关闭后 | 结论 |
|---|---|---|
| 裸 `&` | 被杀 | 禁用 |
| `setsid` | 被杀 | 禁用 |
| `busybox nohup ... &` 且**会话保持打开**（命令尾部接 `sleep`/轮询） | **能活** | ✅ 热点脚本模式 |
| `busybox nohup sh -c "sleep N; xxx" &` 然后**立即断开** | **被杀（N 秒内）** | ❌ 1.6.73 第一版重启命令翻车实录：回执到了、车机不动 |
| 前台式：`echo 回执; sleep 1; 真命令` | 会话被真命令带走 | ✅ 重启/关机类"发了就断"的动作必须这样写 |

**判断口诀**：nohup 只挡 SIGHUP；adbd 会话关闭对子进程的清理（MuMu/车机实测）比 SIGHUP 更狠。
热点脚本能活不是 nohup 的功劳，是**会话一直开着**——`& sleep 6; while 轮询` 让 adbd 不关闭这条流。
凡"命令发完连接就断"的场景（reboot、poweroff），一律前台式 + 回执先行。

---

## 5. 设备端命令书写规范

车机 `/system/bin` 极简，**只有** `grep/ps/ifconfig/date/mkdir/rm/ln/kill` 等基本款：

| 规范 | 原因 |
|---|---|
| 文本处理一律 `busybox cut/tr/awk/sed/wc/head/tail/sort` | toolbox 没这些；`cut` 缺失曾让 `up=` 恒空 → settle 白等 180s |
| busybox 1.8.1 的 grep **不支持 `-m`** | 用了直接报错 |
| `wc -c < 文件` 不如 `set -- $(busybox wc -c 文件); S=${1:-0}` | 日志不存在时 `<` 重定向报错是 shell 层的，`2>/dev/null` 吞不掉，往 stderr 喷噪音 |
| `tail` 只用 `-c N`，不用 `+N` | 旧 busybox 两种语义不一致 |
| 脚本必须是 **LF** | CRLF → `unexpected 'do'` 直接不执行；PC 的 `sh -n` 检测不出来。检查用 `od -An -tx1 -v f | tr ' ' '\n' | grep -c '^0d$'`（Git Bash 里 `grep -c $'\r'` 会退化成输出总行数，别用） |
| 引号 | 命令是单条 argv 交给 `sh -c`，嵌套引号不会被二次拆词；内层建议双引号（1.6.73 reboot 命令同款） |
| 属主/权限 | 别解析 `ls -l`（目录行省略 size，`$4` 是日期 → 生成过 `chown root:2026-…` 这种垃圾）；用 `dumpsys package com.boottask | grep userId=` 取 `uid:uid` |

---

## 6. 健康维护

### 6.1 CLOSE_WAIT 尸体堆积

adbd 被异常断开（App 崩溃、socket 未关、反复调试）会在 adbd 侧攒 CLOSE_WAIT，
攒到几十条后**不再 accept 新连接**——现象是"App 连接永远握手超时"。

```sh
# 计数（0100007F=127.0.0.1, 15B3=5555, 状态 08=CLOSE_WAIT）
cat /proc/net/tcp | grep -c '0100007F:15B3 .* 08 '
# 几十条就重启 adbd（init 会拉起，5555 配置不丢）
killall adbd
```

### 6.2 查"命令到底跑没跑"

Android 的 `ps` 会把 NAME 截断成 `sh`/`sleep`，`ps | grep boot_hotspot` 永远空。
查 `/proc/<pid>`（cmdline / status）。

### 6.3 无线 ADB 开关状态

- 正常态：`settings get global adb_wifi_enabled` 类开关 + `persist.adb.tcp.port=5555`；
- App 顶横幅显示「无线 ADB：已开启/未授权/检测中」，装成系统 App 才有 WRITE_SECURE_SETTINGS；
- 排查顺序：横幅 → `getprop persist.adb.tcp.port` → `cat /proc/net/tcp | grep 15B3` 有没有 LISTEN（状态 0A）→ CLOSE_WAIT 计数。

---

## 7. 判成功的标准（防"假成功/假失败"）

| 场景 | 错误判法 | 正确判法 |
|---|---|---|
| 热点是否开了 | 日志里搜 HOTSPOT UP（上一轮的会骗人） | `ifconfig wlan0` 含 `192.168.43.1` |
| settings 写没写进去 | 只 put 不读（失败成功都返回空） | put 后立刻 `settings get` 回读，日志 `wifi_on -> [1]` |
| su 是否可用 | 看退出码（mksu 伪成功） | `su -c id` 输出含 `uid=0` |
| 重启是否已排程 | 连接是否干净 CLSE（重启会掐断连接） | 回执含 `REBOOT_SCHEDULED`；同时留 `REBOOT_FAILED` 标记区分真失败 |

---

## 8. 测试注意（PC 侧 / MuMu）

| 规则 | 说明 |
|---|---|
| 在 MuMu 上测 App 的 AdbBridge | **PC 完全不能碰 5555**（包括 `adb connect 车机IP:5555` 这类），否则 App 必然 handshake timeout。已实测：PC 断开后 App 依旧超时，即 MuMu 内 adbd 收了本地连接也不回 CNXN → **App→adbd 一跳只能在真车验** |
| MuMu 能验什么 | 命令本体（root shell 直跑）、UI、规则读写、失败分支文案 |
| MuMu 的 PC 入口 | `adb connect 127.0.0.1:7555`（MuMu 桥接）；guest 内 adbd 是 root（`Uid: 0`），`reboot` 前台可用 |
| 每条 Bash 重新 `adb connect` | PC 的 adb server 会在命令间被杀，串行命令要链在同一条 shell 里 |
| Git Bash 路径转换 | 脚本里 `export MSYS_NO_PATHCONV=1`，否则 push/pull 的设备路径被改写成 Windows 路径，静默失败 |
| `exec-out` | Android 4.4 adbd 不支持（报 closed），截图用 `screencap -p 文件` + `pull` |

---

## 9. 故障排查速查表

| 现象 | 最可能原因 | 对策 |
|---|---|---|
| 开机后热点没起 | adbd 没起 / 规则 enabled=false | `dumpsys package com.boottask`；`cat /data/local/hotspot/boot.log`；查 rules.xml 的 enabled |
| App 连接秒断（CLSE） | data_check 求和错 / OKAY arg 写反 | 对照 2.1 |
| 握手超时（15s 无 CNXN） | CLOSE_WAIT 堆积 / adbd 没监听 / MuMu 占线 | §6.1 计数 → `killall adbd` |
| 命令回执到了但设备没动作 | 后台进程被会话关闭连带杀掉 | 改前台式（§4） |
| 脚本 `unexpected 'do'` | CRLF | §5，od 检查转 LF |
| App 报 `without permission` + `rules=0` | chown 的组名错（解析了 `ls -l` 日期列） | 用 dumpsys 取 `uid:uid` |
| 手动点按钮 150s 才返回 | 用了两参 exec（默认连接等待 150s） | 换三参 `exec(cmd, timeout, 20000)` |
| 日志只见第一行 | App 日志含换行，`logcat | grep` 截断 | 读 `files/log/boottask.log` 全文 |
| 重启后广播收不到 | App 处于 stopped 状态 | `am start` 一次解除 |

---

## 10. 装车验收清单（每版通用）

1. `bash 车机工具/apk_src/build_apk.sh` 出包 → `bash 热点自启/v3/install_apk.sh [serial]` 装车（DIST 自适应）；
2. 覆盖安装后**手动开一次 App**（解除 stopped，否则收不到下次开机广播）；
3. `dumpsys package com.boottask | busybox grep -E 'versionName|versionCode'` 确认版本；
4. 冷启动一次：记 BOOT_COMPLETED 时间、脚本启动时间、结果落定时间（热点验收标准：HOTSPOT UP / wlan0=192.168.43.1 / ssid=9B66BEB4）；
5. 新按钮类功能（如 1.6.73 重启车机）：先点一次看确认框与回执，真重启后确认设备回网、热点自启自动恢复；
6. 收尾：`cat /proc/net/tcp | grep -c '0100007F:15B3 .* 08 '` 看一眼 CLOSE_WAIT，异常多就 `killall adbd`；
7. 改过设备端脚本：核对 md5 + 设备端 `sh -n`，且用 od 确认无 CRLF。
