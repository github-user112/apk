package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class o implements java.lang.Thread.UncaughtExceptionHandler {
    public java.lang.Thread.UncaughtExceptionHandler a;
    public com.umeng.analytics.pro.s b;

    public o() {
        if (java.lang.Thread.getDefaultUncaughtExceptionHandler() == this) {
            return;
        }
        this.a = java.lang.Thread.getDefaultUncaughtExceptionHandler();
        java.lang.Thread.setDefaultUncaughtExceptionHandler(this);
    }

    private void a(java.lang.Throwable th) {
        if (com.umeng.analytics.AnalyticsConfig.CATCH_EXCEPTION) {
            this.b.a(th);
        } else {
            this.b.a(null);
        }
    }

    public void a(com.umeng.analytics.pro.s sVar) {
        this.b = sVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        a(th);
        java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == java.lang.Thread.getDefaultUncaughtExceptionHandler()) {
            return;
        }
        this.a.uncaughtException(thread, th);
    }
}
