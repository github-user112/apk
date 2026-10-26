package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.SystemClock;

import java.util.Map;

/**
 * v1.6.46 USB 连接手机 → 触发 usb_phone 规则（动作可选「打开应用」等）。
 *
 * 一条线插上会冒 2~3 个广播，所以只认「状态跳变」：0=无设备 / 1=有设备，再叠 60 秒冷却。
 * Manifest 注册 4 个广播：
 *   USB_STATE                 USB 主机口电源态（connected / disconnected）
 *   USB_DEVICE_ATTACHED       MTP / PTP / 充电档的手机走这里
 *   USB_DEVICE_DETACHED
 *   MEDIA_MOUNTED 路径含 usb   大容量存储档的手机不冒 DEVICE_ATTACHED，只走这里
 * OEM 常把 EXTRA_DEVICE 裁掉 → 收到广播再起 20 秒短轮询 UsbManager 自证设备，读完自停。
 * 若 OEM 连 USB_STATE 一起屏蔽则无法检测（无 root 无解），日志里查 [UsbPhone] 关键字。
 * 首次事件只记基线不触发 —— 冷启瞬间可能看到瞬时/内部 USB 设备。
 * 「开机时已插着手机」要拉起 App，请用「开机完成」事件。
 *
 * ponytail: 任何 USB 设备都触发（U 盘也会）。要收紧成「仅手机」，按 looksLikePhone() 的
 * MTP/PTP 判定（0xEF 复合类 / 协议号 0x0500-0x0504）加一道闸门即可。
 *
 * stub android.jar 是裁剪版，缺 UsbManager.USB_STATE / USB_STATE_CONNECTED /
 * UsbInterface.getProtocol() / UsbDevice.getProductName() → 常量写字面量、取值走反射。
 * 别在这里改回 UsbManager.USB_STATE，否则编不过。
 */
public final class UsbPhoneWatcher extends BroadcastReceiver {

    static final String EVENT = "usb_phone";

    private static final String USB_STATE = "android.intent.action.USB_STATE";
    private static final String STATE_CONNECTED = "connected";
    private static final String STATE_DISCONNECTED = "disconnected";

    private static final long COOLDOWN_MS = 60000L;
    private static final int PROBE_ROUNDS = 4;
    private static final long PROBE_INTERVAL_MS = 5000L;

    private static int sPresent = -1;   // -1 未观测 / 0 无 / 1 有
    private static long sLastFire;
    private static boolean sProbing;

