# 开机任务（BootTask）—— 开机事件触发动作的独立 App

从 CarLife 车机端「开机自启」功能反向分析而来，做成一个**独立、通用**的开机事件自动化工具。

- 包名：`com.boottask`
- 最低版本：Android 2.2（API 8，实际按 4.4 编写）—— 兼容一切 4.x，**包括 4.4.2 车机**
- 构建方式：执行主体为手写 smali；诊断与日志下载用一个小型 Java/D8 类合并进单 dex
- 成品：`dist/BootTask_v1.6.12.apk`（**纯 v1 签名**，SHA-1 摘要，无 v2/v3 签名块）；v1.1~v1.6.11 同目录留档

### v1.6.10（开机静音一键化：不用手动配规则）

- 背景：静音**只在有规则时才执行**（`RuleStore.list` 默认 `[]`，开机 → ExecService 遍历规则执行；
  没规则 = 什么都不会做）。用户需确认「是不是要我自己加规则」→ 是，v1.6.10 把它一键化。
- 主界面新增「开机静音」分区三个按钮：
  1. **立即静音** —— 直接 `MediaMute.muteAll()`（铃声静 + 媒体流 vol=0 + 媒体流 mute），
     用来当场验证 FM 到底管不管得住，不用重启。
  2. **设置开机自动静音** —— 程序化建规则 `{enabled:true,event:"boot",delay:15,action:"mute"}`，
     先删掉已有 mute 规则再建（避免重复累积）。延迟 15 秒是为了排在多媒体自启之后。
  3. **取消开机自动静音** —— 倒序移除所有 `action=mute` 的规则。
- 实现：JSONObject 全部走反射构造（stub android.jar 无 org.json，老铁律）；
  RuleStore.add / remove / list 仍复用 smali 单一实现，逻辑不漂移。
- MuMu 实测：versionCode 17，0 崩溃；规则落盘 `[{"action":"mute","enabled":true,"event":"boot","delay":15}]`，
  列表计数 共 1 条；立即静音日志 `MediaMute: ringer SILENT + music vol=0 + music muted`；取消后 `[]` 共 0 条。

### v1.6.12（非亿连原因：CPU 降频 / 蓝牙抢频 / WiFi 扫描）

参考用户提供的《非硬件原因 8 类》分析后加入。原则不变：**一次只做一项，做完跑 15 分钟对比**。

- 诊断新增：
  1. CPU 段加 **governor / available_governors / min-max 频率**（ROM 若设 `powersave`，跑几分钟后压频 →
     整机卡 → ping 线程调度延迟 → RTT 虚高，正好撞亿连 200ms 阈值）；
  2. **系统开关段**（bluetooth_on / wifi_on / wifi_scan_* / airplane / screen_off_timeout / wifi_sleep_policy）；
  3. root 段加 **`dumpsys wifip2p`**（GO 组名/信道 freq）——与手机侧 WiFi 分析仪看到的信道对比，
     两端不一致 = 驱动 channel 跟随 bug。
- 新增 **「系统修复菜单」**（需 root，五项）：
  ① CPU 锁 performance（排查压频/热降频，重启还原）② CPU 恢复默认 governor
  ③ 关蓝牙（排除蓝牙与 WLAN 抢 2.4G）④ 开蓝牙 ⑤ 关 WiFi 后台常扫。
- **对参考手册的两处纠正（实测得出）**：
  1. ⚠ `wifi_scan_throttle_enabled=0` 是**反的**——该键=1 才是「开启节流=扫描更少」，
     设 0 会让后台扫描更频繁、更容易打断 P2P。菜单⑤按正确方向写 1。
  2. ⚠ 4.4 的 `settings` 命令**不支持 `settings list`**（只支持 get/put），且普通 App 直调会被
     `SecurityException` 拒 —— 必须走 `su -c settings get ...`。车机 eng 版有 root，快照会出真值；
     MuMu 无 root 时显示「(无权限读取，需 root)」。

### 亿连断连：非硬件原因分诊顺序（按性价比）

| 序 | 实验 | 成本 | 说明 |
|---|---|---|---|
| 1 | 手机只留亿连 + **保持亮屏** + 关后台同步 | 免费 | ⭐️ 最常被忽略；手机发热降频的曲线也是 5-10 分钟，和车机现象完全重叠 |
| 2 | 车机**关蓝牙**（系统修复菜单③） | 免费 | 蓝牙与 WLAN 同抢 2.4G；投屏不掉线即实锤 |
| 3 | 车机**锁 performance**（菜单①） | 1 min | 排除 ROM 压频 / 热降频 |
| 4 | 拔掉车机所有 USB 设备 | 免费 | USB 3.0 会干扰 2.4G（换 USB 2.0 口） |
| 5 | 重试 P2P 换信道 / 挪近到 30cm | 免费 | AOSP 的 GO 信道是 1/6/11 随机 |
| 6 | 关 WiFi 后台常扫（菜单⑤） | 1 min | 扫描期间射频切信道，P2P 被打断 |
| 7 | 插 USB 2.0 的 WiFi 网卡 | 买网卡 | **定案用**：好了=车机内置 WiFi 硬件/驱动问题 |

手机侧（车机改不了，只能靠观察/白名单）：息屏省电、发热降频、其他 App 抢带宽、
ROM 杀进程 → 手机电池优化与自启管理里放行 `net.easyconn.carman`。

### v1.6.11（MCU 直连 FM 的手段 + MCU 侦查 + 页面可滚动）

- 新增按钮 **「抢占音源：播 0.6 秒静音」**（`MediaMute.claimAudioSource`）：FM 若走 MCU 独立通路，
  Android 侧静音管不到它，但 MCU 音源仲裁多按「后来者抢占」——播一段听不见的静音 PCM 把音源抢回
  Android，FM 自然停，随后自动 `muteAll()` 收尾。后台线程执行（play + sleep）。
