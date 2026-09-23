package com.umeng.commonsdk.statistics.internal;

/* loaded from: classes.dex */
public class c {

    /* renamed from: e, reason: collision with root package name */
    public static boolean f1543e = false;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f1544f = false;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f1545g = false;
    public java.lang.String a = "10.0.0.172";
    public int b = 80;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1546c;

    /* renamed from: d, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.b f1547d;

    public c(android.content.Context context) {
        this.f1546c = context;
    }

    private void a() {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "domain_p", "");
        java.lang.String strImprintProperty2 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "domain_s", "");
        if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
            com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty);
        }
        if (!android.text.TextUtils.isEmpty(strImprintProperty2)) {
            com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty2);
        }
        com.umeng.commonsdk.statistics.AnalyticsConstants.APPLOG_URL_LIST = new java.lang.String[]{com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL, com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL};
    }

    private void b() {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "domain_p", "");
        java.lang.String strImprintProperty2 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "domain_s", "");
        if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
            com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty);
        }
        if (!android.text.TextUtils.isEmpty(strImprintProperty2)) {
            com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty2);
        }
        java.lang.String strImprintProperty3 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "oversea_domain_p", "");
        java.lang.String strImprintProperty4 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1546c, "oversea_domain_s", "");
        if (!android.text.TextUtils.isEmpty(strImprintProperty3)) {
            com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_DEFAULT_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty3);
        }
        if (!android.text.TextUtils.isEmpty(strImprintProperty4)) {
            com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_SECONDARY_URL = com.umeng.commonsdk.statistics.common.DataHelper.assembleURL(strImprintProperty4);
        }
        com.umeng.commonsdk.statistics.AnalyticsConstants.APPLOG_URL_LIST = new java.lang.String[]{com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_DEFAULT_URL, com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_SECONDARY_URL};
        if (android.text.TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.b.startsWith("460") || com.umeng.commonsdk.statistics.b.b.startsWith("461")) {
            com.umeng.commonsdk.statistics.AnalyticsConstants.APPLOG_URL_LIST = new java.lang.String[]{com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL, com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL};
        }
    }

    private void c() {
        if (f1545g) {
            return;
        }
        com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(this.f1546c).registImprintCallback("cfgfd", new com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(java.lang.String str, java.lang.String str2) {
                if (com.umeng.commonsdk.config.FieldManager.b()) {
                    com.umeng.commonsdk.config.FieldManager.a().a(com.umeng.commonsdk.statistics.internal.c.this.f1546c, str2);
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> apply imprint change and exit: key=" + str + "; value= " + str2);
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.commonsdk.statistics.internal.c.this.f1546c, com.umeng.commonsdk.internal.a.w, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.statistics.internal.c.this.f1546c).a(), null);
                }
            }
        });
        f1545g = true;
    }

    private void d() {
        if (f1544f) {
            return;
        }
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 注册零号报文 imprint 应答处理回调。");
        com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(this.f1546c).registPreProcessCallback(com.umeng.commonsdk.statistics.AnalyticsConstants.ZERO_RESPONSE_FLAG, new com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.2
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback
            public boolean onPreProcessImprintKey(java.lang.String str, java.lang.String str2) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onImprintValueChanged: key=" + str + "; value= " + str2);
                com.umeng.commonsdk.config.FieldManager.a().a(com.umeng.commonsdk.statistics.internal.c.this.f1546c);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.commonsdk.statistics.internal.c.this.f1546c, com.umeng.commonsdk.internal.a.s, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.statistics.internal.c.this.f1546c).a(), null);
                com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(com.umeng.commonsdk.statistics.internal.c.this.f1546c).a(com.umeng.commonsdk.statistics.AnalyticsConstants.ZERO_RESPONSE_FLAG);
                return true;
            }
        });
        com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(this.f1546c).registImprintCallback("cfgfd", new com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.3
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(java.lang.String str, java.lang.String str2) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> first onImprintValueChanged: key=" + str + "; value= " + str2);
                com.umeng.commonsdk.config.FieldManager.a().a(com.umeng.commonsdk.statistics.internal.c.this.f1546c, str2);
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.commonsdk.statistics.internal.c.this.f1546c, com.umeng.commonsdk.internal.a.s, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.statistics.internal.c.this.f1546c).a(), null);
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: foregound count timer enabled.");
                    if (!com.umeng.commonsdk.framework.UMWorkDispatch.eventHasExist()) {
                        com.umeng.commonsdk.framework.UMWorkDispatch.sendEventEx(com.umeng.commonsdk.statistics.internal.c.this.f1546c, com.umeng.analytics.pro.n.a.C, com.umeng.analytics.CoreProtocol.getInstance(com.umeng.commonsdk.statistics.internal.c.this.f1546c), null, 0L);
                    }
                }
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: FirstResumeTrigger enabled.");
                    com.umeng.analytics.pro.k.a(com.umeng.commonsdk.statistics.internal.c.this.f1546c).b(com.umeng.commonsdk.statistics.internal.c.this.f1546c);
                }
                com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(com.umeng.commonsdk.statistics.internal.c.this.f1546c).unregistImprintCallback("cfgfd", this);
            }
        });
        f1544f = true;
    }

    private boolean e() {
        android.net.NetworkInfo activeNetworkInfo;
        java.lang.String extraInfo;
        if (this.f1546c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f1546c.getPackageName()) != 0) {
            return false;
        }
        try {
            android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) this.f1546c.getSystemService("connectivity");
            if (com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(this.f1546c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, th);
        }
        return false;
    }

    public void a(com.umeng.commonsdk.statistics.internal.b bVar) {
        this.f1547d = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x017e: IF  (r6 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:90:0x018a, block:B:85:0x017e */
    public byte[] a(byte[] bArr, java.lang.String str) throws java.io.IOException {
        javax.net.ssl.HttpsURLConnection httpsURLConnection;
        java.io.OutputStream outputStream;
        java.io.OutputStream outputStream2;
        java.net.URLConnection uRLConnectionOpenConnection;
        try {
            try {
                if (this.f1547d != null) {
                    this.f1547d.onRequestStart();
                }
                if (e()) {
                    uRLConnectionOpenConnection = new java.net.URL(str).openConnection(new java.net.Proxy(java.net.Proxy.Type.HTTP, new java.net.InetSocketAddress(this.a, this.b)));
                } else {
                    uRLConnectionOpenConnection = new java.net.URL(str).openConnection();
                }
                httpsURLConnection = (javax.net.ssl.HttpsURLConnection) uRLConnectionOpenConnection;
                try {
                    boolean z = true;
                    if (!f1543e) {
                        httpsURLConnection.setHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new java.security.SecureRandom());
                        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                        f1543e = true;
                    }
                    httpsURLConnection.setRequestProperty("X-Umeng-UTC", java.lang.String.valueOf(java.lang.System.currentTimeMillis()));
                    httpsURLConnection.setRequestProperty("X-Umeng-Sdk", com.umeng.commonsdk.statistics.internal.a.a(this.f1546c).b());
                    httpsURLConnection.setRequestProperty(com.google.android.exoplayer2.util.FileTypes.HEADER_CONTENT_TYPE, com.umeng.commonsdk.statistics.internal.a.a(this.f1546c).a());
                    httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                    httpsURLConnection.setRequestProperty("X-Umeng-Pro-Ver", "1.0.0");
                    httpsURLConnection.setConnectTimeout(30000);
                    httpsURLConnection.setReadTimeout(30000);
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setUseCaches(false);
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.flush();
                        httpsURLConnection.connect();
                        if (this.f1547d != null) {
                            this.f1547d.onRequestEnd();
                        }
                        int responseCode = httpsURLConnection.getResponseCode();
                        java.lang.String headerField = httpsURLConnection.getHeaderField(com.google.android.exoplayer2.util.FileTypes.HEADER_CONTENT_TYPE);
                        if (android.text.TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase("application/thrift")) {
                            z = false;
                        }
                        boolean z2 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG;
                        if (responseCode != 200 || !z) {
                            try {
                                outputStream.close();
                            } catch (java.lang.Exception e2) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e2);
                            }
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (java.io.IOException unused) {
                            }
                            httpsURLConnection.disconnect();
                            return null;
                        }
                        java.io.InputStream inputStream = httpsURLConnection.getInputStream();
                        try {
                            byte[] streamToByteArray = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(inputStream);
                            try {
                                outputStream.close();
                            } catch (java.lang.Exception e3) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e3);
                            }
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (java.io.IOException unused2) {
                            }
                            httpsURLConnection.disconnect();
                            return streamToByteArray;
                        } finally {
                            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(inputStream);
                        }
                    } catch (java.net.UnknownHostException unused3) {
                        com.umeng.commonsdk.debug.UMLog.aq("A_10200", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (java.lang.Exception e4) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e4);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (java.io.IOException unused4) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (javax.net.ssl.SSLHandshakeException unused5) {
                        com.umeng.commonsdk.debug.UMLog.aq("A_10201", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (java.lang.Exception e5) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e5);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (java.io.IOException unused6) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (java.lang.Throwable unused7) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (java.lang.Exception e6) {
                                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e6);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (java.io.IOException unused8) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    }
                } catch (java.net.UnknownHostException unused9) {
                    outputStream = null;
                } catch (javax.net.ssl.SSLHandshakeException unused10) {
                    outputStream = null;
                } catch (java.lang.Throwable unused11) {
                    outputStream = null;
                }
            } catch (java.lang.Throwable th) {
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (java.lang.Exception e7) {
                        com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1546c, e7);
                    }
                }
                if (str == 0) {
                    throw th;
                }
                try {
                    str.getInputStream().close();
                } catch (java.io.IOException unused12) {
                }
                str.disconnect();
                throw th;
            }
        } catch (java.net.UnknownHostException unused13) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (javax.net.ssl.SSLHandshakeException unused14) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (java.lang.Throwable unused15) {
            httpsURLConnection = null;
            outputStream = null;
        }
    }

    public byte[] a(byte[] bArr, boolean z, boolean z2, java.lang.String str) throws java.io.IOException {
        if (com.umeng.commonsdk.statistics.SdkVersion.SDK_TYPE == 0) {
            a();
        } else {
            com.umeng.commonsdk.statistics.UMServerURL.DEFAULT_URL = com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_DEFAULT_URL;
            com.umeng.commonsdk.statistics.UMServerURL.SECONDARY_URL = com.umeng.commonsdk.statistics.UMServerURL.OVERSEA_SECONDARY_URL;
            b();
        }
        int i = 0;
        byte[] bArrA = null;
        while (true) {
            java.lang.String[] strArr = com.umeng.commonsdk.statistics.AnalyticsConstants.APPLOG_URL_LIST;
            if (i >= strArr.length) {
                break;
            }
            java.lang.String str2 = strArr[i];
            if (z2) {
                d();
            } else {
                c();
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o(str2);
            sbO.append(java.io.File.separator);
            sbO.append(str);
            bArrA = a(bArr, sbO.toString());
            if (bArrA != null) {
                com.umeng.commonsdk.statistics.internal.b bVar = this.f1547d;
                if (bVar != null) {
                    bVar.onRequestSucceed(z);
                }
            } else {
                com.umeng.commonsdk.statistics.internal.b bVar2 = this.f1547d;
                if (bVar2 != null) {
                    bVar2.onRequestFailed();
                }
                i++;
            }
        }
        return bArrA;
    }
}
