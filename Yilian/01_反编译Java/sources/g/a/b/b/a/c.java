package g.a.b.b.a;

/* loaded from: classes.dex */
public class c {
    public static android.content.Context a = null;
    public static boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public static g.a.b.b.a.d f3122c;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.Object f3123d = new java.lang.Object();

    /* renamed from: e, reason: collision with root package name */
    public static android.os.HandlerThread f3124e;

    /* renamed from: f, reason: collision with root package name */
    public static android.os.Handler f3125f;

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.String f3126g;
    public static java.lang.String h;
    public static volatile g.a.b.b.a.c i;
    public static volatile g.a.b.b.a.a j;

    public static g.a.b.b.a.c a(android.content.Context context) {
        if (i == null) {
            synchronized (g.a.b.b.a.c.class) {
                a = context.getApplicationContext();
                i = new g.a.b.b.a.c();
            }
        }
        if (j == null) {
            synchronized (g.a.b.b.a.c.class) {
                a = context.getApplicationContext();
                android.os.HandlerThread handlerThread = new android.os.HandlerThread("SqlWorkThread");
                f3124e = handlerThread;
                handlerThread.start();
                f3125f = new g.a.b.b.a.b(f3124e.getLooper());
                j = new g.a.b.b.a.a(a);
                c();
            }
        }
        return i;
    }

    public static void c() {
        java.lang.String str;
        try {
            try {
                java.lang.Class<?> cls = java.lang.Class.forName("android.os.SystemProperties");
                str = (java.lang.String) cls.getMethod("get", java.lang.String.class, java.lang.String.class).invoke(cls, "persist.sys.identifierid.supported", "unknown");
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                str = "0";
                b = "1".equals(str);
            }
        } catch (java.lang.Throwable unused) {
            str = "0";
            b = "1".equals(str);
        }
        b = "1".equals(str);
    }

    public void b(int i2, java.lang.String str) {
        synchronized (f3123d) {
            android.os.Message messageObtainMessage = f3125f.obtainMessage();
            messageObtainMessage.what = 11;
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putInt(com.umeng.analytics.pro.c.y, i2);
            if (i2 == 1 || i2 == 2) {
                bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, str);
            }
            messageObtainMessage.setData(bundle);
            f3125f.sendMessage(messageObtainMessage);
            long jUptimeMillis = android.os.SystemClock.uptimeMillis();
            try {
                f3123d.wait(2000L);
            } catch (java.lang.InterruptedException e2) {
                e2.printStackTrace();
            }
            if (android.os.SystemClock.uptimeMillis() - jUptimeMillis < 2000) {
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 4) {
                            }
                        } else if (f3126g != null) {
                            f3126g = null;
                        } else {
                            android.util.Log.e("VMS_IDLG_SDK_Client", "get aaid failed");
                        }
                    } else if (f3126g == null) {
                        android.util.Log.e("VMS_IDLG_SDK_Client", "get vaid failed");
                    }
                }
                h = f3126g;
                f3126g = null;
            } else {
                android.util.Log.d("VMS_IDLG_SDK_Client", "query timeout");
            }
        }
    }
}
