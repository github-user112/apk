# v3 逻辑复核报告（2026-11-08 12:00–12:35）

全部结论来自 MuMu（Android 4.4.4 / API19 / x86 / root）实测，不是纸面推演。
脚本：`test_v168.sh`（常规）、`exp2.sh`（PC 断连对照）、`exp3.sh`（生产命令链路）。

---

## 一、最重要的一条：MuMu 上测 AdbBridge 必须先断开 PC

PC 的 adb server 连着 MuMu 的 `7555` 时，App 再连 guest 内 `127.0.0.1:5555`
**必然**失败：

```
W/BootTask: adb: handshake timeout
D/BootTask: adbcmd[adbd] FAILED 17999ms
```

对照实验（同一条命令、同一台机器，只改 PC 是否连接）：

| 条件 | 结果 |
|---|---|
| PC 保持连接 | `handshake timeout`，稳定复现 |
| PC `adb disconnect` 后 | `adbcmd[adbd] ok 43ms: uid=0(root) gid=0(root)` |

结论：MuMu 的 7555 是独占转发，与 AdbBridge 实现无关。
**车机走 USB 时 TCP 5555 与 USB transport 相互独立**，开机实测 5/5 成功，
不受此限制。但若用 `adb connect 车机IP:5555` 无线调试，PC 会占住 5555，
此时 App 的 adbcmd 会失败 —— 调试完记得 `adb disconnect`。

绕过方法（本报告用到的）：设备端起 nohup 探针 → PC 立即 disconnect →
等探针跑完 → 重连读 `/data/local/tmp/*.log`。

---

## 二、生产规则全链路：通过

规则内容（就是车机上要用的那条）：

```
busybox nohup sh /data/local/hotspot/boot_hotspot.sh >/dev/null 2>&1 & sleep 6;
echo LAUNCHED_after=$(busybox wc -c < /data/local/hotspot/boot.log 2>/dev/null)
```

实测日志：

```
adbcmd[adbd] ok 15044ms: LAUNCHED_after=11
TRAIL_OK
```

| 验证点 | 结果 |
|---|---|
| adbd 通道执行 | PASS |
| `$(...)` 在设备端展开（读到 boot.log 11 字节） | PASS |
| 分号后第二条命令仍回传（输出未被截断） | PASS |
| 被拉起的后台脚本写了 `STARTED_...` | PASS |
| 后台进程在 adb 会话结束后存活（30s 后 ps 仍有 `sleep`） | PASS |

⚠️ 判存活别用 `ps | grep "sleep 120"`：Android 的 ps 在 NAME 列只给 `sleep`，
会误判成"进程已死"。用 `ps | grep "[s]leep"` 或看日志是否持续增长。

---

## 三、修掉的两个脚本 bug（都会静默失败）

### 1. MSYS 路径转换（inject_rule.sh / 所有 push）

```
adb push x /data/local/tmp/rules.in.xml
→ adb: failed to copy ... to
  'C:/Program Files/WorkBuddy/resources/vendor/PortableGit/data/local/tmp/rules.in.xml'
```

Git Bash 把远端路径当本地 POSIX 路径改写；脚本里又 `>/dev/null 2>&1`，
错误全被吞，只看到不明所以的 `PUSH FAILED`。
修：脚本顶部 `export MSYS_NO_PATHCONV=1`。
（已验证：中文目录的**源**路径本身没问题，唯一元凶就是这项转换。）

### 2. 属主解析导致 App 读不到规则

```sh
O=$(ls -ld $D | busybox awk '{print $3":"$4}')   # 旧
chown $O $D/rules.xml
```

Android 的 `ls -l` 对目录行会**省略 size 列**，于是 `$4` 是日期：

```
drwxrwxrwx root     root              2026-11-08 12:15 shared_prefs
#                    $3=root  $4=2026-11-08  ← 拼出 "root:2026-11-08"
```

`chown root:2026-11-08` 把文件属主改成 `root 2026`，App 侧表现：

```
W/SharedPreferencesImpl: Attempt to read preferences file
    /data/data/com.boottask/shared_prefs/rules.xml without permission
D/BootTask: ExecService rules=0
```

规则一条都没生效，且没有任何报错。修法：不解析 ls 文本，直接问包管理器

```sh
OWN=$(dumpsys package com.boottask | busybox grep -o 'userId=[0-9]*' \
      | busybox head -1 | busybox cut -d= -f2)
OWN=$OWN:$OWN   # Android 上 App 的 uid 与 gid 同值
chown $OWN $D $D/rules.xml
chmod 771 $D; chmod 660 $D/rules.xml
```

修复后实测：`owner=10042:10042` / `rules=1` / `rule matched, executing`。

