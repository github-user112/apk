package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class d {
    public java.lang.String a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f946c;

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.beta.utils.a f947d = null;

    public d(java.lang.String str, long j, long j2) {
        this.a = null;
        this.b = 0L;
        this.f946c = 0L;
        this.a = str;
        this.b = j;
        this.f946c = j2;
    }

    private synchronized java.lang.String b(long j) {
        if (this.f947d == null) {
            return null;
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        try {
            this.f947d.b(this.b);
            this.f947d.b(j);
            while (true) {
                byte b = this.f947d.b();
                if (b == 0) {
                    break;
                }
                stringBuffer.append((char) b);
            }
            this.f947d.a();
            this.f947d = new com.tencent.bugly.beta.utils.a(this.a);
        } catch (java.lang.Exception e2) {
            this.f947d = null;
            e2.printStackTrace();
        }
        return stringBuffer.toString();
    }

    private boolean b() {
        return (this.b == 0 || this.f946c == 0) ? false : true;
    }

    private synchronized boolean c() {
        if (!b()) {
            return false;
        }
        if (this.f947d == null) {
            try {
                this.f947d = new com.tencent.bugly.beta.utils.a(this.a);
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public synchronized java.lang.String a(long j) {
        if (j >= 0) {
            if (j < this.f946c) {
                if (this.f947d == null && !c()) {
                    return null;
                }
                return b(j);
            }
        }
        return null;
    }

    public synchronized void a() {
        com.tencent.bugly.beta.utils.a aVar = this.f947d;
        if (aVar == null) {
            return;
        }
        aVar.a();
        this.f947d = null;
    }
}
