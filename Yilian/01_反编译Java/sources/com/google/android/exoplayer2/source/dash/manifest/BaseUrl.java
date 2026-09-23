package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public final class BaseUrl {
    public static final int DEFAULT_PRIORITY = 1;
    public static final int DEFAULT_WEIGHT = 1;
    public final int priority;
    public final java.lang.String serviceLocation;
    public final java.lang.String url;
    public final int weight;

    public BaseUrl(java.lang.String str) {
        this(str, str, 1, 1);
    }

    public BaseUrl(java.lang.String str, java.lang.String str2, int i, int i2) {
        this.url = str;
        this.serviceLocation = str2;
        this.priority = i;
        this.weight = i2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.source.dash.manifest.BaseUrl)) {
            return false;
        }
        com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl = (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) obj;
        return this.priority == baseUrl.priority && this.weight == baseUrl.weight && e.c.b.a.f.h(this.url, baseUrl.url) && e.c.b.a.f.h(this.serviceLocation, baseUrl.serviceLocation);
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{this.url, this.serviceLocation, java.lang.Integer.valueOf(this.priority), java.lang.Integer.valueOf(this.weight)});
    }
}
