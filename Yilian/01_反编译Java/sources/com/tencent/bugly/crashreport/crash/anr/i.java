package com.tencent.bugly.crashreport.crash.anr;

/* loaded from: classes.dex */
public class i {
    public long b;

    /* renamed from: d, reason: collision with root package name */
    public long f1001d;
    public java.lang.String a = "";

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1000c = "";

    /* renamed from: e, reason: collision with root package name */
    public boolean f1002e = false;

    public i(java.lang.String str, long j) {
        a(str);
        b(j);
        a(false);
    }

    public long a() {
        return this.b;
    }

    public void a(long j) {
        this.f1001d = j;
    }

    public void a(java.lang.String str) {
        if (str == null) {
            str = "";
        }
        this.f1000c = str;
    }

    public void a(boolean z) {
        this.f1002e = z;
    }

    public java.lang.String b() {
        return this.f1000c;
    }

    public void b(long j) {
        this.b = j;
    }

    public void b(java.lang.String str) {
        if (str == null) {
            str = "";
        }
        this.a = str;
    }

    public java.lang.String c() {
        return this.a;
    }

    public boolean d() {
        return this.f1002e;
    }
}
