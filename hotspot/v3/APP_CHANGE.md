# App 改造说明（路径 A：借本机 adbd 拿 root）

> **执行步骤请看 `QUICKSTART.md`。** 本文第 4 节「编译前置」、第 5 节「上车部署」
> 和第 9 节「上电后的执行顺序」都停留在 1.6.66 / rootcmd / delay=60 阶段，已作废；
> 最终生产配置在 **11.6 节**，最终部署入口是 `deploy_final.sh`。

> 目标：让「开机任务」在 BOOT_COMPLETED 后，以 **root 身份**执行 `boot_hotspot.sh`。
> 前提：不改 `/system`、不需要 su、不需要 platform 签名。

---

## 1. 为什么不能靠 setuid

| 事实 | 证据 | 后果 |
|---|---|---|
| App 进程带 `PR_SET_NO_NEW_PRIVS=1` | `grep NoNewPrivs /proc/<pid>/status` | 内核**忽略** setuid 位 |
| `no_new_privs` 不可撤销 | 内核语义，非 Android 私有 | App 无法自己解除 |
| `sh` 是 mksh，会主动降权 | POSIX 行为，需 `-p` 才保持 euid | 即使内核给了 euid=0，也会被 shell 丢掉 |

所以 `chmod 6755 /system/bin/sh` 这条路对内是死的（对外，也就是 adb shell，本来就是 root，也不需要它）。

**正解**：提权动作发生在 **adbd（本来就是 root 的进程）** 里，App 只是通过 socket 请求它执行命令。这跟 `no_new_privs` 一点关系都没有。

---

## 2. 改了哪两处

### 2.1 新增 `src/com/boottask/AdbBridge.java`

实现 ADB 协议最小子集，连本机 `127.0.0.1:5555`：

```
CNXN  → 握手（失败会收到 AUTH，用内置私钥签名后重发）
OPEN  → "shell:<cmd>"        打开一条 shell 流
WRTE  → 读输出（每条回 OKAY 表示收到）
CLSE  → 结束
```

关键点：
- 用 `android.util.Base64`（API 19 没有 `java.util.Base64`）
- 用 `java.util.zip.CRC32` 算 data_crc32
- 24 字节帧头：`cmd / arg0 / arg1 / len / crc / magic(=cmd^0xFFFFFFFF)`
- 只依赖 `java.security`，不引第三方库
- 所有异常都被吞掉并写 logcat（`BootTask` tag），失败返回 `null`

### 2.2 改 `AdvActions.doRootCmd()`

原来是两级（su → sh），现在是三级：

```java
// 1) su        —— 有 su 的系统走这里
// 2) AdbBridge —— 本机 adbd，root 身份执行（新增）
// 3) sh        —— 无特权兜底，只为留证据
```

每一级都打独立的日志前缀 `rootcmd [su] / [adbd] / [sh]`，并记录耗时。这样在 App 的诊断日志里能一眼看出走的是哪条通道。

---

## 3. 密钥准备（两条命令）

```bash
cd 车机工具/热点自启/v3/app
python mk_app_key.py selftest    # 已验证：PASS，编码与 AOSP adb 完全一致
python mk_app_key.py new         # 生成新密钥对
```

产物：
| 文件 | 用途 |
|---|---|
| `out/key_pkcs8_b64.txt` | 整行贴进 `AdbBridge.KEY_PKCS8_B64` |
| `out/app_adb.pub` | 推到车机，追加进 `/data/misc/adb/adb_keys` |
| `out/summary.txt` | 指纹与后续步骤 |

> **selftest 已经跑过：`RESULT: PASS - encoder matches AOSP adb`。**
> 意思是本脚本编码出的公钥与 `~/.android/adbkey.pub` 逐字节相同 —— 说明 `new` 生成的公钥一定能被 adbd 接受。

另外 `ro.adb.secure=0` 时根本不需要认证，`KEY_PKCS8_B64` 留空也能用。

---

## 4. 编译前置（当前 PC 缺两样）

| 缺什么 | 现状 | 怎么补 |
|---|---|---|
| **JDK** | 本机 `java` / `javac` 都没有 | 下载 Temurin JDK 8 便携版（约 100MB），解压后把 `bin` 加进 PATH |
| **仓库 tools 的 jar** | `tools/apktool.jar` 等是 LFS pointer（133 字节），`git-lfs` 未安装 | 用 GitHub LFS batch API 下载（约 30MB），或先 `winget install Git.GitLFS` |

### 或：在你的开发机上编（更快）

你本来就有这套 build.sh 的环境，直接：

```bash
# 1. 把 AdbBridge.java 放进 BootTask/src/com/boottask/
# 2. 把 out/key_pkcs8_b64.txt 贴进 AdbBridge.KEY_PKCS8_B64
# 3. 升版本号（AndroidManifest versionName / versionCode）
# 4. 编译
cd BootTask && ./build.sh
```

