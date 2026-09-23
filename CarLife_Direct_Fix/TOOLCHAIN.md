# 工具链

> 本目录**不收录** `tools/`（737 MB，主要是内嵌 JDK），只记录版本与用法。
> 原始位置：`C:\PJGG\apk\tools\`

## 清单

| 工具 | 版本 | 路径 | 用途 |
|---|---|---|---|
| JDK | **17.0.20.1+1** | `C:\PJGG\apk\tools\jdk-17.0.20.1+1` | 跑 apktool / 签名器 |
| apktool | **3.0.3** | `C:\PJGG\apk\tools\apktool.jar` | 反编译 + 重打包 |
| uber-apk-signer | **v1.3.0** | `C:\PJGG\apk\tools\uber-apk-signer.jar` | zipalign + v1/v2/v3 签名 |
| Python | **3.13.12**（受管） | `C:\Users\gpj\.workbuddy\binaries\python\versions\3.13.12\python.exe` | 跑补丁脚本 |
| adb | — | `C:\Program Files (x86)\Nemu\vmonitor\bin\adb_server.exe` | 调试 |

> MuMu 的是**独立 adb server**，与 Android SDK 自带的不是同一个。
> 通过 `ANDROID_ADB_SERVER_PORT` 区分端口：**MuMu 用 5039，真机用 5037**。
> MuMu 的 daemon 经常被挤掉，脚本里都写了重连重试。

## 常用命令

```bash
# 公共环境
export JAVA_HOME="C:/PJGG/apk/tools/jdk-17.0.20.1+1"
APKTOOL="C:/PJGG/apk/tools/apktool.jar"
SIGNER="C:/PJGG/apk/tools/uber-apk-signer.jar"

# 反编译（全量，含 resources 与 smali）
"$JAVA_HOME/bin/java" -jar "$APKTOOL" d <apk> -o _sm16 -f

# 重打包
"$JAVA_HOME/bin/java" -jar "$APKTOOL" b _w110 -o _out/app.apk -f

# 签名（--allowResign 允许对已签名 APK 重签；不加 --overwrite，输出目录需不存在）
"$JAVA_HOME/bin/java" -jar "$SIGNER" -a _out/app.apk -o _out/signed --allowResign

# 验签
"$JAVA_HOME/bin/java" -jar "$SIGNER" --verify -a <signed.apk>
```

## 校验签名有效性

签名器日志里应出现：

```
- zipalign success
- sign success
- zipalign verified
- signature verified [v1, v2, v3]
```

## 基线 APK 基本信息

| 项 | 值 |
|---|---|
| 包名 | `com.baidu.carlifevehicle` |
| versionCode / versionName | `16` / `4.0.M1.3-mod1.6` |
| minSdk / targetSdk | `16` / `30` |
| 结构 | 单 `classes.dex`（无 multidex，规避了多 dex 合并风险） |
| apktool framework | id=1（`%LOCALAPPDATA%\apktool\framework\1.apk`） |

## 依赖说明

* **本机没有 d8 / dx / baksmali 独立二进制** → 无法把 Java 编译回填 dex，
  因此所有改动都只能**手写 smali**。（apktool 自带 smali/baksmali 库，够用。）
* apktool 3.0.3 输出目录里会带 `build/`、`unknown/` 两个特殊目录：
  `build/` 是打包缓存（本工程已从源码树中剔除）；`unknown/` 是 apktool 无法归类、
  打包时要原样塞回 APK 的文件，**不要删**。
