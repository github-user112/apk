# 热点开机自启 · v3 完整方案

> **⚠ 本文是方案的推演与论证记录，执行步骤已过期。**
> 第 2 节的 P0~P5 探测与 8 分钟观察法属于早期「init 钩子」路线，已被证否。
> **上车请以 `QUICKSTART.md` 为准，唯一入口 `bash deploy_final.sh <动作>`。**
> 旧 `app_route.sh` 已停用（会降级 APK、写回旧规则）。

> 目标：车机冷启动后，热点自动起来（`op_mode=2` / `wlan0=192.168.43.1` / hostapd+dnsmasq 在线）。
> 约束：无 su、无 platform 签名、`/system` 不能新建文件（今天实测会触发 `Journal has aborted`）。
> 已确认：`adb shell` 本身是 `uid=0(root)`，SELinux 已关闭。

---

## 0. 先纠正上一版方案的致命错误

上一版我推的是 `chmod 6755 /system/bin/sh` + App 兜底 `sh -c`。这条路**大概率根本不通**，原因有两层，第二层是我漏掉的：

| 层 | 问题 | 后果 |
|---|---|---|
| 1 | `sh` 是 mksh，POSIX 规定 `euid != ruid` 且无 `-p` 时主动降权 | `id` 仍显示 `uid=10xxx` |
| 2 | **Android 4.3+ 的 zygote 给所有 App 进程设了 `PR_SET_NO_NEW_PRIVS=1`** | setuid 位**在内核层直接失效**，连 euid=0 都不会给 |

第 2 层是内核级限制，`no_new_privs` **一旦设置不可撤销**，App 无法清除。所以：

> **任何"给某个文件打 setuid，让 App 执行它来提权"的方案，在 Android 4.4 的 App 进程里都是死路。**

这也是为什么 Android 的 `su` 从来不是 setuid 程序，而是一个**由 init/adb 拉起的 root 守护进程** —— App 通过 socket 请求它干活。

判断这一点不需要猜，一条命令就能看：

```sh
grep -i NoNewPrivs /proc/<App的pid>/status
# NoNewPrivs: 1  → setuid 彻底无效
```

（Android 4.4 内核 3.4 不一定有该字段；没有时用"实测一次"的方法验，见 P1.4）

---

## 1. 四条路的真实可行性

| 路径 | 提权机制 | 需要改 App | 需要动 /system | 可靠性 | 结论 |
|---|---|---|---|---|---|
| **A. App → 本机 adbd** | adbd 本身以 root 跑，App 走 ADB 协议连 `127.0.0.1:5555` | 是（加一个类） | 否 | ★★★★★ | **首选** |
| **B. init 钩子** | init 以 root 直接执行我们的 ELF | 否 | 已就位 | ★★☆（时机不定） | **保底** |
| **C. setuid 二进制** | 内核 setuid | 是 | 是 | ☆（no_new_privs 拦截） | 仅验一次 |
| **D. App + root 守护桥** | A/B 起来后常驻 root 进程，App 写命令文件 | 是 | 否 | ★★★★（依赖 A 或 B） | 可选增强 |

### 路径 A 为什么是最优

```
App(BOOT_COMPLETED, 普通 uid)
  └─ Socket → 127.0.0.1:5555 (adbd, uid=0)
       └─ ADB 协议: OPEN "shell:<cmd>"
            └─ 命令以 root 执行 → 拉起 boot_hotspot.sh
```

- 不需要 su、不需要签名、不需要改 `/system`、不受 no_new_privs 影响（因为提权发生在 adbd，不在 App 内）
- adbd 认证问题可以用 **预置公钥** 解决：把一对 RSA 公钥写进 `/data/misc/adb/adb_keys`，App 内置对应私钥完成 `AUTH` 握手
- 触发时机完全可控（App 自己 delay），还能重试、能写日志、能回报状态

**唯一前提**：`adbd` 在 TCP 上监听。这一点可主动保证（`setprop service.adb.tcp.port 5555` + 重启 adbd），但**重启 adbd 会断开我们当前的 adb 连接**，所以放在最后一步做。

### 路径 B 为什么只能保底

钩子文件 `/system/etc/install-recovery.sh`（ELF 内容）已经就位，且本地直接执行验证通过（`ELF-ENTRY` 进 kmsg）。
但"开机时 init 会不会执行它"今天没有一次干净的证据 —— 我之前的几次"成功"都是自己手动触发留下的，属于误判。

