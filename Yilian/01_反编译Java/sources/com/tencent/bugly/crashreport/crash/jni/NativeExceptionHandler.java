package com.tencent.bugly.crashreport.crash.jni;

/* loaded from: classes.dex */
public interface NativeExceptionHandler {
    boolean getAndUpdateAnrState();

    void handleNativeException(int i, int i2, long j, long j2, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i3, java.lang.String str5, int i4, int i5, int i6, java.lang.String str6, java.lang.String str7);

    void handleNativeException2(int i, int i2, long j, long j2, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i3, java.lang.String str5, int i4, int i5, int i6, java.lang.String str6, java.lang.String str7, java.lang.String[] strArr);

    com.tencent.bugly.crashreport.crash.CrashDetailBean packageCrashDatas(java.lang.String str, java.lang.String str2, long j, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, java.lang.String str8, java.lang.String str9, java.lang.String str10, java.lang.String str11, byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map, boolean z, boolean z2);
}
