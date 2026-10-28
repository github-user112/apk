# 车机蓝牙 L0 判读与分支处置（Android 4.4.2 / tcc893x）

> 配套：`车机蓝牙诊断_btcheck.sh`（v2，只读）、`1.29_蓝牙诊断与判死.md`（历史证据）。
> 本文回答一件事：**L0 数据拿回来以后，按什么样的顺序看、会落到哪几种结构、每种怎么往下走。**

---

## 0. 先记住三条前提

1. **App 侧已经穷尽**：`enable()` 返回 true 是假成功，`state` 恒 10，`addr=02:00:00:00:00:00`，
   `name=null`，`bluetooth_on=1` 但实际关。问题在 HAL / HCI / 固件层，不在权限。
2. **「所有 App 都能用」只有一条路**：系统里的 `com.android.bluetooth` 服务 + 内核 `hci0`
   真正可用。这条通了，所有 App 自动可用（4.4 的 `BLUETOOTH` 是普通权限）。
3. **L0 的目标不是修，是分层定位**：把「框架 / HAL / 内核 / 串口 / 芯片归属」五层里
   **哪一层断的**钉死，再决定动不动手。**定位错一层，后面全是白工。**

---

## 1. L0 要采的 9 组数据（脚本已全包）

| # | 数据 | 回答什么问题 |
|---|---|---|
| 1 | `id` / `ro.secure` / `ro.debuggable` | 有没有 root shell（决定能不能做 L1/L2） |
| 2 | `pm path com.android.bluetooth`、`pm list packages -d` | 框架层在不在、是不是被禁用 |
| 3 | `dumpsys bluetooth_manager` | 框架视角的 state / address / name |
| 4 | `ls /sys/class/bluetooth`、`hciconfig -a`、`hcitool dev` | 内核有没有 HCI 设备、有没有真 MAC |
| 5 | `ls /sys/class/rfkill` + `type/state/name` | 芯片在不在、是不是被 rfkill 关着 |
| 6 | `/dev/ttyS*`、`/proc/tty/drivers`、`/proc/*/fd` | 芯片挂哪个串口、有没有被别的进程占 |
| 7 | `bt_vendor.conf`（UartPort / FirmwarePatch / BaudRate） | 厂商栈本来打算用哪个口、哪份固件 |
| 8 | `/system/bin` 里 `hciattach` / `brcm_patchram_plus` / 固件 | 用户态有没有拉栈的能力 |
| 9 | `dmesg` + `logcat`（需 root） | 芯片上电/固件下载/HAL 失败的具体报错 |

> 没有 root 只能拿到 1~8 的只读部分，**第 9 组没有，C2 和 C3 无法区分**——所以尽量用 adb root。

---

## 2. 判读顺序：五步漏斗

```
① pm path com.android.bluetooth 空 / 被禁用？ ──是──→ C1（框架层）
        │否
② /sys/class/bluetooth/hci0 存在？ ──是──→ hciconfig 有真 MAC？
        │                                   ├─ 否 → C2（芯片没就绪/固件）
        │                                   └─ 是 → C3（HAL/框架接口）
        │否
③ /sys/class/rfkill 有 type=bluetooth 的节点？ ──是──→ C4（被关/未 attach）
        │否
④ /dev/ttyS* 有 + bt_vendor.conf 指了端口？
        ├─ 有端口 + 有 hciattach/固件 → C5（最值得试，手动拉栈）
        ├─ 有端口 + 没工具/固件   → C6（ROM 精简）
        └─ 没端口/没驱动          → C7（内核无蓝牙）
                                     └─ 但车机 UI 蓝牙能用 → C8（芯片归 MCU）
```

**先走①②**：这两步最便宜、结论最硬。③④ 需要看 `bt_vendor.conf` 和 dmesg。

---

## 2.5 用 WiFi 芯片反推「蓝牙到底在哪边」（很重要）

车机的 WiFi 是好的（P2P 组、热点都通）。**只要 WiFi 是「WiFi+BT 二合一」模块，
蓝牙的射频部分就一定焊在同一颗芯片上、走 SoC 的 UART**——那么 Android 侧就"有硬件、
只是没拉栈"（C5/C6），值得修；如果 WiFi 是纯 WiFi 模块，蓝牙大概率是 MCU 另挂一颗（C8），
软件层没戏。

| WiFi 模块型号（dmesg/lsmod 里看到） | 类型 | 推论 |
|---|---|---|
| BCM43341 / BCM43340 / BCM43438 / BCM4335 / AP6210 / AP6212 / AP6234 / AP6255 / AP6330 | **WiFi+BT 二合一** | BT 在 SoC → **C5/C6 可能性大** |
| RTL8723AS/BS/AU/CS、RTL8821、MT6620、MT6630、MT7668 | **WiFi+BT 二合一** | 同上 |
| BCM43362 / BCM43143 / RTL8188 / RTL8189 / MT7601 / AR9271 | 纯 WiFi | BT 大概率在 MCU → **C8** |
| 看到 `sdio` + `cfg80211` + 上面任一型号 | — | 用来确认芯片族 |

判定用的三条命令（L0 已采）：

```bash
adb shell 'lsmod'
adb shell 'ls /sys/module | grep -i -e 8723 -e 433 -e bcm -e rtl'   # 4.4 用单关键字多跑几次
adb shell 'dmesg | grep -i -e wlan -e sdio | head -30'
```

> 注意：即使是二合一模块，厂商也可能只用它的 WiFi、把 BT 脚悬空（省成本/省认证），
> 所以这只能提高概率，**最终还是要看 `/sys/module/hci_uart` + `/dev/ttyS*` + `bt_vendor.conf`**。

