# 车机热点自启 · 上车执行清单（2026-11-08 最终版）

> **唯一入口：`bash deploy_final.sh <动作> [serial]`**
> 旧 `app_route.sh` 已停用（它会把 1.6.70 降级成 1.6.66、写回 rootcmd 规则、
> 并用错误的属主解析写坏 rules.xml）。`QUICKSTART.md` 的旧版 P0~P5
> 探测流程和 `run_on_pc.sh` 的 init 钩子 8 分钟观察法**均已作废**，
> 那些路线在 `APP_CHANGE.md` 第 11 节里已被证否。

---

## 前置：把车机连上

```bash
cd /c/Users/11936/WorkBuddy/2026-11-07-19-04-40/车机工具/热点自启/v3
adb devices
```

三种接法任选其一（用哪种都行，`deploy_final.sh` 第二参数传对应 serial）：

| 接法 | 命令 | serial 怎么传 |
|---|---|---|
| USB 数据线（推荐） | 插上等 10 秒 | `000018030809054701DC`（脚本默认值，可省略） |
| 车机热点已开时 | `adb connect 192.168.43.1:5555` | `192.168.43.1:5555` |
| 同一局域网 | `adb connect <车机IP>:5555` | `<车机IP>:5555` |

`adb devices` 里状态必须是 `device`，不能是 `offline` / `unauthorized`。

---

## 第 1 步：只读体检

```bash
bash deploy_final.sh check
```

看四项：

| 项目 | 期望 |
|---|---|
| `00000000:15B3 ... 0A` | adbd 正在 0.0.0.0:5555 监听（本机默认就有，**不要**去开 TCP） |
| `versionName=1.6.70` / `versionCode=86` | App 版本；不是就执行第 2 步 |
| `boot_hotspot.sh` + `dnsmasq.conf` 都在 | 缺哪个就执行 `assets` |
| `rules.xml` 属主是 `u0_aXX:u0_aXX` | 若是 `root root` 或 `root 2026`，App 会静默读不到规则 |

---

## 第 2 步：一键部署

```bash
bash deploy_final.sh all
```

等价于按顺序执行：

1. `install` — 覆盖安装 `dist/` 里版本号最高的 APK（当前 1.6.70）
2. `assets` — 推 `boot_hotspot.sh` + `dnsmasq.conf`，**自动转 LF**，设备端 `sh -n` 校验 + md5 比对
3. `rule` — 注入生产规则：`event=boot / action=adbcmd / delay=90`
4. `verify` — 打印热点状态与日志

分步执行也行：`bash deploy_final.sh install` / `assets` / `rule` / `verify`。

**两个不要**：
- 不要跑 `keys` / `tcp` 类操作：本机 `ro.adb.secure` 为空、adbd 默认监听 5555，
  `setprop + restart adbd` 只会让 USB 断连，还有写坏 `adb_keys` 属主的风险。
- 不要自己手敲 `inject_rule.sh` 的生产命令：里面的 `$(busybox wc -c < ...)`
  必须在**设备端**展开，用双引号会在 PC 上被展开成空，自检就废了。
  `deploy_final.sh` 已把命令内置，直接用它。

> `rule` 末尾的脚本会自动触发一次 boot 事件做解析校验。生产规则 delay=90，
> 所以那次只看得到 `rules=1`，90 秒后才会真正执行 —— 是正常现象。
> 注入后若要立刻做冷启动验证，先等这 90 秒过去或直接断电（被打断也无害）。

---

## 第 3 步：免重启验证（约 2 分钟）

```bash
bash deploy_final.sh trigger
```

`am startservice .ExecService --es event boot` 走的是和开机完全相同的规则路径。
脚本会等 `delay+20 = 110` 秒再读日志。

**期望看到**：

```
adbcmd[adbd] ok 15000ms: LAUNCHED_after=...
```

再加 `boot.log` 有新增内容。`LAUNCHED_after` 是设备端 `wc -c` 的结果，
说明 `$(...)` 在设备端展开了、后台脚本真的落盘了。

> 这一步**只在真实车机上做**。MuMu 的 5555 是端口转发，PC 一连就独占，
> App 再连必然 `handshake timeout`（假失败），别据此判断方案有问题。

---

## 第 4 步：冷启动验证（最终验收）

```bash
bash deploy_final.sh verify        # 先记下 boot.log 当前字节数
adb -s 000018030809054701DC reboot # 或物理断电再上电
# 等 3 分钟（BOOT_COMPLETED + delay=90 + adbd 起来 + 脚本 3 轮重试）
# 无线接入时重启后要重新 adb connect <车机IP>:5555，USB 会自动回来
bash deploy_final.sh verify
```

**验收标准（全部满足才算成）**：

| 检查 | 期望 |
|---|---|
| 手机/笔记本搜 WiFi | 能看到 `9B66BEB4`，密码 `12345678` |
| `ifconfig wlan0` | `192.168.43.1` |
| `ps \| grep hostapd` / `dnsmasq` | 两个进程都在 |
| `boot.log` | 比重启前增长，末尾有完成信息 |
| App 日志 `files/log/boottask.log` | `adbcmd[adbd] ok ... LAUNCHED_after=N` |

---

## 出问题时按这张表查

| 现象 | 原因 / 处理 |
|---|---|
| `ExecService rules=0` | rules.xml 属主不对或 XML 转义坏 → 重跑 `deploy_final.sh rule` |
| `adb: handshake timeout` | 先看 `cat /proc/net/tcp \| busybox grep -c '0100007F:15B3 .* 08 '`；几十条 CLOSE_WAIT 就 `killall adbd`（init 会自动拉起） |
| `adbcmd[adbd] FAILED` 但 5555 在监听 | 开机后 60~80 秒 adbd 才起来；规则已设 delay=90 + App 内部重试 150s，等满 3 分钟再看 |
| `syntax error: unexpected 'do'` | 推了 CRLF 版脚本 → `deploy_final.sh assets` 会自动转 LF |
| 热点起来了但客户端拿不到 IP | `dnsmasq.conf` 缺失 → `deploy_final.sh assets` |
| `boot.log` 完全不增长 | 后台进程被杀；确认规则里是 `busybox nohup` 且末尾 `sleep 6` 没被删 |
| 开机跑了两次热点脚本 | 曾有两条 boot 规则 → `deploy_final.sh rule` 会整份覆盖成单条 |
| `boot.log` 里 `up=` 是空的、开机慢 3 分钟 | 车机缺 `cut`（本机没有 cut/tr/awk/sed），v2.1 已改纯 shell 取 uptime；确认推的是最新脚本（`deploy_final.sh assets`） |
| App 日志看不到完整输出 | 日志 message 含换行，`logcat \| grep` 只显示第一行；读 `files/log/boottask.log` 全文 |

---

## 安全边界

全部改动都在 `/data`（APK、脚本、规则），**不碰 `/system`、不刷写、不改分区**，
没有变砖风险。彻底回滚：

```bash
bash inject_rule.sh <serial> clear       # 清空开机规则
adb -s <serial> shell rm -rf /data/local/hotspot
adb -s <serial> uninstall com.boottask  # 可选
```
