package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Y implements javax.net.ssl.X509TrustManager {
    public java.util.List<javax.net.ssl.X509TrustManager> a = new java.util.ArrayList();

    public Y(android.content.Context context) throws java.io.IOException {
        if (context == null) {
            throw new java.lang.IllegalArgumentException("context is null,can not read CA");
        }
        java.io.InputStream inputStreamOpen = null;
        try {
            javax.net.ssl.TrustManagerFactory trustManagerFactory = javax.net.ssl.TrustManagerFactory.getInstance("X509");
            java.security.KeyStore keyStore = java.security.KeyStore.getInstance("bks");
            inputStreamOpen = context.getAssets().open("updatesdkcas.bks");
            inputStreamOpen.reset();
            keyStore.load(inputStreamOpen, "".toCharArray());
            trustManagerFactory.init(keyStore);
            javax.net.ssl.TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            for (int i = 0; i < trustManagers.length; i++) {
                if (trustManagers[i] instanceof javax.net.ssl.X509TrustManager) {
                    this.a.add((javax.net.ssl.X509TrustManager) trustManagers[i]);
                }
            }
            if (this.a.isEmpty()) {
                throw new java.security.cert.CertificateException("X509TrustManager is empty");
            }
        } finally {
            com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) inputStreamOpen);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
        if (this.a.isEmpty()) {
            throw new java.security.cert.CertificateException("checkClientTrusted CertificateException");
        }
        this.a.get(0).checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
        if (this.a.isEmpty()) {
            throw new java.security.cert.CertificateException("checkServerTrusted CertificateException");
        }
        this.a.get(0).checkServerTrusted(x509CertificateArr, str);
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
            java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("getAcceptedIssuers exception : ");
            sbA.append(e2.getMessage());
            com.huawei.hms.scankit.p.T.d("SecureX509TrustManager", sbA.toString());
            return new java.security.cert.X509Certificate[0];
        }
    }
}
