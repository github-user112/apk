package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class P {
    public static com.tencent.bugly.proguard.P a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f1087c = null;

    public static class a implements javax.net.ssl.X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) {
            com.tencent.bugly.proguard.aa.a("checkClientTrusted", new java.lang.Object[0]);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) {
            com.tencent.bugly.proguard.aa.a("checkServerTrusted", new java.lang.Object[0]);
        }

        @Override // javax.net.ssl.X509TrustManager
        public java.security.cert.X509Certificate[] getAcceptedIssuers() {
            return new java.security.cert.X509Certificate[0];
        }
    }

    public P(android.content.Context context) {
        this.b = context;
    }

    public static com.tencent.bugly.proguard.P a(android.content.Context context) {
        if (a == null) {
            a = new com.tencent.bugly.proguard.P(context);
        }
        return a;
    }

    public static void a() throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        javax.net.ssl.TrustManager[] trustManagerArr = {new com.tencent.bugly.proguard.P.a()};
        try {
            javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new java.security.SecureRandom());
            javax.net.ssl.HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    private java.util.Map<java.lang.String, java.lang.String> b(java.net.HttpURLConnection httpURLConnection) {
        java.util.HashMap map = new java.util.HashMap();
        java.util.Map<java.lang.String, java.util.List<java.lang.String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (java.lang.String str : headerFields.keySet()) {
            java.util.List<java.lang.String> list = headerFields.get(str);
            if (list.size() >= 1) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    public java.net.HttpURLConnection a(java.lang.String str, java.lang.String str2) {
        java.net.URLConnection uRLConnectionOpenConnection;
        try {
            java.net.URL url = new java.net.URL(str2);
            if (com.tencent.bugly.proguard.da.a() != null) {
                uRLConnectionOpenConnection = url.openConnection(com.tencent.bugly.proguard.da.a());
            } else if (str == null || !str.toLowerCase(java.util.Locale.US).contains("wap")) {
                uRLConnectionOpenConnection = url.openConnection();
            } else {
                uRLConnectionOpenConnection = url.openConnection(new java.net.Proxy(java.net.Proxy.Type.HTTP, new java.net.InetSocketAddress(java.lang.System.getProperty("http.proxyHost"), java.lang.Integer.parseInt(java.lang.System.getProperty("http.proxyPort")))));
            }
            java.net.HttpURLConnection httpURLConnection = (java.net.HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public java.net.HttpURLConnection a(java.lang.String str, byte[] bArr, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        if (str == null) {
            com.tencent.bugly.proguard.aa.b("destUrl is null.", new java.lang.Object[0]);
            return null;
        }
        a();
        java.net.HttpURLConnection httpURLConnectionA = a(str2, str);
        if (httpURLConnectionA == null) {
            com.tencent.bugly.proguard.aa.b("Failed to get HttpURLConnection object.", new java.lang.Object[0]);
            return null;
        }
        try {
            httpURLConnectionA.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                    httpURLConnectionA.setRequestProperty(entry.getKey(), java.net.URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            httpURLConnectionA.setRequestProperty("A37", java.net.URLEncoder.encode(str2, "utf-8"));
            httpURLConnectionA.setRequestProperty("A38", java.net.URLEncoder.encode(str2, "utf-8"));
            java.io.OutputStream outputStream = httpURLConnectionA.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return httpURLConnectionA;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            com.tencent.bugly.proguard.aa.b("Failed to upload, please check your network.", new java.lang.Object[0]);
            return null;
        }
    }

    public boolean a(int i) {
        return i == 301 || i == 302 || i == 303 || i == 307;
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0157 A[Catch: all -> 0x014c, TRY_LEAVE, TryCatch #7 {all -> 0x014c, blocks: (B:22:0x0095, B:24:0x00a0, B:26:0x00b3, B:30:0x00c4, B:29:0x00c2, B:38:0x00d7, B:41:0x00df, B:43:0x00e5, B:45:0x00ec, B:57:0x0115, B:77:0x0151, B:79:0x0157, B:63:0x012f, B:66:0x013c), top: B:107:0x0095 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] a(java.lang.String r18, byte[] r19, com.tencent.bugly.proguard.X r20, java.util.Map<java.lang.String, java.lang.String> r21) throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.P.a(java.lang.String, byte[], com.tencent.bugly.proguard.X, java.util.Map):byte[]");
    }

    public byte[] a(java.net.HttpURLConnection httpURLConnection) {
        java.io.BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new java.io.BufferedInputStream(httpURLConnection.getInputStream());
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (java.lang.Throwable th) {
                    th.printStackTrace();
                }
                return byteArray;
            } catch (java.lang.Throwable th2) {
                th = th2;
                try {
                    if (!com.tencent.bugly.proguard.aa.b(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (java.lang.Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }
}
