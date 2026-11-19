package com.boottask;

import android.content.Context;
import android.content.Intent;

import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * v1.6.76：热点开机自启的进度执行器（大弹窗的数据源）。
 *
 * 流程与车机实际链路一一对应：
 *   阶段① 等待 ADB 就绪：AdbBridge 连 127.0.0.1:5555，拒绝则每 2s 重试，
 *          开机最长 100 秒（手动 20 秒）。每次重试通过 Progress 回调进弹窗。
 *   阶段② 等待 WiFi 就绪：ADB 就绪后脚本已 nohup 启动，WiFi 就绪门在脚本内部
 *          （boot_hotspot.sh settle/gate，最长 80 秒）。App 侧**直接读**
 *          /data/local/hotspot/gate.log 的增量（root 已 chmod 644，App 可读），
 *          每 1 秒一轮，把脚本采样原样显示。gate.log 出现 OPEN → 进入阶段③。
 *   阶段③ 正在开热点：继续读 boot.log 增量（step1~6 逐步落日志），
 *          出现 HOTSPOT UP → 成功；HOTSPOT FAILED / auto-disabled → 失败。
 *
 * 为什么用文件 tail 而不是再建一条 adb 轮询：每次异常断开都会在 adbd 侧留
 * CLOSE_WAIT（见 HotspotAuto.startNow 注释），而这两个日志文件本来就可读，
 * 零额外开销、零副作用。
 *
 * 日志落盘：所有弹窗行同步写 files/log/hotspot_progress.log（带时间戳），
 * LogHttpServer 已枚举 files/log，扫码「下载日志」/all.zip 直接带回。
 * 单文件超 128KB 时下次运行重建，避免无限膨胀。
 *
 * 执行在独立线程（"hotspot-run"），不占 ExecService 的规则执行线程——
 * 否则开机热点流程最长约 6 分钟会堵住后面的开机规则。
 */
public final class HotspotRun {

    public static final int PHASE_ADB = 1;
    public static final int PHASE_WIFI = 2;
    public static final int PHASE_AP = 3;
    public static final int PHASE_DONE = 4;

    /** 弹窗回调。HotspotRun 保证调用发生在后台线程，UI 更新由实现方切主线程。 */
    public interface Ui {
        void onPhase(int phase, long phaseStartMs, int limitSec);
        void onLine(String line);       // 已带时间戳；调用方把新行放最上面
        void onDone(boolean ok, String msg);
    }

    private static final File H_DIR = new File("/data/local/hotspot");
    private static final File GATE = new File(H_DIR, "gate.log");
    private static final File BOOT = new File(H_DIR, "boot.log");

    /** 脚本侧 tail 总窗口：WiFi 门最长 80s + 开热点约 24s + 脚本自身重试余量 */
    private static final long TAIL_WINDOW_MS = 240000L;
    public static final int MAX_LINES = 400;
    private static final long PROGRESS_LOG_MAX = 128 * 1024;

    private static final Object LOCK = new Object();
    private static boolean sRunning;
    private static int sPhase;
    private static long sPhaseStart;
    private static int sLimitSec;
    private static boolean sDoneOk;
    private static String sDoneMsg;
    private static Ui sUi;
    /** 本次运行的全部行，新的在 index 0（与弹窗展示顺序一致），供 Activity 重建时回放 */
    private static final List<String> sLines = new ArrayList<String>();

    private HotspotRun() {
    }

    // ------------------------------------------------------------ 对外入口