---

## 3. 九种结构、指纹与处置

> 每个 case 都写了：**指纹 → 含义 → 处置 → 风险 → 成功判据 → 失败往哪走**。

### C1 框架层：`com.android.bluetooth` 缺失 / 被禁用

**指纹**
- `pm path com.android.bluetooth` 无输出
- 或 `pm list packages -d | grep -i blue` 命中它
- `dumpsys bluetooth_manager` 空 / `Bluetooth service not available`
- logcat：`Unable to bind to service`、`FATAL EXCEPTION`（进程 com.android.bluetooth）

**含义**：硬件和栈可能都是好的，只是系统蓝牙 App 被停用/被 ROM 删了。
这是**最便宜的一种可能**，先排除它。

**处置（可逆）**
```bash
adb shell 'pm list packages -d | grep -i blue'     # 确认是被禁用
adb shell 'pm enable com.android.bluetooth'
adb shell 'am force-stop com.android.bluetooth'
adb shell 'settings put global bluetooth_on 1'
adb shell 'am start -a android.bluetooth.adapter.action.REQUEST_ENABLE'
```
被删（`pm path` 空且不在禁用列表）→ 需要从**同版本 ROM** 提取 `Bluetooth.apk`
（含对应 `.odex`/`.oat`），push 到 `/system/app/` 后重启。**这一步进 L3，有 bootloop 风险**，
先做 C2~C7 的判定再回来。

**成功判据**：`dumpsys bluetooth_manager` 出现 `state: 12`；App 里 `isEnabled()==true`。
**失败**：说明不是框架层 → 继续 ②。

---

### C2 `hci0` 存在，但芯片没就绪（MAC 全 0 / DOWN / 固件失败）

**指纹**
- `ls /sys/class/bluetooth` 有 `hci0`
- `cat /sys/class/bluetooth/hci0/address` = `00:00:00:00:00:00`
- `hciconfig -a` 显示 `DOWN`，`hcitool dev` 空
- dmesg：`hci0 command tx timeout`、`Bluetooth: hci0: BCM: chip id ...`、
  `failed to load firmware`、`patchram`、`rtl_bt` 之类

**含义**：内核 HCI 层通了，但**芯片没上电 / 固件没下载 / 波特率不对**。
这是「离成功最近」的一种。

**处置（低风险，全部运行时）**
```bash
# 1) 先解 rfkill（可能只是被软关）
adb shell 'cat /sys/class/rfkill/*/type /sys/class/rfkill/*/state'
adb shell 'echo 1 > /sys/class/rfkill/rfkillX/state'

# 2) 手动把 hci0 拉起来，看它报什么错
adb shell 'hciconfig hci0 up'
adb shell 'dmesg | tail -40'

# 3) 对照厂商配置：端口/波特率/固件路径是否都存在
adb shell 'cat /system/etc/bluetooth/bt_vendor.conf'
adb shell 'ls -l /system/etc/firmware/'

# 4) 清掉栈缓存（可逆：改名而不是删）
adb shell 'mv /data/misc/bluetooth /data/misc/bluetooth.bak'
adb shell 'mkdir /data/misc/bluetooth && chown bluetooth:bluetooth /data/misc/bluetooth'

# 5) 重新开一次蓝牙，让 HAL 重新下固件
adb shell 'am force-stop com.android.bluetooth'
adb shell 'settings put global bluetooth_on 1'
adb shell 'am start -a android.bluetooth.adapter.action.REQUEST_ENABLE'
```

**成功判据**：`address` 变成真实 MAC（不是全 0）+ `hciconfig` 显示 `UP RUNNING`。
**失败**：固件不匹配（.hcd 型号/版本不对）→ 去 C5 手动试；驱动都没注册 → C6/C7。

---

### C3 `hci0` 正常，但框架不认（state 恒 10）

**指纹**
- `hci0` 有真实 MAC、`hciconfig` 是 `UP RUNNING`
- 但 `dumpsys bluetooth_manager` 仍 `state: 10`、`address: 02:00:00:00:00:00`
- logcat：`BluetoothServiceJni`、`bt_sock`、`Permission denied`、`HAL`、
  `Bluetooth vendor library` 相关报错

**含义**：内核/芯片都好了，断在 **HAL ↔ 框架** 这一段：socket 权限、
`/data/misc/bluetooth` 属主、`bluetooth` 用户组、HAL 版本不匹配、或栈进程卡死。

**处置（低风险）**
```bash
adb shell 'ls -l /dev/socket | grep -i blue'
adb shell 'ls -l /data/misc/bluetooth'
adb shell 'chown -R bluetooth:bluetooth /data/misc/bluetooth'   # 4.4 支持 -R
adb shell 'chmod 770 /data/misc/bluetooth'

# 重启栈（顺序很重要：先框架后 native）
adb shell 'am force-stop com.android.bluetooth'
adb shell 'setprop ctl.stop bluetoothd; setprop ctl.start bluetoothd'
adb shell 'stop bluetoothd; start bluetoothd'      # 有 stop/start 的 ROM 用这个
adb shell 'settings put global bluetooth_on 1'
adb shell 'am start -a android.bluetooth.adapter.action.REQUEST_ENABLE'
adb shell 'logcat -d | grep -i -e blue -e bt_ | tail -60'
```

**成功判据**：`state: 12`。
**失败**：logcat 里若是 `Bluetooth HAL` / `vendor lib` 版本错 → 换 `bluetooth.default.so`
（L3，中高风险）；若栈进程反复崩 → 抓 `logcat -b crash` 看缺什么 so。

