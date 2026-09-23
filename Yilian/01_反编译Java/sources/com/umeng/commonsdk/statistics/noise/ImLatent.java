package com.umeng.commonsdk.statistics.noise;

/* loaded from: classes.dex */
public class ImLatent implements com.umeng.commonsdk.statistics.internal.d {
    public static com.umeng.commonsdk.statistics.noise.ImLatent instanse;
    public android.content.Context context;
    public com.umeng.commonsdk.statistics.internal.StatTracer statTracer;
    public com.umeng.commonsdk.statistics.common.d storeHelper;
    public final int _DEFAULT_HOURS = 360;
    public final int _DEFAULT_MIN_HOURS = 36;
    public final int _DEFAULT_MIN_LATENT = 1;
    public final int _DEFAULT_MAX_LATENT = 1800;
    public final long _ONE_HOURS_IN_MS = 3600000;
    public final long _360HOURS_IN_MS = 1296000000;
    public final long _36HOURS_IN_MS = 129600000;
    public final int LATENT_MAX = javax.jmdns.impl.constants.DNSConstants.ANNOUNCED_RENEWAL_TTL_INTERVAL;
    public final int LATENT_WINDOW = 10;
    public long latentHour = 1296000000;
    public int latentWindow = 10;
    public long mDelay = 0;
    public long mElapsed = 0;
    public boolean mLatentActivite = false;
    public java.lang.Object mLatentLock = new java.lang.Object();

    public ImLatent(android.content.Context context, com.umeng.commonsdk.statistics.internal.StatTracer statTracer) {
        this.context = context;
        this.storeHelper = com.umeng.commonsdk.statistics.common.d.a(context);
        this.statTracer = statTracer;
    }

    public static synchronized com.umeng.commonsdk.statistics.noise.ImLatent getService(android.content.Context context, com.umeng.commonsdk.statistics.internal.StatTracer statTracer) {
        if (instanse == null) {
            com.umeng.commonsdk.statistics.noise.ImLatent imLatent = new com.umeng.commonsdk.statistics.noise.ImLatent(context, statTracer);
            instanse = imLatent;
            imLatent.onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).c());
        }
        return instanse;
    }

    public long getDelayTime() {
        long j;
        synchronized (this.mLatentLock) {
            j = this.mDelay;
        }
        return j;
    }

    public long getElapsedTime() {
        return this.mElapsed;
    }

    public boolean isLatentActivite() {
        boolean z;
        synchronized (this.mLatentLock) {
            z = this.mLatentActivite;
        }
        return z;
    }

    public void latentDeactivite() {
        synchronized (this.mLatentLock) {
            this.mLatentActivite = false;
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.d
    public void onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a aVar) {
        this.latentHour = (java.lang.Integer.valueOf(aVar.a("latent_hours", java.lang.String.valueOf(360))).intValue() > 36 ? r1 : 360) * 3600000;
        int iIntValue = java.lang.Integer.valueOf(aVar.a(com.umeng.analytics.pro.ai.aP, "0")).intValue();
        if (iIntValue < 1 || iIntValue > 1800) {
            iIntValue = 0;
        }
        if (iIntValue == 0 && ((iIntValue = com.umeng.commonsdk.statistics.a.f1507c) <= 0 || iIntValue > 1800000)) {
            iIntValue = 10;
        }
        this.latentWindow = iIntValue;
    }

    public boolean shouldStartLatency() {
        if (this.storeHelper.c() || this.statTracer.isFirstRequest()) {
            return false;
        }
        synchronized (this.mLatentLock) {
            if (this.mLatentActivite) {
                return false;
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis() - this.statTracer.getLastReqTime();
            if (jCurrentTimeMillis > this.latentHour) {
                java.lang.String signature = com.umeng.commonsdk.statistics.idtracking.Envelope.getSignature(this.context);
                synchronized (this.mLatentLock) {
                    this.mDelay = com.umeng.commonsdk.statistics.common.DataHelper.random(this.latentWindow, signature);
                    this.mElapsed = jCurrentTimeMillis;
                    this.mLatentActivite = true;
                }
                return true;
            }
            if (jCurrentTimeMillis <= 129600000) {
                return false;
            }
            synchronized (this.mLatentLock) {
                this.mDelay = 0L;
                this.mElapsed = jCurrentTimeMillis;
                this.mLatentActivite = true;
            }
            return true;
        }
    }
}
