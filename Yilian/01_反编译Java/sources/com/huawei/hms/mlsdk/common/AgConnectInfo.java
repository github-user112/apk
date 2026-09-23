package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public class AgConnectInfo {
    public java.lang.String apiKey;
    public java.lang.String applicationId;
    public java.lang.String certFingerprint;
    public java.util.List<java.lang.String> haCollectorUrls;
    public java.util.List<java.lang.String> mlServiceUrls;
    public java.lang.String packageName;
    public java.lang.String region;

    public static final class AgConnectKey {
        public static java.lang.String ANALYTICS_COLLECTOR_URL = "service/analytics/collector_url";
        public static java.lang.String API_KEY = "client/api_key";
        public static java.lang.String APPLICATION_ID = "client/app_id";
        public static java.lang.String ML_SERVICE_URL = "service/ml/mlservice_url";
        public static java.lang.String PACKAGE_NAME = "client/package_name";
        public static java.lang.String REGION = "region";
    }

    public AgConnectInfo() {
        this(null);
    }

    public AgConnectInfo(android.content.Context context) {
        this.mlServiceUrls = new java.util.ArrayList();
        this.haCollectorUrls = new java.util.ArrayList();
        context = context == null ? e.d.a.b.c.a.b.a : context;
        if (context == null) {
            throw new java.lang.IllegalStateException("Context not found.");
        }
        e.d.a.a.a aVarA = e.d.a.a.a.a(context);
        com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "context: " + context);
        this.region = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.REGION);
        com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "region: " + this.region);
        java.lang.String strB = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.PACKAGE_NAME);
        this.packageName = strB;
        if (strB == null) {
            this.packageName = context.getPackageName();
        } else {
            com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "packageName: " + this.packageName);
        }
        java.lang.String strB2 = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.APPLICATION_ID);
        this.applicationId = strB2;
        if (strB2 == null) {
            this.applicationId = this.packageName;
        } else {
            com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "packageName: " + this.packageName);
        }
        this.apiKey = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.API_KEY);
        com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "apiKey: " + this.apiKey);
        this.certFingerprint = getRawSignature(context);
        com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", "AGConnectServicesConfig: " + aVarA + "certFingerprint: " + this.certFingerprint);
        java.lang.String strB3 = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.ML_SERVICE_URL);
        if (strB3 != null) {
            for (java.lang.String str : strB3.split(",")) {
                java.lang.String lowerCase = str.trim().toLowerCase(java.util.Locale.ENGLISH);
                if (!lowerCase.startsWith("http://") && !lowerCase.startsWith("https://")) {
                    lowerCase = e.a.c.a.a.e("https://", lowerCase);
                }
                if (!lowerCase.endsWith(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)) {
                    lowerCase = e.a.c.a.a.e(lowerCase, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                }
                this.mlServiceUrls.add(lowerCase);
            }
        }
        java.lang.String strB4 = aVarA.b(com.huawei.hms.mlsdk.common.AgConnectInfo.AgConnectKey.ANALYTICS_COLLECTOR_URL);
        if (strB4 != null) {
            for (java.lang.String str2 : strB4.split(",")) {
                java.lang.String lowerCase2 = str2.trim().toLowerCase(java.util.Locale.ENGLISH);
                if (!lowerCase2.startsWith("http://") && !lowerCase2.startsWith("https://")) {
                    lowerCase2 = e.a.c.a.a.e("https://", lowerCase2);
                }
                this.haCollectorUrls.add(lowerCase2);
            }
        }
    }

    private java.lang.String getRawSignature(android.content.Context context) throws android.content.pm.PackageManager.NameNotFoundException {
        android.content.pm.PackageInfo packageInfo;
        java.lang.String str;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
        }
        if (packageInfo == null) {
            return "";
        }
        android.content.pm.Signature signature = null;
        android.content.pm.Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length <= 0) {
            str = "signature is null ";
        } else {
            signature = signatureArr[0];
            str = "signature is not null ";
        }
        com.huawei.hms.ml.common.utils.SmartLog.i("AgConnectInfo", str);
        if (signature != null) {
            return getSignatureString(signature, "SHA256");
        }
        return "";
    }

    private final java.lang.String getSignatureString(android.content.pm.Signature signature, java.lang.String str) {
        byte b;
        try {
            byte[] byteArray = signature.toByteArray();
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance(str);
            messageDigest.reset();
            messageDigest.update(byteArray);
            byte[] bArrDigest = messageDigest.digest();
            for (int i = 0; i < bArrDigest.length; i++) {
                if (java.lang.Integer.toHexString(bArrDigest[i] & 255).length() == 1) {
                    stringBuffer.append("0");
                    b = bArrDigest[i];
                } else {
                    b = bArrDigest[i];
                }
                stringBuffer.append(java.lang.Integer.toHexString(b & 255));
                if (i != bArrDigest.length - 1) {
                    stringBuffer.append(":");
                }
            }
            return stringBuffer.toString().toUpperCase(java.util.Locale.ENGLISH);
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public java.lang.String getApiKey() {
        return this.apiKey;
    }

    public java.lang.String getApplicationId() {
        return this.applicationId;
    }

    public java.lang.String getCertFingerprint() {
        return this.certFingerprint;
    }

    public java.util.List<java.lang.String> getHaCollectorUrls() {
        return this.haCollectorUrls;
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
}