---

### C4 无 `hci0`，但 `rfkill` 有蓝牙节点

**指纹**
- `ls /sys/class/bluetooth` 空
- `/sys/class/rfkill/rfkillN/type` = `bluetooth`（**注意：也常有 `wlan` 节点，别认错**）
- `state` = 0（关）或 1（开），`name` 可能是 `hci0`/`bt`/芯片名

**含义**：驱动已经注册了蓝牙射频（说明芯片**接在 SoC 上**），但 HCI 没 attach，
或者被 rfkill 关着。**这是好消息：芯片在 Android 侧。**

**处置**
```bash
# 全是软阻塞（state=0）→ 直接解，零风险
adb shell 'cat /sys/class/rfkill/rfkill*/type'
adb shell 'cat /sys/class/rfkill/rfkill*/state'
adb shell 'echo 1 > /sys/class/rfkill/rfkillX/state'
adb shell 'rfkill list'                 # 有命令时更直观

# 解完再看 hci0 有没有出现
adb shell 'ls /sys/class/bluetooth'
adb shell 'dmesg | grep -i -e hci -e bt | tail -30'
```
- `state=1` 且仍无 `hci0` → 说明 rfkill 只是驱动注册，**HCI attach 缺失** → 去 C5。
- `state=0` 解不开（写不进去）→ 硬阻塞/GPIO 没电 → 查 dmesg 里上电记录 → C5/C6。

**成功判据**：`hci0` 出现（再按 C2 验 MAC）。
**失败**：往 C5。

---

### C5 无 `hci0`，但有串口 + 有拉栈工具/固件（**最值得试**）

**指纹**
- `/sys/class/bluetooth` 空、rfkill 无蓝牙节点
- `/dev/ttyS*` 或 `/dev/ttyHS*` 有
- `bt_vendor.conf` 里写了 `UartPort = /dev/ttySx`（**这是金钥匙**）
- `/system/bin` 有 `hciattach` / `brcm_patchram_plus` / `rtk_hciattach`
- `/system/etc/firmware` 有 `.hcd` / `.bin`

**含义**：芯片在 SoC 的串口上，只是**没人执行 bring-up**（上电 GPIO + 下固件 + attach）。
这就是「手动 `hciattach` 一次就能救活」的典型结构。

**处置（L2，运行时，重启即复原）**
```bash
# 0) 先确认端口没被别的进程占（被占就别抢）
adb shell 'ls -l /proc/*/fd 2>/dev/null | grep ttyS'

# 1) 按 bt_vendor.conf 的端口/波特率来，不要猜
#    通用 BlueZ：
adb shell 'hciattach -s 115200 /dev/ttyS1 any 115200 flow'
#    Broadcom（最常见）：
adb shell 'brcm_patchram_plus --enable_hci --no2bytes --tosleep 200000 \
  --baudrate 3000000 --patchram /system/etc/firmware/BCMxxxx.hcd /dev/ttyS1'
#    Realtek：
adb shell 'rtk_hciattach -n -s 115200 /dev/ttyS1 rtk_h5'

# 2) 验证
adb shell 'hciconfig -a'      # 期望 hci0 + 真实 MAC
adb shell 'hcitool dev'
adb shell 'dmesg | tail -30'

# 3) 有了 hci0 再开蓝牙（回到 C2/C3 的验证）
adb shell 'settings put global bluetooth_on 1'
adb shell 'am start -a android.bluetooth.adapter.action.REQUEST_ENABLE'
```

**成功的完整判据**：`hci0` + 真 MAC + `state: 12` + 三方 App 能看到设备。
**失败分支**
- `hciattach` 超时/乱码 → 波特率或流控不对（`flow`/`noflow` 两种都试），或固件没下
- `open /dev/ttySx: Permission denied` → `chown bluetooth:bluetooth` 或 `chmod 666`（运行时）
- `hci0` 出现又消失 → 固件型号不对 → 换 `.hcd`（同芯片方案去扒）
- 端口试了三四个都不行 + dmesg 无 `hci_uart` → 驱动没编 → C6/C7

**风险**：选错串口可能打断 MCU 通信（方向盘/音源短暂异常）。**停车、P 挡、一次只试一个口**，断电重启复原。

---

### C6 有串口/驱动，但缺工具或缺固件

**指纹**
- `/sys/module/hci_uart` 存在（或 dmesg 有 `hci_uart`）
- 但 `/system/bin` 没有 `hciattach`/vendor 工具，`/system/etc/firmware` 没有对应固件
- `bt_vendor.conf` 缺失或指向不存在的文件

**含义**：ROM 被精简过，或者厂商把 bring-up 放在 MCU 侧。**能做，但进入「移植」范畴。**

**处置**：从同芯片方案（同 BCM/rtk 型号的平板上）提取 `hciattach` + 固件；
或用静态编译的 BlueZ `hciattach`（注意 4.4 的 `bionic` 与 ABI）。
**风险中**：工具版本不对会直接跑不起来；固件型号不对会把芯片留在奇怪状态（重启恢复）。
**先决条件**：`/sys/module/hci_uart` 必须存在，否则直接 C7。

---

### C7 内核没有蓝牙子系统

**指纹**
- 无 `/sys/class/bluetooth`
- 无 `/sys/module/bluetooth`、无 `/sys/module/hci_uart`
- `dmesg` 里 0 条 hci/bt 记录
- `/dev/ttyS*` 可能有（那是给 MCU/别的外设的）

**含义**：**Android 这颗 SoC 上没有蓝牙通路**（内核没编、或芯片根本不在这边）。

