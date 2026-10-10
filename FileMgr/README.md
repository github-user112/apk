# 车机文件管家（FileMgr）—— 扫码上传安装 / 卸载软件 / 文件管理（含 U 盘）

从「开机任务」（`BootTask/`，`com.boottask`）**拆出的文件功能**独立成 App。
用户需求原话：「把文件管理这个功能，提取成一个新的 apk，原来的关于文件管理的不要了」。

- 包名：`com.carfiles`，应用名：**车机文件管家**
- 最低版本：Android 2.2（API 8，实际按 4.4 编写）—— 兼容一切 4.x，**包括 4.4.2 车机**
- 构建：`build.sh`（Linux）/ `build_win.sh`（Windows Git Bash），与 BootTask 同一套管线
- 成品：`dist/CarFiles_v1.0.0.apk`（versionCode 1）—— **与 BootTask 同一张证书**
  （`CN=BootTask`，SHA-256 `d2519f98…e39fd`；`keys/filemgr.p12` 是 `boottask.p12` 的拷贝，
  alias/密码不变）

## 三个功能（对应主界面三张卡）

### 1. 📱 扫码上传安装 APK

- 原 BootTask「接收 APK 并安装」原样搬家：`ReceiveActivity` + `UploadServer`（**18082**）
- 车机显示二维码（`recv.html` + `qrcode.js` 画码）→ 手机连同一网络扫码 →
  手机浏览器选 APK 上传 → 车机收到自动安装（root 静默 `pm install`，免 root 拉系统安装界面）

### 2. 📦 卸载软件（双入口，同一套后端 `AppManager`）

- **车机屏原生列表**（本工程新增 `AppListActivity`）：点应用行 →
  卸载 / 卸载但保留数据（`pm uninstall -k`）/ 启动 / 取消；系统应用先弹二次确认；
  root 静默卸，免 root 拉 `ACTION_DELETE` 系统确认框（需在车机屏上点确定）
- **手机扫码页**（`fm.html` 应用页 + `ShareServer /api/apps`）：搬家过来的原有入口
- 列表加载在后台线程（装机 App 多时 PM 查询会卡——主界面不许卡的教训）；`onResume` 重载，
  免 root 卸完回来自动刷新

### 3. 📁 文件管理（含 U 盘）

- **手机扫码页（推荐）**：`FileShareActivity` + `ShareServer`（**18083**）+ `fm.html` ——
  浏览/上传/下载/新建/重命名/删除/复制粘贴/搜索/文本编辑/安装 APK/应用管理，
  8 位随机访问码防爆破
- **车机屏本地浏览**：`FileManagerActivity`（快捷跳转 U 盘排最前）
- **U 盘/外置 SD 自动探测**（本工程新增 `FileOps.removableMounts()`）：
  解析 `/proc/mounts`——vfat/exfat 一律算，fuse/sdcardfs 只认带 usb/external/media_rw/sdcard1
  标记的挂载点（排除内置存储），再补一串常见路径兜底（`/mnt/usb*`、`/storage/usbdisk`、
  `/mnt/extSdCard`…）；接进 ShareServer `roots()`、车机屏快捷跳转、主界面状态行（回前台即刷新）

## ⚠ 升级顺序（重要）

**先装本 App，再升 BootTask 1.6.28。**

BootTask v1.6.28 起已移除 18082 上传服务（连同全部文件功能），装完 1.6.28 就没有
「手机传 APK」通道了。所以：

1. 用**现有 BootTask 1.6.27**（或更早）的 18082 页，或 adb / 车机文件管理器，
   装上 `CarFiles_v1.0.0.apk`
2. 以后传文件/装 APK 走本 App 的 18082；再更新 BootTask / 本 App 自己都靠它

## 端口（三个 App 各管各的，可同时开着）

| 端口 | 归属 | 用途 |
|---|---|---|
| 18081 | 开机任务 `com.boottask` | 扫码下载日志 |
| **18082** | **车机文件管家** | 扫码上传 APK + 安装 |
| **18083** | **车机文件管家** | 手机扫码文件管理（fm.html） |

## 源码结构

