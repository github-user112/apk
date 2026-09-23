# 测试脚本

> 所有脚本都**写死了绝对路径**（`C:/PJGG/apk/...`）与设备标识，搬家前先改。
> 日志 / 截图默认输出到 `C:/PJGG/apk/_mumutest/`。

## 设备与 adb 端口

| 设备 | 标识 | adb 端口 | 说明 |
|---|---|---|---|
| MuMu 模拟器 | `127.0.0.1:7555` | **5039** | Android 4.4.4 / API 19，已 root |
| realme RMX2121 | `RWPRTCMVSWQWMJBA` | **5037** | Android 12 / API 31 |

adb 二进制统一用 MuMu 自带的：`C:\Program Files (x86)\Nemu\vmonitor\bin\adb_server.exe`
（**独立 server**，通过 `ANDROID_ADB_SERVER_PORT` 与 SDK 自带 adb 隔离；MuMu 的 daemon 常被挤掉，故脚本都带重连）。

---

## MuMu 模拟器

| 脚本 | 用途 |
|---|---|
| `_adb.sh` | **adb 包装器**。每次调用自动 `start-server` + `connect`，规避 daemon 被挤掉。用法：`bash _adb.sh shell "ls /"` |
| `_ins110.sh` / `_ins111.sh` | **安装**。`push` APK 到 `/data/local/tmp` → `pm install -r`（覆盖安装，保留 prefs 与 uid） |
| `_t110.sh` / `_t111.sh` | **主测试流程**。`force-stop` → 写 `_Carlife9.xml`（锁直连模式=9）→ 修 prefs 属主 → 清 logcat → `am start` → 等 40s → 抓 `CarLifeP2PBoot` / `CarLife_SDK` 日志 → 截图 → 存 `_mumutest/v4_mumu_log*.txt` |
| `_mode_test.sh` | 依次切三种连接模式（直连 / 热点 / 有线）并各截一张图 |
| `_final_direct.sh` | 早期简版：启动直连、等 20s、截图 + 抓模式相关日志 |
| `_usb_allow.sh` | 点掉 USB 权限弹窗（坐标 `943,579`）后抓 USB/AOA 日志 |

> `_t111.sh` 是**最完整的一个**，包含 prefs 属主修复（`chown 10046`）——
> 这一条不做，app 会停在首启扫码页且完全不进连接流程。详见根 README 第二节。

## realme 真机

| 脚本 | 用途 |
|---|---|
| `_rl_v5.sh` / `_rl_v7.sh` | **安装 + 测试**。含自动点掉权限弹窗（ColorOS 上必须用 `input touchscreen tap`） |
| `_rl_perm2.sh` | 权限处理（`pm grant` / `appops` 被拒时的 UI 点选兜底） |
| `_rl_reset.sh` | **实验**：核查权限 → 关/开 WiFi 重置 → 重启 App 直连 → 抓日志（用于排除残留组 / 状态机卡死） |
| `_rl_reboot.sh` | **实验**：重启真机后做"干净状态"测试（P2P 状态机复位验证） |

## 宿主机侧

| 脚本 | 用途 |
|---|---|
| `_hostlisten.py` | **"假手机"TCP 服务端**。在宿主机 `0.0.0.0:8899` 起监听，回一句 `CARLIFE_FAKE_PHONE_OK`，用来验证模拟器 → 宿主机的 TCP 可达性 |

实测可达性：
* MuMu → `10.0.2.2:8899` / `10.0.3.2:8899` / 宿主机局域网 IP → ✅ 通
* 宿主机 → MuMu 需 `adb forward tcp:19999 tcp:9999` → ✅ 通（直连 guest IP 不通）

## fixtures

| 文件 | 用途 |
|---|---|
| `_Carlife.xml` / `_Carlife9.xml` | `shared_prefs` 模板。`CarlifeConnectType` = **有线 2 / 热点 5 / 直连 9**；`_Carlife9.xml` 即锁直连模式 |
| `_ins5.xml` | 另一份 prefs 样本 |

推送 prefs 的正确姿势：

```bash
adb push _Carlife9.xml /data/local/tmp/Carlife.xml
adb shell "mkdir -p /data/data/com.baidu.carlifevehicle/shared_prefs; \
  cp /data/local/tmp/Carlife.xml /data/data/com.baidu.carlifevehicle/shared_prefs/Carlife.xml; \
  chown 10046 /data/data/com.baidu.carlifevehicle/shared_prefs/Carlife.xml; \
  chmod 771 /data/data/com.baidu.carlifevehicle/shared_prefs; \
  chmod 660 /data/data/com.baidu.carlifevehicle/shared_prefs/Carlife.xml"
```

## 判读日志的关键行

```
D/CarLifeP2PBoot: armed: if no P2P group in 8s, HU will createGroup() and become GO
D/CarLifeP2PBoot: MulticastLock acquired
D/CarLifeP2PBoot: discover loop cancelled          # patchF
D/CarLifeP2PBoot: discoverPeers suppressed         # patchG
D/CarLifeP2PBoot: stopPeerDiscovery done, createGroup now
D/CarLifeP2PBoot: createGroup attempt 1/6          # 每 8 秒一次, 上限 6 次
E/CarLifeP2PBoot: createGroup failed, reason=1 -> retry in 8s
D/CarLifeP2PBoot: give up after 6 createGroup attempts
D/CarLifeP2PBoot: P2P group detected, bootstrap idle
```

`reason` 含义：**1 = P2P_UNSUPPORTED**（模拟器无硬件，预期结果）、**2 = BUSY**（P2P 状态机被占）。
