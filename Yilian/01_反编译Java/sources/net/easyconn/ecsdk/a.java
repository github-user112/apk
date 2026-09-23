package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class a {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f3156c;

    /* renamed from: d, reason: collision with root package name */
    public int f3157d;

    /* renamed from: e, reason: collision with root package name */
    public int f3158e;

    /* renamed from: f, reason: collision with root package name */
    public int f3159f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f3160g = new byte[24];
    public byte[] h = new byte[4096];

    public int a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | 0 | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public void a() {
        this.a = a(this.f3160g, 0);
        this.b = a(this.f3160g, 4);
        this.f3156c = a(this.f3160g, 8);
        this.f3157d = a(this.f3160g, 12);
        this.f3158e = a(this.f3160g, 16);
        this.f3159f = a(this.f3160g, 20);
    }
}