- 诊断新增 **mcu / audio-source recon** 段：串口节点（ttyS*/ttyUSB*/ttyMT* 逐个列，Runtime.exec
  不走 shell 所以不用通配符）、`/proc/tty/drivers`、getprop/ps 按 MCU 关键词过滤、**MCU/音源候选包**
  （可反编译找串口协议帧）、root 时加 3 秒串口嗅探（`od -tx1` 看心跳帧）与 `/sys/class/gpio`
  （功放 mute 引脚线索）。
- UI 修正：按钮变多后车机屏（常见 1024x600 / 800x480）装不下 → 整页改 `ScrollView` 包裹，
  规则列表从 `weight=1` 改为固定 150dp（weight + ScrollView 会互相抢高度）。
- MuMu 实测：versionCode 18，0 崩溃；抢占音源日志 `MediaMute: silent track played` + 随后的
  muteAll；MCU 段正常输出（MuMu 有 ttyS0/ttyS1、无 MCU 包，属预期）。

---

## FM 走「MCU / 收音芯片直连功放」怎么办：分层方案

车机音频常见架构：**MCU（面板单片机）负责音源仲裁**（Android / FM / AUX / 蓝牙）和功放 mute，
FM 调谐器的声音可以不经 Android、直达功放。这种情况下 Android 的 `AudioManager` 再怎么静都管不到它。

### 判定（诊断快照里三条中两条即确诊）

1. 点「立即静音」后 FM **照响**（媒体流已 vol=0，Android 侧能做的都做了）
2. 快照 `dumpsys audio` 的播放者列表里**没有 FM / 收音机**，但喇叭在响
3. **开机瞬间 Android 还没起来就在响**（MCU 上电自播，与 Android 无关）
4. 车机屏上音源显示「FM / 收音机」而不是 Android

### L0 —— 免 root、零风险（先做这几步）

| # | 做法 | 说明 |
|---|---|---|
| 1 | **熄火前把音源切到 Android** | 多数 MCU 会记忆上次音源；下次 ACC 上电直接是 Android，FM 不播。**最省事的一招** |
| 2 | 车机设置里找「开机音源 / 默认音源 / 开机启动源」 | 常在 **设置 → 系统 / 工厂设置**（密码多为 8888 / 123456 / 000000），改成 Android / USB / AUX |
| 3 | 把 FM 音量用面板旋钮拧到 0 | MCU 通常记忆该音量，开机播也听不见 |
| 4 | 拔掉 FM 天线 | 极端但不影响其它功能 |

### L1 —— 抢占音源（App 内置，性价比最高）

- **原理**：MCU 的音源仲裁一般是「后来者抢占」——Android 侧出现一条活跃音频流，MCU 就把音源切过来。
- **操作**：车机上点 **「抢占音源：播 0.6 秒静音」**，FM 停了就说明这条路通。
- **固化**：有效的话告诉我，我把 `action=claim` 加进规则动作表，就能做成「开机 15 秒后自动抢占+静音」。
- 判定失败（FM 照响）→ 说明它不走音源仲裁，进 L2。

### L2 —— MCU 串口协议（需 root，成功率高）

SoC 与 MCU 通常走 UART（`/dev/ttyS0/1/2`、`/dev/ttyUSB*`、`/dev/ttyMT*`）。拿到协议后就能直接发
「切音源 / mute」帧，BootTask 的 **Root 命令**动作即可执行（例：`echo -ne '\xNN...' > /dev/ttyS1`）。

协议从哪来（按性价比排序）：

1. **反编译厂商 App**：诊断快照的「MCU/音源候选包」段会列出可疑包（含 mcu/radio/fm/tuner/audio/
   protocol/serial 关键词），把 APK 拉出来反编译，找串口写函数与帧格式——这是我们最熟的路线。
2. **嗅探对比**：root 下 `cat /dev/ttyS1` 抓心跳帧，同时按面板「音量+/切源」键，对比字节变化定位命令。
   快照已带 3 秒嗅探输出（`od -An -tx1`）。
3. 网上同平台协议（tcc893x / 该车型 MCU 协议文档）。

### L3 —— 功放 mute GPIO（需 root，有风险）

- 部分车机功放的 MUTE/STBY 由 SoC GPIO 控制：写 `/sys/class/gpio/gpioN/value`。
- 快照的 `su /sys/class/gpio` 段会列出可用引脚。
- ⚠️ **先记录原值再写**，写错会一直静音（可写回原值恢复）；一次只试一个引脚。
- 也可试内核侧通路切换：`amixer` / `tinymix`（若有）把 FM 通路关掉。

### L4 —— 硬件 / 固件

MCU 固件刷写（需厂商包，风险高）／拆机断开 FM→功放线路或加物理 mute 开关。

### L5 —— 接受现状

FM 响但音量由 MCU 旋钮控制（L0-3 已把音量拧到 0），或每次开车手动按一下面板 SRC 切到 Android。

### 铁律

- **一次只改一个变量**，改一项测一次（与亿连修复同一原则）。
- 串口写命令前先 `cat` 记录原状；GPIO 写前记录原 `value`。
- L0~L3 全试完、且诊断确认是 MCU 直连 → 这是**架构限制不是故障**，走 L5 收尾，别再折腾软件。

### v1.6.9（开机静音修复 + 媒体自启侦查）

- **根因修复**：旧 `mute` 动作只 `setRingerMode(SILENT)`——铃声模式只管来电/通知流，
  多媒体自启播 FM 走 **STREAM_MUSIC** 完全不受影响（用户车机实测「静音对多媒体不起作用」的根因）。
- 新增 `MediaMute.java`：muteAll = 铃声 SILENT + **媒体流音量归零 + 媒体流 mute**；
  unmuteAll 对称恢复。ExecService.smali 的 mute/unmute 分支尾插 invoke-static（不删原指令，最小改动）。
