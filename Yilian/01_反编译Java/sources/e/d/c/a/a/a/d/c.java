package e.d.c.a.a.a.d;

/* loaded from: classes.dex */
public class c {
    public static final java.util.regex.Pattern a = java.util.regex.Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    public static final java.lang.String[] b;

    static {
        java.lang.String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        b = strArr;
        java.util.Arrays.sort(strArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
    
        r7 = r0.f2824g;
        r8 = r0.f2821d;
        r6 = new java.lang.String(r7, r8, r0.f2822e - r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0131, code lost:
    
        r0.f2822e = r0.f2820c;
     */
    /* JADX WARN: Removed duplicated region for block: B:180:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0384 A[EDGE_INSN: B:256:0x0384->B:197:0x0384 BREAK  A[LOOP:10: B:161:0x02ef->B:262:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:262:? A[LOOP:10: B:161:0x02ef->B:262:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(java.lang.String r16, java.security.cert.X509Certificate r17, boolean r18) throws javax.net.ssl.SSLException, java.security.cert.CertificateParsingException {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.d.c.a.a.a.d.c.a(java.lang.String, java.security.cert.X509Certificate, boolean):void");
    }

    public static int b(java.lang.String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }
}
