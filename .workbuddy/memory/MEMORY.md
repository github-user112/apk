# 项目长期记忆：CarLife 车机端「安卓 4.4.2 直连」+ 周边工具

## 目标与定案
`com.baidu.carlifevehicle`（1.6 修改版）在 Android 4.4.2 车机跑通直连/热点/USB。A 方案：1.6 打补丁不移植 5+，minSdk 16。产线细节见 skill `android-apk-mod-deploy`，全量交接 `C:/PJGG/apk/AGENTS.md`（与 CLAUDE.md 同步，血泪 18 条在里）。
车机 = telechips tcc893x / Android 4.4.2 / KVT49L（eng）。P2P 组网好的（GO 192.168.49.1，DIRECT-cH-CarLife-HU），别动自举器；唯一堵点=车机 Android 蓝牙起不来。热点模式（手机开 AP→车机连）9-24 实测 100% 通。无 root（su 不存在），但 eng 版可试 `adb root`。车机 UI「蓝牙已连」=MCU 蓝牙 ≠ AndroidAdapter。低速断连结论：亿连每 2s ping，RTT>200ms 连 3 次弹「速率低」（测时延非带宽，弹窗不断链），详见 `Yilian/04_文档/亿连V7.0.1_直连低速断连_分析报告.md`。

## CarLife 版本史（细节在 04_文档/，别凭记忆改）
1.45 当前交付版（首页角标 QrBadge+BtGuard 6s 快判死+修 1.25 hasUsableLocalIp 极性+超时 120s）｜1.44 扫码入组（车机实机全流程跑通）｜1.43 修兜底拆组（keepP2pGroup 闸门）｜1.40 无蓝牙直连兜底 NoBtFallback｜更早：1.30 NetWatch+SessionLog、1.29 BtGuard 重写、1.26 修 VerifyError（1.25/1.41 作废勿回退）。关键类映射见 AGENTS.md。

## 外部包「CarLife4.0车机端个人修改版2.0」（2026-10-20 实测，别与本仓库 mod1.x 混）
`C:/PJGG/apk/CarLife4.0车机端个人修改版2.0.apk` = vc16 / 4.0.M2.0 / minSdk16，**签名与 mod1.x 不同、互不能覆盖**。功能比 mod1.x 多了「无感连接提示」弹窗（读本机 WLAN 直连名引导改名）、设置页更全。★**P0：USB 未授权时系统授权框每秒重弹（实测 25s 弹 25 次、点确定也挡不住）**，根因 `a/a/a/a/m/n/c/c.smali` 扫描循环 `sleep(1000)` 后无条件 `startActivity(UsbPermissionProxyActivity)`，只靠 `hasPermission()` 事后收敛——**没带 mod1.12 的 USB 免授权修复**。
★**在车机上 WLAN 直连/无感都用不了**：全包 `BluetoothAdapter.enable()` 调用数 = **0**，只检查不主动开，文案「无感: 车机蓝牙未开启，无法与手机握手…等蓝牙打开会自动重试」；且「P2P 组已建立，但蓝牙握手通道不存在，无法请求IP」→ 组建好了也只能干等蓝牙。车机上只能走 USB / 热点。BLE 改名（反射 `setName`）做得细，但前提是蓝牙能开。详见 `.workbuddy/memory/2026-10-20.md`。