产物会落在 `BootTask/dist/BootTask_v<版本>.apk`，用你原来的 p12 签名，**可以直接覆盖安装**（同签名）。

---

## 5. 上车部署（4 步）

```bash
# ① 推公钥并授权
adb push out/app_adb.pub /data/local/tmp/app.pub
bash run_on_pc.sh adb backup
bash run_on_pc.sh adb add /data/local/tmp/app.pub

# ② 确保 adbd 在 TCP 上监听（会断开当前连接，10 秒后重连）
bash run_on_pc.sh adb probe          # 看有没有 0A(LISTEN)
bash run_on_pc.sh adb tcp 5555       # 没有才执行

# ③ 装新 APK
adb install -r BootTask_v<版本>.apk

# ④ 在 App 里加一条规则（或在 PC 上注入）
#    事件: boot
#    动作: Root 命令
#    延迟: 60 秒
#    内容: 见下面「启动命令」一节的完整一行（app_route.sh 的 $CMD 已内置）
```

**启动命令必须用 `busybox nohup`，不能用 `setsid`，也不能裸 `&`。**
2026-11-08 在 MuMu(Android 4.4.4 / busybox 1.21.1) 用同一套 adb 会话实测：

| 写法 | adb 会话断开后 | 结果 |
|---|---|---|
| `busybox setsid sh ... &` | 立刻死 | ❌ boot.log 都不生成 |
| `sh ... &` | 立刻死 | ❌ |
| `busybox nohup sh ... &` | 存活 | ✅ 跑完 3 轮重试 |

原因：adbd 关闭 shell 流时会挂断整条会话，`setsid` 在这个 busybox 版本上没起到脱离作用，
只有 `nohup` + 全重定向（`</dev/null >/dev/null 2>&1`）才活下来。
另外 `AdvActions.CMD_TIMEOUT_MS = 15000`，命令本身必须在 15 秒内返回，
所以是「nohup 脱离 + 立即返回 + 4 秒后自检」的组合。

---

## 6. 验证（怎么确认真的拿到 root）

规则里先用一条探测命令，别直接上热点脚本：

```
boot → Root 命令 → 延迟 0 秒 → id; echo MUMU_OK
```

或者用专门只走 adbd 的诊断动作（v1.6.66 新增，跳过 su，直接验证 adbd 通道）：

```
boot → adbcmd → 延迟 0 秒 → id; echo ADB_OK
```

日志里对号入座：

| 日志行 | 含义 |
|---|---|
| `adbcmd[adbd] ok 1234ms: uid=0(root)...` | ✅ adbd 通道打通，root 已拿到 |
| `adbcmd[adbd] FAILED 3000ms` | ❌ 连不上/握手失败，查 5555 监听、adb_keys、ro.adb.secure |
| `rootcmd[su] failed ...` | 无 su 或被 no_new_privs 忽略，正常，会继续降级 |
| `rootcmd[adbd] ok ...` | ✅ 正是车机上期望的那条 |
| `rootcmd[sh] done ... uid=10xxx` | ⚠️ 三级全降级到普通 shell，等于没 root |

---

## 7. 回滚

| 改了什么 | 回滚 |
|---|---|
| App | `adb install -r` 装回 `BootTask/dist/` 里的旧版本 |
| `adb_keys` | `bash run_on_pc.sh adb restore` |
| 规则 | App 里删掉那条规则 |

不需要动 `/system` 任何东西，所以**没有变砖面**。

---

## 8. 一个安全提醒

`adb_keys` 里加一个公钥 = 多一台机器能 root 这台车机。私钥现在还会被编进 APK。
这台是你自己的车，可接受；但如果 APK 要分发给别人，记得把 `KEY_PKCS8_B64` 去掉，改用 `ro.adb.secure=0` 或让每台车单独授权。

---

## 9. 实际落地状态（2026-11-08 已编译完成）

**不再需要你在自己机器上编**：本机已补齐工具链并产出成品。

### 工具链（已就位）

| 组件 | 路径 | 说明 |
|---|---|---|
| JDK 17 | `C:/Users/11936/WorkBuddy/toolchain/jdk-17.0.20.1+1` | 与仓库 `build_win.sh` 原本使用的版本一致 |
| apktool 3.0.3 | `apk_src/tools/apktool.jar` | LFS 实体，15.4 MB |
| r8 (D8) 8.5.35 | `apk_src/tools/r8.jar` | LFS 实体，16.7 MB |
| apksigner | `apk_src/tools/apksigner/apksigner.jar` | LFS 实体 |
| android.jar | `apk_src/CarLife/02_补丁脚本/logxfer_src/tools/android.jar` | LFS 实体 |
| 签名 | `apk_src/BootTask/keys/boottask.p12` | 与车上已装版本同签名 |
| 构建脚本 | `C:/Users/11936/WorkBuddy/toolchain/build_local.sh` | 复刻 `build_win.sh`，仅换 JDK 路径 |