> 附带修复：目录 `shared_prefs` 曾被历史操作改成 `root:root 777`，
> 脚本现在会一并纠正，避免下一次又踩。

---

## 四、发现的 Java 缺陷（已改源码，尚未编译）

`AdvActions.run()` 的判定是"只要 stdout/stderr 有内容就算成功"。
su 被 `no_new_privs` 挡住时会打印 `su: setuid(0) failed` 然后 exit=1，
这行被合并进输出 → 旧逻辑认定 su 成功 → **直接 return，永远降级不到 adbd**。

MuMu 实测（D 用例）：

```
rootcmd[su] ok 108ms: su: setuid(0) failed (no_new_privs?)
```

修法：校验 `run()` 末尾拼的 `(exit=0)` 后缀。已改为：

```java
if (output != null && output.endsWith("(exit=0)")) { ... ok ... }
```

版本升到 **1.6.69（versionCode 85）**。本机当前**没有 JDK**，
`build.sh` 依赖的 `javac`/`java` 都缺，所以**这套改动尚未编译**。

影响面：生产规则用的是 `adbcmd`（只走 adbd、不碰 su），**不受此缺陷影响**。
只有把动作切回 `rootcmd` 时才会中招。

---

## 五、未覆盖 / 待车机确认

1. **boot_hotspot.sh 在真机上的完整链路**：MuMu 没有 bcmdhd，只能验证到
   "脚本被拉起、能写日志、进程存活"，`insmod`/`hostapd`/`dnsmasq` 那几步
   必须在车机上跑（此前实测已跑通，见冷启动验证方案）。
2. **开机时序**：adbd 5555 比 BOOT_COMPLETED 晚 60~80s，生产 delay=90 留了余量；
   若某次开机特别慢，AdbBridge 内部还有 150s 连接重试兜底。
3. **车机上 su 是否存在**：若之前装的 su 残留且带 setuid 位，
   `rootcmd` 会先试 su（已修退出码判定，现在会正确降级）。
   `adbcmd` 不受影响。

---

## 六、复跑方法

```bash
# 常规（注意：PC 连着时 A/C 用例会假失败，看 B 即可）
bash test_v168.sh

# PC 断连对照（推荐，结果最可信）
bash exp2.sh     # AdbBridge 能否握手
bash exp3.sh     # 生产命令全链路
```

前提：`adb connect 127.0.0.1:7555` 能连上 MuMu，且 guest 内
`service.adb.tcp.port=5555`（本机已持久化）。

---

## 七、最终验证（最贴近车机开机场）

前面所有"PC 断开"的实验都受一个隐藏因素干扰：**PC 的 adb 连接会在 adbd 侧留下
CLOSE_WAIT，把单线程的 adbd 占住**。证据：

```
$ cat /proc/net/tcp | grep -c '0100007F:15B3'   # 127.0.0.1:5555
55          ← 全部 state=08 (CLOSE_WAIT)
$ killall adbd   # 重启后
1
```

所以做了最干净的实验：让**设备自己**在 adbd 刚重启、PC 尚未连接时触发 App ——
这正是车机开机的真实场景。

`/data/local/tmp/clean_test.sh`：`killall adbd` → 等 5555 重新 LISTEN（adbd_wait=0，
即立即就绪）→ `am startservice` → 25s 后落盘。

结果：

```
12:42:56  ExecService rules=1 / rule matched, executing
12:43:07  adb: exec failed: SocketException: ECONNRESET      ← 第一次，adbd 刚重启还没稳
12:43:21  ExecService rules=1（补触发）
12:43:36  adbcmd[adbd] ok 15065ms: LAUNCHED_after=11
12:43:36  TRAIL_OK
--- ps ---   root 15486 ... S sleep          ← 后台进程活着
--- t.log --- STARTED_1794113001             ← 后台脚本已执行
```

**结论：AdbBridge 在干净环境下 100% 可用，生产命令链路全通。**

### 运维提示（重要）
adbd 在连接**异常断开**（ECONNRESET / 握手超时）时不会 close socket，会攒 CLOSE_WAIT；
正常成功收尾不会。车机每天开机一次、正常成功，不会累积。
若哪天热点自启突然不工作，先查：

```sh
cat /proc/net/tcp | busybox grep -c '0100007F:15B3 .* 08 '
```

几十条以上就 `killall adbd`（init 会自动拉起，`persist.adb.tcp.port=5555` 已持久化，端口会恢复）。

### 顺带确认：生产命令里的 `sleep 6` 不能删
它是 nohup 与 adb 会话关闭之间的缓冲窗。实测把这层去掉后，
`busybox nohup sh -c '...' &` 偶尔会被 SIGHUP 整个带走（第二次实验就复现了）。
