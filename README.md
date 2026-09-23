# CarLife 车机端「安卓 4.4.2 直连」工程

让 **百度 CarLife 4.0 车机端**（包名 `com.baidu.carlifevehicle`）在一台 **Android 4.4.2** 的车机上
跑通 **WLAN 直连（WiFi Direct）**、**热点**、**USB 有线** 三条连接链路。

技术路线（已拍板 **A 方案**）：以 **1.6 修改版** 为唯一载体，做 **apktool 反编译 → 手写 smali 补丁 →
重打包签名**，**不**把 CarLife 5+ 版移植到 4.4 上。5+ 版只作**逻辑参考**（代码几乎没混淆，读起来舒服）。
`minSdkVersion` 全程固定 **16**，不得上调。

> 详细的踩坑记录、类名映射、构建产线约定，见 **[AGENTS.md](AGENTS.md)**（与 `CLAUDE.md` 内容同步）。
> 本文件专注回答一个问题：**每个包在哪、最新 APK 是哪个。**

---

## 一、包 → 源码 → 最新 APK 速查表

| # | 包 / 用途 | 源码位置 | 最新 APK | 状态 |
|---|---|---|---|---|
| 1 | **CarLife 车机端个人修改版**<br>`com.baidu.carlifevehicle` | 工程树 `CarLife/01_工程源码/_w118/`<br>补丁 `CarLife/02_补丁脚本/patch_v15_直连热点诊断.py` | `CarLife/05_产物/CarLife4.0车机端个人修改版1.18_直连热点诊断.apk`<br>2,614,521 B · versionCode 118 | 已构建+签名；**车机实测待做** |
| 2 | **BootTask 开机任务**<br>副产物独立 App（纯手写 smali，不依赖任何 SDK） | `BootTask/smali/` + `BootTask/AndroidManifest.xml` | `BootTask/dist/开机任务.apk`<br>16,727 B | MuMu 实测通过 |
| 3 | **CarLife 5+ 参考实现**<br>`com.muyetuge.carlifevehicle`（未混淆，只读） | `CarLife5plus/03_反编译Java/`<br>`CarLife5plus/02_反编译Smali/` | `CarLife5plus/01_原始APK/百度CarLife4_v2026.01.06.2006_共存_安卓5+.apk`<br>6,153,832 B | 参考，不产出成品 |
| 4 | **亿连车机端 V7.0.1 参考实现**<br>`net.easyconn`（只读） | `Yilian/01_反编译Java/`<br>`Yilian/02_反编译Smali/` | `Yilian/03_原始APK/亿连手机互联V7.0.1.apk`<br>42,673,887 B | 参考，不产出成品 |
| 5 | **CarLife 1.0~1.10 历史存档** | `CarLife_Direct_Fix/2-patch-src/`（补丁）<br>`CarLife_Direct_Fix/3-smali-src/`（完整 smali 工作树） | `CarLife_Direct_Fix/6-dist-apk/CarLife4.0车机端个人修改版1.10_直连修复v7_亿连式P2P自举器.apk`<br>2,540,650 B | 存档 |
| 6 | **1.6 修改版基线**（补丁的输入，一切从这里开始） | — | `CarLife_Direct_Fix/1-baseline-apk/CarLife4.0车机端个人修改版1.6_连接模式_中文日志_等待提示.apk`<br>2,536,554 B | 基线，勿改 |

**每个包只保留最新一个 APK**，其余历史版本已移出仓库（见 §五「清理说明」）。

---

## 二、目录地图

