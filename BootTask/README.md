# 开机任务（BootTask）—— 开机事件触发动作的独立 App

从 CarLife 车机端「开机自启」功能反向分析而来，做成一个**独立、通用**的开机事件自动化工具。

- 包名：`com.boottask`
- 最低版本：Android 2.2（API 8，实际按 4.4 编写）—— 兼容一切 4.x，**包括 4.4.2 车机**
- 构建方式：执行主体为手写 smali；诊断与日志下载用一个小型 Java/D8 类合并进单 dex
- 成品：`dist/BootTask_v1.4.apk`（**纯 v1 签名**）；v1.1~v1.3 同目录留档
- 与 CarLife 并存：**不冲突**（包名不同、无 `sharedUserId`、双方都无 `ContentProvider`，
  签名不同只在"同包名升级"时才校验）

### v1.4（静音真正压住车机媒体声道）

| 项 | v1.3 | v1.4 | 为什么 |
|---|---|---|---|
| mute 动作 | 只 `setRingerMode(SILENT)` | 追加 `setStreamVolume(STREAM_MUSIC,0)` + `setStreamMute(STREAM_MUSIC,true)` | 车机媒体输出走 STREAM_MUSIC，不吃铃音模式（4.4.2 车机实测：铃音静音后媒体照放） |
| unmute 动作 | 只 `setRingerMode(NORMAL)` | 追加 `setStreamMute(STREAM_MUSIC,false)` + 音量恢复到最大值一半 | 对称恢复 |
| versionCode | 4 (1.3) | 5 (1.4) | 覆盖升级 |
| build.sh | — | 补拷 `NetWatch.java`（1.30 起共享的 LogDownloadActivity 引用它，不补会 javac 失败） | 源码漂移 |

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
