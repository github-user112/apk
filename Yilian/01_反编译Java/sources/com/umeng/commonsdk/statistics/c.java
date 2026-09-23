package com.umeng.commonsdk.statistics;

/* loaded from: classes.dex */
public class c {
    public static final int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1513c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f1514d = 3;
    public static final java.lang.String o = "thtstart";
    public static final java.lang.String p = "gkvc";
    public static final java.lang.String q = "ekvc";
    public java.lang.String a;

    /* renamed from: f, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.c f1516f;

    /* renamed from: g, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.idtracking.ImprintHandler f1517g;
    public com.umeng.commonsdk.statistics.idtracking.e h;
    public com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a i;
    public com.umeng.commonsdk.statistics.noise.Defcon k;
    public long l;
    public int m;
    public int n;
    public android.content.Context r;

    /* renamed from: e, reason: collision with root package name */
    public final int f1515e = 1;
    public com.umeng.commonsdk.statistics.noise.ABTest j = null;

    public c(android.content.Context context) {
        this.h = null;
        this.i = null;
        this.k = null;
        this.l = 0L;
        this.m = 0;
        this.n = 0;
        this.a = null;
        this.r = context;
        this.i = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).c();
        this.k = com.umeng.commonsdk.statistics.noise.Defcon.getService(this.r);
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(this.r);
        this.l = sharedPreferences.getLong("thtstart", 0L);
        this.m = sharedPreferences.getInt("gkvc", 0);
        this.n = sharedPreferences.getInt("ekvc", 0);
        this.a = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.r, "track_list", null);
        com.umeng.commonsdk.statistics.idtracking.ImprintHandler imprintService = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(this.r);
        this.f1517g = imprintService;
        imprintService.a(new com.umeng.commonsdk.statistics.internal.d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.d
            public void onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a aVar) {
                com.umeng.commonsdk.statistics.c.this.k.onImprintChanged(aVar);
                com.umeng.commonsdk.statistics.c cVar = com.umeng.commonsdk.statistics.c.this;
                cVar.a = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(cVar.r, "track_list", null);
            }
        });
        if (!com.umeng.commonsdk.UMConfigure.needSendZcfgEnv(this.r)) {
            this.h = com.umeng.commonsdk.statistics.idtracking.e.a(this.r);
        }
        com.umeng.commonsdk.statistics.internal.c cVar = new com.umeng.commonsdk.statistics.internal.c(this.r);
        this.f1516f = cVar;
        cVar.a(com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(this.r));
    }

    private int a(byte[] bArr) {
        com.umeng.commonsdk.statistics.proto.Response response = new com.umeng.commonsdk.statistics.proto.Response();
        try {
            new com.umeng.analytics.pro.at(new com.umeng.analytics.pro.bi.a()).a(response, bArr);
            if (response.resp_code == 1) {
                this.f1517g.b(response.getImprint());
                this.f1517g.d();
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.r, th);
        }
        return response.resp_code == 1 ? 2 : 3;
    }

    public boolean a(java.io.File file) {
        java.lang.String str;
        if (file == null) {
            return false;
        }
        try {
            byte[] byteArray = com.umeng.commonsdk.framework.UMFrUtils.toByteArray(file.getPath());
            if (byteArray == null) {
                return false;
            }
            java.lang.String name = file.getName();
            if (android.text.TextUtils.isEmpty(name)) {
                return false;
            }
            com.umeng.commonsdk.statistics.internal.a aVarA = com.umeng.commonsdk.statistics.internal.a.a(this.r);
            aVarA.d(name);
            boolean zA = aVarA.a(name);
            boolean zB = aVarA.b(name);
            boolean zC = aVarA.c(name);
            java.lang.String strD = com.umeng.commonsdk.stateless.d.d(name);
            byte[] bArrA = this.f1516f.a(byteArray, zA, zC, !android.text.TextUtils.isEmpty(strD) ? com.umeng.commonsdk.stateless.d.c(strD) : zC ? com.umeng.commonsdk.statistics.UMServerURL.ZCFG_PATH : com.umeng.commonsdk.statistics.UMServerURL.PATH_ANALYTICS);
            int iA = bArrA == null ? 1 : a(bArrA);
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                if (zC && iA == 2) {
                    str = "Zero req: succeed.";
                } else if (zB && iA == 2) {
                    com.umeng.commonsdk.statistics.common.MLog.d("本次启动数据: 发送成功!");
                    str = "Send instant data: succeed.";
                } else if (zA && iA == 2) {
                    com.umeng.commonsdk.statistics.common.MLog.d("普通统计数据: 发送成功!");
                    str = "Send analytics data: succeed.";
                } else {
                    str = "Inner req: succeed.";
                }
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, str);
            }
            if (iA == 2) {
                if (this.h != null) {
                    this.h.e();
                }
                com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(this.r).saveSate();
            } else if (iA == 3) {
                com.umeng.commonsdk.statistics.internal.StatTracer.getInstance(this.r).saveSate();
                if (zC) {
                    com.umeng.commonsdk.config.FieldManager.a().a(this.r);
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 零号报文应答内容报错!!! ，特殊处理!，继续正常流程。");
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(this.r, com.umeng.commonsdk.internal.a.s, com.umeng.commonsdk.internal.b.a(this.r).a(), null);
                    return true;
                }
            }
            return iA == 2;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.r, th);
            return false;
        }
    }
}
