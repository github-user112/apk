# 项目长期记忆：CarLife 车机端「安卓 4.4.2 直连」

## 目标
`com.baidu.carlifevehicle`（1.6 修改版）在 Android 4.4.2 车机跑通 WiFi Direct 直连（及热点/USB）。A 方案：1.6 打补丁，不移植 5+。minSdk 固定 16。产线细节见 skill `android-apk-mod-deploy`，全量交接见 `C:/PJGG/apk/AGENTS.md`（与 CLAUDE.md 同步）。

## ★★ 车机定案（2026-09-24，实机日志实锤）
车机 = telechips tcc893x / Android 4.4.2 / KVT49L（eng）。P2P 组网是好的（GO 192.168.49.1，DIRECT-cH-CarLife-HU），别动自举器；**唯一堵点 = 车机 Android 蓝牙起不来**（state 恒 10，enable() 全无效 → 手机拿不到 SSID/PSK 不来 join）。热点模式 100% 可用。⚠ 车机 UI 的"蓝牙已连"是 MCU 蓝牙，≠ Android BluetoothAdapter。

## 1.45（当前交付版）：首页角标+快速兜底
versionCode 145 / mod1.45。① 二维码改首页 120dp 小角标（新类 `QrBadge`：WebView 叠 frag_main 根布局，页签 conn_mode_bar=0x7f090140 右侧空带优先，窄屏贴右上，点码即关，onLinkUp 自动关；`LogXferEntry.bind` 用 WeakReference 记根 View；根不可用退回全屏 QrFallbackActivity）② BtGuard 快速判死：`sSawTransition` 无非 OFF 迁移时 6s（FAST_WAIT）判死，见过 TURNING_ON 走老 45s ③ ★修 1.25 `ConnLog.hasUsableLocalIp()` 极性（if-nez→if-eqz，恒 false → awaitLocalIp 每次白烧 5s，分支极性第 5 例）④ 首页连接超时 30s→120s（s.smali Z=0x1d4c0，q0/r0 共用）。编译 android.jar 必须用 android-all.jar（`ANDROID_JAR` env 或 tools/android-all.jar）。验证：门禁 0 冲突、条目级 688→689 仅多 qr_badge.html、dex 字符串全 OK；**MuMu/车机实机待验**。详见 `04_文档/1.45_首页角标与快速兜底.md`。

## 1.44：扫码入组（车机实机 2026-09-25 全流程跑通）
versionCode 144 / mod1.44，含 1.43 全部修复。NoBtFallback.showCredentials() 拿到凭据后弹全屏二维码（`QrFallback.show` → `QrFallbackActivity` WebView + `assets/logxfer/qr_wifi.html` 复用 qrcode.js，`WIFI:T:WPA;S:..;P:..;;` 标准格式），手机相机/微信扫码自动入组；`m/m/b.b()` 建链回调 `onLinkUp()` 自动关码页。新类走 logxfer 管线（javac→D8→smali），android.jar 用 Robolectric android-all 4.4_r1（Sable android-19 缺 JavascriptInterface）。验证：门禁 0 冲突 + 成品反编译回读两处 invoke/4 新类全在；车机实机待验。

## 1.43：修 1.40 兜底「拆组」
versionCode 143 / mod1.43，单树 main 直接改。根因（车机 2026-09-24 20:17 日志）：`e/d.f()` 停自举器调 `j.b()`，其内部「亿连三连清」在 1.40 keepP2pGroup 闸门**之前** removeGroup → 刚建好的 DIRECT- 组被拆 → 90s 轮询「直连组未建立」。修：`m/m/d/j.smali` b() 三连清加 `keepP2pGroup()` 闸门。realme 没炸只是测试时组没建起来。另：20:20 会话证明热点模式全链路 100% 通（鉴权→60fps 视频）。

## 1.40：亿连式无蓝牙直连兜底
`_w140` / `patch_v28_无蓝牙直连.py` / versionCode 140 / mod1.40。
- 新增 `NoBtFallback.java`：BtGuard 判死（无适配器 / 45s 超时）→ 幂等触发 ① 反射挂热点传输 `m/m/e/a`（引擎 `a.a.a.a.m.b.a`→`.E` 管理器→`.c` 列表）启动 UDP 7999 监听，手机手动入组后广播走热点模式原路建链 ② 自建 P2P channel requestGroupInfo 轮询，GO 时打印组名+getPassphrase() 口令到日志区。
- **闸门**：`e/d.f()` 的 cancelConnect/removeGroup/stopPeerDiscovery 收进私有 `p2pCleanup`，`keepP2pGroup()==true` 跳过（否则兜底一连上 `m/m/b.b()` 调 `f(e/d)` 会拆掉手机刚加入的组）。
- realme ART：装成功、蓝牙开时阶段1 正常无兜底、`svc bluetooth disable` 后等待正常推进（⚠ ColorOS disable 后 binder 慢 ~20s/轮，车机 1s/轮）；0 崩溃 0 VerifyError。**车机实机全流程待验**。详见 `04_文档/1.40_无蓝牙直连亿连式.md`。

