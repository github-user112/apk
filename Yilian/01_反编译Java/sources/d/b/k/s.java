package d.b.k;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    public static d.b.k.s f1648d;
    public long a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public int f1649c;

    public void a(long j, double d2, double d3) {
        float f2 = (j - 946728000000L) / 8.64E7f;
        double d4 = (0.01720197f * f2) + 6.24006f;
        double dSin = java.lang.Math.sin(d4) * 0.03341960161924362d;
        java.lang.Double.isNaN(d4);
        double dSin2 = (java.lang.Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + (java.lang.Math.sin(2.0f * r4) * 3.4906598739326E-4d) + dSin + d4 + 1.796593063d + 3.141592653589793d;
        java.lang.Double.isNaN(f2 - 9.0E-4f);
        double dRound = java.lang.Math.round(r11 - r9) + 9.0E-4f;
        java.lang.Double.isNaN(dRound);
        double dSin3 = (java.lang.Math.sin(2.0d * dSin2) * (-0.0069d)) + (java.lang.Math.sin(d4) * 0.0053d) + dRound + ((-d3) / 360.0d);
        double dAsin = java.lang.Math.asin(java.lang.Math.sin(0.4092797040939331d) * java.lang.Math.sin(dSin2));
        double d5 = 0.01745329238474369d * d2;
        double dSin4 = (java.lang.Math.sin(-0.10471975803375244d) - (java.lang.Math.sin(dAsin) * java.lang.Math.sin(d5))) / (java.lang.Math.cos(dAsin) * java.lang.Math.cos(d5));
        if (dSin4 >= 1.0d) {
            this.f1649c = 1;
        } else {
            if (dSin4 > -1.0d) {
                double dAcos = (float) (java.lang.Math.acos(dSin4) / 6.283185307179586d);
                java.lang.Double.isNaN(dAcos);
                this.a = java.lang.Math.round((dSin3 + dAcos) * 8.64E7d) + 946728000000L;
                java.lang.Double.isNaN(dAcos);
                long jRound = java.lang.Math.round((dSin3 - dAcos) * 8.64E7d) + 946728000000L;
                this.b = jRound;
                if (jRound >= j || this.a <= j) {
                    this.f1649c = 1;
                    return;
                } else {
                    this.f1649c = 0;
                    return;
                }
            }
            this.f1649c = 0;
        }
        this.a = -1L;
        this.b = -1L;
    }
}
