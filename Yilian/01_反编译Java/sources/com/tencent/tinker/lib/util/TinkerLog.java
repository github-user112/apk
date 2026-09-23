package com.tencent.tinker.lib.util;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class TinkerLog {
    public static final java.lang.String TAG = "Tinker.TinkerLog";

    public interface TinkerLogImp extends com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp {
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.v(str, str2, objArr);
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.v(str, str2, objArr);
    }

    public static com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp getImpl() {
        return com.tencent.tinker.loader.shareutil.ShareTinkerLog.getImpl();
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.v(str, str2, objArr);
    }

    public static void printErrStackTrace(java.lang.String str, java.lang.Throwable th, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(str, th, str2, objArr);
    }

    public static void printPendingLogs() {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printPendingLogs();
    }

    public static void setTinkerLogImp(com.tencent.tinker.lib.util.TinkerLog.TinkerLogImp tinkerLogImp) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.setTinkerLogImp(tinkerLogImp);
    }

    public static void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.v(str, str2, objArr);
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.v(str, str2, objArr);
    }
}