**处置**：软件层到此为止，不要再动 `/system`。分两种：
- 车机 UI 的蓝牙**能用**（电话/音乐正常）→ 芯片挂 MCU → **C8**
- 车机 UI 的蓝牙也不能用 → 硬件/天线/模块问题 → 找厂商，或换 Android 盒子

---

### C8 芯片被 MCU / 厂商服务占用

**指纹**
- `/proc/*/fd` 里有进程占着 `/dev/ttySx`（不是蓝牙栈）
- `ps` 里有厂商 BT/MCU 守护进程
- 或：C7 的特征 + 车机 UI 蓝牙完全正常

**含义**：同一颗芯片归 MCU 管，Android 只是"乘客"。想给 App 用，等于要从 MCU 手里抢。

**处置**：**不建议在 L1/L2 阶段碰**。真要做只有三条路：
1. 找厂商要「BT 归 Android」的固件/工厂模式开关（最优先，风险最低）；
2. 停掉厂商服务再 attach（**高风险**：电话/蓝牙音乐可能直接没了，且可能被看门狗拉回）；
3. MCU 串口桥（自己写 App 跟 MCU 协议对话）——只能服务你自己的 App，不满足"所有 App"。

---

## 3.5 本车机实测：C8b（厂商私有栈）

**指纹**（2026-10-17 BootTask 诊断快照实锤）
- `ps` 里有 `com.desay_svautomotive.svbt` + `svbtmanager`（德赛西威私有 BT 栈），
  还有 `com.broadcom.bt.map` / `com.broadcom.bt.pbap`（Broadcom 协议客户端）
- **`pm list packages` 里没有 `com.android.bluetooth`**（AOSP 蓝牙 App 被移除）
- 内核有 `krfcommd` 线程、`ro.btaddr` / `ro.boot.btaddr` 配了地址 → 芯片确实在 SoC 上
- WiFi 是 Broadcom `dhd` 驱动（`dhd_watchdog_th` / `dhd_dpc` / `dhd_rxf`）→ 二合一模块
- 车机 UI 电话/多媒体正常，但第三方 App 拿到的是 `state=10`、地址 `02:00:...`

**含义**：不是没硬件，是**AOSP 蓝牙栈被厂商栈整个替换掉了**。
`enable()` 返回 true 只是厂商桩服务的"假成功"。这一类比 C8（MCU）好一点——硬件、固件、
UART 都是好的，只是"归属"问题。

**处置**
1. **先取证**（零风险）：`bt_vendor.conf`、`/system/lib/hw/bluetooth.default.so`、
   `/system/bin/hciattach`、`/dev/ttyS*`、`/proc/<svbt pid>/fd` 有没有占串口；
   `pm dump com.desay_svautomotive.svbt` 看它是不是 `android.bluetooth.IBluetooth` 的提供者。
2. **零风险先找厂商开关**：`com.desay_svautomotive.svengineering`（工程模式）里翻
   BT 归属 / 双蓝牙 / 第三方蓝牙相关项；或拿 `ro.build.display.id`
   （`FE-4KA_N2297_03_41.35_180308_R`）去问德赛西威/吉利要"BT 归 Android"的固件。
3. **换栈**（唯一能让所有 App 用的软件手段，但代价大）：停 SVBT → 装 AOSP
   `Bluetooth.apk`（本机 `test-keys`，可用 AOSP 测试平台密钥签名）→ 配 `bt_vendor.conf`
   → 起 AOSP 栈。**代价：电话/多媒体蓝牙会失效**，且 AOSP HFP 不一定能接上原车音频通路。
4. **评估**：技术上 20~35% 能起来，但"不影响电话"的前提下约等于 0。

### 修正后的先验概率

| 结构 | 先验 | 依据 |
|---|---|---|
| **C8b 厂商私有栈占用** | **80%** | SVBT/SVBTManager 在跑、AOSP 蓝牙包缺失、`ro.boot.btaddr` 已配、内核有 `krfcommd` |
| **C8 芯片归 MCU** | 10% | 看 SVBT 是否占着 ttyS 即可区分 |
| **C5/C6 二合一芯片没拉栈** | 5% | 与"SVBT 能用"矛盾，基本排除 |
| **C7 内核没编蓝牙** | 3% | `krfcommd` 说明内核 BT 至少部分在 |
| C1~C4 | 2% | 会留下 hci0/rfkill 痕迹 |

### 恢复可能性（给所有 App 用）

| 判定结果 | 恢复概率 | 说明 |
|---|---|---|
| C5（二合一芯片 + ttyS + 工具/固件） | 50~60% | 手动 attach 成功即可 |
| C6（有驱动缺工具/固件） | 20~30% | 要移植 hciattach/固件 |
| **C8b（换 AOSP 栈）** | **技术 20~35%；不影响电话 ≈ 0%** | 要停 SVBT 才能腾出芯片，电话/多媒体当场失效 |
| C7（内核没编蓝牙） | 5~10% | 需要内核模块/固件 |
| C8（芯片归 MCU） | 0~10% | 只有厂商固件/工厂模式开关 |
| C4（只是 rfkill） | 80%+ | 一条命令的事 |

**整体期望值：在"不牺牲电话/多媒体"前提下 ≈ 0~10%。**
这台车机是"硬件全好、软件归属被厂商锁死"——比没硬件好，但比没拉栈难得多。

---

## 4. 通用动作库（L1，按风险从低到高）

