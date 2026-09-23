# 开机任务（BootTask）—— 开机事件触发动作的独立 App

从 CarLife 车机端「开机自启」功能反向分析而来，做成一个**独立、通用**的开机事件自动化工具。

- 包名：`com.boottask`
- 最低版本：Android 4.4（API 19）—— 与车机端一致，可直接在 4.4.2 车机运行
- 构建方式：**纯 smali 手写 + apktool 打包**（本机无 Android SDK，不需要 Java 源码）
- 成品：`dist/开机任务.apk`（v1+v2+v3 签名）

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
├── apktool.yml                  apktool 工程配置 (minSdk 19)
├── AndroidManifest.xml          权限 + 4 大组件声明
├── smali/com/boottask/
│   ├── MainActivity.smali       首页：列表 + 添加 + 长按弹窗删除/启停
│   ├── EditActivity.smali       添加页：事件/动作/延迟/选应用
│   ├── AppPickActivity.smali    应用选择页（queryIntentActivities）
│   ├── BootReceiver.smali       开机广播接收器
│   ├── ExecService.smali        执行引擎 + 动态注册屏幕事件
│   ├── DynReceiver.smali        SCREEN_ON / USER_PRESENT 接收器
│   ├── RuleStore.smali          规则读写（SharedPreferences + JSON）
│   └── Util.smali               标签映射、描述串生成、Toast、数组适配器
└── dist/开机任务.apk             成品
```

UI 全部**代码构建**（不用布局 XML），避免引入 res 依赖，也让工程保持纯 smali。

---

## 四、构建

```bash
export JAVA_HOME="C:/PJGG/apk/tools/jdk-17.0.20.1+1"
java -jar tools/apktool.jar b BootTask -o BootTask.apk
java -jar tools/uber-apk-signer.jar -a BootTask.apk -o _out/bt --allowResign
# 产物: _out/bt/BootTask-aligned-debugSigned.apk
```

## 五、安装与激活

```bash
adb install -r dist/开机任务.apk
# 首次打开 App 后，添加一条规则即可；动态事件（亮屏/解锁）由 ExecService 负责，
# 打开一次 App 或重启后服务即常驻。
```

> Android 4.4/5.x：装完直接生效。
> Android 6+：需要额外在系统设置里授予「自启动/后台运行」权限，部分 ROM 还需关闭省电限制。

---

## 六、MuMu 模拟器实测记录

测试机：MuMu 模拟器 Android 4.4.4（API 19），1440×810

| # | 用例 | 结果 |
|---|---|---|
| 1 | 安装、启动，界面渲染 | ✅ 首页/添加页/应用列表 3 页正常 |
| 2 | UI 添加规则：开机完成 → 等待 3 秒 → 打开 CarLife | ✅ 落盘 `rules.xml`：`{"action":"open","pkg":"com.baidu.carlifevehicle","enabled":true,"delay":3,"event":"boot"}` |
| 3 | 模拟开机广播 `am broadcast -a android.intent.action.BOOT_COMPLETED -n com.boottask/.BootReceiver` | ✅ 日志 `boot completed, start ExecService` → `rule matched, executing` → `launched com.baidu.carlifevehicle`；前台变为 `com.baidu.carlifevehicle/.CarlifeActivity` |
| 4 | 静音动作（延迟 2 秒） | ✅ `ringer -> SILENT`，`dumpsys audio` 中 muted streams 由 `0x0` 变 `0x1a6` |
| 5 | 屏幕亮屏 → 取消静音 | ✅ 按电源键熄屏再亮屏，日志 `screen_on` 规则命中 → `ringer -> NORMAL`，muted streams 复位 `0x0` |
| 6 | 规则列表显示 | ✅ `[启用] 开机完成 -> 等待3秒后打开应用 com.baidu.carlifevehicle` / `[启用] 屏幕解锁 -> 静音` |

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