    public void onReceive(Context c, Intent i) {
        Context app = c.getApplicationContext() != null ? c.getApplicationContext() : c;
        String a = i.getAction();
        if (a == null) {
            return;
        }
        if (USB_STATE.equals(a)) {
            String s = i.getStringExtra("state");
            log(app, "收到 USB_STATE state=" + s);
            if (STATE_DISCONNECTED.equals(s)) {
                record(app, 0, "USB_STATE disconnected");
            } else if (STATE_CONNECTED.equals(s)) {
                log(app, "USB_STATE connected，起轮询核实设备");
                probe(app, "USB_STATE connected");
            }
            return;
        }
        if (UsbManager.ACTION_USB_DEVICE_DETACHED.equals(a)) {
            log(app, "收到 USB_DEVICE_DETACHED");
            record(app, 0, "USB_DEVICE_DETACHED");
            return;
        }
        if (Intent.ACTION_MEDIA_MOUNTED.equals(a)) {
            String path = String.valueOf(i.getData());
            log(app, "收到 MEDIA_MOUNTED " + path);
            if (path.toLowerCase().indexOf("usb") < 0) {
                return;   // 内部存储挂载不算
            }
            record(app, 1, "MEDIA_MOUNTED " + path);
            return;
        }
        if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(a)) {
            UsbDevice d = (UsbDevice) i.getParcelableExtra(UsbManager.EXTRA_DEVICE);
            if (d == null) {
                log(app, "收到 USB_DEVICE_ATTACHED 但无设备对象（OEM 裁剪?），起轮询核实");
                probe(app, "USB_DEVICE_ATTACHED");
            } else {
                log(app, "收到 USB_DEVICE_ATTACHED " + desc(d) + " MTP=" + looksLikePhone(d));
                record(app, 1, desc(d));
            }
            return;
        }
        log(app, "未处理的 action=" + a);
    }

    /** 20 秒短轮询 UsbManager 自证设备，读完自停；广播不带 EXTRA_DEVICE 时靠它。 */
    private static void probe(Context app, String why) {
        if (sProbing) {
            log(app, "轮询已在进行，忽略重复触发（" + why + "）");
            return;
        }
        sProbing = true;
        try {
            Thread t = new Thread(new Runnable() {
                public void run() {
                    try {
                        for (int k = 0; k < PROBE_ROUNDS; k++) {
                            readDevices(app);
                            try {
                                Thread.sleep(PROBE_INTERVAL_MS);
                            } catch (InterruptedException e) {
                                return;
                            }
                        }
                    } finally {
                        sProbing = false;
                    }
                }
            }, "UsbPhoneProbe");
            t.setPriority(Thread.MIN_PRIORITY);
            t.start();
        } catch (Throwable t) {
            sProbing = false;
            log(app, "轮询线程启动失败: " + t);
        }
    }

    private static void readDevices(Context app) {
        try {
            UsbManager m = (UsbManager) app.getSystemService(Context.USB_SERVICE);
            Map<String, UsbDevice> list = m == null ? null : m.getDeviceList();
            int n = list == null ? 0 : list.size();
            log(app, "轮询 设备数=" + n);
            if (n == 0) {
                record(app, 0, "轮询无设备");
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (UsbDevice d : list.values()) {
                sb.append(desc(d)).append(" ");
            }
            record(app, 1, "轮询 " + sb.toString().trim());
        } catch (Throwable t) {
            log(app, "轮询异常: " + t);
        }
    }

    /** 首次只记基线；只在「无 → 有」跳变时触发。 */
    private static synchronized void record(Context app, int present, String note) {
        if (sPresent == -1) {
            sPresent = present;
            log(app, "基线 present=" + present + " " + note);
            return;
        }
        if (sPresent == present) {
            return;
        }
        sPresent = present;
        if (present != 1) {
            log(app, "USB 设备已断开（" + note + "）");
            return;
        }
        fire(app, note);
    }

    private static void fire(Context app, String note) {
        long now = SystemClock.elapsedRealtime();
        if (sLastFire != 0 && now - sLastFire < COOLDOWN_MS) {
            log(app, "触发被抑制（" + (COOLDOWN_MS / 1000) + "s 冷却）");
            return;
        }
        sLastFire = now;
        Intent i = new Intent();
        i.setClassName(app.getPackageName(), app.getPackageName() + ".ExecService");
        i.putExtra("event", EVENT);
        log(app, "USB 手机接入 " + note + " -> 触发规则事件 " + EVENT);
        try {
            app.startService(i);
        } catch (Throwable t) {
            log(app, "startService 失败: " + t);
        }
    }

    /** MTP/PTP 协议号 0x0500-0x0504，或 Misc(0xEF) 复合设备类 —— 典型手机 USB 特征。 */
    private static boolean looksLikePhone(UsbDevice d) {
        try {
            int n = d.getInterfaceCount();
            for (int k = 0; k < n; k++) {
                UsbInterface it = d.getInterface(k);
                if (it.getInterfaceClass() == 0xEF) {
                    return true;
                }
                Integer proto = (Integer) reflect(it, "getProtocol");
                if (proto != null && proto.intValue() >= 0x0500 && proto.intValue() <= 0x0504) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static String desc(UsbDevice d) {
        try {
            Object name = reflect(d, "getProductName");
            return "name=" + d.getDeviceName()
                    + " vendor=0x" + Integer.toHexString(d.getVendorId())
                    + " pid=0x" + Integer.toHexString(d.getProductId())
                    + (name == null ? "" : " product=" + name);
        } catch (Throwable t) {
            return "设备名不可读";
        }
    }

    private static Object reflect(Object o, String method) {
        try {
            return o.getClass().getMethod(method).invoke(o);
        } catch (Throwable t) {
            return null;
        }
    }

    private static void log(Context c, String msg) {
        try {
            BootDiagnostics.log(c, "[BootTask][UsbPhone] " + msg);
        } catch (Throwable ignored) {
        }
    }
}