| 动作 | 命令 | 风险 | 生效范围 |
|---|---|---|---|
| 解 rfkill | `echo 1 > /sys/class/rfkill/rfkillX/state` | 极低 | 重启复原 |
| 启用被禁的包 | `pm enable com.android.bluetooth` | 极低 | 持久（`pm disable` 可逆） |
| 开蓝牙 | `settings put global bluetooth_on 1` + `REQUEST_ENABLE` | 极低 | 持久（settings） |
| 重启蓝牙栈 | `am force-stop` + `setprop ctl.stop/start` | 低 | 运行时 |
| 修属主/权限 | `chown bluetooth:bluetooth /data/misc/bluetooth` | 低 | 持久 |
| 清栈缓存 | `mv /data/misc/bluetooth ...bak` | 低 | 持久（可改回） |
| 手动 attach | `hciattach` / `brcm_patchram_plus` | 中低 | 运行时 |
| 换 HAL/加权限 xml | push 到 `/system` | 中高 | 持久（需备份） |
| 改 init.rc / 刷机 | — | 高 | **不建议** |

---

## 5. 成功率与成本预估（按经验）

| Case | 修复概率 | 耗时 | 风险 | 备注 |
|---|---|---|---|---|
| C1 | ★★★★☆ | 5 min | 极低 | 先排除 |
| C4 | ★★★☆☆ | 10 min | 极低 | 解 rfkill 就完事的情况不少 |
| C2 | ★★★☆☆ | 30 min | 低 | 固件/波特率是主要变量 |
| C3 | ★★☆☆☆ | 20 min | 低 | 权限/socket/栈缓存 |
| C5 | ★★☆☆☆ | 1 h | 中低 | 最像本车机的结构，值得试 |
| C6 | ★☆☆☆☆ | 数小时 | 中 | 要移植工具/固件 |
| C7 | ☆☆☆☆☆ | — | — | 软件无解 |
| C8 | ☆☆☆☆☆ | — | 高 | 只有厂商固件能解 |

---

## 6. 判读陷阱（最容易误判的五件事）

1. **`pm list features | grep bluetooth` 有值 ≠ 蓝牙可用** —— 4.4 上这是框架静态声明。
2. **车机 UI「蓝牙已连」≠ Android 适配器** —— 那是 MCU 蓝牙，两套东西。
3. **`settings get global bluetooth_on` = 1 ≠ 蓝牙开着** —— 它只是"希望开着"的标记。
4. **`/sys/class/rfkill` 里的节点不一定是蓝牙** —— 必须看 `type`（`bluetooth` vs `wlan`）。
5. **无 root 时 `dmesg`/`logcat` 空白 ≠ 没有记录** —— 是没权限，别据此下结论。

---

## 7. 数据回来后怎么给我

把 `bt_before.txt` + `bt_enable.txt` + `bt_dumpsys.txt` 三个文件发回即可。我按 §2 的漏斗走一遍，
会直接告诉你：

- 落在哪个 C
- 下一步先跑哪三条命令
- 预期看到什么、看不到代表什么
- 要不要买线/要不要动 `/system`

如果暂时没有 adb，只读 APK 也能先判 **C1 / C4 / C5 / C6 / C7**（差 dmesg/logcat，C2 与 C3 分不开）。

---

## 8. 工程模式入口 & 网上现成破解（2026-10-28 检索）

### 8.1 入口分两种，照片里那个不是

| 入口 | 怎么进 | 能干什么 | 是否解决蓝牙 |
|---|---|---|---|
| **服务/版本菜单**（用户截图那种） | 设置 → 关于本机，或长按吉利图标 | 版本信息/按键测试/GPS/T-Box/屏幕测试/擦除 QuickBoot | ❌ 纯诊断，无蓝牙归属开关 |
| **拨号盘工程码** `#*32279` | 打开车机「电话」→ 拨号键盘 → 输入 `#*32279` | 弹菜单，其中一项 **ADB 模式**，密码 **95272046** | ⭕ 只是开 adb，不解蓝牙 |
| **拨号盘 U 盘安装** `#*95279527` | 拨号键盘输入 `#*95279527`（部分车型短码 `#*95279`） | 直接进「U 盘安装 APK」调试页 | ❌ 只装 App |
| **GKUI19 工程模式** `jh3280` | 设置 → 系统 → 关于本机 → 长按右侧吉利图标 5~10s → 输 `jh3280` | GKUI19 车型专用 | 不适用（本机是 4.4.2 老系统，不是 GKUI） |
| **切换系统** | 密码 `95272046` + 当前时间最后两位 | 双系统机型切 A/B 分区 | 不适用 |

> **本机 `ro.build.display.id = FE-4KA_N2297_03_41.35_180308_R`、Android 4.4.2、德赛西威**，
> 属于**老一代帝豪车机**（非 GKUI19），所以 `jh3280` 那套用不上，走 `#*32279`。
> 另外本机 `ro.secure=0`，插上 USB 数据线时 adbd 默认大概率已经是 root——**可能根本不用工程码**。

### 8.2 社区里现有的破解，全是「装 App」，没有一条动蓝牙

检索到的公开方法（汽车之家 / B 站 / CSDN / 太平洋）：

| 方法 | 原理 | 与蓝牙有关吗 |
|---|---|---|
| U 盘 `appsinstall` 文件夹 + `#*95279527` | 厂商留的安装后门 | 无关 |
| `#*32279` → ADB 模式 → `95272046` | 厂商留的调试后门 | 无关 |
| DNS 重定向（改路由/热点 DNS 到指定服务器） | 骗过应用商店白名单 | 无关 |
| KingRoot / 一键 root | 拿 root 权限 | 无关 |
| 双公头 USB 线 A-A（B 站 BV1U6ieYgE2c，18 款帝豪手动豪华版） | 电脑直连车机 adb | 无关 |
| 商业「HX 车机工具」/ 双系统升级包（B 站多个 UP） | 刷第二个系统分区，原系统保留 | 无关（且多数是 GKUI 新车型） |

