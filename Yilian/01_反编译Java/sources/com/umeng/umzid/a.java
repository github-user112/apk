package com.umeng.umzid;

/* loaded from: classes.dex */
public class a {

    /* renamed from: com.umeng.umzid.a$a, reason: collision with other inner class name */
    public static class C0028a implements javax.net.ssl.HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(java.lang.String str, javax.net.ssl.SSLSession sSLSession) {
            if (android.text.TextUtils.isEmpty(str)) {
                return false;
            }
            return "aaid.umeng.com".equalsIgnoreCase(str) || "pre-aaid.umeng.com".equalsIgnoreCase(str);
        }
    }

    public static android.content.SharedPreferences a(android.content.Context context) {
        if (context != null) {
            return context.getSharedPreferences("umzid_general_config", 0);
        }
        return null;
    }

    public static synchronized java.lang.String a(java.lang.String str, java.lang.String str2) {
        try {
            javax.net.ssl.HttpsURLConnection httpsURLConnection = (javax.net.ssl.HttpsURLConnection) new java.net.URL(str).openConnection();
            httpsURLConnection.setHostnameVerifier(new com.umeng.umzid.a.C0028a());
            javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance("TLS");
            sSLContext.init(null, null, new java.security.SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setRequestProperty(com.google.android.exoplayer2.util.FileTypes.HEADER_CONTENT_TYPE, "application/json");
            httpsURLConnection.setConnectTimeout(30000);
            httpsURLConnection.setReadTimeout(30000);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);
            java.io.OutputStream outputStream = httpsURLConnection.getOutputStream();
            outputStream.write(str2.getBytes());
            outputStream.flush();
            outputStream.close();
            if (httpsURLConnection.getResponseCode() == 200) {
                java.io.InputStreamReader inputStreamReader = new java.io.InputStreamReader(httpsURLConnection.getInputStream());
                java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
                while (true) {
                    int i = inputStreamReader.read();
                    if (i == -1) {
                        return stringBuffer.toString();
                    }
                    stringBuffer.append((char) i);
                }
            }
        } catch (java.lang.Exception unused) {
        }
        return null;
    }
}
