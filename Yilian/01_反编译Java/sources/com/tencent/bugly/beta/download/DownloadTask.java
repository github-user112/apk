package com.tencent.bugly.beta.download;

/* loaded from: classes.dex */
public abstract class DownloadTask {
    public static final int COMPLETE = 1;
    public static final int DELETED = 4;
    public static final int DOWNLOADING = 2;
    public static final int FAILED = 5;
    public static final int INIT = 0;
    public static final int PAUSED = 3;
    public static final int TYPE_HOTFIX = 2;
    public static final int TYPE_UPGRADE = 1;
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f896c;

    /* renamed from: e, reason: collision with root package name */
    public long f898e;

    /* renamed from: f, reason: collision with root package name */
    public long f899f;
    public java.lang.String h;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.tencent.bugly.beta.download.DownloadListener> f897d = new java.util.concurrent.CopyOnWriteArrayList();

    /* renamed from: g, reason: collision with root package name */
    public boolean f900g = true;
    public int i = 0;
    public int j = 1;

    public DownloadTask(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        this.h = "";
        this.a = str;
        this.b = str2;
        this.f896c = str3;
        this.h = str4;
    }

    public void addListener(com.tencent.bugly.beta.download.DownloadListener downloadListener) {
        if (downloadListener == null || this.f897d.contains(downloadListener)) {
            return;
        }
        this.f897d.add(downloadListener);
    }

    public abstract void delete(boolean z);

    public abstract void download();

    public abstract long getCostTime();

    public int getDownloadType() {
        return this.j;
    }

    public java.lang.String getDownloadUrl() {
        return this.a;
    }

    public java.lang.String getMD5() {
        return this.h;
    }

    public abstract java.io.File getSaveFile();

    public long getSavedLength() {
        return this.f898e;
    }

    public abstract int getStatus();

    public long getTotalLength() {
        return this.f899f;
    }

    public boolean isNeededNotify() {
        return this.f900g;
    }

    public boolean removeListener(com.tencent.bugly.beta.download.DownloadListener downloadListener) {
        return downloadListener != null && this.f897d.remove(downloadListener);
    }

    public void setDownloadType(int i) {
        this.j = i;
    }

    public void setNeededNotify(boolean z) {
        this.f900g = z;
    }

    public void setSavedLength(long j) {
        this.f898e = j;
    }

    public void setTotalLength(long j) {
        this.f899f = j;
    }

    public abstract void stop();
}