## 版本史（细节全在 `04_文档/`，别凭记忆改）
1.30 二维码自动刷新+SessionLog+按日期排序（realme 全过）｜1.29 BtGuard 重写深度诊断+判死｜1.28 createGroup 失败三分(reason=0 退避)+DNS-SD invoke-direct 修复｜1.27 图标名带版本｜1.26 修 1.25 的 ConnLog VerifyError（**1.25 作废勿回退**）｜1.23 setDeviceName 极性(if-lt→if-ge)+心跳1s｜1.22 BtGuard 蓝牙等待自愈｜1.21 /all.zip duplicate entry｜1.20 修 1.18 ART VerifyError｜1.19 二维码排除蜂窝｜1.18 模式切换异步化 ConnSwitchTask｜1.15 心跳看门狗+设备名兜底｜1.16/1.17 扫码下载日志｜早期：bdcf WiFiDirect 名+2.4G、蓝牙 enable、setDeviceName。

## 关键类映射
直连四件套 `m.m.d.{e,i,h,d}`；蓝牙阶段1 `d/a.run()`(经 `d$c` handler) + `d/d`(BT socket/target)；自举器 `d.j`；传输基类 `a.j.c`(a=connect f=terminate, b()→callback.b) ；热点传输 `m.m.e.a`（UDP 7999，收到广播→`e/b.d(手机IP)`→c.b()）；直连传输 `m.m.e.d`；端口表 `m.m.e.b`（7240/8240/9240/9241/9242/9340/9440，车机=TCP 客户端）；引擎 `m/d`（静态引用 `m/b.a`，`.E`=传输管理器 `m/m/b`，其 `.c`=传输列表，`.b(transport)`=连上→terminate 其它+q(类型)+起 reader）；`l/b.g`=PHONE_IP 静态（从不写入，恒空）；调度器 `n.h`；组播锁 `m.m.e.e`；CONNECT_TYPE: 2=USB 5=热点 9=直连（q() 只改内存不落盘）。

## 血泪 TOP（完整 18 条见 AGENTS.md）
1. ★★★ Dalvik 过≠真机过：新写/改动的 smali 必须 ART 实机起一遍。
2. ★ 插桩一律零参静态方法（`ConnLog.logXxx()`），别在大方法里挑寄存器。
3. ★★ 手写 try/catch：catch handler 首指令必须 move-exception 且只能异常到达；正常出口标签放 :catch_0 之前。
4. 分支极性已写反 N 次（if-eqz/if-nez、if-lt/if-ge），脚本断言"该有+不该有"。
5. 抽私有方法消除共享标签寄存器合并（1.28 j.d()V、1.40 p2pCleanup）。
6. 交付前条目级对比 + dex 字符串核对（1.11~1.15 大小全相同，看大小被骗）。
7. `校验并补齐工程.py` 参照用**直接上一版**；`/XD` 绝对路径；每轮全新 `_bw_*` 目录。
8. 构建目录/工程路径必须纯 ASCII；MSYS 要 `MSYS_NO_PATHCONV=1`（adb 传 /data 路径也会被改写！）。
9. logxfer Java→smali：`logxfer_src/构建日志下载smali.py`（javac→D8→壳apk→apktool），壳 APK 不得含 logxfer 类。

## 环境
★ 工具链已迁到本机 D 盘：JAVA_HOME=`D:/PJGG/apk/tools/jdk-17.0.20.1+1`；apktool 2.9.3 / uber-apk-signer 在 `D:/PJGG/apk/tools/`；android.jar+r8.jar 在 `logxfer_src/tools/`；`tools/bin/zip` 是 python 仿真（支持 -q -d / -q -0）。构建：`PRJ="D:/PJGG/apk/CarLife/01_工程源码/main" NAME="x.apk" bash 03_构建脚本/build.sh`。老 C:/PJGG 路径已失效。git 仓库被迁移污染（index.lock 被宿主占用 + 2.2 万误暂存删除，需 git reset 后再提交）。
adb=`D:/PJGG/platform-tools-latest-windows/platform-tools/adb.exe`。realme X7 Pro(Android 12, RWPRTCMVSWQWMJBA) **-P 5039**，须先唤醒+dismiss-keyguard，SurfaceView 拿不到 uiautomator；MuMu 4.4.4 7555（无 P2P/无蓝牙）。

