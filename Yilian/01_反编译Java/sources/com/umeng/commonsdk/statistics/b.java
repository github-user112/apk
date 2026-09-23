package com.umeng.commonsdk.statistics;

/* loaded from: classes.dex */
public class b {
    public static java.lang.String a = null;
    public static java.lang.String b = "";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1508c = "EnvelopeManager";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1509d = "debug.umeng.umTaskId";

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1510e = "debug.umeng.umCaseId";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1511f = "empty";

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.String f1512g = "";
    public static java.lang.String h = "";
    public static java.lang.String i;
    public static boolean k;
    public int j = 0;

    private int a(android.content.Context context, com.umeng.commonsdk.statistics.idtracking.Envelope envelope, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (context == null || envelope == null || android.text.TextUtils.isEmpty(str)) {
            return 101;
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            str2 = com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionName(context);
        }
        java.lang.String strB = com.umeng.commonsdk.stateless.d.b(str3);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        sb.append("&&");
        sb.append(str2);
        sb.append("_");
        sb.append(java.lang.System.currentTimeMillis());
        sb.append("_");
        sb.append(strB);
        sb.append(".log");
        byte[] binary = envelope.toBinary();
        return (str.startsWith(com.umeng.analytics.pro.ai.aB) || str.startsWith("i") || str.startsWith(com.umeng.analytics.pro.ai.at) || str.startsWith("t")) ? com.umeng.commonsdk.framework.UMFrUtils.saveEnvelopeFile(context, sb.toString(), binary) : com.umeng.commonsdk.stateless.d.a(context, com.umeng.commonsdk.stateless.a.f1498f, sb.toString(), binary);
    }

    public static long a(android.content.Context context) {
        long j = com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_EXTRA_LENGTH;
        if (com.umeng.commonsdk.statistics.common.ULog.DEBUG) {
            android.util.Log.i(f1508c, "free size is " + j);
        }
        return j;
    }

