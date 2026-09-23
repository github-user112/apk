package com.baidu.carlifevehicle.logxfer;

import android.content.Context;
import android.util.Log;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * CarLife 车机端「日志下载」内嵌 HTTP 服务。
 *
 * 背景：参考 CarLife 5+ 车机端的实现（内嵌 NanoHTTPD + 二维码指向 http://<ip>:18080），
 * 在 1.6 修改版上以零依赖方式重写：只用 java.net.ServerSocket 手写极简 HTTP/1.1。
 *
 * 对外接口：
 *   GET  /          -> 日志文件列表页（HTML）
 *   GET  /f/<idx>   -> 下载第 idx 个日志文件（索引基于最近一次刷新）
 *   GET  /all.zip   -> 打包下载全部（临时 zip，发完即删）
 */
public final class LogHttpServer {

    public static final String TAG = "CarLifeLogXfer";
    public static final int PORT = 18080;
    public static final int MAX_FILES = 20;

    private static LogHttpServer sInst;
    private static Context sCtx;

    private ServerSocket mServer;
    private volatile boolean mRunning;
    private Thread mThread;

    private final List mFiles = new ArrayList();
    private final List mSeen = new ArrayList();

    private LogHttpServer() {
    }

    // ------------------------------------------------------------------ 生命周期

    public static void init(Context c) {
        if (sCtx == null && c != null) {
            sCtx = c.getApplicationContext();
        }
    }

    public static synchronized LogHttpServer get() {
        if (sInst == null) {
            sInst = new LogHttpServer();
        }
        return sInst;
    }

    public synchronized boolean isRunning() {
        return mRunning;
    }

