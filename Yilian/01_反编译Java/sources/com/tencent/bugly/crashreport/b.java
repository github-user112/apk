package com.tencent.bugly.crashreport;

/* loaded from: classes.dex */
public interface b {
    boolean appendLogToNative(java.lang.String str, java.lang.String str2, java.lang.String str3);

    java.lang.String getLogFromNative();

    boolean setNativeIsAppForeground(boolean z);
}
