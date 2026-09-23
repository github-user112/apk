package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class U {
    public boolean a = false;
    public int b = 4;

    public static java.lang.String a() {
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("HiAnalyticsSDK_2.2.0.304");
        sbA.append(com.huawei.hms.scankit.p.C0200ra.a());
        return sbA.toString();
    }

    public void a(int i) {
        android.util.Log.i("HiAnalyticsSDK", "\n=======================================\n " + a() + "\n=======================================");
        this.b = i;
        this.a = true;
    }

    public void a(int i, java.lang.String str, java.lang.String str2) {
        b(i, "HiAnalyticsSDK", e.a.c.a.a.f(str, "=> ", str2));
    }

    public void b(int i, java.lang.String str, java.lang.String str2) {
        if (i == 3) {
            android.util.Log.d(str, str2);
            return;
        }
        if (i == 5) {
            android.util.Log.w(str, str2);
        } else if (i != 6) {
            android.util.Log.i(str, str2);
        } else {
            android.util.Log.e(str, str2);
        }
    }

    public boolean b(int i) {
        return this.a && i >= this.b;
    }
}
