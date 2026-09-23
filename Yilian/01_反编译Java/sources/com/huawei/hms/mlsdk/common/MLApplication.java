package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public class MLApplication {
    public static final java.lang.String DEFAULT_APP_NAME = "_DEFAULT_";
    public static final java.lang.String LOG_TAG = "MLApplication";
    public java.lang.String accessToken;
    public java.lang.String apiKey;
    public final android.content.Context appContext;
    public final java.lang.String appName;
    public final com.huawei.hms.mlsdk.common.MLApplicationSetting appSetting;
    public static final java.lang.Object LOCK = new java.lang.Object();
    public static final java.util.Map<java.lang.String, com.huawei.hms.mlsdk.common.MLApplication> INSTANCES = new java.util.HashMap();
    public boolean setByCP = false;
    public boolean isAcessTokenSetByCP = false;

    public MLApplication(android.content.Context context, java.lang.String str, com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting) {
        this.appContext = context;
        this.appName = str;
        this.appSetting = mLApplicationSetting;
    }

    public static android.app.Activity findActivity(android.content.Context context) {
        if (context instanceof android.app.Activity) {
            return (android.app.Activity) context;
        }
        if (context instanceof android.content.ContextWrapper) {
            return findActivity(((android.content.ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static java.util.List<java.lang.String> getAllAppNames() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        synchronized (LOCK) {
            java.util.Iterator<com.huawei.hms.mlsdk.common.MLApplication> it = INSTANCES.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getAppName());
            }
        }
        java.util.Collections.sort(arrayList);
        return arrayList;
    }

    public static java.util.List<com.huawei.hms.mlsdk.common.MLApplication> getAppList(android.content.Context context) {
        java.util.ArrayList arrayList;
        synchronized (LOCK) {
            arrayList = new java.util.ArrayList(INSTANCES.values());
        }
        return arrayList;
    }

    public static com.huawei.hms.mlsdk.common.MLApplication getInstance() {
        com.huawei.hms.mlsdk.common.MLApplication mLApplicationInitialize;
        synchronized (LOCK) {
            mLApplicationInitialize = INSTANCES.get(DEFAULT_APP_NAME);
            if (mLApplicationInitialize == null && (mLApplicationInitialize = initialize(e.d.a.b.c.a.b.a)) == null) {
                throw new java.lang.IllegalStateException("Please call MLApplication.initialize(Context) to initialize application first.");
            }
        }
        return mLApplicationInitialize;
    }

    public static com.huawei.hms.mlsdk.common.MLApplication getInstance(java.lang.String str) {
        com.huawei.hms.mlsdk.common.MLApplication mLApplication;
        java.lang.String str2;
        synchronized (LOCK) {
            mLApplication = INSTANCES.get(str);
            if (mLApplication == null) {
                java.util.List<java.lang.String> allAppNames = getAllAppNames();
                if (allAppNames.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + android.text.TextUtils.join(", ", allAppNames);
                }
                throw new java.lang.IllegalStateException(java.lang.String.format(java.util.Locale.ENGLISH, "application doesn't exist. current available application names:%s", str2));
            }
        }
        return mLApplication;
    }

    public static java.lang.String getUniqueKey(java.lang.String str, com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting) {
        java.lang.String strEncodeToString = null;
        java.lang.String strEncodeToString2 = str != null ? android.util.Base64.encodeToString(str.getBytes(java.nio.charset.Charset.defaultCharset()), 11) : null;
        if (mLApplicationSetting != null && mLApplicationSetting.getAppId() != null) {
            strEncodeToString = android.util.Base64.encodeToString(mLApplicationSetting.getAppId().getBytes(java.nio.charset.Charset.defaultCharset()), 11);
        }
        return e.a.c.a.a.f(strEncodeToString2, "+", strEncodeToString);
    }

    public static com.huawei.hms.mlsdk.common.MLApplication initialize(android.content.Context context) {
        com.huawei.hms.mlsdk.common.MLApplication mLApplicationInitialize;
        com.huawei.hms.ml.common.utils.SmartLog.i(LOG_TAG, "initialize one para");
        synchronized (LOCK) {
            makeSureAGConnectInstanceInitialed(context);
            if (INSTANCES.containsKey(DEFAULT_APP_NAME)) {
                getInstance();
            }
            new com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory().create();
            mLApplicationInitialize = initialize(context, com.huawei.hms.mlsdk.common.MLApplicationSetting.fromResource(context));
        }
        return mLApplicationInitialize;
    }

    public static com.huawei.hms.mlsdk.common.MLApplication initialize(android.content.Context context, com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting) {
        com.huawei.hms.ml.common.utils.SmartLog.i(LOG_TAG, "initialize two para");
        return initialize(context, mLApplicationSetting, DEFAULT_APP_NAME);
    }

    public static com.huawei.hms.mlsdk.common.MLApplication initialize(android.content.Context context, com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting, java.lang.String str) {
        com.huawei.hms.mlsdk.common.MLApplication mLApplication;
        android.content.Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
        synchronized (LOCK) {
            makeSureAGConnectInstanceInitialed(applicationContext);
            if (mLApplicationSetting == null) {
                new com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory().create();
                mLApplicationSetting = com.huawei.hms.mlsdk.common.MLApplicationSetting.fromResource(context);
            }
            mLApplication = new com.huawei.hms.mlsdk.common.MLApplication(applicationContext, str, mLApplicationSetting);
            INSTANCES.put(str, mLApplication);
            if (com.huawei.hms.ml.common.utils.ActivityMgr.INST.getCurrentActivity() == null && (applicationContext instanceof android.app.Application)) {
                com.huawei.hms.ml.common.utils.ActivityMgr.INST.init((android.app.Application) applicationContext);
            }
        }
        return mLApplication;
    }

    public static void makeSureAGConnectInstanceInitialed(android.content.Context context) {
        if (e.d.a.b.c.a.b == null) {
            e.d.a.b.c.a.a(context);
        }
    }

    public static java.lang.String readManifest(android.content.Context context) {
        java.lang.String str;
        try {
            android.content.pm.PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            str = "PackageManager NameNotFoundException";
            com.huawei.hms.ml.common.utils.SmartLog.e(LOG_TAG, str);
            return "";
        } catch (android.content.res.Resources.NotFoundException unused2) {
            str = "Resources NotFoundException";
            com.huawei.hms.ml.common.utils.SmartLog.e(LOG_TAG, str);
            return "";
        } catch (java.lang.Exception unused3) {
            str = "readManifest Exception";
            com.huawei.hms.ml.common.utils.SmartLog.e(LOG_TAG, str);
            return "";
        }
    }

    public <T> T get(java.lang.Class<T> cls) {
        return null;
    }

    public java.lang.String getApiKey() {
        java.lang.String str;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("get ky flag: ");
        sbO.append(this.setByCP);
        com.huawei.hms.ml.common.utils.SmartLog.i(LOG_TAG, sbO.toString());
        synchronized (LOCK) {
            if (!getInstance().isSetByCP() || this.apiKey == null || this.apiKey.length() == 0) {
                throw new java.lang.Error("please set your app apiKey");
            }
            str = this.apiKey;
        }
        return str;
    }

    public android.content.Context getAppContext() {
        return this.appContext;
    }

    public java.lang.String getAppName() {
        return this.appName;
    }

    public com.huawei.hms.mlsdk.common.MLApplicationSetting getAppSetting() {
        return this.appSetting;
    }

    public java.lang.String getAuthorizationToken() {
        synchronized (LOCK) {
            if (!this.isAcessTokenSetByCP) {
                return getApiKey();
            }
            if (android.text.TextUtils.isEmpty(this.accessToken)) {
                throw new java.lang.Error("access token is empty");
            }
            return this.accessToken;
        }
    }

    public java.lang.String getUniqueKey() {
        return getUniqueKey(getAppName(), getAppSetting());
    }

    public boolean isDefault() {
        return DEFAULT_APP_NAME.equals(getAppName());
    }

    public boolean isSetByCP() {
        return this.setByCP;
    }

    public void setAccessToken(java.lang.String str) {
        com.huawei.hms.ml.common.utils.SmartLog.i(LOG_TAG, "set a tkn");
        synchronized (LOCK) {
            this.accessToken = str;
            this.isAcessTokenSetByCP = true;
        }
    }

    public void setApiKey(java.lang.String str) {
        com.huawei.hms.ml.common.utils.SmartLog.i(LOG_TAG, "set a ky");
        synchronized (LOCK) {
            this.apiKey = str;
            this.setByCP = true;
            if (!isDefault()) {
                getInstance().setApiKey(str);
                getInstance().setApiKeyByCP(true);
            }
        }
    }

    public void setApiKeyByCP(boolean z) {
        this.setByCP = z;
    }

    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        if (getAppSetting() != null) {
            bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, getAppSetting().getAppId());
            bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName, readManifest(getAppContext()));
            bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.packageName, getAppSetting().getPackageName());
            bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.mlSdkVersion, getAppSetting().getMLSdkVersion());
            bundle.putBoolean(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.openHa, getAppSetting().getAcceptHa().booleanValue());
            bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.countryCode, new com.huawei.hms.ml.common.utils.CountryCodeBean(this.appContext, false).getCountryCode());
        } else {
            com.huawei.hms.ml.common.utils.SmartLog.w(LOG_TAG, "APP setting is null.");
        }
        return bundle;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("appName=");
        sbO.append(this.appName);
        sbO.append(", appSetting=");
        sbO.append(this.appSetting);
        return sbO.toString();
    }
}
