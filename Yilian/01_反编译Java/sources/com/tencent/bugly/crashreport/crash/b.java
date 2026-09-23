package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class b implements java.lang.Comparable<com.tencent.bugly.crashreport.crash.b> {
    public long a = -1;
    public long b = -1;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1003c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1004d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1005e = false;

    /* renamed from: f, reason: collision with root package name */
    public int f1006f = 0;

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(com.tencent.bugly.crashreport.crash.b bVar) {
        if (bVar == null) {
            return 1;
        }
        long j = this.b - bVar.b;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }
}
