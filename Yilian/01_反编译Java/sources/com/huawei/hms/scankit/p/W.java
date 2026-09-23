package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public abstract class W {

    public static class a extends java.lang.Exception {
        public a(java.lang.String str) {
            super(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.Map, java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33, types: [java.io.Closeable, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v38 */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v40 */
    /* JADX WARN: Type inference failed for: r9v41, types: [java.io.BufferedOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.io.Closeable] */
    public static com.huawei.hms.scankit.p.X a(java.lang.String str, byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str2) throws java.lang.Throwable {
        java.lang.Throwable th;
        java.io.Closeable closeable;
        java.io.Closeable closeable2;
        java.io.Closeable closeable3;
        java.io.Closeable closeable4;
        java.io.Closeable closeable5;
        java.io.Closeable closeable6;
        java.io.Closeable closeable7;
        java.io.Closeable closeable8;
        java.io.Closeable closeable9;
        java.io.Closeable closeable10;
        java.io.Closeable closeable11;
        java.io.Closeable closeable12;
        java.io.Closeable closeable13;
        java.io.Closeable closeable14;
        if (android.text.TextUtils.isEmpty(str)) {
            return new com.huawei.hms.scankit.p.X(-100, "");
        }
        int responseCode = net.easyconn.ecsdk.ECTypes.ECAuthFailedCode.EC_CAR_AUTH_CHECK_NOT_ALLOW_REGISTER_BY_PHONE;
        java.net.HttpURLConnection httpURLConnection = null;
        try {
            try {
                java.net.HttpURLConnection httpURLConnectionA = a(str, bArr.length, (java.util.Map<java.lang.String, java.lang.String>) map, (java.lang.String) str2);
                try {
                    if (httpURLConnectionA == null) {
                        com.huawei.hms.scankit.p.X x = new com.huawei.hms.scankit.p.X(-101, "");
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) null);
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) null);
                        if (httpURLConnectionA != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnectionA);
                        }
                        return x;
                    }
                    map = httpURLConnectionA.getOutputStream();
                    try {
                        str2 = new java.io.BufferedOutputStream(map);
                    } catch (com.huawei.hms.scankit.p.W.a unused) {
                        str2 = 0;
                    } catch (java.io.IOException unused2) {
                        str2 = 0;
                    } catch (java.lang.SecurityException unused3) {
                        str2 = 0;
                    } catch (java.net.ConnectException unused4) {
                        str2 = 0;
                    } catch (java.net.UnknownHostException unused5) {
                        str2 = 0;
                    } catch (javax.net.ssl.SSLHandshakeException unused6) {
                        str2 = 0;
                    } catch (javax.net.ssl.SSLPeerUnverifiedException unused7) {
                        str2 = 0;
                    } catch (java.lang.Throwable th2) {
                        th = th2;
                        str2 = 0;
                    }
                    try {
                        str2.write(bArr);
                        str2.flush();
                        responseCode = httpURLConnectionA.getResponseCode();
                        com.huawei.hms.scankit.p.X x2 = new com.huawei.hms.scankit.p.X(responseCode, b(httpURLConnectionA));
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) str2);
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) map);
                        com.huawei.hms.scankit.p.C0175m.a(httpURLConnectionA);
                        return x2;
                    } catch (com.huawei.hms.scankit.p.W.a unused8) {
                        httpURLConnection = httpURLConnectionA;
                        closeable13 = map;
                        closeable14 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "PostRequest(byte[]): No ssl socket factory set!");
                        com.huawei.hms.scankit.p.X x3 = new com.huawei.hms.scankit.p.X(-101, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable14);
                        com.huawei.hms.scankit.p.C0175m.a(closeable13);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x3;
                    } catch (java.lang.SecurityException unused9) {
                        httpURLConnection = httpURLConnectionA;
                        closeable11 = map;
                        closeable12 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "SecurityException with HttpClient. Please check INTERNET permission.");
                        com.huawei.hms.scankit.p.X x4 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable12);
                        com.huawei.hms.scankit.p.C0175m.a(closeable11);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x4;
                    } catch (java.net.ConnectException unused10) {
                        httpURLConnection = httpURLConnectionA;
                        closeable9 = map;
                        closeable10 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "Network is unreachable or Connection refused");
                        com.huawei.hms.scankit.p.X x5 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable10);
                        com.huawei.hms.scankit.p.C0175m.a(closeable9);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x5;
                    } catch (java.net.UnknownHostException unused11) {
                        httpURLConnection = httpURLConnectionA;
                        closeable7 = map;
                        closeable8 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "No address associated with hostname or No network");
                        com.huawei.hms.scankit.p.X x6 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable8);
                        com.huawei.hms.scankit.p.C0175m.a(closeable7);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x6;
                    } catch (javax.net.ssl.SSLHandshakeException unused12) {
                        httpURLConnection = httpURLConnectionA;
                        closeable5 = map;
                        closeable6 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "Chain validation failed,Certificate expired");
                        com.huawei.hms.scankit.p.X x7 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable6);
                        com.huawei.hms.scankit.p.C0175m.a(closeable5);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x7;
                    } catch (javax.net.ssl.SSLPeerUnverifiedException unused13) {
                        httpURLConnection = httpURLConnectionA;
                        closeable3 = map;
                        closeable4 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "Certificate has not been verified,Request is restricted!");
                        com.huawei.hms.scankit.p.X x8 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable4);
                        com.huawei.hms.scankit.p.C0175m.a(closeable3);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x8;
                    } catch (java.io.IOException unused14) {
                        httpURLConnection = httpURLConnectionA;
                        closeable = map;
                        closeable2 = str2;
                        com.huawei.hms.scankit.p.T.c("HttpClient", "events PostRequest(byte[]): IOException occurred.");
                        com.huawei.hms.scankit.p.X x9 = new com.huawei.hms.scankit.p.X(responseCode, "");
                        com.huawei.hms.scankit.p.C0175m.a(closeable2);
                        com.huawei.hms.scankit.p.C0175m.a(closeable);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        return x9;
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        httpURLConnection = httpURLConnectionA;
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) str2);
                        com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) map);
                        if (httpURLConnection != null) {
                            com.huawei.hms.scankit.p.C0175m.a(httpURLConnection);
                        }
                        throw th;
                    }
                } catch (com.huawei.hms.scankit.p.W.a unused15) {
                    map = 0;
                    str2 = 0;
                } catch (java.lang.SecurityException unused16) {
                    map = 0;
                    str2 = 0;
                } catch (java.net.ConnectException unused17) {
                    map = 0;
                    str2 = 0;
                } catch (java.net.UnknownHostException unused18) {
                    map = 0;
                    str2 = 0;
                } catch (javax.net.ssl.SSLHandshakeException unused19) {
                    map = 0;
                    str2 = 0;
                } catch (javax.net.ssl.SSLPeerUnverifiedException unused20) {
                    map = 0;
                    str2 = 0;
                } catch (java.io.IOException unused21) {
                    map = 0;
                    str2 = 0;
                } catch (java.lang.Throwable th4) {
                    th = th4;
                    map = 0;
                    str2 = 0;
                }
            } catch (java.lang.Throwable th5) {
                th = th5;
            }
        } catch (com.huawei.hms.scankit.p.W.a unused22) {
            closeable13 = null;
            closeable14 = null;
        } catch (java.lang.SecurityException unused23) {
            closeable11 = null;
            closeable12 = null;
        } catch (java.net.ConnectException unused24) {
            closeable9 = null;
            closeable10 = null;
        } catch (java.net.UnknownHostException unused25) {
            closeable7 = null;
            closeable8 = null;
        } catch (javax.net.ssl.SSLHandshakeException unused26) {
            closeable5 = null;
            closeable6 = null;
        } catch (javax.net.ssl.SSLPeerUnverifiedException unused27) {
            closeable3 = null;
            closeable4 = null;
        } catch (java.io.IOException unused28) {
            closeable = null;
            closeable2 = null;
        } catch (java.lang.Throwable th6) {
            th = th6;
            map = 0;
            str2 = 0;
        }
    }

    public static java.net.HttpURLConnection a(java.lang.String str, int i, java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str2) throws java.net.ProtocolException, com.huawei.hms.scankit.p.W.a {
        if (android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.scankit.p.T.d("HttpClient", "CreateConnection: invalid urlPath.");
            return null;
        }
        java.net.HttpURLConnection httpURLConnection = (java.net.HttpURLConnection) new java.net.URL(str).openConnection();
        a(httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty(com.google.android.exoplayer2.util.FileTypes.HEADER_CONTENT_TYPE, "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Content-Length", java.lang.String.valueOf(i));
        httpURLConnection.setRequestProperty("Connection", "close");
        if (map != null && map.size() >= 1) {
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                java.lang.String key = entry.getKey();
                if (key != null && !android.text.TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        return httpURLConnection;
    }

    public static void a(java.net.HttpURLConnection httpURLConnection) throws com.huawei.hms.scankit.p.W.a {
        if (httpURLConnection instanceof javax.net.ssl.HttpsURLConnection) {
            javax.net.ssl.HttpsURLConnection httpsURLConnection = (javax.net.ssl.HttpsURLConnection) httpURLConnection;
            javax.net.SocketFactory socketFactoryA = com.huawei.hms.scankit.p.V.a(com.huawei.hms.scankit.p.AbstractC0120b.a());
            if (socketFactoryA == null || !(socketFactoryA instanceof javax.net.ssl.SSLSocketFactory)) {
                throw new com.huawei.hms.scankit.p.W.a("No ssl socket factory set");
            }
            httpsURLConnection.setSSLSocketFactory((javax.net.ssl.SSLSocketFactory) socketFactoryA);
            httpsURLConnection.setHostnameVerifier(new org.apache.http.conn.ssl.StrictHostnameVerifier());
        }
    }

    public static java.lang.String b(java.net.HttpURLConnection httpURLConnection) throws java.io.IOException {
        java.io.InputStream inputStream = null;
        try {
            try {
                inputStream = httpURLConnection.getInputStream();
                return com.huawei.hms.scankit.p.C0175m.a(inputStream);
            } catch (java.io.IOException unused) {
                int responseCode = httpURLConnection.getResponseCode();
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("When Response Content From Connection inputStream operation exception! ");
                sb.append(responseCode);
                com.huawei.hms.scankit.p.T.c("HttpClient", sb.toString());
                com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) inputStream);
                return "";
            }
        } finally {
            com.huawei.hms.scankit.p.C0175m.a((java.io.Closeable) inputStream);
        }
    }
}