    public synchronized void start() {
        if (mRunning) {
            Log.i(TAG, "http server already running");
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
            }, "CarLifeLogHttp");
            mThread.setDaemon(true);
            mThread.start();
            Log.i(TAG, "http server started, port=" + PORT);
        } catch (Throwable t) {
            mRunning = false;
            mServer = null;
            Log.e(TAG, "http server start failed: " + t);
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
        Log.i(TAG, "http server stopped");
    }

    // ------------------------------------------------------------------ 地址收集

    /**
     * 网卡分类（1.19 新增）。
     *
     * 背景：1.18 及之前 localIps() 是"所有非回环 IPv4 一律收录"，结果在真机
     * （realme X7 Pro / Android 12）上实测，枚举出来的第一张网卡是蜂窝
     * ccmni2 = 10.98.124.35，排在热点 ap0 = 192.168.227.155 之前 —— 二维码
     * 直接指向蜂窝内网地址，任何设备都访问不到，表现就是"扫码打不开"。
     *
     * 所以这里按「对端设备能否访问」分成两类：
     *   - 蜂窝 / 隧道 / 纯虚拟：对端永远够不着，直接排除；
     *   - 其余按优先级排序：WiFi Direct > WiFi > 本机热点 > 有线 > 其他。
     */
    private static boolean isUnreachableIf(String n) {
        if (n == null) {
            return true;
        }
        return n.startsWith("ccmni") || n.startsWith("rmnet") || n.startsWith("pdp")
                || n.startsWith("ppp") || n.startsWith("clat") || n.startsWith("tun")
                || n.startsWith("cap") || n.startsWith("sit") || n.startsWith("ip6tnl")
                || n.startsWith("dummy") || n.startsWith("ifb") || n.startsWith("gre")
                || n.startsWith("ip6_vti") || n.startsWith("ip_vti");
    }

    /** 网卡优先级，越小越优先。 */
    private static int prioOf(String n) {
        if (n == null) {
            return 5;
        }
        if (n.startsWith("p2p")) {
            return 1;   // WiFi Direct：车机当 GO 时是 192.168.49.1
        }
        if (n.startsWith("wlan") || n.startsWith("wifi")) {
            return 2;   // 普通 WiFi（手机/车机连的 AP）
        }
        if (n.startsWith("ap") || n.startsWith("softap") || n.startsWith("swlan")) {
            return 3;   // 本机开的热点
        }
        if (n.startsWith("eth") || n.startsWith("rndis") || n.startsWith("usb")) {
            return 4;   // 有线 / USB 网络
        }
        return 5;
    }

    /** 网卡的中文类别名，只用于界面提示。 */
    private static String kindOf(String n) {
        int p = prioOf(n);
        if (p == 1) {
            return "直连";
        }
        if (p == 2) {
            return "WiFi";
        }
        if (p == 3) {
            return "热点";
        }
        if (p == 4) {
            return "有线";
        }
        return "其他";
    }

    /** 取一张网卡上的第一个 IPv4（字符串），没有就返回 null。 */
    private static String firstIpv4(NetworkInterface ni) {
        try {
            Enumeration ae = ni.getInetAddresses();
            while (ae != null && ae.hasMoreElements()) {
                Object o = ae.nextElement();
                if (!(o instanceof Inet4Address)) {
                    continue;
                }
                InetAddress a = (InetAddress) o;
                if (a.isLoopbackAddress()) {
                    continue;
                }
                String ip = a.getHostAddress();
                if (usable(ip)) {
                    return ip;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /** 是否是一个可以写进二维码的 IPv4。 */
    private static boolean usable(String ip) {
        if (ip == null || ip.length() == 0) {
            return false;
        }
        if (ip.startsWith("127.") || ip.startsWith("0.")) {
            return false;
        }
        // 169.254.x.x 是 link-local，只有同链路才通，写进二维码没意义
        if (ip.startsWith("169.254.")) {
            return false;
        }
        return true;
    }

    /**
     * 收集本机可用 IPv4，按「对端可达性」排序（1.19 重写）。
     *
     * 与 1.18 的差别：
     *   1) 排除蜂窝/隧道等对端够不着的网卡（真机上的误选就是这里出来的）；
     *   2) 按 p2p > wlan > ap > eth 排序，二维码优先给最可能可达的那个；
     *   3) 单个网卡取值失败只跳过它自己 —— 1.18 是整轮 try/catch，
     *      一张网卡抛异常会让后面所有网卡都被丢掉（潜在 bug）。
     */
    public static String[] localIps() {
        List ips = new ArrayList();
        List prs = new ArrayList();
        try {
            Enumeration en = NetworkInterface.getNetworkInterfaces();
            int guard = 0;
            while (en != null && en.hasMoreElements() && guard++ < 64) {
                NetworkInterface ni;
                try {
                    ni = (NetworkInterface) en.nextElement();
                } catch (Throwable t) {
                    break;      // 迭代器本身坏了，只能退出
                }
                if (ni == null) {
                    continue;
                }
                String name = null;
                try {
                    name = ni.getName();
                } catch (Throwable ignored) {
                }
                if (isUnreachableIf(name)) {
                    continue;
                }
                try {
                    if (!ni.isUp() || ni.isLoopback()) {
                        continue;
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "if " + name + " state: " + t);
                    continue;
                }
                int prio = prioOf(name);
                try {
                    Enumeration ae = ni.getInetAddresses();
                    while (ae != null && ae.hasMoreElements()) {
                        Object o = ae.nextElement();
                        if (!(o instanceof Inet4Address)) {
                            continue;
                        }
                        InetAddress a = (InetAddress) o;
                        if (a.isLoopbackAddress()) {
                            continue;
                        }
                        String ip = a.getHostAddress();
                        if (!usable(ip) || ips.contains(ip)) {
                            continue;
                        }
                        ips.add(ip);
                        prs.add(Integer.valueOf(prio));
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "if " + name + " addrs: " + t);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "localIps: " + t);
        }

        // 手写冒泡按优先级排序（稳定：同优先级保持枚举顺序），避免引入 Comparator
        int n = ips.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - 1 - i; j++) {
                int pj = ((Integer) prs.get(j)).intValue();
                int pj1 = ((Integer) prs.get(j + 1)).intValue();
                if (pj > pj1) {
                    Object ti = ips.get(j);
                    ips.set(j, ips.get(j + 1));
                    ips.set(j + 1, ti);
                    Object tp = prs.get(j);
                    prs.set(j, prs.get(j + 1));
                    prs.set(j + 1, tp);
                }
            }
        }

        // 1.24: 不再无条件塞 192.168.49.1。没有可用网卡时返回空数组，
        // 让 buildHint 走「未检测到可用网络地址」分支 —— 否则会画出一个
        // 必然打不开的死二维码，同时 netSummary 却显示「未检测到可用网卡」。
        String[] out = (String[]) ips.toArray(new String[ips.size()]);
        Log.i(TAG, "localIps -> " + joinIps(out));
        return out;
    }

    public static String[] baseUrls() {
        String[] ips = localIps();
        String[] urls = new String[ips.length];
        for (int i = 0; i < ips.length; i++) {
            urls[i] = "http://" + ips[i] + ":" + PORT;
        }
        return urls;
    }

    /**
     * 给界面用：逐张网卡列出「类别 网卡名=IP」，被忽略的蜂窝也标出来。
     *
     * 为什么要显示这个：现场出问题时，用户只能看到"扫不开"，看不出是
     * 「地址选错了」还是「网络没通」。把网卡清单晾出来，一眼就能分辨。
     */
    public static String netSummary() {
        StringBuilder okb = new StringBuilder();
        StringBuilder ign = new StringBuilder();
        try {
            Enumeration en = NetworkInterface.getNetworkInterfaces();
            int guard = 0;
            while (en != null && en.hasMoreElements() && guard++ < 64) {
                NetworkInterface ni;
                try {
                    ni = (NetworkInterface) en.nextElement();
                } catch (Throwable t) {
                    break;
                }
                if (ni == null) {
                    continue;
                }
                String name = null;
                try {
                    name = ni.getName();
                } catch (Throwable ignored) {
                }
                boolean noisy = isUnreachableIf(name);
                try {
                    if (!ni.isUp() || ni.isLoopback()) {
                        continue;
                    }
                } catch (Throwable t) {
                    continue;
                }
                String ip = firstIpv4(ni);
                if (ip == null) {
                    continue;
                }
                if (noisy) {
                    if (ign.length() > 0) {
                        ign.append(' ');
                    }
                    ign.append(name).append('=').append(ip);
                } else {
                    if (okb.length() > 0) {
                        okb.append(' ');
                    }
                    okb.append(kindOf(name)).append(' ').append(name).append('=').append(ip);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "netSummary: " + t);
        }

        StringBuilder out = new StringBuilder();
        if (okb.length() > 0) {
            out.append("可用网卡: ").append(okb);
        } else {
            out.append("未检测到可用网卡（请先连接 WiFi 或开启热点）");
        }
        if (ign.length() > 0) {
            out.append("\n已忽略: ").append(ign).append("（蜂窝地址对端访问不到）");
        }
        return out.toString();
    }

    private static String joinIps(String[] a) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < a.length; i++) {
            if (i > 0) {
                b.append(',');
            }
            b.append(a[i]);
        }
        return b.toString();
    }

    // ------------------------------------------------------------------ 网络循环

    private void loop() {
        Log.i(TAG, "http loop enter");
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
        Log.i(TAG, "http loop exit");
    }

    private void handle(Socket s) throws Exception {
        s.setSoTimeout(10000);
        InputStream in = s.getInputStream();
        String req = readLine(in);
        if (req == null) {
            return;
        }
        for (int i = 0; i < 64; i++) {
            String h = readLine(in);
            if (h == null || h.length() == 0) {
                break;
            }
        }
        String path = "/";
        int sp1 = req.indexOf(' ');
        if (sp1 > 0) {
            int sp2 = req.indexOf(' ', sp1 + 1);
            if (sp2 > sp1) {
                path = req.substring(sp1 + 1, sp2);
            }
        }
        int q = path.indexOf('?');
        if (q >= 0) {
            path = path.substring(0, q);
        }
        Log.i(TAG, "REQ " + path);

        if (path.equals("/") || path.equals("/index.html")) {
            sendBytes(s, 200, "text/html; charset=utf-8", indexHtml(), null);
        } else if (path.startsWith("/f/") || path.startsWith("/f?")) {
            int idx = parseIndex(path);
            File f = pickFile(idx);
            if (f == null) {
                sendText(s, 404, "没有这个文件");
            } else {
                sendFile(s, f);
            }
        } else if (path.equals("/all.zip")) {
            sendZip(s);
        } else if (path.equals("/favicon.ico")) {
            sendBytes(s, 204, "image/x-icon", new byte[0], null);
        } else {
            sendText(s, 404, "Not Found");
        }
    }

    private File pickFile(int idx) {
        synchronized (this) {
            if (idx < 0 || idx >= mFiles.size()) {
                return null;
            }
            return (File) mFiles.get(idx);
        }
    }

    private int parseIndex(String path) {
        try {
            if (path.startsWith("/f?")) {
                return 0;
            }
            String s = path.substring(3);
            int slash = s.indexOf('/');
            if (slash >= 0) {
                s = s.substring(0, slash);
            }
            return Integer.parseInt(s.trim());
        } catch (Throwable t) {
            return -1;
        }
    }

    private static String readLine(InputStream in) throws Exception {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        int c;
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

    // ------------------------------------------------------------------ 日志文件收集

    private synchronized void refreshFiles() {
        mFiles.clear();
        mSeen.clear();

        List dirs = new ArrayList();
        if (sCtx != null) {
            try {
                File fd = sCtx.getFilesDir();
                if (fd != null) {
                    dirs.add(new File(fd, "log"));
                }
            } catch (Throwable ignored) {
            }
            try {
                File ef = sCtx.getExternalFilesDir(null);
                if (ef != null) {
                    dirs.add(new File(ef, "log"));
                    dirs.add(ef);
                }
            } catch (Throwable ignored) {
            }
        }
        dirs.add(new File("/sdcard/BaiduCarlife"));
        dirs.add(new File("/sdcard/Android/data/com.baidu.carlifevehicle/files/log"));
        dirs.add(new File("/storage/sdcard0/BaiduCarlife"));

        for (int i = 0; i < dirs.size(); i++) {
            File d = (File) dirs.get(i);
            File[] fs = null;
            try {
                fs = d.listFiles();
            } catch (Throwable ignored) {
            }
            if (fs == null) {
                Log.i(TAG, "dir missing: " + d.getAbsolutePath());
                continue;
            }
            for (int j = 0; j < fs.length; j++) {
                File f = fs[j];
                try {
                    if (f == null || !f.isFile()) {
                        continue;
                    }
                    String n = f.getName().toLowerCase(Locale.US);
                    if (!n.endsWith(".log") && !n.endsWith(".txt")
                            && !n.endsWith(".gz") && !n.endsWith(".zip")) {
                        continue;
                    }
                    if (f.length() <= 0) {
                        continue;
                    }
                    String p = canonicalKey(f);
                    if (mSeen.contains(p)) {
                        continue;
                    }
                    mSeen.add(p);
                    mFiles.add(f);
                } catch (Throwable ignored) {
                }
            }
        }

        // 手写冒泡排序（按修改时间倒序），避免额外引入 Comparator 匿名类
        int n = mFiles.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - 1 - i; j++) {
                File a = (File) mFiles.get(j);
                File b = (File) mFiles.get(j + 1);
                if (a.lastModified() < b.lastModified()) {
                    mFiles.set(j, b);
                    mFiles.set(j + 1, a);
                }
            }
        }
        while (mFiles.size() > MAX_FILES) {
            mFiles.remove(mFiles.size() - 1);
        }

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < mFiles.size(); i++) {
            sb.append(((File) mFiles.get(i)).getAbsolutePath()).append(';');
        }
        Log.i(TAG, "refreshFiles count=" + mFiles.size() + " -> " + sb.toString());
    }

    // ------------------------------------------------------------------ 响应构造

    private byte[] indexHtml() {
        refreshFiles();
        List snapshot;
        synchronized (this) {
            snapshot = new ArrayList(mFiles);
        }

        StringBuilder b = new StringBuilder(4096);
        b.append("<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\">");
        b.append("<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">");
        b.append("<title>CarLife 车机日志</title><style>");
        b.append("*{box-sizing:border-box}body{margin:0;padding:18px;background:#101014;color:#e8e6f0;");
        b.append("font-family:-apple-system,'PingFang SC','Microsoft YaHei',Arial,sans-serif}");
        b.append("h1{font-size:19px;margin:4px 0 6px}.sub{color:#9b98a8;font-size:13px;margin-bottom:16px}");
        b.append(".all{display:block;text-align:center;background:#3b5bdb;color:#fff;text-decoration:none;");
        b.append("padding:14px;border-radius:10px;font-size:16px;font-weight:600;margin-bottom:18px}");
        b.append("ul{list-style:none;padding:0;margin:0}li{background:#1b1a21;border:1px solid #2a2833;");
        b.append("border-radius:10px;padding:13px 15px;margin-bottom:10px}");
        b.append("li a{color:#8fb2ff;text-decoration:none;font-size:15px;word-break:break-all}");
        b.append("li .meta{color:#8b8896;font-size:12px;margin-top:6px}");
        b.append(".empty{color:#9b98a8;padding:24px;text-align:center;background:#1b1a21;border-radius:10px}");
        b.append("</style></head><body>");
        b.append("<h1>CarLife 车机日志</h1>");
        b.append("<div class=\"sub\">共 ").append(snapshot.size()).append(" 个文件（按时间倒序，最多 ")
                .append(MAX_FILES).append(" 个）</div>");
        if (snapshot.isEmpty()) {
            b.append("<div class=\"empty\">暂无可下载的日志文件</div>");
        } else {
            b.append("<a class=\"all\" href=\"/all.zip\">打包下载全部（zip）</a><ul>");
            for (int i = 0; i < snapshot.size(); i++) {
                File f = (File) snapshot.get(i);
                b.append("<li><a href=\"/f/").append(i).append("\">")
                        .append(esc(f.getName())).append("</a>");
                b.append("<div class=\"meta\">").append(human(f.length()))
                        .append(" &middot; ").append(timeStr(f.lastModified())).append("</div></li>");
            }
            b.append("</ul>");
        }
        b.append("</body></html>");
        byte[] out;
        try {
            out = b.toString().getBytes("UTF-8");
        } catch (Throwable t) {
            out = b.toString().getBytes();
        }
        return out;
    }

    private void sendBytes(Socket s, int code, String ctype, byte[] body, String extra)
            throws Exception {
        OutputStream os = s.getOutputStream();
        StringBuilder h = new StringBuilder(256);
        h.append("HTTP/1.1 ").append(code).append(' ').append(reason(code)).append("\r\n");
        h.append("Content-Type: ").append(ctype).append("\r\n");
        h.append("Content-Length: ").append(body.length).append("\r\n");
        h.append("Connection: close\r\n");
        h.append("Cache-Control: no-store\r\n");
        if (extra != null) {
            h.append(extra);
        }
        h.append("\r\n");
        os.write(h.toString().getBytes("UTF-8"));
        if (body.length > 0) {
            os.write(body);
        }
        os.flush();
    }

    private void sendText(Socket s, int code, String text) throws Exception {
        sendBytes(s, code, "text/plain; charset=utf-8", text.getBytes("UTF-8"), null);
    }

    private void sendFile(Socket s, File f) throws Exception {
        String name = f.getName();
        String extra = "Content-Disposition: attachment; filename=\"" + asciiName(name)
                + "\"; filename*=UTF-8''" + pctEncode(name) + "\r\n";
        // 1.24: 文件长度在写头之前取死；发送循环按该长度截断。
        // 日志轮转（gzip+删原文件）发生在下载中途时，不再发出超过
        // Content-Length 的字节（协议越界）。文件变短仍可能短发，
        // 但这是 close 连接能兜住的，比超发安全。
        final long len = f.length();
        OutputStream os = s.getOutputStream();
        StringBuilder h = new StringBuilder(256);
        h.append("HTTP/1.1 200 OK\r\n");
        h.append("Content-Type: application/octet-stream\r\n");
        h.append("Content-Length: ").append(len).append("\r\n");
        h.append("Connection: close\r\n");
        h.append("Cache-Control: no-store\r\n");
        h.append(extra);
        h.append("\r\n");
        os.write(h.toString().getBytes("UTF-8"));

        FileInputStream fis = new FileInputStream(f);
        byte[] buf = new byte[8192];
        long sent = 0;
        try {
            while (sent < len) {
                int want = (int) Math.min(buf.length, len - sent);
                int n = fis.read(buf, 0, want);
                if (n <= 0) {
                    break;
                }
                os.write(buf, 0, n);
                sent += n;
            }
        } finally {
            try {
                fis.close();
            } catch (Throwable ignored) {
            }
        }
        os.flush();
        Log.i(TAG, "SENT " + name + " bytes=" + sent + "/" + len);
    }

    private void sendZip(Socket s) throws Exception {
        List snapshot;
        synchronized (this) {
            snapshot = new ArrayList(mFiles);
        }
        if (snapshot.isEmpty()) {
            sendText(s, 404, "暂无可下载的日志文件");
            return;
        }
        File tmp = new File(sCtx.getCacheDir(), "carlife-logs.zip");
        try {
            ZipOutputStream zos = new ZipOutputStream(
                    new BufferedOutputStream(new FileOutputStream(tmp), 8192));
            List used = new ArrayList();
            for (int i = 0; i < snapshot.size(); i++) {
                File f = (File) snapshot.get(i);
                if (f.length() > 32L * 1024 * 1024) {
                    continue;
                }
                zos.putNextEntry(new ZipEntry(uniqueName(used, f.getName())));
                FileInputStream fis = new FileInputStream(f);
                byte[] buf = new byte[8192];
                int n;
                while ((n = fis.read(buf)) > 0) {
                    zos.write(buf, 0, n);
                }
                try {
                    fis.close();
                } catch (Throwable ignored) {
                }
                zos.closeEntry();
            }
            zos.close();

            OutputStream os = s.getOutputStream();
            StringBuilder h = new StringBuilder(256);
            h.append("HTTP/1.1 200 OK\r\n");
            h.append("Content-Type: application/zip\r\n");
            h.append("Content-Length: ").append(tmp.length()).append("\r\n");
            h.append("Connection: close\r\n");
            h.append("Cache-Control: no-store\r\n");
            h.append("Content-Disposition: attachment; filename=\"carlife-logs.zip\"\r\n");
            h.append("\r\n");
            os.write(h.toString().getBytes("UTF-8"));

            FileInputStream fis = new FileInputStream(tmp);
            byte[] buf = new byte[8192];
            long sent = 0;
            int n;
            while ((n = fis.read(buf)) > 0) {
                os.write(buf, 0, n);
                sent += n;
            }
            try {
                fis.close();
            } catch (Throwable ignored) {
            }
            os.flush();
            Log.i(TAG, "SENT zip files=" + snapshot.size() + " bytes=" + sent);
        } finally {
            try {
                tmp.delete();
            } catch (Throwable ignored) {
            }
        }
    }

    // ------------------------------------------------------------------ 小工具

    /**
     * 去重用的「规范键」。
     *
     * 背景（1.21 修的 bug）：Android 上 /sdcard、/storage/sdcard0 和
     * /storage/emulated/0 是同一个目录的不同写法（符号链接）。refreshFiles()
     * 里同时登记了这几个路径，于是同一份文件被 listFiles() 收了两遍；
     * 原先用 getAbsolutePath() 当键去重无效，同一文件进了 mFiles 两次，
     * 打包时 ZipOutputStream 抛
     *     java.util.zip.ZipException: duplicate entry: xxx.log
     * 「打包下载全部」整个不可用（真机实测确认）。
     *
     * 优先 getCanonicalPath()（能真正解开符号链接）；某些精简 ROM 不让解析时，
     * 退回手工替换已知别名前缀兜底。
     */
    private static String canonicalKey(File f) {
        if (f == null) {
            return "";
        }
        try {
            String c = f.getCanonicalPath();
            if (c != null && c.length() > 0) {
                return c.replace('\\', '/');
            }
        } catch (Throwable ignored) {
        }
        String p;
        try {
            p = f.getAbsolutePath();
        } catch (Throwable t) {
            p = String.valueOf(f);
        }
        if (p == null) {
            return "";
        }
        p = p.replace('\\', '/');
        if (p.startsWith("/sdcard/")) {
            p = "/storage/emulated/0/" + p.substring("/sdcard/".length());
        } else if (p.startsWith("/mnt/sdcard/")) {
            p = "/storage/emulated/0/" + p.substring("/mnt/sdcard/".length());
        } else if (p.startsWith("/storage/sdcard0/")) {
            p = "/storage/emulated/0/" + p.substring("/storage/sdcard0/".length());
        }
        return p;
    }

    /**
     * 保证 zip 内条目名唯一。
     *
     * 即使去重做对了，不同目录下仍可能出现同名日志文件，而 ZipOutputStream
     * 不接受重名条目（解压端也会报 duplicate entry）。冲突时补 _2 / _3 后缀，
     * 扩展名挪到最后，解压后仍能看出类型。
     */
    private static String uniqueName(List used, String name) {
        String n = name;
        if (n == null || n.length() == 0) {
            n = "log";
        }
        if (!used.contains(n)) {
            used.add(n);
            return n;
        }
        String base = n;
        String ext = "";
        int dot = n.lastIndexOf('.');
        if (dot > 0 && dot < n.length() - 1) {
            base = n.substring(0, dot);
            ext = n.substring(dot);
        }
        for (int i = 2; i < 100000; i++) {
            String cand = base + "_" + i + ext;
            if (!used.contains(cand)) {
                used.add(cand);
                return cand;
            }
        }
        return base + "_" + System.currentTimeMillis() + ext;
    }

    private static String reason(int code) {
        if (code == 200) {
            return "OK";
        }
        if (code == 204) {
            return "No Content";
        }
        if (code == 404) {
            return "Not Found";
        }
        return "OK";
    }

    private static String esc(String s) {
        if (s == null) {
            return "";
        }
        StringBuilder b = new StringBuilder(s.length() + 16);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '&') {
                b.append("&amp;");
            } else if (c == '<') {
                b.append("&lt;");
            } else if (c == '>') {
                b.append("&gt;");
            } else if (c == '"') {
                b.append("&quot;");
            } else {
                b.append(c);
            }
        }
        return b.toString();
    }

    private static String asciiName(String s) {
        StringBuilder b = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c < 32 || c > 126 || c == '"' || c == '\\') {
                b.append('_');
            } else {
                b.append(c);
            }
        }
        return b.toString();
    }

    private static String pctEncode(String s) {
        if (s == null) {
            return "";
        }
        byte[] raw;
        try {
            raw = s.getBytes("UTF-8");
        } catch (Throwable t) {
            raw = s.getBytes();
        }
        StringBuilder b = new StringBuilder(raw.length * 3);
        for (int i = 0; i < raw.length; i++) {
            int c = raw[i] & 0xFF;
            if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || c == '.' || c == '-' || c == '_') {
                b.append((char) c);
            } else {
                b.append('%');
                String hex = Integer.toHexString(c).toUpperCase(Locale.US);
                if (hex.length() < 2) {
                    b.append('0');
                }
                b.append(hex);
            }
        }
        return b.toString();
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

    private static String timeStr(long ms) {
        try {
            return new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(new Date(ms));
        } catch (Throwable t) {
            return String.valueOf(ms);
        }
    }

    /**
     * 给「下载日志」界面显示用：本次可下载几个文件 / 多大 / 落在哪个目录。
     *
     * 顺带说一下 CarLife 自己的日志清理策略（a/a/a/a/n/g.smali，参数来自 assets/bdcf）：
     *   CONFIG_MAX_LOG_FILE_SIZE  默认 0x500000 = 5MB，单文件超过就 gzip 成 .gz 并删原文件
     *   CONFIG_MAX_LOG_FILE_COUNT 默认 0x14 = 20，目录内文件数 >= 20 时按修改时间删掉最旧的 20%
     * 所以日志不会无限增长。这里把体积显示出来，方便确认。
     */
    public static String summary() {
        try {
            // 注意：这里必须用 get()，不能直接读 sInst。
            // sInst 是 get() 里创建的，而 get() 第一次被调用是在 Activity.onStart()，
            // 而 summary() 是在 onCreate() 里调的 —— 直接读 sInst 会拿到 null，
            // 统计行就永远是空字符串（第一版就是这么错的，MuMu 实测时看不出来）。
            LogHttpServer s = get();
            s.refreshFiles();
            long total = 0;
            String dir = null;
            for (int i = 0; i < s.mFiles.size(); i++) {
                File f = (File) s.mFiles.get(i);
                total += f.length();
                if (dir == null) {
                    File p = f.getParentFile();
                    if (p != null) {
                        dir = p.getAbsolutePath();
                    }
                }
            }
            if (s.mFiles.isEmpty()) {
                return "未找到日志文件（目录可能还没生成）";
            }
            return dir + "\n共 " + s.mFiles.size() + " 个文件, " + human(total);
        } catch (Throwable t) {
            return "";
        }
    }
}