注意：`logxfer_src/tools/r8.jar` 在仓库里是 LFS 指针（133 字节），
直接用会 `ClassNotFoundException: com.android.tools.r8.D8`。
`build_local.sh` 已改为从 `apk_src/tools/r8.jar` 取实体。

### 代码改动（两处）

1. **新增** `src/com/boottask/AdbBridge.java`（283 行）
   - ADB 协议子集：CNXN / AUTH(RSA) / OPEN / OKAY / WRTE / CLSE
   - `KEY_PKCS8_B64` **已填入真实私钥**（1624 字符，`mk_app_key.py new` 生成）
   - 加固：AUTH 被拒两次即放弃，避免握着错误的钥匙空转耗尽超时
2. **修改** `src/com/boottask/AdvActions.java` 的 `doRootCmd()`
   - 由两级（su → sh）改为三级：**su → adbd → sh**
   - 每级独立日志前缀与耗时：`rootcmd[su]` / `rootcmd[adbd]` / `rootcmd[sh]`
   - 看 logcat 一行就知道走的哪条通道，不用猜

### 版本

- `versionCode 81 → 82`，`versionName 1.6.65 → 1.6.66`（`AndroidManifest.xml` 与 `apktool.yml` 同步）
  （1.6.65 是首版；1.6.66 修了 OKAY/CLSE 参数顺序 + 补 su 失败日志 + 新增 adbcmd 诊断动作）
- 签名证书：`CN=BootTask, OU=Dev, O=BootTask`，SHA-256 `d2519f98...5e39fd`
- 产物：`apk_src/BootTask/dist/BootTask_v1.6.66.apk`

### 密钥

| 项 | 值 |
|---|---|
| 指纹（SHA-256 前 16） | `f6464cb58f2f5e76` |
| 私钥 | 已编入 APK（`KEY_PKCS8_B64`） |
| 公钥 | `v3/app/out/app_adb.pub`，需追加到车机 `/data/misc/adb/adb_keys` |
| tag | `boottask@car` |

公钥编码已自校验：用 PC 现有 `~/.android/adbkey.pub` 反解再重编码，与原件**逐字节一致**，
证明与 AOSP adb 的编码完全相符，不需要试错。

### 上电后的执行顺序（**已作废，仅留档**）

> 下面这组命令装的是 1.6.66、注入的是 rootcmd/delay=60，且 keys/tcp 两步多余有风险。
> 请改用 `QUICKSTART.md` 的 `bash deploy_final.sh all`。

```bash
cd 车机工具/热点自启/v3
bash app_route.sh check      # 只读体检
bash app_route.sh install    # 装 1.6.66
bash app_route.sh script     # 推 boot_hotspot.sh v2
bash app_route.sh keys       # adb_keys 追加 App 公钥
bash app_route.sh tcp        # persist.adb.tcp.port=5555 + 验监听
bash app_route.sh rule 0     # 先注入 delay=0 的规则（测试用）
bash app_route.sh trigger    # 免重启验证 adbd 通道
#   → 看到 rootcmd[adbd] ok 才继续
bash app_route.sh rule 60    # 改成正式延迟
bash app_route.sh reboot     # 重启，然后等 4 分钟再看
```

`trigger` 是关键：Android 4.4 可以直接
`am startservice -n com.boottask/.ExecService --es event boot`，
让 App 走一遍和开机完全相同的规则路径，**不用重启就能验证 adbd 通道是否打通**。

---

## 10. v1.6.66 修复与 MuMu 预演结果（2026-11-08）

### 10.1 复核协议时抓到的两个 bug

**bug 1：OKAY / CLSE 的 arg0/arg1 写反了（会截断命令输出）**

ADB 帧的约定（`system/core/adb`）：发送方填 `arg0 = 自己这条 socket 的 id`，
`arg1 = 对端的 id`。adbd 收到包后用 `find_local_socket(arg1, arg0)` 反查 socket。

旧代码回 OKAY 时写的是 `(remoteId, LOCAL_ID)`，正好反了 → adbd 反查不到 socket，
会主动给你 CLSE，shell 流被提前掐断。因为 adbd 和 host 的 socket id 通常都是 1，
大部分时候"碰巧能跑"，一旦 id 不同就表现为输出截断/命令被 SIGPIPE。
已改为 `(LOCAL_ID, remoteId)`。

**bug 2：su 那一级失败是静默的**

`run()` 对"无输出且退出码非 0"返回 `null`，`doRootCmd()` 直接跳到下一级不留痕，
现场只看到 adbd 和 sh 两行，无法判断 su 到底是不存在、还是被拒、还是超时。
现在补一行 `rootcmd[su] failed <耗时>ms`。

### 10.2 新增诊断动作 `adbcmd`

只走 adbd、跳过 su，专门用来单独验证那条链路：