**结论：截至 2026-10，没有任何公开案例把这台车机的厂商蓝牙栈换掉、或让第三方 App 用上蓝牙。**
原因也很清楚——社区破解的目标是"装高德/QQ 音乐"，这些用不到 Android 蓝牙 API；
而真要动蓝牙，得停 SVBT，代价是原车电话/多媒体立刻失效，没人愿意做，也没人需要。

### 8.3 所以只剩两条路

1. **取证确认能不能换栈**（本文 §3 C8b + §5 的 6 条命令）——技术上 20~35%，
   代价是电话/多媒体蓝牙；
2. **零风险绕开**：蓝牙放手机侧（手机连设备/连车机），数据走 WiFi 回传车机 App。
   这条路 100% 可行，且不动车机任何东西。

> 提醒：`#*32279` 里的「初始化」「擦除 QuickBoot」这类项**不要点**，
> 部分车型会清掉导航数据/用户设置，与蓝牙无关但会添麻烦。

---

## 9. 没有 adb 怎么办（三条取数路径）

adb 在这台车机上需要「工程模式开 ADB + 能进 device 模式的 USB 口 + 电脑驱动」三件事同时成立，
任何一环断了就连不上。下面按「不依赖 adb」重排取证路径。

### 9.1 路径 A：BootTask v1.6.47 的蓝牙侦查段（推荐，零风险）

**已实现在 `BootTask/src/com/boottask/BootDiagnostics.java` 的 `btRecon()`**，
点名「诊断快照」时自动追加 `--- bt recon (v1.6.47) ---` 段，全部免 root。

能回答的问题（普通 App 权限就够）：

| 采什么 | 怎么采 | 回答什么 |
|---|---|---|
| `com.android.bluetooth` 在不在 | `PackageManager.getPackageInfo` | AOSP 栈是否被移除（C1） |
| SVBT / SVBTManager / svengineering | 同上 | 厂商栈是否装了 |
| `bluetooth.default.so`、`hciattach`、`bt_vendor.conf` | `File.exists()` | 换栈有没有原料（C5/C6） |
| `bt_vendor.conf` 全文 | 直接读（644 世界可读） | **厂商本来用哪个串口/哪份固件** |
| `/sys/class/bluetooth`、`hci0/address` | 读 sysfs | 内核有没有 HCI（C2/C3） |
| `/sys/class/rfkill/*/{type,state,name}` | 读 sysfs | 芯片在不在 SoC、是否被关（C4） |
| `/sys/module/hci_uart` | `File.exists()` | 内核支不支持 HCI over UART（C7 的分水岭） |
| `/dev/ttyS0..4`、`/dev/ttyTCC0..3` | `File.exists()` | 有没有可用的串口节点 |
| `/system/etc/firmware` 里的 `.hcd` | `ls` | 固件在不在 |
| `BluetoothAdapter` 的 state/address/name | 直接调 API | 与第三方 App 看到的一致 |
| `ps` 里的 svbt | `ps` | 厂商栈是否在跑 |

拿不到（已在该段里如实标注）：`dmesg`、系统 logcat、`/proc/<pid>/fd`、`/data/misc/bluetooth` 内容。

**安装方式**（不需要 adb）：
1. U 盘格式化为 FAT32，根目录建 `appsinstall` 文件夹；
2. 把 `BootTask/dist/BootTask_v1.6.47.apk` 拷进去；
3. 车机拨号盘输入 `#*95279527` → 「U 盘安装 APK」；
4. 覆盖安装（签名相同，数据保留）→ 打开 BootTask → 点「诊断快照」；
5. 手机连车机 WiFi（或同一网络），浏览器打开 BootTask 日志页的 `http://<车机IP>:18081`，
   下载 `diagnostic.txt`。

### 9.2 路径 B：服务菜单的「数据保存 / 诊断信息」

你截图那个菜单里有 **数据保存** 和 **诊断信息** 两项，部分德赛西威车机会把
系统日志/诊断包写到 U 盘。值得点一次看有没有新文件（**「初始化」和「擦除 QuickBoot」绝对不要点**）。

### 9.3 路径 C：彻底不取证，走手机侧

如果最终判定是 C7/C8（Android 侧没通路），或者不想冒险，就把蓝牙放手机：
手机连蓝牙设备、手机连车机蓝牙，数据经 WiFi 回传车机 App。车机零改动，100% 可行。

### 9.4 adb 连不上时的排查顺序

1. **口不对**：车机常有「USB 数据口」和「仅充电口」，换口试；
2. **线不对**：普通 A-B 线在车机端是 host 模式时无效，需要 **A-A 双公头线**（18 款帝豪有成功案例，B 站 BV1U6ieYgE2c）；
3. **没开调试**：`#*32279` → ADB 模式 → `95272046`；
4. **电脑没驱动**：Windows 设备管理器看有没有 `tcc893x` / `Android ADB Interface` 新设备；
5. **无线 adb 可能本来就开着**：`adb connect <车机IP>:5555` 直接试（部分德赛车机默认开 5555）。

---

## 10. 参考项目：吉利 R621 换栈实战（SP5FWX/geely-r621-carplay）

> 仓库：<https://github.com/SP5FWX/geely-r621-carplay>（Apache-2.0，8 commits，2026）
> 环境：**吉利第四代帝豪 · ECARX R621 · MT6735 · Android 5.1（API 22）· GKUI19**
> 状态：**真车端到端验证通过**（蓝牙 `state: 12` → iPhone 配对 → 无线 CarPlay 投屏）

