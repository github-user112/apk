package com.boottask;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Locale;

/**
 * v1.6.14：反向传输通道 —— 手机把文件（主要是 APK）传给车机。
 *
 * 与日志下载（LogHttpServer，车机→手机）相反：这里车机是**接收方**。
 * 沿用同一套套路（内嵌 ServerSocket 手写 HTTP + 手机扫码访问），端口 18082：
 *   GET  /        -> 上传页 upload.html（从 assets 读出，给手机浏览器用）
 *   POST /upload  -> multipart/form-data 单文件接收，落盘到 files/inbox/
 *
 * 为什么不用 LogHttpServer 改：那是 CarLife 仓库的共享文件，BootTask 只是借用，
 * 改它会牵动 CarLife 自己的构建（sed 里还有按出现次数断言的替换）。这里独立一份，
 * 复用 LogHttpServer.localIps() 取地址（IP 选择逻辑必须一致，否则又扫到蜂窝地址）。
 *
 * multipart 解析说明（二进制安全）：
 *   不按 Content-Length 切、也不整包读进内存（APK 几十 MB 会 OOM）。
 *   流式按块扫描分隔符 "\r\n--boundary"，命中即认为第一个 part 的数据结束。
 *   块尾保留 (分隔符长度-1) 字节进入下一轮，避免分隔符跨块边界被漏掉 ——
 *   这是手写解析器最容易出的错（表现为 APK 尾部少几个字节、安装报解析包失败）。
 *
 * 安全边界：仅局域网临时服务，无鉴权（和日志下载一样，用完即关）。
 * 文件名剥掉路径分隔符防目录穿越；单文件上限 200MB。
 */
public final class UploadServer {

    public static final String TAG = "BootTaskUpload";
    public static final int PORT = 18082;
    private static final long MAX_BYTES = 200L * 1024 * 1024;

    /** 上传完成回调（ReceiveActivity 实现，用于刷新界面/自动安装） */
    public interface Listener {
        void onUploaded(File f, long bytes);
    }

    private static UploadServer sInst;
    private static Context sCtx;
    private static Listener sListener;

    private static volatile String sLastName;
    private static volatile long sLastBytes;
    private static volatile long sLastAt;
    private static volatile String sLastError;

    private ServerSocket mServer;
    private volatile boolean mRunning;
    private Thread mThread;

    private UploadServer() {
    }

    public static void init(Context c) {
        if (sCtx == null && c != null) {
            sCtx = c.getApplicationContext();
        }
    }

    public static synchronized UploadServer get() {
        if (sInst == null) {
            sInst = new UploadServer();
        }
        return sInst;
    }

    public static synchronized void setListener(Listener l) {
        sListener = l;
    }

    public static String lastName() {
        return sLastName;
    }

    public static long lastBytes() {
        return sLastBytes;
    }

    public static long lastAt() {
        return sLastAt;
    }

    public static String lastError() {
        return sLastError;
    }

    /** 手机要访问的地址列表（与日志下载同一套 IP 优先级：直连 > WiFi > 热点 > 有线） */
    public static String[] uploadUrls() {
        String[] ips = com.baidu.carlifevehicle.logxfer.LogHttpServer.localIps();
        String[] urls = new String[ips.length];
        for (int i = 0; i < ips.length; i++) {
            urls[i] = "http://" + ips[i] + ":" + PORT;
        }
        return urls;
    }

    /** 收件目录：getExternalFilesDir 一定能写（4.4 起无需 WRITE_EXTERNAL_STORAGE） */
    public static File inboxDir() {
        File base = null;
        if (sCtx != null) {
            try {
                base = sCtx.getExternalFilesDir(null);
            } catch (Throwable ignored) {
            }
            if (base == null) {
                base = sCtx.getFilesDir();
            }
        }
        if (base == null) {
            base = new File("/sdcard/Android/data/com.boottask/files");
        }
        File in = new File(base, "inbox");
        try {
            if (!in.exists()) {
                in.mkdirs();
            }
        } catch (Throwable ignored) {
        }
        return in;
    }

    public synchronized boolean isRunning() {
        return mRunning;
    }

    public synchronized void start() {
        if (mRunning) {
            return;
        }
        try {
            mServer = new ServerSocket();
            mServer.setReuseAddress(true);
            mServer.bind(new InetSocketAddress(PORT));
            mRunning = true;
            mThread = new Thread(new Runnable() {
                public void run() {
                    loop();
                }
            }, "BootTaskUpload");
            mThread.setDaemon(true);
            mThread.start();
            Log.i(TAG, "upload server started, port=" + PORT);
        } catch (Throwable t) {
            mRunning = false;
            mServer = null;
            Log.e(TAG, "upload server start failed: " + t);
        }
    }

