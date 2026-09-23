package e.c.a.b.s;

/* loaded from: classes.dex */
public class a extends d.b.m.a.c {
    public static final double b = java.lang.Math.cos(java.lang.Math.toRadians(45.0d));

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        double d3 = 1.0d - b;
        double d4 = f3;
        java.lang.Double.isNaN(d4);
        java.lang.Double.isNaN(d2);
        return (float) ((d3 * d4) + d2);
    }
}
