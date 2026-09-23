package e.d.c.a.a.a;

/* loaded from: classes.dex */
public class c implements javax.net.ssl.X509TrustManager {
    public static final java.lang.String b = e.d.c.a.a.a.c.class.getSimpleName();
    public java.util.List<javax.net.ssl.X509TrustManager> a = new java.util.ArrayList();

    public c(java.io.InputStream inputStream, java.lang.String str) throws java.io.IOException {
        try {
            if (inputStream == null) {
                throw new java.lang.IllegalArgumentException("inputstream or trustPwd is null");
            }
            try {
                javax.net.ssl.TrustManagerFactory trustManagerFactory = javax.net.ssl.TrustManagerFactory.getInstance("X509");
                java.security.KeyStore keyStore = java.security.KeyStore.getInstance("bks");
                keyStore.load(inputStream, str.toCharArray());
                trustManagerFactory.init(keyStore);
                javax.net.ssl.TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                for (int i = 0; i < trustManagers.length; i++) {
                    if (trustManagers[i] instanceof javax.net.ssl.X509TrustManager) {
                        this.a.add((javax.net.ssl.X509TrustManager) trustManagers[i]);
                    }
                }
            } catch (java.io.IOException | java.security.KeyStoreException | java.security.NoSuchAlgorithmException | java.security.cert.CertificateException e2) {
                d.s.y.w(b, "loadInputStream: exception : " + e2.getMessage());
            }
        } finally {
            d.s.y.h(inputStream);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
        d.s.y.i(b, "checkClientTrusted: ");
        java.util.Iterator<javax.net.ssl.X509TrustManager> it = this.a.iterator();
        while (it.hasNext()) {
            try {
                it.next().checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (java.security.cert.CertificateException e2) {
                java.lang.String str2 = b;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("checkServerTrusted CertificateException");
                sbO.append(e2.getMessage());
                d.s.y.w(str2, sbO.toString());
            }
        }
        throw new java.security.cert.CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
        java.lang.String str2 = b;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("checkServerTrusted begin ,server ca chain size is : ");
        sbO.append(x509CertificateArr.length);
        d.s.y.i(str2, sbO.toString());
        for (java.security.cert.X509Certificate x509Certificate : x509CertificateArr) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("server ca chain: getSubjectDN is :");
            sbO2.append(x509Certificate.getSubjectDN());
            sbO2.append(" , getIssuerDN :");
            sbO2.append(x509Certificate.getIssuerDN());
            sbO2.toString();
        }
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            try {
                d.s.y.i(b, "check server i : " + i);
                javax.net.ssl.X509TrustManager x509TrustManager = this.a.get(i);
                java.security.cert.X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    d.s.y.i(b, "client root ca size is : " + acceptedIssuers.length);
                    for (java.security.cert.X509Certificate x509Certificate2 : acceptedIssuers) {
                        java.lang.String str3 = "client root ca getIssuerDN :" + x509Certificate2.getIssuerDN();
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (java.security.cert.CertificateException e2) {
                java.lang.String str4 = b;
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("checkServerTrusted error :");
                sbO3.append(e2.getMessage());
                sbO3.append(" , time : ");
                sbO3.append(i);
                d.s.y.w(str4, sbO3.toString());
                if (i == size - 1) {
                    if (x509CertificateArr.length > 0) {
                        java.lang.String str5 = b;
                        java.lang.StringBuilder sbO4 = e.a.c.a.a.o("root ca issuer : ");
                        sbO4.append(x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                        d.s.y.w(str5, sbO4.toString());
                    }
                    throw e2;
                }
            }
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public java.security.cert.X509Certificate[] getAcceptedIssuers() {
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator<javax.net.ssl.X509TrustManager> it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.addAll(java.util.Arrays.asList(it.next().getAcceptedIssuers()));
            }
            return (java.security.cert.X509Certificate[]) arrayList.toArray(new java.security.cert.X509Certificate[arrayList.size()]);
        } catch (java.lang.Exception e2) {
            java.lang.String str = b;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getAcceptedIssuers exception : ");
            sbO.append(e2.getMessage());
            d.s.y.w(str, sbO.toString());
            return new java.security.cert.X509Certificate[0];
        }
    }
}
