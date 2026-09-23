# 项目长期记忆：CarLife 车机端「安卓 4.4.2 直连」

## 目标
`com.baidu.carlifevehicle`（1.6 修改版）在 Android 4.4.2 车机跑通 WiFi Direct 直连（及热点/有线）。A 方案：1.6 打补丁，不移植 5+。minSdk 固定 16。

## 版本演进（`CarLife/01_工程源码/_w1xx`）
- 1.11 H失败分级/I DNS-SD+组播锁/K断线自愈/L USB去抖/F-3抑制重排｜1.12 USB免授权四层降级｜1.13 去开机引导页｜1.14 修 j$b 有无组判断+j$a reason 对调
- **1.18（当前）**：车机实测 1.17 报三症状后的「定位+修复」版
  - ① 蓝牙(阶段1)三处**静默 early-return** 补日志（走 `n/g$a.a`→ConnLog 上车机屏幕）+ 空配对列表 `Handler.postDelayed(d/d$c, 0x1388)` 每 5s 自愈重试（`d/a.smali`）
  - ② 模式切换异步化：**新增** `com.baidu.carlifevehicle.ConnSwitchTask`(继承 Thread，名 `CarLifeSwitch`)；`ConnModeHelper.selectMode()` 不再在 UI 线程跑 `m/d;i()`；`commit()`→`apply()`
  - ③ 热点 `e/a.a()` 补 3 条日志
  - 成品 2,614,521B / versionCode 118 / mod1.18；详见 `04_文档/1.18_直连热点诊断与修复.md`
- 1.16 扫码下载日志（内嵌 HTTP 18080 + 二维码）｜1.17 「下载日志」做成主界面按钮（放「方控」左，去掉独立桌面图标）
- 1.15：移植 5+ 的「保活」+「设备名兜底」
  - 🆕 `m/m/e/f`+`f$a` 心跳看门狗：2s 发 `0x20002`、30s(`0x7530`) 无收包 → `d.f()` terminate → patchK 自愈。插桩：`e/b c()` 收包 touch、`e/d a()` 起表、`e/d f()` 停表
  - 🆕 `d/m` 设备名兜底：`WIFI_P2P_THIS_DEVICE_CHANGED_ACTION`（API14）读系统 deviceName；插桩 `i.smali :cond_state_chg` + `e.smali` 两处
  - 不需移植（1.6 已有）：P2P 串行队列 `n/i/b`+`n/i/c/{b,a}`；IP 就绪轮询 `e.smali :cond_6`+1s
  - **MuMu(4.4.4) 实测过**：自举器基准全命中（含 `createGroup attempt 1/6`）、`CarLifeHB started`、零崩溃；切「热点」时打出 `CarLifeHB stopped` → 停表锚点可达（基类 `j.c;->f()V` 虚分派，调用点 `m.m.b:235/423`）
  - ⚠ `f$a.run()` 仅当 `f.c==1`（收到过对端包）才判超时 → MuMu 过不去，**发包/超时/设备名兜底只能上车机验**
- 早期补丁：A bdcf 加 `CONFIG_WIFI_DIRECT_NAME=CarLife-HU`+2.4G；B 蓝牙自动 enable()；C setDeviceName(API<29)

## 关键类映射
- 直连四件套 `m.m.d.{e,i,h,d}`；传输层 `m.m.e.d`（a=connect/f=terminate/g=send）；调度器 `a.a.a.a.n.h`（**每任务独立 Timer**）；自举器 `d.j`；自愈 `d.k`；组播锁 `m.m.e.e`；端口表 `m.m.e.b` 7 元数组；USB `c.c`/`c.f`；开机页 `a.a.b.n.r`；引导 `a.a.b.n.u`(2009)
- 带外消息号：`0x100001`/`0x100004`/`0x100007`/`0x100008`/`0x108006`；`i.f`：groupFormed→1

## 5+ 版（`CarLife5plus/`，未混淆，minSdk21）
协议层同源：SPP UUID、端口 7240/8240/9240/9241/9242/9340/9440（**7 通道全同**）、车机=TCP 客户端、类型 2/5/9、reason 1=不支持 2=BUSY。
**1.15 对齐度**：主链路阶段 0–6 已对齐；未对齐仅 2 项（`m7/f0` 前置自检、`m7/e0` 失败分级界面提示）。
我们比 5+ 多的 7 项：createGroup 自举、组播锁、DNS-SD、蓝牙自动 enable、setDeviceName、terminate 更彻底、USB 免授权。详见 `04_文档/1.15_vs_5+_对齐度核对.md`。

