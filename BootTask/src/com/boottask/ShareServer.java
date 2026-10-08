package com.boottask;

import android.content.Context;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * v1.6.15「手机遥控车机文件」服务端 —— 所有操作都在手机浏览器里做，车机只负责
 * 起个服务 + 显示二维码。选这个架构的理由：车机是电阻/红外屏 + 输入法难用，
 * 在车机上改文件名是酷刑；而文件改名、多选下载、编辑配置这些事在手机上是顺手的。
 *
 * 端口 18083（18082 是收 APK 的 UploadServer，互不干扰）。
 *
 *   GET  /fm.html            -> 手机端文件管理器页面（单页，含全部 UI）
 *   GET  /api/list?path=     -> 列目录 JSON
 *   GET  /api/search?path=&q=-> 搜文件名 JSON
 *   GET  /api/text?path=     -> 读文本 JSON（超 512KB 截断）
 *   POST /api/save?path=     -> 保存文本（body 原文）
 *   GET  /api/dl?path=       -> 下载文件
 *   GET  /api/zip?path=      -> 打包目录下载
 *   POST /api/up?path=<dir>  -> 上传到该目录（multipart）
 *   GET  /api/op?op=&src=&dst= -> rename / delete / mkdir / copy / move
 *   GET  /api/install?path=  -> 安装 APK（root 走 pm，无 root 拉起系统安装界面）
 *   GET  /api/info           -> 能力信息（root 是否可用等）
 *
 * 鉴权：服务每次启动生成随机 8 位小写字母数字访问码（SecureRandom），二维码 URL 里带
 * k=xxxx，API 校验。鉴权失败强制延迟 300ms（防同网段恶意页面拿 4 位老码盲喷爆破——
 * 老 4 位码 + 无限速 + op=shell 曾构成完整攻击链，v1.6.18 全部收紧）。
 * 另：操作类接口里 op=shell 只收 POST 且校验 Origin；删除拒绝根目录/一级目录。
 *
 * root 模式：请求带 rm=1 强制走 su（看 /system /etc 必需）；不带时我们有 su 就默认用
 * ——车是自己的，功能可用性优先；写操作仍走 FileOps 的「能直写就直写，否则借 su」。
 *
 * multipart 解析的二进制安全性与 UploadServer 一致：块尾保留 分隔符长度-1 字节
 * 进下一轮，避免边界跨块导致 APK 尾部丢字节（表现：解析包失败）。
 */
public final class ShareServer {

    public static final String TAG = "BootTaskShare";
    public static final int PORT = 18083;
    private static final long MAX_UPLOAD = 200L * 1024 * 1024;
    private static final int MAX_TEXT = 512 * 1024;

    /** 后台收到上传时通知车机界面（刷新列表/提示） */
    public interface Listener {
        void onUploaded(File f, long bytes);
    }

    private static ShareServer sInst;
    private static Context sCtx;
    private static volatile Listener sListener;
    private static volatile String sKey;
    private static volatile String sHome;
    private static volatile android.os.PowerManager.WakeLock sWake;
    private static final java.util.LinkedList<String> sRecent =
            new java.util.LinkedList<String>();
    private static final int RECENT_MAX = 12;

    private ServerSocket mServer;
    private volatile boolean mRunning;

    private ShareServer() {
    }

    public static void init(Context c) {
        if (sCtx == null && c != null) {
            sCtx = c.getApplicationContext();
        }
    }

    public static synchronized ShareServer get() {
        if (sInst == null) {
            sInst = new ShareServer();
        }
        return sInst;
    }

    public static void setListener(Listener l) {
        sListener = l;
    }

    /** 手机端打开时默认落到哪个目录（从车机本地管理器跳转过来时用） */
    public static void setHome(String path) {
        sHome = path;
    }

    /** 最近操作日志（车机界面显示用，让用户知道手机那边做了什么） */
    public static synchronized String recentLog() {
        StringBuilder b = new StringBuilder(1024);
        for (int i = 0; i < sRecent.size(); i++) {
            b.append(sRecent.get(i)).append('\n');
        }
        return b.toString();
    }

    private static synchronized void pushLog(String line) {
        sRecent.addFirst(line);
        while (sRecent.size() > RECENT_MAX) {
            sRecent.removeLast();
        }
    }

    /** 本次启动的访问码（二维码 URL 里带着它） */
    public static String key() {
        return sKey;
    }

    public static String[] urls() {
        String[] ips = com.baidu.carlifevehicle.logxfer.LogHttpServer.localIps();
        String[] u = new String[ips.length];
        String k = sKey == null ? "" : sKey;
        for (int i = 0; i < ips.length; i++) {
            u[i] = "http://" + ips[i] + ":" + PORT + "/fm.html?k=" + k;
        }
        return u;
    }

    public synchronized boolean isRunning() {
        return mRunning;
    }

