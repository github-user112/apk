package com.umeng.analytics.process;

/* loaded from: classes.dex */
public class UMProcessDBDatasSender implements com.umeng.commonsdk.framework.UMLogDataProtocol {
    public static final int UM_PROCESS_CONSTRUCTMESSAGE = 36946;
    public static final int UM_PROCESS_EVENT_KEY = 36945;
    public static java.util.concurrent.ScheduledThreadPoolExecutor executor = new java.util.concurrent.ScheduledThreadPoolExecutor(1);
    public static com.umeng.analytics.process.UMProcessDBDatasSender mInstance;
    public android.content.Context mContext;
    public java.util.List<java.lang.Integer> mGeneralBodyIds;
    public com.umeng.commonsdk.utils.FileLockUtil mLockUtil = new com.umeng.commonsdk.utils.FileLockUtil();
    public com.umeng.analytics.pro.n.c mPolicySelector;

    public class ConstructMessageCallback implements com.umeng.commonsdk.utils.FileLockCallback {
        public ConstructMessageCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.io.File file, int i) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str) {
            org.json.JSONObject jSONObjectBuildEnvelopeWithExtHeader;
            com.umeng.analytics.process.UMProcessDBDatasSender uMProcessDBDatasSender = com.umeng.analytics.process.UMProcessDBDatasSender.this;
            org.json.JSONObject jSONObject = uMProcessDBDatasSender.setupReportData(com.umeng.commonsdk.framework.UMEnvelopeBuild.maxDataSpace(uMProcessDBDatasSender.mContext));
            if (jSONObject != null && jSONObject.length() >= 1) {
                org.json.JSONObject jSONObject2 = (org.json.JSONObject) jSONObject.opt("header");
                org.json.JSONObject jSONObject3 = (org.json.JSONObject) jSONObject.opt("content");
                if (com.umeng.analytics.process.UMProcessDBDatasSender.this.mContext != null && jSONObject2 != null && jSONObject3 != null && (jSONObjectBuildEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildEnvelopeWithExtHeader(com.umeng.analytics.process.UMProcessDBDatasSender.this.mContext, jSONObject2, jSONObject3)) != null) {
                    com.umeng.analytics.process.UMProcessDBDatasSender.this.removeCacheData(jSONObjectBuildEnvelopeWithExtHeader);
                }
            }
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str, java.lang.Object obj) {
            return false;
        }
    }

    public class ReplaceCallback implements com.umeng.commonsdk.utils.FileLockCallback {
        public ReplaceCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.io.File file, int i) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str) throws java.lang.Throwable {
            if (android.text.TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(com.umeng.analytics.process.a.f1402c)) {
                str = str.replaceFirst(com.umeng.analytics.process.a.f1402c, "");
            }
            com.umeng.analytics.process.UMProcessDBHelper.getInstance(com.umeng.analytics.process.UMProcessDBDatasSender.this.mContext).deleteEventDatas(str.replace(com.umeng.analytics.process.a.f1403d, ""), null, null);
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str, java.lang.Object obj) {
            return false;
        }
    }

    private void constructMessage() {
        if (defconProcesserHandler() != 0) {
            return;
        }
        this.mLockUtil.doFileOperateion(com.umeng.analytics.process.b.b(this.mContext, ""), new com.umeng.analytics.process.UMProcessDBDatasSender.ConstructMessageCallback());
    }

    private int defconProcesserHandler() throws java.lang.Throwable {
        int iA = com.umeng.analytics.pro.q.a().a(this.mContext);
        if (iA != 0) {
            try {
                com.umeng.analytics.process.DBFileTraversalUtil.traverseDBFiles(com.umeng.analytics.process.b.a(this.mContext), new com.umeng.analytics.process.UMProcessDBDatasSender.ReplaceCallback(), null);
            } catch (java.lang.Exception unused) {
            }
            com.umeng.analytics.process.UMProcessDBHelper.getInstance(this.mContext).deleteEventDatas(com.umeng.analytics.process.a.h, null, null);
        }
        return iA;
    }

    private org.json.JSONObject generalBody() {
        org.json.JSONObject mainEvents = null;
        try {
            if (this.mGeneralBodyIds == null) {
                this.mGeneralBodyIds = new java.util.ArrayList();
            }
            mainEvents = com.umeng.analytics.process.UMProcessDBHelper.getInstance(this.mContext).readMainEvents(com.umeng.commonsdk.framework.UMEnvelopeBuild.maxDataSpace(this.mContext) - 2000, this.mGeneralBodyIds);
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(this.mContext);
            if (sharedPreferences != null) {
                java.lang.String string = sharedPreferences.getString("userlevel", "");
                if (!android.text.TextUtils.isEmpty(string)) {
                    mainEvents.put("userlevel", string);
                }
            }
            java.lang.String[] strArrA = com.umeng.analytics.c.a(this.mContext);
            if (strArrA != null && !android.text.TextUtils.isEmpty(strArrA[0]) && !android.text.TextUtils.isEmpty(strArrA[1])) {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                jSONObject.put(com.umeng.analytics.pro.c.M, strArrA[0]);
                jSONObject.put(com.umeng.analytics.pro.c.N, strArrA[1]);
                if (jSONObject.length() > 0) {
                    mainEvents.put(com.umeng.analytics.pro.c.L, jSONObject);
                }
            }
            if (com.umeng.commonsdk.statistics.noise.ABTest.getService(this.mContext).isInTest()) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put(com.umeng.commonsdk.statistics.noise.ABTest.getService(this.mContext).getTestName(), com.umeng.commonsdk.statistics.noise.ABTest.getService(this.mContext).getGroupInfo());
                mainEvents.put(com.umeng.analytics.pro.c.K, jSONObject2);
            }
        } catch (java.lang.Throwable unused) {
        }
        return mainEvents;
    }

    private org.json.JSONObject generalHeader() {
        java.lang.String appVersionCode;
        org.json.JSONObject versionInfoFromColumId;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            if (com.umeng.analytics.AnalyticsConfig.mWrapperType != null && com.umeng.analytics.AnalyticsConfig.mWrapperVersion != null) {
                jSONObject.put("wrapper_version", com.umeng.analytics.AnalyticsConfig.mWrapperVersion);
                jSONObject.put("wrapper_type", com.umeng.analytics.AnalyticsConfig.mWrapperType);
            }
            jSONObject.put(com.umeng.analytics.pro.c.i, com.umeng.analytics.AnalyticsConfig.getVerticalType(this.mContext));
            java.lang.String str = "9.3.8";
            if (com.umeng.analytics.AnalyticsConfig.getVerticalType(this.mContext) == 1) {
                java.lang.String gameSdkVersion = com.umeng.analytics.AnalyticsConfig.getGameSdkVersion(this.mContext);
                if (!android.text.TextUtils.isEmpty(gameSdkVersion)) {
                    str = gameSdkVersion;
                }
            }
            jSONObject.put("sdk_version", str);
            java.lang.String appVersionName = "";
            if (this.mGeneralBodyIds.size() <= 0 || (versionInfoFromColumId = com.umeng.analytics.process.UMProcessDBHelper.getInstance(this.mContext).readVersionInfoFromColumId(this.mGeneralBodyIds.get(0))) == null) {
                appVersionCode = "";
            } else {
                appVersionName = versionInfoFromColumId.optString("__av");
                appVersionCode = versionInfoFromColumId.optString("__vc");
            }
            if (android.text.TextUtils.isEmpty(appVersionName)) {
                appVersionName = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(this.mContext);
            }
            jSONObject.put("app_version", appVersionName);
            if (android.text.TextUtils.isEmpty(appVersionCode)) {
                appVersionCode = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(this.mContext);
            }
            jSONObject.put("version_code", appVersionCode);
            java.lang.String strMD5 = com.umeng.commonsdk.statistics.common.HelperUtils.MD5(com.umeng.analytics.AnalyticsConfig.getSecretKey(this.mContext));
            if (!android.text.TextUtils.isEmpty(strMD5)) {
                jSONObject.put("secret", strMD5);
            }
            java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.mContext, "pr_ve", null);
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(this.mContext);
            jSONObject.put(com.umeng.analytics.pro.c.l, com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.mContext, "pr_ve", null));
            jSONObject.put(com.umeng.analytics.pro.c.m, com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.mContext, "ud_da", null));
            jSONObject.put(com.umeng.analytics.pro.c.ah, "1.0.0");
            if (android.text.TextUtils.isEmpty(strImprintProperty)) {
                jSONObject.put(com.umeng.analytics.pro.c.l, sharedPreferences.getString("vers_pre_version", "0"));
                jSONObject.put(com.umeng.analytics.pro.c.m, sharedPreferences.getString("vers_date", new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.getDefault()).format(new java.util.Date(java.lang.System.currentTimeMillis()))));
            }
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    public static com.umeng.analytics.process.UMProcessDBDatasSender getInstance(android.content.Context context) {
        if (mInstance == null) {
            synchronized (com.umeng.analytics.process.UMProcessDBDatasSender.class) {
                if (mInstance == null) {
                    mInstance = new com.umeng.analytics.process.UMProcessDBDatasSender();
                }
            }
        }
        com.umeng.analytics.process.UMProcessDBDatasSender uMProcessDBDatasSender = mInstance;
        uMProcessDBDatasSender.mContext = context;
        return uMProcessDBDatasSender;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(java.lang.Object obj) {
        java.util.List<java.lang.Integer> list;
        org.json.JSONObject jSONObjectOptJSONObject;
        if (obj == null || (list = this.mGeneralBodyIds) == null || list.size() == 0) {
            return;
        }
        org.json.JSONObject jSONObject = (org.json.JSONObject) obj;
        if (!jSONObject.has("analytics") || (jSONObjectOptJSONObject = jSONObject.optJSONObject("analytics")) == null || jSONObjectOptJSONObject.length() <= 0 || !jSONObjectOptJSONObject.has("ekv")) {
            return;
        }
        com.umeng.analytics.process.UMProcessDBHelper.getInstance(this.mContext).deleteMainProcessEventDatasByIds(this.mGeneralBodyIds);
        this.mGeneralBodyIds.clear();
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public org.json.JSONObject setupReportData(long j) {
        int iA = com.umeng.analytics.pro.q.a().a(this.mContext);
        org.json.JSONObject jSONObjectGeneralBody = generalBody();
        if (jSONObjectGeneralBody.length() <= 0) {
            return null;
        }
        org.json.JSONObject jSONObjectGeneralHeader = generalHeader();
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            org.json.JSONObject jSONObject2 = new org.json.JSONObject();
            if (iA == 3) {
                jSONObject2.put("analytics", new org.json.JSONObject());
            } else if (jSONObjectGeneralBody.length() > 0) {
                jSONObject2.put("analytics", jSONObjectGeneralBody);
            }
            if (jSONObjectGeneralHeader != null && jSONObjectGeneralHeader.length() > 0) {
                jSONObject.put("header", jSONObjectGeneralHeader);
            }
            if (jSONObject2.length() > 0) {
                if (jSONObject2.has("analytics")) {
                    org.json.JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("analytics");
                    if (jSONObjectOptJSONObject.length() == 1 && (jSONObjectOptJSONObject.optJSONObject(com.umeng.analytics.pro.c.L) != null || !android.text.TextUtils.isEmpty(jSONObjectOptJSONObject.optString("userlevel")))) {
                        return null;
                    }
                    if (jSONObjectOptJSONObject.length() == 2 && jSONObjectOptJSONObject.optJSONObject(com.umeng.analytics.pro.c.L) != null && !android.text.TextUtils.isEmpty(jSONObjectOptJSONObject.optString("userlevel"))) {
                        return null;
                    }
                }
                jSONObject.put("content", jSONObject2);
            }
        } catch (java.lang.Throwable unused) {
        }
        return jSONObject;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(java.lang.Object obj, int i) {
        if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(this.mContext)) {
            switch (i) {
                case 36945:
                    executor.schedule(new java.lang.Runnable() { // from class: com.umeng.analytics.process.UMProcessDBDatasSender.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> call processDBToMain start.");
                            com.umeng.analytics.process.UMProcessDBHelper.getInstance(com.umeng.analytics.process.UMProcessDBDatasSender.this.mContext).processDBToMain();
                        }
                    }, 5L, java.util.concurrent.TimeUnit.SECONDS);
                    break;
                case UM_PROCESS_CONSTRUCTMESSAGE /* 36946 */:
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> recv UM_PROCESS_CONSTRUCTMESSAGE msg.");
                    constructMessage();
                    break;
            }
        }
    }
}
