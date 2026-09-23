package com.umeng.commonsdk.internal;

/* loaded from: classes.dex */
public class d {
    public static org.json.JSONObject a() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            jSONObject.put("a_pr", android.os.Build.PRODUCT);
            jSONObject.put("a_bl", android.os.Build.BOOTLOADER);
            jSONObject.put("a_rv", android.os.Build.getRadioVersion());
            jSONObject.put("a_fp", android.os.Build.FINGERPRINT);
            jSONObject.put("a_hw", android.os.Build.HARDWARE);
            jSONObject.put("a_host", android.os.Build.HOST);
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                org.json.JSONArray jSONArray = new org.json.JSONArray();
                for (int i = 0; i < android.os.Build.SUPPORTED_32_BIT_ABIS.length; i++) {
                    jSONArray.put(android.os.Build.SUPPORTED_32_BIT_ABIS[i]);
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("a_s32", jSONArray);
                }
            }
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                org.json.JSONArray jSONArray2 = new org.json.JSONArray();
                for (int i2 = 0; i2 < android.os.Build.SUPPORTED_64_BIT_ABIS.length; i2++) {
                    jSONArray2.put(android.os.Build.SUPPORTED_64_BIT_ABIS[i2]);
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put("a_s64", jSONArray2);
                }
            }
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                org.json.JSONArray jSONArray3 = new org.json.JSONArray();
                for (int i3 = 0; i3 < android.os.Build.SUPPORTED_ABIS.length; i3++) {
                    jSONArray3.put(android.os.Build.SUPPORTED_ABIS[i3]);
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("a_sa", jSONArray3);
                }
            }
            jSONObject.put("a_ta", android.os.Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", android.os.Build.USER);
            jSONObject.put("a_cpu1", android.os.Build.CPU_ABI);
            jSONObject.put("a_cpu2", android.os.Build.CPU_ABI2);
            jSONObject.put("a_ra", android.os.Build.RADIO);
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", android.os.Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", android.os.Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", android.os.Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", android.os.Build.VERSION.CODENAME);
            jSONObject.put("a_intl", android.os.Build.VERSION.INCREMENTAL);
        } catch (java.lang.Exception unused) {
        }
        return jSONObject;
    }

    public static void a(android.content.Context context) throws org.json.JSONException {
        try {
            com.umeng.commonsdk.statistics.common.ULog.i("walle", "[internal] workEvent send envelope");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put(com.umeng.analytics.pro.ai.aK, com.umeng.commonsdk.internal.a.f1460e);
            org.json.JSONObject jSONObjectBuildEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, d(context), com.umeng.commonsdk.statistics.UMServerURL.PATH_ANALYTICS, "i", com.umeng.commonsdk.internal.a.f1460e);
            if (jSONObjectBuildEnvelopeWithExtHeader == null || jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                return;
            }
            com.umeng.commonsdk.statistics.common.ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
            com.umeng.commonsdk.internal.utils.a.e(context);
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
        }
    }

    public static void a(android.content.Context context, org.json.JSONObject jSONObject) throws org.json.JSONException {
        android.content.pm.PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new org.json.JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    public static void a(org.json.JSONObject jSONObject, java.lang.String str, boolean z) throws org.json.JSONException {
        if (jSONObject == null || android.text.TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, z ? 1 : 0);
        } catch (java.lang.Exception unused) {
        }
    }

    public static org.json.JSONObject b() throws java.lang.Throwable {
        try {
            com.umeng.commonsdk.internal.utils.d.a aVarA = com.umeng.commonsdk.internal.utils.d.a();
            if (aVarA == null) {
                return null;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                jSONObject.put("pro", aVarA.a);
                jSONObject.put("pla", aVarA.b);
                jSONObject.put("cpus", aVarA.f1479c);
                jSONObject.put("fea", aVarA.f1480d);
                jSONObject.put("imp", aVarA.f1481e);
                jSONObject.put("arc", aVarA.f1482f);
                jSONObject.put("var", aVarA.f1483g);
                jSONObject.put("par", aVarA.h);
                jSONObject.put("rev", aVarA.i);
                jSONObject.put("har", aVarA.j);
                jSONObject.put("rev", aVarA.k);
                jSONObject.put("ser", aVarA.l);
                jSONObject.put("cur_cpu", com.umeng.commonsdk.internal.utils.d.d());
                jSONObject.put("max_cpu", com.umeng.commonsdk.internal.utils.d.b());
                jSONObject.put("min_cpu", com.umeng.commonsdk.internal.utils.d.c());
                jSONObject.put("ts", java.lang.System.currentTimeMillis());
            } catch (java.lang.Exception unused) {
            }
            return jSONObject;
        } catch (java.lang.Exception unused2) {
            return null;
        }
    }

    public static void b(android.content.Context context) {
        com.umeng.commonsdk.statistics.common.ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            j(context);
        }
    }

    public static void b(android.content.Context context, org.json.JSONObject jSONObject) throws org.json.JSONException {
        if (context != null) {
            java.lang.String strA = com.umeng.commonsdk.internal.utils.k.a(context);
            if (android.text.TextUtils.isEmpty(strA)) {
                return;
            }
            try {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject(strA);
                if (jSONObject == null) {
                    jSONObject = new org.json.JSONObject();
                }
                if (jSONObject2.has(com.umeng.commonsdk.internal.utils.k.f1493d)) {
                    jSONObject.put(com.umeng.commonsdk.internal.utils.k.f1493d, jSONObject2.opt(com.umeng.commonsdk.internal.utils.k.f1493d));
                }
                if (jSONObject2.has(com.umeng.commonsdk.internal.utils.k.f1492c)) {
                    jSONObject.put(com.umeng.commonsdk.internal.utils.k.f1492c, jSONObject2.opt(com.umeng.commonsdk.internal.utils.k.f1492c));
                }
                if (jSONObject2.has(com.umeng.commonsdk.internal.utils.k.b)) {
                    jSONObject.put(com.umeng.commonsdk.internal.utils.k.b, jSONObject2.opt(com.umeng.commonsdk.internal.utils.k.b));
                }
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void c(android.content.Context context) {
        com.umeng.commonsdk.statistics.common.ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context == null || !com.umeng.commonsdk.framework.UMEnvelopeBuild.getTransmissionSendFlag()) {
            return;
        }
        j(context);
    }

    public static org.json.JSONObject d(android.content.Context context) throws java.lang.Throwable {
        org.json.JSONArray jSONArrayH;
        org.json.JSONArray jSONArrayK;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        org.json.JSONObject jSONObject2 = new org.json.JSONObject();
        if (context != null) {
            android.content.Context applicationContext = context.getApplicationContext();
            try {
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.I) && (jSONArrayK = k(applicationContext)) != null && jSONArrayK.length() > 0) {
                    jSONObject2.put("rs", jSONArrayK);
                }
            } catch (java.lang.Exception e2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e2);
            }
            try {
                org.json.JSONArray jSONArrayL = l(applicationContext);
                if (jSONArrayL != null && jSONArrayL.length() > 0) {
                    jSONObject2.put("by", jSONArrayL);
                }
            } catch (java.lang.Exception e3) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e3);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (java.lang.Exception e4) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e4);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (java.lang.Exception e5) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e5);
            }
            try {
                org.json.JSONObject jSONObjectA = a();
                if (jSONObjectA != null && jSONObjectA.length() > 0) {
                    jSONObject2.put("build", jSONObjectA);
                }
            } catch (java.lang.Exception e6) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e6);
            }
            try {
                org.json.JSONObject jSONObjectE = e(applicationContext);
                if (jSONObjectE != null && jSONObjectE.length() > 0) {
                    jSONObject2.put("scr", jSONObjectE);
                }
            } catch (java.lang.Exception e7) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e7);
            }
            try {
                org.json.JSONObject jSONObjectF = f(applicationContext);
                if (jSONObjectF != null && jSONObjectF.length() > 0) {
                    jSONObject2.put("sinfo", jSONObjectF);
                }
            } catch (java.lang.Exception e8) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e8);
            }
            try {
                org.json.JSONObject jSONObject3 = new org.json.JSONObject();
                org.json.JSONArray jSONArrayD = com.umeng.commonsdk.internal.utils.a.d(applicationContext);
                if (jSONArrayD != null && jSONArrayD.length() > 0) {
                    try {
                        jSONObject3.put("wl", jSONArrayD);
                    } catch (org.json.JSONException unused) {
                    }
                }
                jSONObject2.put("winfo", jSONObject3);
            } catch (java.lang.Exception e9) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e9);
            }
            try {
                org.json.JSONArray jSONArrayG = g(applicationContext);
                if (jSONArrayG != null && jSONArrayG.length() > 0) {
                    jSONObject2.put("input", jSONArrayG);
                }
            } catch (java.lang.Exception e10) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e10);
            }
            try {
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.af) && (jSONArrayH = h(applicationContext)) != null && jSONArrayH.length() > 0) {
                    jSONObject2.put("appls", jSONArrayH);
                }
            } catch (java.lang.Exception e11) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e11);
            }
            try {
                org.json.JSONObject jSONObjectI = i(applicationContext);
                if (jSONObjectI != null && jSONObjectI.length() > 0) {
                    jSONObject2.put("mem", jSONObjectI);
                }
            } catch (java.lang.Exception e12) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e12);
            }
            try {
                org.json.JSONObject jSONObjectB = b();
                if (jSONObjectB != null && jSONObjectB.length() > 0) {
                    jSONObject2.put(com.umeng.analytics.pro.ai.w, jSONObjectB);
                }
            } catch (java.lang.Exception unused2) {
            }
            try {
                jSONObject.put(com.umeng.analytics.pro.ai.as, jSONObject2);
            } catch (org.json.JSONException e13) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e13);
            }
        }
        return jSONObject;
    }

    public static org.json.JSONObject e(android.content.Context context) throws org.json.JSONException {
        android.util.DisplayMetrics displayMetrics;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", com.umeng.commonsdk.internal.utils.a.g(context));
                jSONObject.put("a_nav_h", com.umeng.commonsdk.internal.utils.a.h(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (java.lang.Exception e2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            }
        }
        return jSONObject;
    }

    public static org.json.JSONObject f(android.content.Context context) throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (context != null) {
            android.content.Context applicationContext = context.getApplicationContext();
            java.lang.String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", com.umeng.commonsdk.internal.utils.a.a(applicationContext, packageName));
                jSONObject.put("a_alut", com.umeng.commonsdk.internal.utils.a.b(applicationContext, packageName));
                jSONObject.put("a_c", com.umeng.commonsdk.internal.utils.a.c(applicationContext, packageName));
                jSONObject.put("a_uid", com.umeng.commonsdk.internal.utils.a.d(applicationContext, packageName));
                if (com.umeng.commonsdk.internal.utils.a.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", com.umeng.commonsdk.internal.utils.a.b());
                jSONObject.put("s_fs", com.umeng.commonsdk.internal.utils.a.a(applicationContext));
                jSONObject.put("a_meid", com.umeng.commonsdk.statistics.common.DeviceConfig.getMeid(applicationContext));
                jSONObject.put("a_imsi", com.umeng.commonsdk.statistics.common.DeviceConfig.getImsi(applicationContext));
                jSONObject.put("st", com.umeng.commonsdk.internal.utils.a.d());
                java.lang.String simICCID = com.umeng.commonsdk.statistics.common.DeviceConfig.getSimICCID(applicationContext);
                if (!android.text.TextUtils.isEmpty(simICCID)) {
                    try {
                        jSONObject.put("a_iccid", simICCID);
                    } catch (java.lang.Exception unused) {
                    }
                }
                java.lang.String secondSimIMEi = com.umeng.commonsdk.statistics.common.DeviceConfig.getSecondSimIMEi(applicationContext);
                if (!android.text.TextUtils.isEmpty(secondSimIMEi)) {
                    try {
                        jSONObject.put("a_simei", secondSimIMEi);
                    } catch (java.lang.Exception unused2) {
                    }
                }
                jSONObject.put("hn", com.umeng.commonsdk.internal.utils.a.e());
                jSONObject.put("ts", java.lang.System.currentTimeMillis());
            } catch (java.lang.Exception e2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e2);
            }
        }
        return jSONObject;
    }

    public static org.json.JSONArray g(android.content.Context context) {
        android.content.Context applicationContext;
        java.util.List<android.view.inputmethod.InputMethodInfo> listJ;
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        if (context != null && (listJ = com.umeng.commonsdk.internal.utils.a.j((applicationContext = context.getApplicationContext()))) != null) {
            for (android.view.inputmethod.InputMethodInfo inputMethodInfo : listJ) {
                try {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    jSONObject.put("a_id", inputMethodInfo.getId());
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", java.lang.System.currentTimeMillis());
                    jSONArray.put(jSONObject);
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, th);
                }
            }
        }
        return jSONArray;
    }

    public static org.json.JSONArray h(android.content.Context context) throws org.json.JSONException {
        android.content.Context applicationContext;
        java.util.List<com.umeng.commonsdk.internal.utils.a.C0020a> listK;
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        if (context != null && (listK = com.umeng.commonsdk.internal.utils.a.k((applicationContext = context.getApplicationContext()))) != null && !listK.isEmpty()) {
            for (com.umeng.commonsdk.internal.utils.a.C0020a c0020a : listK) {
                if (c0020a != null) {
                    try {
                        org.json.JSONObject jSONObject = new org.json.JSONObject();
                        jSONObject.put("a_pn", c0020a.a);
                        jSONObject.put("a_la", c0020a.b);
                        jSONObject.put("ts", java.lang.System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (java.lang.Exception e2) {
                        com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e2);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static org.json.JSONObject i(android.content.Context context) throws org.json.JSONException {
        android.content.Context applicationContext;
        android.app.ActivityManager.MemoryInfo memoryInfoL;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (context != null && (memoryInfoL = com.umeng.commonsdk.internal.utils.a.l((applicationContext = context.getApplicationContext()))) != null) {
            try {
                jSONObject.put("t", memoryInfoL.totalMem);
                jSONObject.put("f", memoryInfoL.availMem);
                jSONObject.put("ts", java.lang.System.currentTimeMillis());
            } catch (java.lang.Exception e2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, e2);
            }
        }
        return jSONObject;
    }

    public static void j(android.content.Context context) {
        try {
            if (com.umeng.commonsdk.framework.UMEnvelopeBuild.isReadyBuild(context, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, 32769, com.umeng.commonsdk.internal.b.a(context).a(), null);
            }
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 冷启动：5秒后触发2号数据仓遗留信封检查动作。");
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.v, com.umeng.commonsdk.internal.b.a(context).a(), null, 5000L);
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
    }

    public static org.json.JSONArray k(android.content.Context context) {
        java.util.List<android.app.ActivityManager.RunningServiceInfo> runningServices;
        org.json.JSONArray jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getApplicationContext().getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
            if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null || runningServices.isEmpty()) {
                return null;
            }
            for (int i = 0; i < runningServices.size(); i++) {
                if (runningServices.get(i) != null && runningServices.get(i).service != null && runningServices.get(i).service.getClassName() != null && runningServices.get(i).service.getPackageName() != null) {
                    try {
                        org.json.JSONObject jSONObject = new org.json.JSONObject();
                        jSONObject.put("sn", runningServices.get(i).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i).service.getPackageName().toString());
                        if (jSONArray == null) {
                            jSONArray = new org.json.JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (org.json.JSONException unused) {
                    }
                }
            }
            if (jSONArray == null) {
                return jSONArray;
            }
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            try {
                jSONObject2.put("ts", java.lang.System.currentTimeMillis());
                jSONObject2.put("ls", jSONArray);
            } catch (org.json.JSONException unused2) {
            }
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            try {
                jSONObject3.put("sers", jSONObject2);
            } catch (org.json.JSONException unused3) {
            }
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            try {
                jSONArray2.put(jSONObject3);
                return jSONArray2;
            } catch (java.lang.Throwable th) {
                th = th;
                jSONArray = jSONArray2;
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                return jSONArray;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static org.json.JSONArray l(android.content.Context context) {
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.lang.String strA = com.umeng.commonsdk.internal.utils.j.a(context);
        if (!android.text.TextUtils.isEmpty(strA)) {
            try {
                jSONArray.put(new org.json.JSONObject(strA));
            } catch (java.lang.Exception unused) {
            }
        }
        return jSONArray;
    }
}