## 待办
1. **车机实机验收 1.44**：判死→兜底挂载→日志 `disarmed: keepP2pGroup=true, P2P group kept`→90s 轮询打出 DIRECT- 组名+密码→**车机屏出二维码**→手机相机/微信扫码自动入组→自动建链+码页自动关→`connect packet:192.168.49.x`→会话。
2. 手机端连不上 `DIRECT-` SSID 的机型 → 提示退回热点/USB。
3. 车机端完整 logcat（ConnLog 环形缓冲会滚掉）。
4. BootTask v1.4（versionCode 5）静音已改 STREAM_MUSIC 清零+流级静音，车机实机待验。

## BootTask（开机任务）构建铁律（2026-09-30 起）
- stub android.jar（logxfer_src/tools）无 org.json：Java 类禁 import org.json。
- smali 类对 javac 不可见：Java 侧访问 RuleStore/Util 走反射；拉起 smali 组件用 setClassName(getPackageName()+".Xxx")。
- MainActivity 已 Java 化（D8 合并通道），smali 版已删；UI 分层=头部/我的规则/诊断与日志。
- adb 本地路径铁律：MSYS_NO_PATHCONV=1 时本地参数写 C:/ 形式；install 后必 dumpsys 复核 versionCode（tail 吞失败行）；中文 APK 名先 cp 成 ASCII。

## BootTask v1.6.19（vc26，2026-10-08）：v1.6.18 修 19 项 + SoftAP 热点探测
产物 `BootTask/dist/BootTask_v1.6.19.apk`。**v1.6.18**：按外部代码审查修复 19 项——P0 fm.html 上传漏 k；P1 访问码 4 位数字→8 位 SecureRandom+鉴权失败延迟 300ms+op=shell 只收 POST 且拒跨源 Origin+删除拒根/一级目录+pm install/uninstall 走 FileOps.q()；P2 writePart EOF 判失败、safeName 保留中文、上传同名 (n) 后缀、param() 保护 `+`、每连接一线程、fm.html jsq() 修二阶 XSS、load 失败清状态、属性用列表数据；P3 404 短语/100-continue 移鉴权后/版本动态读/WAKE_LOCK 去重/build 脚本 logxfer 断言/README 纠偏；顺手修 FileOps.delete 先判直删再探 su、readText root 裁剪对齐 512KB 截断标志。MuMu 实测通过。**v1.6.19**：车机有热点菜单但搜不到热点 → BootDiagnostics 新增 softapProbe 段（服务/组件/接口三层探测+四分支判读，免 root；**抓日志时车机热点开关保持打开**）。热点模式定论：亿连热点模式=手机开热点车机连（9-24 实测 100% 通），车机当 AP 无日志证据且无 root 手动起 hostapd。**验证技巧**：MuMu su 弹窗让触发 suOk() 的请求挂 12~15s（curl 要 --max-time）；adb forward 每条命令后回收，连接+转发+请求必须同一命令；MSYS `--noproxy *` 不加引号会通配展开打到外网。git 未提交。

## BootTask v1.6.20（vc27，2026-10-08）：热点探测蹲守 HotspotProbe
产物 `BootTask/dist/BootTask_v1.6.20.apk`。背景：车机热点菜单是摆设（打开后手机搜不到）。服务每 5s 轮询 AP 状态（反射 getWifiApState）+接口+hostapd 进程，任一变化→全量快照（getprop/netcfg/wireless/hostapd 组件/logcat -t 600）追加到 /sdcard/boottask/hotspot_probe.log（超 1MB 清零）。「尝试开热点」= 反射 setWifiApEnabled(null,true)，ENABLED 后读 getWifiApConfiguration 出 SSID/PSK 给手机连。MuMu uiautomator dump 当前输出 0 字节（emoji d83d 系统进程崩溃），UI 级验证改用 am startservice + 读日志文件。MuMu uiautomator dump 输出 0 字节（emoji d83d）时改用 am startservice + 读日志验证。

