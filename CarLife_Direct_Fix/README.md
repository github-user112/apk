# CarLife 车机端「安卓 4.4.2 直连」修复工程

> 目标：让 **CarLife 4.0 车机端**（`com.baidu.carlifevehicle`，1.6 修改版）在 **Android 4.4.2 车机**上
> 跑通 **WiFi Direct（WLAN 直连）**，并顺带修复蓝牙带外信道、热点降级等周边问题。
>
> 手段：不做源码级重写，而是 **apktool 反编译 → 手写 smali 补丁 → 重打包签名**
> （因为拿不到原始 Java 源码，且本机没有 d8/dx，无法编译 Java 回填）。
>
> 参照对象：**亿连手机互联 V7.0.1**（`net.easyconn`）的 WLAN 直连自举做法。

---

## 一、目录导航

| 目录 | 内容 | 说明 |
|---|---|---|
| `1-baseline-apk/` | 1.6 修改版 APK（+ 1.3 早期版） | **补丁的输入基线**，一切从这里开始 |
| `2-patch-src/` | `_patch_a.py` / `_patch_v2.py` / `_patch_v3.py` / `_patch_v4.py` | ★ **真正的"源码"**——所有改动都在这里 |
| `3-smali-src/patched-v7/` | 打完全部补丁的完整 smali 工作树 | 可直接 `apktool b` 重建，无需重跑补丁 |
| `3-smali-src/changed-files/` | 被改动的 6 个文件 + 新增的 3 个类 | 单文件速查用 |
| `4-build-scripts/build.sh` | 一键构建脚本 | 反编译 → 打补丁 → 重打包 → 签名 |
| `5-test-scripts/` | adb 安装 / 启动 / 抓日志 / 截图脚本 | MuMu 与真机两套 |
| `6-dist-apk/` | 1.7 / 1.8 / 1.9 / 1.10 成品包 | 按版本号递增 |
| `7-docs/` | 流程分析文档 + **smali 改动清单.diff** | 看 `smali改动清单.diff` 能一眼看清全部改动 |
| `8-evidence/` | 测试截图与关键日志 | MuMu 与真机的验证证据 |
| `TOOLCHAIN.md` | 工具链版本与用法 | apktool / 签名器 / JDK |

> 原始工作区（`C:\PJGG\apk\`）里的 `_w16`/`_w17`/`_w19`/`_w110` 等是各阶段的中间工作树，
> 本目录只收录了**最终态 `_w110`**，中间态可由补丁脚本重新生成。

---

## 二、快速上手

### 重建 APK

```bash
cd CarLife_Direct_Fix/4-build-scripts
bash build.sh            # 全流程：反编译 → 补丁 → 重打包 → 签名
bash build.sh patch      # 只跑补丁
bash build.sh build      # 只从已有 _w110 重打包+签名
```

补丁脚本顶部的 `ROOT`/`SRC`/`DST` 是写死的 `C:\PJGG\apk\...`，**搬家前先改这 4 个 py 的常量**。

### 部署到 MuMu 模拟器

```bash
adb connect 127.0.0.1:7555
bash 5-test-scripts/_ins111.sh <apk路径>    # 覆盖安装
bash 5-test-scripts/_t111.sh                # 锁直连模式 + 启动 + 抓日志 + 截图
```

### 关键前置：prefs 属主必须对

MuMu 上 app 的 uid 固定为 **10046（u0_a46）**。若用 root 覆盖 `shared_prefs/Carlife.xml`，
属主会变成 `root:root`，app 读不到配置 → 日志出现
`Couldn't create directory for SharedPreferences` → **停在首启扫码页，完全不进连接流程**。

```bash
chown 10046 /data/data/com.baidu.carlifevehicle/shared_prefs/Carlife.xml
chmod 660   /data/data/com.baidu.carlifevehicle/shared_prefs/Carlife.xml
chmod 771   /data/data/com.baidu.carlifevehicle/shared_prefs
```

> MuMu 的 `chown` 是 toybox 版：**一次只接受一个文件，不支持 `-R`**（`-R` 会被当作用户名）。

直连模式由 `shared_prefs/Carlife.xml` 的 `CarlifeConnectType` 决定：
**有线 2 / 热点 5 / 直连 9**。

---

## 三、补丁清单

