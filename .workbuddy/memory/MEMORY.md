# 项目长期记忆：CarLife 车机端「安卓 4.4.2 直连」

## 目标
`com.baidu.carlifevehicle`（1.6 修改版）在 Android 4.4.2 车机跑通 WiFi Direct 直连（及热点/USB）。A 方案：1.6 打补丁，不移植 5+。minSdk 固定 16。产线细节见 skill `android-apk-mod-deploy`，全量交接见 `C:/PJGG/apk/AGENTS.md`（与 CLAUDE.md 同步）。

## ★★ 车机定案（2026-09-24，实机日志实锤）
车机 = telechips tcc893x / Android 4.4.2 / KVT49L（eng）。P2P 组网是好的（GO 192.168.49.1，DIRECT-cH-CarLife-HU），别动自举器；**唯一堵点 = 车机 Android 蓝牙起不来**（state 恒 10，enable() 全无效 → 手机拿不到 SSID/PSK 不来 join）。热点模式 100% 可用。⚠ 车机 UI 的"蓝牙已连"是 MCU 蓝牙，≠ Android BluetoothAdapter。

## 1.44（当前交付版）：扫码入组
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