```
apk/
├── README.md / AGENTS.md / CLAUDE.md   ← 说明文档（AGENTS.md = 完整接手指引）
│
├── CarLife/                            ★ 主工程（1.6 修改版的全部工作成果）
│   ├── 01_工程源码/_w111 ~ _w118/       1.11 ~ 1.18 各版本工程树（_w118 = 当前最新）
│   ├── 02_补丁脚本/
│   │   ├── patch_v8_三链路加固.py       → _w111 (1.11)
│   │   ├── patch_v9_USB免授权.py        → _w112 (1.12)
│   │   ├── patch_v10_去引导页.py        → _w113 (1.13)
│   │   ├── patch_v11_修复自举分支.py    → _w114 (1.14)
│   │   ├── patch_v12_移植5+心跳与设备名.py → _w115 (1.15)
│   │   ├── patch_v13_日志下载.py        → _w116 (1.16)
│   │   ├── patch_v14_日志按钮.py        → _w117 (1.17)
│   │   ├── patch_v15_直连热点诊断.py    → _w118 (1.18，当前最新)
│   │   ├── logxfer_src/                 日志下载功能的 Java 源码 + 前端资产 + 转换脚本
│   │   │   ├── java/ assets/logxfer/    改这里，再跑 构建日志下载smali.py
│   │   │   ├── smali/                   转换产物，patch 脚本直接复制
│   │   │   └── tools/{r8.jar,android.jar}  转换用工具链（构建 APK 时不需要）
│   │   ├── verify_dalvik_合并点检查.py  ★ 构建门禁，必跑
│   │   ├── 校验并补齐工程.py            ★ 完整性门禁，必跑
│   │   └── 历史_patch_*.py              1.7~1.9 早期补丁，留档
│   ├── 03_构建脚本/
│   │   ├── build.sh                     ★ 一键构建 + 签名
│   │   ├── install_priv_app.sh           装成 priv-app（USB 免授权用）
│   │   ├── 验二维码.py                   把截图里的二维码解出来（zxing）
│   │   └── 清理构建目录.py               回收构建中间目录
│   ├── 04_文档/                          每一版的改动说明 + 深度分析（10 篇）
│   └── 05_产物/                          ★ 最新 APK + 各版本验证截图/日志
│
├── CarLife5plus/                       5+ 参考实现（未混淆）
│   ├── 01_原始APK / 02_反编译Smali / 03_反编译Java / 04_文档
│
├── Yilian/                             亿连车机端 V7.0.1（另一份参考实现）
│   ├── 01_反编译Java / 02_反编译Smali / 03_原始APK / 04_文档
│
├── CarLife_Direct_Fix/                 1.0~1.10 里程碑存档（自带 README.md / TOOLCHAIN.md）
│   ├── 1-baseline-apk/  2-patch-src/  3-smali-src/  4-build-scripts/
│   ├── 5-test-scripts/  6-dist-apk/   7-docs/       8-evidence/
│
├── BootTask/                           副产物：独立「开机任务」App
│   ├── smali/ AndroidManifest.xml apktool.yml  dist/  screenshots/  README.md
│
├── tools/                              工具链（JDK / jadx 已被 .gitignore 排除）
│   ├── apktool.jar                     [LFS]
│   ├── uber-apk-signer.jar             [LFS]
│   ├── jdk-17.0.20.1+1/                忽略（可重新下载）
│   └── jadx/                           忽略（可重新下载）
│
└── .workbuddy/                         项目记忆与工作日志（memory/）
```

---

## 三、版本演进（CarLife 车机端）

| 版本 | 内容 | 验证状态 |
|---|---|---|
| 1.6 修改版 | **基线**：连接模式记忆 + 中文日志 + 等待提示 | — |
| 1.7 ~ 1.10 | 直连修复、蓝牙自动开启、P2P 设备名、2.4G、亿连式 P2P 自举器 | 真机部分通过 |
| 1.11 | 失败分级 / DNS-SD + 组播锁 / 断线自愈 / USB 弹窗去抖 / 抑制发现重排 | 真机 Android 12 通过 |
| 1.12 | USB 免授权（透明 Activity + 静默 openDevice 三级判定 + MANAGE_USB） | 真机零崩溃，静默层未实测 |
| 1.13 | 去掉开机引导页（停留 2000ms → 100ms） | MuMu 通过 |
| 1.14 | 修好自举器分支写反（`j$b` 的 `if-eqz`→`if-nez`、`j$a` 的 reason 1/2 对调） | MuMu 通过 |
| 1.15 | 移植 5+ 的**心跳看门狗** + **设备名反向兜底** | MuMu 通过；车机待验 |
| 1.16 | 移植 5+ 的**扫码下载日志**（内嵌 HTTP 18080 + 二维码） | MuMu 全链路通过 |
| 1.17 | 把「下载日志」做成**主界面按钮**（去掉 1.16 多出的独立桌面图标） | MuMu 16 项通过；车机待验 |
| **1.18（当前）** | **直连/热点三症状的定位 + 修复**：蓝牙阶段静默早退补日志 + 空配对列表 5s 自愈重试；模式切换异步化（新增 `ConnSwitchTask`）；热点补 3 条日志 | 已构建签名；**车机实测待做** |

1.18 的完整定位过程见 [`CarLife/04_文档/1.18_直连热点诊断与修复.md`](CarLife/04_文档/1.18_直连热点诊断与修复.md)。

---

## 四、构建与验证

### 构建（一键）

