# 亿连 V7.0.1 vs CarLife 1.6 车机端：直连流程对比分析

> 分析对象
> - `亿连手机互联V7.0.1.apk` — 包名 `net.easyconn`，versionName `7.0.1-9011d330b-202404121051`，minSdk 16 / targetSdk 28，42.6 MB，单 dex 2051 类
> - `CarLife4.0车机端个人修改版1.6` — 包名 `com.baidu.carlifevehicle`，minSdk 16 / targetSdk 30，单 dex 1609 类，SDK 混淆在 `a.a.a.a.*`
>
> 结论一句话：**亿连用「网内 mDNS 服务发现」自举，CarLife 用「蓝牙 RFCOMM 带外信道」自举。
> 前者不依赖蓝牙，后者蓝牙一断全链路终止。**

---

## 一、亿连的实际情况

### 基础信息
| 项 | 值 |
|---|---|
| 包名 | `net.easyconn` |
| minSdk / targetSdk | 16 / 28 → **原生支持 Android 4.4.2（API 19）** |
| 原生库 | `libECSDK.so`（核心）、`libmediaserver.so`、`libtun2socks.so`、`libDnsProxy.so`、`libjni-helper.so` |
| 架构 | arm64-v8a / armeabi-v7a / x86 / x86_64 |
| 内嵌 | **jmdns 3.4.1**（完整 mDNS/DNS-SD 实现，约 60 个类）、即对讲 `com.huawei.hms.scankit` |

### 配置开关（assets/EcConfig.prop）
```
ENABLE_APP_WIFI_DIRECT=true     ← 应用层 WiFi Direct 开
ENABLE_SDK_WIFI_DIRECT=false    ← SDK 层 WiFi Direct 关
ENABLE_WIFI_SERVICE=true        ← WiFi 服务（mDNS 发布）开
SUPPORT_BT_CALL=false           ← 蓝牙电话 关
ENABLE_APP_ANDROID_USB=true     ← USB AOA 也开（多通道并存）
SUPPORT_QR_BLE_AP=false         ← BLE/二维码 关（默认）
```
> 注意：`ecsdk/d.java`（唯一会调 `createGroup` 的类）被 `ENABLE_SDK_WIFI_DIRECT=false` **编译期关掉**，
> 运行时根本不实例化。所以实际生效的是 App 层 `EcWifiManager`。

### 直连六步

| 步 | 代码位置 | 动作 |
|---|---|---|
| 1 | `EcWifiManager.h()` | `discoverPeers()` — 车机进入可发现。**启动前检查 WiFi 已开 / 未在搜索 / 传输未打开 / 未被强停** |
| 2 | `EcWifiManager.c(WifiP2pInfo)` | P2P 组形成后处理，**车机是 GO 还是手机是 GO 都兼容**：自己是 GO → `reOpenWifiService`；自己是客户端 → 取 `groupOwnerAddress.getHostAddress()` |
| 3 | `EcWifiManager.c()` | 把组主 IP 通过 `Message(what=45)` 设进传输层，传输类型 `EC_TRANSPORT_ANDROID_WIFI` |
| 4 | `q.W() / q.X(i) / q.Y()` | 分别为 `openWifiService` / 延迟 open / `reOpenWifiService` |
| 5 | **`ecsdk/WifiManager.d()` — publishMdns** | **核心**：等 IP 就绪（500ms 轮询）→ 枚举网卡按 displayName 过滤 → **`JmDNS.create(addr, hostAddr)`** → `ServiceInfo.create("_EasyConn._tcp.local.", "EasyConn", port, "Wifi Discovery Service for EC")` |
| 6 | 手机端 | 解析 mDNS → 拿到 **IP + 动态端口** → TCP 直连 |

### 关键机制

1. **动态端口，靠 mDNS 告诉对方**
   端口来自 `ECSDK.native_getLocalServiceInfo()` 的 `"port"` 字段（native 层起的 ServerSocket），
   **不是写死的**。因此不存在"端口不对"这类问题。

2. **两套发现并存**
   - WiFi P2P 场景：`WifiP2pDnsSdServiceInfo.newInstance("EC_MIRROR", "_presence._tcp", txt)`
     TXT 记录含 `i`=huid / `n`=huname / `f`=flavor / `c`=channel / `p`=port / `e`=EC_MIRROR_CARBIT
     —— 但这套在 `ENABLE_SDK_WIFI_DIRECT=false` 下没启用
   - 通用场景：**自研 jmdns 发 `_EasyConn._tcp.local.`**，无论 P2P 组 / 普通 WiFi / 车机热点都能用

3. **组播锁 + 双向发现**
   `MulticastLock` 出现 22 次，`addServiceListener("_EasyConn._tcp.local.", ...)` ——
   既发布也浏览，保证组播被 WiFi 过滤时还能工作。