    public synchronized void stop() {
        if (!mRunning) {
            return;
        }
        mRunning = false;
        try {
            if (mServer != null) {
                mServer.close();
            }
        } catch (Throwable t) {
            Log.w(TAG, "close server: " + t);
        }
        mServer = null;
        mThread = null;
        Log.i(TAG, "upload server stopped");
    }

    // ------------------------------------------------------------------ 接收循环

    private void loop() {
        while (mRunning) {
            Socket s = null;
            try {
                s = mServer.accept();
            } catch (Throwable t) {
                if (mRunning) {
                    Log.w(TAG, "accept: " + t);
                }
                continue;
            }
            try {
                handle(s);
            } catch (Throwable t) {
                Log.w(TAG, "handle: " + t);
            } finally {
                try {
                    s.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private void handle(Socket s) throws Exception {
        s.setSoTimeout(30000);
        InputStream in = s.getInputStream();
        String req = readLine(in);
        if (req == null) {
            return;
        }
        boolean expectContinue = false;
        for (int i = 0; i < 64; i++) {
            String h = readLine(in);
            if (h == null || h.length() == 0) {
                break;
            }
            String low = h.toLowerCase(Locale.US);
            if (low.startsWith("expect:") && low.indexOf("100-continue") >= 0) {
                expectContinue = true;
            }
        }
        if (expectContinue) {
            // 不回应 100-continue，浏览器/curl 会一直等着不发包（表现为上传卡住）
            OutputStream os = s.getOutputStream();
            os.write("HTTP/1.1 100 Continue\r\n\r\n".getBytes("US-ASCII"));
            os.flush();
        }

        boolean post = req.startsWith("POST");
        Log.i(TAG, "REQ " + req);
        if (post) {
            receiveFile(s, in);
        } else {
            sendUploadPage(s);
        }
    }

    /** 从 assets 读出上传页给手机浏览器；WebView 不可用时至少不会白屏 */
    private void sendUploadPage(Socket s) throws Exception {
        byte[] body;
        try {
            AssetManager am = sCtx.getAssets();
            InputStream is = am.open("logxfer/upload.html");
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[8192];
            int n;
            while ((n = is.read(b)) > 0) {
                bos.write(b, 0, n);
            }
            is.close();
            body = bos.toByteArray();
        } catch (Throwable t) {
            Log.e(TAG, "read upload.html: " + t);
            body = ("<html><body><h3>上传页缺失</h3><p>" + t + "</p></body></html>")
                    .getBytes("UTF-8");
        }
        respond(s, 200, "text/html; charset=utf-8", body, null);
    }

    /**
     * multipart 单文件接收。
     *
     * 先读第一行拿到真实 boundary（比解析 Content-Type 头更可靠：不同浏览器
     * 的分隔符写法有差异，而 body 第一行的 "--xxx" 是确定的）。
     */
    private void receiveFile(Socket s, InputStream in) throws Exception {
        String first = readLine(in);
        if (first == null || !first.startsWith("--")) {
            sLastError = "请求格式不对（不是 multipart）";
            respond(s, 400, "text/plain; charset=utf-8",
                    "bad multipart".getBytes("UTF-8"), null);
            return;
        }
        String boundary = first.trim();

        // part headers：找到 filename="xxx"
        String filename = null;
        for (int i = 0; i < 32; i++) {
            String h = readLine(in);
            if (h == null || h.length() == 0) {
                break;      // 空行 = header 结束
            }
            String low = h.toLowerCase(Locale.US);
            int fi = low.indexOf("filename=\"");
            if (fi >= 0) {
                int end = h.indexOf('"', fi + 10);
                if (end > fi) {
                    filename = h.substring(fi + 10, end);
                }
            }
        }
        if (filename == null) {
            filename = "upload.bin";
        }
        filename = safeName(filename);

        File out = new File(inboxDir(), filename);
        byte[] delim = ("\r\n" + boundary).getBytes("US-ASCII");
        Log.i(TAG, "receiving " + filename + " boundary=" + boundary);

        FileOutputStream fos = null;
        long total = 0;
        boolean finished = false;
        String err = null;
        try {
            fos = new FileOutputStream(out);
            byte[] buf = new byte[65536];
            byte[] tail = new byte[delim.length > 1 ? delim.length - 1 : 1];
            int keep = 0;
            while (true) {
                int n = in.read(buf, 0, buf.length);
                if (n <= 0) {
                    // 流结束：把尾部残余（未匹配上分隔符，属于真实数据）写出
                    if (keep > 0) {
                        fos.write(tail, 0, keep);
                        total += keep;
                    }
                    finished = true;
                    break;
                }
                byte[] win = new byte[keep + n];
                if (keep > 0) {
                    System.arraycopy(tail, 0, win, 0, keep);
                }
                System.arraycopy(buf, 0, win, keep, n);
                int idx = indexOf(win, delim);
                if (idx >= 0) {
                    fos.write(win, 0, idx);
                    total += idx;
                    finished = true;
                    break;
                }
                int hold = delim.length - 1;
                int w = win.length - hold;
                if (w > 0) {
                    fos.write(win, 0, w);
                    total += w;
                }
                keep = win.length - w;
                if (keep > 0) {
                    System.arraycopy(win, w, tail, 0, keep);
                }
                if (total > MAX_BYTES) {
                    err = "文件超过 200MB，已中止";
                    break;
                }
            }
        } catch (Throwable t) {
            err = String.valueOf(t);
            Log.e(TAG, "receive: " + t);
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Throwable ignored) {
                }
            }
        }

        if (!finished && err == null) {
            err = "传输中断";
        }
        if (err != null) {
            sLastError = err + "（" + filename + "）";
            try {
                out.delete();
            } catch (Throwable ignored) {
            }
            respond(s, 500, "text/html; charset=utf-8",
                    page("上传失败", err, false).getBytes("UTF-8"), null);
            return;
        }

        sLastName = filename;
        sLastBytes = total;
        sLastAt = System.currentTimeMillis();
        sLastError = null;
        Log.i(TAG, "received " + out.getAbsolutePath() + " bytes=" + total);
        respond(s, 200, "text/html; charset=utf-8",
                page("上传成功：" + filename, human(total) + "，共 " + total + " 字节。"
                        + "回到车机点「安装」即可。", true).getBytes("UTF-8"), null);

        Listener l = sListener;
        if (l != null) {
            try {
                l.onUploaded(out, total);
            } catch (Throwable t) {
                Log.w(TAG, "listener: " + t);
            }
        }
    }

    /** 剥掉路径分隔符与危险字符，防目录穿越 */
    private static String safeName(String n) {
        StringBuilder b = new StringBuilder(n.length());
        for (int i = 0; i < n.length(); i++) {
            char c = n.charAt(i);
            if (c == '/' || c == '\\' || c == ':' || c < 32 || c > 126) {
                b.append('_');
            } else {
                b.append(c);
            }
        }
        String s = b.toString().trim();
        if (s.length() == 0) {
            s = "upload.bin";
        }
        return s;
    }

    private static int indexOf(byte[] data, byte[] pat) {
        if (pat.length == 0 || data.length < pat.length) {
            return -1;
        }
        outer:
        for (int i = 0; i <= data.length - pat.length; i++) {
            for (int k = 0; k < pat.length; k++) {
                if (data[i + k] != pat[k]) {
                    continue outer;
                }
            }
            return i;
        }
        return -1;
    }

    private static String page(String title, String body, boolean ok) {
        String color = ok ? "#2f9e44" : "#e03131";
        return "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\">"
                + "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"
                + "<title>" + title + "</title><style>body{margin:0;padding:24px;"
                + "background:#101014;color:#e8e6f0;font-family:-apple-system,'PingFang SC',"
                + "'Microsoft YaHei',Arial,sans-serif}h1{font-size:19px;color:" + color
                + "}p{color:#9b98a8;font-size:14px}a{color:#8fb2ff}</style></head><body>"
                + "<h1>" + title + "</h1><p>" + body + "</p>"
                + "<p><a href=\"/\">再传一个</a></p></body></html>";
    }

    private static void respond(Socket s, int code, String ctype, byte[] body, String extra)
            throws Exception {
        OutputStream os = s.getOutputStream();
        StringBuilder h = new StringBuilder(256);
        h.append("HTTP/1.1 ").append(code).append(" OK\r\n");
        h.append("Content-Type: ").append(ctype).append("\r\n");
        h.append("Content-Length: ").append(body.length).append("\r\n");
        h.append("Connection: close\r\n");
        h.append("Cache-Control: no-store\r\n");
        if (extra != null) {
            h.append(extra);
        }
        h.append("\r\n");
        os.write(h.toString().getBytes("UTF-8"));
        os.write(body);
        os.flush();
    }

    private static String readLine(InputStream in) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        int c = -1;
        while ((c = in.read()) >= 0) {
            if (c == '\n') {
                break;
            }
            if (c != '\r') {
                bos.write(c);
            }
            if (bos.size() > 8192) {
                break;
            }
        }
        if (c < 0 && bos.size() == 0) {
            return null;
        }
        return new String(bos.toByteArray(), "UTF-8");
    }

    private static String human(long n) {
        if (n < 1024) {
            return n + " B";
        }
        if (n < 1024L * 1024L) {
            return (n / 1024) + " KB";
        }
        return String.valueOf(n / (1024L * 1024L)) + " MB";
    }
}
