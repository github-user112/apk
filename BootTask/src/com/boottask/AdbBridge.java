package com.boottask;

import android.util.Base64;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;

/**
 * AdbBridge —— 通过本机 adbd(127.0.0.1:5555) 以 root 执行 shell 命令。
 *
 * 为什么需要它:
 *   Android 4.3+ 的 zygote 给每个 App 进程设了 PR_SET_NO_NEW_PRIVS=1，
 *   内核会忽略任何 setuid 位 —— App 内 exec 一个 setuid root 程序拿不到 root。
 *   而 adbd 本身就以 root 运行，只要连上它并在 ADB 协议里 OPEN "shell:<cmd>"，
 *   命令就是 root 身份执行的。提权发生在 adbd，不在 App 进程里，不受 no_new_privs 影响。
 *
 * 前提:
 *   1) adbd 监听 TCP 5555  （setprop service.adb.tcp.port 5555 + 重启 adbd）
 *   2) 若 ro.adb.secure=1，需要把配套公钥写进 /data/misc/adb/adb_keys，私钥用下面的 KEY_PKCS8_B64
 *
 * 只实现必要子集: CNXN / AUTH(RSA) / OPEN / OKAY / WRTE / CLSE
 * 兼容 Android 4.4 (API 19): 不使用 java.util.Base64、不使用 lambda。
 */
public final class AdbBridge {

    // ---- 把 mk_app_key.py 生成的 PKCS#8 私钥 base64 贴在这里（可留空 = 不认证）----
    private static final String KEY_PKCS8_B64 = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC6tV/H21VrsHvhz4wSpsE1C6qGDUZqYMcaJGW0Umt3TvbvU2qk2IORZkgekbfXi+0109cRJHQ2YTpMOzhT2hOzg+Gytfg7fPXxR+QI4DHB/fOF9k65tAU/GSgDhrM6wzxcB3xePL18BUQYxIxEUESDcb1ZZNBzZSoTm6l9KVLQ7fozWIUbZbOC4KgV+Yt/zoOR71GdDRSFJ0dzQ/0cXKxRvoD6YTKiyBUommQPIDjYksfafiGXc7pW7CioxxijO52+4u8cSX4kARkpCxJEjXYy5JVVgjqDMS3Uywl9Motp3gLKGIfPjyUYM0QHVFZqUK/lpqRd4z+VHvzqT6nLwA4TAgMBAAECggEADI2ALzQrCzlLgumMzdOMntqLcEV5NqgOCs8SpWvQfNjVbPlrQez/9NPEb9sKhKvhhWJvjbVT44oS5319x9QcH1AeaaumplKRndNgXKESHKxMZfUi4tpca0XE38PRI1dtT0n+OGnAsD4RuiaQwFEIjNvQnVopUkYlbORkzJztdqLDtMd9a1YuTDN5v8Y/fV+3J7TMNHBxpqckRh8/Ls2iGXX+5evyo2/cXZZRjlDIjt7gYmKo+pBT8tvc0xSdnBMo5coIaMRHaT8rPjokC+U9Gd3UOxn6HxzU9szcjAwVdIdXqmiPIZkxZaJ/6HGt2J7LqXAa/zLEFkqCvEc5uuUOsQKBgQD3o1pSd25jFcqAIWztSRSAhD0plZnHxeYVvmdzzUq67ha+ZAI2Tu/x7JgVOZhbBSroho3LGKMa14tGmIuxDoStzNlgVW2TSLMZ7zq7AaSQ29GLgcbgnub9m45TvziwHYxWzAMNWELctgUnMm4OTtC1kmYEShz9x47+8Up/qMHgowKBgQDBA1SIe/VIU/YsuW6r2cEKVwfyXos92TBtQPWtFgup/2+xFaiYaUYQu4Jhxtc1vfrt0/1P1HJfsUc9jjJ5o5oIsIOJown2GPu3vUXQSsQKgjLXuq2xu/19zJ5xk4asJx4TvE0bcX+HDgcYgaV0LbTGUkww6d5pBHYvLTnDq29D0QKBgEoXPbbetNBAfM3JMmXsL44kAoimkdQLicOHrDwhd/JlubhNA7xr8a5YM0hmawcQjL31RAc339TwGGOO0Hyw81FssLz50kb2wV9JDDFXVH1ix1cOBQq/gCzwlazI0ZUfwhVWBLPBbH/Mlc4ccIEnY5pvqsYtxm7HfikY2ElJnHgxAoGAep6F/qtZeZi1pVYsxApzxADkcIq1xRYM2OvS6CJASMCZkZPj5ufCdnDZdQqgwGiwWJU7sZKTEs4KJ0YGNRbFjc2t0yv78ReQGvuotZo6Dz8F092p6Wc3tMrgweDqRsYXKoyPI+coEIHN6ji7ByLeXLv94XlCLc+C0ZfWwcNQzXECgYAMXZh8/eYqfHpL/2g9ELUL8fsIBBSztU/WJtfQSQGUvs2nSNYyLm1XArolIEoVAYDzX3xRRnJ/5IuaafvBSjdNEy+BDiSW6t54XVd0d9HYWb5r0IMlEbY95mmAF5MkbWanUxI0UlBBeBBY7Ycl+4EgLalCBU4Tti6VcLoE6ApW8w==";

