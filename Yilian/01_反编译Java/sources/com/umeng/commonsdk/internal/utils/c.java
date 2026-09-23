package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class c {
    public static final java.lang.String a = "BatteryUtils";
    public static boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public static android.content.Context f1477c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.BroadcastReceiver f1478d;

    public static class a {
        public static final com.umeng.commonsdk.internal.utils.c a = new com.umeng.commonsdk.internal.utils.c();
    }

    public c() {
        this.f1478d = new android.content.BroadcastReceiver() { // from class: com.umeng.commonsdk.internal.utils.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context, android.content.Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        org.json.JSONObject jSONObject = new org.json.JSONObject();
                        try {
                            jSONObject.put("le", intent.getIntExtra("level", 0));
                        } catch (java.lang.Exception unused) {
                        }
                        try {
                            jSONObject.put("vol", intent.getIntExtra("voltage", 0));
                        } catch (java.lang.Exception unused2) {
                        }
                        try {
                            jSONObject.put("temp", intent.getIntExtra("temperature", 0));
                            jSONObject.put("ts", java.lang.System.currentTimeMillis());
                        } catch (java.lang.Exception unused3) {
                        }
                        int intExtra = intent.getIntExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 0);
                        int i = -1;
                        int i2 = 2;
                        if (intExtra != 1) {
                            if (intExtra == 2) {
                                i = 1;
                            } else if (intExtra == 4) {
                                i = 0;
                            } else if (intExtra == 5) {
                                i = 2;
                            }
                        }
                        try {
                            jSONObject.put("st", i);
                        } catch (java.lang.Exception unused4) {
                        }
                        int intExtra2 = intent.getIntExtra("plugged", 0);
                        if (intExtra2 == 1) {
                            i2 = 1;
                        } else if (intExtra2 != 2) {
                            i2 = 0;
                        }
                        try {
                            jSONObject.put("ct", i2);
                            jSONObject.put("ts", java.lang.System.currentTimeMillis());
                        } catch (java.lang.Exception unused5) {
                        }
                        com.umeng.commonsdk.statistics.common.ULog.i(com.umeng.commonsdk.internal.utils.c.a, jSONObject.toString());
                        com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.h, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.internal.utils.c.f1477c).a(), jSONObject.toString());
                        com.umeng.commonsdk.internal.utils.c.this.c();
                    }
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(com.umeng.commonsdk.internal.utils.c.f1477c, th);
                }
            }
        };
    }

    public static com.umeng.commonsdk.internal.utils.c a(android.content.Context context) {
        if (f1477c == null && context != null) {
            f1477c = context.getApplicationContext();
        }
        return com.umeng.commonsdk.internal.utils.c.a.a;
    }

    public synchronized boolean a() {
        return b;
    }

    public synchronized void b() {
        try {
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f1477c.registerReceiver(this.f1478d, intentFilter);
            b = true;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(f1477c, th);
        }
    }

    public synchronized void c() {
        try {
            f1477c.unregisterReceiver(this.f1478d);
            b = false;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(f1477c, th);
        }
    }
}
