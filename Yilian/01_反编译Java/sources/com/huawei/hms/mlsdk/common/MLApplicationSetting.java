package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public final class MLApplicationSetting {
    public final java.lang.Boolean acceptHa;
    public final java.lang.String apiKey;
    public final java.lang.String appId;
    public final java.lang.String certFingerprint;
    public final java.util.Map<java.lang.String, java.lang.Object> extProperties;
    public final java.util.List<java.lang.String> haCollectorUrls;
    public final java.lang.String mlSdkVersion;
    public final java.util.List<java.lang.String> mlServiceUrls;
    public final java.lang.String packageName;
    public final java.lang.String region;

    public static class BundleKeyConstants {

        public static final class AppInfo {
            public static final java.lang.String appName = "appName";
            public static final java.lang.String appid = "appid";
            public static final java.lang.String countryCode = "countryCode";
            public static final java.lang.String mlSdkVersion = "com.huawei.hms.client.service.name:ml-computer-vision";
            public static final java.lang.String openHa = "openHa";
            public static final java.lang.String packageName = "packageName";
        }
    }

    public static final class Factory {
        public java.lang.Boolean acceptHa;
        public java.lang.String apiKey;
        public java.lang.String appId;
        public java.lang.String certFingerprint;
        public java.util.Map<java.lang.String, java.lang.Object> extProperties;
        public java.util.List<java.lang.String> haCollectorUrls;
        public java.lang.String mlSdkVersion;
        public java.util.List<java.lang.String> mlServiceUrls;
        public java.lang.String packageName;
        public java.lang.String region;

        public Factory() {
            this.mlServiceUrls = new java.util.ArrayList();
            this.haCollectorUrls = new java.util.ArrayList();
            this.extProperties = new java.util.HashMap();
        }

        public Factory(com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting) {
            this.mlServiceUrls = new java.util.ArrayList();
            this.haCollectorUrls = new java.util.ArrayList();
            this.extProperties = new java.util.HashMap();
            this.appId = mLApplicationSetting.appId;
            this.apiKey = mLApplicationSetting.apiKey;
            this.packageName = mLApplicationSetting.packageName;
            this.certFingerprint = mLApplicationSetting.certFingerprint;
            this.region = mLApplicationSetting.region;
            this.mlSdkVersion = mLApplicationSetting.mlSdkVersion;
            this.acceptHa = mLApplicationSetting.acceptHa;
            this.mlServiceUrls = mLApplicationSetting.mlServiceUrls;
            this.haCollectorUrls = mLApplicationSetting.haCollectorUrls;
            this.extProperties = mLApplicationSetting.extProperties;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting create() {
            return new com.huawei.hms.mlsdk.common.MLApplicationSetting(this.appId, this.apiKey, this.packageName, this.certFingerprint, this.mlSdkVersion, this.acceptHa, this.region, this.mlServiceUrls, this.haCollectorUrls, this.extProperties);
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setAcceptHa(java.lang.Boolean bool) {
            this.acceptHa = bool;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setApiKey(java.lang.String str) {
            this.apiKey = str;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setApplicationId(java.lang.String str) {
            this.appId = str;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setCertFingerprint(java.lang.String str) {
            this.certFingerprint = str;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setExtProperties(java.lang.String str, java.lang.Object obj) {
            if (this.extProperties == null) {
                this.extProperties = new java.util.HashMap();
            }
            this.extProperties.put(str, obj);
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setHaCollectorUrls(java.util.List<java.lang.String> list) {
            if (list == null) {
                list = new java.util.ArrayList<>();
            }
            this.haCollectorUrls = list;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setMLSdkVersion(java.lang.String str) {
            this.mlSdkVersion = str;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setMLServiceUrls(java.util.List<java.lang.String> list) {
            if (list == null) {
                list = new java.util.ArrayList<>();
            }
            this.mlServiceUrls = list;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setPackageName(java.lang.String str) {
            this.packageName = str;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLApplicationSetting.Factory setRegion(java.lang.String str) {
            this.region = str;
            return this;
        }
    }

    public MLApplicationSetting(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.Boolean bool, java.lang.String str6, java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2, java.util.Map<java.lang.String, java.lang.Object> map) {
        this.appId = str;
        this.apiKey = str2;
        this.packageName = str3;
        this.certFingerprint = str4;
        this.mlSdkVersion = str5;
        this.acceptHa = bool;
        this.region = str6;
        this.mlServiceUrls = list;
        this.haCollectorUrls = list2;
        this.extProperties = map;
    }

    private boolean equal(java.lang.Object obj, java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static com.huawei.hms.mlsdk.common.MLApplicationSetting fromResource(android.content.Context context) throws android.content.pm.PackageManager.NameNotFoundException {
        com.huawei.hms.mlsdk.common.AgConnectInfo agConnectInfo = new com.huawei.hms.mlsdk.common.AgConnectInfo(context);
        java.lang.String metadata = getMetadata(context, com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.mlSdkVersion, "");
        if (android.text.TextUtils.isEmpty(metadata)) {
            metadata = getKitMetadata(context, com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.mlSdkVersion, "UNKNOWN");
        }
        return new com.huawei.hms.mlsdk.common.MLApplicationSetting(agConnectInfo.getApplicationId(), agConnectInfo.getApiKey(), agConnectInfo.getPackageName(), agConnectInfo.getCertFingerprint(), metadata, android.provider.Settings.Secure.getInt(context.getContentResolver(), "hw_app_analytics_state", 0) == 1 ? java.lang.Boolean.TRUE : java.lang.Boolean.FALSE, agConnectInfo.getRegion(), agConnectInfo.getMLServiceUrls(), agConnectInfo.getHaCollectorUrls(), new java.util.HashMap());
    }

    public static java.lang.String getKitMetadata(android.content.Context context, java.lang.String str, java.lang.String str2) {
        android.os.Bundle bundle;
        android.content.pm.PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(context.getApplicationInfo().sourceDir, 128);
        return (packageArchiveInfo == null || (bundle = packageArchiveInfo.applicationInfo.metaData) == null) ? str2 : bundle.getString(str, str2);
    }

    public static java.lang.String getMetadata(android.content.Context context, java.lang.String str, java.lang.String str2) throws android.content.pm.PackageManager.NameNotFoundException {
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData.getString(str, str2);
            }
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
        }
        return str2;
    }

    private int hashCode(java.lang.Object... objArr) {
        return java.util.Arrays.hashCode(objArr);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.mlsdk.common.MLApplicationSetting)) {
            return false;
        }
        com.huawei.hms.mlsdk.common.MLApplicationSetting mLApplicationSetting = (com.huawei.hms.mlsdk.common.MLApplicationSetting) obj;
        return equal(this.appId, mLApplicationSetting.appId) && equal(this.apiKey, mLApplicationSetting.apiKey);
    }

    public java.lang.Boolean getAcceptHa() {
        return this.acceptHa;
    }

    public java.lang.String getApiKey() {
        return this.apiKey;
    }

    public java.lang.String getAppId() {
        return this.appId;
    }

    public java.lang.String getCertFingerprint() {
        return this.certFingerprint;
    }

    public java.util.Map<java.lang.String, java.lang.Object> getExtProperties() {
        return this.extProperties;
    }

    public java.util.List<java.lang.String> getHaConnectorUrls() {
        return this.haCollectorUrls;
    }

    public java.lang.String getMLSdkVersion() {
        return this.mlSdkVersion;
    }

    public java.util.List<java.lang.String> getMLServiceUrls() {
        return this.mlServiceUrls;
    }

    public java.lang.String getPackageName() {
        return this.packageName;
    }

    public java.lang.String getRegion() {
        return this.region;
    }

    public int hashCode() {
        return hashCode(this.appId, this.apiKey);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("appId=");
        sbO.append(this.appId);
        sbO.append(", apiKey=");
        sbO.append(this.apiKey);
        sbO.append(", packageName=");
        sbO.append(this.packageName);
        sbO.append(", certFingerprint=");
        sbO.append(this.certFingerprint);
        sbO.append(", mlSdkVersion=");
        sbO.append(this.mlSdkVersion);
        sbO.append(", acceptHa=");
        sbO.append(this.acceptHa);
        sbO.append(", region=");
        sbO.append(this.region);
        sbO.append(", mlServiceUrls=");
        sbO.append(this.mlServiceUrls);
        sbO.append(", haCollectorUrls=");
        sbO.append(this.haCollectorUrls);
        return sbO.toString();
    }
}
