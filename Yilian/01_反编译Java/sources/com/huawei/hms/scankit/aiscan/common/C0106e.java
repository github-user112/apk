package com.huawei.hms.scankit.aiscan.common;

/* renamed from: com.huawei.hms.scankit.aiscan.common.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0106e {
    public final byte[] a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f396c;

    /* renamed from: d, reason: collision with root package name */
    public final java.util.List<byte[]> f397d;

    /* renamed from: e, reason: collision with root package name */
    public final java.lang.String f398e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.Integer f399f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.Integer f400g;
    public java.lang.Object h;
    public final int i;
    public final int j;

    public C0106e(byte[] bArr, java.lang.String str, java.util.List<byte[]> list, java.lang.String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public C0106e(byte[] bArr, java.lang.String str, java.util.List<byte[]> list, java.lang.String str2, int i, int i2) {
        this.a = bArr;
        this.b = bArr == null ? 0 : bArr.length * 8;
        this.f396c = str;
        this.f397d = list;
        this.f398e = str2;
        this.i = i2;
        this.j = i;
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(java.lang.Integer num) {
        this.f400g = num;
    }

    public void a(java.lang.Object obj) {
        this.h = obj;
    }

    public java.lang.Object b() {
        return this.h;
    }

    public void b(java.lang.Integer num) {
        this.f399f = num;
    }

    public byte[] c() {
        return this.a;
    }

    public java.lang.String d() {
        return this.f396c;
    }
}