    /**
     * 启动一次带进度的热点流程。已有流程在跑时只把弹窗拉到前台，不重复执行。
     *
     * @param cmd           经 adbd 执行的命令（开机规则 CMD 或手动 START_NOW_SH）
     * @param timeoutMs     命令阶段超时（不含连接等待）
     * @param connectWaitMs 阶段①等 adbd 监听的上限（开机 100000 / 手动 20000）
     * @param manual        true=手动点按钮（START_NOW_SH 自带 RESULT= 判定）
     */
    public static void start(Context ctx, final String cmd, final long timeoutMs,
                             final long connectWaitMs, final boolean manual) {
        final Context app = ctx.getApplicationContext();
        synchronized (LOCK) {
            if (sRunning) {
                openUi(app);
                return;
            }
            sRunning = true;
            sLines.clear();
            sDoneMsg = null;
            sPhase = 0;
        }
        openUi(app);
        new Thread(new Runnable() {
            public void run() {
                try {
                    execute(app, cmd, timeoutMs, connectWaitMs, manual);
                } catch (Throwable t) {
                    emit(app, "执行器异常: " + t);
                    done(app, false, "执行失败：" + t);
                } finally {
                    synchronized (LOCK) {
                        sRunning = false;
                    }
                }
            }
        }, "hotspot-run").start();
    }

    private static void openUi(Context app) {
        try {
            Intent it = new Intent(app, HotspotProgressActivity.class);
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            app.startActivity(it);
        } catch (Throwable t) {
            BootDiagnostics.log(app, "HotspotRun: open progress ui failed: " + t);
        }
    }

    // ------------------------------------------------------------ UI 挂接

    /** Activity onCreate 调用：挂接并回放当前状态与已产生的日志行 */
    static void attach(Ui ui) {
        synchronized (LOCK) {
            sUi = ui;
            if (sPhase != 0) {
                ui.onPhase(sPhase, sPhaseStart, sLimitSec);
            }
            // 回放必须倒序：sLines[0] 是最新行，而 UI 的 onLine 每条 addView(tv,0)
            // 插到最上面 —— 正序回放会让每条都盖过前一条，最终整段颠倒
            // （实测 MuMu：回放后最旧的「手动开热点」在顶、最新行沉底）。
            for (int i = sLines.size() - 1; i >= 0; i--) {
                ui.onLine(sLines.get(i));
            }
            if (sDoneMsg != null) {
                ui.onDone(sDoneOk, sDoneMsg);
            }
        }
    }

    static void detach(Ui ui) {
        synchronized (LOCK) {
            if (sUi == ui) {
                sUi = null;
            }
        }
    }

    // ------------------------------------------------------------ 状态与落盘

    private static void setPhase(Context app, int phase, int limitSec, String headline) {
        Ui ui;
        synchronized (LOCK) {
            sPhase = phase;
            sPhaseStart = System.currentTimeMillis();
            sLimitSec = limitSec;
            ui = sUi;
        }
        if (headline != null) {
            emit(app, headline);
        }
        if (ui != null) {
            ui.onPhase(phase, sPhaseStart, limitSec);
        }
    }

    private static void done(Context app, boolean ok, String msg) {
        synchronized (LOCK) {
            sDoneOk = ok;
            sDoneMsg = msg;
        }
        setPhase(app, PHASE_DONE, 0, null);
        emit(app, (ok ? "[OK] " : "[FAIL] ") + msg);
        Ui ui;
        synchronized (LOCK) {
            ui = sUi;
        }
        if (ui != null) {
            ui.onDone(ok, msg);
        }
        BootDiagnostics.log(app, "HotspotRun done ok=" + ok + ": " + msg);
    }

    /** 弹窗一行 = 内存回放列表一行 + 落盘一行 + 在线 UI 一行 */
    private static void emit(Context app, String line) {
        String stamped = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                .format(new Date()) + "  " + line;
        Ui ui;
        synchronized (LOCK) {
            sLines.add(0, stamped);
            while (sLines.size() > MAX_LINES) {
                sLines.remove(sLines.size() - 1);
            }
            ui = sUi;
        }
        if (ui != null) {
            ui.onLine(stamped);
        }
        appendProgressLog(app, stamped);
    }