    private com.umeng.commonsdk.statistics.idtracking.Envelope a(android.content.Context context, byte[] bArr) {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, "codex", null);
        int iIntValue = -1;
        try {
            if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
                iIntValue = java.lang.Integer.valueOf(strImprintProperty).intValue();
            }
        } catch (java.lang.NumberFormatException e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
        }
        return (iIntValue != 0 && (iIntValue == 1 || k)) ? com.umeng.commonsdk.statistics.idtracking.Envelope.genEncryptEnvelope(context, com.umeng.commonsdk.utils.UMUtils.getAppkey(context), bArr) : com.umeng.commonsdk.statistics.idtracking.Envelope.genEnvelope(context, com.umeng.commonsdk.utils.UMUtils.getAppkey(context), bArr);
    }

    private org.json.JSONObject a(int i2, org.json.JSONObject jSONObject) throws org.json.JSONException {
        if (jSONObject != null) {
            try {
                jSONObject.put("exception", i2);
            } catch (java.lang.Exception unused) {
            }
            return jSONObject;
        }
        org.json.JSONObject jSONObject2 = new org.json.JSONObject();
        try {
            jSONObject2.put("exception", i2);
        } catch (java.lang.Exception unused2) {
        }
        return jSONObject2;
    }

    private org.json.JSONObject a(org.json.JSONObject jSONObject, org.json.JSONObject jSONObject2) throws org.json.JSONException {
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof org.json.JSONObject)) {
            org.json.JSONObject jSONObject3 = (org.json.JSONObject) jSONObject.opt("header");
            java.util.Iterator<java.lang.String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                java.lang.String next = itKeys.next();
                if (next != null && (next instanceof java.lang.String)) {
                    java.lang.String str = next;
                    if (jSONObject2.opt(str) != null) {
                        try {
                            jSONObject3.put(str, jSONObject2.opt(str));
                            if (str.equals(com.umeng.analytics.pro.c.i) && (jSONObject2.opt(str) instanceof java.lang.Integer)) {
                                this.j = ((java.lang.Integer) jSONObject2.opt(str)).intValue();
                            }
                        } catch (java.lang.Exception unused) {
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void a() {
        if (i != null) {
            i = null;
            com.umeng.commonsdk.statistics.idtracking.e.a();
        }
    }

    public static void a(boolean z) {
        k = z;
    }

    public static org.json.JSONObject b(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences;
        org.json.JSONObject jSONObject;
        java.lang.String str = "2G/3G";
        try {
            sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
            if (android.text.TextUtils.isEmpty(i)) {
                com.umeng.commonsdk.utils.UMUtils.saveSDKComponent();
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put(com.umeng.analytics.pro.ai.p, com.umeng.commonsdk.statistics.common.DeviceConfig.getAppMD5Signature(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.q, com.umeng.commonsdk.statistics.common.DeviceConfig.getAppSHA1Key(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.r, com.umeng.commonsdk.statistics.common.DeviceConfig.getAppHashKey(context));
                jSONObject2.put("app_version", com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionName(context));
                jSONObject2.put("version_code", java.lang.Integer.parseInt(com.umeng.commonsdk.statistics.common.DeviceConfig.getAppVersionCode(context)));
                jSONObject2.put("idmd5", com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.w, com.umeng.commonsdk.statistics.common.DeviceConfig.getCPU());
                java.lang.String mccmnc = com.umeng.commonsdk.statistics.common.DeviceConfig.getMCCMNC(context);
                if (android.text.TextUtils.isEmpty(mccmnc)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.B, "");
                } else {
                    jSONObject2.put(com.umeng.analytics.pro.ai.B, mccmnc);
                    b = mccmnc;
                }
                java.lang.String subOSName = com.umeng.commonsdk.statistics.common.DeviceConfig.getSubOSName(context);
                if (!android.text.TextUtils.isEmpty(subOSName)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.K, subOSName);
                }
                java.lang.String subOSVersion = com.umeng.commonsdk.statistics.common.DeviceConfig.getSubOSVersion(context);
                if (!android.text.TextUtils.isEmpty(subOSVersion)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.L, subOSVersion);
                }
                java.lang.String deviceType = com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceType(context);
                if (!android.text.TextUtils.isEmpty(deviceType)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.ai, deviceType);
                }
                jSONObject2.put(com.umeng.analytics.pro.ai.o, com.umeng.commonsdk.statistics.common.DeviceConfig.getPackageName(context));
                jSONObject2.put("sdk_type", "Android");
                jSONObject2.put("device_id", com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceId(context));
                jSONObject2.put("device_model", android.os.Build.MODEL);
                jSONObject2.put(com.umeng.analytics.pro.ai.E, android.os.Build.BOARD);
                jSONObject2.put(com.umeng.analytics.pro.ai.F, android.os.Build.BRAND);
                jSONObject2.put(com.umeng.analytics.pro.ai.G, android.os.Build.TIME);
                jSONObject2.put(com.umeng.analytics.pro.ai.H, android.os.Build.MANUFACTURER);
                jSONObject2.put(com.umeng.analytics.pro.ai.I, android.os.Build.ID);
                jSONObject2.put(com.umeng.analytics.pro.ai.J, android.os.Build.DEVICE);
                jSONObject2.put(com.umeng.analytics.pro.ai.y, android.os.Build.VERSION.RELEASE);
                jSONObject2.put(com.umeng.analytics.pro.ai.x, "Android");
                int[] resolutionArray = com.umeng.commonsdk.statistics.common.DeviceConfig.getResolutionArray(context);
                if (resolutionArray != null) {
                    jSONObject2.put("resolution", resolutionArray[1] + "*" + resolutionArray[0]);
                }
                jSONObject2.put(com.umeng.analytics.pro.ai.A, com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.M, com.umeng.commonsdk.statistics.common.DeviceConfig.getTimeZone(context));
                java.lang.String[] localeInfo = com.umeng.commonsdk.statistics.common.DeviceConfig.getLocaleInfo(context);
                jSONObject2.put(com.umeng.analytics.pro.ai.O, localeInfo[0]);
                jSONObject2.put(com.umeng.analytics.pro.ai.N, localeInfo[1]);
                jSONObject2.put(com.umeng.analytics.pro.ai.P, com.umeng.commonsdk.statistics.common.DeviceConfig.getNetworkOperatorName(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.s, com.umeng.commonsdk.statistics.common.DeviceConfig.getAppName(context));
                java.lang.String[] networkAccessMode = com.umeng.commonsdk.statistics.common.DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    str = "wifi";
                } else if (!"2G/3G".equals(networkAccessMode[0])) {
                    str = "unknow";
                }
                jSONObject2.put(com.umeng.analytics.pro.ai.Q, str);
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.R, networkAccessMode[1]);
                }
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.H)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.S, com.umeng.commonsdk.statistics.common.DeviceConfig.getIPAddress(context));
                }
                jSONObject2.put(com.umeng.analytics.pro.ai.T, com.umeng.commonsdk.statistics.common.DeviceConfig.getNetworkType(context));
                jSONObject2.put(com.umeng.analytics.pro.ai.b, "9.3.8");
                jSONObject2.put(com.umeng.analytics.pro.ai.f1216c, com.umeng.commonsdk.statistics.SdkVersion.SDK_TYPE);
                jSONObject2.put(com.umeng.analytics.pro.ai.f1217d, "1");
                if (!android.text.TextUtils.isEmpty(a)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.f1218e, a);
                }
                jSONObject2.put(com.umeng.analytics.pro.ai.aj, android.os.Build.VERSION.SDK_INT);
                if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_REC_VERSION_NAME)) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.af, com.umeng.commonsdk.utils.UMUtils.VALUE_REC_VERSION_NAME);
                }
                try {
                    java.lang.String uUIDForZid = com.umeng.commonsdk.utils.UMUtils.getUUIDForZid(context);
                    if (android.text.TextUtils.isEmpty(uUIDForZid)) {
                        com.umeng.commonsdk.utils.UMUtils.setUUIDForZid(context);
                        uUIDForZid = com.umeng.commonsdk.utils.UMUtils.getUUIDForZid(context);
                    }
                    jSONObject2.put("session_id", uUIDForZid);
                } catch (java.lang.Throwable unused) {
                }
                i = jSONObject2.toString();
                jSONObject = jSONObject2;
            } else {
                try {
                    jSONObject = new org.json.JSONObject(i);
                } catch (java.lang.Exception unused2) {
                    jSONObject = null;
                }
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
        if (jSONObject == null) {
            return null;
        }
        try {
            jSONObject.put(com.umeng.analytics.pro.ai.ak, com.umeng.commonsdk.utils.UMUtils.getOaidRequiredTime(context));
        } catch (java.lang.Exception unused3) {
        }
        try {
            jSONObject.put(com.umeng.analytics.pro.ai.U, sharedPreferences.getInt(com.umeng.commonsdk.statistics.internal.StatTracer.KEY_CLIENT_REQUEST_SUCCESS, 0));
            jSONObject.put(com.umeng.analytics.pro.ai.V, sharedPreferences.getInt(com.umeng.analytics.pro.ai.V, 0));
            jSONObject.put(com.umeng.analytics.pro.ai.W, sharedPreferences.getInt(com.umeng.commonsdk.statistics.internal.StatTracer.KEY_CLIENT_REQUEST_LATENCY, 0));
            java.lang.String zid = com.umeng.commonsdk.utils.UMUtils.getZid(context);
            if (!android.text.TextUtils.isEmpty(zid)) {
                jSONObject.put(com.umeng.analytics.pro.ai.al, zid);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_ASMS_VERSION)) {
                jSONObject.put(com.umeng.analytics.pro.ai.am, com.umeng.commonsdk.utils.UMUtils.VALUE_ASMS_VERSION);
            }
        } catch (java.lang.Exception unused4) {
        }
        jSONObject.put("channel", com.umeng.commonsdk.utils.UMUtils.getChannel(context));
        jSONObject.put("appkey", com.umeng.commonsdk.utils.UMUtils.getAppkey(context));
        try {
            java.lang.String deviceToken = com.umeng.commonsdk.utils.UMUtils.getDeviceToken(context);
            if (!android.text.TextUtils.isEmpty(deviceToken)) {
                jSONObject.put(com.umeng.analytics.pro.ai.a, deviceToken);
            }
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
        }
        try {
            java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, com.umeng.analytics.pro.ai.f1220g, null);
            if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
                jSONObject.put(com.umeng.analytics.pro.ai.f1220g, strImprintProperty);
            }
        } catch (java.lang.Exception e3) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e3);
        }
        try {
            jSONObject.put("wrapper_type", com.umeng.commonsdk.statistics.a.a);
            jSONObject.put("wrapper_version", com.umeng.commonsdk.statistics.a.b);
        } catch (java.lang.Exception unused5) {
        }
        try {
            int targetSdkVersion = com.umeng.commonsdk.utils.UMUtils.getTargetSdkVersion(context);
            boolean zCheckPermission = com.umeng.commonsdk.utils.UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE");
            jSONObject.put(com.umeng.analytics.pro.ai.aS, targetSdkVersion);
            jSONObject.put(com.umeng.analytics.pro.ai.aT, zCheckPermission ? "yes" : "no");
        } catch (java.lang.Throwable unused6) {
        }
        try {
            if (b()) {
                jSONObject.put("umTaskId", f1512g);
                jSONObject.put("umCaseId", h);
            }
        } catch (java.lang.Throwable unused7) {
        }
        try {
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put(com.umeng.analytics.pro.ai.aX, com.umeng.commonsdk.internal.a.f1460e);
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_ANALYTICS_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.aY, com.umeng.commonsdk.utils.UMUtils.VALUE_ANALYTICS_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_GAME_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.aZ, com.umeng.commonsdk.utils.UMUtils.VALUE_GAME_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_PUSH_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.ba, com.umeng.commonsdk.utils.UMUtils.VALUE_PUSH_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_SHARE_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bb, com.umeng.commonsdk.utils.UMUtils.VALUE_SHARE_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_APM_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bc, com.umeng.commonsdk.utils.UMUtils.VALUE_APM_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_VERIFY_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bd, com.umeng.commonsdk.utils.UMUtils.VALUE_VERIFY_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_SMS_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.be, com.umeng.commonsdk.utils.UMUtils.VALUE_SMS_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_REC_VERSION_NAME)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bf, com.umeng.commonsdk.utils.UMUtils.VALUE_REC_VERSION_NAME);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_VISUAL_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bg, com.umeng.commonsdk.utils.UMUtils.VALUE_VISUAL_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_ASMS_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bh, com.umeng.commonsdk.utils.UMUtils.VALUE_ASMS_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_LINK_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bi, com.umeng.commonsdk.utils.UMUtils.VALUE_LINK_VERSION);
            }
            if (!android.text.TextUtils.isEmpty(com.umeng.commonsdk.utils.UMUtils.VALUE_ABTEST_VERSION)) {
                jSONObject3.put(com.umeng.analytics.pro.ai.bj, com.umeng.commonsdk.utils.UMUtils.VALUE_ABTEST_VERSION);
            }
            jSONObject.put(com.umeng.analytics.pro.ai.aW, jSONObject3);
        } catch (java.lang.Throwable unused8) {
        }
        try {
            java.lang.String apmFlag = com.umeng.commonsdk.utils.UMUtils.getApmFlag();
            if (!android.text.TextUtils.isEmpty(apmFlag)) {
                jSONObject.put(com.umeng.analytics.pro.ai.bk, apmFlag);
            }
        } catch (java.lang.Throwable unused9) {
        }
        byte[] bArrA = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).a();
        if (bArrA != null && bArrA.length > 0) {
            try {
                jSONObject.put(com.umeng.analytics.pro.ai.X, android.util.Base64.encodeToString(bArrA, 0));
            } catch (org.json.JSONException e4) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e4);
            }
        }
        if (jSONObject.length() > 0) {
            return new org.json.JSONObject().put("header", jSONObject);
        }
        return null;
    }

    public static boolean b() {
        f1512g = com.umeng.commonsdk.utils.UMUtils.getSystemProperty(f1509d, "");
        h = com.umeng.commonsdk.utils.UMUtils.getSystemProperty(f1510e, "");
        return (!android.text.TextUtils.isEmpty(f1512g) && !f1511f.equals(f1512g)) && (!android.text.TextUtils.isEmpty(h) && !f1511f.equals(h));
    }

    public org.json.JSONObject a(android.content.Context context, org.json.JSONObject jSONObject, org.json.JSONObject jSONObject2, java.lang.String str) {
        com.umeng.commonsdk.statistics.idtracking.Envelope envelope;
        try {
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put("header", new org.json.JSONObject());
            try {
                if (b()) {
                    jSONObject.put("umTaskId", f1512g);
                    jSONObject.put("umCaseId", h);
                }
            } catch (java.lang.Throwable unused) {
            }
            if (jSONObject != null) {
                jSONObject3 = a(jSONObject3, jSONObject);
            }
            if (jSONObject3 != null && jSONObject2 != null) {
                java.util.Iterator<java.lang.String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    java.lang.String next = itKeys.next();
                    if (next != null && (next instanceof java.lang.String)) {
                        java.lang.String str2 = next;
                        if (jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (java.lang.Exception unused2) {
                            }
                        }
                    }
                }
            }
            if (jSONObject3 != null && com.umeng.commonsdk.statistics.common.DataHelper.largeThanMaxSize(jSONObject3.toString().getBytes().length, com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt(com.umeng.commonsdk.statistics.idtracking.k.a, sharedPreferences.getInt(com.umeng.commonsdk.statistics.idtracking.k.a, 1) + 1).commit();
                }
                return a(113, jSONObject3);
            }
            if (jSONObject3 != null) {
                com.umeng.commonsdk.statistics.idtracking.Envelope envelopeA = a(context, jSONObject3.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject3);
                }
                envelope = envelopeA;
            } else {
                envelope = null;
            }
            if (envelope != null && com.umeng.commonsdk.statistics.common.DataHelper.largeThanMaxSize(envelope.toBinary().length, com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject3);
            }
            int iA = a(context, envelope, "z==1.2.0", jSONObject3 != null ? jSONObject3.optJSONObject("header").optString("app_version") : null, str);
            if (iA != 0) {
                return a(iA, jSONObject3);
            }
            if (com.umeng.commonsdk.statistics.common.ULog.DEBUG) {
                android.util.Log.i(f1508c, "constructHeader size is " + jSONObject3.toString().getBytes().length);
            }
            return jSONObject3;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return a(110, new org.json.JSONObject());
        }
    }

    public org.json.JSONObject a(android.content.Context context, org.json.JSONObject jSONObject, org.json.JSONObject jSONObject2, java.lang.String str, java.lang.String str2, java.lang.String str3) throws org.json.JSONException {
        org.json.JSONObject jSONObject3;
        java.lang.String str4;
        com.umeng.commonsdk.statistics.idtracking.Envelope envelope;
        if (com.umeng.commonsdk.statistics.common.ULog.DEBUG && jSONObject != null && jSONObject2 != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("headerJSONObject size is ");
            sbO.append(jSONObject.toString().getBytes().length);
            android.util.Log.i(f1508c, sbO.toString());
            android.util.Log.i(f1508c, "bodyJSONObject size is " + jSONObject2.toString().getBytes().length);
        }
        org.json.JSONObject jSONObject4 = null;
        if (context == null || jSONObject2 == null) {
            return a(110, (org.json.JSONObject) null);
        }
        try {
            org.json.JSONObject jSONObjectB = b(context);
            if (jSONObjectB != null && jSONObject != null) {
                jSONObjectB = a(jSONObjectB, jSONObject);
            }
            org.json.JSONObject jSONObject5 = jSONObjectB;
            if (jSONObject5 != null) {
                java.util.Iterator<java.lang.String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    java.lang.String next = itKeys.next();
                    if (next != null && (next instanceof java.lang.String)) {
                        java.lang.String str5 = next;
                        if (jSONObject2.opt(str5) != null) {
                            try {
                                jSONObject5.put(str5, jSONObject2.opt(str5));
                            } catch (java.lang.Exception unused) {
                            }
                        }
                    }
                }
            }
            java.lang.String str6 = android.text.TextUtils.isEmpty(str2) ? "u" : str2;
            java.lang.String str7 = android.text.TextUtils.isEmpty(str3) ? "1.0.0" : str3;
            if (jSONObject5 != null) {
                java.lang.String strSubstring = str6 + "==" + str7 + "&=";
                if (android.text.TextUtils.isEmpty(strSubstring)) {
                    return a(101, jSONObject5);
                }
                if (strSubstring.endsWith("&=")) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 2);
                }
                str4 = strSubstring;
            } else {
                str4 = null;
            }
            if (jSONObject5 != null) {
                try {
                    com.umeng.commonsdk.statistics.idtracking.e eVarA = com.umeng.commonsdk.statistics.idtracking.e.a(context);
                    if (eVarA != null) {
                        eVarA.b();
                        java.lang.String strEncodeToString = android.util.Base64.encodeToString(new com.umeng.analytics.pro.az().a(eVarA.c()), 0);
                        if (!android.text.TextUtils.isEmpty(strEncodeToString)) {
                            org.json.JSONObject jSONObject6 = jSONObject5.getJSONObject("header");
                            jSONObject6.put(com.umeng.analytics.pro.ai.Y, strEncodeToString);
                            jSONObject5.put("header", jSONObject6);
                        }
                    }
                } catch (java.lang.Exception unused2) {
                }
            }
            if (jSONObject5 != null && com.umeng.commonsdk.statistics.common.DataHelper.largeThanMaxSize(jSONObject5.toString().getBytes().length, com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt(com.umeng.commonsdk.statistics.idtracking.k.a, sharedPreferences.getInt(com.umeng.commonsdk.statistics.idtracking.k.a, 1) + 1).commit();
                }
                return a(113, jSONObject5);
            }
            if (jSONObject5 != null) {
                com.umeng.commonsdk.statistics.idtracking.Envelope envelopeA = a(context, jSONObject5.toString().getBytes());
                if (envelopeA == null) {
                    return a(111, jSONObject5);
                }
                envelope = envelopeA;
            } else {
                envelope = null;
            }
            if (envelope != null && com.umeng.commonsdk.statistics.common.DataHelper.largeThanMaxSize(envelope.toBinary().length, com.umeng.commonsdk.statistics.common.DataHelper.ENVELOPE_LENGTH_MAX)) {
                return a(114, jSONObject5);
            }
            java.lang.String str8 = str4;
            int iA = a(context, envelope, str4, jSONObject5 != null ? jSONObject5.optJSONObject("header").optString("app_version") : null, str);
            if (iA != 0) {
                return a(iA, jSONObject5);
            }
            if (com.umeng.commonsdk.statistics.common.ULog.DEBUG) {
                android.util.Log.i(f1508c, "constructHeader size is " + jSONObject5.toString().getBytes().length);
            }
            if (!str8.startsWith(com.umeng.analytics.pro.ai.aB) && !str8.startsWith("i") && !str8.startsWith("t") && !str8.startsWith(com.umeng.analytics.pro.ai.at) && !com.umeng.commonsdk.stateless.b.a()) {
                new com.umeng.commonsdk.stateless.b(context);
                com.umeng.commonsdk.stateless.b.b();
            }
            return jSONObject5;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            if (jSONObject != null) {
                try {
                    jSONObject3 = new org.json.JSONObject();
                } catch (java.lang.Exception e2) {
                    e = e2;
                    jSONObject3 = jSONObject4;
                }
                try {
                    jSONObject3.put("header", jSONObject);
                } catch (org.json.JSONException unused3) {
                } catch (java.lang.Exception e3) {
                    e = e3;
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
                    jSONObject4 = jSONObject3;
                    return a(110, jSONObject4);
                }
                jSONObject4 = jSONObject3;
            }
            if (jSONObject4 == null) {
                jSONObject4 = new org.json.JSONObject();
            }
            java.util.Iterator<java.lang.String> itKeys2 = jSONObject2.keys();
            while (itKeys2.hasNext()) {
                java.lang.String next2 = itKeys2.next();
                if (next2 != null && (next2 instanceof java.lang.String)) {
                    java.lang.String str9 = next2;
                    if (jSONObject2.opt(str9) != null) {
                        try {
                            jSONObject4.put(str9, jSONObject2.opt(str9));
                        } catch (java.lang.Exception unused4) {
                        }
                    }
                }
            }
            return a(110, jSONObject4);
        }
    }
}
