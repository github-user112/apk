package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareTinkerLog {
    public static final int FN_LOG_PRINT_PENDING_LOGS = 4002;
    public static final int FN_LOG_PRINT_STACKTRACE = 4001;
    public static final java.lang.String TAG = "Tinker.ShareTinkerLog";
    public static final com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp debugLog;
    public static final com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp[] tinkerLogImpRef;
    public static final android.os.Handler[] tinkerLogInlineFenceRef = {null};

    public interface TinkerLogImp {
        void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr);

        void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr);

        void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr);

        void printErrStackTrace(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr);

        void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr);

        void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr);
    }

    static {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp = new com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp() { // from class: com.tencent.tinker.loader.shareutil.ShareTinkerLog.1
            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = java.lang.String.format(str2, objArr);
                }
                android.util.Log.d(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = java.lang.String.format(str2, objArr);
                }
                android.util.Log.e(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = java.lang.String.format(str2, objArr);
                }
                android.util.Log.i(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void printErrStackTrace(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr) {
                if (objArr != null && objArr.length != 0) {
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
                if (objArr != null && objArr.length != 0) {
                    str2 = java.lang.String.format(str2, objArr);
                }
                android.util.Log.v(str, str2);
            }

            @Override // com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp
            public void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
                if (objArr != null && objArr.length != 0) {
                    str2 = java.lang.String.format(str2, objArr);
                }
                android.util.Log.w(str, str2);
            }
        };
        debugLog = tinkerLogImp;
        tinkerLogImpRef = new com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp[]{tinkerLogImp};
        synchronized (tinkerLogInlineFenceRef) {
            try {
                java.lang.reflect.Constructor<?> declaredConstructor = java.lang.Class.forName("com.tencent.tinker.loader.shareutil.TinkerLogInlineFence").getDeclaredConstructor(new java.lang.Class[0]);
                declaredConstructor.setAccessible(true);
                tinkerLogInlineFenceRef[0] = (android.os.Handler) declaredConstructor.newInstance(new java.lang.Object[0]);
            } finally {
            }
        }
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        printLog(3, str, str2, objArr);
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        printLog(6, str, str2, objArr);
    }

    public static com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp getDefaultImpl() {
        return debugLog;
    }

    public static com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp getImpl() {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp;
        synchronized (tinkerLogImpRef) {
            tinkerLogImp = tinkerLogImpRef[0];
        }
        return tinkerLogImp;
    }

    public static android.os.Handler getInlineFence() {
        android.os.Handler handler;
        synchronized (tinkerLogInlineFenceRef) {
            handler = tinkerLogInlineFenceRef[0];
        }
        return handler;
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        printLog(4, str, str2, objArr);
    }

    public static void printErrStackTrace(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr) {
        printLog(str, th, str2, objArr);
    }

    public static void printLog(int i, java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        java.lang.Object[] objArr2 = {java.lang.Integer.valueOf(i), java.lang.Long.valueOf(java.lang.System.currentTimeMillis()), str, str2, objArr};
        android.os.Handler inlineFence = getInlineFence();
        if (inlineFence != null) {
            android.os.Message messageObtain = android.os.Message.obtain(inlineFence, i, objArr2);
            inlineFence.handleMessage(messageObtain);
            messageObtain.recycle();
        } else {
            debugLog.e(str, "!! NO_LOG_IMPL !! Original Log: " + str2, objArr);
        }
    }

    public static void printLog(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr) {
        java.lang.Object[] objArr2 = {4001, java.lang.Long.valueOf(java.lang.System.currentTimeMillis()), str, th, str2, objArr};
        android.os.Handler inlineFence = getInlineFence();
        if (inlineFence == null) {
            debugLog.printErrStackTrace(str, th, e.a.c.a.a.e("!! NO_LOG_IMPL !! Original Log: ", str2), objArr);
            return;
        }
        android.os.Message messageObtain = android.os.Message.obtain(inlineFence, 4001, objArr2);
        inlineFence.handleMessage(messageObtain);
        messageObtain.recycle();
    }

    public static void printPendingLogs() {
        android.os.Handler inlineFence = getInlineFence();
        if (inlineFence != null) {
            android.os.Message messageObtain = android.os.Message.obtain(inlineFence, 4002);
            inlineFence.handleMessage(messageObtain);
            messageObtain.recycle();
        }
    }

    public static void setTinkerLogImp(com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp) {
        synchronized (tinkerLogImpRef) {
            tinkerLogImpRef[0] = tinkerLogImp;
            if (tinkerLogImp != null && tinkerLogImp != debugLog) {
                printPendingLogs();
            }
        }
    }

    public static void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        printLog(2, str, str2, objArr);
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        printLog(5, str, str2, objArr);
    }
}