    private static final String HOST = "127.0.0.1";
    private static final int PORT = 5555;
    private static final int VERSION = 0x01000001;
    private static final int MAXDATA = 4096;

    private static final int LOCAL_ID = 1;

    /** 等 adbd 的 TCP 监听就绪的最长时间（开机阶段它会晚于 BOOT_COMPLETED 起来） */
    private static final long CONNECT_WAIT_MS = 150000L;

    /** 握手（CNXN/AUTH）单独限时：命令可能很长，但「对方不回握手」不该陪跑整个超时 */
    private static final long HANDSHAKE_MS = 15000L;

    private AdbBridge() {
    }

    public static boolean isConfigured() {
        return KEY_PKCS8_B64 != null && KEY_PKCS8_B64.length() > 0;
    }

    /**
     * 执行命令，返回合并输出；失败返回 null（调用方据此回退到别的通道）。
     *
     * @param cmd       要执行的 shell 命令
     * @param timeoutMs 总超时
     */
    public static String exec(String cmd, long timeoutMs) {
        return exec(cmd, timeoutMs, CONNECT_WAIT_MS);
    }

    /**
     * v1.6.72：可指定「等 adbd 把 5555 听起来」的时长。
     *
     * 开机场景必须等满 150 秒（adbd 比 BOOT_COMPLETED 晚起，实测 60~80 秒才监听）；
     * 但用户手动点「开热点」时机器早就起来了，adbd 若不可用就是真不可用 ——
     * 还等 150 秒只会让人以为界面卡死（MuMu 实测：点一下 154 秒才回来）。
     * 那种场景传一个较小的值，失败尽快反馈。
     *
     * @param connectWaitMs 等 5555 可连的最长时间
     */
    public static String exec(String cmd, long timeoutMs, long connectWaitMs) {
        Socket sock = null;
        try {
            // adbd 的 TCP 5555 监听起来得比 BOOT_COMPLETED 晚（实测本机在开机 60~80 秒之间），
            // 所以在等待窗口内遇到 ECONNREFUSED 不能立刻放弃，否则开机第一次必然失败。
            long connDeadline = System.currentTimeMillis() + connectWaitMs;
            while (true) {
                try {
                    sock = new Socket();
                    sock.connect(new InetSocketAddress(HOST, PORT), 3000);
                    sock.setSoTimeout(3000);
                    break;
                } catch (IOException ce) {
                    if (sock != null) {
                        try {
                            sock.close();
                        } catch (Throwable ignored) {
                        }
                        sock = null;
                    }
                    if (System.currentTimeMillis() >= connDeadline) {
                        Log.w("BootTask", "adb: connect gave up after "
                                + connectWaitMs + "ms: " + ce);
                        return null;
                    }
                    Log.w("BootTask", "adb: 5555 not ready, retry in 8s (" + ce + ")");
                    try {
                        Thread.sleep(8000);
                    } catch (InterruptedException ie) {
                        return null;
                    }
                }
            }
            InputStream in = sock.getInputStream();
            OutputStream out = sock.getOutputStream();

            // ---- 1. 握手 ----
            send(out, "CNXN", VERSION, MAXDATA, "host::\u0000".getBytes("UTF-8"));
            int remoteId = -1;
            boolean authed = false;
            int authTries = 0;
            // v1.6.72：握手与命令分开计时。以前共用 timeoutMs，
            // 于是长命令（开热点要等两分钟）连「握手没人应答」也要干等两分钟。
            long hsDeadline = System.currentTimeMillis() + Math.min(timeoutMs, HANDSHAKE_MS);

            while (System.currentTimeMillis() < hsDeadline) {
                Packet p;
                try {
                    p = read(in);
                } catch (java.net.SocketTimeoutException ste) {
                    // 只是"对方暂时没话"，不是失败：继续等到 deadline
                    continue;
                }
                if (p == null) {
                    Log.w("BootTask", "adb: handshake read failed");
                    return null;
                }
                if ("CNXN".equals(p.cmd)) {
                    authed = true;
                    break;
                }
                if ("AUTH".equals(p.cmd)) {
                    // arg0=1 表示 TOKEN（需要签名）；arg1 是 token 类型
                    if (++authTries > 2) {
                        // 第二次仍被要求签名 => 我们的公钥不在 adb_keys 里，
                        // 再签也是同一把钥匙，直接放弃（避免来回空转耗尽超时）
                        Log.w("BootTask", "adb: AUTH rejected twice, public key not authorized");
                        return null;
                    }
                    byte[] sig = signToken(p.data);
                    if (sig == null) {
                        Log.w("BootTask", "adb: AUTH requested but no private key configured");
                        return null;
                    }
                    send(out, "AUTH", 2, 0, sig);
                    continue;
                }
                Log.w("BootTask", "adb: unexpected packet " + p.cmd + " arg0=" + p.arg0);
                return null;
            }
            if (!authed) {
                Log.w("BootTask", "adb: handshake timeout");
                return null;
            }

            // 命令阶段从握手成功起单独计时，两段互不吃掉对方的时间
            long deadline = System.currentTimeMillis() + timeoutMs;

            // ---- 2. 打开 shell 流 ----
            send(out, "OPEN", LOCAL_ID, 0, ("shell:" + cmd + "\u0000").getBytes("UTF-8"));
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            boolean opened = false;

            // 注意 ADB 帧的 arg 语义（来自 system/core/adb）：
            //   发送方填 arg0 = 自己这条 socket 的 id，arg1 = 对端的 id。
            //   adbd 收到包后按 find_local_socket(arg1, arg0) 反查 socket，
            //   所以我们的 OKAY/CLSE 必须是 (LOCAL_ID, remoteId)，
            //   写成 (remoteId, LOCAL_ID) 会让 adbd 反查不到 socket 而主动 CLSE，
            //   shell 流会被提前掐断（输出截断甚至命令被 SIGPIPE 掉）。
            while (System.currentTimeMillis() < deadline) {
                Packet p;
                try {
                    p = read(in);
                } catch (java.net.SocketTimeoutException ste) {
                    // 命令还在跑（例如 nohup 之后还跟了一个 sleep），暂时没有输出是正常的。
                    // 以前这里会把"3 秒没输出"当成整体失败，导致带后台启动的长命令永远判失败。
                    continue;
                }
                if (p == null) {
                    break;
                }
                if ("OKAY".equals(p.cmd)) {
                    remoteId = p.arg0;      // adbd 分配的远端 id（对端 socket id）
                    opened = true;
                    continue;
                }
                if ("WRTE".equals(p.cmd)) {
                    buf.write(p.data, 0, p.data.length);
                    // 对端 id 优先用 OKAY 里给出的；万一没收到 OKAY，退回包里的 arg1
                    if (remoteId <= 0) {
                        remoteId = p.arg1;
                    }
                    send(out, "OKAY", LOCAL_ID, remoteId, EMPTY);
                    continue;
                }
                if ("CLSE".equals(p.cmd)) {
                    if (remoteId <= 0) {
                        remoteId = p.arg0;
                    }
                    send(out, "CLSE", LOCAL_ID, remoteId, EMPTY);
                    break;
                }
                if ("AUTH".equals(p.cmd)) {
                    Log.w("BootTask", "adb: AUTH after connect, abort");
                    break;
                }
                Log.w("BootTask", "adb: unexpected " + p.cmd + " while reading");
                break;
            }

            String text = new String(buf.toByteArray(), "UTF-8");
            if (!opened && text.length() == 0) {
                Log.w("BootTask", "adb: stream never opened");
                return null;
            }
            return text.trim();
        } catch (Throwable t) {
            Log.w("BootTask", "adb: exec failed: " + t);
            return null;
        } finally {
            if (sock != null) {
                try {
                    sock.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static final byte[] EMPTY = new byte[0];

    // ---------------------------------------------------------------- 认证

    private static PrivateKey cachedKey;

    private static byte[] signToken(byte[] token) {
        try {
            if (KEY_PKCS8_B64 == null || KEY_PKCS8_B64.length() == 0) {
                return null;
            }
            if (cachedKey == null) {
                byte[] der = Base64.decode(KEY_PKCS8_B64, Base64.DEFAULT);
                PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(der);
                cachedKey = KeyFactory.getInstance("RSA").generatePrivate(spec);
            }
            // ADB 用的是 RSA 私钥 + SHA1 摘要 + PKCS#1 v1.5 填充
            Signature s = Signature.getInstance("SHA1withRSA");
            s.initSign(cachedKey);
            s.update(token);
            return s.sign();
        } catch (Throwable t) {
            Log.w("BootTask", "adb: sign failed: " + t);
            return null;
        }
    }

    // ---------------------------------------------------------------- 帧编解码

    private static final class Packet {
        String cmd;
        int arg0;
        int arg1;
        byte[] data;
    }

    private static void send(OutputStream out, String cmd, int arg0, int arg1, byte[] data)
            throws IOException {
        int len = data == null ? 0 : data.length;
        byte[] head = new byte[24];
        int c = cmdInt(cmd);
        putInt(head, 0, c);
        putInt(head, 4, arg0);
        putInt(head, 8, arg1);
        putInt(head, 12, len);
        putInt(head, 16, crc(data));
        putInt(head, 20, c ^ 0xFFFFFFFF);
        out.write(head);
        if (len > 0) {
            out.write(data);
        }
        out.flush();
    }

    private static Packet read(InputStream in) throws IOException {
        byte[] head = new byte[24];
        if (!readFully(in, head, 24)) {
            return null;
        }
        Packet p = new Packet();
        int c = getInt(head, 0);
        p.cmd = intCmd(c);
        p.arg0 = getInt(head, 4);
        p.arg1 = getInt(head, 8);
        int len = getInt(head, 12);
        int magic = getInt(head, 20);
        if ((c ^ 0xFFFFFFFF) != magic) {
            throw new IOException("bad magic for " + p.cmd);
        }
        if (len < 0 || len > 1024 * 1024) {
            throw new IOException("bad length " + len);
        }
        p.data = new byte[len];
        if (len > 0 && !readFully(in, p.data, len)) {
            return null;
        }
        return p;
    }

    private static boolean readFully(InputStream in, byte[] buf, int len) throws IOException {
        int off = 0;
        while (off < len) {
            int n = in.read(buf, off, len - off);
            if (n <= 0) {
                return false;
            }
            off += n;
        }
        return true;
    }

    private static int cmdInt(String s) {
        return (s.charAt(0) & 0xFF)
                | ((s.charAt(1) & 0xFF) << 8)
                | ((s.charAt(2) & 0xFF) << 16)
                | ((s.charAt(3) & 0xFF) << 24);
    }

    private static String intCmd(int v) {
        char[] c = new char[4];
        c[0] = (char) (v & 0xFF);
        c[1] = (char) ((v >> 8) & 0xFF);
        c[2] = (char) ((v >> 16) & 0xFF);
        c[3] = (char) ((v >> 24) & 0xFF);
        return new String(c);
    }

    private static void putInt(byte[] b, int off, int v) {
        b[off] = (byte) (v & 0xFF);
        b[off + 1] = (byte) ((v >> 8) & 0xFF);
        b[off + 2] = (byte) ((v >> 16) & 0xFF);
        b[off + 3] = (byte) ((v >> 24) & 0xFF);
    }

    private static int getInt(byte[] b, int off) {
        return (b[off] & 0xFF)
                | ((b[off + 1] & 0xFF) << 8)
                | ((b[off + 2] & 0xFF) << 16)
                | ((b[off + 3] & 0xFF) << 24);
    }

    /**
     * ADB 头里的 data_check 字段。
     *
     * 千万别用 CRC32 —— 新版 adb 已经改成"逐字节求和"这种廉价校验，
     * 而 Android 4.4 的 adbd 照样会校验这个字段：填错就当场 CLSE（表现为
     * "连上后被立刻关闭、读不到任何字节"）。这一点在车机上逐项实测确认：
     *   data_check 改成垃圾值 -> 被关闭；改成 字节和 -> 握手成功。
     */
    private static int crc(byte[] data) {
        if (data == null || data.length == 0) {
            return 0;
        }
        int sum = 0;
        for (int i = 0; i < data.length; i++) {
            sum += (data[i] & 0xFF);
        }
        return sum;
    }
}