4. **强韧的重试**
   - `EcWifiManager.a`（Runnable）：**每 120 秒**检查一次，只要传输没打开就重新 `startP2pSearch`
   - `OPEN_TRANSPORT_RETRY_TIME` 默认 1000ms
   - 广播接收覆盖 9 个 action：`WIFI_STATE_CHANGED` / `STATE_CHANGE` / `supplicant.STATE_CHANGE`
     / `WIFI_AP_STATE_CHANGED` / `CONNECTIVITY_CHANGE` / `THIS_DEVICE_CHANGED`
     / `CONNECTION_STATE_CHANGE` / `p2p.STATE_CHANGED` / `DISCOVERY_STATE_CHANGE` / `PEERS_CHANGED`

5. **连接前清理、断开后收尾**
   `f(WifiP2pGroup)`：组还在就 `removeGroup`；`c()`：`clearLocalServices` + `stopPeerDiscovery` + `removeGroup`

6. **不使用任何隐藏 API**
   全程只用公开 API：`discoverPeers` / `removeGroup` / `requestConnectionInfo` / `requestGroupInfo` /
   `addLocalService` / `clearLocalServices` / `stopPeerDiscovery`。
   **唯一提权相关的是 `requestDeviceInfo`，且加了 `SDK_INT >= 29` 保护**，并且它只是**读**设备名
   （读到后 `changeCarNavigatorName()` 反过来把系统名字当成自己的名字用），**从不 `setDeviceName`**。

7. **Android 4.4.2 上完全不用蓝牙**
   `EasyConnectService.onCreate()`：
   ```java
   if (g.Z(this)) {                       // SUPPORT_QR_BLE_AP
       if (Build.VERSION.SDK_INT < 21) {
           log("The current SDK version does not support BLE");
           return;                        // ← 4.4.2 直接 return，BLE 不启用
       }
       ...
   }
   ```
   这一段在 `EcWifiManager` 已经构造完成之后，因此 WiFi 链路不受影响。

---

## 二、CarLife 1.6 车机端的实际情况

### 走通的链路（源码映射见表）
```
BluetoothDeviceDiscover(a.m.m.d.a/.d)
  → 扫 bondedDevices，按 CONFIG_TARGET_BLUETOOTH_NAME 匹配
  → device.createRfcommSocketToServiceRecord(00001101-0000-1000-8000-00805F9B34FB)  ← 标准 SPP UUID
  → 蓝牙 RFCOMM 通了才回调 onDeviceConnected
InstantConnectionSetup(m.m.d.e)
  → 在蓝牙信道上跑 requestIp / handleTargetInfoRequest / handleWirelessInfoRequest / handleResponseIp
  → 手机拿到车机的 WiFi 参数（含 CONFIG_WIFI_DIRECT_NAME）
WifiDirectDiscoverableTask(m.m.d.h)
  → WifiP2pOperationSequence：[n/i/c/a = discoverPeers] → [n/i/c/b = stopPeerDiscovery]
WifiDirectManager(m.m.d.i)
  → 收 WIFI_P2P_CONNECTION_CHANGED_ACTION → requestConnectionInfo
Communicator(a.a.a.a.a.j.f.c)
  → new Socket(String host, int port)   ← host/port 只能来自蓝牙信道
```

### 决定性证据：能力调用统计

| 能力 | 亿连 | CarLife 1.6 |
|---|---|---|
| `JmDNS`（服务发现） | **329** | **0** |
| `MulticastLock`（组播锁） | **22** | **0** |
| `WifiP2pDnsSdServiceInfo` | 3 | **0** |
| `NsdManager` / `NsdServiceInfo` | 0 | **0** |
| `ServerSocket`（监听） | **12** | **0** |
| `createRfcommSocket`（蓝牙串口） | 0 | **2** |
| `BluetoothSocket` | 4 | **13** |
| `setWifiApEnabled`（自己开热点） | 2 | **0** |
| `WifiManager` 引用总数 | 236 | 2 |

### CarLife 调用的全部 WifiP2pManager API（全 dex 统计）
```
cancelConnect          1
discoverPeers          1
initialize             2
requestConnectionInfo  1
stopPeerDiscovery      1
createGroup            0   ← 从未主动建组
addLocalService        0   ← 从未广播服务
requestPeers           0
connect                0   ← 从未主动连对等设备
```

### 三个致命点

1. **车机从不 `createGroup`、从不广播服务**
   只 `discoverPeers`（副作用是让自己可被发现）然后立刻 `stopPeerDiscovery`，
   **纯被动等手机打过来**。手机凭什么知道要连？只能靠蓝牙先告诉它名字和参数。

2. **车机是 TCP 客户端，不是服务端**
   全 dex 只有一处 `java.net.Socket`，且在 `a.a.a.a.a.j.f.c`：
   ```smali
   new-instance p4, Ljava/net/Socket;
   invoke-direct {p4, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
   ```
   **没有任何 ServerSocket**。所以车机必须先知道 `host+port` —— 这两个值只有蓝牙能给。
   这也解释了为什么日志里会卡在"等待 WLAN 直连组网中"。