```json
{"event":"boot","action":"adbcmd","delay":0,"enabled":true,"arg":"id"}
```

### 10.3 MuMu 预演（Android 4.4.4 / API19 / x86 / eng）

本机 MuMu 的版本与车机同代（4.4 / API19），所以逻辑层可以预演。跑法：

```bash
cd 车机工具/热点自启/v3
bash mumu_test.sh          # 全量
bash mumu_test.sh 4        # 只跑第 4 步
```

| # | 项 | 结果 | 说明 |
|---|---|---|---|
| 1 | APK 安装（API19 + v1 签名） | ✅ | `pm install -r` 直接成功，无崩溃 |
| 2 | adbd 监听 5555 | ✅ | setprop + `ctl.restart adbd` 后 `/proc/net/tcp` 有 `0A(LISTEN)` |
| 3 | adb_keys 可写 | ✅ | 幂等追加，重复执行不会写重复行 |
| 5 | rootcmd 三级降级 | ✅ | 三级都执行到并且各自留痕（MuMu 的 App 拿不到 root，属环境） |
| 6 | BOOT_COMPLETED → 规则执行 | ✅ | 广播→BootReceiver→ExecService→rules=1→rule matched 全链路通 |
| 7 | 脚本语法 + 生产命令 + 脱离存活 | ✅ | 3 轮重试全跑完，`HOTSPOT FAILED rc=2` 正确落日志 |
| 4 | **AdbBridge 裸协议连 127.0.0.1:5555** | ⚠️ 未能验证 | MuMu 定制 adbd 的问题，见下 |
| 8 | ARM ELF stub / bcmdhd 热点 / AUTH(RSA) | – | 模拟器物理上做不到 |

**第 4 项为什么在 MuMu 上验证不了（重要，不是我们的代码问题）**

MuMu 里的 adbd 接受 loopback TCP 连接，但**根本不读数据包**：

```
0100007F:15B3  0100007F:xxxx  CLOSE_WAIT  tx=0  rx=00000020   ← 32 字节堆在接收队列没人读
```

用两种方式各自独立验证，结论一致：
1. 客机内用 `busybox nc` 发一段手工构造的合法 CNXN（校验过 magic/长度/CRC）→ 0 字节回应
2. 从宿主机用 Python 裸 socket 连 `127.0.0.1:7555` → 连接被桥接层直接关掉

也就是说 MuMu 的 adbd 只为它自己的桥接服务，不服务额外 TCP 客户端。
**车机上是 AOSP 原生 adbd，`service.adb.tcp.port` 就是标准的「无线 adb」特性，
行为不同** —— 这一项只能上车验，用第 6 节的 `adbcmd` 探测命令，一条日志就能判断。

### 10.4 上车前必须确认的一件事

`app_route.sh tcp` 那步如果失败（`persist.adb.tcp.port` 设了但重启后不监听），
说明这个 ROM 没有从 persist 属性派生 service 属性 —— 路径 A 的前提就不成立了。
届时的替代方案是把 `/system/bin/adbd` 换成「先 setprop 再 execve 原 adbd」的 ELF stub。
这条不影响开机，但会动 `/system`，需要单独评估。

---

## 11. 无线 adbd 路线：打通（2026-11-08）

### 11.1 为什么之前所有钩子路线都失败 —— 真正原因

查 `init.svc.*` 才发现：**`/system/bin/userapp` 挂在的服务开机确实会跑（class main / oneshot /
非 disabled），但那个服务里我们换上去的 stub 一启动就退出了**；而 `/system/etc/install-recovery.sh`
对应的 `flash_recovery` 服务 `init.svc.flash_recovery` 属性**是空的** —— 说明它开机从头到尾没被执行。
也就是说：之前那些"开机什么都不发生"，一半是挂在不会跑的服务上，一半是 stub 自己静默退出。

同时 `/data/local/hotspot/running.lock` 里残留了 `3194`（11 小时前那次的 pid），
如果脚本以锁文件判重，之后的每次开机都会静默空转。这个陈旧锁已清除，
脚本的锁也必须改成「锁里 pid 不存活则视为过期」。

### 11.2 决定性发现：adbd 的 5555 一直在监听，App 一接就是 root

实测证据链：

| 检查 | 结果 |
|---|---|
| `/proc/net/tcp` | `00000000:15B3 0A`（0.0.0.0:5555 LISTEN），inode 属于 **adbd 自己** |
| `service.adb.tcp.port` | 空，但 adbd 仍然监听 → 这个 ROM 的 adbd 默认就开 5555 |
| `ro.debuggable` / `ro.secure` / `ro.adb.secure` | `1` / `0` / 空 → **adbd 本身就是 root，且不需要 RSA 授权** |
| `adb forward tcp:15555 tcp:5555` + `adb connect` | 成功，`shell id` 返回 **uid=0(root)** |

