package com.tencent.bugly;

/* loaded from: classes.dex */
public class BuglyStrategy {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f885c;

    /* renamed from: d, reason: collision with root package name */
    public long f886d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f887e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f888f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f889g;
    public com.tencent.bugly.BuglyStrategy.a s;
    public boolean h = true;
    public boolean i = true;
    public boolean j = false;
    public boolean k = false;
    public boolean l = true;
    public java.lang.Class<?> m = null;
    public boolean n = true;
    public boolean o = true;
    public boolean p = true;
    public boolean q = true;
    public boolean r = false;
    public int t = 31;
    public boolean u = false;
    public boolean v = false;

    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized java.util.Map<java.lang.String, java.lang.String> onCrashHandleStart(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
            return null;
        }
    }

    public synchronized java.lang.String getAppChannel() {
        java.lang.String str;
        str = this.b;
        if (str == null) {
            str = com.tencent.bugly.crashreport.common.info.a.n().J;
        }
        return str;
    }

    public synchronized java.lang.String getAppPackageName() {
        java.lang.String str;
        str = this.f885c;
        if (str == null) {
            str = com.tencent.bugly.crashreport.common.info.a.n().f967g;
        }
        return str;
    }

    public synchronized long getAppReportDelay() {
        return this.f886d;
    }

    public synchronized java.lang.String getAppVersion() {
        java.lang.String str;
        str = this.a;
        if (str == null) {
            str = com.tencent.bugly.crashreport.common.info.a.n().F;
        }
        return str;
    }

    public synchronized int getCallBackType() {
        return this.t;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.u;
    }

    public synchronized com.tencent.bugly.BuglyStrategy.a getCrashHandleCallback() {
        return this.s;
    }

    public synchronized java.lang.String getDeviceID() {
        return this.f888f;
    }

    public synchronized java.lang.String getDeviceModel() {
        return this.f889g;
    }

    public synchronized java.lang.String getLibBuglySOFilePath() {
        return this.f887e;
    }

    public synchronized java.lang.Class<?> getUserInfoActivity() {
        return this.m;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.n;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.i;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.j;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.h;
    }

    public boolean isEnableRecordAnrMainStack() {
        return this.k;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.l;
    }

    public boolean isMerged() {
        return this.v;
    }

    public boolean isReplaceOldChannel() {
        return this.o;
    }

    public synchronized boolean isUploadProcess() {
        return this.p;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.q;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.r;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setAppChannel(java.lang.String str) {
        this.b = str;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setAppPackageName(java.lang.String str) {
        this.f885c = str;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setAppReportDelay(long j) {
        this.f886d = j;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setAppVersion(java.lang.String str) {
        this.a = str;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setBuglyLogUpload(boolean z) {
        this.n = z;
        return this;
    }

    public synchronized void setCallBackType(int i) {
        this.t = i;
    }

    public synchronized void setCloseErrorCallback(boolean z) {
        this.u = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setCrashHandleCallback(com.tencent.bugly.BuglyStrategy.a aVar) {
        this.s = aVar;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setDeviceID(java.lang.String str) {
        this.f888f = str;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setDeviceModel(java.lang.String str) {
        this.f889g = str;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setEnableANRCrashMonitor(boolean z) {
        this.i = z;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z) {
        this.j = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setEnableNativeCrashMonitor(boolean z) {
        this.h = z;
        return this;
    }

    public void setEnableRecordAnrMainStack(boolean z) {
        this.k = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setEnableUserInfo(boolean z) {
        this.l = z;
        return this;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setLibBuglySOFilePath(java.lang.String str) {
        this.f887e = str;
        return this;
    }

    @java.lang.Deprecated
    public void setMerged(boolean z) {
        this.v = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setRecordUserInfoOnceADay(boolean z) {
        this.r = z;
        return this;
    }

    public void setReplaceOldChannel(boolean z) {
        this.o = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setUploadProcess(boolean z) {
        this.p = z;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z) {
        this.q = z;
    }

    public synchronized com.tencent.bugly.BuglyStrategy setUserInfoActivity(java.lang.Class<?> cls) {
        this.m = cls;
        return this;
    }
}
