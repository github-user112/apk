package d.b.q;

/* loaded from: classes.dex */
public class n0 {
    public int a = 0;
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f1804c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f1805d = Integer.MIN_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public int f1806e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f1807f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1808g = false;
    public boolean h = false;

    public void a(int i, int i2) {
        this.f1804c = i;
        this.f1805d = i2;
        this.h = true;
        if (this.f1808g) {
            if (i2 != Integer.MIN_VALUE) {
                this.a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.b = i2;
        }
    }
}
