package e.d.a.a.b;

/* loaded from: classes.dex */
public class c {
    public static final char[] a = "0123456789ABCDEF".toCharArray();

    public static java.lang.String a(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(a[(b >> 4) & 15]);
            sb.append(a[b & com.umeng.analytics.pro.bw.m]);
        }
        return sb.toString();
    }

    public static byte[] b(java.lang.String str) {
        char[] charArray = str.toCharArray();
        if ((charArray.length & 1) != 0) {
            throw new java.lang.IllegalArgumentException("Odd number of characters.");
        }
        byte[] bArr = new byte[charArray.length >> 1];
        int i = 0;
        int i2 = 0;
        while (i < charArray.length) {
            int iDigit = java.lang.Character.digit(charArray[i], 16);
            if (iDigit == -1) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Illegal hexadecimal character at index ", i));
            }
            int i3 = i + 1;
            int iDigit2 = java.lang.Character.digit(charArray[i3], 16);
            if (iDigit2 == -1) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Illegal hexadecimal character at index ", i3));
            }
            i = i3 + 1;
            bArr[i2] = (byte) (((iDigit << 4) | iDigit2) & 255);
            i2++;
        }
        return bArr;
    }
}
