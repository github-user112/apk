package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class RunnableEnhance implements java.lang.Runnable {
    public static final java.lang.String TRANCELOGO = " -->";
    public java.lang.String parentName = java.lang.Thread.currentThread().getName();
    public java.lang.Runnable proxy;

    public RunnableEnhance(java.lang.Runnable runnable) {
        this.proxy = runnable;
    }

    public java.lang.String getParentName() {
        return this.parentName;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.proxy.run();
    }
}
