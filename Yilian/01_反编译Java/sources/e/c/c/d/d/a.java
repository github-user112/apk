package e.c.c.d.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: g, reason: collision with root package name */
    public static final e.c.c.d.d.a f2785g;
    public static final e.c.c.d.d.a h;
    public final int[] a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final e.c.c.d.d.b f2786c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2787d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2788e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2789f;

    static {
        new e.c.c.d.d.a(4201, 4096, 1);
        new e.c.c.d.d.a(com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_KEYS_RESTORED, 1024, 1);
        f2785g = new e.c.c.d.d.a(67, 64, 1);
        new e.c.c.d.d.a(19, 16, 1);
        h = new e.c.c.d.d.a(285, 256, 0);
        new e.c.c.d.d.a(com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_LIB, 256, 1);
    }

    public a(int i, int i2, int i3) {
        this.f2788e = i;
        this.f2787d = i2;
        this.f2789f = i3;
        this.a = new int[i2];
        this.b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.a[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.b[this.a[i6]] = i6;
        }
        this.f2786c = new e.c.c.d.d.b(this, new int[]{0});
        new e.c.c.d.d.b(this, new int[]{1});
    }

    public static int a(int i, int i2) {
        return i ^ i2;
    }

    public int b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.a;
        int[] iArr2 = this.b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f2787d - 1)];
    }

    public java.lang.String toString() {
        return "GF(0x" + java.lang.Integer.toHexString(this.f2788e) + ',' + this.f2787d + ')';
    }
}