    public synchronized void start() {
        if (mRunning) {
            return;
        }
        sKey = newKey();
        acquireWake();
        try {
            mServer = new ServerSocket();
            mServer.setReuseAddress(true);
            mServer.bind(new InetSocketAddress(PORT));
            mRunning = true;
            Thread t = new Thread(new Runnable() {
                public void run() {
                    loop();
                }
            }, "BootTaskShare");
            t.setDaemon(true);
            t.start();
            Log.i(TAG, "share server started port=" + PORT);
        } catch (Throwable t) {
            mRunning = false;
            mServer = null;
            Log.e(TAG, "start failed: " + t);
        }
    }

    public synchronized void stop() {
        if (!mRunning) {
            return;
        }
        mRunning = false;
        sKey = null;
        try {
            if (mServer != null) {
                mServer.close();
            }
        } catch (Throwable t) {
            Log.w(TAG, "close: " + t);
        }
        sHome = null;   // 不记住上次目录：下次开不确定用户想在哪
        releaseWake();
        mServer = null;
        Log.i(TAG, "share server stopped");
    }

    /**
     * 8 位小写字母数字访问码。老版 4 位数字（空间 9000）配合鉴权失败零限速，
     * 恶意网页在直连/热点网内可以 fire-and-forget 盲喷全空间；8 位 36 进制约
     * 28 亿空间，再叠加鉴权失败的 300ms 强制延迟，爆破不再现实。
     */
    private static String newKey() {
        char[] cs = new char[8];
        SecureRandom r = new SecureRandom();
        for (int i = 0; i < cs.length; i++) {
            int v = r.nextInt(36);
            cs[i] = (char) (v < 10 ? '0' + v : 'a' + v - 10);
        }
        return new String(cs);
    }

    /**
     * 持 PARTIAL_WAKE_LOCK：车机息屏后 CPU 一旦睡死，socket 虽然还 LISTEN 但不再接受连接
     * （实测表现：本来好好的端口，过一会儿 curl 直接 connection refused）。
     * 手机遥控期间用户往往不看车机屏，这个锁是必需的。
     */
    private static synchronized void acquireWake() {
        if (sWake != null || sCtx == null) {
            return;
        }
        try {
            android.os.PowerManager pm =
                    (android.os.PowerManager) sCtx.getSystemService(android.content.Context.POWER_SERVICE);
            sWake = pm.newWakeLock(android.os.PowerManager.PARTIAL_WAKE_LOCK, "BootTaskShare");
            sWake.acquire();
            Log.i(TAG, "wake lock acquired");
        } catch (Throwable t) {
            Log.w(TAG, "wake lock: " + t);
            sWake = null;
        }
    }

    private static synchronized void releaseWake() {
        if (sWake == null) {
            return;
        }
        try {
            sWake.release();
            Log.i(TAG, "wake lock released");
        } catch (Throwable t) {
            Log.w(TAG, "release wake: " + t);
        }
        sWake = null;
    }

    private void loop() {
        while (mRunning) {
            final Socket s;
            try {
                s = mServer.accept();
            } catch (Throwable t) {
                if (mRunning) {
                    Log.w(TAG, "accept: " + t);
                }
                continue;
            }
            // 每连接一线程：一个 200MB 上传 / 大目录 zip 期间其它请求照常服务，
            // 也避免恶意连接把整个服务占死（v1.6.17 及之前是同步 handle，一个慢请求全堵）
            Thread t = new Thread(new Runnable() {
                public void run() {
                    try {
                        handle(s);
                    } catch (Throwable e) {
                        Log.w(TAG, "handle: " + e);
                    } finally {
                        try {
                            s.close();
                        } catch (Throwable ignored) {
                        }
                    }
                }
            }, "BootTaskShare-conn");
            t.setDaemon(true);
            t.start();
        }
    }

    // ------------------------------------------------------------------ 路由

    private int contentLen;   // 当前请求的 Content-Length（handle 里填）