## BootTask（com.boottask）现状：v1.6.36（vc43）
功能分区：P2pGuard 直连保护、WifiRateProbe 复刻亿连判定、HotspotProbe 热点蹲守、AudioMonitor 启动/声音监控+静音强杀、LowRateFix 一键修复、P2pDialogClicker 直连免打扰（无障碍自动点弹窗）。
★ v1.6.29 审查定论（2026-10-12，MuMu 4.4.4 framework.jar 实锤）：**P2pAutoAccept 整体无效**——广播 `android.net.wifi.p2p.connection.WIFI_P2P_CONNECTION_REQUESTED` 在 4.4 framework 不存在（4.4 只有 6 个标准 p2p action）；隐藏方法 `requestGroupInfo(WifiP2pDevice)` 不存在（只有 Channel+Listener 签名）；EXTRA 真实 key 是 "wifiP2pDevice"。接收器永不触发，seen 恒 0。别信 AI 博客编造的 API。
★ v1.6.30 修复（vc37）：改用**无障碍服务** `P2pDialogClicker`——4.4 上唯一能拿到「弹窗出现了」的合法途径（系统弹窗也在可访问性树里）。收窗口事件→`getRootInActiveWindow()` 取节点树→命中同意按钮→`performAction(ACTION_CLICK)`。误点防护硬约束：不碰自己窗口 / 必须有 P2P 场景特征文本 / 见「取消·拒绝·不允许」立刻放弃 / 同意按钮「排除优先+短文本精确匹配」（「不允许连接」不会被点）/ 3 秒冷却 / 全程日志含未点原因。主界面开关 + 「①去系统设置启用无障碍」（系统不给自动开）+ 「②立刻测试一次」+ 计数状态行。
★ 铁律（v1.6.29 教训）：任何「框架里应该有的 API」，写之前先 `javap -p -constants -classpath <android-all-4.4.jar> <类>` 查证，**查不到即不存在**。android-all jar 含 @hide，比 framework.jar 严格，优先用它。
v1.6.25 教训：**新功能日志必须落 files/log/**（LogHttpServer.refreshFiles() 枚举的唯一内部目录），否则抓不回来。
构建：`bash BootTask/build_win.sh`，产物名从 versionName 推导。stub android.jar 无 org.json；Java 访问 smali 类走反射；dex 查类用 `Lpkg/Class;` 分号结尾。adb 实测：realme streamed install 会挂起→用 push+`pm install -r`；ColorOS 弹安装确认会卡死后续 pm（杀 com.android.packageinstaller 或 reboot）；桌面图标缓存要卸载重装才刷新。
★ 开机静音双链（2026-10-19 实锤，互不联动）：①规则链 prefs`rules`（boot+mute，ExecService 执行，点「开机静音保存」必加 15s 兜底规则，勾没勾软件都加）②拦截目标链 prefs`audiomon`的`blockPkgs`（BootAudioReceiver 每次开机拉 AudioMonitor，目标免 root 杀不掉→2 轮自动静音+3min 看门狗）。删规则只断①；工具箱「取消开机静音（含关软件拦截）」一键断两条。v1.6.34 后规则列表只在工具箱页，首页看不到。
★ v1.6.36 静音语义定案（别再改回）：`MuteGuard.mute()`=长期静音（smali ExecService 规则链调用，语义不变）；`muteTemp()`=临时静音（AudioMonitor 拦截兜底用，**看门狗到期自动 restore 音量**，目标存活期间每轮重施故 deadline 顺延=持续静音）；prefs`muteguard`记`tempActive`+`savedVols`，BootAudioReceiver 开机`restoreIfPending()`自愈（上次临时静音未到期就重启）。**旧版看门狗到期不恢复 + setStreamVolume(0) 被系统持久化 = 「删光规则还每次开机静音」的根因（残留状态，非开机行为）**。`applyAll` 首采快照只在 `sSavedVolumes==null` 时做（重施不能把 0 存成原始值）。`isPickable` 排除 `android.process.media`（常驻进程杀不掉，选中必致静音兜底空转）。

## FileMgr（com.carfiles 车机文件管家）v1.0.0
文件功能从 BootTask 拆出：18082 扫码上传安装、卸载双入口（AppListActivity+fm.html 应用页）、文件管理含 U 盘。专属图标（gen_icon.py 纯 Python 渲染三尺寸）。已知问题：正常路径零日志（FLog 只在失败分支调用，UploadServer.start 绑定失败不上 UI）。**装车顺序：先装 CarFiles 再升 BootTask 1.6.28+**（后者没有 18082 传包通道）。

## 环境（2026-10-12 实测有效）
- 仓库 `C:/PJGG/apk`（git 已恢复正常，origin/main 正常推拉）。JAVA_HOME=`D:/PJGG/apk/tools/jdk-17.0.20.1+1`；apktool/signer 在 `D:/PJGG/apk/tools/`；android.jar+r8 在 `logxfer_src/tools/`。
- **adb=`C:/PJGG/platform-tools/adb.exe`**（D:/PJGG/platform-tools-latest 已失效）。realme X7 Pro(Android 12, RWPRTCMVSWQWMJBA)：须唤醒+dismiss-keyguard，单次调用链完成多步操作（daemon 会被重启）；MuMu 4.4.4 端口 7555（无 P2P/蓝牙，su 弹窗使请求挂 12~15s，curl 加 --max-time；TCP 连接跨命令被回收须重新 connect）。
- ★ MSYS 一切 adb shell/push 的 /data 路径必须 `MSYS_NO_PATHCONV=1`。构建/工程路径纯 ASCII。
- 低速断连待办：车机装最新 BootTask 实测（一键修复→投屏 15min→抓 wifi_rate_probe.txt）；v1.6.30 无障碍自动点弹窗待实机验证（需先在系统辅助功能里启用服务）；FileMgr 零日志问题待修。

## REA 逆向工具链（2026-10-13 装好，可复用）
`sudo npm i -g rea-agents`（rea 6.4.0）+ `jadx-headless-mcp-0.7.1-all.jar`（sha256 须
`6e5eacf5…3ff75`）+ **JDK 17+**（本机原装 11 不够，另下 Temurin 21）。
环境：`REA_JADX_MCP_JAR=<jar>` `JAVA_HOME=<jdk21>`。命令：`inspect-android-package` /
`search-android-classes` / `inspect-android-class` / `inspect-android-method` /
`trace-android-references`。坑：内部类用 `.` 不用 `$`；trace 遇重载方法直接报错要换唯一方法名。
产出：`Yilian/04_文档/亿连V7.0.1_REA逆向分析报告.md` + `rea_evidence/`。native 反编译需另装
Ghidra/Hopper/IDA（未做）。