所以 B 只能靠**长时观察**来定性，不能靠"等 2 分钟看一眼"。

---

## 2. 执行流程（一次上电走完）

```
上电
 ├─ P0  环境快照（只读，30s）         → 结果决定后面走哪条
 ├─ P1  四个关键判断点（只读+一次低危实测，2min）
 │       P1.1 /system /data 是否 nosuid
 │       P1.2 App 进程 NoNewPrivs
 │       P1.3 adbd TCP 监听 + 认证模式
 │       P1.4 setuid 实测（一次，测完立即还原）
 ├─ P2  路径 A 打通（预置公钥 + 本机连接自测，1min）
 ├─ P3  部署 v2 脚本 + 规则（1min）
 ├─ P4  启动观察器（8min，全程每 10s 采样）
 └─ P5  读日志定性
```

**关键改变：不再"执行完就查"，而是 P4 挂一个 8 分钟的采样器**，每 10 秒记录 `uptime / op_mode / hostapd / dnsmasq / boot.log 大小 / init.svc`。今天所有误判都源于"查太早"，采样器从机制上消灭这个问题。

---

## 3. 日志规范（便于逐条分析）

所有输出统一格式，一行一条，可直接 `grep`：

```
[2026-11-08 09:40:12][OK  ][P1.1][/system:rw,relatime] 无 nosuid
[2026-11-08 09:40:13][FAIL][P1.1][E-MNT-02] /data 含 nosuid，setuid 方案在此挂载点无效
[2026-11-08 09:40:15][WARN][P1.2][E-PROC-01] 找不到 com.boottask 进程，退化为静态判断
```

### 异常码表（全部覆盖）

| 码 | 含义 | 后续动作 |
|---|---|---|
| `E-MNT-01` | `/system` 含 `nosuid` | 放弃 C；尝试 `mount -o remount,suid` |
| `E-MNT-02` | `/data` 含 `nosuid` | 路径 A 不受影响（A 不走 setuid） |
| `E-MNT-03` | `remount,suid` 被内核拒绝 | C 彻底放弃 |
| `E-EXT4-01` | dmesg 有 `Journal has aborted` | 本次开机 `/system` 只读，仅走 A/B |
| `E-EXT4-02` | `/system` 无剩余 inode | 禁止任何 `/system` 创建 |
| `E-PROC-01` | 找不到 App pid | 用静态判断 + P1.4 实测代替 |
| `E-PROC-02` | `/proc/<pid>/status` 无 `NoNewPrivs` 字段 | 视为"未知"，靠 P1.4 实测 |
| `E-SUID-01` | setuid 实测未拿到 euid=0 | C 判死，走 A |
| `E-SUID-02` | 无法用 `setuidgid` 降权测试 | 改用 App 侧实测 |
| `E-ADB-01` | adbd 未监听 TCP | 需 `setprop service.adb.tcp.port` |
| `E-ADB-02` | `ro.adb.secure=1` 且 `adb_keys` 不可写 | A 需用户手动确认一次授权 |
| `E-ADB-03` | 本机连 5555 握手失败 | 打印 adbd 返回字节，判断是认证还是协议 |
| `E-HOOK-01` | `install-recovery.sh` 缺失/非 ELF | 重新部署（P3） |
| `E-HOOK-02` | 钩子文件大小不足 ELF 头 | 覆写不完整，需重写 |
| `E-SH-01` | `/system/bin/sh` 不存在或非可执行 | 记录实际路径 |
| `E-SPACE-01` | `/data` 剩余空间 < 5MB | 停止写日志，避免撑爆 |
| `E-BOOT-01` | 采样器发现重启（boot_id 变化） | 重启计数 +1，日志续写 |

---

## 4. 变砖风险评估

**结论：不会变砖。** 逐项对照：

| 危险操作 | 本方案是否涉及 | 说明 |
|---|---|---|
| 刷 boot.img / recovery.img | ❌ 不涉及 | 全程不写任何分区镜像 |
| 改分区表 / bootloader | ❌ 不涉及 | 不碰 `mmcblk0p*` 原始块 |
| 改 `init.rc` / `init` 二进制 | ❌ 不涉及 | 只在已有的 `install-recovery.sh` 上等长覆写 |
| 在 `/system` 新建文件 | ❌ 不涉及（v3 明确禁止） | 今天已证明新建会 `Journal has aborted` |
| 写 `/system` 已有文件 | ⚠️ 仅 P3 等长覆写 | `dd conv=notrunc`，不改变文件大小、不分配数据块 |
| 改 `/data` 文件 | ✅ 可写 | `/data` 损坏最多丢 App 配置，系统照常启动 |
| 卸载/重装 App | ✅ 可逆 | App 与应用层隔离，装坏了不影响系统启动 |

