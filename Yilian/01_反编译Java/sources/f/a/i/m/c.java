package f.a.i.m;

/* loaded from: classes.dex */
public class c {
    public static final char[] a = {'4', 'W', 'T', '6', 'J', '0', '=', 'u', 'G', 'O', 'H', '7', 'r', '2', 'e', 't', 'w', '9', 'F', 'l', 'Z', '5', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH, 'U', 'Q', 'X', 'q', 'j', 'f', 'P', 'S', 'h', 'R', 'o', 'N', 'i', 'B', 'n', 'Y', 'y', 'a', 'c', 'b', 'D', 'K', 'C', '8', '1', 'E', '3', 'k', 'd', 'm', 'v', 'M', 'z', 'p', '+', 's', 'I', 'V', 'x', 'A', 'g', 'L'};

    public static java.lang.String a(java.lang.String str) {
        char c2;
        byte[] bytes = str.getBytes();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i = 0;
        while (i <= bytes.length - 3) {
            byte b = bytes[i];
            byte b2 = bytes[i + 1];
            byte b3 = bytes[i + 2];
            int i2 = b ^ 102;
            sb.append(a[(i2 & com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX) >> 2]);
            sb.append(a[((i2 & 3) << 4) | ((b2 & 240) >> 4)]);
            sb.append(a[((b2 & com.umeng.analytics.pro.bw.m) << 2) | ((b3 & 192) >> 6)]);
            sb.append(a[b3 & 63]);
            i += 3;
        }
        int length = bytes.length % 3;
        if (length != 1) {
            if (length == 2) {
                byte b4 = bytes[i];
                byte b5 = bytes[i + 1];
                int i3 = b4 ^ 102;
                sb.append(a[(i3 & com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX) >> 2]);
                sb.append(a[((i3 & 3) << 4) | ((b5 & 240) >> 4)]);
                sb.append(a[(b5 & com.umeng.analytics.pro.bw.m) << 2]);
                c2 = a[64];
            }
            return sb.toString();
        }
        int i4 = bytes[i] ^ 102;
        sb.append(a[(i4 & com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX) >> 2]);
        sb.append(a[(i4 & 3) << 4]);
        sb.append(a[64]);
        c2 = a[64];
        sb.append(c2);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(int r6, boolean r7) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.security.SecureRandom r1 = new java.security.SecureRandom
            r1.<init>()
            r2 = 0
        Lb:
            if (r2 >= r6) goto L3e
            r3 = 3
            int r3 = r1.nextInt(r3)
            if (r3 == 0) goto L32
            r4 = 1
            r5 = 25
            if (r3 == r4) goto L27
            r4 = 2
            if (r3 == r4) goto L1d
            goto L3b
        L1d:
            if (r7 == 0) goto L20
            goto L27
        L20:
            int r3 = r1.nextInt(r5)
            int r3 = r3 + 97
            goto L2d
        L27:
            int r3 = r1.nextInt(r5)
            int r3 = r3 + 65
        L2d:
            char r3 = (char) r3
            r0.append(r3)
            goto L3b
        L32:
            r3 = 10
            int r3 = r1.nextInt(r3)
            r0.append(r3)
        L3b:
            int r2 = r2 + 1
            goto Lb
        L3e:
            java.lang.String r6 = r0.toString()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.m.c.b(int, boolean):java.lang.String");
    }

    public static java.lang.String c(java.lang.String str) {
        try {
            byte[] bArrDigest = java.security.MessageDigest.getInstance("MD5").digest(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
            java.lang.StringBuilder sb = new java.lang.StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(java.lang.Integer.toHexString(i));
            }
            return sb.toString();
        } catch (java.io.UnsupportedEncodingException e2) {
            throw new java.lang.RuntimeException("Huh, UTF-8 should be supported?", e2);
        } catch (java.security.NoSuchAlgorithmException e3) {
            throw new java.lang.RuntimeException("Huh, MD5 should be supported?", e3);
        }
    }
}