- 新增诊断段 **boot audio recon**：①root 读 **events 缓冲**的启动时间线（am_proc_start/
  am_create_activity——谁在开机时拉起了多媒体、几点）②dumpsys audio 各流音量/静音/播放者
  ③包名含 multimedia/media/fm/radio/audio/tune 的候选包逐一 dump **BOOT_COMPLETED 接收器**。
  ⚠ events 缓冲会轮转——重启车机后尽快开一次日志页才能抓到开机时间线。
- 若 FM 走独立 MCU/收音芯片直连功放，Android 侧 mute 仍管不住——快照会暴露真相。
- MuMu 实测：versionCode 16，0 崩溃，dex 五项标记全命中。

### v1.6.8（配置修改后自动重启亿连）

- v1.6.7 只 `force-stop`（车机上亿连不保证自启），现改为 **force-stop → 等 1.5s →
  `monkey -p net.easyconn -c android.intent.category.LAUNCHER 1` 拉起默认入口**。
  用 monkey 而非硬编码 Activity 名（手册核实入口是 StandMainActivity，但各版本可能变）。
- 覆盖修复菜单全部 5 项：写 conf 成功后重启、⑤还原删文件后也重启（默认配置即刻生效）。
- MuMu 验证：monkey 注入成功、亿连进程被拉起（其随后崩溃为亿连 7.3.7 自身 support-v4
  在 Dalvik 的 VerifyError，纯模拟器环境问题，真车机不受影响）；BootTask 本体 0 崩溃。

### v1.6.7（亿连修复矩阵：六个诊断分支 × 分支菜单）

- 依据用户提供的《按诊断结果修：四个层级的手段 × 六个诊断分支》修复矩阵，把 v1.6.6 的单一
  「亿连降码率」升级为**修复菜单**（一次只改一组变量——手册铁律「不要一次全上」，改一项测 15 分钟）：
  1. **① 降码率 mirror 1024x600** —— 第 1 轮先做，码率≈像素数线性（1024x600 约为 1080p 的 1/3）
  2. **② 分辨率对齐物理屏** —— 自动读 `wm size`（退回 DisplayMetrics），写实际分辨率，
     消除 SurfaceView 缩放开销（判据：画面卡但解码耗时平稳）
  3. **③ 降码率+强制软解** —— `video_codec_name=OMX.google.h264.decoder`。
     ⚠ 仅「整机跟手、只有画面卡」时用；整机卡/发热分支禁用（软解加 CPU 负载会更热更卡）
  4. **④ 追加色彩格式 0x14** —— 在现有 conf 基础上追加（保留其余配置）。
     该键按 **16 进制解析**（手册核实 b.java:200），必须写 `0x14` 不能写 `20`；
     针对 4.4 planar/semiplanar 不匹配走软件色彩转换的经典坑
  5. **⑤ 一键还原** —— 删 /etc/ec.conf + 重启亿连
- 「关 WiFi 省电」按钮保持独立（链路侧修复，与亿连配置互不影响）。
- 车上用法：诊断快照定分支 → 菜单选对应预设 → 测 15 分钟 → 没好换下一项；修复历史自动进快照。
- MuMu 实测：versionCode 14，0 崩溃；菜单五项正常渲染，①执行后无 root 优雅降级+历史落盘。

### v1.6.6（一键修复：诊断→修复闭环）

- 新增 `QuickRepair.java`（纯 Java 自包含，走 D8 合并通道），主界面两个修复按钮（均需 root、可逆、幂等）：
  1. **一键修复：关 WiFi 省电** —— 自动发现无线接口（`iw dev` 解析，退回 wlan0/p2p-wlan0-0 名单），
     逐个 `iw dev X set power_save off` 并回读确认。针对 GO 省电导致的 RTT 周期性飙高。
     ⚠ P2P 组重建后会恢复默认，再弹速率低时重按即可。
  2. **亿连降码率** —— 确认框 → remount rw → 写 `/etc/ec.conf`（mirror 1024x600 + keep_screen_bright）
     → chmod 644 → force-stop net.easyconn。针对「解码劣化→调度延迟→RTT 虚高」。
     还原：删 /etc/ec.conf 重启亿连。
- 修复动作带时间戳追加到 `files/log/repair_history.txt`，诊断快照新增「一键修复历史」段（扫码即可回溯做没做过修复）。
- MuMu 实测：versionCode 13，0 崩溃；无 root 时优雅提示（"su 不可用，修复未执行"）且历史落盘。
- ⚠ build_win.sh 两处清单都要加新 Java 文件（cp 段 + javac 文件列表）——本次踩坑。

### v1.6.5（合并《亿连V7.0.1 排查手册》的四个日志源）

- 来源：用户提供的《亿连车机端「速率低→断连」排查手册》（基于 V7.0.1 反编译，与仓库
  `Yilian/04_文档` 分析互证）。
- **亿连 RTT/解码关键行**：root logcat 过滤新增 YILIAN_LOG_KEYS（EasyConn/ecsdk/EC_DECODE tag、
  `Ping ip`/`cost time`/`outputIndexTime`/`mMirrorDroped`/断连事件/心跳）——`cost time` 从 ~15ms
  涨到 40ms+ 且单调上升 = 解码降频实锤（比 cpufreq/thermal 间接推断更直接）。
- **`/etc/ec.conf`**（免重打包配置）：诊断直接 cat；降码率（mirror_width/height）改这里。
- **`/sdcard/logger/logs_*.csv`**：亿连自带文件日志（无条件开启、500KB 轮转）——ls 目录 +
  root tail 最新文件 300 行。注意：亿连设置页的「SDK_Logcat」按钮会把文件日志顶掉。
- MuMu 冒烟通过（versionCode 12，0 崩溃；ec.conf/logger 段车机上有内容）。

### v1.6.4（CPU 链仪表——「解码劣化→调度延迟→RTT 虚高」判据）

