package com.huawei.hms.framework.network.grs.d.a;

/* loaded from: classes.dex */
public class a {
    public static javax.net.ssl.HttpsURLConnection a(java.lang.String str, android.content.Context context, java.lang.String str2) throws java.io.IOException {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        java.net.URLConnection uRLConnectionOpenConnection = new java.net.URL(str).openConnection();
        if (!(uRLConnectionOpenConnection instanceof javax.net.ssl.HttpsURLConnection)) {
            com.huawei.hms.framework.common.Logger.w("URLConnectionHelper", "urlConnection is not an instance of HttpsURLConnection");
            return null;
        }
        javax.net.ssl.HttpsURLConnection httpsURLConnection = (javax.net.ssl.HttpsURLConnection) uRLConnectionOpenConnection;
        try {
            httpsURLConnection.setSSLSocketFactory(com.huawei.hms.framework.network.grs.d.b.a.a(context));
            httpsURLConnection.setHostnameVerifier(com.huawei.hms.framework.network.grs.d.b.a.a());
        } catch (java.lang.IllegalArgumentException unused) {
            com.huawei.hms.framework.common.Logger.w("URLConnectionHelper", "init https ssl socket failed.");
        }
        httpsURLConnection.setConnectTimeout(10000);
        httpsURLConnection.setReadTimeout(10000);
        java.lang.String strB = com.huawei.hms.framework.network.grs.d.a.b(context, "NetworkKit-grs", str2);
        com.huawei.hms.framework.common.Logger.d("URLConnectionHelper", "request to grs server with a User-Agent header is:" + strB);
        httpsURLConnection.setRequestProperty("User-Agent", strB);
        return httpsURLConnection;
    }
}