    private void handle(Socket s) throws Exception {
        s.setSoTimeout(300000);
        InputStream in = s.getInputStream();
        String req = readLine(in);
        if (req == null) {
            return;
        }
        contentLen = 0;
        boolean expect100 = false;
        String origin = null;
        for (int i = 0; i < 64; i++) {
            String h = readLine(in);
            if (h == null || h.length() == 0) {
                break;
            }
            String low = h.toLowerCase(Locale.US);
            if (low.startsWith("content-length:")) {
                try {
                    contentLen = Integer.parseInt(h.substring(h.indexOf(':') + 1).trim());
                } catch (Throwable ignored) {
                }
            } else if (low.startsWith("expect:") && low.indexOf("100-continue") >= 0) {
                expect100 = true;
            } else if (low.startsWith("origin:")) {
                origin = h.substring(h.indexOf(':') + 1).trim();
            }
        }

        String[] parts = req.split(" ");
        String method = parts.length > 0 ? parts[0] : "GET";
        String target = parts.length > 1 ? parts[1] : "/";
        Log.i(TAG, "REQ " + req);

        String p = target.startsWith("/api/") ? param(target, "k") : null;
        if (target.startsWith("/api/") && (p == null || !p.equals(sKey))) {
            // 鉴权失败先罚 300ms 再应答：同网段恶意页面盲喷时每次尝试都要付时间成本
            try {
                Thread.sleep(300L);
            } catch (InterruptedException ie) {
            }
            json(s, "{\"ok\":false,\"error\":\"访问码不对，请重新扫车机屏幕上的二维码\"}");
            return;
        }

        // 100-continue 放到鉴权之后再回：未授权请求不该先拿到 continue
        if (expect100) {
            OutputStream os = s.getOutputStream();
            os.write("HTTP/1.1 100 Continue\r\n\r\n".getBytes("US-ASCII"));
            os.flush();
        }

        if ("POST".equals(method) && target.startsWith("/api/up")) {
            apiUpload(s, in, param(target, "path"), param(target, "rm"));
            return;
        }
        if ("POST".equals(method) && target.startsWith("/api/save")) {
            apiSave(s, in, param(target, "path"));
            return;
        }
        if (target.startsWith("/fm.html") || target.equals("/")) {
            sendAsset(s, "logxfer/fm.html", "text/html; charset=utf-8");
            return;
        }
        if (target.startsWith("/api/list")) {
            apiList(s, param(target, "path"), rootMode(param(target, "rm")));
            return;
        }
        if (target.startsWith("/api/search")) {
            apiSearch(s, param(target, "path"), param(target, "q"),
                    rootMode(param(target, "rm")));
            return;
        }
        if (target.startsWith("/api/text")) {
            apiText(s, param(target, "path"), rootMode(param(target, "rm")));
            return;
        }
        if (target.startsWith("/api/dl")) {
            apiDownload(s, param(target, "path"));
            return;
        }
        if (target.startsWith("/api/zip")) {
            apiZip(s, param(target, "path"));
            return;
        }
        if (target.startsWith("/api/apps")) {
            apiApps(s, param(target, "q"), param(target, "sys"));
            return;
        }
        if (target.startsWith("/api/op")) {
            apiOp(s, param(target, "op"), param(target, "src"), param(target, "dst"),
                    rootMode(param(target, "rm")), method, origin);
            return;
        }
        if (target.startsWith("/api/install")) {
            apiInstall(s, param(target, "path"));
            return;
        }
        if (target.startsWith("/api/info")) {
            apiInfo(s);
            return;
        }
        byte[] b = "not found".getBytes("UTF-8");
        respondHead(s, 404, "text/plain", b.length, null);
        s.getOutputStream().write(b);
        s.getOutputStream().flush();
    }

    private boolean rootMode(String rm) {
        if ("1".equals(rm)) {
            return true;
        }
        if ("0".equals(rm)) {
            return false;
        }
        return FileOps.suOk();
    }

    // ------------------------------------------------------------------ API

    private void apiInfo(Socket s) throws Exception {
        boolean root = FileOps.suOk();
        StringBuilder b = new StringBuilder(256);
        b.append("{\"ok\":true,\"root\":").append(root)
                .append(",\"version\":").append(jq(appVersion()))
                .append(",\"home\":").append(jq(defaultHome()))
                .append(",\"roots\":[");
        String[] cand = roots();
        for (int i = 0; i < cand.length; i++) {
            if (i > 0) {
                b.append(',');
            }
            b.append(jq(cand[i]));
        }
        b.append("]}");
        json(s, b.toString());
    }

    /** 版本号从 PackageManager 读，不再硬编码（老版写死 1.6.15，App 都到 1.6.17 了） */
    private static String appVersion() {
        try {
            if (sCtx != null) {
                return sCtx.getPackageManager()
                        .getPackageInfo(sCtx.getPackageName(), 0).versionName;
            }
        } catch (Throwable ignored) {
        }
        return "unknown";
    }

    private static String defaultHome() {
        if (sHome != null && new File(sHome).isDirectory()) {
            return sHome;
        }
        String[] cand = new String[]{"/sdcard", "/storage/emulated/0", "/mnt/sdcard"};
        for (int i = 0; i < cand.length; i++) {
            if (new File(cand[i]).isDirectory()) {
                return cand[i];
            }
        }
        if (sCtx != null) {
            File f = sCtx.getExternalFilesDir(null);
            if (f != null) {
                return f.getAbsolutePath();
            }
        }
        return "/";
    }

    private static String[] roots() {
        List<String> l = new ArrayList<String>();
        String[] cand = new String[]{"/sdcard", "/storage/emulated/0", "/mnt/sdcard",
                "/sdcard/Download", "/mnt/usb", "/storage", "/mnt",
                "/sdcard/Android/data/com.boottask/files/inbox",
                "/etc", "/system", "/data/local", "/proc"};
        for (int i = 0; i < cand.length; i++) {
            if (new File(cand[i]).exists()) {
                l.add(cand[i]);
            }
        }
        return l.toArray(new String[l.size()]);
    }