所以：**App → 127.0.0.1:5555 → root**，完全绕开 zygote 的 `no_new_privs`，
不需要 su、不需要 adb_keys、不需要改 `/system`。

### 11.3 卡住很久的坑：ADB 头的 `data_check` 不是 CRC32

App 每次都是"连上 → 3ms 内被 adbd 关闭 → 读不到任何字节"。
用真 adb 客户端做对照后逐项隔离，结论非常明确：

| 实验 | 结果 |
|---|---|
| 真 adb 的 CNXN 原样重放 | ✅ 通 |
| 只把 `arg1` 改成 4096 | ✅ 通（maxdata 无所谓） |
| 把 `data_check` 改成垃圾值 | ❌ 被关闭 |
| 改 payload 一个字节、`data_check` 不动 | ❌ 被关闭 |
| **`data_check` = 逐字节求和** | ✅ 通 |

真包里 `data_check=0x701d`，而 crc32 是 `0x67a84469`，**`sum(bytes)=0x701d` 完全吻合**。
新版 adb 早就把 CRC32 换成了这种廉价校验和，而老 adbd 仍然会校验它。
（MuMu 上"accept 了却不读包"的怪现象，同源同因。）

### 11.4 第二处缺陷：命令超过 3 秒没输出就被判失败

`soTimeout=3000`，生产命令是 `nohup ... & sleep 6; echo ...`，
中间 6 秒没有输出 → `SocketTimeoutException` → 整体判失败。
已改为读超时不等于失败，继续等到总 deadline。

### 11.5 版本

- `1.6.67` (versionCode 83)：`data_check` 改字节和 + connect 重试（等 adbd 的 5555 起来）
  → 实测 `adbcmd[adbd] ok 79ms: uid=0(root)`，连打 5 次 5 次成功
- `1.6.68` (versionCode 84)：再修上面 11.4 的读超时，生产长命令不再假失败

### 11.6 生产配置（唯一需要的东西）

规则（`rules.xml` 里的一条，`event=boot`）：

```json
{"event":"boot","action":"adbcmd","delay":90,"enabled":true,
 "arg":"busybox nohup sh /data/local/hotspot/boot_hotspot.sh >/dev/null 2>&1 & sleep 6; echo LAUNCHED_after=$(busybox wc -c < /data/local/hotspot/boot.log)"}
```

- `delay=90`：adbd 的 TCP 监听起来得比 BOOT_COMPLETED 晚（实测本机在开机 60~80 秒之间），
  提前连只会 ECONNREFUSED。App 内部还会再重试最多 150 秒，双保险。
- `busybox nohup` 必须带：裸 `&` 和 `setsid` 在 adb 会话结束时都会被一起杀掉（MuMu 上实测）。
- `sleep 6; echo LAUNCHED_after=...` 是自检：日志里能看到 boot.log 的字节数，
  不用再猜"到底跑没跑"。

注入用 `bash inject_rule.sh <serial> adbcmd 90 "<上面那条命令>"`（内部做 JSON+XML 双层转义）。

## 12. v1.6.70：su 通道必须"探身份"，不能看退出码

**背景**：1.6.69 把 `doRootCmd` 的 su 判定从"有输出就算成功"改成 `endsWith("(exit=0)")`。
在 MuMu 上实测，日志依旧是 ok：

```
rootcmd[su] ok 104ms: su: setuid(0) failed (no_new_privs?)
uid=10042(u0_a42) gid=10042(...)          <-- 命令真的执行了，但身份是 App
ROOTCMD_CHAIN_OK (exit=0)
```

注意这三行是**同一条日志**（message 里含换行）。用 `logcat | grep rootcmd` 只看得到第一行，
所以第一次排查时被误判成"新代码没生效"。真正的结论是：

- mksu 版 su 被 `no_new_privs` 挡住后**不退出**，而是继续以 App 身份 exec 目标命令；
- 命令跑完、退出码 0 → `endsWith("(exit=0)")` 为真 → 照样判成功，降级链断在第一级。

**修法**：新增 `suUsable()`，开机后第一次需要 root 时先跑 `su -c id`，输出含 `uid=0` 才认可用：

```java
private static Boolean sSuUsable = null;      // 进程内缓存，一次开机只探一次

String probe = run(new String[]{"su", "-c", "id"}, 8000L, 4096);
boolean ok = probe != null && probe.indexOf("uid=0") >= 0;
```

实测（MuMu，su 存在但被拦）：

```
su probe 106ms: unusable -> su: setuid(0) failed (no_new_privs?)
uid=10042(u0_a42) ... (exit=0)
rootcmd[su] skipped 107ms: su 通道不可用（不存在 / 无 setuid 位 / 被 no_new_privs 忽略）
rootcmd[adbd] failed 18000ms: ...        <-- 正常降级（MuMu 上 PC 占着 5555 必失败）
rootcmd[sh] done 104ms: uid=10042 ...    <-- 三级兜底
```