```bash
cd /c/PJGG/apk
PRJ="C:/PJGG/apk/CarLife/01_工程源码/_w118" \
NAME="CarLife4.0车机端个人修改版1.18_直连热点诊断.apk" \
REF=_w117 \
bash "C:/PJGG/apk/CarLife/03_构建脚本/build.sh"
```

`build.sh` 会：每轮新建 `_bw_*` 纯复制工作目录 → 两个门禁 → `apktool b` → 签名（v1+v2+v3）
→ 输出到 `CarLife/05_产物/`。

### 两个门禁（交付前必跑）

```bash
cd CarLife/02_补丁脚本
python 校验并补齐工程.py _w118 _w117 --fix     # 工程完整性（抓「整份文件缺失」）
python verify_dalvik_合并点检查.py _w118        # Dalvik 寄存器合并点合法性
```

> ⚠️ 光看文件大小会被骗：本项目 1.11~1.15 的 APK 大小**完全相同**（2,540,650 字节）。
> 必须用 `unzip -p <apk> classes.dex | grep -cF "<新字符串>"` 做条目级核对。

### 工具链

| 工具 | 版本 | 位置 | 备注 |
|---|---|---|---|
| apktool | 2.x | `tools/apktool.jar` | 入库（LFS） |
| uber-apk-signer | — | `tools/uber-apk-signer.jar` | 入库（LFS） |
| JDK | 17.0.20.1+1 | `tools/jdk-17.0.20.1+1/` | **已 gitignore**，需自行下载：<br>`https://api.adoptium.net/v3/binary/latest/17/ga/windows/x64/jdk/hotspot/normal/eclipse` |
| jadx | 1.5.3 | `tools/jadx/` | **已 gitignore**，非构建必需：<br>`https://github.com/skylot/jadx/releases/download/v1.5.3/jadx-1.5.3.zip` |

构建前需 `JAVA_HOME=C:/PJGG/apk/tools/jdk-17.0.20.1+1`。

---

## 五、Git LFS 与清理说明

### 二进制走 LFS

`.gitattributes` 已把 `apk / jar / aar / so / dex / zip / idsig / jmod / dll / jks / ttf / mp4 / pdf`
等二进制格式交给 **Git LFS**。克隆前先装：

```bash
git lfs install
git clone https://github.com/github-user112/apk.git
```

> **PNG / JPG 刻意没进 LFS**：`res/` 下共约 1.2 万个 PNG、合计仅 1.6 MB（多是几十字节的小图标），
> 进 LFS 会为每个文件单独建一个 LFS 对象，推送要上万次请求，得不偿失。

**JDK 与 jadx 未入库**（约 740 MB，可重新下载），`.gitignore` 已排除，按 §四 的链接自行下载即可。

### 清理说明

为保持仓库干净，一次性删掉了 168 项临时内容：顶层 `_*` 草稿脚本与抓包日志、中途工作树
（`_bw_*` `_vchk_*` `_w16`~`_w110`）、首次探索的反编译中间产物（`jadx_out/` `_dec*` `_jx*`
`work/` `work2/` `signed/`）、旧版成品 APK。

> 这些内容**没有删除，只是移出了仓库**，完整保留在：
> `C:\PJGG\_apk_清理隔离_20260923\`（保持原相对路径，可直接搬回）。
> 确认无用后自行删除即可。

---

## 六、关键约束（血泪，改代码前必读）

1. **蓝牙不是可选项**。车机与手机通过蓝牙 SPP（UUID `00001101-…`）交换 WiFi 名称/频率/IP 等
   带外信息，之后才走 WiFi 传数据。
2. **Android 12+ 第三方 App 做不了老 SDK 的 P2P 组网**，改 smali 绕不过去；
   **车机 4.4.2 没这个限制** —— 那才是最终验收环境。
3. **MuMu 模拟器没有 Wi-Fi Direct、没有蓝牙**，只能验「链路在跑」，验不了「连得上」。
4. smali 的 `invoke`/`if-*` 只能用 `v0`~`v15`，寄存器不够就抽静态方法、只改两行调用点。
5. **分支方向已经写反过三次**（`if-eqz`==0 跳 / `if-nez`!=0 跳），静态检查抓不到，**必须实测**。
6. 每做一个新版本就**新增一个 `_w1xx` 工程树 + 一个 `patch_vNN_*.py`**，不要原地改上一版。

其余见 [AGENTS.md](AGENTS.md) §3「核心概念」与 §5「构建产线」。
