package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class j {
    public static volatile android.content.Context a;

    public static void a(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        context.getClassLoader().loadClass(com.huawei.hms.hmsscankit.ScanUtil.CONTEXT_PATH).getDeclaredMethod(com.huawei.hms.hmsscankit.ScanUtil.CONTEXT_METHOD, android.content.Context.class).invoke(null, context);
    }

    public static com.huawei.hms.hmsscankit.api.IRemoteCreator b(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException {
        java.lang.String str;
        com.huawei.hms.common.Preconditions.checkNotNull(context);
        try {
            android.content.Context contextD = d(context);
            if (contextD == null) {
                return null;
            }
            java.lang.Object objNewInstance = contextD.getClassLoader().loadClass(com.huawei.hms.hmsscankit.ScanUtil.CREATOR_PATH).newInstance();
            if (objNewInstance instanceof android.os.IBinder) {
                return com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.asInterface((android.os.IBinder) objNewInstance);
            }
            return null;
        } catch (java.lang.ClassNotFoundException unused) {
            str = "ClassNotFoundException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.IllegalAccessException unused2) {
            str = "IllegalAccessException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.InstantiationException unused3) {
            str = "InstantiationException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.NoSuchMethodException unused4) {
            str = "NoSuchMethodException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.reflect.InvocationTargetException unused5) {
            str = "InvocationTargetException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        }
    }

    public static com.huawei.hms.hmsscankit.api.IRemoteCreator c(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
        java.lang.String str;
        com.huawei.hms.common.Preconditions.checkNotNull(context);
        try {
            java.lang.Object objNewInstance = context.getClassLoader().loadClass(com.huawei.hms.hmsscankit.ScanUtil.CREATOR_PATH).newInstance();
            if (objNewInstance instanceof android.os.IBinder) {
                return com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub.asInterface((android.os.IBinder) objNewInstance);
            }
        } catch (java.lang.ClassNotFoundException unused) {
            str = "ClassNotFoundException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.IllegalAccessException unused2) {
            str = "IllegalAccessException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.InstantiationException unused3) {
            str = "InvocationTargetException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        }
        return null;
    }

    public static android.content.Context d(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        android.util.Log.i("ScankitSDK", "ScankitSDK Version: SCANLITE2.2.0.300");
        a(context);
        if (a != null) {
            android.util.Log.i("ScankitSDK", "context has been inited");
            return a;
        }
        try {
            int remoteVersion = com.huawei.hms.feature.dynamic.DynamicModule.getRemoteVersion(context.getApplicationContext(), com.huawei.hms.hmsscankit.ScanUtil.MODULE_SCANKIT);
            int iE = e(context);
            if (iE > remoteVersion) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("local Version is Higher");
                sb.append(iE);
                android.util.Log.i("ScankitSDK", sb.toString());
                a(context);
                return context;
            }
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("use remote scankit");
            sb2.append(remoteVersion);
            android.util.Log.i("ScankitSDK", sb2.toString());
            a = com.huawei.hms.feature.dynamic.DynamicModule.load(context.getApplicationContext(), com.huawei.hms.feature.dynamic.DynamicModule.PREFER_REMOTE, com.huawei.hms.hmsscankit.ScanUtil.MODULE_SCANKIT).getModuleContext();
            return a;
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException unused) {
            a(context);
            android.util.Log.w("ScankitSDK", "Remote Load exception");
            return context;
        } catch (java.lang.ClassNotFoundException unused2) {
            android.util.Log.e("ScankitSDK", "ClassNotFoundException exception");
            a(context);
            return context;
        } catch (java.lang.IllegalAccessException unused3) {
            android.util.Log.e("ScankitSDK", "IllegalAccessException exception");
            a(context);
            return context;
        } catch (java.lang.NoSuchMethodException unused4) {
            android.util.Log.e("ScankitSDK", "NoSuchMethodException exception");
            a(context);
            return context;
        } catch (java.lang.RuntimeException unused5) {
            android.util.Log.e("ScankitSDK", "other RuntimeException exception");
            a(context);
            return context;
        } catch (java.lang.reflect.InvocationTargetException unused6) {
            android.util.Log.e("ScankitSDK", "InvocationTargetException exception");
            a(context);
            return context;
        } catch (java.lang.Exception unused7) {
            android.util.Log.e("ScankitSDK", "Exception exception");
            a(context);
            return context;
        } catch (java.lang.Throwable unused8) {
            android.util.Log.e("ScankitSDK", "Throwable exception");
            a(context);
            return context;
        }
    }

    public static int e(android.content.Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getInt(com.huawei.hms.hmsscankit.ScanUtil.MODULE_SCANKIT_LOCAL, Integer.MAX_VALUE);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            com.huawei.hms.scankit.util.a.b("exception", "NameNotFoundException");
            return Integer.MAX_VALUE;
        }
    }
}