    private void apiList(Socket s, String path, boolean rm) throws Exception {
        if (path == null || path.length() == 0) {
            path = defaultHome();
        }
        FileOps.Entry[] es = FileOps.list(path, rm);
        StringBuilder b = new StringBuilder(8192);
        if (es == null) {
            b.append("{\"ok\":false,\"path\":").append(jq(path))
                    .append(",\"error\":\"打不开（不存在或无权限）")
                    .append(je(FileOps.lastError() == null ? "" : "\\n" + FileOps.lastError()))
                    .append("\"").append(rm ? "" : ",\"hintRoot\":true")
                    .append(",\"items\":[]}");
            json(s, b.toString());
            return;
        }
        b.append("{\"ok\":true,\"path\":").append(jq(path))
                .append(",\"parent\":").append(jq(FileOps.parent(path)))
                .append(",\"rootMode\":").append(rm)
                .append(",\"canWrite\":").append(FileOps.canDirectWrite(path) || rm)
                .append(",\"items\":[");
        for (int i = 0; i < es.length; i++) {
            FileOps.Entry e = es[i];
            if (i > 0) {
                b.append(',');
            }
            b.append("{\"name\":").append(jq(e.name))
                    .append(",\"path\":").append(jq(e.path))
                    .append(",\"dir\":").append(e.dir)
                    .append(",\"size\":").append(e.size)
                    .append(",\"sizeText\":").append(jq(FileOps.human(e.size)))
                    .append(",\"time\":").append(e.modified)
                    .append(",\"timeText\":").append(jq(FileOps.timeStr(e.modified)))
                    .append(",\"perms\":").append(jq(e.perms))
                    .append('}');
        }
        b.append("]}");
        json(s, b.toString());
    }

    private void apiSearch(Socket s, String path, String q, boolean rm) throws Exception {
        if (path == null) {
            path = defaultHome();
        }
        List<FileOps.Entry> hits = q == null ? new ArrayList<FileOps.Entry>()
                : FileOps.search(path, q, rm, 200);
        StringBuilder b = new StringBuilder(4096);
        b.append("{\"ok\":true,\"items\":[");
        for (int i = 0; i < hits.size(); i++) {
            FileOps.Entry e = hits.get(i);
            if (i > 0) {
                b.append(',');
            }
            b.append("{\"name\":").append(jq(e.name))
                    .append(",\"path\":").append(jq(e.path))
                    .append(",\"dir\":").append(e.dir)
                    .append(",\"parent\":").append(jq(FileOps.parent(e.path)))
                    .append('}');
        }
        b.append("]}");
        json(s, b.toString());
    }

    private void apiText(Socket s, String path, boolean rm) throws Exception {
        if (path == null) {
            json(s, "{\"ok\":false,\"error\":\"no path\"}");
            return;
        }
        File f = new File(path);
        String text = FileOps.readText(path, rm, MAX_TEXT);
        StringBuilder b = new StringBuilder(Math.max(512, (text == null ? 0 : text.length()) + 256));
        if (text == null) {
            b.append("{\"ok\":false,\"error\":\"读不到（无权限或不是文件）\"}");
        } else {
            b.append("{\"ok\":true,\"path\":").append(jq(path))
                    .append(",\"size\":").append(f.length())
                    .append(",\"truncated\":").append(f.length() > MAX_TEXT)
                    .append(",\"canWrite\":")
                    .append(FileOps.canDirectWrite(path) || FileOps.suOk())
                    .append(",\"text\":").append(jq(text))
                    .append('}');
        }
        json(s, b.toString());
    }

    private void apiSave(Socket s, InputStream in, String path) throws Exception {
        if (path == null) {
            json(s, "{\"ok\":false,\"error\":\"no path\"}");
            return;
        }
        byte[] body = readBody(in, contentLen);
        String text = new String(body, "UTF-8");
        String err = FileOps.writeText(path, text);
        json(s, err == null
                ? "{\"ok\":true,\"bytes\":" + body.length + "}"
                : "{\"ok\":false,\"error\":" + jq(err) + "}");
    }