## BootTask v1.6.21（vc28，2026-10-08）：启动与声音监控 AudioMonitor + MuteGuard 缺类修复
新增 AudioMonitor 服务：ps diff 记录开机后新进程（首轮只建档）、dumpsys audio 焦点/音量变化全落 /sdcard/boottask/audio_monitor.log；拦截目标（SharedPreferences audiomon/blockPkg，UI 复用 smali AppPickActivity：setClassName + startActivityForResult(77) 取 extra "pkg"）存活即 killBackgroundProcesses，连续 2 轮杀不掉→MuteGuard.mute 静音兜底；BootAudioReceiver（独立 Java BOOT_COMPLETED receiver）开机自动拉起。★修复 rebase 遗留真 bug：MuteGuard.java 不在 build_win.sh 编译清单，ExecService(smali) 引用悬空，执行静音规则必 NoSuchMethodError——已补 cp+javac。★判据：查类在 dex 用 `Lpkg/Class;` 分号结尾类型描述符，裸类名会被字符串引用误判为存在。git 未提交。

## BootTask v1.6.23（vc30，2026-10-10）：修诊断双连误报 + 热点结论修正
★重要结论修正（10-09 车机日志实锤）：
① **诊断误报双连**：`p2pRoleAndDualLink` 里 `wlanCarrier=...` 对每个接口行都赋值，p2p-p2p0-1
（GO 组接口）无 NO-CARRIER 标志 → 覆盖掉 wlan0 的 NO-CARRIER → 误报「单射频双连实锤」。
修：只在 `if("wlan0".equals(cur))` 判定 + 新增 ifaceBytes() 读 /proc/net/dev 收发字节做第二判据。
② **车机能不能开热点**：hostapd 二进制【存在】（/system/bin/hostapd 453KB + hostapd_cli，之前
判"没编译"是 ls exit=1 被截断误导）；但 init.svc 34 个服务里无 softap/hostapd/wifi，hostapd.conf 不存在，
netcfg 无 AP 接口 → 「有壳无魂」：ROM 刷了文件但 framework 不调它。车机当 AP 走不通，
热点模式唯一可行 = 手机开热点→车机连（9-24 实测 100% 通）。
③ 10-09 日志实锤无 root：`which su` 直接 IOException（su 二进制不存在，不是被拒）。
④ wlan 速率低这次不是双连（wlan0 收发全 0，从没连过 AP）→ 大概率 GO 角色本身负担/对端手机侧。
新增诊断段「开机自启清单 + 声音嫌疑」：PID 1200~2300 早期 App 全列 + media/radio/audio/tts
关键词匹配包名标★正在运行。车机声音嫌疑：geelymediamanager / svradioservices / svmediaprovider /
iflytek.tts / android.process.media；收音机本体 = com.telechips.android.tdmb(TDMBPlayer, 未运行)。
⑤ 声音时间线必须开 v1.6.21 AudioMonitor 后再开机抓（无 root 时 boot audio 段直接跳过）。
⑥ 10-09 当天重启 3 次（boottask.log 三条 BOOT_COMPLETED）。git 未提交。

## 亿连「WiFi传输速率低」机制（反编译实锤，全项目通用结论）
文案 `wifi_low_speed_tip`，弹出点 `f.a.k.l0.p3.w()`；监控线程 `Mirror_Presenter_Ping_Service`
（`r0.o()`）每 2s `ECSDK.native_ping(ip,250)`，**单次 RTT>200ms 记1，连续3次(约6s)弹 Toast**，
有一次正常即清零。★测的是时延不是带宽。监控只在 `ECTransportType.name().contains("WIFI")`
（ANDROID_WIFI(2) 覆盖直连+热点）时启动 → **走USB永不弹**。★弹窗不断链（只 Toast+隐藏 View），
"先提示后断"是同因两果（RTT劣化 + Ctrl/Data socket 超时同时）；断链走 native onDisconnect →
`m.onMirrorDisconnected()` → `g0.i0(4)`；车机端 `onMirrorRequestReconnect()` 是空方法。
详见 `Yilian/04_文档/亿连V7.0.1_直连低速断连_分析报告.md`。

## BootTask v1.6.24（vc31，2026-10-10）：WLAN 速率低诊断 WifiRateProbe
复刻亿连判定：每 2s ping 对端（ip neigh 找 192.168.49.x 排除 .1），30/120 秒可配，
落全部 RTT 样本+p50/p95/max+超200次数+**最长连续 streak**（>=3 = 亿连必弹），配 /proc/net/wireless
(RSSI/retry/missed beacon)+/proc/net/dev+CPU 做「空口烂 vs 车机烂」对照，输出缓解建议
（含 /etc/ec.conf 存在性实测）。缓解优先级：①改用手机热点（车机 P2P GO→纯 STA）②手机保亮屏对照
（息屏 Wi-Fi 进 PS,RTT 翻倍）③/etc/ec.conf 降 mirror_width/height（★本车机无此文件且无root，走不通）
④直连必须车机2.4G档。日志 files/wifi_rate_probe.txt。构建通过、dex 五类齐全，未实机验证（设备未连）。git 未提交。