- 新假说（用户提出）：车机解码器 5-10 分钟后热降频/调度恶化 → 先卡（解码撑不住）→ ping 线程等
  CPU 的调度时间被算进 dt（r0.java 的 dt 是 Java 侧计时，含调度延迟）→ 连续 3 次 >200ms 弹提示 →
  socket 心跳超时断连。此链路下网络一包未丢，全靠 CPU 延迟撑爆提示。
- 新增免 root 段：`/proc/loadavg` + `scaling_cur_freq`(cpu0-3) + `thermal_zone*/temp`(0-7) + `top -n 1`
  快照。判读：B 快照（出症状时）vs A 快照（健康时）——频率掉+温度高+亿连进程 CPU 满+计数器不涨
  = CPU 链实锤；计数器 errs/drop 涨 = 网络链；断连时刻≈连接后 300s = DHCP T1。
- GO/STA 省电修正：framework power_save 只管 STA（嫌疑→手机），但 GO 固件 NoA 仍是 AP 侧省电，未排除。
- MuMu 冒烟通过（versionCode 11，0 崩溃；MuMu 无 cpufreq/thermal 节点，车机会出实际值）。

### v1.6.3（DHCP 租约表 + ARP 邻居表——针对「连接 5-10 分钟才断」）

- 新症状：连接初期不卡，5-10 分钟后提示速率低→断连，车机屏幕保持亮。定时性排除了随机射频问题。
- **`dnsmasq.leases`**（root）：`/data/misc/dhcp/dnsmasq.leases` 租约表——Android 热点/GO 默认租约
  600s，**T1=300s（正好 5 分钟）**手机发续租，老固件 GO 处理不当即 RTT 尖峰→提示→断连；
  断连时刻≈连接后 300s 即实锤。诊断文件里附判读说明。
- **`ip neigh`**（免 root）：ARP 表对端可达状态（REACHABLE/STALE/FAILED），断连前后各采一次
  可看链路何时真正不通。
- MuMu 冒烟通过（versionCode 10，0 崩溃；dnsmasq 段 root 门控）。

### v1.6.2（GO 省电探测 + 计数器双采样 diff）

- 背景：亿连 App 自己不读 RSSI/速率（「WiFi传输速率低」判的是 `ECSDK.ping` 的 RTT），硬件/软件判据
  必须系统层取。且车机是 P2P GO（EcWifiManager.java:187），GO 侧 `power_save=on` 会把 RTT 周期性
  顶到 100-500ms——与亿连 200ms 阈值正好撞车，是"速率低"的头号嫌疑（纯软件配置，可关）。
- **GO 省电探测**（root）：`iw dev`（接口列表+类型，确认 P2P-GO 角色）+ `iw wlan0/p2p-wlan0-0 get
  power_save`；=on 时在诊断文件里直接给出复测命令（`su -c iw ... set power_save off`）。
- **计数器双采样 diff**：每次抓快照保存 `/proc/net/{wireless,dev}` 原文到 `files/log/prev_counters.txt`，
  下次抓取时自动输出**两次之间**的收发/丢包增量（rx_errs/rx_drop 等按列算差）。用法：复现断连前后
  各开一次日志页——errs/drop 涨得快=链路在丢；不动=瓶颈不在丢包。
- **MuMu 实测通过**（versionCode 9）：0 崩溃；两次采样 diff 正确输出 eth0/eth1/lo 增量
  （rx_bytes/rx_packets 按列差分）；亿连检测（net.easyconn）不受影响。
- 判定矩阵（拿到车机数据后）：RSSI 好+RTT 烂→驱动/省电（软）；RSSI 差（<-65 且手机在旁）→天线/射频（硬）；
  GO 省电 on+RTT 周期尖峰→关省电即解；errs/drop 快涨+RSSI 好→芯片 GO 并发瓶颈（平台通病）。

### v1.6.1（MuMu 实测修复 yilianRecon 包匹配 bug）

- MuMu 4.4.4 + 亿连 7.3.7（net.easyconn）实测发现：**亿连永远匹配不上**。根因两个：
  ① `reconPackages` 取自 `pm list packages -f`（32KB 上限），MuMu 上输出在 PrintSpooler 处被截断，
  第三方段（含 net.easyconn）整段丢失；② `pickPackages` 不处理 `-f` 格式
  （`package:/path/xxx.apk=com.foo` 应取最后一个 `=` 之后）和 `AdvActions.run` 追加的 `(exit=N)` 尾巴。
- 修复：`envRecon` 额外存 `-3` 列表（上限提到 64KB，`-f` 提到 256KB），yilianRecon 收 `-f`+`-3` 拼接；
  `pickPackages` 剥 `(exit=N)` + 取 `=` 后真包名（`dumpCandidates` 同款解析一并修）。
- **MuMu 实测通过**（versionCode 8）：装/启/日志页 0 崩溃；分层 UI 正常；诊断快照含
  `亿连候选包 net.easyconn` + `亿连包详情`（MuMu 无 root 故 DUMP 被拒，车机 eng 版走 su 出全量）；
  HTTP 18081 日志下载页正常（refreshFiles 列出 diagnostic.txt）。
- ⚠ adb 本地路径坑：`MSYS_NO_PATHCONV=1` 会连**本地**路径转换一起禁掉，adb push/install/pull 的
  本地参数必须写 `C:/...` 形式；`install -r ... | tail -1` 会吞掉失败行，装完必须 `dumpsys package` 复核 versionCode。
- 与 CarLife 并存：**不冲突**（包名不同、无 `sharedUserId`、双方都无 `ContentProvider`，
  签名不同只在"同包名升级"时才校验）

### v1.6（WiFi 直连诊断增强 + 主界面 Java 化重构）

- **诊断增强**（`BootDiagnostics.java`）：新增 `hwRecon`（/proc/cpuinfo·meminfo·version·df、
  /proc/net/wireless·dev、ip addr/route 免 root 段；root 时加 `dumpsys wifi`/`dumpsys connectivity`
  过滤段 + root 全量 logcat 按 wifi/p2p/RSSI/disconnect/reason= 关键行过滤）与 `yilianRecon`
  （亿连候选包识别→包详情/运行进程/uid 网络连接/logcat 过滤，识别不到时提示人工看 `-3` 包列表）。
  `AdvActions.run()` 内部读取上限 128KB→4MB（否则 root logcat 被静默截断）。