| 编号 | 版本 | 位置 | 做什么 | 为什么 |
|---|---|---|---|---|
| **A** | 1.7 | `assets/bdcf` | 加 `CONFIG_WIFI_DIRECT_NAME = CarLife-HU`；`CONFIG_WIRLESS_FREQUENCY` 1(5G)→0(2.4G) | 车机要有确定的 P2P 设备名给手机找；4.4.2 车机普遍只支持 2.4G |
| **B** | 1.7 | `m/m/d/a.smali` `run()` | 蓝牙未开时主动 `enable()`，并置 `d.h=true` | 蓝牙是带外握手通道，不开就整条链路断；`h` 用于让"蓝牙已开"广播触发重试 |
| **C** | 1.7 | `m/m/d/i.smali` `<init>` | 读配置 + `WifiP2pManager.setDeviceName`（**仅 API<29**） | 让 P2P 设备名落地；Android 10+ 该 API 需系统权限，故加版本保护 |
| **D** | 1.10 | **新增** `m/m/d/j.smali` `j$a` `j$b`，`i.smali` 挂载 | **P2P 自举器**：进直连后 8 秒若仍无组 → 主动 `createGroup()` 当 GO，失败每 8 秒重试、上限 6 次；同时申请 `MulticastLock` | ★ 核心缺陷：CarLife 车机端**全 dex 里 `createGroup` 调用数为 0**，纯被动等手机来连，永远建不起组 |
| **E** | 1.10 | `m/m/e/d.smali` `f()` | 断开时停自举器 + `removeGroup` + `stopPeerDiscovery` | 残留组会让下次 `discoverPeers` 一直返回 `BUSY(reason=2)` |
| **F** | 1.10 | `m/m/d/j.smali` `a()` / `j$b.smali` | armed 时取消 CarLife 的 discover 循环，并在每次 `createGroup` 前先 `stopPeerDiscovery` | 把 P2P 状态机腾出来 |
| **G** | 1.10 | `m/m/d/b.smali` `run()` | **抑制** CarLife 的 `discoverPeers` 本体 | CarLife 每秒重试 discover 且**从不 cancel**，洪水把 P2P 状态机锁死在 BUSY |

另有 `AndroidManifest.xml` 补 `CHANGE_WIFI_MULTICAST_STATE`（`MulticastLock` 必需）。

**改动量很小**——总计约 **70 行 smali 新增**，其余为新增类。详见 `7-docs/smali改动清单.diff`。

---

## 四、核心原理：CarLife 为什么连不上

### 亿连（net.easyconn）的做法

`discoverPeers` 成功后**主动 `createGroup()` 当 GO** → 再用 **jmdns 广播
`_EasyConn._tcp.local.`**（TXT 带 IP + 动态端口）→ 手机收到后 TCP 直连。
带 120 秒周期重试、`MulticastLock`。**BLE 在 API<21 直接 return → 4.4.2 上完全不依赖蓝牙。**

### CarLife 的原生做法及缺陷

* TCP 目标 IP **只能来自蓝牙**：`CarlifeWirlessIp` protobuf 经
  `m/m/d/e` 的 sparse-switch `handleResponseIp` → `e$a.a(String)` → `m/m/e/c.a(String)` 建连；
  车机端**只有一个 `java.net.Socket`，没有 ServerSocket**，是纯 TCP 客户端。
* 全 dex 中 `createGroup` = 0、`addLocalService` = 0、`connect` = 0。
* `discoverPeers` 失败后每秒重试（`n/h;->b(Runnable,1000,1000)`）**但从不停**（`onSuccess` 才 cancel）。
* 结果：**蓝牙不通 → 拿不到 IP → 永远停在"等待 WLAN 直连组网中"**，30 秒后降级热点。

→ 所以修复思路是：**给车机补上"自举"能力（patchD/F/G）+ 修好蓝牙通道（patchB）+ 干净善后（patchE）**。

---

## 五、验证状态

| 版本 | 环境 | 结果 |
|---|---|---|
| 1.7 | — | ❌ 作废（B 未置 `h`、C 逻辑写反） |
| 1.8 | MuMu（Android 4.4.4） | ✅ 通过 |
| 1.9 | realme RMX2121（Android 12） | ✅ 通过 |
| 1.10 / v7 | MuMu（Android 4.4.4） | ✅ 自举链路全通：`armed` → `MulticastLock acquired` → discover 抑制 → `createGroup attempt 1/6`…`6/6` 每 8 秒一次 → `reason=1`(P2P_UNSUPPORTED，无硬件，符合预期) → 30 秒后降级热点 |
| 1.10 / v7 | realme（Android 12） | ⚠️ 部分：patchF/G 生效（discover 洪水已停），但 `createGroup` **恒 `reason=2`(BUSY)**，未解决 |
| 1.7~1.10 | **目标车机（Android 4.4.2）** | ⬜ **尚未实测** |

### 模拟器的能力边界（重要）

| 能力 | MuMu 实测 |
|---|---|
| Wi-Fi Direct | ❌ `dumpsys wifip2p` → `curState=P2pNotSupportedState`，**无 wlan0**，`createGroup` 恒 `reason=1` |
| 蓝牙 | ❌ `BluetoothManagerService: mBluetooth = null` / `Fail to bind to IBluetooth`，`enable()` 永远失败 |
| `MulticastLock` | ✅ 可用 |
| TCP 出向 | ✅ 可连宿主机（`10.0.2.2` / `10.0.3.2` / 宿主机局域网 IP） |
| TCP 入向 | ✅ 需 `adb forward tcp:X tcp:Y` |

