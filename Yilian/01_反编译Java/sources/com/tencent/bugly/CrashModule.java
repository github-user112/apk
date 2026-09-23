package com.tencent.bugly;

/* loaded from: classes.dex */
public class CrashModule extends com.tencent.bugly.a {
    public static final int MODULE_ID = 1004;
    public static int a;
    public static com.tencent.bugly.CrashModule b = new com.tencent.bugly.CrashModule();

    /* renamed from: c, reason: collision with root package name */
    public long f890c;

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.BuglyStrategy.a f891d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f892e = false;

    private synchronized void a(android.content.Context context, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        java.lang.String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
        if (!android.text.TextUtils.isEmpty(libBuglySOFilePath)) {
            com.tencent.bugly.crashreport.common.info.a.a(context).M = libBuglySOFilePath;
            com.tencent.bugly.proguard.aa.c("setted libBugly.so file path :%s", libBuglySOFilePath);
        }
        if (buglyStrategy.getCrashHandleCallback() != null) {
            this.f891d = buglyStrategy.getCrashHandleCallback();
            com.tencent.bugly.proguard.aa.c("setted CrashHanldeCallback", new java.lang.Object[0]);
        }
        if (buglyStrategy.getAppReportDelay() > 0) {
            long appReportDelay = buglyStrategy.getAppReportDelay();
            this.f890c = appReportDelay;
            com.tencent.bugly.proguard.aa.c("setted delay: %d", java.lang.Long.valueOf(appReportDelay));
        }
    }

    public static com.tencent.bugly.CrashModule getInstance() {
        com.tencent.bugly.CrashModule crashModule = b;
        crashModule.id = 1004;
        return crashModule;
    }

    @Override // com.tencent.bugly.a
    public java.lang.String[] getTables() {
        return new java.lang.String[]{"t_cr"};
    }

    public synchronized boolean hasInitialized() {
        return this.f892e;
    }

    @Override // com.tencent.bugly.a
    public synchronized void init(android.content.Context context, boolean z, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        if (context != null) {
            if (!this.f892e) {
                com.tencent.bugly.proguard.aa.c("Initializing crash module.", new java.lang.Object[0]);
                com.tencent.bugly.proguard.H hA = com.tencent.bugly.proguard.H.a();
                int i = a + 1;
                a = i;
                hA.a(1004, i);
                this.f892e = true;
                com.tencent.bugly.crashreport.CrashReport.setContext(context);
                a(context, buglyStrategy);
                com.tencent.bugly.crashreport.crash.m mVarA = com.tencent.bugly.crashreport.crash.m.a(1004, context, z, this.f891d, null, null);
                mVarA.r();
                if (buglyStrategy != null) {
                    mVarA.a(buglyStrategy.getCallBackType());
                    mVarA.a(buglyStrategy.getCloseErrorCallback());
                    com.tencent.bugly.crashreport.crash.m.l = buglyStrategy.isUploadSpotCrash();
                    com.tencent.bugly.crashreport.common.info.a.a(context).b(buglyStrategy.isEnableRecordAnrMainStack());
                }
                if (buglyStrategy != null && buglyStrategy.isEnableCatchAnrTrace()) {
                    mVarA.q();
                }
                mVarA.a();
                if (buglyStrategy == null || buglyStrategy.isEnableNativeCrashMonitor()) {
                    mVarA.s();
                } else {
                    com.tencent.bugly.proguard.aa.c("[crash] Closed native crash monitor!", new java.lang.Object[0]);
                    mVarA.e();
                }
                if (buglyStrategy == null || buglyStrategy.isEnableANRCrashMonitor()) {
                    mVarA.p();
                } else {
                    com.tencent.bugly.proguard.aa.c("[crash] Closed ANR monitor!", new java.lang.Object[0]);
                    mVarA.c();
                }
                if (buglyStrategy != null) {
                    com.tencent.bugly.crashreport.crash.m.f1030d = buglyStrategy.isMerged();
                }
                mVarA.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
                mVarA.u();
                com.tencent.bugly.crashreport.crash.p.a(context);
                com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver buglyBroadcastReceiver = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.getInstance();
                buglyBroadcastReceiver.addFilter("android.net.conn.CONNECTIVITY_CHANGE");
                buglyBroadcastReceiver.register(context);
                com.tencent.bugly.proguard.H hA2 = com.tencent.bugly.proguard.H.a();
                int i2 = a - 1;
                a = i2;
                hA2.a(1004, i2);
            }
        }
    }

    @Override // com.tencent.bugly.a
    public void onServerStrategyChanged(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        com.tencent.bugly.crashreport.crash.m mVarG;
        if (strategyBean == null || (mVarG = com.tencent.bugly.crashreport.crash.m.g()) == null) {
            return;
        }
        mVarG.a(strategyBean);
    }
}
