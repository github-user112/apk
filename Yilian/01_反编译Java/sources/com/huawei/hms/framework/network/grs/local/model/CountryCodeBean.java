package com.huawei.hms.framework.network.grs.local.model;

/* loaded from: classes.dex */
public class CountryCodeBean {
    public static final java.lang.String ANDRIOD_SYSTEMPROP = "android.os.SystemProperties";
    public static final int COUNTRYCODE_SIZE = 2;
    public static final java.lang.String LOCALE_COUNTRYSYSTEMPROP = "ro.product.locale";
    public static final java.lang.String LOCALE_REGION_COUNTRYSYSTEMPROP = "ro.product.locale.region";
    public static final java.lang.String SPECIAL_COUNTRYCODE_CN = "cn";
    public static final java.lang.String SPECIAL_COUNTRYCODE_EU = "eu";
    public static final java.lang.String SPECIAL_COUNTRYCODE_GB = "gb";
    public static final java.lang.String SPECIAL_COUNTRYCODE_LA = "la";
    public static final java.lang.String SPECIAL_COUNTRYCODE_UK = "uk";
    public static final java.lang.String TAG = "CountryCodeBean";
    public static final java.lang.String VENDORCOUNTRY_SYSTEMPROP = "ro.hw.country";
    public java.lang.String countryCode;
    public java.lang.String countrySource = "UNKNOWN";

    public CountryCodeBean(android.content.Context context, boolean z) {
        this.countryCode = "UNKNOWN";
        init(context, z);
        this.countryCode = this.countryCode.toUpperCase(java.util.Locale.ENGLISH);
    }

    private void checkCodeLenth() {
        java.lang.String str = this.countryCode;
        if (str == null || str.length() != 2) {
            this.countryCode = "UNKNOWN";
            this.countrySource = "UNKNOWN";
        }
    }

    private void getLocaleCountryCode() throws java.lang.ClassNotFoundException {
        if (com.huawei.hms.framework.common.EmuiUtil.isUpPVersion()) {
            getRegionSettingCountryCode();
        } else {
            getProductCountryCode();
        }
        this.countrySource = "LOCALE_INFO";
    }

    private void getProductCountryCode() throws java.lang.ClassNotFoundException {
        int iLastIndexOf;
        this.countryCode = com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", "ro.product.locale.region", "android.os.SystemProperties", "UNKNOWN");
        java.lang.String str = TAG;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("countryCode by ro.product.locale.region is:");
        sbO.append(this.countryCode);
        com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
        if (android.text.TextUtils.isEmpty(this.countryCode) || "UNKNOWN".equals(this.countryCode)) {
            java.lang.String property = com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", LOCALE_COUNTRYSYSTEMPROP, "android.os.SystemProperties", "UNKNOWN");
            if (!android.text.TextUtils.isEmpty(property) && (iLastIndexOf = property.lastIndexOf("-")) != -1) {
                this.countryCode = property.substring(iLastIndexOf + 1);
                java.lang.String str2 = TAG;
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("countryCode by ro.product.locale is:");
                sbO2.append(this.countryCode);
                com.huawei.hms.framework.common.Logger.i(str2, sbO2.toString());
            }
        }
        if ("cn".equalsIgnoreCase(this.countryCode)) {
            return;
        }
        this.countryCode = "UNKNOWN";
    }

    private void getRegionSettingCountryCode() {
        this.countryCode = java.util.Locale.getDefault().getCountry();
        java.lang.String str = TAG;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("countryCode by system's region setting is: ");
        sbO.append(this.countryCode);
        com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
        if (android.text.TextUtils.isEmpty(this.countryCode)) {
            this.countryCode = "UNKNOWN";
        }
    }

    private void getSimCountryCode(android.content.Context context) {
        getSimCountryCode(context, false);
    }

    private void getSimCountryCode(android.content.Context context, boolean z) {
        java.lang.String str;
        java.lang.StringBuilder sb;
        java.lang.String str2;
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getApplicationContext().getSystemService("phone");
        if (telephonyManager != null) {
            if (!z || telephonyManager.getPhoneType() == 2) {
                this.countryCode = telephonyManager.getSimCountryIso();
                this.countrySource = "SIM_COUNTRY";
                str = TAG;
                sb = new java.lang.StringBuilder();
                str2 = "countryCode by SimCountryIso is: ";
            } else {
                this.countryCode = telephonyManager.getNetworkCountryIso();
                this.countrySource = "NETWORK_COUNTRY";
                str = TAG;
                sb = new java.lang.StringBuilder();
                str2 = "countryCode by NetworkCountryIso is: ";
            }
            sb.append(str2);
            sb.append(this.countryCode);
            com.huawei.hms.framework.common.Logger.i(str, sb.toString());
        }
        checkCodeLenth();
    }

    private void getVendorCountryCode() {
        this.countrySource = "VENDOR_COUNTRY";
        this.countryCode = com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN");
        java.lang.String str = TAG;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("countryCode by ro.hw.country is: ");
        sbO.append(this.countryCode);
        com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
        if ("eu".equalsIgnoreCase(this.countryCode) || "la".equalsIgnoreCase(this.countryCode)) {
            this.countryCode = "UNKNOWN";
            this.countrySource = "UNKNOWN";
        } else {
            if (!SPECIAL_COUNTRYCODE_UK.equalsIgnoreCase(this.countryCode)) {
                checkCodeLenth();
                return;
            }
            com.huawei.hms.framework.common.Logger.i(TAG, "special country of UK to map GB.");
            this.countryCode = SPECIAL_COUNTRYCODE_GB;
            this.countrySource = "VENDOR_COUNTRY";
        }
    }

    private void init(android.content.Context context, boolean z) {
        if (context == null) {
            throw new java.lang.NullPointerException("context must be not null.Please provide app's Context");
        }
        try {
            getVendorCountryCode();
            if (isCodeValidate()) {
                com.huawei.hms.framework.common.Logger.i(TAG, "get issue_country code from VENDOR_COUNTRY");
                return;
            }
            getSimCountryCode(context);
            if (isCodeValidate()) {
                com.huawei.hms.framework.common.Logger.i(TAG, "get issue_country code from SIM_COUNTRY");
                return;
            }
            getLocaleCountryCode();
            if (isCodeValidate()) {
                com.huawei.hms.framework.common.Logger.i(TAG, "get issue_country code from LOCALE_INFO");
            }
        } catch (java.lang.Exception unused) {
            com.huawei.hms.framework.common.Logger.w(TAG, "get CountryCode error");
        }
    }

    private boolean isCodeValidate() {
        return !"UNKNOWN".equals(this.countryCode);
    }

    public java.lang.String getCountryCode() {
        return this.countryCode;
    }

    public java.lang.String getCountrySource() {
        return this.countrySource;
    }
}
