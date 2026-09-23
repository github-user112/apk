package com.huawei.hms.ml.common.utils;

/* loaded from: classes.dex */
public class CountryCodeBean {
    public static final java.lang.String ANDRIOD_SYSTEMPROP = "android.os.SystemProperties";
    public static final int COUNTRYCODE_SIZE = 2;
    public static final java.lang.String LOCALE_COUNTRYSYSTEMPROP = "ro.product.locale.region";
    public static final java.lang.String LOCALE_INFO = "LOCALE_INFO";
    public static final java.lang.String NETWORK_COUNTRY = "NETWORK_COUNTRY";
    public static final java.lang.String SIM_COUNTRY = "SIM_COUNTRY";
    public static final java.lang.String SPECIAL_COUNTRYCODE_CN = "cn";
    public static final java.lang.String SPECIAL_COUNTRYCODE_EU = "eu";
    public static final java.lang.String SPECIAL_COUNTRYCODE_LA = "la";
    public static final java.lang.String TAG = "CountryCodeBean";
    public static final java.lang.String UNKNOWN = "UNKNOWN";
    public static final java.lang.String VENDORCOUNTRY_SYSTEMPROP = "ro.hw.country";
    public static final java.lang.String VENDOR_COUNTRY = "VENDOR_COUNTRY";
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

    private void getLocaleCountryCode() {
        this.countryCode = getProperty("get", "ro.product.locale.region", "android.os.SystemProperties", "UNKNOWN");
        this.countrySource = "LOCALE_INFO";
        java.lang.String str = TAG;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("getLocaleCountryCode=");
        sbO.append(this.countryCode);
        com.huawei.hms.ml.common.utils.SmartLog.e(str, sbO.toString());
        if ("cn".equalsIgnoreCase(this.countryCode)) {
            return;
        }
        com.huawei.hms.ml.common.utils.SmartLog.e(TAG, "getLocaleCountryCode from system language is not reliable.");
        this.countryCode = "UNKNOWN";
        this.countrySource = "UNKNOWN";
    }

    public static java.lang.String getProperty(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) throws java.lang.ClassNotFoundException {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2) || android.text.TextUtils.isEmpty(str3)) {
            com.huawei.hms.ml.common.utils.SmartLog.w(TAG, "reflect class for method has exception.");
            return str4;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName(str3);
            return (java.lang.String) cls.getMethod(str, java.lang.String.class, java.lang.String.class).invoke(cls, str2, str4);
        } catch (java.lang.RuntimeException e2) {
            throw e2;
        } catch (java.lang.Exception e3) {
            com.huawei.hms.ml.common.utils.SmartLog.e(TAG, "getProperty catch exception: ", e3);
            return str4;
        }
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
                str2 = "getSimCountryCode by not enableNetwork, countryCode=";
            } else {
                this.countryCode = telephonyManager.getNetworkCountryIso();
                this.countrySource = "NETWORK_COUNTRY";
                str = TAG;
                sb = new java.lang.StringBuilder();
                str2 = "getSimCountryCode by enableNetwork, countryCode=";
            }
            sb.append(str2);
            sb.append(this.countryCode);
            com.huawei.hms.ml.common.utils.SmartLog.e(str, sb.toString());
        }
        checkCodeLenth();
    }

    private void getVendorCountryCode() {
        this.countrySource = "VENDOR_COUNTRY";
        this.countryCode = getProperty("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN");
        java.lang.String str = TAG;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("getVendorCountry=");
        sbO.append(this.countryCode);
        com.huawei.hms.ml.common.utils.SmartLog.e(str, sbO.toString());
        if (!"eu".equalsIgnoreCase(this.countryCode) && !"la".equalsIgnoreCase(this.countryCode)) {
            checkCodeLenth();
            return;
        }
        com.huawei.hms.ml.common.utils.SmartLog.e(TAG, "getVendorCountry equals eu or la ,not reliable");
        this.countryCode = "UNKNOWN";
        this.countrySource = "UNKNOWN";
    }

    private void init(android.content.Context context, boolean z) {
        if (context == null) {
            throw new java.lang.NullPointerException("context must be not null.Please provide app's Context");
        }
        try {
            getVendorCountryCode();
            if (isCodeValidate()) {
                com.huawei.hms.ml.common.utils.SmartLog.d(TAG, "getCountryCode get country code from {%s}", "VENDOR_COUNTRY");
                return;
            }
            getSimCountryCode(context, z);
            if (isCodeValidate()) {
                com.huawei.hms.ml.common.utils.SmartLog.d(TAG, "getCountryCode get country code from {%s}", "SIM_COUNTRY");
                return;
            }
            getLocaleCountryCode();
            if (isCodeValidate()) {
                com.huawei.hms.ml.common.utils.SmartLog.d(TAG, "getCountryCode get country code from {%s}", "LOCALE_INFO");
            }
        } catch (java.lang.Exception unused) {
            com.huawei.hms.ml.common.utils.SmartLog.w(TAG, "get CountryCode error");
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
