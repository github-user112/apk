package com.umeng.commonsdk.utils;

/* loaded from: classes.dex */
public class UMUtils {
    public static final int DEFAULT_TIMEZONE = 8;
    public static final java.lang.String KEY_APP_KEY = "appkey";
    public static final java.lang.String KEY_CHANNEL = "channel";
    public static final java.lang.String KEY_LAST_APP_KEY = "last_appkey";
    public static final java.lang.String KEY_MIUI_VERSION_NAME = "ro.miui.ui.version.name";
    public static final java.lang.String KEY_SESSION_ID = "session_id";
    public static final java.lang.String KEY_SHARED_PREFERENCES_NAME = "umeng_common_config";
    public static final java.lang.String MOBILE_NETWORK = "2G/3G";
    public static final java.lang.String SD_PERMISSION = "android.permission.WRITE_EXTERNAL_STORAGE";
    public static final java.lang.String SP_FILE_NAME = "um_session_id";
    public static final java.lang.String TAG = "UMUtils";
    public static final java.lang.String UNKNOW = "";
    public static final java.lang.String WIFI = "Wi-Fi";
    public static final java.util.regex.Pattern pattern = java.util.regex.Pattern.compile("UTDID\">([^<]+)");
    public static java.lang.Object spLock = new java.lang.Object();
    public static java.lang.String VALUE_ANALYTICS_VERSION = "";
    public static java.lang.String VALUE_GAME_VERSION = "";
    public static java.lang.String VALUE_PUSH_VERSION = "";
    public static java.lang.String VALUE_SHARE_VERSION = "";
    public static java.lang.String VALUE_APM_VERSION = "";
    public static java.lang.String VALUE_VERIFY_VERSION = "";
    public static java.lang.String VALUE_SMS_VERSION = "";
    public static java.lang.String VALUE_REC_VERSION_NAME = "";
    public static java.lang.String VALUE_VISUAL_VERSION = "";
    public static java.lang.String VALUE_ASMS_VERSION = "";
    public static java.lang.String VALUE_LINK_VERSION = "";
    public static java.lang.String VALUE_ABTEST_VERSION = "";