- **主界面 Java 化**：`MainActivity.smali` 删除，改 `MainActivity.java` 走 build_win.sh 的
  javac+D8 合并通道（避开手写 smali 的 Dalvik VerifyError 老坑）。UI 分层：头部（标题+副标题）→
  「我的规则」（计数+添加按钮+列表）→「诊断与日志」（下载按钮+说明）。
- **两条编译期铁律**（新坑记录）：① 构建用 stub android.jar **无 org.json**，Java 类不许 import
  org.json；② smali 类对 javac 不可见——RuleStore/Util 走反射、组件拉起用 `setClassName`
  字符串形式（`getPackageName()` 拼接，不硬编码包名）。逻辑仍由 smali 版单一实现，不复制不漂移。
- 修旧 bug：旧版点「下载日志」在主线程同步跑 capture()（su 探测+logcat 可达 30s）会 ANR，
  现统一由 LogActivity.onCreate 的后台线程执行。
- versionCode 7 / versionName 1.6；成品 `dist/BootTask_v1.6.apk`。
- 验证：javac 通过、D8 合并、apksigner v1 校验过、dex 逐项核对（MainActivity/v1.6 标记/smali 类/反射串全命中）。
  （注：本版的 yilianRecon 包匹配 bug 在 v1.6.1 修复；运行态以 v1.6.1 的 MuMu 实测为准。）

### v1.3（车机失效诊断 + 扫码日志）

- 首页新增「下载日志」，复用 CarLife 已实测的二维码与 HTTP 下载核心，独立使用 `18081`，避免与 CarLife 日志页冲突。
- 开机广播、Service 启停、规则数量/命中、动作结果、规则保存失败均写入 `files/log/boottask.log`。
- 打开下载页前生成 `files/log/diagnostic.txt`，含规则原文、系统信息与 256 KB 过滤 logcat。
- 规则为空时首页明确提示；保存失败不再误报「已保存」。
- 强制内部安装，降低车机把 APK 放到外置存储后收不到开机广播的概率。

### v1.2（代码审查修复）

| 项 | v1.1 | v1.2 | 为什么 |
|---|---|---|---|
| 打开 App 拉起 ExecService | ❌ 只有保存规则/收到开机广播才起 | ✅ `MainActivity.onCreate` 补 `startService` | README 原文「打开一次 App 服务即常驻」是假的：服务被杀后亮屏/解锁规则静止，必须重存规则才复活 |
| versionCode / versionName | 2 / 1.1 | 3 / 1.2 | 覆盖升级 |

构建环境坑（本机 aarch64）：apktool 内置 `prebuilt/linux/aapt2` 是 x86-64，直接报
`Execution failed (exit code = 126)`。修法（已生效）：
`podman run --privileged --rm docker.io/tonistiigi/binfmt --install x86_64` 注册 binfmt
（qemu-x86_64 模拟），无需改 apktool。

### v1.1（针对 4.4.2 车机装不上的兼容性改造）

| 项 | v1.0 | v1.1 | 为什么 |
|---|---|---|---|
| `minSdkVersion` | 19 | **8** | 部分车机 ROM 的 `ro.build.version.sdk` 会谎报成 < 19，会静默 `INSTALL_FAILED_OLDER_SDK` |
| 签名 | v1+v2+v3（uber-apk-signer） | **纯 v1**（SHA-1 摘要） | 去掉 APK Signing Block 与 `X-Android-APK-Signed: 2, 3`，老 Dalvik 最稳 |
| 图标 | 无（默认图标） | `@drawable/ic_launcher` | 个别 OEM 安装器对无 icon / 无 resources.arsc 的包处理不佳 |
| 文件名 | `开机任务.apk`（中文） | **`BootTask_v1.1.apk`（ASCII）** | **实测中文文件名在 adb 安装时直接 `INSTALL_FAILED_INVALID_URI`** |
| `LOCKED_BOOT_COMPLETED` | 有（API 24+） | 移除 | 4.4 上无用，减少 OEM 解析变量 |
| versionCode | 1 | 2 | 支持覆盖升级 |

MuMu 4.4.4 回归全过：装/启/三页面、规则落盘、`am broadcast BOOT_COMPLETED` →
延迟 2s → CarLife 前台拉起（日志 `rule matched, executing` → `launched com.baidu.carlifevehicle`）。

### 排查工具：安装自检包 `dist/btcheck.apk`

**用途：隔离"车机环境问题" vs "BootTask 包问题"。** 它是个只有一页 TextView 的最小 App，
包名 `com.btcheck`，minSdk 8，纯 v1 签名，4 KB。

- `btcheck.apk` 能装上、能打开 → 说明车机安装环节没问题，问题在 BootTask 包本身（再反馈给我）
- `btcheck.apk` 也装不上 → 车机的安装器/系统在拦（未知名来源开关、ROM 白名单、/data 满等）

### 车机装不上时的定位步骤（拿到真实错误码）

4.4.2 车机"没报错就是装不上"，九成是 OEM 定制安装器把真实失败码吞了。用 adb 拿真相：

```bash
# 1) 看系统真实版本（若 sdk 不是 19，则 minSdk=19 的包必被拒）
adb shell getprop ro.build.version.release; adb shell getprop ro.build.version.sdk

# 2) 直接 pm install，错误码不会被安装器 UI 吞掉
adb push BootTask_v1.1.apk /data/local/tmp/
adb shell pm install -r /data/local/tmp/BootTask_v1.1.apk

# 3) 看 /data 剩余空间（满了会静默失败）
adb shell df /data

# 4) 边装边抓 logcat，看 PackageManager / dexopt / VFY
adb logcat -c && adb install -r BootTask_v1.1.apk && adb logcat -d | grep -E "PackageManager|dexopt|VFY|INSTALL"

# 5) 若以前装过同名包且签名不同 → 卸干净再装
adb shell pm uninstall com.boottask
```

