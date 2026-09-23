package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerLogger implements com.tencent.tinker.lib.util.TinkerLog.TinkerLogImp {
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 5;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    public static final java.lang.String TAG = "Tinker.TinkerLogger";
    public static int level;

    public static int getLogLevel() {
        return level;
    }

    public static void setLevel(int i) {
        level = i;
        android.util.Log.w(TAG, "new log level: " + i);
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (level <= 1) {
            if (objArr != null) {
                str2 = java.lang.String.format(str2, objArr);
            }
            android.util.Log.d(str, str2);
        }
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (level <= 4) {
            if (objArr != null) {
                str2 = java.lang.String.format(str2, objArr);
            }
            android.util.Log.e(str, str2);
        }
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (level <= 2) {
            if (objArr != null) {
                str2 = java.lang.String.format(str2, objArr);
            }
            android.util.Log.i(str, str2);
        }
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void printErrStackTrace(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr) {
        if (objArr != null) {
            str2 = java.lang.String.format(str2, objArr);
        }
        if (str2 == null) {
            str2 = "";
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(str2, "  ");
        sbQ.append(android.util.Log.getStackTraceString(th));
        android.util.Log.e(str, sbQ.toString());
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (level <= 0) {
            if (objArr != null) {
                str2 = java.lang.String.format(str2, objArr);
            }
            android.util.Log.v(str, str2);
        }
    }

    @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
    public void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (level <= 3) {
            if (objArr != null) {
                str2 = java.lang.String.format(str2, objArr);
            }
            android.util.Log.w(str, str2);
        }
    }
}
