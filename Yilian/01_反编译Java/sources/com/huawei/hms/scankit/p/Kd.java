package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Kd {
    public static final com.huawei.hms.scankit.p.Kd[] a;
    public static com.huawei.hms.scankit.p.Kd[] b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f574c;

    /* renamed from: d, reason: collision with root package name */
    public final int f575d;

    /* renamed from: e, reason: collision with root package name */
    public final int f576e;

    /* renamed from: f, reason: collision with root package name */
    public final int f577f;

    /* renamed from: g, reason: collision with root package name */
    public final int f578g;
    public final int h;
    public final int i;
    public final int j;

    static {
        com.huawei.hms.scankit.p.Kd[] kdArr = {new com.huawei.hms.scankit.p.Kd(false, 3, 5, 8, 8, 1), new com.huawei.hms.scankit.p.Kd(false, 5, 7, 10, 10, 1), new com.huawei.hms.scankit.p.Kd(true, 5, 7, 16, 6, 1), new com.huawei.hms.scankit.p.Kd(false, 8, 10, 12, 12, 1), new com.huawei.hms.scankit.p.Kd(true, 10, 11, 14, 6, 2), new com.huawei.hms.scankit.p.Kd(false, 12, 12, 14, 14, 1), new com.huawei.hms.scankit.p.Kd(true, 16, 14, 24, 10, 1), new com.huawei.hms.scankit.p.Kd(false, 18, 14, 16, 16, 1), new com.huawei.hms.scankit.p.Kd(false, 22, 18, 18, 18, 1), new com.huawei.hms.scankit.p.Kd(true, 22, 18, 16, 10, 2), new com.huawei.hms.scankit.p.Kd(false, 30, 20, 20, 20, 1), new com.huawei.hms.scankit.p.Kd(true, 32, 24, 16, 14, 2), new com.huawei.hms.scankit.p.Kd(false, 36, 24, 22, 22, 1), new com.huawei.hms.scankit.p.Kd(false, 44, 28, 24, 24, 1), new com.huawei.hms.scankit.p.Kd(true, 49, 28, 22, 14, 2), new com.huawei.hms.scankit.p.Kd(false, 62, 36, 14, 14, 4), new com.huawei.hms.scankit.p.Kd(false, 86, 42, 16, 16, 4), new com.huawei.hms.scankit.p.Kd(false, 114, 48, 18, 18, 4), new com.huawei.hms.scankit.p.Kd(false, 144, 56, 20, 20, 4), new com.huawei.hms.scankit.p.Kd(false, 174, 68, 22, 22, 4), new com.huawei.hms.scankit.p.Kd(false, 204, 84, 24, 24, 4, 102, 42), new com.huawei.hms.scankit.p.Kd(false, 280, 112, 14, 14, 16, 140, 56), new com.huawei.hms.scankit.p.Kd(false, 368, 144, 16, 16, 16, 92, 36), new com.huawei.hms.scankit.p.Kd(false, 456, 192, 18, 18, 16, 114, 48), new com.huawei.hms.scankit.p.Kd(false, com.google.android.exoplayer2.audio.MpegAudioUtil.SAMPLES_PER_FRAME_L3_V2, 224, 20, 20, 16, 144, 56), new com.huawei.hms.scankit.p.Kd(false, 696, 272, 22, 22, 16, 174, 68), new com.huawei.hms.scankit.p.Kd(false, 816, 336, 24, 24, 16, 136, 56), new com.huawei.hms.scankit.p.Kd(false, 1050, 408, 18, 18, 36, com.tencent.tinker.android.dx.instruction.Opcodes.REM_DOUBLE, 68), new com.huawei.hms.scankit.p.Kd(false, 1304, 496, 20, 20, 36, 163, 62), new com.huawei.hms.scankit.p.Dd()};
        a = kdArr;
        b = kdArr;
    }

    public Kd(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    public Kd(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f574c = z;
        this.f575d = i;
        this.f576e = i2;
        this.f577f = i3;
        this.f578g = i4;
        this.h = i5;
        this.i = i6;
        this.j = i7;
    }

    public static com.huawei.hms.scankit.p.Kd a(int i, com.huawei.hms.scankit.p.Ld ld, com.huawei.hms.scankit.p.C0184nd c0184nd, com.huawei.hms.scankit.p.C0184nd c0184nd2, boolean z) throws java.lang.Exception {
        for (com.huawei.hms.scankit.p.Kd kd : b) {
            if (!(ld == com.huawei.hms.scankit.p.Ld.FORCE_SQUARE && kd.f574c) && ((ld != com.huawei.hms.scankit.p.Ld.FORCE_RECTANGLE || kd.f574c) && ((c0184nd == null || (kd.g() >= c0184nd.b() && kd.f() >= c0184nd.a())) && ((c0184nd2 == null || (kd.g() <= c0184nd2.b() && kd.f() <= c0184nd2.a())) && i <= kd.f575d)))) {
                return kd;
            }
        }
        if (!z) {
            return null;
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Can't find a symbol arrangement that matches the message. Data codewords: ");
            sb.append(i);
            throw new java.lang.IllegalArgumentException(sb.toString());
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    private int h() throws java.lang.Exception {
        int i = this.h;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 4) {
                if (i == 16) {
                    return 4;
                }
                if (i == 36) {
                    return 6;
                }
                try {
                    throw new java.lang.IllegalStateException("Cannot handle this number of data regions");
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            }
        }
        return i2;
    }

    private int i() throws java.lang.Exception {
        int i = this.h;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        try {
            throw new java.lang.IllegalStateException("Cannot handle this number of data regions");
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public final int a() {
        return this.f575d;
    }

    public int a(int i) {
        return this.i;
    }

    public final int b() {
        return this.f576e;
    }

    public final int b(int i) {
        return this.j;
    }

    public int c() {
        return this.f575d / this.i;
    }

    public final int d() {
        return i() * this.f578g;
    }

    public final int e() {
        return h() * this.f577f;
    }

    public final int f() {
        return (i() * 2) + d();
    }

    public final int g() {
        return (h() * 2) + e();
    }

    public final java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(this.f574c ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f577f);
        sb.append('x');
        sb.append(this.f578g);
        sb.append(", symbol size ");
        sb.append(g());
        sb.append('x');
        sb.append(f());
        sb.append(", symbol data size ");
        sb.append(e());
        sb.append('x');
        sb.append(d());
        sb.append(", codewords ");
        sb.append(this.f575d);
        sb.append('+');
        sb.append(this.f576e);
        return sb.toString();
    }
}
