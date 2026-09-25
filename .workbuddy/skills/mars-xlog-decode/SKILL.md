---
name: mars-xlog-decode
description: 解码腾讯 Mars xlog（.xlog）二进制日志为明文并做关键字分析。当用户提供 .xlog 文件（CarLife 手机端/车机端日志、微信/mars 系 App 日志）、要求"解析/解码 xlog"、或需要从 mars 压缩日志中检索连接/音频等事件时使用。
agent_created: true
---

# Mars Xlog 解码与分析

## 用途

把 `.xlog`（Tencent Mars 日志组件生成的二进制文件）解码为可读文本，再按项目关键字检索。
纯 Python 标准库实现，无需安装依赖。

## 使用流程

### 1. 解码

直接运行打包脚本（勿重写解码逻辑）：

```bash
python <skill-dir>/scripts/decode_xlog.py <输入.xlog> <输出.log>
```

- 输出行首统计：`blocks=N bytes=M encrypted_skipped=K`。blocks=0 时看提示判断格式。
- 解码原理（已实测验证于 CarLife 手机端 SDK 8.6.6 的 0x09 容器）：
  - 块布局：`0x09 | type(1) | pad(3) | length(u32 LE @+5) | 64字节key域(@+9，内含 appender 字符串) | payload(length 字节) | 0x00`，headerLen = 9 + 64 = **73**。
  - magic 0x07/0x09 = 只压缩不加密，payload 用 `zlib.decompressobj(-15)`（raw deflate）直接解。
  - magic 0x03/0x04/0x05/0x06 = ECC 加密，无公钥私钥解不了 → 脚本跳过并计数。
  - 解析时以「payload 结束字节必须为 0x00」作校验，失败则逐字节重扫同步。

### 2. 常见坑（血泪）

- ⚠ 字段偏移极易数错：`length` 在 **+5** 而不是 +4；`key 域首字节(str_len 样子)` 在 +9。第一版按"str_len 变长头"解析全军覆没，正确做法是按固定 64 字节 key 域（magic 0x09）。
- ⚠ 不要按 `0x09 <task> 0x10` 正则找块头——task 字节会溢出 0xFF。
- ⚠ base64/XOR-pair 解码路径（老 python2 decode_mars_crypt_log_file 的 v1 格式）对 v2 的 0x09 块**不适用**，payload 就是裸 deflate。
- 大块 length 上限给 0x400000 防误同步。

### 3. 分析解码产物

用 grep 按事件画像检索，常用维度：

- 时间窗过滤：`grep "2026-09-25 +80 17:1" file.log`（行格式 `[级别][时间][pid, tid][Tag][, 模块, n][内容]`）。
- 事件统计：`grep -o "关键字" file.log | sort | uniq -c | sort -rn`。
- 堆栈粘连：Throwable 堆栈与日志行交杂，看 `at com.xxx` 行定位。

### 4. CarLife 音频排障速查（本项目专用）

- 该 xlog 可能来自**手机端**（包 `com.baidu.carlife`，栈含 `loopOnce`=Android 12）或**车机端**（我们的 mod 标记：`BtGuard/ConnLog/NoBtFallback/QrBadge`）。先 `grep -c` 这些标记判断来源端。
- 音频包画像：`onAudioStreamReady bytes.length: 2560, streamType: 2, sampleRate: 16000, channelCount: 1` = 导航 TTS；媒体应为 `sampleRate: 44100, channelCount: 2`，若 0 次 = 手机从未发媒体。
- 关键 Tag：`RemoteSystemAudioCallback`（音频流分发）、`TTSPCMUtil`/`CarLink_Audio`/`Audio-NaviAudioManager`（导航 TTS）、`MusicAudioHelper`（媒体）、`IAudioRecordToolImpl`（通话录音）、`ConnectManager`（七路 socket：Cmd/Video/Media/TTS/VR/Touch/Data）。
- `music control flag = true` + `carlife_music_sample_rate 44100` 说明媒体通道协商正常。

## Resources

- `scripts/decode_xlog.py` — 解码器（v2 容器，0x03-0x0D magic 家族；无依赖，python3 直接跑）。
