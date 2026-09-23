package d.g.g;

/* loaded from: classes.dex */
public final class a {
    static {
        new java.lang.ThreadLocal();
    }

    public static int a(int i, int i2) {
        int iAlpha = android.graphics.Color.alpha(i2);
        int iAlpha2 = android.graphics.Color.alpha(i);
        int i3 = 255 - (((255 - iAlpha2) * (255 - iAlpha)) / 255);
        return android.graphics.Color.argb(i3, b(android.graphics.Color.red(i), iAlpha2, android.graphics.Color.red(i2), iAlpha, i3), b(android.graphics.Color.green(i), iAlpha2, android.graphics.Color.green(i2), iAlpha, i3), b(android.graphics.Color.blue(i), iAlpha2, android.graphics.Color.blue(i2), iAlpha, i3));
    }

    public static int b(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * 255) * i2)) / (i5 * 255);
    }

    public static int c(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new java.lang.IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
