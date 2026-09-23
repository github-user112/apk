package e.d.c.a.a.a;

/* loaded from: classes.dex */
public abstract class a {
    public static final java.lang.String[] a = {"TLS_DHE_DSS_WITH_AES_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"};
    public static final java.lang.String[] b = {"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"};

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String[] f2817c = {"TLS_RSA", "CBC", "TEA", "SHA0", "MD2", "MD4", "RIPEMD", "NULL", "RC4", "DES", "DESX", "DES40", "RC2", "MD5", "ANON", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"};

    public static boolean a(javax.net.ssl.SSLSocket sSLSocket, java.lang.String[] strArr) {
        if (sSLSocket == null) {
            return false;
        }
        java.lang.String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int length = enabledCipherSuites.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                break;
            }
            java.lang.String str = enabledCipherSuites[i];
            java.lang.String upperCase = str.toUpperCase(java.util.Locale.ENGLISH);
            int length2 = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z = false;
                    break;
                }
                if (upperCase.contains(strArr[i2].toUpperCase(java.util.Locale.ENGLISH))) {
                    break;
                }
                i2++;
            }
            if (!z) {
                arrayList.add(str);
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        sSLSocket.setEnabledCipherSuites((java.lang.String[]) arrayList.toArray(new java.lang.String[arrayList.size()]));
        return true;
    }

    public static void b(javax.net.ssl.SSLSocket sSLSocket) {
        if (sSLSocket == null) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            sSLSocket.setEnabledProtocols(new java.lang.String[]{"TLSv1.3", "TLSv1.2"});
        }
        if (android.os.Build.VERSION.SDK_INT < 29) {
            sSLSocket.setEnabledProtocols(new java.lang.String[]{"TLSv1.2"});
        }
    }

    public static boolean c(javax.net.ssl.SSLSocket sSLSocket, java.lang.String[] strArr) {
        if (sSLSocket == null) {
            return false;
        }
        java.lang.String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.List listAsList = java.util.Arrays.asList(strArr);
        for (java.lang.String str : enabledCipherSuites) {
            if (listAsList.contains(str.toUpperCase(java.util.Locale.ENGLISH))) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        sSLSocket.setEnabledCipherSuites((java.lang.String[]) arrayList.toArray(new java.lang.String[arrayList.size()]));
        return true;
    }
}