**兜底方案：装成系统应用**（车机一般有 root，`BOOT_COMPLETED` 广播也更可靠）：

```bash
adb remount                      # 或 adb shell mount -o remount,rw /system
adb push BootTask_v1.1.apk /system/app/BootTask.apk   # 4.4 用 /system/app，文件名必须 ASCII
adb shell chmod 644 /system/app/BootTask.apk
adb reboot
```

系统应用不走安装器，能绕开 OEM 安装器的所有限制；4.4 不需要 priv-app 也能收开机广播。


---

## 一、CarLife 的开机自启是怎么做的（逆向结论）

源码位置：`AndroidManifest.xml` + `BroadcastActionReceiver.smali`

| 项 | 内容 |
|---|---|
| 权限 | `<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>` |
| 接收器 | `com.baidu.carlifevehicle.BroadcastActionReceiver`（`exported=false`） |
| 监听事件 | `android.intent.action.BOOT_COMPLETED`、`android.intent.action.LOCKED_BOOT_COMPLETED`（**两个** intent-filter，各自 `priority=2147483647` 最高优先级）；另有 `USB_DEVICE_ATTACHED` 走 USB 拉起 |
| 触发后动作 | 读配置开关 `La/a/a/a/l/b;->j`（"应用自启动"开关）→ 若开，则 `Handler.postDelayed(Runnable, b;->y)` **延迟若干毫秒**再用 `startActivity` 拉起自己的 `CarlifeActivity` |
| 额外动作 | 若是有序广播（`isOrderedBroadcast`）则调 `abortBroadcast()`，**抢占并截断**后面的接收器 |

关键 smali 片段（`BroadcastActionReceiver.onReceive`）：

```smali
const-string v1, "android.intent.action.BOOT_COMPLETED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
...
if-eqz v0, :cond_2      # 不是开机广播就跳过
sget-boolean v0, La/a/a/a/l/b;->j:Z     # 自启开关
if-eqz v0, :cond_1
    # 延迟 b.y 毫秒后拉起自己
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_1
invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z
if-eqz v0, :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V
```

**结论**：CarLife 并没有做什么黑科技，就是「`RECEIVE_BOOT_COMPLETED` 权限 + 监听 `BOOT_COMPLETED` / `LOCKED_BOOT_COMPLETED` + 延迟 `startActivity`」。这套机制完全可以抽成独立 App。

---

## 二、BootTask 做了什么

### 首页（规则列表）
```
┌──────────────────────────────┐
│         添加规则              │
├──────────────────────────────┤
│ [启用] 开机完成 -> 等待3秒后打开应用 com.baidu.carlifevehicle │
│ [启用] 屏幕解锁 -> 静音        │
└──────────────────────────────┘
```
- 点击任意规则 → 弹窗：**删除 / 启用·停用 / 取消**

### 添加规则页
| 字段 | 选项 |
|---|---|
| 触发事件 | 开机完成（`BOOT_COMPLETED`）/ 屏幕亮屏（`SCREEN_ON`）/ 屏幕解锁（`USER_PRESENT`） |
| 执行动作 | 打开应用 / 关闭应用 / 静音 / 取消静音 |
| 执行前等待秒数 | 任意整数，默认 0 |
| 选择应用 | 列出所有带桌面的已安装应用（标签+包名），点选即回填 |

### 触发与执行链路
```
BootReceiver（静态注册，最高优先级）
    ├ BOOT_COMPLETED / LOCKED_BOOT_COMPLETED  → ExecService(event=boot)
ExecService（常驻 Service，动态注册 DynReceiver）
    ├ SCREEN_ON   → event=screen_on
    └ USER_PRESENT→ event=unlock
ExecService.run()（工作线程）
    └ 逐条匹配 enabled 且 event 相同的规则
        ├ delay>0 → Thread.sleep(delay*1000)
        └ exec(): open/close/mute/unmute
```
- 规则存 `shared_prefs/rules.xml`，格式为 JSON 数组（`org.json`，Android 内置）
- 「打开应用」：`PackageManager.getLaunchIntentForPackage(pkg)` + `FLAG_ACTIVITY_NEW_TASK` + `startActivity`
- 「关闭应用」：`ActivityManager.killBackgroundProcesses(pkg)`（仅能杀后台，非 root 无法 force-stop——这是 Android 限制）
- 「静音/取消静音」：`AudioManager.setRingerMode(0 / 2)`
- 日志 TAG 统一为 `BootTask`

---

## 三、源码结构

```
BootTask/
├── build.sh                     编译、合并诊断/日志下载类、签名
├── apktool.yml                  apktool 工程配置 (minSdk 8)
├── AndroidManifest.xml          权限 + 组件声明
├── src/com/boottask/
│   └── BootDiagnostics.java     持久化诊断日志 + 日志下载页入口
├── smali/com/boottask/
│   ├── MainActivity.smali       首页：列表 + 添加 + 长按弹窗删除/启停
│   ├── EditActivity.smali       添加页：事件/动作/延迟/选应用
│   ├── AppPickActivity.smali    应用选择页（queryIntentActivities）
│   ├── BootReceiver.smali       开机广播接收器
│   ├── ExecService.smali        执行引擎 + 动态注册屏幕事件
│   ├── DynReceiver.smali        SCREEN_ON / USER_PRESENT 接收器
│   ├── RuleStore.smali          规则读写（SharedPreferences + JSON）
│   └── Util.smali               标签映射、描述串生成、Toast、数组适配器
└── dist/BootTask_v1.3.apk       成品
```

UI 全部**代码构建**（不用布局 XML）；执行主体保持 smali，仅诊断与日志下载复用 Java/D8。

---

## 四、构建

```bash
bash BootTask/build.sh
```

