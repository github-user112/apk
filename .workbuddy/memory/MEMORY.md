# 项目长期记忆：CarLife 车机端「安卓 4.4.2 直连」+ 周边工具

## 目标与定案
`com.baidu.carlifevehicle`（1.6 修改版）在 Android 4.4.2 车机跑通直连/热点/USB。A 方案：1.6 打补丁不移植 5+，minSdk 16。产线细节见 skill `android-apk-mod-deploy`，全量交接 `C:/PJGG/apk/AGENTS.md`（与 CLAUDE.md 同步，血泪 18 条在里）。
车机 = telechips tcc893x / Android 4.4.2 / KVT49L（eng）。P2P 组网好的（GO 192.168.49.1，DIRECT-cH-CarLife-HU），别动自举器；唯一堵点=车机 Android 蓝牙起不来。热点模式（手机开 AP→车机连）9-24 实测 100% 通。无 root（su 不存在），但 eng 版可试 `adb root`。车机 UI「蓝牙已连」=MCU 蓝牙 ≠ AndroidAdapter。低速断连结论：亿连每 2s ping，RTT>200ms 连 3 次弹「速率低」（测时延非带宽，弹窗不断链），详见 `Yilian/04_文档/亿连V7.0.1_直连低速断连_分析报告.md`。

## CarLife 版本史（细节在 04_文档/，别凭记忆改）
1.45 当前交付版（首页角标 QrBadge+BtGuard 6s 快判死+修 1.25 hasUsableLocalIp 极性+超时 120s）｜1.44 扫码入组（车机实机全流程跑通）｜1.43 修兜底拆组（keepP2pGroup 闸门）｜1.40 无蓝牙直连兜底 NoBtFallback｜更早：1.30 NetWatch+SessionLog、1.29 BtGuard 重写、1.26 修 VerifyError（1.25/1.41 作废勿回退）。关键类映射见 AGENTS.md。

## BootTask（com.boottask）现状：v1.6.29（vc36）
功能分区：P2pGuard 直连保护、WifiRateProbe 复刻亿连判定、HotspotProbe 热点蹲守、AudioMonitor 启动/声音监控+静音强杀、LowRateFix 一键修复、P2pAutoAccept 直连免打扰。
★ v1.6.29 审查定论（2026-10-12，MuMu 4.4.4 framework.jar 实锤）：**P2pAutoAccept 整体无效**——广播 `android.net.wifi.p2p.connection.WIFI_P2P_CONNECTION_REQUESTED` 在 4.4 framework 不存在（4.4 只有 6 个标准 p2p action）；隐藏方法 `requestGroupInfo(WifiP2pDevice)` 不存在（只有 Channel+Listener 签名）；EXTRA 真实 key 是 "wifiP2pDevice"。接收器永不触发，seen 恒 0。修复需先实车抓弹窗时的 logcat 确认弹窗来源（framework prov-disc / ROM 定制 Settings），别信 AI 博客编造的 API。
v1.6.25 教训：**新功能日志必须落 files/log/**（LogHttpServer.refreshFiles() 枚举的唯一内部目录），否则抓不回来。
构建：`bash BootTask/build_win.sh`，产物名从 versionName 推导。stub android.jar 无 org.json；Java 访问 smali 类走反射；dex 查类用 `Lpkg/Class;` 分号结尾。adb 实测：realme streamed install 会挂起→用 push+`pm install -r`；ColorOS 弹安装确认会卡死后续 pm（杀 com.android.packageinstaller 或 reboot）；桌面图标缓存要卸载重装才刷新。

## FileMgr（com.carfiles 车机文件管家）v1.0.0
文件功能从 BootTask 拆出：18082 扫码上传安装、卸载双入口（AppListActivity+fm.html 应用页）、文件管理含 U 盘。专属图标（gen_icon.py 纯 Python 渲染三尺寸）。已知问题：正常路径零日志（FLog 只在失败分支调用，UploadServer.start 绑定失败不上 UI）。**装车顺序：先装 CarFiles 再升 BootTask 1.6.28+**（后者没有 18082 传包通道）。

## 环境（2026-10-12 实测有效）
- 仓库 `C:/PJGG/apk`（git 已恢复正常，origin/main 正常推拉）。JAVA_HOME=`D:/PJGG/apk/tools/jdk-17.0.20.1+1`；apktool/signer 在 `D:/PJGG/apk/tools/`；android.jar+r8 在 `logxfer_src/tools/`。
- **adb=`C:/PJGG/platform-tools/adb.exe`**（D:/PJGG/platform-tools-latest 已失效）。realme X7 Pro(Android 12, RWPRTCMVSWQWMJBA)：须唤醒+dismiss-keyguard，单次调用链完成多步操作（daemon 会被重启）；MuMu 4.4.4 端口 7555（无 P2P/蓝牙，su 弹窗使请求挂 12~15s，curl 加 --max-time；TCP 连接跨命令被回收须重新 connect）。
- ★ MSYS 一切 adb shell/push 的 /data 路径必须 `MSYS_NO_PATHCONV=1`。构建/工程路径纯 ASCII。
- 低速断连待办：车机装最新 BootTask 实测（一键修复→投屏 15min→抓 wifi_rate_probe.txt）；v1.6.29 的 P2pAutoAccept 待实车确认弹窗来源后重做；FileMgr 零日志问题待修。
