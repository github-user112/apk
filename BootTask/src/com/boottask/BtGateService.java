package com.boottask;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;

/**
 * v1.6.63 蓝牙闸门服务 —— 常驻监听 SCREEN_ON / SCREEN_OFF / USER_PRESENT。
 * v1.6.64：顺带接 WiFi 闸门（息屏关 WiFi、亮屏 3s 后开 WiFi，共用一个服务）。
 *
 * SCREEN_ON/OFF 在 4.4 上 manifest 注册不稳定，必须动态注册（与 ExecService 的
 * DynReceiver 同套路）。启停语义：
 *   - SCREEN_OFF：立刻关蓝牙 + 关 WiFi；
 *   - USER_PRESENT（解锁）：只记日志，不开任何闸门 —— 用户点名要的；
 *   - SCREEN_ON（点火+亮屏）：延迟 3s 后开蓝牙 + 开 WiFi。
 *
 * START_STICKY：被系统杀了自动拉起。BtGate 和 WifiGate 都关时本服务自己停掉。
 */
public class BtGateService extends Service {

    private static final String TAG = "BtGateService";

    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            String a = intent.getAction();
            try {
                if (Intent.ACTION_SCREEN_OFF.equals(a)) {
                    Log.i(TAG, "screen off -> bt/wifi off");
                    if (BtGate.isEnabled(context)) {
                        BtGate.turnOffNow(context, "熄屏");
                    }
                    if (WifiGate.isEnabled(context)) {
                        WifiGate.turnOffNow(context, "熄屏");
                    }
                } else if (Intent.ACTION_SCREEN_ON.equals(a)) {
                    Log.i(TAG, "screen on -> bt/wifi on delayed 3s");
                    if (BtGate.isEnabled(context)) {
                        BtGate.turnOnDelayed(context, "亮屏");
                    }
                    if (WifiGate.isEnabled(context)) {
                        WifiGate.turnOnDelayed(context, "亮屏");
                    }
                } else if (Intent.ACTION_USER_PRESENT.equals(a)) {
                    // 用户点名：解锁不打开蓝牙/WiFi
                    Log.i(TAG, "user present (unlock) -> 忽略，不开蓝牙/WiFi");
                    try {
                        BootDiagnostics.log(context, "BtGate unlock(USER_PRESENT) ignored");
                    } catch (Throwable ignored) {
                    }
                }
            } catch (Throwable t) {
                Log.w(TAG, "onReceive: " + t);
            }
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        IntentFilter f = new IntentFilter();
        f.addAction(Intent.ACTION_SCREEN_ON);
        f.addAction(Intent.ACTION_SCREEN_OFF);
        f.addAction(Intent.ACTION_USER_PRESENT);
        try {
            registerReceiver(mReceiver, f);
            Log.i(TAG, "registered SCREEN_ON/OFF + USER_PRESENT");
            try {
                BootDiagnostics.log(this, "BtGateService onCreate（监听亮屏/熄屏/解锁）");
            } catch (Throwable ignored) {
            }
        } catch (Throwable t) {
            Log.w(TAG, "registerReceiver failed: " + t);
        }
        if (!BtGate.isEnabled(this) && !WifiGate.isEnabled(this)) {
            stopSelf();
            return;
        }
        // 开机后屏还没亮，蓝牙/WiFi 先关掉（等 SCREEN_ON 再开）
        if (BtGate.isEnabled(this)) {
            BtGate.turnOffNow(this, "开机");
        }
        if (WifiGate.isEnabled(this)) {
            WifiGate.turnOffNow(this, "开机");
        }
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (!BtGate.isEnabled(this) && !WifiGate.isEnabled(this)) {
            stopSelf();
            return START_NOT_STICKY;
        }
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onDestroy() {
        try {
            unregisterReceiver(mReceiver);
        } catch (Throwable ignored) {
        }
        super.onDestroy();
    }
}