    private static void appendProgressLog(Context app, String stamped) {
        FileOutputStream fos = null;
        try {
            File dir = new File(app.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "hotspot_progress.log");
            if (f.length() > PROGRESS_LOG_MAX) {
                // 只留本次运行：旧内容在 boot.log/gate.log 里本来就有源头
                if (!f.delete()) {
                    return;
                }
            }
            fos = new FileOutputStream(f, true);
            fos.write((stamped + "\n").getBytes("UTF-8"));
        } catch (Throwable ignored) {
            // 落盘失败绝不能影响执行主流程
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    // ------------------------------------------------------------ 主流程

    private static void execute(Context app, String cmd, long timeoutMs,
                                long connectWaitMs, boolean manual) {
        setPhase(app, PHASE_ADB, (int) (connectWaitMs / 1000),
                manual ? "手动开热点（点按钮触发）" : "开机自启规则触发（BOOT_COMPLETED）");
        emit(app, "阶段① 连接本机 adbd 127.0.0.1:5555（最长 " + connectWaitMs / 1000 + " 秒）");

        // 脚本启动前记下两个日志的长度，之后只读「本轮新增」——
        // 防止上一次开机的 HOTSPOT UP 残留行造成假成功（项目实测踩过这个坑）。
        long gateOff = lengthOf(GATE);
        long bootOff = lengthOf(BOOT);

        final Context fApp = app;
        String out = AdbBridge.exec(cmd, timeoutMs, connectWaitMs, new AdbBridge.Progress() {
            public void onLog(String line) {
                emit(fApp, line);
            }
        });
        if (out == null) {
            done(app, false, "ADB 连接失败：adbd 未就绪或未授权，本次没能开热点。"
                    + "（检查 service.adb.tcp.port / adb_keys）");
            return;
        }
        emit(app, "adbd 返回: " + (out.length() > 300 ? out.substring(0, 300) + "…" : out));

        // 手动 START_NOW_SH 自己带结果判定（以 wlan0 拿到 192.168.43.1 为准）
        if (out.indexOf("RESULT=") >= 0) {
            if (out.indexOf("RESULT=ALREADY_UP") >= 0) {
                done(app, true, "热点本来就在跑（SSID 9B66BEB4 / 192.168.43.1）");
            } else if (out.indexOf("RESULT=UP") >= 0) {
                done(app, true, "热点已就绪：SSID 9B66BEB4 / 密码 12345678 / 192.168.43.1");
            } else if (out.indexOf("RESULT=FAIL") >= 0) {
                done(app, false, "开热点失败，详见下方日志或扫码下载 boot.log");
            } else {
                done(app, false, "已发起，但两分钟内没等到热点就绪；脚本仍在后台，稍后看状态");
            }
            return;
        }

        // 开机路径：脚本已 nohup 启动，开始跟踪 gate.log / boot.log
        setPhase(app, PHASE_WIFI, 80, "阶段② 等待 WiFi 就绪（脚本就绪门，最长 80 秒）");
        long t0 = System.currentTimeMillis();
        while (System.currentTimeMillis() - t0 < TAIL_WINDOW_MS) {
            gateOff = tail(app, GATE, gateOff, true);
            long[] newBootOff = {bootOff};
            String verdict = tailBoot(app, newBootOff);
            bootOff = newBootOff[0];
            if (verdict != null) {
                if ("UP".equals(verdict)) {
                    done(app, true, "热点已就绪：SSID 9B66BEB4 / 密码 12345678 / 192.168.43.1");
                } else if ("ALREADY".equals(verdict)) {
                    done(app, true, "热点已在运行（192.168.43.1），无需重开");
                } else if ("SKIP".equals(verdict)) {
                    done(app, false, "脚本被 DISABLED 标记跳过：热点自启处于关闭状态");
                } else {
                    done(app, false, "开热点失败，详见下方日志或扫码下载 boot.log");
                }
                return;
            }
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException ie) {
                done(app, false, "进度跟踪被中断；脚本仍在后台执行");
                return;
            }
        }
        done(app, false, "等待超时：脚本可能仍在后台执行，可扫码下载日志查看 boot.log / gate.log");
    }

    // ------------------------------------------------------------ 文件增量 tail

    private static long lengthOf(File f) {
        try {
            return f.isFile() ? f.length() : 0L;
        } catch (Throwable t) {
            return 0L;
        }
    }

    /**
     * 读 gate.log 增量并上屏；检测到 gate OPEN 时切入阶段③。
     *
     * @return 新的字节偏移
     */
    private static long tail(Context app, File f, long off, boolean isGate) {
        Delta d = readDelta(f, off);
        for (int i = 0; i < d.lines.size(); i++) {
            String line = d.lines.get(i);
            emit(app, (isGate ? "gate| " : "boot| ") + line);
            if (isGate && line.indexOf("OPEN") >= 0) {
                setPhase(app, PHASE_AP, 0,
                        "阶段③ WiFi 门已放行，正在开热点（关WiFi→载AP固件→hostapd→DHCP）");
            }
        }
        return d.offset;
    }

    /**
     * 读 boot.log 增量并上屏。
     *
     * @return null=还没有结论；"UP"/"ALREADY"/"SKIP"/"FAIL"=脚本已给出终态
     */
    private static String tailBoot(Context app, long[] offRef) {
        Delta d = readDelta(BOOT, offRef[0]);
        offRef[0] = d.offset;
        String verdict = null;
        for (int i = 0; i < d.lines.size(); i++) {
            String line = d.lines.get(i);
            emit(app, "boot| " + line);
            if (line.indexOf("step1") >= 0) {
                // gate.log 读不到时的保险：boot.log 进入 step1 同样说明 WiFi 门已放行
                synchronized (LOCK) {
                    if (sPhase == PHASE_WIFI) {
                        setPhase(app, PHASE_AP, 0,
                                "阶段③ WiFi 门已放行，正在开热点（关WiFi→载AP固件→hostapd→DHCP）");
                    }
                }
            }
            if (line.indexOf("HOTSPOT UP") >= 0) {
                verdict = "UP";
            } else if (line.indexOf("HOTSPOT FAILED") >= 0
                    || line.indexOf("auto-disabled") >= 0) {
                verdict = "FAIL";
            } else if (line.indexOf("hotspot already up") >= 0) {
                verdict = "ALREADY";
            } else if (line.indexOf("DISABLED flag present") >= 0) {
                verdict = "SKIP";
            }
        }
        return verdict;
    }

    private static final class Delta {
        long offset;
        final List<String> lines = new ArrayList<String>();
    }

    /**
     * 从字节偏移读增量，按行切开。残行（末尾没有 \n 的部分）回退偏移留给下一轮，
     * 避免把一行拆成两次显示。单轮最多 32KB（正常每 1~2 秒只有一行，约 100B）。
     * 文件被截断/重建（len < off）时从头读。
     */
    private static Delta readDelta(File f, long off) {
        Delta d = new Delta();
        d.offset = off;
        RandomAccessFile raf = null;
        try {
            if (!f.isFile()) {
                return d;
            }
            raf = new RandomAccessFile(f, "r");
            long len = raf.length();
            if (len < off) {
                off = 0;
            }
            if (len <= off) {
                d.offset = off;
                return d;
            }
            int toRead = (int) Math.min(len - off, 32768L);
            raf.seek(off);
            byte[] buf = new byte[toRead];
            raf.readFully(buf);
            String text = new String(buf, "UTF-8");
            int lastNl = text.lastIndexOf('\n');
            if (lastNl < 0) {
                d.offset = off;     // 全是残行，下轮再读
                return d;
            }
            String complete = text.substring(0, lastNl + 1);
            d.offset = off + complete.getBytes("UTF-8").length;
            String[] rows = complete.split("\n");
            for (int i = 0; i < rows.length; i++) {
                String row = rows[i].trim();
                if (row.length() > 0) {
                    d.lines.add(row);
                }
            }
        } catch (Throwable ignored) {
            // App 读不到（权限/文件未建）时静默——弹窗仍有阶段计时，脚本不受影响
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (Throwable ignored) {
                }
            }
        }
        return d;
    }
}