## 车机 4.4.2 三症状定位（2026-09-23）
- **直连"组网成功但进不去"**：阶段1 蓝牙 SPP 没通 → 手机拿不到 SSID/PSK 就不会 join 组，GO 只能等超时。`d/a.smali` 三处静默 return：target 名无匹配 / `getBondedDevices()` 为空（**且永不重试**）/ 全 connect 失败且 `d/d.h==0`。判据可信：`n/g.smali:455` 已把 SDK 日志器桥接到 `ConnLog`，屏幕上没蓝牙日志 = 真没走到
- **点热点卡死**：`ConnModeHelper.selectMode()` 在点击回调(=UI 线程)上同步跑 `m/d.i()`→`m/m/b.j()`(逐个旧任务 `f()`) + `V()`(建新任务) + `commit()` fsync。**P2P/USB 的 `f()`/`a()` 里都没有 sleep/wait/join** → 不是死锁，是 UI 线程同步活太多
- **热点连不上**：全仓（含 5+）**无** `WifiManager.addNetwork`/`WifiConfiguration` → 车机端**不会自己连手机热点**，必须用户先在车机 WLAN 里连手机热点；`e/a$a.run()` 只在 UDP 7999 收手机广播（收到时 SDK 打 `connect  packet:<IP>`）

## 关键约束（血泪）
1. 蓝牙是无线连接带外握手通道，不可省；手机端是百度二进制
2. Android 12+ 第三方 App 做不了老 SDK P2P 组网；车机 4.4.2 无此限制
3. smali invoke/if-* 只能 v0–v15；不够就抽静态方法只改两行调用点
4. **分支方向已写反三次**（if-eqz==0 跳／if-nez!=0 跳），静态检查抓不到，必须实测
5. bdcf 别加空的 CONFIG_TARGET_BLUETOOTH_NAME。`CONFIG_HU_BT_NAME/MAC`（仍 `xxx`/`yyy-zzz-xxx`）**只用在 `m/k/a/e`**（连上后发给手机的 feature config）→ **不是连接阻塞点**，不必等用户（原"待提供"已降级）
6. patchG 抑制 discoverPeers 后组丢失只能靠 patchK 自愈
7. USB 弹窗根因：AOSP 只认 Activity intent-filter，CarLife 挂在 Receiver
8. **构建产线**固化在 build.sh（细则见 skill `android-apk-mod-deploy`）：每轮全新 `_bw_*` 纯复制绝不删；`校验并补齐工程.py <目标> <参照> --fix` 当门禁（超时杀掉的复制会留**整份文件缺失**，md5 抓不到）；`/XD` 要绝对路径；robocopy 带 `/R:0 /W:0`
9. **交付前必做条目级对比**：1.11~1.15 大小全是 2540650，看大小会被骗。可用 `unzip -p <apk> classes.dex | grep -cF "<新字符串>"` 直接核成品 dex
10. **`verify_dalvik_合并点检查.py` 的两个坑（1.18 才修）**：① `const/4 vX,0x0` 必须建模为 **Zero/null**（apktool 代码里普遍拿它当 null，当 INT 会产生海量假冲突）② 不动点迭代会重复收集同一条错误，要按首次出现去重。另：`TARGETS` 是**跨版本累积**清单，"缺文件"只提示不报错（完整性归 `校验并补齐工程.py`）

## 环境
- tools/ 下有 apktool/signer/jadx，JAVA_HOME=`C:/PJGG/apk/tools/jdk-17.0.20.1+1`
- MuMu 4.4.4：`adb connect 127.0.0.1:7555` -P 5039；无 P2P／无蓝牙；**改 prefs 前先 `ls -ld /data/data/<pkg>` 取真实 uid**（本次是 u0_a49=10049）；屏幕 1440×810，页签 y≈205、x≈540/732/925，用 `input touchscreen tap`
- realme 真机 Android 12，adb -P 5039（当前已断开）
- Git Bash 先 `export PATH="/usr/bin:/bin:$PATH"`；adb/jar 不认 `/c/` 前缀；adb server 不跨 Bash 调用存活

## 待办
1. **车机 4.4.2 实机跑 1.18**：① 翻日志找 `==== [阶段1] 蓝牙带外握手 ====`（看落到"无配对设备/全连不上/SPP 已连上"哪支）② 再点热点确认是否还卡 ③ 看 `✔ 热点模式: UDP 7999 监听线程已启动` 与 `connect  packet:<IP>`
2. 要 100% 定位蓝牙问题需**车机端 logcat**（ConnLog 仅 24000 字符环形缓冲，会滚掉）
3. **失败分级透出到界面**（对齐 5+ `m7/e0`）
4. 心跳偏吵调 `e/f.smali a(d)` 的 `0x7d0`(2000ms)；蓝牙重试间隔在 `d/a.smali` 的 `0x1388`(5000ms)
5. 慢扫改无限；多网卡遍历；BootTask 上车机试开机自启
6. 1.18 **未做设备冒烟测试**（MuMu 没在线，7555 拒绝连接）→ `ConnSwitchTask` 的 VerifyError 风险待实机确认