    private void apiDownload(Socket s, String path) throws Exception {
        if (path == null) {
            json(s, "{\"ok\":false,\"error\":\"no path\"}");
            return;
        }
        File f = new File(path);
        if (!f.isFile()) {
            json(s, "{\"ok\":false,\"error\":\"不是文件或不存在\"}");
            return;
        }
        String lower = f.getName().toLowerCase();
        String ct = lower.endsWith(".apk") ? "application/vnd.android.package-archive"
                : "application/octet-stream";
        respondHead(s, 200, ct, f.length(),
                "Content-Disposition: attachment; filename=\"" + asciiName(f.getName()) + "\"\r\n");
        Log.i(TAG, "download " + path);
        FileInputStream in = null;
        OutputStream os = s.getOutputStream();
        try {
            in = new FileInputStream(f);
            byte[] buf = new byte[65536];
            int n;
            while ((n = in.read(buf)) > 0) {
                os.write(buf, 0, n);
            }
            os.flush();
        } catch (Throwable t) {
            Log.w(TAG, "download: " + t);
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private void apiZip(Socket s, String path) throws Exception {
        File f = path == null ? new File(defaultHome()) : new File(path);
        respondHead(s, 200, "application/zip", -1L,
                "Content-Disposition: attachment; filename=\"" + asciiName(f.getName())
                        + ".zip\"\r\n");
        OutputStream os = s.getOutputStream();
        ZipOutputStream zos = new ZipOutputStream(os);
        byte[] buf = new byte[65536];
        try {
            addToZip(zos, f, "", buf);
            zos.finish();
            zos.flush();
        } catch (Throwable t) {
            Log.w(TAG, "zip: " + t);
        } finally {
            try {
                zos.close();
            } catch (Throwable ignored) {
            }
        }
    }

    private void addToZip(ZipOutputStream zos, File f, String prefix, byte[] buf) throws Exception {
        String base = prefix + f.getName();
        if (f.isDirectory()) {
            zos.putNextEntry(new ZipEntry(base + "/"));
            zos.closeEntry();
            File[] kids = f.listFiles();
            if (kids != null) {
                for (int i = 0; i < kids.length; i++) {
                    addToZip(zos, kids[i], base + "/", buf);
                }
            }
            return;
        }
        if (!f.isFile()) {
            return;
        }
        FileInputStream in = null;
        try {
            zos.putNextEntry(new ZipEntry(base));
            in = new FileInputStream(f);
            int n;
            while ((n = in.read(buf)) > 0) {
                zos.write(buf, 0, n);
            }
            zos.closeEntry();
        } catch (Throwable t) {
            Log.w(TAG, "zip entry " + base + ": " + t);
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    /**
     * 应用列表：手机端「应用管理」页用。
     * 带上版本号/安装更新时间，方便判断刚装的包是不是真的更新上去了。
     *
     * @param q   包名或应用名关键字过滤；为空列全部
     * @param sys 只看第三方 / 只看系统 / 全部（thirdparty|system|all）
     */
    private void apiApps(Socket s, String q, String sys) throws Exception {
        if (sCtx == null) {
            json(s, "{\"ok\":false,\"error\":\"服务未初始化\"}");
            return;
        }
        StringBuilder b = new StringBuilder(20000);
        b.append("{\"ok\":true,\"root\":").append(FileOps.suOk()).append(",\"items\":[");
        int count = 0;
        try {
            android.content.pm.PackageManager pm = sCtx.getPackageManager();
            java.util.List<android.content.pm.PackageInfo> list =
                    pm.getInstalledPackages(0);
            String lower = q == null ? "" : q.toLowerCase();
            boolean onlyThird = "thirdparty".equals(sys);
            boolean onlySystem = "system".equals(sys);
            for (int i = 0; i < list.size(); i++) {
                android.content.pm.PackageInfo pi = list.get(i);
                String label = String.valueOf(pi.applicationInfo.loadLabel(pm));
                boolean systemApp = (pi.applicationInfo.flags
                        & android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0;
                if (onlyThird && systemApp) {
                    continue;
                }
                if (onlySystem && !systemApp) {
                    continue;
                }
                if (lower.length() > 0
                        && pi.packageName.toLowerCase().indexOf(lower) < 0
                        && label.toLowerCase().indexOf(lower) < 0) {
                    continue;
                }
                long when = 0;
                try {
                    when = pi.lastUpdateTime;       // API 9+，min-api 8 上要防 NoSuchFieldError
                } catch (Throwable ignored) {
                }
                if (when <= 0) {
                    try {
                        when = pi.firstInstallTime;
                    } catch (Throwable ignored) {
                    }
                }
                if (count > 0) {
                    b.append(',');
                }
                b.append("{\"pkg\":").append(jq(pi.packageName))
                        .append(",\"name\":").append(jq(label))
                        .append(",\"ver\":").append(jq(pi.versionName))
                        .append(",\"code\":").append(pi.versionCode)
                        .append(",\"system\":").append(systemApp)
                        .append(",\"time\":").append(when)
                        .append('}');
                count++;
            }
        } catch (Throwable t) {
            Log.w(TAG, "apps: " + t);
            json(s, "{\"ok\":false,\"error\":" + jq(String.valueOf(t)) + "}");
            return;
        }
        b.append("]}");
        json(s, b.toString());
    }

    private void apiOp(Socket s, String op, String src, String dst, boolean rm,
                       String method, String origin) throws Exception {
        if (op == null || src == null) {
            json(s, "{\"ok\":false,\"error\":\"参数不全\"}");
            return;
        }
        // op=shell 是 root 命令执行口，纵深防御收紧（v1.6.18）：
        // 只收 POST + 浏览器跨域 POST 一定带 Origin，带且非本机即拒（防恶意页面 CSRF）
        if ("shell".equals(op)) {
            if (!"POST".equals(method) || isCrossOrigin(origin)) {
                json(s, "{\"ok\":false,\"error\":\"shell 仅限诊断 POST，且拒绝跨源调用\"}");
                return;
            }
        }
        // 删除的服务端护栏：手机 UI 的 confirm 只是前端摆设，API 层必须自己兜底
        if ("delete".equals(op) && isTopLevelPath(src)) {
            json(s, "{\"ok\":false,\"error\":\"拒绝删除根目录/一级目录（" + je(src) + "）\"}");
            return;
        }
        String err;
        if ("shell".equals(op)) {
            // 诊断用：直接看 su 命令的真实返回（排查"为什么列不出来"最快的一道口子）
            String out = FileOps.su(src);
            pushLog(timeNow() + " shell " + clip(src, 60));
            json(s, "{\"ok\":true,\"result\":" + jq(out == null ? "(null)" : out) + "}");
            return;
        } else if ("rename".equals(op)) {
            err = dst == null ? "缺目标名" : FileOps.rename(src, dst);
        } else if ("delete".equals(op)) {
            err = FileOps.delete(src);
        } else if ("mkdir".equals(op)) {
            err = FileOps.mkdir(src);
        } else if ("copy".equals(op) || "move".equals(op)) {
            if (dst == null) {
                err = "缺目标路径";
            } else {
                String to = dst.endsWith("/") || new File(dst).isDirectory()
                        ? FileOps.join(dst, new File(src).getName()) : dst;
                err = FileOps.copy(src, to, "move".equals(op));
            }
        } else if ("uninstall".equals(op)) {
            if (sCtx == null) {
                json(s, "{\"ok\":false,\"error\":\"服务未初始化\"}");
                return;
            }
            String out = AppManager.uninstall(sCtx, src, dst != null && dst.equals("keep"));
            pushLog(timeNow() + " 卸载 " + src + "：" + clip(out, 100));
            json(s, "{\"ok\":true,\"result\":" + jq(out) + "}");
            return;
        } else if ("launch".equals(op)) {
            if (sCtx == null) {
                json(s, "{\"ok\":false,\"error\":\"服务未初始化\"}");
                return;
            }
            String out = AppManager.launch(sCtx, src);
            pushLog(timeNow() + " 启动 " + src + "：" + clip(out, 60));
            json(s, "{\"ok\":true,\"result\":" + jq(out) + "}");
            return;
        } else {
            err = "不支持的操作 " + op;
        }
        Log.i(TAG, "op=" + op + " src=" + src + " dst=" + dst + " err=" + err);
        pushLog(timeNow() + " " + op + " " + new File(src).getName()
                + (err == null ? " 完成" : " 失败：" + err));
        json(s, err == null ? "{\"ok\":true}" : "{\"ok\":false,\"error\":" + jq(err) + "}");
    }

    private void apiInstall(Socket s, String path) throws Exception {
        if (path == null) {
            json(s, "{\"ok\":false,\"error\":\"no path\"}");
            return;
        }
        File f = new File(path);
        String out;
        if (sCtx != null) {
            out = ApkInstaller.install(sCtx, f, true);
        } else {
            out = "服务未初始化";
        }
        pushLog(timeNow() + " 安装 APK " + f.getName() + "：" + clip(out, 120));
        json(s, "{\"ok\":true,\"result\":" + jq(out) + "}");
    }

    private static String timeNow() {
        try {
            return new java.text.SimpleDateFormat("HH:mm:ss")
                    .format(new java.util.Date());
        } catch (Throwable t) {
            return "";
        }
    }

    /** 浏览器发的 Origin 是否指向别的站点（跨源 CSRF 特征）。curl 等不带 Origin 视为同源 */
    private static boolean isCrossOrigin(String origin) {
        if (origin == null || origin.length() == 0) {
            return false;
        }
        String o = origin.toLowerCase(Locale.US);
        // 形如 http://192.168.49.1:18083 —— 只要是本服务地址就放行
        return !(o.startsWith("http://") && o.indexOf(":18083") > 0);
    }

    /** "/" 或 "/xxx"（一级目录）——删这些几乎必然是灾难，直接拒 */
    private static boolean isTopLevelPath(String path) {
        if (path == null || path.length() == 0) {
            return true;
        }
        String p = path.endsWith("/") && path.length() > 1
                ? path.substring(0, path.length() - 1) : path;
        return p.equals("/") || p.indexOf('/', 1) < 0;
    }

    private static String clip(String s, int n) {
        String one = s.replace('\n', ' ').trim();
        return one.length() <= n ? one : one.substring(0, n) + "…";
    }

    /**
     * 上传到指定目录。目录不可写但有 root 时：先落临时文件再 su cp
     * ——这样往 /etc、/system 传配置也能通（车机改亿连配置正是这个场景）。
     */
    private void apiUpload(Socket s, InputStream in, String dirParam, String rm) throws Exception {
        String first = readLine(in);
        File outDir = dirParam == null ? UploadServer.inboxDir() : new File(dirParam);
        if (first == null || !first.startsWith("--")) {
            json(s, "{\"ok\":false,\"error\":\"不是 multipart 请求\"}");
            return;
        }
        String boundary = first.trim();
        String filename = null;
        for (int i = 0; i < 32; i++) {
            String h = readLine(in);
            if (h == null || h.length() == 0) {
                break;
            }
            int fi = h.toLowerCase(Locale.US).indexOf("filename=\"");
            if (fi >= 0) {
                int end = h.indexOf('"', fi + 10);
                if (end > fi) {
                    filename = h.substring(fi + 10, end);
                }
            }
        }
        if (filename == null || filename.length() == 0) {
            json(s, "{\"ok\":false,\"error\":\"没有文件字段\"}");
            return;
        }
        String base = safeName(filename);
        File dst = new File(outDir, base);
        // 同名不静默覆盖（FileOutputStream 是 truncate 语义，覆盖了用户找不回原文件）
        if (dst.exists()) {
            dst = new File(outDir, uniqueName(outDir, base));
            base = dst.getName();
        }

        boolean viaRoot = !FileOps.canDirectWrite(dst.getAbsolutePath());
        File realDst = dst;
        if (viaRoot) {
            if (!FileOps.suOk()) {
                json(s, "{\"ok\":false,\"error\":\"车机目录不可写且无 root：" + je(outDir.getAbsolutePath())
                        + "\"}");
                return;
            }
            realDst = new File(FileOps.tmpDir(), base);
            FileOps.su("mkdir -p " + FileOps.q(outDir.getAbsolutePath()));
        } else if (!outDir.exists()) {
            outDir.mkdirs();
        }

        long got = writePart(in, realDst, boundary);
        if (got < 0) {
            try {
                realDst.delete();
            } catch (Throwable ignored) {
            }
            json(s, "{\"ok\":false,\"error\":\"写入失败或超过 200MB\"}");
            return;
        }
        if (viaRoot) {
            String cp = FileOps.su("cp " + FileOps.q(realDst.getAbsolutePath()) + " "
                    + FileOps.q(dst.getAbsolutePath()) + " && chmod 644 "
                    + FileOps.q(dst.getAbsolutePath()));
            try {
                realDst.delete();
            } catch (Throwable ignored) {
            }
            if (cp == null) {
                json(s, "{\"ok\":false,\"error\":\"su 复制到目标目录失败\"}");
                return;
            }
        }
        Log.i(TAG, "uploaded " + dst.getAbsolutePath() + " bytes=" + got + " viaRoot=" + viaRoot);
        pushLog(timeNow() + " 收到上传 " + base + " " + FileOps.human(got)
                + (viaRoot ? "（root）" : "") + " → " + outDir.getAbsolutePath());
        Listener l = sListener;
        if (l != null) {
            try {
                l.onUploaded(dst, got);
            } catch (Throwable t) {
                Log.w(TAG, "listener: " + t);
            }
        }
        json(s, "{\"ok\":true,\"name\":" + jq(base) + ",\"bytes\":" + got
                + ",\"path\":" + jq(dst.getAbsolutePath()) + "}");
    }

    /** 找一个不冲突的名字：照片.jpg → 照片(1).jpg、照片(2).jpg … */
    private static String uniqueName(File dir, String base) {
        int dot = base.lastIndexOf('.');
        String stem = dot > 0 ? base.substring(0, dot) : base;
        String ext = dot > 0 ? base.substring(dot) : "";
        for (int i = 1; i < 1000; i++) {
            String cand = stem + "(" + i + ")" + ext;
            if (!new File(dir, cand).exists()) {
                return cand;
            }
        }
        return System.currentTimeMillis() + ext;
    }

    /**
     * 把一个 part 流式写到 dst，直到 "\r\n--boundary"。
     *
     * @return 写入字节数；-1 = 失败/中断
     */
    private static long writePart(InputStream in, File dst, String boundary) throws Exception {
        byte[] delim = ("\r\n" + boundary).getBytes("US-ASCII");
        FileOutputStream fos = null;
        long total = 0;
        boolean finished = false;
        try {
            fos = new FileOutputStream(dst);
            byte[] buf = new byte[65536];
            byte[] tail = new byte[delim.length - 1];
            int keep = 0;
            while (true) {
                int n = in.read(buf, 0, buf.length);
                if (n < 0) {
                    // EOF 还没见到 boundary = 客户端中途断网/超时。
                    // 老版把这种当成功返回字节数，半截文件留在车机上还提示「已上传」，
                    // 之后装 APK 必失败且难排查（v1.6.18 修：按失败处理并删除残件）
                    return -1;
                }
                if (n == 0) {
                    continue;
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
                if (total > MAX_UPLOAD) {
                    return -1;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "writePart: " + t);
            return -1;
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Throwable ignored) {
                }
            }
        }
        return finished ? total : -1;
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

    // ------------------------------------------------------------------ 传输层小工具

    private void sendAsset(Socket s, String assetPath, String ctype) throws Exception {
        byte[] body;
        try {
            InputStream is = sCtx.getAssets().open(assetPath);
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[8192];
            int n;
            while ((n = is.read(b)) > 0) {
                bos.write(b, 0, n);
            }
            is.close();
            body = bos.toByteArray();
        } catch (Throwable t) {
            Log.e(TAG, "read asset " + assetPath + ": " + t);
            body = ("<html><body><h3>页面缺失</h3></body></html>").getBytes("UTF-8");
        }
        respondHead(s, 200, ctype, body.length, null);
        s.getOutputStream().write(body);
        s.getOutputStream().flush();
    }

    private static void json(Socket s, String body) throws Exception {
        byte[] b = body.getBytes("UTF-8");
        respondHead(s, 200, "application/json; charset=utf-8", b.length, null);
        s.getOutputStream().write(b);
        s.getOutputStream().flush();
    }

    private static void respondHead(Socket s, int code, String ctype, long len, String extra)
            throws Exception {
        // 状态短语不再写死 OK（404 返回 "404 Not Found" 而不是不规范的 "404 OK"）
        String reason = code == 404 ? "Not Found" : "OK";
        StringBuilder h = new StringBuilder(256);
        h.append("HTTP/1.1 ").append(code).append(' ').append(reason).append("\r\n");
        h.append("Content-Type: ").append(ctype).append("\r\n");
        if (len >= 0) {
            h.append("Content-Length: ").append(len).append("\r\n");
        }
        h.append("Connection: close\r\n");
        h.append("Cache-Control: no-store\r\n");
        if (extra != null) {
            h.append(extra);
        }
        h.append("\r\n");
        s.getOutputStream().write(h.toString().getBytes("UTF-8"));
    }

    /** 读定长 body（POST 用） */
    private static byte[] readBody(InputStream in, int len) throws Exception {
        if (len <= 0) {
            return new byte[0];
        }
        if (len > 8 * 1024 * 1024) {
            len = 8 * 1024 * 1024;
        }
        byte[] b = new byte[len];
        int off = 0;
        while (off < len) {
            int n = in.read(b, off, len - off);
            if (n < 0) {
                break;
            }
            off += n;
        }
        return b;
    }

    private static String param(String target, String name) {
        int q = target.indexOf('?');
        if (q < 0) {
            return null;
        }
        String[] pairs = target.substring(q + 1).split("&");
        for (int i = 0; i < pairs.length; i++) {
            int eq = pairs[i].indexOf('=');
            if (eq <= 0) {
                continue;
            }
            if (pairs[i].substring(0, eq).equals(name)) {
                try {
                    // 前端用 encodeURIComponent（空格→%20，+ 是字面加号），
                    // URLDecoder 的表单语义会把 + 解成空格，含 + 的文件名全部对不上
                    // （v1.6.18 修）：先把 + 保护成 %2B 再解码
                    String v = pairs[i].substring(eq + 1).replace("+", "%2B");
                    return URLDecoder.decode(v, "UTF-8");
                } catch (Throwable t) {
                    return pairs[i].substring(eq + 1);
                }
            }
        }
        return null;
    }

    /** JSON 字符串字面量（含引号） */
    private static String jq(String s) {
        return "\"" + je(s == null ? "" : s) + "\"";
    }

    private static String je(String s) {
        StringBuilder b = new StringBuilder(s.length() + 16);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '"') {
                b.append("\\\"");
            } else if (c == '\\') {
                b.append("\\\\");
            } else if (c == '\n') {
                b.append("\\n");
            } else if (c == '\r') {
                b.append("\\r");
            } else if (c == '\t') {
                b.append("\\t");
            } else if (c < 0x20 || c == 0x7F) {
                b.append("\\u");
                String hex = Integer.toHexString(c);
                for (int k = hex.length(); k < 4; k++) {
                    b.append('0');
                }
                b.append(hex);
            } else {
                b.append(c);
            }
        }
        return b.toString();
    }

    private static String asciiName(String n) {
        StringBuilder b = new StringBuilder(n.length());
        for (int i = 0; i < n.length(); i++) {
            char c = n.charAt(i);
            if (c >= 32 && c <= 126) {
                b.append(c);
            } else {
                b.append('_');
            }
        }
        return b.length() > 0 ? b.toString() : "file.bin";
    }

    /**
     * 上传文件名安全化。v1.6.18 起保留中文等非 ASCII 字符（老版全变下划线，
     * 两个中文名还会碰撞覆盖——面向中文用户的硬伤）；只滤路径分隔符和控制字符。
     */
    private static String safeName(String n) {
        StringBuilder b = new StringBuilder(n.length());
        for (int i = 0; i < n.length(); i++) {
            char c = n.charAt(i);
            if (c == '/' || c == '\\' || c == ':' || c < 32 || c == 0x7F) {
                b.append('_');
            } else {
                b.append(c);
            }
        }
        String s = b.toString().trim();
        return s.length() > 0 ? s : "upload.bin";
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
}
