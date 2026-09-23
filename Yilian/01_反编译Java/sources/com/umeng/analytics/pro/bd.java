package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bd implements java.io.Serializable {
    public final boolean a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f1254c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1255d;

    public bd(byte b) {
        this(b, false);
    }

    public bd(byte b, java.lang.String str) {
        this.b = b;
        this.a = true;
        this.f1254c = str;
        this.f1255d = false;
    }

    public bd(byte b, boolean z) {
        this.b = b;
        this.a = false;
        this.f1254c = null;
        this.f1255d = z;
    }

    public boolean a() {
        return this.a;
    }

    public java.lang.String b() {
        return this.f1254c;
    }

    public boolean c() {
        return this.b == 12;
    }

    public boolean d() {
        byte b = this.b;
        return b == 15 || b == 13 || b == 14;
    }

    public boolean e() {
        return this.f1255d;
    }
}
