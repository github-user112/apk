package com.tencent.bugly.crashreport;

/* loaded from: classes.dex */
public class BuglyLog {
    public static void d(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.d(str, str2);
        }
        com.tencent.bugly.proguard.ga.c("D", str, str2);
    }

    public static void e(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.e(str, str2);
        }
        com.tencent.bugly.proguard.ga.c("E", str, str2);
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.e(str, str2, th);
        }
        com.tencent.bugly.proguard.ga.a("E", str, th);
    }

    public static void i(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.i(str, str2);
        }
        com.tencent.bugly.proguard.ga.c("I", str, str2);
    }

    public static void setCache(int i) {
        com.tencent.bugly.proguard.ga.a(i);
    }

    public static void v(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.v(str, str2);
        }
        com.tencent.bugly.proguard.ga.c("V", str, str2);
    }

    public static void w(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (com.tencent.bugly.b.f893c) {
            android.util.Log.w(str, str2);
        }
        com.tencent.bugly.proguard.ga.c("W", str, str2);
    }
}
