# 补丁源码

> 这个项目没有 Java 源码。**真正的"源代码"就是这 4 个 Python 脚本**——
> 它们对 apktool 反编译出来的 smali 文本做字符串级注入，再用 apktool 打包回去。

## 补丁链

```
基线 APK (1.6 修改版)
   │  apktool d
   ▼
_sm16   ← 原始反编译树（2416 个文件，未打任何补丁）
   │  _patch_v3.py  （补丁 A + B + C）        → 对应成品 1.9
   ▼
_w19
   │  _patch_v4.py  （补丁 D + E + F + G）    → 对应成品 1.10 / v7
   ▼
_w110  ← 最终源码树（已收录于 ../3-smali-src/patched-v7/）
```

脚本顶部的常量是**绝对路径**，跑之前先确认：

| 脚本 | SRC | DST |
|---|---|---|
| `_patch_a.py` | `_sm16` | `_w16` | 
| `_patch_v2.py` | `_sm16` | `_w17` |
| `_patch_v3.py` | `_sm16` | `_w19` |
| `_patch_v4.py` | `_w19` | `_w110` |

## 各脚本说明

| 脚本 | 版本 | 状态 | 内容 |
|---|---|---|---|
| `_patch_a.py` | 1.7 | 🗑 历史 | 只有补丁 A（`bdcf` 配置），A 线的第一版尝试 |
| `_patch_v2.py` | 1.8 | 🗑 历史 | 补丁 A+B+C 的早期版本（B 未置 `h`、C 逻辑写反，已作废） |
| `_patch_v3.py` | **1.9** | ✅ 可用 | 补丁 **A+B+C** 修正版；自包含，直接从 `_sm16` 生成 `_w19` |
| `_patch_v4.py` | **1.10 / v7** | ✅ 最新 | 补丁 **D+E+F+G**：P2P 自举器 + 断开清理 + 停 discover 循环 + 抑制 discoverPeers |

> 1.7 / 1.8 的两个脚本保留下来只是**为了追溯改动历史**，不要再用它们构建。

## `_patch_v4.py` 的结构

`_patch_v4.py` 是整个工程的核心，约 800 行，分 5 段：

| 段落 | 内容 |
|---|---|
| `[0]` | 复制基线 `_w19` → `_w110` |
| `patchD-1` | **新增 3 个 smali 类**：`m/m/d/j.smali`（自举器主体）、`j$a.smali`（`createGroup` 回调）、`j$b.smali`（重试 `Runnable`） |
| `patchD-2/3` | 把自举器挂到 `i.smali` 的构造函数（`.locals` 3→6，加 `.field g`，在 `requestConnectionInfo` 之后 `new j` + `j.a()`） |
| `patchD-4` | `AndroidManifest.xml` 补 `CHANGE_WIFI_MULTICAST_STATE` |
| `patchE` | `m/m/e/d.smali` 的 `f()`（terminate）：停自举器 + `removeGroup` + `stopPeerDiscovery` |
| `patchF/G` | 停 CarLife 的 discover 循环；抑制 `m/m/d/b.run()` 的 `discoverPeers` 本体 |
| 自检 | 校验新类结构、寄存器越界、**注入点唯一性**、**分支方向**、权限是否落地 |

### 自举器设计

| 字段 | 类型 | 作用 |
|---|---|---|
| `h` | `boolean` | **armed** —— 是否处于"等待建组"状态 |
| `g` | `int` | 已尝试 `createGroup` 次数 |
| `i` | `MulticastLock` | 组播锁（`jmdns` 类自举需要；亿连有 22 处，CarLife 为 0） |
| `f` | `Runnable` | 重试任务 |
| `d` | `a/a/a/a/m/m/d/i` | 反查 `i.f`（组是否已形成） |

时序：`j.a()` 置 `armed` + 申请 `MulticastLock` + `postDelayed(f, 8000)`
→ 8 秒后 `j$b.run()` 检查 `i.f`：**组已形成**则打日志收工；
**未形成**则 `stopPeerDiscovery` → `createGroup`，失败后 8 秒再试，**上限 6 次**。
`j.b()` 负责收工清理。

### 编译期自检

脚本内置自检，任何一条不过就报错。**其中最关键的是「分支方向」断言**——
因为 smali 里 `if-eqz` / `if-nez` 写反不会编译报错，只会静默功能失效，
本项目已经栽过两次（详见 README 第七节）。断言内容例如：

```python
if 'if-eqz v1, :done' not in jb:      # 未 armed 必须退出
    log('!! j$b.run() 缺少 if-eqz v1, :done'); ok = False
if 'if-nez v1, :formed' not in jb:    # 组已形成必须跳过建组
    log('!! j$b.run() 缺少 if-nez v1, :formed'); ok = False
if 'if-lt v1, v2, :giveup' in jb:     # 重试上限必须是 if-ge
    log('!! 上限判断写反'); ok = False
```

## helper 脚本

`../4-build-scripts/helpers/` 下有几个探查工具：

| 脚本 | 用途 |
|---|---|
| `_verify_dex.py` | 校验打包出的 `classes.dex` 里是否含预期字符串（`CarLifeP2PBoot` / `createGroup` / `CONFIG_WIFI_DIRECT_NAME` 等） |
| `_dexstr.py` | 从 dex 里 dump 字符串 |
| `_axml.py` / `_axml2.py` | 解析二进制 `AndroidManifest.xml` |
| `_inspect.py` | 杂项检查 |