> **任何模拟器都验不了 P2P 真实组网**——官方 AVD 也不支持 Wi-Fi Direct。
> 「最终能不能连上」只能在真机 / 车机上验。模拟器只能验证「逻辑链路在跑」。

---

## 六、混淆类映射（1.6 专用，改代码前先查这张表）

| 语义 | 混淆名 |
|---|---|
| InstantConnectionSetup | `a.a.a.a.m.m.d.e` |
| WifiDirectManager | `a.a.a.a.m.m.d.i` |
| WifiDirectDiscoverableTask | `a.a.a.a.m.m.d.h` |
| BluetoothDeviceDiscover | `a.a.a.a.m.m.d.d` |
| 蓝牙发现 Runnable | `a.a.a.a.m.m.d.a` 的 `run()` |
| **discoverPeers 洪水本体** | `a.a.a.a.m.m.d.b` 的 `run()` |
| P2P 自举器（本项目新增） | `a.a.a.a.m.m.d.j` / `j$a` / `j$b` |
| WifiP2pOperationSequence | `a.a.a.a.n.i.b` |
| discoverPeers / stopPeerDiscovery 算子 | `a.a.a.a.n.i.c.a` / `a.a.a.a.n.i.c.b` |
| cancelConnect 任务 | `a.a.a.a.m.m.d.g` |
| requestConnectionInfo 回调 | `a.a.a.a.m.m.d.c` |
| 断开清理 `terminate` | `a.a.a.a.m.m.e.d` 的 `f()` |
| TCP Communicator（`new Socket`） | `a.a.a.a.a.j.f.c` |
| 调度器（Timer 单例） | `a.a.a.a.n.h`（`b()`=schedule / `c()`=cancel） |
| 配置类 Configs | `a.a.b.r.a`（读值 `La/a/a/a/c;->I0(String)`） |
| 连接模式 | `ConnModeHelper`：有线 2 / 热点 5 / 直连 9 |

- `i.f`（boolean）= **P2P 组是否已形成**（`WIFI_P2P_CONNECTION_CHANGED_ACTION` 里 `groupFormed==true` 时置 1）
- `d.h`（boolean）= **"已请求开蓝牙，等广播回来自愈"** 的标志

---

## 七、血泪坑（改代码前必读）

1. **smali 分支方向必须实测验证**，别只看代码：
   `if-eqz` = 寄存器 **==0** 才跳；`if-nez` = **!=0** 才跳。
   本项目曾在两处写反（自举器 `h` 判断、组状态判断），且**都只有靠日志才抓到**。
   正确写法：组已形成判断必须 `if-nez v1, :formed`；重试上限必须 `if-ge`（≥6 才放弃）。
2. `invoke` / `if-*` 只能用 **v0–v15**（4 位编码）。给方法加代码前先看 `.locals`。
3. **`bdcf` 不要加空的 `CONFIG_TARGET_BLUETOOTH_NAME`**——空串 ≠ null，蓝牙匹配会永远失败。
4. `CONFIG_HU_BT_NAME` / `CONFIG_HU_BT_MAC` 目前仍是占位符 `xxx` / `yyy-zzz-xxx`，**需要车机真实值**。
5. **Android 12+ 上第三方 App 无法完成老 SDK 的 P2P 组网**（`WifiP2pService` 要
   `NETWORK_SETTING` / `NETWORK_STACK` / `OVERRIDE_WIFI_CONFIG`），改 smali 绕不过。
   **车机 4.4.2 无此限制**——这也是真机上 `BUSY` 未解、但车机仍值得一试的原因。
6. 真机（ColorOS）上 `input tap` 无效，必须用 `input touchscreen tap`；
   `pm grant` / `appops` / `settings put` 全被拒，授权靠 UI 点选。

---

## 八、待办

1. **拿到车机真实蓝牙名 / MAC** → 填进 `assets/bdcf` 出下一版。
2. **在目标车机（4.4.2）实机跑 1.10**，看界面自检四行：
   蓝牙 / WLAN 直连支持与否 / 系统版本 / 直连名称。
3. 若车机 WLAN 直连显示"不支持" → 转「**热点 + 手动 IP**」路线
   （需从 5+ 版移植 `CONNECT_TARGET_IP_ADDRESS`，并在蓝牙不可用时用配置 IP 触发 TCP 建连）。
4. 真机 `createGroup` 恒 `BUSY(reason=2)` 未定位——已排除残留组、WiFi 状态、权限、discover 洪水；
   推测为系统层 P2P 状态机被他人占用或 Android 12 权限墙。
5. 有线模式独立 bug：`UsbAccessoryScanner` 每秒重试拿不到权限；且模式被记住会锁死在有线。