**唯一真实风险**：`/system` 的 ext4 在一次写入中途出错 → 本次开机变只读。这不是变砖：

- 重启后 journal 自动回放，文件系统恢复可写
- 最坏情况是那次写入没生效，功能回到改之前
- 若某次 `e2fsck` 都没法自动修复（概率极低），车机仍能正常开机，只是 `/system` 只读 —— 而热点方案本来就不依赖改 `/system`（路径 A 完全在 `/data`）

**三条铁律**（本方案脚本里已内建）：
1. `/system` 只做 `dd conv=notrunc` 等长覆写，**绝不 `cp` / `>` 新建**
2. 每次写 `/system` 之前 `sync`、之后 `sync` + 查 `dmesg | grep EXT4-fs error`
3. 任何一步出现 ext4 报错 → 立即 `remount,ro` 并停止所有 `/system` 操作

---

## 5. 回滚

| 改了什么 | 怎么回滚 | 风险 |
|---|---|---|
| `install-recovery.sh`（ELF 钩子） | `rm` 或覆写回原内容（原厂本来没有这个文件） | 无 |
| `boot_hotspot.sh` v2 | 有 `boot_hotspot.v1.bak.sh` | 无 |
| App 规则（prefs 注入） | 删除该规则 / 清 prefs | 无 |
| `adb_keys` 追加的公钥 | 删掉对应那一行 | 无（不影响已有 PC 授权） |
| App 本体 | 卸装重装原版 APK（`BootTask/dist/` 里有历史版本） | 无 |

---

## 6. 文件清单

| 文件 | 作用 | 风险 |
|---|---|---|
| `QUICKSTART.md` | 上电后按顺序执行的 4 步 | — |
| `run_on_pc.sh` | PC 侧一键：推送 + 执行 + 拉日志 | — |
| `p0_probe.sh` | 环境与能力探测，**纯只读** | 零 |
| `p1_suid_test.sh` | setuid 实测，**测完自动还原** | 低（只改一个权限位） |
| `p2_adbkey.sh` | adb_keys 备份/追加/恢复、开 TCP | 低（数据区文件） |
| `p3_watch.sh` | 8 分钟采样器，抓真实触发时刻 | 零 |
| `p9_revert.sh` | 一键回滚 | — |
| `APP_CHANGE.md` | App 改造说明（路径 A） | — |
| `mumu_test.sh` | **本机 MuMu 预演**：装包/规则/广播/脚本脱离存活全跑一遍 | 零（模拟器） |
| `app/AdbBridge.java` | App 侧 ADB 客户端实现 | — |
| `app/mk_app_key.py` | 密钥生成（已自校验通过） | — |

---

## 7. 建议的下一步

**上车前先在本机 MuMu 预演一遍**（模拟器是 4.4.4 / API19，和车机同代）：

```bash
cd 车机工具/热点自启/v3
bash mumu_test.sh        # 全量；也可 bash mumu_test.sh 4 单步跑
```

已预演通过：APK 在 API19 安装、adbd 开 5555、adb_keys 写入、
BOOT_COMPLETED → ExecService → 规则执行全链路、脚本 3 轮重试与脱离存活。
MuMu 的上位 adbd 不服务 loopback TCP 客户端，所以「App 裸协议连 5555」这一项
只能在车上验（用 `adbcmd` 诊断动作，一条日志判定）。

**上车后先跑 P0 + P1**（`bash run_on_pc.sh p0` / `bash run_on_pc.sh p1 probe`），纯只读、不写 `/system`、不重启，3 分钟就能把"哪条路是活的"定死。

- 若 `[ADB-LISTEN]` 出现 → 走路径 A，装 1.6.66 后 `app_route.sh trigger` 验证 adbd 通道
- 若 adbd 没监听但有 root → `adb tcp 5555` 打开，仍然走 A
- 若 A 走不通 → 只保留钩子，挂 8 分钟采样器看真实触发时刻

这样每一步都是**确定性的**，不再靠"等 2 分钟看一眼"这种会误判的方式。
