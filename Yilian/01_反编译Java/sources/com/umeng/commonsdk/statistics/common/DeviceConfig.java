package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public class DeviceConfig {
    public static final int DEFAULT_TIMEZONE = 8;
    public static final java.lang.String KEY_EMUI_VERSION_CODE = "ro.build.hw_emui_api_level";
    public static final java.lang.String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    public static final java.lang.String LOG_TAG = "com.umeng.commonsdk.statistics.common.DeviceConfig";
    public static final java.lang.String MOBILE_NETWORK = "2G/3G";
    public static final java.lang.String UNKNOW = "";
    public static final java.lang.String WIFI = "Wi-Fi";
    public static com.umeng.commonsdk.statistics.common.DeviceTypeEnum deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.DEFAULT;
    public static java.lang.String sWifiMac = "";
    public static java.lang.String sImei = "";
    public static java.lang.String sMeid = "";
    public static java.lang.String sImsi = "";

    public static java.lang.String byte2HexFormatted(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            java.lang.String hexString = java.lang.Integer.toHexString(bArr[i]);
            int length = hexString.length();
            if (length == 1) {
                hexString = e.a.c.a.a.e("0", hexString);
            }
            if (length > 2) {
                hexString = hexString.substring(length - 2, length);
            }
            sb.append(hexString.toUpperCase(java.util.Locale.getDefault()));
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static boolean checkPermission(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            try {
                if (((java.lang.Integer) java.lang.Class.forName("android.content.Context").getMethod("checkSelfPermission", java.lang.String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (java.lang.Throwable unused) {
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static java.lang.String getAndroidId(android.content.Context context) {
        if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i) && context != null) {
            try {
                return android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
            } catch (java.lang.Exception unused) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.w("can't read android id");
                }
            }
        }
        return null;
    }

    public static java.lang.String getAppHashKey(android.content.Context context) {
        try {
            android.content.pm.Signature[] signatureArr = context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures;
            if (signatureArr.length <= 0) {
                return null;
            }
            android.content.pm.Signature signature = signatureArr[0];
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA");
            messageDigest.update(signature.toByteArray());
            return android.util.Base64.encodeToString(messageDigest.digest(), 0).trim();
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getAppMD5Signature(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return byte2HexFormatted(java.security.MessageDigest.getInstance("MD5").digest(((java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X509").generateCertificate(new java.io.ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getAppName(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (java.lang.Throwable th) {
            if (!com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, th);
            return null;
        }
    }

    public static java.lang.String getAppSHA1Key(android.content.Context context) {
        try {
            return byte2HexFormatted(java.security.MessageDigest.getInstance("SHA1").digest(((java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X509").generateCertificate(new java.io.ByteArrayInputStream(context.getPackageManager().getPackageInfo(getPackageName(context), 64).signatures[0].toByteArray()))).getEncoded()));
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getAppVersionCode(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(context);
    }

    public static java.lang.String getAppVersionName(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.getAppVersionName(context);
    }

    public static java.lang.String getApplicationLable(android.content.Context context) {
        return context == null ? "" : context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static java.util.Properties getBuildProp() {
        java.io.FileInputStream fileInputStream;
        java.util.Properties properties = new java.util.Properties();
        java.io.FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new java.io.FileInputStream(new java.io.File(android.os.Environment.getRootDirectory(), "build.prop"));
            } catch (java.lang.Throwable unused) {
            }
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
            } catch (java.lang.Throwable unused2) {
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                return properties;
            }
        } catch (java.lang.Throwable unused3) {
        }
        return properties;
    }

    public static java.lang.String getCPU() {
        java.lang.String line = null;
        try {
            java.io.FileReader fileReader = new java.io.FileReader("/proc/cpuinfo");
            try {
                java.io.BufferedReader bufferedReader = new java.io.BufferedReader(fileReader, 1024);
                line = bufferedReader.readLine();
                bufferedReader.close();
                fileReader.close();
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "Could not read from file /proc/cpuinfo", th);
            }
        } catch (java.io.FileNotFoundException e2) {
            com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "Could not open file /proc/cpuinfo", e2);
        }
        return line != null ? line.substring(line.indexOf(58) + 1).trim() : "";
    }

    public static java.lang.String getDBencryptID(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.genId();
    }

    public static java.lang.String getDeviceId(android.content.Context context) {
        return com.umeng.commonsdk.statistics.AnalyticsConstants.getDeviceType() == 2 ? getDeviceIdForBox(context) : getDeviceIdForGeneral(context);
    }

    public static java.lang.String getDeviceIdForBox(android.content.Context context) {
        com.umeng.commonsdk.statistics.common.DeviceTypeEnum deviceTypeEnum2;
        java.lang.String serialNo = "";
        if (context == null) {
            return "";
        }
        if (android.os.Build.VERSION.SDK_INT < 23) {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                serialNo = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, ANDROID_ID: " + serialNo);
                }
            }
            if (android.text.TextUtils.isEmpty(serialNo)) {
                serialNo = getMacBySystemInterface(context);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, MAC: " + serialNo);
                }
                if (android.text.TextUtils.isEmpty(serialNo)) {
                    serialNo = getSerialNo();
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                    if (android.text.TextUtils.isEmpty(serialNo)) {
                        serialNo = getIMEI(context);
                        deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
                    }
                }
            }
            return serialNo;
        }
        if (android.os.Build.VERSION.SDK_INT == 23) {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                serialNo = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, ANDROID_ID: " + serialNo);
                }
            }
            if (android.text.TextUtils.isEmpty(serialNo)) {
                serialNo = getMacByJavaAPI();
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                if (android.text.TextUtils.isEmpty(serialNo)) {
                    serialNo = com.umeng.commonsdk.statistics.AnalyticsConstants.CHECK_DEVICE ? getMacShell() : getMacBySystemInterface(context);
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                }
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, MAC: " + serialNo);
                }
                if (android.text.TextUtils.isEmpty(serialNo)) {
                    serialNo = getSerialNo();
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                    if (android.text.TextUtils.isEmpty(serialNo)) {
                        serialNo = getIMEI(context);
                        deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
                    }
                }
            }
        } else if (android.os.Build.VERSION.SDK_INT >= 29) {
            serialNo = getOaid(context);
            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.OAID;
            if (android.text.TextUtils.isEmpty(serialNo)) {
                serialNo = getIdfa(context);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IDFA;
                if (android.text.TextUtils.isEmpty(serialNo)) {
                    serialNo = getAndroidId(context);
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                    if (android.text.TextUtils.isEmpty(serialNo)) {
                        serialNo = getSerialNo();
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                        if (android.text.TextUtils.isEmpty(serialNo)) {
                            serialNo = getMacByJavaAPI();
                            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            if (android.text.TextUtils.isEmpty(serialNo)) {
                                serialNo = getMacBySystemInterface(context);
                                deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            }
                        }
                    }
                }
            }
        } else {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                serialNo = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId: ANDROID_ID: " + serialNo);
                }
            }
            if (android.text.TextUtils.isEmpty(serialNo)) {
                serialNo = getSerialNo();
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                if (android.text.TextUtils.isEmpty(serialNo)) {
                    serialNo = getIMEI(context);
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
                    if (android.text.TextUtils.isEmpty(serialNo)) {
                        serialNo = getMacByJavaAPI();
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                        if (android.text.TextUtils.isEmpty(serialNo)) {
                            serialNo = getMacBySystemInterface(context);
                            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                                com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, MAC: " + serialNo);
                            }
                        }
                    }
                }
            }
        }
        return serialNo;
        deviceTypeEnum = deviceTypeEnum2;
        return serialNo;
    }

    public static java.lang.String getDeviceIdForGeneral(android.content.Context context) {
        com.umeng.commonsdk.statistics.common.DeviceTypeEnum deviceTypeEnum2;
        java.lang.String imei = "";
        if (context == null) {
            return "";
        }
        if (android.os.Build.VERSION.SDK_INT < 23) {
            imei = getIMEI(context);
            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
            if (android.text.TextUtils.isEmpty(imei)) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.w(LOG_TAG, "No IMEI.");
                }
                imei = getMacBySystemInterface(context);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                if (android.text.TextUtils.isEmpty(imei)) {
                    if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                        imei = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, ANDROID_ID: " + imei);
                        }
                    }
                    if (android.text.TextUtils.isEmpty(imei)) {
                        imei = getSerialNo();
                        deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                    }
                }
            }
            return imei;
        }
        if (android.os.Build.VERSION.SDK_INT == 23) {
            imei = getIMEI(context);
            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
            if (android.text.TextUtils.isEmpty(imei)) {
                imei = getMacByJavaAPI();
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                if (android.text.TextUtils.isEmpty(imei)) {
                    imei = com.umeng.commonsdk.statistics.AnalyticsConstants.CHECK_DEVICE ? getMacShell() : getMacBySystemInterface(context);
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                }
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, MAC: " + imei);
                }
                if (android.text.TextUtils.isEmpty(imei)) {
                    if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                        imei = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, ANDROID_ID: " + imei);
                        }
                    }
                    if (android.text.TextUtils.isEmpty(imei)) {
                        imei = getSerialNo();
                        deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                    }
                }
            }
        } else if (android.os.Build.VERSION.SDK_INT >= 29) {
            imei = getOaid(context);
            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.OAID;
            if (android.text.TextUtils.isEmpty(imei)) {
                imei = getIdfa(context);
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IDFA;
                if (android.text.TextUtils.isEmpty(imei)) {
                    imei = getAndroidId(context);
                    deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                    if (android.text.TextUtils.isEmpty(imei)) {
                        imei = getSerialNo();
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                        if (android.text.TextUtils.isEmpty(imei)) {
                            imei = getMacByJavaAPI();
                            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            if (android.text.TextUtils.isEmpty(imei)) {
                                imei = getMacBySystemInterface(context);
                                deviceTypeEnum2 = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            }
                        }
                    }
                }
            }
        } else {
            imei = getIMEI(context);
            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.IMEI;
            if (android.text.TextUtils.isEmpty(imei)) {
                imei = getSerialNo();
                deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.SERIALNO;
                if (android.text.TextUtils.isEmpty(imei)) {
                    if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.i)) {
                        imei = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.ANDROIDID;
                        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, ANDROID_ID: " + imei);
                        }
                    }
                    if (android.text.TextUtils.isEmpty(imei)) {
                        imei = getMacByJavaAPI();
                        deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                        if (android.text.TextUtils.isEmpty(imei)) {
                            imei = getMacBySystemInterface(context);
                            deviceTypeEnum = com.umeng.commonsdk.statistics.common.DeviceTypeEnum.MAC;
                            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                                com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, MAC: " + imei);
                            }
                        }
                    }
                }
            }
        }
        return imei;
        deviceTypeEnum = deviceTypeEnum2;
        return imei;
    }

    public static java.lang.String getDeviceIdType() {
        return deviceTypeEnum.getDeviceIdType();
    }

    public static java.lang.String getDeviceIdUmengMD5(android.content.Context context) {
        return com.umeng.commonsdk.statistics.common.HelperUtils.getUmengMD5(getDeviceId(context));
    }

    public static java.lang.String getDeviceType(android.content.Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (java.lang.Throwable unused) {
            return "Phone";
        }
    }

    public static java.lang.String getDisplayResolution(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
            android.view.WindowManager windowManager = (android.view.WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                return java.lang.String.valueOf(displayMetrics.heightPixels) + "*" + java.lang.String.valueOf(i);
            }
        } catch (java.lang.Throwable unused) {
        }
        return "";
    }

    public static java.lang.String getEmuiVersion(java.util.Properties properties) {
        try {
            return properties.getProperty(KEY_EMUI_VERSION_CODE, null);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getFlymeVersion(java.util.Properties properties) {
        try {
            java.lang.String lowerCase = properties.getProperty("ro.build.display.id").toLowerCase(java.util.Locale.getDefault());
            if (lowerCase.contains("flyme os")) {
                return lowerCase.split(" ")[2];
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String[] getGPU(javax.microedition.khronos.opengles.GL10 gl10) {
        try {
            return new java.lang.String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "Could not read gpu infor:", th);
            }
            return new java.lang.String[0];
        }
    }

    public static android.app.Activity getGlobleActivity(android.content.Context context) {
        android.app.Activity activity = null;
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.app.ActivityThread");
            java.lang.Object objInvoke = cls.getMethod("currentActivityThread", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            java.lang.reflect.Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (java.lang.Object obj : ((java.util.Map) declaredField.get(objInvoke)).values()) {
                java.lang.Class<?> cls2 = obj.getClass();
                java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    java.lang.reflect.Field declaredField3 = cls2.getDeclaredField(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
                    declaredField3.setAccessible(true);
                    activity = (android.app.Activity) declaredField3.get(obj);
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        return activity;
    }

    public static java.lang.String getIMEI(android.content.Context context) {
        java.lang.Throwable th;
        java.lang.String deviceId;
        if (!android.text.TextUtils.isEmpty(sImei)) {
            return sImei;
        }
        java.lang.String str = "";
        if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.f1612g)) {
            if (context == null) {
                return "";
            }
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                try {
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    deviceId = "";
                }
                if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    deviceId = telephonyManager.getDeviceId();
                    try {
                        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "getDeviceId, IMEI: " + deviceId);
                        }
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                            com.umeng.commonsdk.statistics.common.MLog.w(LOG_TAG, "No IMEI.", th);
                        }
                        str = deviceId;
                        sImei = str;
                        return str;
                    }
                    str = deviceId;
                }
            }
        }
        sImei = str;
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getIPAddress(android.content.Context r7) {
        /*
            r7 = 0
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.net.SocketException -> L6a
            java.util.ArrayList r0 = java.util.Collections.list(r0)     // Catch: java.net.SocketException -> L6a
            java.util.Iterator r0 = r0.iterator()     // Catch: java.net.SocketException -> L6a
            r1 = r7
        Le:
            boolean r2 = r0.hasNext()     // Catch: java.net.SocketException -> L69
            if (r2 == 0) goto L6e
            java.lang.Object r2 = r0.next()     // Catch: java.net.SocketException -> L69
            java.net.NetworkInterface r2 = (java.net.NetworkInterface) r2     // Catch: java.net.SocketException -> L69
            java.util.Enumeration r3 = r2.getInetAddresses()     // Catch: java.net.SocketException -> L69
            java.util.ArrayList r3 = java.util.Collections.list(r3)     // Catch: java.net.SocketException -> L69
            java.util.Iterator r3 = r3.iterator()     // Catch: java.net.SocketException -> L69
        L26:
            boolean r4 = r3.hasNext()     // Catch: java.net.SocketException -> L69
            if (r4 == 0) goto Le
            java.lang.Object r4 = r3.next()     // Catch: java.net.SocketException -> L69
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.SocketException -> L69
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            java.lang.String r6 = "dummy"
            if (r5 != 0) goto L4e
            boolean r5 = r4 instanceof java.net.Inet4Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L4e
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L4e
            if (r7 != 0) goto L4e
            java.lang.String r7 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
        L4e:
            boolean r5 = r4.isLoopbackAddress()     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            boolean r5 = r4 instanceof java.net.Inet6Address     // Catch: java.net.SocketException -> L69
            if (r5 == 0) goto L26
            java.lang.String r5 = r2.getDisplayName()     // Catch: java.net.SocketException -> L69
            boolean r5 = r5.contains(r6)     // Catch: java.net.SocketException -> L69
            if (r5 != 0) goto L26
            if (r1 != 0) goto L26
            java.lang.String r1 = r4.getHostAddress()     // Catch: java.net.SocketException -> L69
            goto L26
        L69:
            r7 = r1
        L6a:
            java.lang.String r0 = "SocketException"
            r1 = r7
            r7 = r0
        L6e:
            if (r7 == 0) goto L71
            return r7
        L71:
            if (r1 != 0) goto L75
            java.lang.String r1 = "null"
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getIPAddress(android.content.Context):java.lang.String");
    }

    public static java.lang.String getIdfa(android.content.Context context) {
        try {
            return com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.w) ? com.umeng.commonsdk.statistics.common.a.a(context) : "";
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static java.lang.String getImei(android.content.Context context) {
        android.telephony.TelephonyManager telephonyManager;
        if (!android.text.TextUtils.isEmpty(sImei)) {
            return sImei;
        }
        java.lang.String deviceId = null;
        try {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.f1612g) && context != null && (telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone")) != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                deviceId = telephonyManager.getDeviceId();
            }
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                com.umeng.commonsdk.statistics.common.MLog.w("No IMEI.", e2);
            }
        }
        sImei = deviceId;
        return deviceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e A[Catch: Exception -> 0x0053, TRY_LEAVE, TryCatch #1 {Exception -> 0x0053, blocks: (B:7:0x000c, B:10:0x0016, B:12:0x0020, B:14:0x0028, B:21:0x004e, B:19:0x0048), top: B:32:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getImeiNew(android.content.Context r5) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r5 = com.umeng.commonsdk.statistics.common.DeviceConfig.sImei
            return r5
        Lb:
            r0 = 0
            java.lang.String r1 = "header_device_id_imei"
            boolean r1 = com.umeng.commonsdk.config.FieldManager.allow(r1)     // Catch: java.lang.Exception -> L53
            if (r1 == 0) goto L5d
            if (r5 == 0) goto L5d
            java.lang.String r1 = "phone"
            java.lang.Object r1 = r5.getSystemService(r1)     // Catch: java.lang.Exception -> L53
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1     // Catch: java.lang.Exception -> L53
            if (r1 == 0) goto L5d
            java.lang.String r2 = "android.permission.READ_PHONE_STATE"
            boolean r5 = checkPermission(r5, r2)     // Catch: java.lang.Exception -> L53
            if (r5 == 0) goto L5d
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L53
            r2 = 26
            if (r5 < r2) goto L4e
            java.lang.Class r5 = r1.getClass()     // Catch: java.lang.Exception -> L48
            java.lang.String r2 = "getImei"
            r3 = 0
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L48
            java.lang.reflect.Method r5 = r5.getMethod(r2, r4)     // Catch: java.lang.Exception -> L48
            r2 = 1
            r5.setAccessible(r2)     // Catch: java.lang.Exception -> L48
            java.lang.Object[] r2 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L48
            java.lang.Object r5 = r5.invoke(r1, r2)     // Catch: java.lang.Exception -> L48
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L48
            r0 = r5
        L48:
            boolean r5 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L53
            if (r5 == 0) goto L5d
        L4e:
            java.lang.String r0 = r1.getDeviceId()     // Catch: java.lang.Exception -> L53
            goto L5d
        L53:
            r5 = move-exception
            boolean r1 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG
            if (r1 == 0) goto L5d
            java.lang.String r1 = "No IMEI."
            com.umeng.commonsdk.statistics.common.MLog.w(r1, r5)
        L5d:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sImei = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getImeiNew(android.content.Context):java.lang.String");
    }

    public static java.lang.String getImsi(android.content.Context context) {
        if (!android.text.TextUtils.isEmpty(sImsi)) {
            return sImsi;
        }
        java.lang.String subscriberId = null;
        if (context == null) {
            return null;
        }
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
        if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.ai)) {
            try {
                if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                    subscriberId = telephonyManager.getSubscriberId();
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        sImsi = subscriberId;
        return subscriberId;
    }

    public static java.util.Locale getLocale(android.content.Context context) {
        java.util.Locale locale;
        if (context == null) {
            return java.util.Locale.getDefault();
        }
        try {
            android.content.res.Configuration configuration = new android.content.res.Configuration();
            configuration.setToDefaults();
            android.provider.Settings.System.getConfiguration(context.getContentResolver(), configuration);
            locale = configuration.locale;
        } catch (java.lang.Throwable unused) {
            com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "fail to read user config locale");
            locale = null;
        }
        return locale == null ? java.util.Locale.getDefault() : locale;
    }

    public static java.lang.String[] getLocaleInfo(android.content.Context context) {
        java.lang.String[] strArr = {"Unknown", "Unknown"};
        if (context == null) {
            return strArr;
        }
        try {
            java.util.Locale locale = getLocale(context);
            if (locale != null) {
                strArr[0] = locale.getCountry();
                strArr[1] = locale.getLanguage();
            }
            if (android.text.TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (android.text.TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "error in getLocaleInfo", th);
            return strArr;
        }
    }

    public static java.lang.String getMCCMNC(android.content.Context context) {
        if (context == null) {
            return null;
        }
        if (getImsi(context) == null) {
            return null;
        }
        int i = context.getResources().getConfiguration().mcc;
        int i2 = context.getResources().getConfiguration().mnc;
        if (i != 0) {
            java.lang.String strValueOf = java.lang.String.valueOf(i2);
            if (i2 < 10) {
                strValueOf = java.lang.String.format("%02d", java.lang.Integer.valueOf(i2));
            }
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            stringBuffer.append(java.lang.String.valueOf(i));
            stringBuffer.append(strValueOf);
            return stringBuffer.toString();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMac(android.content.Context r2) {
        /*
            java.lang.String r0 = com.umeng.commonsdk.statistics.common.DeviceConfig.sWifiMac
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb
            java.lang.String r2 = com.umeng.commonsdk.statistics.common.DeviceConfig.sWifiMac
            return r2
        Lb:
            java.lang.String r0 = ""
            java.lang.String r1 = "header_device_id_mac"
            boolean r1 = com.umeng.commonsdk.config.FieldManager.allow(r1)
            if (r1 == 0) goto L43
            if (r2 != 0) goto L18
            return r0
        L18:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 >= r1) goto L23
        L1e:
            java.lang.String r0 = getMacBySystemInterface(r2)
            goto L43
        L23:
            if (r0 != r1) goto L38
            java.lang.String r0 = getMacByJavaAPI()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L43
            boolean r0 = com.umeng.commonsdk.statistics.AnalyticsConstants.CHECK_DEVICE
            if (r0 == 0) goto L1e
            java.lang.String r0 = getMacShell()
            goto L43
        L38:
            java.lang.String r0 = getMacByJavaAPI()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L43
            goto L1e
        L43:
            com.umeng.commonsdk.statistics.common.DeviceConfig.sWifiMac = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(android.content.Context):java.lang.String");
    }

    public static java.lang.String getMacByJavaAPI() {
        try {
            if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
                return null;
            }
            java.util.Enumeration<java.net.NetworkInterface> networkInterfaces = java.net.NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                java.net.NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("wlan0".equals(networkInterfaceNextElement.getName()) || "eth0".equals(networkInterfaceNextElement.getName())) {
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null && hardwareAddress.length != 0) {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        for (byte b : hardwareAddress) {
                            sb.append(java.lang.String.format("%02X:", java.lang.Byte.valueOf(b)));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        return sb.toString().toLowerCase(java.util.Locale.getDefault());
                    }
                    return null;
                }
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getMacBySystemInterface(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
                android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
                if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                    return wifiManager != null ? wifiManager.getConnectionInfo().getMacAddress() : "";
                }
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    com.umeng.commonsdk.statistics.common.MLog.w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
                }
            }
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                java.lang.String str = LOG_TAG;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Could not get mac address.");
                sbO.append(th.toString());
                com.umeng.commonsdk.statistics.common.MLog.w(str, sbO.toString());
            }
            return "";
        }
    }

    public static java.lang.String getMacShell() {
        java.lang.String strReaMac;
        try {
            if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.h)) {
                return null;
            }
            java.lang.String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
            for (int i = 0; i < 3; i++) {
                try {
                    strReaMac = reaMac(strArr[i]);
                } catch (java.lang.Throwable th) {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                        com.umeng.commonsdk.statistics.common.MLog.e(LOG_TAG, "open file  Failed", th);
                    }
                }
                if (strReaMac != null) {
                    return strReaMac;
                }
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getMeid(android.content.Context context) {
        java.lang.String strMeid = null;
        if (context == null || ((android.telephony.TelephonyManager) context.getSystemService("phone")) == null) {
            return null;
        }
        if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.aj)) {
            try {
                if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                    if (android.os.Build.VERSION.SDK_INT < 26) {
                        strMeid = getIMEI(context);
                    } else {
                        strMeid = meid(context);
                        if (android.text.TextUtils.isEmpty(strMeid)) {
                            strMeid = getIMEI(context);
                        }
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        return strMeid;
    }

    public static java.lang.String[] getNetworkAccessMode(android.content.Context context) {
        java.lang.String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            strArr[0] = "";
            return strArr;
        }
        android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "";
            return strArr;
        }
        android.net.NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.getState() == android.net.NetworkInfo.State.CONNECTED) {
            strArr[0] = "Wi-Fi";
            return strArr;
        }
        android.net.NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo2 != null && networkInfo2.getState() == android.net.NetworkInfo.State.CONNECTED) {
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo2.getSubtypeName();
        }
        return strArr;
    }

    public static java.lang.String getNetworkOperatorName(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) {
                return telephonyManager.getNetworkOperatorName();
            }
        } catch (java.lang.Throwable unused) {
        }
        return "";
    }

    public static int getNetworkType(android.content.Context context) {
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkType();
            }
            return 0;
        } catch (java.lang.Exception unused) {
            return -100;
        }
    }

    public static java.lang.String getOaid(android.content.Context context) {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            return "";
        }
        try {
            android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.statistics.idtracking.i.a, 0);
            return sharedPreferences != null ? sharedPreferences.getString(com.umeng.commonsdk.statistics.idtracking.i.b, "") : "";
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static java.lang.String getPackageName(android.content.Context context) {
        if (context == null) {
            return null;
        }
        return context.getPackageName();
    }

    public static java.lang.String getRegisteredOperator(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (!checkPermission(context, "android.permission.READ_PHONE_STATE") || telephonyManager == null) {
                return null;
            }
            return telephonyManager.getNetworkOperator();
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static int[] getResolutionArray(android.content.Context context) {
        int iReflectMetrics;
        int iReflectMetrics2;
        if (context == null) {
            return null;
        }
        int[] iArr = new int[2];
        android.view.WindowManager windowManager = (android.view.WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                android.view.Display defaultDisplay = windowManager.getDefaultDisplay();
                android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
                try {
                    java.lang.reflect.Method method = java.lang.Class.forName("android.view.Display").getMethod("getRealMetrics", android.util.DisplayMetrics.class);
                    if (method != null) {
                        method.invoke(defaultDisplay, displayMetrics);
                        int i = displayMetrics.widthPixels;
                        int i2 = displayMetrics.heightPixels;
                        if (i > i2) {
                            iArr[0] = i2;
                            iArr[1] = i;
                        } else {
                            iArr[0] = i;
                            iArr[1] = i2;
                        }
                        iArr[0] = displayMetrics.widthPixels;
                        iArr[1] = displayMetrics.heightPixels;
                        return iArr;
                    }
                } catch (java.lang.Throwable unused) {
                    return null;
                }
            } else {
                try {
                    android.util.DisplayMetrics displayMetrics2 = new android.util.DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics2);
                    if ((context.getApplicationInfo().flags & 8192) == 0) {
                        iReflectMetrics = reflectMetrics(displayMetrics2, "noncompatWidthPixels");
                        iReflectMetrics2 = reflectMetrics(displayMetrics2, "noncompatHeightPixels");
                    } else {
                        iReflectMetrics = -1;
                        iReflectMetrics2 = -1;
                    }
                    if (iReflectMetrics == -1 || iReflectMetrics2 == -1) {
                        iReflectMetrics = displayMetrics2.widthPixels;
                        iReflectMetrics2 = displayMetrics2.heightPixels;
                    }
                    if (iReflectMetrics > iReflectMetrics2) {
                        iArr[0] = iReflectMetrics2;
                        iArr[1] = iReflectMetrics;
                    } else {
                        iArr[0] = iReflectMetrics;
                        iArr[1] = iReflectMetrics2;
                    }
                    return iArr;
                } catch (java.lang.Throwable unused2) {
                }
            }
        }
        return null;
    }

    public static java.lang.String getSecondSimIMEi(android.content.Context context) {
        if (context == null || !com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.al) || android.os.Build.VERSION.SDK_INT < 23 || !com.umeng.commonsdk.utils.UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            java.lang.Class<?> cls = telephonyManager.getClass();
            if (((java.lang.Integer) cls.getMethod("getPhoneCount", new java.lang.Class[0]).invoke(telephonyManager, new java.lang.Object[0])).intValue() == 2) {
                return (java.lang.String) cls.getMethod("getDeviceId", java.lang.Integer.TYPE).invoke(telephonyManager, 2);
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getSerial() {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.j)) {
            return null;
        }
        if (android.os.Build.VERSION.SDK_INT < 26) {
            return android.os.Build.SERIAL;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.os.Build");
            return (java.lang.String) cls.getMethod("getSerial", new java.lang.Class[0]).invoke(cls, new java.lang.Object[0]);
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getSerialNo() {
        java.lang.String str;
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.j)) {
            str = "";
        } else if (android.os.Build.VERSION.SDK_INT >= 26) {
            try {
                java.lang.Class<?> cls = java.lang.Class.forName("android.os.Build");
                str = (java.lang.String) cls.getMethod("getSerial", new java.lang.Class[0]).invoke(cls, new java.lang.Object[0]);
            } catch (java.lang.Throwable unused) {
            }
        } else {
            str = android.os.Build.SERIAL;
        }
        if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, e.a.c.a.a.e("getDeviceId, serial no: ", str));
        }
        return str;
    }

    public static java.lang.String getSimICCID(android.content.Context context) {
        android.telephony.TelephonyManager telephonyManager;
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.am) || context == null) {
            return null;
        }
        try {
            if (!com.umeng.commonsdk.utils.UMUtils.checkPermission(context, "android.permission.READ_PHONE_STATE") || (telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone")) == null) {
                return null;
            }
            return telephonyManager.getSimSerialNumber();
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getSubOSName(android.content.Context context) {
        java.util.Properties buildProp = getBuildProp();
        try {
            java.lang.String property = buildProp.getProperty("ro.miui.ui.version.name");
            return android.text.TextUtils.isEmpty(property) ? isFlyMe() ? "Flyme" : isEmui(buildProp) ? "Emui" : !android.text.TextUtils.isEmpty(getYunOSVersion(buildProp)) ? "YunOS" : property : "MIUI";
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getSubOSVersion(android.content.Context context) {
        java.util.Properties buildProp = getBuildProp();
        try {
            java.lang.String property = buildProp.getProperty("ro.miui.ui.version.name");
            if (!android.text.TextUtils.isEmpty(property)) {
                return property;
            }
            try {
                property = isFlyMe() ? getFlymeVersion(buildProp) : isEmui(buildProp) ? getEmuiVersion(buildProp) : getYunOSVersion(buildProp);
                return property;
            } catch (java.lang.Throwable unused) {
                return property;
            }
        } catch (java.lang.Throwable unused2) {
            return null;
        }
    }

    public static int getTimeZone(android.content.Context context) {
        if (context == null) {
            return 8;
        }
        try {
            java.util.Calendar calendar = java.util.Calendar.getInstance(getLocale(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.i(LOG_TAG, "error in getTimeZone", th);
        }
        return 8;
    }

    public static java.lang.String getYunOSVersion(java.util.Properties properties) {
        try {
            java.lang.String property = properties.getProperty("ro.yunos.version");
            if (android.text.TextUtils.isEmpty(property)) {
                return null;
            }
            return property;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static boolean isChineseAera(android.content.Context context) {
        java.lang.String strImprintProperty;
        if (context == null) {
            return false;
        }
        try {
            strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, com.umeng.analytics.pro.ai.O, "");
        } catch (java.lang.Throwable unused) {
        }
        if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
            return strImprintProperty.equals("cn");
        }
        if (getImsi(context) != null) {
            int i = context.getResources().getConfiguration().mcc;
            if (i != 460 && i != 461) {
                if (i == 0) {
                    java.lang.String str = getLocaleInfo(context)[0];
                    if (android.text.TextUtils.isEmpty(str) || !str.equalsIgnoreCase("cn")) {
                    }
                }
            }
            return true;
        }
        java.lang.String str2 = getLocaleInfo(context)[0];
        if (!android.text.TextUtils.isEmpty(str2) && str2.equalsIgnoreCase("cn")) {
            return true;
        }
        return false;
    }

    public static boolean isEmui(java.util.Properties properties) {
        return properties.getProperty(KEY_EMUI_VERSION_CODE, null) != null;
    }

    public static boolean isFlyMe() {
        try {
            android.os.Build.class.getMethod("hasSmartBar", new java.lang.Class[0]);
            return true;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    public static boolean isOnline(android.content.Context context) {
        android.net.ConnectivityManager connectivityManager;
        android.net.NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            if (checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
        } catch (java.lang.Throwable unused) {
        }
        return false;
    }

    public static boolean isWiFiAvailable(android.content.Context context) {
        if (context == null) {
            return false;
        }
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    public static java.lang.String meid(android.content.Context context) {
        if (android.text.TextUtils.isEmpty(sMeid)) {
            return sMeid;
        }
        java.lang.String str = null;
        if (context == null) {
            return null;
        }
        try {
            java.lang.Object objInvoke = java.lang.Class.forName("android.telephony.TelephonyManager").getMethod("getMeid", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            if (objInvoke != null && (objInvoke instanceof java.lang.String)) {
                str = (java.lang.String) objInvoke;
            }
        } catch (java.lang.Throwable th) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("meid:");
            sbO.append(th.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
        }
        sMeid = str;
        return str;
    }

    public static java.lang.String reaMac(java.lang.String str) {
        java.io.FileReader fileReader;
        java.io.BufferedReader bufferedReader;
        java.lang.String line = null;
        try {
            fileReader = new java.io.FileReader(str);
        } catch (java.lang.Throwable unused) {
        }
        try {
            bufferedReader = new java.io.BufferedReader(fileReader, 1024);
            try {
                line = bufferedReader.readLine();
                try {
                    fileReader.close();
                } catch (java.lang.Throwable unused2) {
                }
                bufferedReader.close();
                return line;
            } catch (java.lang.Throwable th) {
                th = th;
                try {
                    fileReader.close();
                } catch (java.lang.Throwable unused3) {
                }
                if (bufferedReader == null) {
                    throw th;
                }
                try {
                    bufferedReader.close();
                    throw th;
                } catch (java.lang.Throwable unused4) {
                    throw th;
                }
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    public static int reflectMetrics(java.lang.Object obj, java.lang.String str) {
        try {
            java.lang.reflect.Field declaredField = android.util.DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (java.lang.Throwable unused) {
            return -1;
        }
    }
}
