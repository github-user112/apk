package com.umeng.commonsdk;

/* loaded from: classes.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    public static final java.lang.String KEY_FILE_NAME_APPKEY = "APPKEY";
    public static final java.lang.String KEY_FILE_NAME_LOG = "LOG";
    public static final java.lang.String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    public static final java.lang.String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    public static final java.lang.String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    public static final java.lang.String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    public static final java.lang.String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    public static final java.lang.String TAG = "UMConfigure";
    public static final java.lang.String WRAPER_TYPE_COCOS2DX_X = "Cocos2d-x";
    public static final java.lang.String WRAPER_TYPE_COCOS2DX_XLUA = "Cocos2d-x_lua";
    public static final java.lang.String WRAPER_TYPE_FLUTTER = "flutter";
    public static final java.lang.String WRAPER_TYPE_HYBRID = "hybrid";
    public static final java.lang.String WRAPER_TYPE_NATIVE = "native";
    public static final java.lang.String WRAPER_TYPE_PHONEGAP = "phonegap";
    public static final java.lang.String WRAPER_TYPE_REACTNATIVE = "react-native";
    public static final java.lang.String WRAPER_TYPE_UNITY = "Unity";
    public static final java.lang.String WRAPER_TYPE_WEEX = "weex";
    public static boolean debugLog = false;
    public static com.umeng.commonsdk.listener.OnGetOaidListener mOnGetOaidListener;
    public static com.umeng.commonsdk.debug.UMLog umDebugLog = new com.umeng.commonsdk.debug.UMLog();
    public static boolean preInitComplete = false;
    public static java.lang.Object PreInitLock = new java.lang.Object();
    public static java.lang.String sAppkey = "";
    public static java.lang.String sChannel = "";
    public static boolean isInit = false;
    public static boolean isFinish = false;
    public static java.lang.Object lockObject = new java.lang.Object();

    public static boolean checkShareSdk(java.lang.Class<?> cls) {
        try {
            return cls.getDeclaredField("isZyb") != null;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    public static java.lang.Class<?> getClass(java.lang.String str) {
        try {
            return java.lang.Class.forName(str);
        } catch (java.lang.ClassNotFoundException unused) {
            return null;
        }
    }

    public static java.lang.Object getDecInstanceObject(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.reflect.Constructor<?> declaredConstructor;
        if (cls == null) {
            return null;
        }
        try {
            declaredConstructor = cls.getDeclaredConstructor(new java.lang.Class[0]);
        } catch (java.lang.NoSuchMethodException unused) {
            declaredConstructor = null;
        }
        if (declaredConstructor == null) {
            return null;
        }
        declaredConstructor.setAccessible(true);
        try {
            return declaredConstructor.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException unused2) {
            return null;
        }
    }

    public static java.lang.reflect.Method getDecMethod(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>[] clsArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.reflect.Method declaredMethod = null;
        if (cls != null) {
            try {
                declaredMethod = cls.getDeclaredMethod(str, clsArr);
            } catch (java.lang.NoSuchMethodException unused) {
            }
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
            }
        }
        return declaredMethod;
    }

    public static boolean getInitStatus() {
        boolean z;
        synchronized (lockObject) {
            z = isFinish;
        }
        return z;
    }

    public static void getOaid(android.content.Context context, com.umeng.commonsdk.listener.OnGetOaidListener onGetOaidListener) {
        if (context == null) {
            if (debugLog) {
                android.util.Log.e(TAG, "context is null !!!");
            }
        } else {
            final android.content.Context applicationContext = context.getApplicationContext();
            mOnGetOaidListener = onGetOaidListener;
            new java.lang.Thread(new java.lang.Runnable() { // from class: com.umeng.commonsdk.UMConfigure.4
                @Override // java.lang.Runnable
                public void run() {
                    java.lang.String strA = com.umeng.analytics.pro.z.a(applicationContext);
                    if (com.umeng.commonsdk.UMConfigure.mOnGetOaidListener != null) {
                        com.umeng.commonsdk.UMConfigure.mOnGetOaidListener.onGetOaid(strA);
                    }
                }
            }).start();
        }
    }

    public static java.lang.String[] getTestDeviceInfo(android.content.Context context) {
        java.lang.String[] strArr = new java.lang.String[2];
        if (context != null) {
            try {
                strArr[0] = com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceIdForGeneral(context);
                strArr[1] = com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(context);
            } catch (java.lang.Exception unused) {
            }
        }
        return strArr;
    }

    public static java.lang.String getUMIDString(android.content.Context context) {
        if (context != null) {
            return com.umeng.commonsdk.utils.UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    public static java.lang.String getUmengZID(android.content.Context context) {
        if (context != null) {
            return com.umeng.commonsdk.utils.UMUtils.getZid(context.getApplicationContext());
        }
        return null;
    }

    public static void init(android.content.Context context, int i, java.lang.String str) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        init(context, null, null, i, str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(54:17|185|18|(2:20|21)|(3:208|22|(1:26))|198|27|(1:31)|32|(2:34|(1:36))|37|(3:41|(1:45)|46)|47|(1:49)|50|(2:52|(1:58))|59|(1:61)|(7:206|62|(4:64|(1:66)(1:67)|68|(1:70))|71|(1:73)|74|(1:78))|202|79|(6:83|(2:85|(1:87))|88|(2:90|(1:92))|93|(4:96|(1:98)|99|(2:101|(1:103)))(1:95))|200|104|(2:108|(1:110))|111|192|112|(2:114|(1:116))|196|117|(1:121)|122|(2:124|(1:126))|127|194|128|(1:130)|187|131|(1:133)|134|3a4|138|(1:140)(9:142|(1:144)|146|(1:148)|204|162|(1:168)|171|(2:173|174)(1:212))|141|145|146|(0)|204|162|(3:164|166|168)|171|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03df A[Catch: all -> 0x03e6, Exception -> 0x03f3, TRY_LEAVE, TryCatch #3 {all -> 0x03e6, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x0029, B:9:0x002d, B:11:0x0035, B:13:0x0039, B:15:0x003d, B:17:0x0045, B:32:0x009b, B:34:0x00a1, B:37:0x00ab, B:39:0x00bd, B:41:0x00c5, B:43:0x00cb, B:45:0x00cf, B:46:0x00d6, B:47:0x00db, B:49:0x00df, B:50:0x00ff, B:52:0x0104, B:54:0x0110, B:56:0x0116, B:58:0x011e, B:59:0x0137, B:61:0x0140, B:79:0x01de, B:81:0x01f2, B:83:0x01fc, B:85:0x0208, B:87:0x0218, B:88:0x021f, B:90:0x022b, B:92:0x023b, B:93:0x0242, B:96:0x0249, B:98:0x024d, B:99:0x0263, B:101:0x026f, B:103:0x027d, B:111:0x02bc, B:134:0x03a2, B:135:0x03a4, B:138:0x03a8, B:140:0x03ae, B:141:0x03bc, B:145:0x03d6, B:146:0x03d9, B:148:0x03df, B:142:0x03c1, B:144:0x03ce, B:152:0x03e5), top: B:191:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:212:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void init(android.content.Context r10, java.lang.String r11, java.lang.String r12, int r13, java.lang.String r14) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1099
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.UMConfigure.init(android.content.Context, java.lang.String, java.lang.String, int, java.lang.String):void");
    }

    public static void invoke(java.lang.reflect.Method method, java.lang.Object obj, java.lang.Object[] objArr) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (method == null || obj == null) {
            return;
        }
        try {
            method.invoke(obj, objArr);
        } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException unused) {
        }
    }

    public static void invoke(java.lang.reflect.Method method, java.lang.Object[] objArr) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException unused) {
            }
        }
    }

    public static boolean isDebugLog() {
        return debugLog;
    }

    public static boolean isPreInit() {
        boolean z;
        synchronized (PreInitLock) {
            z = preInitComplete;
        }
        return z;
    }

    public static boolean needSendZcfgEnv(android.content.Context context) {
        java.io.File filesDir = context.getFilesDir();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(filesDir.getAbsolutePath());
        return !new java.io.File(e.a.c.a.a.j(sb, java.io.File.separator, com.umeng.analytics.pro.am.l)).exists();
    }

    public static void preInit(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (context == null) {
            if (debugLog) {
                android.util.Log.e(TAG, "preInit: context is null, pls check!");
                return;
            }
            return;
        }
        android.content.Context applicationContext = context.getApplicationContext();
        if (android.text.TextUtils.isEmpty(str)) {
            str = com.umeng.commonsdk.utils.UMUtils.getAppkeyByXML(applicationContext);
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            str2 = com.umeng.commonsdk.utils.UMUtils.getChannelByXML(applicationContext);
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            str2 = "Unknown";
        }
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        sAppkey = str;
        sChannel = str2;
        com.umeng.commonsdk.service.UMGlobalContext.getInstance(applicationContext);
        com.umeng.analytics.pro.k.a(applicationContext);
        if (!needSendZcfgEnv(applicationContext)) {
            com.umeng.commonsdk.config.FieldManager.a().a(applicationContext);
        }
        synchronized (PreInitLock) {
            preInitComplete = true;
        }
    }

    public static void setCheckDevice(boolean z) {
        com.umeng.commonsdk.statistics.AnalyticsConstants.CHECK_DEVICE = z;
    }

    public static void setEncryptEnabled(boolean z) {
        com.umeng.commonsdk.statistics.b.a(z);
    }

    public static void setFile(java.lang.Class<?> cls, java.lang.String str, java.lang.String str2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        if (cls != null) {
            try {
                cls.getField(str).set(str, str2);
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void setFile(java.lang.Class<?> cls, java.lang.String str, boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        if (cls != null) {
            try {
                cls.getField(str).set(str, java.lang.Boolean.valueOf(z));
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void setLatencyWindow(long j) {
        com.umeng.commonsdk.statistics.a.f1507c = ((int) j) * 1000;
    }

    public static void setLogEnabled(boolean z) {
        java.lang.StringBuilder sb;
        try {
            debugLog = z;
            com.umeng.commonsdk.statistics.common.MLog.DEBUG = z;
            java.lang.Class<?> cls = getClass("com.umeng.message.PushAgent");
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new java.lang.Class[]{java.lang.Boolean.TYPE}), getDecInstanceObject(cls), new java.lang.Object[]{java.lang.Boolean.valueOf(z)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z);
            invoke(getDecMethod(getClass("com.umeng.umcrash.UMCrash"), "setDebug", new java.lang.Class[]{java.lang.Boolean.TYPE}), new java.lang.Object[]{java.lang.Boolean.valueOf(z)});
        } catch (java.lang.Exception e2) {
            e = e2;
            if (debugLog) {
                sb = new java.lang.StringBuilder();
                sb.append("set log enabled e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
        } catch (java.lang.Throwable th) {
            e = th;
            if (debugLog) {
                sb = new java.lang.StringBuilder();
                sb.append("set log enabled e is ");
                sb.append(e);
                android.util.Log.e(TAG, sb.toString());
            }
        }
    }

    public static void setProcessEvent(boolean z) {
        com.umeng.commonsdk.statistics.AnalyticsConstants.SUB_PROCESS_EVENT = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f A[PHI: r0
  0x000f: PHI (r0v10 java.lang.String) = 
  (r0v1 java.lang.String)
  (r0v2 java.lang.String)
  (r0v3 java.lang.String)
  (r0v4 java.lang.String)
  (r0v5 java.lang.String)
  (r0v6 java.lang.String)
  (r0v7 java.lang.String)
  (r0v8 java.lang.String)
  (r0v9 java.lang.String)
 binds: [B:6:0x000d, B:9:0x001a, B:12:0x0023, B:15:0x002c, B:18:0x0035, B:21:0x003e, B:24:0x0047, B:27:0x0050, B:30:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setWraperType(java.lang.String r2, java.lang.String r3) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L7
            goto L5c
        L7:
            java.lang.String r0 = "native"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L14
        Lf:
            com.umeng.commonsdk.stateless.a.a = r0
            com.umeng.commonsdk.statistics.a.a = r0
            goto L5c
        L14:
            java.lang.String r0 = "Cocos2d-x"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L1d
            goto Lf
        L1d:
            java.lang.String r0 = "Cocos2d-x_lua"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L26
            goto Lf
        L26:
            java.lang.String r0 = "Unity"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L2f
            goto Lf
        L2f:
            java.lang.String r0 = "react-native"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L38
            goto Lf
        L38:
            java.lang.String r0 = "phonegap"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L41
            goto Lf
        L41:
            java.lang.String r0 = "weex"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L4a
            goto Lf
        L4a:
            java.lang.String r0 = "hybrid"
            boolean r1 = r2.equals(r0)
            if (r1 == 0) goto L53
            goto Lf
        L53:
            java.lang.String r0 = "flutter"
            boolean r2 = r2.equals(r0)
            if (r2 == 0) goto L5c
            goto Lf
        L5c:
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 == 0) goto L63
            goto L67
        L63:
            com.umeng.commonsdk.stateless.a.b = r3
            com.umeng.commonsdk.statistics.a.b = r3
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.UMConfigure.setWraperType(java.lang.String, java.lang.String):void");
    }
}