### 10.1 它和我们这台车机是同一类问题（独立印证 C8b）

| 维度 | R621（该项目） | 18 帝豪（本机） |
|---|---|---|
| 原车栈 | Barrot / IVT：`brlinkd` + `libbt_platform.so` + `libbrlink.so` | 德赛西威：`com.desay_svautomotive.svbt` + `svbtmanager` |
| 是否导出 `BluetoothAdapter` | ❌ 不导出，只服务 `com.ivt.bt` 等原车包 | ❌ 不导出，`com.android.bluetooth` 直接缺失 |
| 第三方 App 表现 | 读不到蓝牙名、配对即崩 | `state=10`、`address=02:00:…`、`name=null` |
| 芯片通路 | `/dev/stpbt`（brlinkd 改名成 `/dev/ivt_stpbt`） | 待取证（`bt_vendor.conf` / `/dev/ttyS*` / `/proc/*/fd`） |
| 结论 | **换 AOSP 栈** | **同类，换栈是唯一能让所有 App 用的路** |

这条独立证据很重要：**「厂商私有栈不注册 Android 蓝牙服务」不是我们瞎猜，是同类车机的通病**，
而且已经有人做成功过一次。

### 10.2 它的方案骨架（四件套）

```
DiPlay(第三方) → BluetoothAdapter
   └ com.android.bluetooth   AOSP APK，platform 签名 + persistent=true → UID 1002
        └ libbluetooth_jni.so
             └ bluetooth.default.so   AOSP + 2 字节补丁（强制 bte_main_enable）
                  └ libbt-vendor.so   自己写的 BLUETOOTH_VENDOR_LIB_INTERFACE
                       └ /dev/stpbt    MT6620 单串口 H4
   （原车 brlinkd 被替换成占位脚本，保留 /dev 节点权限 + 守护 adbd）
```

部署顺序（`tools/deploy_hal.py`）：
**备份 → remount /system → 停 brlinkd → 装 HAL/vendor/JNI → 装 platform 签名的 Bluetooth.apk
→ 禁用原车蓝牙包 → 清 Bluedroid 状态 → 重启**。`install.sh` 默认 dry-run，`rollback.sh` 按
manifest 逐文件复原。

### 10.3 六个可以直接抄的坑（每个都有判定依据）

| # | 坑 | 现象 | 我们的对应做法 |
|---|---|---|---|
| 1 | HAL 导出的是**全局对象**不是函数 | `unable to find symbol BLUETOOTH_VENDOR_LIB_INTERFACE` | 用 4.4 的 `bluetooth.h` 编译，导出 `const bt_vendor_interface_t BLUETOOTH_VENDOR_LIB_INTERFACE` |
| 2 | linker 要 **SysV hash + GNU hash** | `dlopen` 静默失败、"加载了但找不到符号" | 编译加 `-Wl,--hash-style=both`（4.4 也要，验证 `readelf -d` 有 `HASH`） |
| 3 | `BT_VND_OP_FW_CFG` 必须回调 `fwcfg_cb` | `preload_wait_timeout`，5 秒后自动关 | 不需要下固件时**同步回调 SUCCESS** |
| 4 | `USERIAL_OPEN` 的 4 条通道要指向**同一个 fd** | ACL 数据写进 stdin / EBADF | 单串口 H4 一律 `fds[0..3] = fd` |
| 5 | **HAL 2 字节补丁**：`btif_core_state` 初值非 0 → `cbz` 跳过 `bte_main_enable` | `enableNative()` 返回 true 但 BTU 任务从不创建，5 秒后 `START_TIMEOUT` 回到 OFF | 4.4 的 `bluetooth.default.so` 若同样"enable 了但没起 BTU"，按同样思路找 `btif_enable_bluetooth` 的 `cbz` 改 `b` |
| 6 | **必须 UID 1002 + platform 签名 + `persistent=true`** | `SecurityException: not allowed to send broadcast BOND_STATE_CHANGED from uid=10041`，配对瞬间崩 | `sharedUserId="android.uid.bluetooth"` + platform 签名 + `persistent`，装完查 `dumpsys package … | grep userId` = 1002 |

第 5 条尤其值得记：**"enable() 返回 true 但什么都没发生"是有前科的**，
R621 上就是 HAL 里的一个条件分支把 `bte_main_enable()` 跳过去了。
我们这台连 `TURNING_ON` 都进不去（更早一层：`com.android.bluetooth` 根本不存在），
但换栈之后很可能撞上同一个坑。

### 10.4 搬到我们这台车上要改什么（4.4.2 / Broadcom / 德赛西威）