脚本在全新临时目录编译 smali，合并 CarLife 的 `LogDownloadActivity` / `LogHttpServer` 与
BootTask 诊断类，注入未压缩二维码资源，最后仅做 v1 签名。默认产物：
`BootTask/dist/BootTask_v1.3.apk`。

## 五、安装与激活

```bash
# 注意：仓库 *.apk 走 Git LFS，没装 git-lfs 时拷出来的是 130 字节指针文本，装必失败
git lfs pull --include="BootTask/dist/*"   # 先拉真包（file xxx.apk 应显示 Zip archive）
adb install -r dist/BootTask_v1.3.apk
# 首次打开 App 后，添加一条规则并确认显示「[启用]」；
# 重启后点「下载日志」，扫码即可取回 boottask.log 与 diagnostic.txt。
```

> Android 4.4/5.x：安装后先打开一次，并确认至少存在一条启用的规则。
> Android 6+：需要额外在系统设置里授予「自启动/后台运行」权限，部分 ROM 还需关闭省电限制。

---

## 六、v1.2 MuMu 模拟器实测记录

测试机：MuMu 模拟器 Android 4.4.4（API 19），1440×810

| # | 用例 | 结果 |
|---|---|---|
| 1 | 安装、启动，界面渲染 | ✅ 首页/添加页/应用列表 3 页正常 |
| 2 | UI 添加规则：开机完成 → 等待 3 秒 → 打开 CarLife | ✅ 落盘 `rules.xml`：`{"action":"open","pkg":"com.baidu.carlifevehicle","enabled":true,"delay":3,"event":"boot"}` |
| 3 | 模拟开机广播 `am broadcast -a android.intent.action.BOOT_COMPLETED -n com.boottask/.BootReceiver` | ✅ 日志 `boot completed, start ExecService` → `rule matched, executing` → `launched com.baidu.carlifevehicle`；前台变为 `com.baidu.carlifevehicle/.CarlifeActivity` |
| 4 | 静音动作（延迟 2 秒） | ✅ `ringer -> SILENT`，`dumpsys audio` 中 muted streams 由 `0x0` 变 `0x1a6` |
| 5 | 屏幕亮屏 → 取消静音 | ✅ 按电源键熄屏再亮屏，日志 `screen_on` 规则命中 → `ringer -> NORMAL`，muted streams 复位 `0x0` |
| 6 | 规则列表显示 | ✅ `[启用] 开机完成 -> 等待3秒后打开应用 com.baidu.carlifevehicle` / `[启用] 屏幕解锁 -> 静音` |

v1.3 已通过 Java 编译、apktool 打包、反编译复核、ZIP 完整性与纯 v1 签名验证；运行态待车机实测。

截图见 `../../_mumutest/bt1_main.png`、`bt2_edit.png`、`bt7_rulelist.png`、`bt8_rulelist_fixed.png`、`bt6_boot_fired.png`（CarLife 被拉起）。

---

## 七、踩坑记录（改 smali 造 App 才有的坑）

1. **Dalvik 校验器不允许汇合点寄存器类型不一致**
   `VFY: rejected Lcom/boottask/Util;.describe` —— 同一个 v2 在一个分支里是 `int`、另一个分支里是 `String`，两条路径汇合（label 处）即触发 `VerifyError`，App 一打开对应页面就闪退。
   **解法**：给寄存器定「类型责任制」——`v1/v4` 只放 String，`v2/v3` 只放 int；把带分支的逻辑拆到**只有 early return、没有汇合点**的小方法里（`enabledTag` / `delayText` / `pkgText`）。

2. **`try/catch` 的 catch 入口也是汇合点**
   同一个寄存器在 try 路径是 `String`、catch 路径是 `Throwable`，同样可能被判失败。最省事的办法是干脆不用 try/catch（全用 `optString/optInt/optBoolean`，不抛异常）。

3. **`android:label` 可以写中文字面量**，不必建 `strings.xml`；不加 `android:icon` 时用系统默认图标，4.4 显示正常。

4. **4.4 的 `am broadcast` 不支持 `-p <package>`**，只能 `-n <pkg>/<receiver>` 指定组件；`am start` 后 `input tap` 生效需要真实坐标系（用 `uiautomator dump` 取 bounds，屏幕 1440×810 vs 截图 1080×608 有缩放，别照截图坐标点）。

5. **规则用 JSON 存 SharedPreferences** 是最省事的做法（`org.json` 是 Android 内置，无第三方依赖）。

6. 若有 GUI 脚本改 `shared_prefs/*.xml`，务必 `chown <app uid>:root`（MuMu 的 `chown` 不支持 `-R`，一次只能一个文件），否则 App 读不到 prefs（详见 CarLife 那边的同类坑）。

## v1.6.14 手机传 APK 到车机（免 adb）

**入口**：主界面 →「传文件到车机」→「接收 APK 并安装」。

**流程**：车机打开接收页（起 HTTP 18082，二维码指向 `http://<车机IP>:18082`）→ 手机连同一网络（直连/热点/WiFi 均可）扫码或手输地址 → 手机浏览器选 APK 上传 → 车机收到即自动安装（可关）。

**安装的两条路**：
- 有 root：`su -c pm install -r <path>` 静默安装，全程无感。
- 无 root：`ACTION_VIEW` 拉起系统 PackageInstaller，车机上点一下「安装」。前提「未知来源」开关打开——关着时提示去设置开（root 时 App 会帮忙打开）。
- 4.4 上 `file://` 传给安装器是允许的（7.0 才禁），所以免 root 可行。

