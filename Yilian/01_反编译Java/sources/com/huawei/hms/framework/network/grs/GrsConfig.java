package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class GrsConfig {
    public java.lang.String appName;
    public java.lang.String countrySource;
    public java.lang.String issueCountry;
    public java.lang.String regCountry;
    public java.lang.String serCountry;
    public java.lang.String userId;
    public java.lang.String versionName;

    public boolean equal(com.huawei.hms.framework.network.grs.GrsConfig grsConfig) {
        return grsConfig != null && com.huawei.hms.framework.common.StringUtils.strEquals(this.appName, grsConfig.getAppName()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.serCountry, grsConfig.getSerCountry()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.regCountry, grsConfig.getRegCountry()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.issueCountry, grsConfig.getIssueCountry()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.userId, grsConfig.getuserId()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.versionName, grsConfig.getVersionName()) && com.huawei.hms.framework.common.StringUtils.strEquals(this.countrySource, grsConfig.getCountrySource());
    }

    public java.lang.String getAppName() {
        return this.appName;
    }

    public java.lang.String getCountrySource() {
        return this.countrySource;
    }

    public com.huawei.hms.framework.network.grs.GrsBaseInfo getGrsBaseInfo(android.content.Context context) {
        com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo = new com.huawei.hms.framework.network.grs.GrsBaseInfo();
        grsBaseInfo.setSerCountry(this.serCountry);
        grsBaseInfo.setVersionName(android.text.TextUtils.isEmpty(this.versionName) ? com.huawei.hms.framework.common.PackageUtils.getVersionName(context) : this.versionName);
        grsBaseInfo.setAppName(this.appName);
        grsBaseInfo.setUid(this.userId);
        grsBaseInfo.setRegCountry(this.regCountry);
        grsBaseInfo.setIssueCountry(this.issueCountry);
        grsBaseInfo.setCountrySource(this.countrySource);
        return grsBaseInfo;
    }

    public java.lang.String getIssueCountry() {
        return this.issueCountry;
    }

    public java.lang.String getRegCountry() {
        return this.regCountry;
    }

    public java.lang.String getSerCountry() {
        return this.serCountry;
    }

    public java.lang.String getVersionName() {
        return this.versionName;
    }

    public java.lang.String getuserId() {
        return this.userId;
    }

    public void setAppName(java.lang.String str) {
        this.appName = str;
    }

    public void setCountrySource(java.lang.String str) {
        this.countrySource = str;
    }

    public void setIssueCountry(java.lang.String str) {
        this.issueCountry = str;
    }

    public void setRegCountry(java.lang.String str) {
        this.regCountry = str;
    }

    public void setSerCountry(java.lang.String str) {
        this.serCountry = str;
    }

    public void setUserId(java.lang.String str) {
        this.userId = str;
    }

    public void setVersionName(java.lang.String str) {
        this.versionName = str;
    }
}
