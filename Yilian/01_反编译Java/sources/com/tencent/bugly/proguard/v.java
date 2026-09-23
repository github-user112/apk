package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class v implements com.tencent.bugly.beta.download.c {
    public static com.tencent.bugly.proguard.v a = new com.tencent.bugly.proguard.v();
    public java.util.concurrent.ConcurrentHashMap<java.lang.String, com.tencent.bugly.beta.download.DownloadTask> b = new java.util.concurrent.ConcurrentHashMap<>(3);

    /* renamed from: c, reason: collision with root package name */
    public java.util.concurrent.ScheduledExecutorService f1159c;

    public class a implements java.util.concurrent.ThreadFactory {
        public a(com.tencent.bugly.proguard.v vVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            thread.setName("BETA_SDK_DOWNLOAD");
            return thread;
        }
    }

    public v() {
        this.f1159c = null;
        try {
            java.util.concurrent.ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = java.util.concurrent.Executors.newScheduledThreadPool(3, new com.tencent.bugly.proguard.v.a(this));
            this.f1159c = scheduledExecutorServiceNewScheduledThreadPool;
            if (scheduledExecutorServiceNewScheduledThreadPool.isShutdown()) {
                throw new java.lang.IllegalArgumentException("ScheduledExecutorService is not available!");
            }
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(e2);
        }
    }

    @Override // com.tencent.bugly.beta.download.c
    public com.tencent.bugly.beta.download.DownloadTask a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        com.tencent.bugly.proguard.RunnableC0258w runnableC0258w = null;
        if (android.text.TextUtils.isEmpty(str)) {
            com.tencent.bugly.proguard.aa.b("downloadUrl is null!", new java.lang.Object[0]);
            return null;
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            com.tencent.bugly.proguard.aa.b("saveDir is null!", new java.lang.Object[0]);
            return null;
        }
        if (this.b.get(str) != null) {
            return this.b.get(str);
        }
        android.content.ContentValues contentValuesC = com.tencent.bugly.proguard.C0256p.a.c(str);
        if (contentValuesC != null && contentValuesC.get("_dUrl") != null && contentValuesC.getAsString("_sFile") != null && contentValuesC.getAsLong("_sLen") != null && contentValuesC.getAsLong("_tLen") != null && contentValuesC.getAsString("_MD5") != null) {
            runnableC0258w = new com.tencent.bugly.proguard.RunnableC0258w((java.lang.String) contentValuesC.get("_dUrl"), contentValuesC.getAsString("_sFile"), contentValuesC.getAsLong("_sLen").longValue(), contentValuesC.getAsLong("_tLen").longValue(), contentValuesC.getAsString("_MD5"));
            if (contentValuesC.getAsLong("_DLTIME") != null) {
                runnableC0258w.l = contentValuesC.getAsLong("_DLTIME").longValue();
            }
        }
        return runnableC0258w == null ? new com.tencent.bugly.proguard.RunnableC0258w(str, str2, str3, str4) : runnableC0258w;
    }

    public synchronized boolean a(java.lang.Runnable runnable) {
        java.util.concurrent.ScheduledExecutorService scheduledExecutorService = this.f1159c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            if (runnable == null) {
                com.tencent.bugly.proguard.aa.e("async task = null", new java.lang.Object[0]);
                return false;
            }
            com.tencent.bugly.proguard.aa.e("task start %s", runnable.getClass().getName());
            this.f1159c.execute(runnable);
            return true;
        }
        com.tencent.bugly.proguard.aa.e("async handler was closed , should not post task!", new java.lang.Object[0]);
        return false;
    }
}