    public static java.lang.String MD5(java.lang.String str) {
        try {
            if (str == null) {
                return null;
            }
            try {
                try {
                    byte[] bytes = str.getBytes();
                    java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
                    messageDigest.reset();
                    messageDigest.update(bytes);
                    byte[] bArrDigest = messageDigest.digest();
                    java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
                    for (byte b : bArrDigest) {
                        stringBuffer.append(java.lang.String.format("%02X", java.lang.Byte.valueOf(b)));
                    }
                    return stringBuffer.toString();
                } catch (java.lang.Exception e2) {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                        android.util.Log.e(TAG, "MD5 e is " + e2);
                    }
                    return null;
                }
            } catch (java.lang.Exception unused) {
                return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
            }
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("MD5 e is ", th, TAG);
            }
            return null;
        }
    }

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
            sb.append(hexString.toUpperCase());
            if (i < bArr.length - 1) {
                sb.append(':');
            }
        }
        return sb.toString();
    }

    public static java.lang.String bytes2Hex(byte[] bArr) {
        java.lang.String strE = "";
        for (byte b : bArr) {
            java.lang.String hexString = java.lang.Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                strE = e.a.c.a.a.e(strE, "0");
            }
            strE = e.a.c.a.a.e(strE, hexString);
        }
        return strE;
    }

    public static boolean checkAndroidManifest(android.content.Context context, java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        try {
            context.getApplicationContext().getPackageManager().getActivityInfo(new android.content.ComponentName(context.getApplicationContext().getPackageName(), str), 0);
            return true;
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean checkIntentFilterData(android.content.Context context, java.lang.String str) {
        try {
            android.content.Intent intent = new android.content.Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(android.net.Uri.parse("tencent" + str + ":"));
            java.util.List<android.content.pm.ResolveInfo> listQueryIntentActivities = context.getApplicationContext().getPackageManager().queryIntentActivities(intent, 64);
            if (listQueryIntentActivities.size() > 0) {
                for (android.content.pm.ResolveInfo resolveInfo : listQueryIntentActivities) {
                    if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.packageName.equals(context.getApplicationContext().getPackageName())) {
                        return true;
                    }
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        return false;
    }

    public static boolean checkMetaData(android.content.Context context, java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128);
            if (applicationInfo != null) {
                if (applicationInfo.metaData.get(str) != null) {
                    return true;
                }
            }
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean checkPath(java.lang.String str) throws java.lang.ClassNotFoundException {
        try {
            java.lang.Class.forName(str);
            return true;
        } catch (java.lang.ClassNotFoundException unused) {
            return false;
        }
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
            } catch (java.lang.Exception e2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
                return false;
            }
        } else if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    public static boolean checkResource(android.content.Context context, java.lang.String str, java.lang.String str2) {
        try {
            return context.getApplicationContext().getResources().getIdentifier(str, str2, context.getApplicationContext().getPackageName()) > 0;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    public static java.lang.String encryptBySHA1(java.lang.String str) {
        try {
            try {
                byte[] bytes = str.getBytes();
                try {
                    java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA1");
                    messageDigest.update(bytes);
                    return bytes2Hex(messageDigest.digest());
                } catch (java.lang.Exception unused) {
                    return null;
                }
            } catch (java.lang.Exception e2) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    android.util.Log.e(TAG, "encrypt by SHA1 e is " + e2);
                }
                return null;
            }
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("encrypt by SHA1 e is ", th, TAG);
            }
            return null;
        }
    }

    public static java.lang.String genId() {
        return "1234567890";
    }

    public static java.lang.String getApmFlag() {
        java.lang.reflect.Method declaredMethod;
        try {
            java.lang.Class<?> cls = getClass("com.umeng.umcrash.UMCrash");
            if (cls == null || (declaredMethod = cls.getDeclaredMethod("getUMAPMFlag", new java.lang.Class[0])) == null) {
                return "";
            }
            declaredMethod.setAccessible(true);
            return (java.lang.String) declaredMethod.invoke(cls, new java.lang.Object[0]);
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static java.lang.String getAppHashKey(android.content.Context context) {
        return com.umeng.commonsdk.statistics.common.DeviceConfig.getAppHashKey(context);
    }

    public static java.lang.String getAppMD5Signature(android.content.Context context) {
        java.lang.String strReplace = "";
        try {
            java.lang.String appMD5Signature = com.umeng.commonsdk.statistics.common.DeviceConfig.getAppMD5Signature(context);
            try {
                if (android.text.TextUtils.isEmpty(appMD5Signature)) {
                    return appMD5Signature;
                }
                strReplace = appMD5Signature.replace(":", "");
                return strReplace.toLowerCase();
            } catch (java.lang.Throwable unused) {
                return appMD5Signature;
            }
        } catch (java.lang.Throwable unused2) {
            return strReplace;
        }
    }

    public static java.lang.String getAppName(android.content.Context context) {
        java.lang.StringBuilder sb;
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get app name e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
            return null;
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get app name e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
            return null;
        }
    }

    public static java.lang.String getAppSHA1Key(android.content.Context context) {
        return com.umeng.commonsdk.statistics.common.DeviceConfig.getAppSHA1Key(context);
    }

    public static java.lang.String getAppVersinoCode(android.content.Context context, java.lang.String str) {
        if (context != null && str != null) {
            try {
                return java.lang.String.valueOf(context.getPackageManager().getPackageInfo(str, 0).versionCode);
            } catch (java.lang.Exception e2) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    android.util.Log.e(TAG, "get app version code e is " + e2);
                }
            } catch (java.lang.Throwable th) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    e.a.c.a.a.y("get app version code e is ", th, TAG);
                }
                return "";
            }
        }
        return "";
    }

    public static java.lang.String getAppVersionCode(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            return java.lang.String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get app version code e is " + e2);
            }
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get app version code e is ", th, TAG);
            }
            return "";
        }
    }

    public static java.lang.String getAppVersionName(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get app version name e is " + e2);
            }
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get app version name e is ", th, TAG);
            }
            return "";
        }
    }

    public static java.lang.String getAppVersionName(android.content.Context context, java.lang.String str) {
        if (context != null && str != null) {
            try {
                return context.getPackageManager().getPackageInfo(str, 0).versionName;
            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    android.util.Log.e(TAG, "get app version name e is " + e2);
                }
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            } catch (java.lang.Throwable th) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    e.a.c.a.a.y("get app version name e is ", th, TAG);
                }
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                return "";
            }
        }
        return "";
    }

    public static java.lang.String getAppkey(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return !android.text.TextUtils.isEmpty(com.umeng.commonsdk.UMConfigure.sAppkey) ? com.umeng.commonsdk.UMConfigure.sAppkey : getMultiProcessSP(context, "appkey");
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get app key e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get app key e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getAppkeyByXML(android.content.Context context) {
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            java.lang.String string = applicationInfo.metaData.getString("UMENG_APPKEY");
            if (string != null) {
                return string.trim();
            }
            if (!com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            com.umeng.commonsdk.statistics.common.MLog.i(com.umeng.commonsdk.statistics.AnalyticsConstants.LOG_TAG, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.util.Properties getBuildProp() throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream;
        java.util.Properties properties = new java.util.Properties();
        java.io.FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new java.io.FileInputStream(new java.io.File(android.os.Environment.getRootDirectory(), "build.prop"));
            } catch (java.io.IOException unused) {
            }
        } catch (java.io.IOException unused2) {
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
        } catch (java.io.IOException unused3) {
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            return properties;
        } catch (java.lang.Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (java.io.IOException unused4) {
                }
            }
            throw th;
        }
        return properties;
    }

    public static java.lang.String getCPU() {
        java.lang.String line = null;
        try {
            try {
                java.io.FileReader fileReader = new java.io.FileReader("/proc/cpuinfo");
                try {
                    java.io.BufferedReader bufferedReader = new java.io.BufferedReader(fileReader, 1024);
                    line = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (java.io.IOException e2) {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                        android.util.Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e2);
                    }
                }
            } catch (java.io.FileNotFoundException e3) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    android.util.Log.e(TAG, "Could not read from file /proc/cpuinfo, e is " + e3);
                }
            }
            return line != null ? line.substring(line.indexOf(58) + 1).trim() : "";
        } catch (java.lang.Exception e4) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get cpu e is " + e4);
            }
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get cpu e is ", th, TAG);
            }
            return "";
        }
    }

    public static java.lang.String getChannel(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return !android.text.TextUtils.isEmpty(com.umeng.commonsdk.UMConfigure.sChannel) ? com.umeng.commonsdk.UMConfigure.sChannel : getMultiProcessSP(context, "channel");
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get channel e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get channel e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getChannelByXML(android.content.Context context) {
        java.lang.Object obj;
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || (obj = applicationInfo.metaData.get("UMENG_CHANNEL")) == null) {
                return null;
            }
            java.lang.String string = obj.toString();
            if (string != null) {
                return string.trim();
            }
            if (!com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                return null;
            }
            com.umeng.commonsdk.statistics.common.MLog.i(com.umeng.commonsdk.statistics.AnalyticsConstants.LOG_TAG, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.Class<?> getClass(java.lang.String str) {
        try {
            return java.lang.Class.forName(str);
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getDeviceToken(android.content.Context context) {
        java.lang.Object objInvoke;
        java.lang.reflect.Method method;
        java.lang.Object objInvoke2;
        if (context == null) {
            return null;
        }
        android.content.Context applicationContext = context.getApplicationContext();
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.message.MessageSharedPrefs");
            java.lang.reflect.Method method2 = cls.getMethod("getInstance", android.content.Context.class);
            if (method2 == null || (objInvoke = method2.invoke(cls, applicationContext)) == null || (method = cls.getMethod("getDeviceToken", new java.lang.Class[0])) == null || (objInvoke2 = method.invoke(objInvoke, new java.lang.Object[0])) == null || !(objInvoke2 instanceof java.lang.String)) {
                return null;
            }
            return (java.lang.String) objInvoke2;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getDeviceType(android.content.Context context) {
        if (context == null) {
            return "Phone";
        }
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3 ? "Tablet" : "Phone";
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get device type e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get device type e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getDisplayResolution(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
            android.view.WindowManager windowManager = (android.view.WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            return java.lang.String.valueOf(displayMetrics.heightPixels) + "*" + java.lang.String.valueOf(i);
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get display resolution e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get display resolution e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return "";
        }
    }

    public static java.lang.String getFileMD5(java.io.File file) {
        try {
            try {
                byte[] bArr = new byte[1024];
                try {
                    if (!file.isFile()) {
                        return "";
                    }
                    java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
                    java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
                    while (true) {
                        int i = fileInputStream.read(bArr, 0, 1024);
                        if (i == -1) {
                            fileInputStream.close();
                            return java.lang.String.format("%1$032x", new java.math.BigInteger(1, messageDigest.digest()));
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                } catch (java.lang.Exception unused) {
                    return null;
                }
            } catch (java.lang.Throwable th) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    e.a.c.a.a.y("get file MD5 e is ", th, TAG);
                }
                return null;
            }
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get file MD5 e is " + e2);
            }
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
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String[] getGPU(javax.microedition.khronos.opengles.GL10 gl10) {
        try {
            return new java.lang.String[]{gl10.glGetString(7936), gl10.glGetString(7937)};
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "Could not read gpu infor, e is " + e2);
            }
            return new java.lang.String[0];
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("Could not read gpu infor, e is ", th, TAG);
            }
            return new java.lang.String[0];
        }
    }

    public static java.lang.String getLastAppkey(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return getMultiProcessSP(context, KEY_LAST_APP_KEY);
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get last app key e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get last app key e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.util.Locale getLocale(android.content.Context context) {
        java.util.Locale locale;
        if (context == null) {
            return null;
        }
        try {
            try {
                android.content.res.Configuration configuration = new android.content.res.Configuration();
                configuration.setToDefaults();
                android.provider.Settings.System.getConfiguration(context.getContentResolver(), configuration);
                locale = configuration.locale;
            } catch (java.lang.Exception e2) {
                try {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                        android.util.Log.e(TAG, "fail to read user config locale, e is " + e2);
                    }
                    locale = null;
                } catch (java.lang.Exception e3) {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                        android.util.Log.e(TAG, "get locale e is " + e3);
                    }
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e3);
                    return null;
                }
            }
            return locale == null ? java.util.Locale.getDefault() : locale;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get locale e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getMac(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi");
            if (wifiManager == null) {
                return null;
            }
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            if (!com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                return "";
            }
            android.util.Log.e(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get mac e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get mac e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getMultiProcessSP(android.content.Context context, java.lang.String str) {
        android.content.Context applicationContext;
        java.lang.String str2;
        try {
            synchronized (spLock) {
                if (context != null) {
                    if (!android.text.TextUtils.isEmpty(str)) {
                        if (isMainProgress(context)) {
                            applicationContext = context.getApplicationContext();
                            str2 = "umeng_common_config";
                        } else {
                            java.lang.String subProcessName = com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(context);
                            applicationContext = context.getApplicationContext();
                            str2 = subProcessName + "_umeng_common_config";
                        }
                        android.content.SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(str2, 0);
                        if (sharedPreferences == null) {
                            return null;
                        }
                        return sharedPreferences.getString(str, null);
                    }
                }
                return null;
            }
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String[] getNetworkAccessMode(android.content.Context context) {
        java.lang.StringBuilder sb;
        java.lang.String[] strArr = {"", ""};
        if (context == null) {
            return strArr;
        }
        try {
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get network access mode e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
            return strArr;
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get network access mode e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
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
            return strArr;
        }
        return strArr;
    }

    public static java.lang.String getNetworkOperatorName(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            return (checkPermission(context, "android.permission.READ_PHONE_STATE") && telephonyManager != null) ? telephonyManager.getNetworkOperatorName() : "";
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get network operator e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return "";
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get network operator e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return "";
        }
    }

    public static java.lang.String getOaidRequiredTime(android.content.Context context) {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G) || android.os.Build.VERSION.SDK_INT <= 28) {
            return null;
        }
        try {
            android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(com.umeng.commonsdk.statistics.idtracking.i.a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(com.umeng.commonsdk.statistics.idtracking.i.f1537c, "");
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static java.lang.String getOperator(android.content.Context context) {
        java.lang.StringBuilder sb;
        if (context == null) {
            return "Unknown";
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            return telephonyManager == null ? "Unknown" : telephonyManager.getNetworkOperator();
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get get operator e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
            return "Unknown";
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("get get operator e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
            return "Unknown";
        }
    }

    public static java.lang.String getRegisteredOperator(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getNetworkOperator();
            }
            return null;
        } catch (java.lang.Exception e2) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get registered operator e is " + e2);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        } catch (java.lang.Throwable th) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                e.a.c.a.a.y("get registered operator e is ", th, TAG);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String getSubOSName(android.content.Context context) {
        java.lang.String str;
        if (context == null) {
            return null;
        }
        try {
            try {
                java.util.Properties buildProp = getBuildProp();
                try {
                    java.lang.String property = buildProp.getProperty("ro.miui.ui.version.name");
                    if (!android.text.TextUtils.isEmpty(property)) {
                        str = "MIUI";
                    } else if (isFlyMe()) {
                        str = "Flyme";
                    } else {
                        if (android.text.TextUtils.isEmpty(getYunOSVersion(buildProp))) {
                            return property;
                        }
                        str = "YunOS";
                    }
                    return str;
                } catch (java.lang.Exception e2) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
                    return null;
                }
            } catch (java.lang.Throwable th) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    e.a.c.a.a.y("get sub os name e is ", th, TAG);
                }
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                return null;
            }
        } catch (java.lang.Exception e3) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get sub os name e is " + e3);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e3);
            return null;
        }
    }

    public static java.lang.String getSubOSVersion(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            try {
                java.util.Properties buildProp = getBuildProp();
                try {
                    java.lang.String property = buildProp.getProperty("ro.miui.ui.version.name");
                    if (android.text.TextUtils.isEmpty(property)) {
                        try {
                            return isFlyMe() ? getFlymeVersion(buildProp) : getYunOSVersion(buildProp);
                        } catch (java.lang.Exception unused) {
                        }
                    }
                    return property;
                } catch (java.lang.Exception e2) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
                    return null;
                }
            } catch (java.lang.Throwable th) {
                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                    e.a.c.a.a.y("get sub os version e is ", th, TAG);
                }
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                return null;
            }
        } catch (java.lang.Exception e3) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                android.util.Log.e(TAG, "get sub os version e is " + e3);
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e3);
            return null;
        }
    }

    public static java.lang.String getSystemProperty(java.lang.String str, java.lang.String str2) {
        try {
            return (java.lang.String) java.lang.Class.forName("android.os.SystemProperties").getMethod("get", java.lang.String.class, java.lang.String.class).invoke(null, str, str2);
        } catch (java.lang.Throwable unused) {
            return str2;
        }
    }

    public static int getTargetSdkVersion(android.content.Context context) {
        try {
            return context.getApplicationInfo().targetSdkVersion;
        } catch (java.lang.Throwable unused) {
            return 0;
        }
    }

    public static java.lang.String getUMId(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), com.umeng.analytics.pro.ai.f1220g, null);
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static java.lang.String getUUIDForZid(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(SP_FILE_NAME, 0);
        return sharedPreferences != null ? sharedPreferences.getString("session_id", "") : "";
    }

    public static java.lang.String getUmengToken(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context.getApplicationContext(), "ztoken", null);
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        }
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

    public static java.lang.String getZid(android.content.Context context) {
        android.content.Context applicationContext = context.getApplicationContext();
        if (com.umeng.commonsdk.UMConfigure.needSendZcfgEnv(applicationContext)) {
            return null;
        }
        return com.umeng.commonsdk.internal.b.a(applicationContext).a().a();
    }

    public static boolean isApplication(android.content.Context context) {
        try {
            java.lang.String name = context.getApplicationContext().getClass().getSuperclass().getName();
            if (android.text.TextUtils.isEmpty(name)) {
                return false;
            }
            return name.equals("android.app.Application");
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public static boolean isDebug(android.content.Context context) {
        if (context == null) {
            return false;
        }
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return false;
        }
    }

    public static boolean isFlyMe() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        try {
            android.os.Build.class.getMethod("hasSmartBar", new java.lang.Class[0]);
            return true;
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public static boolean isMainProgress(android.content.Context context) {
        try {
            java.lang.String currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
            java.lang.String packageName = context.getApplicationContext().getPackageName();
            if (android.text.TextUtils.isEmpty(currentProcessName) || android.text.TextUtils.isEmpty(packageName)) {
                return false;
            }
            return currentProcessName.equals(packageName);
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public static boolean isSdCardWrittenable() {
        try {
            return android.os.Environment.getExternalStorageState().equals("mounted");
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    public static java.lang.String parseId(java.lang.String str) {
        if (str == null) {
            return null;
        }
        try {
            java.util.regex.Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
        } catch (java.lang.Throwable unused) {
        }
        return null;
    }

    public static java.lang.String readStreamToString(java.io.InputStream inputStream) {
        java.io.InputStreamReader inputStreamReader = new java.io.InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (-1 == i) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, i);
        }
    }

    public static void safeClose(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void saveSDKComponent() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append(com.umeng.analytics.pro.ai.at);
        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "统计SDK版本号: 9.3.8");
        }
        VALUE_ANALYTICS_VERSION = "9.3.8";
        java.lang.String strB = com.umeng.commonsdk.internal.c.b();
        if (!android.text.TextUtils.isEmpty(strB)) {
            VALUE_ASMS_VERSION = strB;
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                com.umeng.commonsdk.debug.UMLog.mutlInfo(2, e.a.c.a.a.e("ZID SDK版本号: ", strB));
            }
        }
        java.lang.Class<?> cls = getClass("com.umeng.analytics.game.GameSdkVersion");
        if (cls != null) {
            stringBuffer.append("g");
            try {
                java.lang.String str = (java.lang.String) cls.getDeclaredField("SDK_VERSION").get(cls);
                if (!android.text.TextUtils.isEmpty(str)) {
                    VALUE_GAME_VERSION = str;
                    if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                        com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "游戏统计SDK版本号: " + str);
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
        }
        java.lang.Class<?> cls2 = getClass("com.umeng.vt.V");
        if (cls2 != null) {
            stringBuffer.append("v");
            try {
                java.lang.String str2 = (java.lang.String) cls2.getDeclaredField("VERSION").get(cls2);
                if (!android.text.TextUtils.isEmpty(str2)) {
                    VALUE_VISUAL_VERSION = str2;
                    if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                        com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "可视化埋点SDK版本号: " + str2);
                    }
                }
            } catch (java.lang.Throwable unused2) {
            }
        }
        if (getClass("com.umeng.message.PushAgent") != null) {
            stringBuffer.append("p");
            java.lang.Class<?> cls3 = getClass("com.umeng.message.MsgConstant");
            if (cls3 != null) {
                try {
                    java.lang.String str3 = (java.lang.String) cls3.getDeclaredField("SDK_VERSION").get(cls3);
                    if (!android.text.TextUtils.isEmpty(str3)) {
                        VALUE_PUSH_VERSION = str3;
                        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "推送SDK版本号: " + str3);
                        }
                    }
                } catch (java.lang.Throwable unused3) {
                }
            }
        }
        if (getClass("com.umeng.socialize.UMShareAPI") != null) {
            stringBuffer.append(com.umeng.analytics.pro.ai.az);
            java.lang.Class<?> cls4 = getClass("com.umeng.a");
            if (cls4 != null) {
                try {
                    java.lang.String str4 = (java.lang.String) cls4.getDeclaredField("g").get(cls4);
                    if (!android.text.TextUtils.isEmpty(str4) && com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                        com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "分享SDK版本号: " + str4);
                    }
                } catch (java.lang.Throwable unused4) {
                }
            }
        }
        if (getClass("com.umeng.error.UMError") != null) {
            stringBuffer.append("e");
        }
        if (getClass("com.umeng.umzid.ZIDManager") != null) {
            stringBuffer.append(com.umeng.analytics.pro.ai.aB);
        }
        stringBuffer.append("i");
        if (com.umeng.commonsdk.statistics.SdkVersion.SDK_TYPE != 1 && getClass("com.umeng.commonsdk.internal.UMOplus") != null) {
            stringBuffer.append("o");
        }
        if (getClass("com.umeng.airec.RecAgent") != null) {
            stringBuffer.append("u");
            java.lang.Class<?> cls5 = getClass("com.umeng.airec.BuildConfig");
            if (cls5 != null) {
                try {
                    java.lang.String str5 = (java.lang.String) cls5.getDeclaredField("VERSION_NAME").get(cls5);
                    if (!android.text.TextUtils.isEmpty(str5)) {
                        VALUE_REC_VERSION_NAME = str5;
                        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "智能推荐SDK版本号: " + str5);
                        }
                    }
                } catch (java.lang.Throwable unused5) {
                }
            }
        }
        if (getClass("com.umeng.umverify.UMVerifyHelper") != null) {
            stringBuffer.append("n");
        }
        java.lang.Class<?> cls6 = getClass("com.umeng.sms.UMSMS");
        if (cls6 != null) {
            stringBuffer.append("m");
            try {
                java.lang.reflect.Method declaredMethod = cls6.getDeclaredMethod("getVersion", new java.lang.Class[0]);
                if (declaredMethod != null) {
                    java.lang.String str6 = (java.lang.String) declaredMethod.invoke(cls6, new java.lang.Object[0]);
                    if (!android.text.TextUtils.isEmpty(str6)) {
                        VALUE_SMS_VERSION = str6;
                        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "短信验证码SDK版本号: " + str6);
                        }
                    }
                }
            } catch (java.lang.Throwable unused6) {
            }
        }
        try {
            java.lang.Class<?> cls7 = getClass("com.umeng.umcrash.UMCrash");
            if (cls7 != null) {
                stringBuffer.append("c");
                java.lang.reflect.Field declaredField = cls7.getDeclaredField("crashSdkVersion");
                declaredField.setAccessible(true);
                java.lang.String str7 = (java.lang.String) declaredField.get(cls7);
                if (!android.text.TextUtils.isEmpty(str7)) {
                    VALUE_APM_VERSION = str7;
                    if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                        com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "APM SDK版本号: " + str7);
                    }
                }
            }
        } catch (java.lang.Throwable unused7) {
        }
        java.lang.Class<?> cls8 = getClass("com.umeng.umlink.MobclickLink");
        if (cls8 != null) {
            stringBuffer.append("l");
            try {
                java.lang.reflect.Method declaredMethod2 = cls8.getDeclaredMethod("getVersion", new java.lang.Class[0]);
                if (declaredMethod2 != null) {
                    java.lang.String str8 = (java.lang.String) declaredMethod2.invoke(cls8, new java.lang.Object[0]);
                    if (!android.text.TextUtils.isEmpty(str8)) {
                        VALUE_LINK_VERSION = str8;
                        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "ULink SDK版本号: " + str8);
                        }
                    }
                }
            } catch (java.lang.Throwable unused8) {
            }
        }
        java.lang.Class<?> cls9 = getClass("com.umeng.cconfig.UMRemoteConfig");
        if (cls9 != null) {
            try {
                java.lang.reflect.Method declaredMethod3 = cls9.getDeclaredMethod("getVersion", new java.lang.Class[0]);
                if (declaredMethod3 != null) {
                    stringBuffer.append("t");
                    java.lang.String str9 = (java.lang.String) declaredMethod3.invoke(cls9, new java.lang.Object[0]);
                    if (!android.text.TextUtils.isEmpty(str9)) {
                        VALUE_ABTEST_VERSION = str9;
                        if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "UABTEST SDK版本号: " + str9);
                        }
                    }
                }
            } catch (java.lang.Throwable unused9) {
            }
        }
        if (android.text.TextUtils.isEmpty(stringBuffer)) {
            return;
        }
        com.umeng.commonsdk.statistics.b.a = stringBuffer.toString();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("module init:");
        sbO.append(com.umeng.commonsdk.statistics.b.a);
        android.util.Log.i(com.umeng.commonsdk.statistics.AnalyticsConstants.LOG_TAG, sbO.toString());
    }

    public static void setAppkey(android.content.Context context, java.lang.String str) {
        java.lang.StringBuilder sb;
        if (context == null || str == null) {
            return;
        }
        try {
            setMultiProcessSP(context, "appkey", str);
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set app key e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set app key e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        }
    }

    public static void setChannel(android.content.Context context, java.lang.String str) {
        java.lang.StringBuilder sb;
        if (context == null || str == null) {
            return;
        }
        try {
            setMultiProcessSP(context, "channel", str);
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set channel e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set channel e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        }
    }

    public static void setLastAppkey(android.content.Context context, java.lang.String str) {
        java.lang.StringBuilder sb;
        if (context == null || str == null) {
            return;
        }
        try {
            setMultiProcessSP(context, KEY_LAST_APP_KEY, str);
        } catch (java.lang.Exception e2) {
            e = e2;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set last app key e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        } catch (java.lang.Throwable th) {
            e = th;
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                sb = new java.lang.StringBuilder();
                sb.append("set last app key e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
        }
    }

    public static void setMultiProcessSP(android.content.Context context, java.lang.String str, java.lang.String str2) {
        android.content.Context applicationContext;
        java.lang.String str3;
        try {
            synchronized (spLock) {
                if (context != null) {
                    if (!android.text.TextUtils.isEmpty(str) && str2 != null) {
                        if (isMainProgress(context)) {
                            applicationContext = context.getApplicationContext();
                            str3 = "umeng_common_config";
                        } else {
                            java.lang.String subProcessName = com.umeng.commonsdk.framework.UMFrUtils.getSubProcessName(context);
                            applicationContext = context.getApplicationContext();
                            str3 = subProcessName + "_umeng_common_config";
                        }
                        android.content.SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(str3, 0);
                        if (sharedPreferences != null) {
                            sharedPreferences.edit().putString(str, str2).commit();
                        }
                    }
                }
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void setUUIDForZid(android.content.Context context) {
        java.lang.String string;
        android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(SP_FILE_NAME, 0);
        try {
            string = java.util.UUID.randomUUID().toString();
        } catch (java.lang.Throwable unused) {
            string = "";
        }
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("session_id", string).commit();
        }
    }
}