```
FileMgr/
├── AndroidManifest.xml        package=com.carfiles, versionCode=1, 5 个 Activity
├── apktool.yml                minSdk 8 / target 19
├── build.sh / build_win.sh    同 BootTask 管线（差异见内注）
├── assets/logxfer/
│   ├── fm.html                手机文件管理页（浏览/上传/卸载…，无品牌串，搬家直接用）
│   ├── recv.html              车机二维码页（qrcode.js 画码）
│   └── upload.html            上传页
├── keys/filemgr.p12           boottask.p12 的拷贝（同证书）
├── res/                       ic_launcher + strings.xml（app_name 由脚本按版本号生成）
├── smali/                     空（全部代码走 Java→D8；.gitkeep 占位）
└── src/com/carfiles/
    ├── MainActivity.java      主界面：深色卡片 3 分区 + 状态行（U 盘/root）
    ├── AppListActivity.java   ★ 新增：车机屏原生卸载列表
    ├── FLog.java              ★ 新增：替代 BootDiagnostics.log（logcat + 内外两份日志）
    ├── FileOps.java           搬家 + ★ 新增 removableMounts()（U 盘探测）
    ├── ShareServer.java       搬家（18083；roots() 接 U 盘探测）
    ├── FileShareActivity.java 搬家（扫码页 + NetWatch 网络变化刷新码）
    ├── FileManagerActivity.java 搬家（车机屏浏览；快捷跳转 U 盘优先）
    ├── ReceiveActivity.java   搬家（18082 扫码上传页）
    ├── UploadServer.java      搬家（18082 收包 + 触发安装）
    ├── ApkInstaller.java      搬家（root pm install / 免 root 系统安装界面）
    ├── AppManager.java        搬家（卸载/启动后端）
    └── AdvActions.java        搬家（su 执行器）
```

搬家方式：`sed` 换 `package com.boottask` → `com.carfiles`、路径字面量 `com.boottask` →
`com.carfiles`、`BootDiagnostics.log(` → `FLog.log(`，线程名/TAG `BootTask*` → `CarFiles*`。
`ShareServer`/`UploadServer` 依赖 `logxfer.LogHttpServer.localIps()`（取本机 IP 的唯一实现），
所以构建时同样编入 logxfer 三件套（`LogHttpServer`/`LogDownloadActivity`/`NetWatch`，
CarLife 专属类剔除）——`LogDownloadActivity` 只是随包编译，**Manifest 未声明**，不会被拉起。

## 构建

```bash
bash FileMgr/build.sh          # Linux
bash FileMgr/build_win.sh      # Windows Git Bash
```

管线：copytree（不含 src/keys/dist）→ 按 versionName 生成 app_name →
glob 全量 javac（logxfer 三件套合并、CarLife 专属类剔除）→ D8 →
apktool b（本工程 smali 为空，**base 无 dex 时直接用新 dex，有则两段合并**，脚本两种都处理）→
注入 `qrcode.js`（STORED，WebView 要字节稳定）→ v1 签名 → 交付自检
（fm/recv/upload.html + qrcode.js + classes.dex 五个条目必须都在）。

## 权限（逐个核对，无冗余）

| 权限 | 使用者 |
|---|---|
| INTERNET | 18082/18083 两个 HTTP 服务 |
| ACCESS_WIFI_STATE | 网络变化监听（刷新二维码） |
| WRITE_EXTERNAL_STORAGE | 写 `/sdcard/Android/data/com.carfiles/files`（收件箱）、`/sdcard/carfiles` 日志 |
| WAKE_LOCK | ShareServer 传输期间防休眠 |

没有 BOOT_COMPLETED（不自启）、没有 BLUETOOTH、没有 KILL_BACKGROUND_PROCESSES（卸载走
`ACTION_DELETE`/`pm uninstall`，不需要）。

## 验证记录

### v1.0.0（静态验证，**实机未跑**）

- Linux 构建 0 error；apksigner verify 通过
- 解码 manifest：package `com.carfiles`、versionCode 1 / versionName 1.0.0、
  label「车机文件管家」、app_name「车机文件管家 1.0.0」（版本号自动推导 ✓）
- 条目级：11 条，`assets/logxfer/{fm,recv,upload}.html` + `qrcode.js` + `classes.dex` 全在
- dex 串：MainActivity / AppListActivity / FileShareActivity / ReceiveActivity /
  FileManagerActivity / ShareServer / removableMounts / localIps 全在；
  **`com.boottask` 零残留**
- 证书：与 BootTask 同一张（`d2519f98…e39fd`）

### 待实机验证

1. 扫码上传安装：18082 扫码 → 手机传 APK → 车机装（root / 免 root 两条路）
2. 卸载列表：候选数量、root 静默卸、免 root 系统确认框、卸完列表刷新
3. 文件管理：18083 扫码进 fm.html、U 盘路径出现在根目录/快捷跳转、上传下载删改
4. 主界面状态行：U 盘插拔回前台刷新、root 检测不卡界面
5. 与 BootTask 并存：18081/18082/18083 同时活着互不干扰

## 历史出处

- 功能 1/3 = BootTask v1.6.14「手机传 APK」+ v1.6.15「文件管理器 + 应用管理（手机遥控）」
  原样搬家（其 README 对应章节已标注拆出）
- 功能 2 的车机屏列表 = 本工程新增（用户选「车机屏列表 + 手机扫码页」双入口）
- BootTask 侧的移除记录见 `BootTask/README.md` 文末 **v1.6.28** 条目