车机上没有 su，探测在 0ms 内 IOException → unusable → 直接走 adbd，行为与 1.6.68 一致。

**顺带**：`doRootCmd` 里原 `output` 变量移进分支后，通道 3 的复用变量改名 `shOut`（否则编译不过）。

## 13. 构建环境（本机）三个坑

一台新机器上跑 `build.sh` 会连撞三次，每次报错都指不到真正原因：

| 现象 | 真因 | 解法 |
|---|---|---|
| `javac: command not found` | PATH 里没 JDK | 便携 JDK17 在 `2026-10-23-21-00-43/jdk-17.0.20.1+1` |
| `zip: command not found` | Git Bash 不带 zip | `tools/zipshim/zip`（python zipfile 实现 -0/-d） |
| `ClassNotFoundException: com.android.tools.r8.D8` | `tools/r8.jar` 是 **Git LFS 指针**（133 字节文本） | 用 SDK 的 `build-tools/*/lib/d8.jar` |

顺序也重要：`export PATH="$JAVA_HOME/bin:$PATH"` 时 `$JAVA_HOME` 必须是 **POSIX 形式**
（`/c/Users/...`），写成 `C:/Users/...` 会导致 `which java` 找不到。

以上全部固化进 `apk_src/build_apk.sh`，一条命令出包：

```bash
bash apk_src/build_apk.sh            # → BootTask/dist/BootTask_v<versionName>.apk
```

装到车机：

```bash
bash 热点自启/v3/install_apk.sh              # 自动挑唯一在线设备
bash 热点自启/v3/install_apk.sh 192.168.43.1:5555
```

`-r` 覆盖安装不清数据，`shared_prefs/rules.xml` 的生产规则原样保留，不用重注入。

## 14. 上车执行方案审查（2026-11-08 15:20）

用户问「接下来要执行的方案有没有问题」。审查发现**文档与脚本仍停留在旧方案**，
照着执行会直接破坏已验证的配置，而且有一个足以让热点完全起不来的隐藏 bug。

### 14.1 旧 `app_route.sh` 的四处破坏性（已停用）

| # | 问题 | 后果 |
|---|---|---|
| 1 | `APK` 写死 `BootTask_v1.6.66.apk`，且 `pm install -r -d` 带 `-d`（允许降级） | 把 1.6.70 降回 1.6.66 |
| 2 | `cmd_rule` 注入 `rootcmd` / delay=60 / sleep4，去重只删 rootcmd | 和正确的 adbcmd/delay=90 规则并存，开机跑两份热点脚本 |
| 3 | `cmd_rule` / `cmd_keys` 用 `ls -ld \| awk '{print $3":"$4}'` 取属主 | 目录行省略 size 列，`$4` 是日期 → chown root:2026-11-08 → App 报 without permission / rules=0；`cmd_keys` 还会写坏 adb_keys 属主 |
| 4 | `cmd_keys` / `cmd_tcp` 设置 persist.adb.tcp.port + restart adbd | 本机 adbd 默认就在 0.0.0.0:5555 监听、ro.adb.secure 空无需 RSA；这两步多余且会断 USB |

处置：脚本加废弃守卫（默认任何子命令都 exit 1，逃生开关
`APP_ROUTE_LEGACY_ALLOW=1`），README / APP_CHANGE 顶部加指向 QUICKSTART 的提示。

### 14.2 最致命：`boot_hotspot.sh` 是 CRLF

本地文件 400 行**全部 `\r\n`**。PC 的 bash 对 `\r` 宽容，`sh -n` 看不出问题；
推到 Android 后 `mksh` 和 `busybox ash` 都报：

```
line 76: syntax error: unexpected word (expecting "do")   # busybox sh
boot_hotspot.sh[76]: syntax error: unexpected 'do'        # /system/bin/sh
```

脚本**根本不会执行**。更隐蔽的是旧 `app_route.sh cmd_script` 只打印
`syntax=FAIL` 却不退出，用户会以为部署成功。

处置：
1. 本地 `boot_hotspot.sh` 已整体转成 LF（10247 → 9847 字节），
   设备端两种解释器 `-n` 均 RC=0；
2. `deploy_final.sh assets` 推送前统一生成 LF 临时副本，并做
   设备端 `sh -n` + md5 比对，**任一失败即 return 1**。

### 14.3 `deploy_final.sh` 的 pipefail 陷阱

`all` 第一次跑在 `cmd_check` 之后静默退出（rc=1，无任何报错）。原因：
脚本设了 `set -o pipefail`，而「`ps | grep hostapd` 无匹配」这种正常空结果
让 `sh_ | while` 管道末端的 grep 返回 1 → 函数返回 1 → `cmd_check || exit 1`。
修：`sh_` 末尾加 `|| true`（它的退出码本来就无人使用）。修后 `check` rc=0、
`all` rc=0，全流程在 MuMu 上串联通过。

