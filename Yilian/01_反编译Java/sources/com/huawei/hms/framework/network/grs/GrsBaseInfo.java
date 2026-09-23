package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class GrsBaseInfo implements java.lang.Cloneable {
    public static final java.lang.String TAG = "GrsBaseInfo";
    public java.lang.String androidVersion;
    public java.lang.String appName;
    public java.lang.String countrySource;
    public java.lang.String deviceModel;
    public java.lang.String issueCountry;
    public java.lang.String regCountry;
    public java.lang.String romVersion;
    public java.lang.String serCountry;
    public java.lang.String uid;
    public java.lang.String versionName;

    public @interface CountryCodeSource {
        public static final java.lang.String APP = "APP";
        public static final java.lang.String LOCALE_INFO = "LOCALE_INFO";
        public static final java.lang.String NETWORK_COUNTRY = "NETWORK_COUNTRY";
        public static final java.lang.String SIM_COUNTRY = "SIM_COUNTRY";
        public static final java.lang.String UNKNOWN = "UNKNOWN";
        public static final java.lang.String VENDOR_COUNTRY = "VENDOR_COUNTRY";
    }

    public GrsBaseInfo() {
    }

    public GrsBaseInfo(android.content.Context context) {
        this.issueCountry = com.huawei.hms.framework.network.grs.GrsApp.getInstance().getIssueCountryCode(context);
    }

    private java.lang.StringBuffer getStringBuffer(java.lang.StringBuffer stringBuffer, boolean z, android.content.Context context) throws java.io.UnsupportedEncodingException {
        java.lang.String androidVersion = getAndroidVersion();
        if (!android.text.TextUtils.isEmpty(androidVersion)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("android_version");
            stringBuffer.append("=");
            stringBuffer.append(androidVersion);
        }
        java.lang.String romVersion = getRomVersion();
        if (!android.text.TextUtils.isEmpty(romVersion)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("rom_version");
            stringBuffer.append("=");
            stringBuffer.append(romVersion);
        }
        java.lang.String deviceModel = getDeviceModel();
        if (!android.text.TextUtils.isEmpty(deviceModel)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("device_model");
            stringBuffer.append("=");
            stringBuffer.append(deviceModel);
        }
        java.lang.String strB = new com.huawei.hms.framework.network.grs.a.c(context, "share_pre_grs_conf_").b();
        if (!android.text.TextUtils.isEmpty(strB) && !z) {
            try {
                java.lang.String strEncode = java.net.URLEncoder.encode(strB, com.google.android.exoplayer2.C.UTF8_NAME);
                if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                    stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
                }
                stringBuffer.append("cp");
                stringBuffer.append("=");
                stringBuffer.append(strEncode);
            } catch (java.io.UnsupportedEncodingException e2) {
                com.huawei.hms.framework.common.Logger.e(TAG, "cp UnsupportedEncodingException.", e2);
            }
        }
        java.lang.String countrySource = getCountrySource();
        if (!android.text.TextUtils.isEmpty(countrySource)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("country_source");
            stringBuffer.append("=");
            stringBuffer.append(countrySource);
        }
        return stringBuffer;
    }

    private boolean isEqual(java.lang.String str, java.lang.String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        return (str == null || str2 == null || !str.equals(str2)) ? false : true;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.huawei.hms.framework.network.grs.GrsBaseInfo m3clone() {
        return (com.huawei.hms.framework.network.grs.GrsBaseInfo) super.clone();
    }

    public boolean compare(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.huawei.hms.framework.network.grs.GrsBaseInfo.class != obj.getClass() || !(obj instanceof com.huawei.hms.framework.network.grs.GrsBaseInfo)) {
            return false;
        }
        com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo = (com.huawei.hms.framework.network.grs.GrsBaseInfo) obj;
        return isEqual(this.serCountry, grsBaseInfo.serCountry) && isEqual(this.versionName, grsBaseInfo.versionName) && isEqual(this.appName, grsBaseInfo.appName) && isEqual(this.uid, grsBaseInfo.uid) && isEqual(this.regCountry, grsBaseInfo.regCountry) && isEqual(this.issueCountry, grsBaseInfo.issueCountry) && isEqual(this.androidVersion, grsBaseInfo.androidVersion) && isEqual(this.romVersion, grsBaseInfo.romVersion) && isEqual(this.deviceModel, grsBaseInfo.deviceModel) && isEqual(this.countrySource, grsBaseInfo.countrySource);
    }

    public com.huawei.hms.framework.network.grs.GrsBaseInfo copy() {
        com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo = new com.huawei.hms.framework.network.grs.GrsBaseInfo();
        grsBaseInfo.setAppName(this.appName);
        grsBaseInfo.setSerCountry(this.serCountry);
        grsBaseInfo.setRegCountry(this.regCountry);
        grsBaseInfo.setIssueCountry(this.issueCountry);
        grsBaseInfo.setCountrySource(this.countrySource);
        grsBaseInfo.setAndroidVersion(this.androidVersion);
        grsBaseInfo.setDeviceModel(this.deviceModel);
        grsBaseInfo.setRomVersion(this.romVersion);
        grsBaseInfo.setUid(this.uid);
        grsBaseInfo.setVersionName(this.versionName);
        return grsBaseInfo;
    }

    public java.lang.String getAndroidVersion() {
        return this.androidVersion;
    }

    public java.lang.String getAppName() {
        return this.appName;
    }

    public java.lang.String getCountrySource() {
        return this.countrySource;
    }

    public java.lang.String getDeviceModel() {
        return this.deviceModel;
    }

    public java.lang.String getGrsParasKey(boolean z, boolean z2, android.content.Context context) {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        com.huawei.hms.framework.network.grs.b.b bVarA = com.huawei.hms.framework.network.grs.b.b.a(context.getPackageName(), this);
        com.huawei.hms.framework.network.grs.local.model.a aVarA = bVarA != null ? bVarA.a() : null;
        java.lang.String strB = aVarA != null ? aVarA.b() : "";
        java.lang.String appName = getAppName();
        if (!android.text.TextUtils.isEmpty(appName) && android.text.TextUtils.isEmpty(strB)) {
            stringBuffer.append("app_name");
            stringBuffer.append("=");
            stringBuffer.append(appName);
        }
        java.lang.String grsReqParamJoint = getGrsReqParamJoint(z, z2, strB, context);
        if (!android.text.TextUtils.isEmpty(grsReqParamJoint)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append(grsReqParamJoint);
        }
        return stringBuffer.toString();
    }

    public java.lang.String getGrsParasTag(boolean z, boolean z2, android.content.Context context) {
        return getGrsParasKey(z, z2, context);
    }

    public java.lang.String getGrsReqParamJoint(boolean z, boolean z2, java.lang.String str, android.content.Context context) {
        java.lang.String strA;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        if ("1.0".equals(str)) {
            com.huawei.hms.framework.common.Logger.v(TAG, "1.0 interface has no query param appname");
        } else {
            if (!android.text.TextUtils.isEmpty(str)) {
                stringBuffer.append("app_name");
                stringBuffer.append("=");
            } else if (!android.text.TextUtils.isEmpty(getAppName())) {
                stringBuffer.append("app_name");
                stringBuffer.append("=");
                str = getAppName();
            }
            stringBuffer.append(str);
        }
        java.lang.String versionName = getVersionName();
        if (!android.text.TextUtils.isEmpty(versionName)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("app_version");
            stringBuffer.append("=");
            stringBuffer.append(versionName);
        }
        java.lang.String uid = getUid();
        if (!android.text.TextUtils.isEmpty(uid)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("uid");
            stringBuffer.append("=");
            if (z) {
                strA = com.huawei.hms.framework.network.grs.d.b.b(uid);
            } else if (z2) {
                strA = com.huawei.hms.framework.network.grs.d.b.a(uid);
            } else {
                stringBuffer.append(uid);
            }
            stringBuffer.append(strA);
        }
        java.lang.String regCountry = getRegCountry();
        if (!android.text.TextUtils.isEmpty(regCountry) && !"UNKNOWN".equals(regCountry)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("reg_country");
            stringBuffer.append("=");
            stringBuffer.append(regCountry);
        }
        java.lang.String serCountry = getSerCountry();
        if (!android.text.TextUtils.isEmpty(serCountry) && !"UNKNOWN".equals(serCountry)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("ser_country");
            stringBuffer.append("=");
            stringBuffer.append(serCountry);
        }
        java.lang.String issueCountry = getIssueCountry();
        if (!android.text.TextUtils.isEmpty(issueCountry) && !"UNKNOWN".equals(issueCountry)) {
            if (!android.text.TextUtils.isEmpty(stringBuffer.toString())) {
                stringBuffer.append(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            stringBuffer.append("issue_country");
            stringBuffer.append("=");
            stringBuffer.append(issueCountry);
        }
        return getStringBuffer(stringBuffer, z2, context).toString();
    }

    public java.lang.String getIssueCountry() {
        return this.issueCountry;
    }

    public java.lang.String getRegCountry() {
        return this.regCountry;
    }

    public java.lang.String getRomVersion() {
        return this.romVersion;
    }

    public java.lang.String getSerCountry() {
        return this.serCountry;
    }

    public java.lang.String getUid() {
        return this.uid;
    }

    public java.lang.String getVersionName() {
        return this.versionName;
    }

    public void setAndroidVersion(java.lang.String str) {
        this.androidVersion = str;
    }

    public void setAppName(java.lang.String str) {
        this.appName = str;
    }

    public void setCountrySource(java.lang.String str) {
        this.countrySource = str;
    }

    public void setDeviceModel(java.lang.String str) {
        this.deviceModel = str;
    }

    @java.lang.Deprecated
    public void setIssueCountry(java.lang.String str) {
        this.issueCountry = str;
    }

    public void setRegCountry(java.lang.String str) {
        this.regCountry = str;
    }

    public void setRomVersion(java.lang.String str) {
        this.romVersion = str;
    }

    public void setSerCountry(java.lang.String str) {
        this.serCountry = str;
    }

    public void setUid(java.lang.String str) {
        this.uid = str;
    }

    public void setVersionName(java.lang.String str) {
        this.versionName = str;
    }

    public int uniqueCode() {
        return (this.appName + "#" + this.serCountry + "#" + this.regCountry + "#" + this.issueCountry).hashCode();
    }
}
