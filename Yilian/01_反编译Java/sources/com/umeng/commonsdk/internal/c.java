package com.umeng.commonsdk.internal;

/* loaded from: classes.dex */
public class c implements com.umeng.commonsdk.framework.UMLogDataProtocol {
    public static int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1464c = "info";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1465d = "stat";

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.Class<?> f1466e = null;

    /* renamed from: f, reason: collision with root package name */
    public static java.lang.reflect.Method f1467f = null;

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.reflect.Method f1468g = null;
    public static java.lang.reflect.Method h = null;
    public static boolean i = false;
    public android.content.Context a;

    static {
        c();
    }

    public c(android.content.Context context) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
    }

    public static java.lang.Class<?> a(java.lang.String str) {
        try {
            return java.lang.Class.forName(str);
        } catch (java.lang.ClassNotFoundException unused) {
            return null;
        }
    }

    private void a(android.content.Context context) {
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("appkey", com.umeng.commonsdk.service.UMGlobalContext.getInstance(context).getAppkey());
            jSONObject.put("app_version", com.umeng.commonsdk.service.UMGlobalContext.getInstance(context).getAppVersion());
            jSONObject.put(com.umeng.analytics.pro.ai.x, "Android");
            org.json.JSONObject jSONObjectBuildZeroEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildZeroEnvelopeWithExtHeader(context, jSONObject, null, com.umeng.commonsdk.statistics.UMServerURL.ZCFG_PATH);
            if (jSONObjectBuildZeroEnvelopeWithExtHeader == null || !jSONObjectBuildZeroEnvelopeWithExtHeader.has("exception")) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 构建零号报文 成功!!!");
            } else {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 构建零号报文失败.");
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void a(android.content.Context context, final com.umeng.commonsdk.listener.OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            return;
        }
        final android.content.Context applicationContext = context.getApplicationContext();
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.internal.c.2
            @Override // java.lang.Runnable
            public void run() {
                java.lang.String strA = com.umeng.analytics.pro.z.a(applicationContext);
                com.umeng.commonsdk.listener.OnGetOaidListener onGetOaidListener2 = onGetOaidListener;
                if (onGetOaidListener2 != null) {
                    onGetOaidListener2.onGetOaid(strA);
                }
            }
        }).start();
    }

    public static java.lang.String b() {
        java.lang.reflect.Method method;
        java.lang.Class<?> cls = f1466e;
        if (cls == null || (method = f1467f) == null || h == null) {
            return "";
        }
        try {
            java.lang.Object objInvoke = method.invoke(cls, new java.lang.Object[0]);
            return objInvoke != null ? (java.lang.String) h.invoke(objInvoke, new java.lang.Object[0]) : "";
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static void b(final android.content.Context context) {
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.internal.c.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.statistics.idtracking.i.a, 0);
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    java.lang.String strA = com.umeng.analytics.pro.z.a(context);
                    long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                    if (!android.text.TextUtils.isEmpty(strA) && sharedPreferences != null) {
                        android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(com.umeng.commonsdk.statistics.idtracking.i.f1537c, (jCurrentTimeMillis2 - jCurrentTimeMillis) + "");
                        editorEdit.commit();
                    }
                    if (sharedPreferences != null) {
                        android.content.SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                        editorEdit2.putString(com.umeng.commonsdk.statistics.idtracking.i.b, strA);
                        editorEdit2.commit();
                    }
                    if (android.os.Build.VERSION.SDK_INT > 28) {
                        com.umeng.commonsdk.UMConfigureImpl.removeInterruptFlag();
                    }
                } catch (java.lang.Throwable unused) {
                }
            }
        }).start();
    }

    public static void c() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.umzid.ZIDManager");
            f1466e = cls;
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getInstance", new java.lang.Class[0]);
            if (declaredMethod != null) {
                f1467f = declaredMethod;
            }
            java.lang.reflect.Method declaredMethod2 = f1466e.getDeclaredMethod("getZID", android.content.Context.class);
            if (declaredMethod2 != null) {
                f1468g = declaredMethod2;
            }
            java.lang.reflect.Method declaredMethod3 = f1466e.getDeclaredMethod("getSDKVersion", new java.lang.Class[0]);
            if (declaredMethod3 != null) {
                h = declaredMethod3;
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void c(final android.content.Context context) {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G) || android.os.Build.VERSION.SDK_INT <= 28) {
            return;
        }
        a(context, new com.umeng.commonsdk.listener.OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.3
            @Override // com.umeng.commonsdk.listener.OnGetOaidListener
            public void onGetOaid(java.lang.String str) {
                if (android.text.TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.statistics.idtracking.i.a, 0);
                    if (sharedPreferences == null || sharedPreferences.getString(com.umeng.commonsdk.statistics.idtracking.i.b, "").equalsIgnoreCase(str)) {
                        return;
                    }
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 更新本地缓存OAID");
                    android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(com.umeng.commonsdk.statistics.idtracking.i.b, str);
                    editorEdit.commit();
                } catch (java.lang.Throwable unused) {
                }
            }
        });
    }

    private void d() {
        com.umeng.analytics.pro.ak akVarA = com.umeng.analytics.pro.ak.a(this.a);
        com.umeng.analytics.pro.al alVarA = akVarA.a(com.umeng.analytics.pro.am.f1239c);
        if (alVarA != null) {
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> [有状态]二级缓存记录构建成真正信封。");
            try {
                java.lang.String str = alVarA.a;
                org.json.JSONObject jSONObjectA = new com.umeng.commonsdk.statistics.b().a(this.a.getApplicationContext(), new org.json.JSONObject(alVarA.f1235c), new org.json.JSONObject(alVarA.f1236d), alVarA.f1237e, alVarA.b, alVarA.f1238f);
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, (jSONObjectA == null || !jSONObjectA.has("exception")) ? "--->>> [有状态]二级缓存记录构建真正信封 成功! 删除二级缓存记录。" : "--->>> [有状态]二级缓存记录构建真正信封 失败。删除二级缓存记录");
                akVarA.a(com.umeng.analytics.pro.am.f1239c, str);
                akVarA.b();
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    private void d(android.content.Context context) {
        java.lang.Object objInvoke;
        java.lang.reflect.Method declaredMethod;
        android.content.Context applicationContext = context.getApplicationContext();
        java.lang.String appkey = com.umeng.commonsdk.utils.UMUtils.getAppkey(context);
        try {
            java.lang.Class<?> clsA = a("com.umeng.umzid.ZIDManager");
            java.lang.reflect.Method declaredMethod2 = clsA.getDeclaredMethod("getInstance", new java.lang.Class[0]);
            if (declaredMethod2 == null || (objInvoke = declaredMethod2.invoke(clsA, new java.lang.Object[0])) == null || (declaredMethod = clsA.getDeclaredMethod("init", android.content.Context.class, java.lang.String.class, a("com.umeng.umzid.IZIDCompletionCallback"))) == null) {
                return;
            }
            declaredMethod.invoke(objInvoke, applicationContext, appkey, null);
        } catch (java.lang.Throwable unused) {
        }
    }

    private void e() {
        if (i) {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
                return;
            }
            i = false;
        } else {
            if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G) || android.os.Build.VERSION.SDK_INT <= 28) {
                return;
            }
            i = true;
            a(this.a, new com.umeng.commonsdk.listener.OnGetOaidListener() { // from class: com.umeng.commonsdk.internal.c.4
                @Override // com.umeng.commonsdk.listener.OnGetOaidListener
                public void onGetOaid(java.lang.String str) {
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> OAID云控参数更新(不采集->采集)：采集完成");
                    if (android.text.TextUtils.isEmpty(str)) {
                        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> oaid返回null或者空串，不需要 伪冷启动。");
                        return;
                    }
                    try {
                        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.internal.c.this.a.getSharedPreferences(com.umeng.commonsdk.statistics.idtracking.i.a, 0);
                        if (sharedPreferences != null) {
                            android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                            editorEdit.putString(com.umeng.commonsdk.statistics.idtracking.i.b, str);
                            editorEdit.commit();
                        }
                    } catch (java.lang.Throwable unused) {
                    }
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.commonsdk.internal.c.this.a, com.umeng.commonsdk.internal.a.w, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.internal.c.this.a).a(), null);
                }
            });
        }
    }

    public static void e(android.content.Context context) {
        java.io.File filesDir = context.getFilesDir();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(filesDir.getAbsolutePath());
        java.io.File file = new java.io.File(e.a.c.a.a.j(sb, java.io.File.separator, com.umeng.analytics.pro.am.l));
        if (file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (java.lang.Throwable unused) {
        }
    }

    private void f() {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G) || android.os.Build.VERSION.SDK_INT <= 28) {
            return;
        }
        i = true;
        com.umeng.commonsdk.UMConfigureImpl.registerInterruptFlag();
        com.umeng.commonsdk.UMConfigureImpl.init(this.a);
        b++;
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 要读取 oaid，需等待读取结果.");
        com.umeng.commonsdk.UMConfigureImpl.registerMessageSendListener(new com.umeng.commonsdk.utils.onMessageSendListener() { // from class: com.umeng.commonsdk.internal.c.5
            @Override // com.umeng.commonsdk.utils.onMessageSendListener
            public void onMessageSend() {
                if (com.umeng.commonsdk.internal.c.this.a != null) {
                    com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.commonsdk.internal.c.this.a, com.umeng.commonsdk.internal.a.x, com.umeng.commonsdk.internal.b.a(com.umeng.commonsdk.internal.c.this.a).a(), null);
                }
                com.umeng.commonsdk.UMConfigureImpl.removeMessageSendListener(this);
            }
        });
        b(this.a);
    }

    private void g() {
        if (b <= 0) {
            h();
            d(this.a);
        }
    }

    private void h() {
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 真实构建条件满足，开始构建业务信封。");
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(this.a)) {
            e(this.a);
            com.umeng.commonsdk.a.a(this.a);
            android.content.Context context = this.a;
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, 8208, com.umeng.analytics.CoreProtocol.getInstance(context), null);
            android.content.Context context2 = this.a;
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context2, com.umeng.commonsdk.internal.a.t, com.umeng.commonsdk.internal.b.a(context2).a(), null);
        }
    }

    public java.lang.String a() {
        java.lang.reflect.Method method;
        java.lang.Class<?> cls = f1466e;
        if (cls == null || (method = f1467f) == null || f1468g == null) {
            return "";
        }
        try {
            java.lang.Object objInvoke = method.invoke(cls, new java.lang.Object[0]);
            return objInvoke != null ? (java.lang.String) f1468g.invoke(objInvoke, this.a) : "";
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(java.lang.Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public org.json.JSONObject setupReportData(long j) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void workEvent(java.lang.Object r9, int r10) throws org.json.JSONException, java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.c.workEvent(java.lang.Object, int):void");
    }
}