### 14.4 新入口 `deploy_final.sh`（MuMu 已全绿）

`check / install / assets / rule / verify / trigger / all`，唯一权威步骤见
`QUICKSTART.md`。关键设计：

- 生产命令**内置为单引号常量**：`$(busybox wc -c < ...)` 必须在设备端展开；
  手敲 `inject_rule.sh` 若用双引号，PC 会把它展开成空，自检静默失效。
  实测注入后的 rules.xml 里 `$(...)` 完整保留。
- `rule` 直接复用已修好属主逻辑的 `inject_rule.sh`，不再自己拼 XML。
- 不推 adb_keys、不设 TCP 属性（见 14.1 第 4 条）。
- `verify` 读 `files/log/boottask.log`（旧脚本读 `files/boot_diag.log`，路径不存在）。
- `trigger` 等 `delay+20 = 110s`，旧 `app_route.sh trigger` 只等 8s，必然误判失败。

### 14.5 仍需上车确认的两项

车机当前离线，无法远程核实，`check` 会打印：

- `/data/local/hotspot/dnsmasq.conf` 是否在位（早期 deploy.sh 推过，但之后有快照恢复）；
- `rules.xml` 里是否只有**一条** adbcmd/delay=90 规则（`rule` 会整份覆盖，幂等）。

## 15. 上车实测（2026-11-08 15:45–15:53）：冷启动一次成功

车机接 USB 后按 `QUICKSTART.md` 执行，全流程通过。**但过程中查出最后一个隐藏 bug。**

### 15.1 车机 `/system/bin` 极度精简 —— 没有 cut/tr/awk/sed/wc/head/tail

实测（`command -v`）：

| 命令 | 车机 | 备注 |
|---|---|---|
| grep / ps / ifconfig / date / mkdir / rm / ln / kill | ✅ | toolbox |
| **cut / tr / awk / sed / wc / head / tail / sort / printf** | ❌ | 全无 |
| busybox | ✅ | `/system/bin/busybox` v1.8.1 (2007) |

而 `boot_hotspot.sh` v2 的 `log()` / `uptime_s()` 写作：

```sh
echo "... up=$(cut -d. -f1 /proc/uptime) ..."
uptime_s() { cut -d. -f1 /proc/uptime; }
```

→ `cut: not found`（RC=127）→ `up=` 恒为空。**后果不是报错，是静默走错分支**：

```sh
U=`uptime_s`                 # U=""
[ "$U" -ge $SETTLE_UP ]      # [ "" -ge 150 ] 恒假
```

`settle()` 因此**每次都白跑满 180 秒**才放弃。实测第一次手动触发：15:36:20 启动，
15:39:2x 才进 step1，热点 15:40:24 才起来 —— 比应有慢 3 分钟。

日志里 `[11-08T15:36:20] up= ==== boot_hotspot v2 start ====` 那个**空白的 `up=`** 就是铁证。

### 15.2 修法（`boot_hotspot.sh`）

```sh
# 纯 shell 取 uptime 整数部分，零外部依赖
proc_uptime() {
  U=`cat /proc/uptime 2>/dev/null`
  echo "${U%%.*}"
}
log()        { echo "[`date +%m-%dT%H:%M:%S`] up=`proc_uptime` $*" >> $LOG; }
uptime_s()   { proc_uptime; }

# settle 加兜底：取值失败当 0，避免空串恒假白等
case "$U" in ''|*[!0-9]*) U=0 ;; esac
```

3 处 `tr -d` 全部改 `busybox tr -d`（`settings get` 的 `\r`、`mode` 文件、
`failcnt` 文件；`tr` 缺失会让 `MODE` 读成 `sta\r\n`，`mode=sta` 分支永久失效）。

修完脚本已无任何裸 `cut/tr/awk/sed/wc/head/tail/sort`（`grep` 复检为空）。
`deploy_final.sh assets` 会做设备端 `sh -n` + md5 比对，失败即退出。

### 15.3 冷启动实测时间线（`adb reboot`）

```
15:46:03  ExecService rules=1 / rule matched        ← BOOT_COMPLETED
15:47:33  boot_hotspot v2 start pid=3291            ← delay=90 到点
15:47:34  boot_completed=1
15:47:49  settle: up=150 >= 150                     ← 立即通过（修前必卡 180s）
15:47:49  mode=ap / attempt 1
15:47:54  step1: wifi_on=0 waited=0s
15:47:59  step3: unload bcmdhd
15:48:09  step4: op_mode=2 ok / step5: hostapd up after 0s
15:48:13  verify: hostapd=1 dnsmasq=1
15:48:13  ===== HOTSPOT UP  ssid=9B66BEB4 ch=6 ip=192.168.43.1 =====
15:48:13  guard: start, 300s / 20s
15:53:15  guard: exit, hotspot=up                    ← 守夜满 5 分钟，无掉线
```

