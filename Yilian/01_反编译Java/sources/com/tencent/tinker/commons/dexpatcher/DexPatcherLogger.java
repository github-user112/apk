package com.tencent.tinker.commons.dexpatcher;

/* loaded from: classes.dex */
public final class DexPatcherLogger {
    public com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger loggerImpl = null;

    public interface IDexPatcherLogger {
        void d(java.lang.String str);

        void e(java.lang.String str);

        void i(java.lang.String str);

        void v(java.lang.String str);

        void w(java.lang.String str);
    }

    public void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (this.loggerImpl != null) {
            java.lang.String strG = e.a.c.a.a.g("[D][", str, "] ", str2);
            com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger = this.loggerImpl;
            if (objArr != null && objArr.length != 0) {
                strG = java.lang.String.format(strG, objArr);
            }
            iDexPatcherLogger.d(strG);
        }
    }

    public void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (this.loggerImpl != null) {
            java.lang.String strG = e.a.c.a.a.g("[E][", str, "] ", str2);
            com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger = this.loggerImpl;
            if (objArr != null && objArr.length != 0) {
                strG = java.lang.String.format(strG, objArr);
            }
            iDexPatcherLogger.e(strG);
        }
    }

    public com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger getLoggerImpl() {
        return this.loggerImpl;
    }

    public void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (this.loggerImpl != null) {
            java.lang.String strG = e.a.c.a.a.g("[I][", str, "] ", str2);
            com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger = this.loggerImpl;
            if (objArr != null && objArr.length != 0) {
                strG = java.lang.String.format(strG, objArr);
            }
            iDexPatcherLogger.i(strG);
        }
    }

    public void setLoggerImpl(com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger) {
        this.loggerImpl = iDexPatcherLogger;
    }

    public void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (this.loggerImpl != null) {
            java.lang.String strG = e.a.c.a.a.g("[V][", str, "] ", str2);
            com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger = this.loggerImpl;
            if (objArr != null && objArr.length != 0) {
                strG = java.lang.String.format(strG, objArr);
            }
            iDexPatcherLogger.v(strG);
        }
    }

    public void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (this.loggerImpl != null) {
            java.lang.String strG = e.a.c.a.a.g("[W][", str, "] ", str2);
            com.tencent.tinker.commons.dexpatcher.DexPatcherLogger.IDexPatcherLogger iDexPatcherLogger = this.loggerImpl;
            if (objArr != null && objArr.length != 0) {
                strG = java.lang.String.format(strG, objArr);
            }
            iDexPatcherLogger.w(strG);
        }
    }
}