**实现要点**（改坏了按这个排查）：
- `UploadServer.java`：独立于 CarLife 仓库的 LogHttpServer（共享文件不动它），端口 **18082**，复用 `LogHttpServer.localIps()` 的 IP 优先级（直连 > WiFi > 热点 > 有线）。
- multipart 手写流式解析：按块扫 `\r\n--boundary`，**块尾保留 分隔符长度-1 字节**进下一轮（跨块边界不漏字节——否则 APK 尾部缺字节，安装报"解析包失败"）。已用 curl 实测 md5 一致。
- 上传文件落 `getExternalFilesDir/inbox/`（4.4 起写自己目录无需存储权限）。
- `Expect: 100-continue` 必须回 `HTTP/1.1 100 Continue`，否则部分客户端会卡住不发包。
- 服务随接收页 onStart/onStop 启停（页面关掉即放端口，不常驻）。
- assets：`recv.html`（车机二维码页，用 qrcode.js）、`upload.html`（手机上传页，XHR 进度条）。

**测试技巧**：`adb forward tcp:18082 tcp:18082` 后在 PC 上 `curl -F "file=@x.apk" http://127.0.0.1:18082/upload` 即可模拟手机上传（注意 Git Bash 的代理环境变量会劫持 127.0.0.1，要 `--noproxy '*'`）。

## v1.6.15 文件管理器 + 应用管理（手机遥控）

**入口**：主界面 →「文件管理器」/「传文件到车机」区。

**架构**：车机只跑 HTTP 服务 + 显示二维码，**所有操作在手机浏览器里做**（车机屏小，触屏操作不便）。

- 端口 **18083**，每次打开页面随机生成 8 位访问码（SecureRandom；鉴权失败强制延迟 300ms 防爆破），重启页面会变
- 手机打开 `http://车机IP:18083/fm.html?k=XXXXXX` 即可：浏览/下载/上传/新建目录/重命名/删除/复制粘贴/搜索/文本编辑/安装 APK
- **root 模式**勾选后可看/改系统目录（/etc、/system…），车机 eng 版可用；写系统文件走临时文件 + su cp 回目标（并 chmod 保权限位；非原子替换，但避开 shell 引号转义坑）
- **应用管理**（fm.html 顶部按钮）：列出车机全部应用（按第三方/系统筛选、按名称/包名搜索）→ 一键**卸载**或**启动**
  - 卸载两条路与装 APK 对称：有 root `pm uninstall` 静默（可选 -k 保留数据）；无 root 拉起系统卸载确认界面，车机上点一下确定
  - 不提供批量卸载系统应用（防手滑把车机搞砖），单个系统应用卸载会在文案里标注风险

**车机端二维码页**：左右排版（左二维码/右地址+说明），小屏（1024x600）也能显示全。

**实现要点**（改坏了按这个排查）：
- `ShareServer.java`：REST API（/api/list /api/read /api/write /api/op /api/apps /api/install /api/info /api/zip），`k=` 访问码鉴权；WakeLock 防息屏后 socket 失效；操作日志实时推到车机页面
- `FileOps.java`：root 模式用 `ls -la <dir>/` 解析（**尾斜杠必须加**——/sdcard 是软链接，不加只列链接本身一行）；Android 4.4 toolbox 的 ls 目录行没有 size 列，正则要兼容；su 超时 12s（卡授权弹窗快速失败），探测结果缓存 30s（授权后要等缓存过期或点「重试 root」）
- `AppManager.java`：卸载/启动；静默卸载后二次确认包真的没了（pm 偶发假成功）
- 测试坑：MuMu 截图是缩放图（1080 宽），**实际屏幕 1440x810**，input tap 坐标要按 wm size 算；MuMu 的 su 管理器不记住授权、重装后重置

## v1.6.16 诊断报告新增「P2P 角色 + 双连判读」

依据 10-01 车机日志实锤的断联机制（wlan0 连第三方热点 → 2.5 分钟后 P2P 组被拆），诊断快照新增自动判读段：

- **车机角色**：本机拿 192.168.49.1 = GO（SoftAP 在车机上跑）；其他地址 = client（GO 是手机）
- **双连告警**：P2P 组活跃且 wlan0 有 carrier/IP 时，直接输出大段 ⚠——TCC893x 单射频异信道并发 → RTT 尖刺（亿连弹「WLAN 速率低」）→ 驱动拆组（断联），并给出处置建议（关热点/取消保存）

用法不变：复现断连前后各开一次日志页，看这段 + 计数器增量即可定位。

## v1.6.17 直连保护（防热点双连断联，免 root）

**依据**：10-01 车机日志实锤——P2P 直连组活跃时 wlan0 连上安卓热点（172.29.200.x，ANDROID_METERED）→ 单射频异信道双连 → 2.5 分钟后组被拆（先弹「WLAN 速率低」后断联）。

**主界面新增「直连保护」分区（免 root，走 WifiManager，4.4 只需 CHANGE_WIFI_STATE）**：

- **开启直连保护**：后台 Service（`P2pGuard`）每 8 秒巡检 `ip -f inet addr`：
  - P2P 组接口（p2p*，192.168.49.x）活跃 且 wlan0 拿到非 49 网段 IP → **立即 disableNetwork(netId)+disconnect()**：断开热点并禁止自动重连（**配置保留**）
  - 组活跃但 supplicant 正在关联（ASSOCIATING/HANDSHAKE/COMPLETED）→ 提前切断
  - 组不存在 → 不动作，**热点模式照常可用**
- **立即检查并断开热点（单次）**：不开守护，手动跑一次巡检
- **恢复热点自动连接**：把所有被禁用的已保存网络重新 enable（用热点模式前点这个）
- 状态行实时显示：守护状态 + 最近动作 + p2pguard.txt 日志尾部（`files/log/p2pguard.txt`，随日志 zip 带出）

**实现要点**：
- `P2pGuard.java`：START_STICKY 服务；`ip -f inet addr` 按 `数字: 接口名` 分段解析 inet；startService 是异步的，UI 点完按钮延迟 1.2s 再刷状态（否则读到旧值）；readLog/logFile 支持外部传 Context（守护没启动过时 sCtx 为 null）
- 6.0+ ROM 上 disableNetwork 可能 SecurityException——捕获后写日志提示手动处理；车机 4.4 无此限制