3. **蓝牙是单点依赖**
   `BluetoothDeviceDiscover.discoverDevice()` 首行就判 `isEnabled`，false 直接 return。
   蓝牙不可用时，后面 9 步一步都不会执行。

---

## 三、逐项对照

| 维度 | 亿连 V7.0.1 | CarLife 1.6 |
|---|---|---|
| 自举手段 | **mDNS 服务发现**（网内自举） | **蓝牙 RFCOMM**（带外自举） |
| 蓝牙是否必需 | **否**（4.4.2 上 BLE 直接 return） | **是**（SPP UUID 00001101…） |
| 车机角色 | TCP **服务端**（ServerSocket） | TCP **客户端**（new Socket） |
| 端口来源 | 动态，mDNS 告知 | 蓝牙告知（固定 7240/8240/9240…） |
| 谁建 P2P 组 | 备用代码有 createGroup（本版本未启用），靠 discoverPeers 被动可被发现 | **从不建组**，被动等手机 |
| GO 角色 | 车机 GO / 手机 GO **双向兼容** | 固定手机为 GO（192.168.49.1） |
| 服务发现 | jmdns `_EasyConn._tcp.local.` + P2P DNS-SD | **无** |
| 组播锁 | 有（22 处） | **无** |
| 失败重试 | **120 秒**周期重试 P2P 搜索 | 无周期重试，单次超时即止 |
| 状态监听 | 10 类广播，含 AP 状态/连接变化 | 仅 P2P + 蓝牙状态 |
| 自己开热点 | 支持（`setWifiApEnabled`） | 不支持（只能被动等 UDP 广播） |
| 隐藏 API | 无（只 `requestDeviceInfo`，且 SDK≥29 保护） | 用 `setDeviceName`（@hide，Android 10+ 被拒） |
| Android 4.4.2 可用 | ✅ 已验证 | ❌ 卡等待 WLAN 直连 |

---

## 四、给 CarLife 改造的启示（不改代码，仅结论）

按收益排序，前三条是照着亿连补 CarLife 的缺口：

1. **补「网内自举」能力**（最根本）
   CarLife 缺的不是配置，是**一个不依赖蓝牙的发现 + 端口协商机制**。
   亿连的答案：车机起 ServerSocket → **jmdns / NSD 广播 `_xxx._tcp` 服务（带 port TXT）** → 手机解析 → TCP 连。
   这条路与 P2P / 热点 / 同网 WiFi 全都兼容，且不需要任何隐藏 API。

2. **让车机具备「主动」而非「纯被动」**
   - 必要时 `createGroup`（车机当 GO），而不是只 `discoverPeers` 干等
   - 至少要做到：车机当 GO 时也能正常工作（亿连 `EcWifiManager.c()` 双向都处理了）

3. **加周期性重试**
   亿连 120 秒一轮 `startP2pSearch`。CarLife 现在单次超时就停在"连接超时"，没有任何自愈。

4. **加 MulticastLock**
   没有组播锁，很多设备的 WiFi 会过滤组播包，mDNS/NSD 直接失效。CarLife 现在是 0 处。

5. **清理 + 收尾**
   断开时 `removeGroup` + `clearLocalServices` + `stopPeerDiscovery`，避免残留组导致下次 BUSY。

> 顺带一条反证：`setDeviceName` 是 `@hide` 隐藏 API，Android 10+ 必被拒。
> 亿连**从不调它**——反过来用 `requestDeviceInfo` 读系统名、再 `changeCarNavigatorName` 把 system 的名字
> 认作自己的名字。这个思路比"改系统设备名"干净得多，也不会触发权限墙。

---

## 五、附：CarLife 1.6 直连相关混淆类映射（复用）

| 语义类 | 1.6 混淆名 |
|---|---|
| BluetoothDeviceDiscover | `a.a.a.a.m.m.d.d` |
| discoverRunnable（内联 discoverDevice） | `a.a.a.a.m.m.d.a` 的 `run()` |
| InstantConnectionSetup | `a.a.a.a.m.m.d.e` |
| WifiDirectManager | `a.a.a.a.m.m.d.i` |
| WifiDirectDiscoverableTask | `a.a.a.a.m.m.d.h` |
| WifiP2pOperationSequence | `a.a.a.a.n.i.b` |
| discoverPeers 算子 | `a.a.a.a.n.i.c.a` |
| stopPeerDiscovery 算子 | `a.a.a.a.n.i.c.b` |
| cancelConnect 任务 | `a.a.a.a.m.m.d.g` |
| requestConnectionInfo 回调 | `a.a.a.a.m.m.d.c` |
| TCP Communicator | `a.a.a.a.a.j.f.c` |
| 配置读取 | `a.a.a.c;->I0(String)` / `a.a.b.r.a` |