| 项 | R621 | 本机 | 说明 |
|---|---|---|---|
| Android | 5.1（API 22） | **4.4.2（KVT49L）** | `Bluetooth.apk`、`bluetooth.default.so` 必须取 **4.4.2 同期**的，不能混用 5.1 |
| HAL ABI | 5.1 `bt_vendor_callbacks_t`（含 `audio_state_cb`/`epilog_cb`） | 4.4 字段集不同 | **必须用 4.4 的 `hardware/libhardware/include/hardware/bluetooth.h` 编译**，源码不能照搬 |
| vendor 库 | 自己写 `bt_vendor_mtk.c`（MTK 私有 IPC + `0xFC1A` 写地址） | **AOSP 4.4 自带 `hardware/broadcom/libbt`** | Broadcom 走标准 H4 + `bt_vendor.conf`（UartPort / BaudRate / FwPatch），**不用从零写** |
| 串口节点 | `/dev/stpbt`（MTK STP） | 待取证（`/dev/ttyS*` / `ttyTCC*`） | 由 `bt_vendor.conf` 的 `UartPort` 决定，**别猜** |
| 固件 | 已在 `/etc/firmware`，由原栈写入 | 待取证（`/system/etc/firmware/*.hcd`） | BCM 需要 `.hcd` patchram；没有就得从同芯片方案扒 |
| 原车守护 | `brlinkd`（native 进程，替换成占位脚本） | `com.desay_svautomotive.svbt`（Java 进程） | **Java 进程背后可能还有 native 服务占串口**，必须查 `/proc/<pid>/fd` |
| 签名 | platform 签名（ROM 自带） | `ro.build.tags=test-keys` | 先验 platform 证书指纹是否 == AOSP 公开 testkey（见 10.5） |

### 10.5 四个 go / no-go 闸门（不满足就别动手）

1. **平台签名**：`android` 包签名证书 SHA-256 是否等于 AOSP testkey
   `c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8`？
   - 等于 → 可以用公开 testkey 签 AOSP `Bluetooth.apk`，**这条路通**；
   - 不等于 → 必须先拿到本机 `platform.pk8`，否则装上也起不来（UID 1002 + 受保护广播都会失败）。
   > **BootTask v1.6.48 已自动采这一项**（`平台签名指纹` 段，含判定结论）。
2. **内核通路**：`/sys/module/hci_uart` 或 `/sys/class/bluetooth` 存在？
   双无 → 直接 C7/C8，换栈也没用（HAL 打不到芯片）。
3. **串口归属**：`bt_vendor.conf` 有 `UartPort`，且该节点**没被别的进程独占**（`/proc/*/fd`）。
   被 SVBT 的 native 侧占着 → 必须先停它，并确认没有看门狗把它拉回来。
4. **芯片/固件**：确认是 Broadcom 且型号在 AOSP `libbt` 支持列表内（4330/4335/43341/43438…），
   `/system/etc/firmware` 有对应 `.hcd`。

### 10.6 如果四个闸门都过，改造步骤（照 R621 的顺序，换成 4.4 的件）

```bash
# 0) 备份（这一步不做完不许往下走）
adb shell 'mkdir -p /data/local/aosp_bak'
adb shell 'cp -a /system/app2/SVBT.apk /system/app2/SVBTManager.apk /data/local/aosp_bak/'
adb shell 'cp -a /system/lib/hw/bluetooth.default.so /data/local/aosp_bak/ 2>/dev/null'
adb shell 'cp -a /system/lib/libbt-vendor.so /data/local/aosp_bak/ 2>/dev/null'
adb shell 'ls -l /system/etc/bluetooth > /data/local/aosp_bak/bluetooth_etc.txt'

# 1) 停原车栈（先 stop 不 disable，确认电话还能不能接受）
adb shell 'am force-stop com.desay_svautomotive.svbt'
adb shell 'pm disable com.desay_svautomotive.svbt'
adb shell 'ls -l /proc/*/fd 2>/dev/null | grep -E "ttyS|ttyTCC"'   # 确认串口已释放

# 2) remount /system 可写
adb shell 'mount -o rw,remount /system'

# 3) 装 4.4.2 的 HAL + vendor 库 + AOSP Bluetooth.apk（platform 签名 + persistent）
adb push bluetooth.default.so /system/lib/hw/
adb push libbt-vendor.so      /system/lib/
adb push bt_vendor.conf       /system/etc/bluetooth/
adb push Bluetooth.apk        /system/app/Bluetooth/Bluetooth.apk
adb shell 'chmod 644 /system/lib/hw/bluetooth.default.so /system/lib/libbt-vendor.so'
adb shell 'chmod 644 /system/app/Bluetooth/Bluetooth.apk'

# 4) 清 Bluedroid 状态（可逆：改名不删）
adb shell 'mv /data/misc/bluetooth /data/misc/bluetooth.bak; mkdir /data/misc/bluetooth'
adb shell 'chown bluetooth:bluetooth /data/misc/bluetooth; chmod 770 /data/misc/bluetooth'

# 5) 重启
adb shell 'sync; reboot'
```

验收：`dumpsys bluetooth_manager | grep state` → `12`；
`dumpsys package com.android.bluetooth | grep -E "userId|flags"` → `userId=1002` + `PERSISTENT`；
第三方 App 的 `BluetoothAdapter.getAddress()` 不再是 `02:00:00:00:00:00`。

### 10.7 代价（该项目自己写明的）

> “修改蓝牙栈后，**原车蓝牙电话/音乐功能会失效**（原车 App 依赖 IVT 栈）；回滚即可恢复。”

这和我们的判断完全一致：**换栈能成功，但代价是原车电话/多媒体蓝牙**。
R621 的车主能接受，是因为他要的是 CarPlay；如果你不能接受，就别走这条路。

### 10.8 结论

- **参考价值：高**。同类问题、真车验证、坑都踩过了，`install.sh` 的"默认 dry-run + manifest 回滚"值得照抄。
- **但不是直接可用**：4.4.2 vs 5.1、Broadcom vs MTK、Java 栈 vs native 守护，三处都得重做。
- **成功率修正**：如果四个闸门全过（尤其 platform 签名 == testkey），换栈成功率可以从 20~35% 上调到 **40~50%**；
  任一闸门不过，仍然是 0。
- **仍然要先取证**：`bt_vendor.conf` + `hci_uart` + 串口归属 + 平台签名指纹，四项缺一不可。
