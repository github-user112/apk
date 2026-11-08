# 车机 WiFi 热点开机自启

TCC893X / BCM4339 / Android 4.4.2 车机，上电冷启动后自动开热点：

| 项 | 值 |
|---|---|
| SSID | `9B66BEB4` |
| 密码 | `12345678` |
| 网关 IP | `192.168.43.1` |
| 信道 | 6 / WPA2-PSK |
| 实测耗时 | BOOT_COMPLETED → 热点可用 **2 分 10 秒** |

---

## 生效链路（唯一路径）

```
BootTask 1.6.70 收到 BOOT_COMPLETED
  → 读 rules.xml 命中 rule: action=adbcmd, delay=90
  → 等 90s（adbd 的 5555 此时才起来）
  → 连 127.0.0.1:5555 走 ADB 线协议执行：
       busybox nohup sh /data/local/hotspot/boot_hotspot.sh
  → 提权发生在 adbd 进程，绕过 zygote 的 PR_SET_NO_NEW_PRIVS
  → 脚本 settle 到 up>=150 → 卸 bcmdhd → 载入 APSTA 固件 op_mode=2
  → ndc softap startap + ifconfig 192.168.43.1 + dnsmasq
  → 守夜 5 分钟，被 framework 抢回会自动重建
```

**为什么不能直接给 App 提权**：App 是 zygote 子进程，内核已设 `PR_SET_NO_NEW_PRIVS=1`
且不可撤销，任何 setuid 位在内核层直接失效。mksu 版 `su` 被拦后不会报错，而是以 App
身份继续执行并 `exit 0`（伪成功），所以判定 root 必须探身份（`su -c id` 含 `uid=0`），
不能看退出码。详见 `v3/APP_CHANGE.md`。

---

## 目录

```
hotspot/
├── boot_hotspot.sh        车机端主脚本（部署到 /data/local/hotspot/）
├── dnsmasq.conf           dnsmasq 配置（脚本按 $H/dnsmasq.conf 读取）
├── 冷启动验证方案.md        早期验证方案存档（含已证否路线）
└── v3/
    ├── deploy_final.sh    ★ 唯一部署入口
    ├── install_apk.sh     装 BootTask APK（覆盖安装，保留 rules.xml）
    ├── inject_rule.sh     安全注入 rules.xml（属主用 dumpsys userId 解析）
    ├── p9_revert.sh       一键回滚到 STA 模式
    ├── app_route.sh       已停用，仅留档（默认 exit 1，勿用）
    ├── QUICKSTART.md      ★ 上车执行清单
    ├── APP_CHANGE.md      App 侧全部改动与根因（第 10~15 节是热点方案）
    ├── TEST_NOTES.md      完整体检报告
    └── README.md          v3 方案推演记录（部分章节已过期）
```

---

## 部署（从本目录执行）

```bash
cd hotspot/v3

bash deploy_final.sh check          # 只读体检，不改任何东西
bash deploy_final.sh all            # check → install → assets → rule → verify
bash deploy_final.sh trigger        # 免重启触发一次（要等 delay+20 秒）
```

`all` 会做 4 道自检，任一步失败立即停：

1. 设备端 `busybox sh -n` 语法检查（CRLF 会在这里被抓住）
2. 推送前后 `md5` 比对（不一致即失败）
3. 规则属主回读（写错属主会让 App 静默读不到规则，`rules=0`）
4. 部署后 `verify` 打印 op_mode / hostapd / dnsmasq / wlan0

**路径差异提醒**：`QUICKSTART.md` 里的绝对路径写的是原始开发目录
（`车机工具/热点自启/v3`），那是当时的工作位置；从仓库检出后请用 `hotspot/v3`。
脚本内部用的是 `$(dirname "$0")` 相对定位，两种位置都能跑
（`install_apk.sh` 会自动判断 `BootTask/dist` 在前一级还是两级）。

---

## 已知坑（都已在脚本里规避，改脚本前先看）

| 坑 | 现象 | 规避 |
|---|---|---|
| CRLF | Android mksh 报 `unexpected word (expecting "do")`，脚本根本不执行；PC 的 `sh -n` 看不出 | 仓库强制 `*.sh eol=lf`；`deploy_final.sh` 推送前再转一次 LF 兜底 |
| 无 `cut` / `tr` / `awk` | `up=` 恒空 → `[ "" -ge 150 ]` 恒假 → 白等 180s | 一律 `busybox xxx`；整数取整用 `${U%%.*}` |
| MSYS 路径转换 | `/data/local/tmp/x` 被转成 `C:/Program Files/.../x`，push 静默失败 | 脚本内 `export MSYS_NO_PATHCONV=1` |
| 属主解析 | `ls -l` 目录行省略 size 列，`$3:$4` 拼出 `root:2026-11-08` → App 读不到规则 | `dumpsys package \| grep -o 'userId=[0-9]*'` 拼 `uid:uid` |
| `ps` 名称截断 | NAME 列变成 `sh`/`sleep`，`ps\|grep boot_hotspot` 永远空 | 查 `/proc/<pid>/cmdline` |
| 裸 `&` 后台 | adb 会话一断就被 SIGHUP 带走 | 必须 `busybox nohup`；命令里 `sleep 6` 是缓冲窗，不能删 |
| adbd CLOSE_WAIT | 异常断连攒到 55 条后不再 accept | `killall adbd` 复位 |
| ADB `data_check` | 用 CRC32 会当场被 CLSE | 是**逐字节求和**，见 `BootTask/src/com/boottask/AdbBridge.java` |

---

## 未纳入版本管理的文件

原始开发目录里还有一批**已证否路线的实验产物**，刻意没有入库（多为二进制补丁、
一次性探测脚本，对复现无价值）：

| 类别 | 文件 | 为什么排除 |
|---|---|---|
| init 钩子路线 | `install-recovery.sh`、`install_rootch.sh`、`marker.sh` | 已在真机证否，会触发 `Journal has aborted` |
| userapp stub 补丁 | `userapp.*`(6 个)、`mkstub*.py`、`stub*.test`、`stub2/3.dbg`、`hook.1105`、`hook.elf` | 二进制补丁实验，未采用 |
| racoon 劫持 | `racoon.hook.sh`(162KB) | 未采用 |
| su 提权探测 | `probe_suid.sh`、`probe_svc.sh` | 结论已写进 `APP_CHANGE.md` |
| 早期编排 | `apply_v2.sh`、`deploy.sh`、`go.sh`、`hotspotctl.sh`、`boot_hotspot.v1.bak.sh` | 已被 `deploy_final.sh` 取代 |
| v3 一次性实验 | `p0_probe.sh`~`p3_watch.sh`、`exp*.sh`、`run_on_pc.sh`、`test_v168.sh`、`mumu_test.sh`、`mumu_test_report.txt` | 探测/模拟器测试记录 |
| **含私钥** | `v3/app/`（`appkey.pem`、`appkey_pkcs8.der` 等） | 自造 adb 认证密钥，且方案已废弃，不入公开仓库 |

其中被证否的**根因与证据**都完整保留在 `v3/APP_CHANGE.md`，不需要靠这些脚本复现。
