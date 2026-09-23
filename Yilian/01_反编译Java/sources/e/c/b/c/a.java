package e.c.b.c;

/* loaded from: classes.dex */
public final class a {
    static {
        new java.math.BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);
        java.lang.Math.log(10.0d);
        java.lang.Math.log(2.0d);
    }

    public static java.math.BigInteger a(java.math.BigInteger bigInteger, java.math.BigInteger bigInteger2, java.math.RoundingMode roundingMode) {
        return new java.math.BigDecimal(bigInteger).divide(new java.math.BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }
}
