package com.tencent.bugly.beta;

/* loaded from: classes.dex */
public class UpgradeInfo {
    public java.lang.String apkMd5;
    public java.lang.String apkUrl;
    public long fileSize;
    public java.lang.String id;
    public java.lang.String imageUrl;
    public java.lang.String newFeature;
    public long popInterval;
    public int popTimes;
    public long publishTime;
    public int publishType;
    public java.lang.String title;
    public int updateType;
    public int upgradeType;
    public int versionCode;
    public java.lang.String versionName;

    public UpgradeInfo(com.tencent.bugly.proguard.B b) {
        this.id = "";
        this.title = "";
        this.newFeature = "";
        this.publishTime = 0L;
        this.publishType = 0;
        this.upgradeType = 1;
        this.popTimes = 0;
        this.popInterval = 0L;
        this.versionName = "";
        if (b != null) {
            this.id = b.r;
            this.title = b.f1055f;
            this.newFeature = b.f1056g;
            this.publishTime = b.h;
            this.publishType = b.i;
            this.upgradeType = b.l;
            this.popTimes = b.m;
            this.popInterval = b.n;
            com.tencent.bugly.proguard.y yVar = b.j;
            this.versionCode = yVar.f1175d;
            this.versionName = yVar.f1176e;
            this.apkMd5 = yVar.j;
            com.tencent.bugly.proguard.C0259x c0259x = b.k;
            this.apkUrl = c0259x.f1165c;
            this.fileSize = c0259x.f1167e;
            this.imageUrl = b.q.get("IMG_title");
            this.updateType = b.u;
        }
    }
}