`boot_completed` → 热点可用 = **2 分 10 秒**。

最终状态核对：

```
op_mode = 2
wifi  3837 ... S /system/bin/hostapd
nobody 3978 ... R dnsmasq
wlan0: ip 192.168.43.1 mask 255.255.255.0 flags [up broadcast running multicast]
hostapd.conf: ssid=9B66BEB4 channel=6 wpa=2 hw_mode=g
lock.d 已自动释放
```

### 15.4 写在后面的坑

- Android `ps` 的 NAME 列会截断（`sh /data/local/hotspot/...` 只显示 `sh`），
  `ps | grep boot_hotspot` 判存活**永远为空**，要查 `/proc/<pid>` 或 `ps | grep sleep`。
- 轮询日志判"成功"时务必带上本次运行的标识（如 `up=` 数字范围），
  否则会被 boot.log 里上一次的 `HOTSPOT UP` 假触发（本次就误触发过一次）。
- 部署完后车机 USB 再次掉线（Windows PnP 已认不到硬件）。属物理/供电问题，
  与本次改动无关；验证已在掉线前完成。

---

## 16. v1.6.71：把「热点自启」做成 App 里的开关（2026-11-08）

用户要的是「App 里关掉就不自启、打开就自启」，不要接线、不要敲命令。

### 16.1 为什么不新增权限、不写 /data/local

App 没有 `/data/local` 的写权限（那是 shell/root 的地盘），所以没法去动
`/data/local/hotspot/DISABLED`。但 **rules.xml 是 App 自己的 shared_prefs**，
改它不需要任何权限 —— 而且规则引擎本来就认 `enabled` 字段：

`smali/com/boottask/ExecService.smali:203`

```
const-string v5, "enabled"
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(String;Z)Z
if-eqz v5, :cond_3          ← false 直接跳过这条规则
```

所以「关掉自启」= 把那条规则的 `enabled` 置 false。规则本身留在左列列表里，
看得见、随时能再开。这与 `inject_rule.sh clear`（清空整个列表、连无关规则一起干掉）
有本质区别。

### 16.2 新增 HotspotAuto.java

| 方法 | 作用 |
|---|---|
| `allIndexes(ctx)` | 找出所有 `action=adbcmd` 且 `arg` 含 `boot_hotspot.sh` 的规则下标 |
| `isEnabled(ctx)` | 任一条 `enabled=true` 就算「已开」 |
| `setEnabled(ctx,on)` | 全部置为目标状态；一条都没有且要开 → 新建生产规则 |
| `buttonText` / `statusText` | 按钮与状态行文案 |
| `restoreWifiOnAsync(ctx)` | 关闭时把 `global wifi_on` 改回 1 |

两个设计决定：

- **按 `arg` 内容找，不按下标**：`RuleStore.add` 是纯 append 不去重，下标会随用户
  加/删规则漂移，按下标 toggle 会关错规则。
- **`setEnabled` 要处理多条**：历史上手动加过重复规则时，只 toggle 第一条会出现
  「点了关闭但热点仍在跑」的假象。

### 16.3 关闭时必须把 wifi_on 改回 1

`boot_hotspot.sh` 跑过之后会把 `global wifi_on` 写成 0（它自己接管驱动）。
规则 disabled 之后脚本不再跑，就没人把它改回来了 → 下次开机 Android 不会自己开 WiFi，
车主得手动点一次。

App 进程执行 `settings put global wifi_on 1` 会被权限挡（settings 用调用者 uid），
所以走 1.6.70 打通的 `AdbBridge`（adbd 侧 root）。必须异步 —— `AdbBridge` 的连接
等待最长 150 秒，放主线程直接 ANR。

### 16.4 反射约束（与 EditActivity 同一套写法）

`RuleStore` 是 smali 类、stub `android.jar` 没有 `org.json` —— 两者对 javac 都不可见，
所以 `RuleStore.list/toggle/add` 和 `JSONObject` 全走反射：

```java
Object r = Class.forName("com.boottask.RuleStore")
        .getMethod("toggle", Context.class, int.class)
        .invoke(null, ctx, Integer.valueOf(i));
```

### 16.5 与命令行开关的关系

两套开关并存，作用于不同层，任选其一：

| | App 开关（1.6.71+） | `autostart_ctl.sh off` |
|---|---|---|
| 作用点 | `rules.xml` 的 `enabled` | `/data/local/hotspot/DISABLED` |
| 效果 | BootTask 连 `adbcmd` 都不执行 | 规则照跑，`boot_hotspot.sh` 进场即退出 |
| 痕迹 | 无（规则被静默跳过） | `boot.log` 记一行 `DISABLED flag present, skip` |
| 恢复 | App 里再点一次 | `rm DISABLED` |
| 需要接线 | 不需要（车上直接点） | 需要 adb |

