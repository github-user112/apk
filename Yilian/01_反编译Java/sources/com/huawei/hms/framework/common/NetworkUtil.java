package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class NetworkUtil {
    public static final int INVALID_RSSI = -127;
    public static final java.lang.String TAG = "NetworkUtil";
    public static final int TYPE_WIFI_P2P = 13;

    public static final class NetType {
        public static final int TYPE_2G = 2;
        public static final int TYPE_3G = 3;
        public static final int TYPE_4G = 4;
        public static final int TYPE_5G = 5;
        public static final int TYPE_NO_NETWORK = -1;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_WIFI = 1;
    }

    public static java.lang.String getDnsServerIps(android.content.Context context) {
        return java.util.Arrays.toString(getDnsServerIpsFromConnectionManager(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] getDnsServerIpsFromConnectionManager(android.content.Context r10) {
        /*
            java.lang.String r0 = "getActiveNetworkInfo failed, exception:"
            java.util.LinkedList r1 = new java.util.LinkedList
            r1.<init>()
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 0
            r4 = 21
            if (r2 < r4) goto L88
            if (r10 == 0) goto L88
            java.lang.String r2 = "connectivity"
            java.lang.Object r10 = com.huawei.hms.framework.common.ContextCompat.getSystemService(r10, r2)
            android.net.ConnectivityManager r10 = (android.net.ConnectivityManager) r10
            if (r10 == 0) goto L88
            android.net.NetworkInfo r2 = r10.getActiveNetworkInfo()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r2 == 0) goto L88
            android.net.Network[] r4 = r10.getAllNetworks()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            int r5 = r4.length     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            r6 = 0
        L26:
            if (r6 >= r5) goto L88
            r7 = r4[r6]     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r7 != 0) goto L2d
            goto L5f
        L2d:
            android.net.NetworkInfo r8 = r10.getNetworkInfo(r7)     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r8 == 0) goto L5f
            int r8 = r8.getType()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            int r9 = r2.getType()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r8 != r9) goto L5f
            android.net.LinkProperties r7 = r10.getLinkProperties(r7)     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r7 == 0) goto L5f
            java.util.List r7 = r7.getDnsServers()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
        L4b:
            boolean r8 = r7.hasNext()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            if (r8 == 0) goto L5f
            java.lang.Object r8 = r7.next()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            java.net.InetAddress r8 = (java.net.InetAddress) r8     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            java.lang.String r8 = r8.getHostAddress()     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            r1.add(r8)     // Catch: java.lang.RuntimeException -> L62 java.lang.SecurityException -> L6b
            goto L4b
        L5f:
            int r6 = r6 + 1
            goto L26
        L62:
            r10 = move-exception
            java.lang.String r2 = com.huawei.hms.framework.common.NetworkUtil.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            goto L73
        L6b:
            r10 = move-exception
            java.lang.String r2 = com.huawei.hms.framework.common.NetworkUtil.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L73:
            r4.append(r0)
            java.lang.Class r10 = r10.getClass()
            java.lang.String r10 = r10.getSimpleName()
            r4.append(r10)
            java.lang.String r10 = r4.toString()
            com.huawei.hms.framework.common.Logger.i(r2, r10)
        L88:
            boolean r10 = r1.isEmpty()
            if (r10 == 0) goto L91
            java.lang.String[] r10 = new java.lang.String[r3]
            goto L9d
        L91:
            int r10 = r1.size()
            java.lang.String[] r10 = new java.lang.String[r10]
            java.lang.Object[] r10 = r1.toArray(r10)
            java.lang.String[] r10 = (java.lang.String[]) r10
        L9d:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.common.NetworkUtil.getDnsServerIpsFromConnectionManager(android.content.Context):java.lang.String[]");
    }

    public static java.lang.String getHost(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            java.net.URI uri = new java.net.URI(str);
            if (uri.getPort() == -1) {
                return uri.getHost();
            }
            return uri.getHost() + ":" + uri.getPort();
        } catch (java.net.URISyntaxException e2) {
            com.huawei.hms.framework.common.Logger.w(TAG, e2.getClass().getSimpleName());
            return "";
        }
    }

    @android.annotation.SuppressLint({"MissingPermission", "NewApi"})
    public static int getHwNetworkType(android.content.Context context) {
        android.telephony.TelephonyManager telephonyManager;
        java.lang.String str;
        java.lang.String str2;
        android.telephony.ServiceState serviceState;
        if (!com.huawei.hms.framework.common.ReflectionUtils.checkCompatible(com.huawei.hms.framework.common.EmuiUtil.BUILDEX_VERSION) || context == null || (telephonyManager = (android.telephony.TelephonyManager) com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "phone")) == null) {
            return 0;
        }
        try {
            if (com.huawei.android.os.BuildEx.VERSION.EMUI_SDK_INT < 21 || (serviceState = telephonyManager.getServiceState()) == null) {
                return 0;
            }
            return com.huawei.android.telephony.ServiceStateEx.getConfigRadioTechnology(serviceState);
        } catch (java.lang.NoClassDefFoundError unused) {
            str = TAG;
            str2 = "NoClassDefFoundError occur in method getHwNetworkType.";
            com.huawei.hms.framework.common.Logger.w(str, str2);
            return 0;
        } catch (java.lang.NoSuchMethodError unused2) {
            str = TAG;
            str2 = "NoSuchMethodError occur in method getHwNetworkType.";
            com.huawei.hms.framework.common.Logger.w(str, str2);
            return 0;
        } catch (java.lang.SecurityException unused3) {
            str = TAG;
            str2 = "requires permission maybe missing.";
            com.huawei.hms.framework.common.Logger.w(str, str2);
            return 0;
        }
    }

    public static java.lang.String getMNC(android.content.Context context) {
        if (context == null || !isSimReady(context)) {
            return "unknown";
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "phone");
        android.telephony.TelephonyManager telephonyManager = systemService instanceof android.telephony.TelephonyManager ? (android.telephony.TelephonyManager) systemService : null;
        if (telephonyManager == null) {
            com.huawei.hms.framework.common.Logger.e(TAG, "getSubscriptionOperatorType: other error!");
            return "unknown";
        }
        java.lang.String networkOperator = telephonyManager.getNetworkOperator();
        return ("46001".equals(networkOperator) || "46006".equals(networkOperator) || "46009".equals(networkOperator)) ? "China_Unicom" : ("46000".equals(networkOperator) || "46002".equals(networkOperator) || "46004".equals(networkOperator) || "46007".equals(networkOperator)) ? "China_Mobile" : ("46003".equals(networkOperator) || "46005".equals(networkOperator) || "46011".equals(networkOperator)) ? "China_Telecom" : "other";
    }

    public static int getMobileRsrp(android.content.Context context) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.String str;
        java.lang.String str2;
        android.telephony.SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return 0;
        }
        try {
            final java.lang.reflect.Method declaredMethod = android.telephony.SignalStrength.class.getDeclaredMethod("getDbm", new java.lang.Class[0]);
            java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: com.huawei.hms.framework.common.NetworkUtil.1
                @Override // java.security.PrivilegedAction
                public java.lang.Object run() {
                    declaredMethod.setAccessible(true);
                    return null;
                }
            });
            return ((java.lang.Integer) declaredMethod.invoke(signalStrength, new java.lang.Object[0])).intValue();
        } catch (java.lang.IllegalAccessException unused) {
            str = TAG;
            str2 = "getDbm: cannot access";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        } catch (java.lang.NoSuchMethodException unused2) {
            str = TAG;
            str2 = "getDbm: function not found";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        } catch (java.lang.reflect.InvocationTargetException unused3) {
            str = TAG;
            str2 = "getDbm: InvocationTargetException";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        }
    }

    public static int getMobileRsrpLevel(android.content.Context context) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.String str;
        java.lang.String str2;
        android.telephony.SignalStrength signalStrength = getSignalStrength(context);
        if (signalStrength == null) {
            return 0;
        }
        try {
            final java.lang.reflect.Method declaredMethod = android.telephony.SignalStrength.class.getDeclaredMethod("getLteLevel", new java.lang.Class[0]);
            java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: com.huawei.hms.framework.common.NetworkUtil.2
                @Override // java.security.PrivilegedAction
                public java.lang.Object run() {
                    declaredMethod.setAccessible(true);
                    return null;
                }
            });
            return ((java.lang.Integer) declaredMethod.invoke(signalStrength, new java.lang.Object[0])).intValue();
        } catch (java.lang.IllegalAccessException unused) {
            str = TAG;
            str2 = "getLteLevel: cannot access";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        } catch (java.lang.NoSuchMethodException unused2) {
            str = TAG;
            str2 = "getLteLevel: function not found";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        } catch (java.lang.reflect.InvocationTargetException unused3) {
            str = TAG;
            str2 = "getLteLevel: InvocationTargetException";
            com.huawei.hms.framework.common.Logger.i(str, str2);
            return 0;
        }
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public static android.net.NetworkInfo getNetworkInfo(android.content.Context context) {
        android.net.ConnectivityManager connectivityManager;
        if (!com.huawei.hms.framework.common.ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (android.net.ConnectivityManager) com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "connectivity")) == null) {
            return null;
        }
        try {
            return connectivityManager.getActiveNetworkInfo();
        } catch (java.lang.RuntimeException e2) {
            java.lang.String str = TAG;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getActiveNetworkInfo failed, exception:");
            sbO.append(e2.getClass().getSimpleName());
            sbO.append(e2.getMessage());
            com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
            return null;
        }
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public static android.net.NetworkInfo.DetailedState getNetworkStatus(android.content.Context context) {
        android.net.NetworkInfo.DetailedState detailedState = android.net.NetworkInfo.DetailedState.IDLE;
        if (context != null) {
            java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "connectivity");
            if (systemService instanceof android.net.ConnectivityManager) {
                try {
                    android.net.NetworkInfo activeNetworkInfo = ((android.net.ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        detailedState = activeNetworkInfo.getDetailedState();
                    } else {
                        com.huawei.hms.framework.common.Logger.i(TAG, "getNetworkStatus networkIsConnected netInfo is null!");
                    }
                } catch (java.lang.RuntimeException e2) {
                    java.lang.String str = TAG;
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("getNetworkStatus exception");
                    sbO.append(e2.getClass().getSimpleName());
                    sbO.append(e2.getMessage());
                    com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
                }
            } else {
                com.huawei.hms.framework.common.Logger.i(TAG, "getNetworkStatus ConnectivityManager is null!");
            }
        }
        return detailedState;
    }

    public static int getNetworkType(android.content.Context context) {
        if (context != null) {
            return getNetworkType(getNetworkInfo(context), context);
        }
        return 0;
    }

    public static int getNetworkType(android.net.NetworkInfo networkInfo) {
        return getNetworkType(networkInfo, null);
    }

    public static int getNetworkType(android.net.NetworkInfo networkInfo, android.content.Context context) {
        int i;
        if (networkInfo == null || !networkInfo.isConnected()) {
            return -1;
        }
        int type = networkInfo.getType();
        if (1 == type || 13 == type) {
            return 1;
        }
        if (type == 0) {
            int hwNetworkType = getHwNetworkType(context);
            com.huawei.hms.framework.common.Logger.v(TAG, "getHwNetworkType return is: " + hwNetworkType);
            if (hwNetworkType == 0) {
                hwNetworkType = networkInfo.getSubtype();
            }
            if (hwNetworkType != 20) {
                switch (hwNetworkType) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        i = 2;
                        break;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        i = 3;
                        break;
                    case 13:
                        i = 4;
                        break;
                    default:
                        i = 0;
                        break;
                }
            } else {
                i = 5;
            }
            if (i != 0 || android.os.Build.VERSION.SDK_INT < 25) {
                return i;
            }
            if (hwNetworkType == 16) {
                return 2;
            }
            if (hwNetworkType == 17) {
                return 3;
            }
        }
        return 0;
    }

    public static android.telephony.SignalStrength getSignalStrength(android.content.Context context) {
        if (context == null || android.os.Build.VERSION.SDK_INT < 28) {
            return null;
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "phone");
        if (systemService instanceof android.telephony.TelephonyManager) {
            return ((android.telephony.TelephonyManager) systemService).createForSubscriptionId(android.telephony.SubscriptionManager.getDefaultDataSubscriptionId()).getSignalStrength();
        }
        return null;
    }

    public static java.lang.String getWifiGatewayIp(android.content.Context context) {
        if (context == null) {
            return " ";
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context.getApplicationContext(), "wifi");
        if (!(systemService instanceof android.net.wifi.WifiManager)) {
            return " ";
        }
        try {
            int i = ((android.net.wifi.WifiManager) systemService).getDhcpInfo().gateway;
            return java.net.InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)}).getHostAddress();
        } catch (java.lang.RuntimeException | java.net.UnknownHostException e2) {
            java.lang.String str = TAG;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getWifiGatewayIp error!");
            sbO.append(e2.getClass().getSimpleName());
            sbO.append(e2.getMessage());
            com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
            return " ";
        }
    }

    public static int getWifiRssi(android.content.Context context) {
        if (context == null) {
            return INVALID_RSSI;
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context.getApplicationContext(), "wifi");
        if (!(systemService instanceof android.net.wifi.WifiManager)) {
            return INVALID_RSSI;
        }
        try {
            android.net.wifi.WifiInfo connectionInfo = ((android.net.wifi.WifiManager) systemService).getConnectionInfo();
            return (connectionInfo == null || connectionInfo.getBSSID() == null) ? INVALID_RSSI : connectionInfo.getRssi();
        } catch (java.lang.RuntimeException e2) {
            java.lang.String str = TAG;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getWifiRssiLevel did not has permission!");
            sbO.append(e2.getClass().getSimpleName());
            sbO.append(e2.getMessage());
            com.huawei.hms.framework.common.Logger.i(str, sbO.toString());
            return INVALID_RSSI;
        }
    }

    public static int getWifiRssiLevel(android.content.Context context) {
        return android.net.wifi.WifiManager.calculateSignalLevel(getWifiRssi(context), 5);
    }

    @java.lang.Deprecated
    public static boolean isForeground(android.content.Context context) {
        return com.huawei.hms.framework.common.ActivityUtil.isForeground(context);
    }

    public static boolean isNetworkAvailable(android.content.Context context) {
        if (!com.huawei.hms.framework.common.ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        android.net.NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isSimReady(android.content.Context context) {
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "phone");
        android.telephony.TelephonyManager telephonyManager = systemService instanceof android.telephony.TelephonyManager ? (android.telephony.TelephonyManager) systemService : null;
        return telephonyManager != null && telephonyManager.getSimState() == 5;
    }

    public static boolean isUserUnlocked(android.content.Context context) {
        android.os.UserManager userManager;
        if (android.os.Build.VERSION.SDK_INT < 24 || (userManager = (android.os.UserManager) com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "user")) == null) {
            return true;
        }
        try {
            return userManager.isUserUnlocked();
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return true;
        }
    }

    @java.lang.Deprecated
    public static android.net.NetworkInfo.DetailedState networkStatus(android.content.Context context) {
        return getNetworkStatus(context);
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public static int readDataSaverMode(android.content.Context context) {
        int restrictBackgroundStatus = 0;
        if (context != null && android.os.Build.VERSION.SDK_INT >= 24 && com.huawei.hms.framework.common.ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
            java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "connectivity");
            if (systemService instanceof android.net.ConnectivityManager) {
                android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) systemService;
                try {
                    if (connectivityManager.isActiveNetworkMetered()) {
                        restrictBackgroundStatus = connectivityManager.getRestrictBackgroundStatus();
                    } else {
                        com.huawei.hms.framework.common.Logger.v(TAG, "ConnectType is not Mobile Network!");
                    }
                } catch (java.lang.RuntimeException e2) {
                    com.huawei.hms.framework.common.Logger.e(TAG, "SystemServer error:", e2);
                }
            }
        }
        return restrictBackgroundStatus;
    }
}
