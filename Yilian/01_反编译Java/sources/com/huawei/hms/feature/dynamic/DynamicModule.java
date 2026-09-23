package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public class DynamicModule {
    public static final int b = 256;

    /* renamed from: c, reason: collision with root package name */
    public static final int f265c = -100;
    public static int h = 0;
    public static final int i = 1;
    public static final int j = 2;

    /* renamed from: g, reason: collision with root package name */
    public android.content.Context f269g;
    public static final com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy PREFER_REMOTE = new com.huawei.hms.feature.dynamic.a.e();
    public static final com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new com.huawei.hms.feature.dynamic.a.c();
    public static final com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new com.huawei.hms.feature.dynamic.a.d();
    public static final com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new com.huawei.hms.feature.dynamic.a.e();
    public static final java.lang.String a = com.huawei.hms.feature.dynamic.DynamicModule.class.getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.ThreadLocal<java.util.HashMap<java.lang.String, java.lang.Boolean>> f266d = new java.lang.ThreadLocal<>();

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.ThreadLocal<java.util.HashMap<java.lang.String, java.lang.String>> f267e = new java.lang.ThreadLocal<>();

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.ThreadLocal<java.util.HashMap<java.lang.String, com.huawei.hms.feature.dynamic.IDynamicLoader>> f268f = new java.lang.ThreadLocal<>();

    public static class DynamicLoaderClassLoader {
        public static java.util.HashMap<java.lang.String, java.lang.ClassLoader> a = new java.util.HashMap<>();

        public static java.lang.ClassLoader getsClassLoader(java.lang.String str) {
            return a.get(str);
        }

        public static void setsClassLoader(java.lang.String str, java.lang.ClassLoader classLoader) {
            a.put(str, classLoader);
        }
    }

    public static class LoadingException extends java.lang.Exception {
        public android.os.Bundle a;

        public LoadingException(java.lang.String str) {
            super(str);
        }

        public /* synthetic */ LoadingException(java.lang.String str, byte b) {
            this(str);
        }

        public LoadingException(java.lang.String str, android.os.Bundle bundle) {
            super(str);
            this.a = bundle;
        }

        public /* synthetic */ LoadingException(java.lang.String str, android.os.Bundle bundle, byte b) {
            this(str, bundle);
        }

        public android.os.Bundle getBundle() {
            return this.a;
        }
    }

    public interface VersionPolicy {
        android.os.Bundle getModuleInfo(android.content.Context context, java.lang.String str);
    }

    public static class a extends java.lang.Exception {
        public a(java.lang.String str) {
            super(str);
        }

        public /* synthetic */ a(java.lang.String str, byte b) {
            this(str);
        }
    }

    public DynamicModule(android.content.Context context) {
        this.f269g = context;
    }

    public static java.util.Set<java.lang.String> GetInstalledModuleInfo() {
        return com.huawei.hms.feature.dynamic.c.a().a;
    }

    public static android.content.Context a(android.content.Context context, java.lang.String str, android.os.Bundle bundle, com.huawei.hms.feature.dynamic.IDynamicLoader iDynamicLoader) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        try {
            com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperLoad = iDynamicLoader.load(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(context), str, bundle.getInt(com.huawei.hms.feature.dynamic.b.j), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle));
            if (com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad) == null) {
                com.huawei.hms.common.util.Logger.w(a, "Get remote context is null.");
                return null;
            }
            if (com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad) instanceof android.content.Context) {
                com.huawei.hms.common.util.Logger.i(a, "Get context success.");
                return (android.content.Context) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad);
            }
            if (!com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad).getClass().getName().equals(com.huawei.hms.feature.dynamic.DynamicModule.LoadingException.class.getName())) {
                return null;
            }
            android.os.Bundle bundle2 = (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad).getClass().getDeclaredMethod("getBundle", new java.lang.Class[0]).invoke(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapperLoad), new java.lang.Object[0]);
            com.huawei.hms.common.util.Logger.w(a, "Successfully get the bundle in exception.");
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Failed to load, please check the bundle in exception.", bundle2, (byte) 0);
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception e3) {
            com.huawei.hms.common.util.Logger.w(a, "Failed to get remote module context.", e3);
            return null;
        }
    }

    public static android.os.Bundle a(android.content.Context context, java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.a, com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        try {
            android.os.Bundle bundleD = d(context, str);
            java.lang.String string = bundleD.getString(com.huawei.hms.feature.dynamic.b.p);
            if (android.text.TextUtils.isEmpty(string) || !new java.io.File(string).exists()) {
                com.huawei.hms.common.util.Logger.w(a, "The loader_path:" + string + " is not available.");
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("The loader_path in queryBundle is empty or not exist.", b2);
            }
            com.huawei.hms.common.util.Logger.i(a, "Query HMS module:" + str + " info success.");
            return bundleD;
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception unused) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.a("failed to get :" + str + " info.", b2);
        }
    }

    public static com.huawei.hms.feature.dynamic.DynamicModule a(android.content.Context context, java.lang.String str, android.os.Bundle bundle) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        java.lang.Boolean bool;
        com.huawei.hms.feature.dynamic.IDynamicLoader iDynamicLoader;
        byte b2 = 0;
        try {
            synchronized (com.huawei.hms.feature.dynamic.DynamicModule.class) {
                java.util.HashMap<java.lang.String, java.lang.Boolean> map = f266d.get();
                map.getClass();
                bool = map.get(str);
                java.util.HashMap<java.lang.String, com.huawei.hms.feature.dynamic.IDynamicLoader> map2 = f268f.get();
                map2.getClass();
                iDynamicLoader = map2.get(str);
            }
            if (bool == null || iDynamicLoader == null) {
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("The loader for " + str + " was not prepared.", b2);
            }
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            android.content.Context contextA = a(context, str, bundle, iDynamicLoader);
            if (contextA != null) {
                return new com.huawei.hms.feature.dynamic.DynamicModule(contextA);
            }
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Failed to get remote module context: null", b2);
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception unused) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Load Module Error.", b2);
        }
    }

    public static com.huawei.hms.feature.dynamic.IDynamicInstall a(android.content.Context context) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        int i2;
        int localVersion;
        byte b2 = 0;
        java.lang.String string = null;
        try {
            android.os.Bundle bundleA = a(context, com.huawei.hms.feature.dynamic.b.f275d);
            string = bundleA.getString(com.huawei.hms.feature.dynamic.b.p);
            i2 = bundleA.getInt(com.huawei.hms.feature.dynamic.b.o);
        } catch (java.lang.Exception e2) {
            com.huawei.hms.common.util.Logger.w(a, "Cannot get remote HMS dynamicLoader.", e2);
            i2 = 0;
        }
        try {
            localVersion = getLocalVersion(context, com.huawei.hms.feature.dynamic.b.f275d);
        } catch (java.lang.Exception e3) {
            com.huawei.hms.common.util.Logger.w(a, "Cannot find local dynamicLoader fallback.", e3);
            localVersion = 0;
        }
        com.huawei.hms.common.util.Logger.i(a, "DynamicLoader remoteHMSVersion:" + i2 + ", hmsLoaderPath:" + string + ", localLoaderVersion:" + localVersion);
        int i3 = i2 > localVersion ? i2 : localVersion;
        if (i3 > 10009300) {
            if (i2 > localVersion) {
                com.huawei.hms.common.util.Logger.i(a, "Choose hms dynamicLoader: ".concat(java.lang.String.valueOf(string)));
                h = 1;
                return a(string);
            }
            com.huawei.hms.common.util.Logger.i(a, "Choose local dynamicLoader fallback: ");
            h = 2;
            return b(context);
        }
        com.huawei.hms.common.util.Logger.w(a, "The current version:" + i3 + " is too low.");
        throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("The loader version:" + i3 + " is too low to support HFF.", b2);
    }

    public static com.huawei.hms.feature.dynamic.IDynamicInstall a(java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        if (str != null) {
            try {
                if (!android.text.TextUtils.isEmpty(str)) {
                    return com.huawei.hms.feature.dynamic.IDynamicInstall.Stub.asInterface((android.os.IBinder) new com.huawei.hms.feature.dynamic.a.a(str, java.lang.ClassLoader.getSystemClassLoader()).loadClass(com.huawei.hms.feature.dynamic.b.f277f).getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
                }
            } catch (java.lang.ClassNotFoundException | java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException e2) {
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("getHMSDynamicInstaller: failed to instantiate dynamic loader:" + e2.getMessage(), b2);
            }
        }
        throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Failed to get dynamicLoader path.", b2);
    }

    public static void a(final java.lang.String str, java.lang.ClassLoader classLoader) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        try {
            final android.os.IBinder iBinder = (android.os.IBinder) classLoader.loadClass(com.huawei.hms.feature.dynamic.b.f276e).getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
            f268f.set(new java.util.HashMap<java.lang.String, com.huawei.hms.feature.dynamic.IDynamicLoader>() { // from class: com.huawei.hms.feature.dynamic.DynamicModule.3
                {
                    put(str, com.huawei.hms.feature.dynamic.IDynamicLoader.Stub.asInterface(iBinder));
                }
            });
        } catch (java.lang.ClassNotFoundException | java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException e2) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Failed to get loader interface:" + e2.getMessage(), b2);
        }
    }

    public static android.os.Bundle b(android.content.Context context, final java.lang.String str) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, com.huawei.hms.feature.dynamic.DynamicModule.LoadingException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method declaredMethod;
        java.lang.ClassLoader classLoader;
        boolean z = true;
        try {
            try {
                java.lang.Class<?> clsLoadClass = (context.getApplicationContext() == null ? context : context.getApplicationContext()).getClassLoader().loadClass(com.huawei.hms.feature.dynamic.DynamicModule.DynamicLoaderClassLoader.class.getName());
                java.lang.reflect.Method declaredMethod2 = clsLoadClass.getDeclaredMethod("getsClassLoader", java.lang.String.class);
                declaredMethod = clsLoadClass.getDeclaredMethod("setsClassLoader", java.lang.String.class, java.lang.ClassLoader.class);
                classLoader = (java.lang.ClassLoader) declaredMethod2.invoke(null, str);
            } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
                throw e2;
            }
        } catch (java.lang.Exception e3) {
            com.huawei.hms.common.util.Logger.w(a, "failed to load.", e3);
        }
        if (classLoader == null) {
            try {
                com.huawei.hms.common.util.Logger.i(a, "No available cached loader, query remote.");
                android.os.Bundle bundleC = c(context, str);
                synchronized (com.huawei.hms.feature.dynamic.DynamicModule.class) {
                    java.util.HashMap<java.lang.String, java.lang.String> map = f267e.get();
                    map.getClass();
                    java.lang.String str2 = map.get(str);
                    if (android.text.TextUtils.isEmpty(str2)) {
                        return bundleC;
                    }
                    if (android.os.Build.VERSION.SDK_INT < 21) {
                        com.huawei.hms.common.util.Logger.i(a, "The android version is below android 5.");
                        com.huawei.hms.feature.dynamic.a.b bVar = new com.huawei.hms.feature.dynamic.a.b(str2, context.getFilesDir().getAbsolutePath(), java.lang.ClassLoader.getSystemClassLoader());
                        a(str, bVar);
                        declaredMethod.invoke(null, str, bVar);
                    } else {
                        com.huawei.hms.feature.dynamic.a.a aVar = new com.huawei.hms.feature.dynamic.a.a(str2, java.lang.ClassLoader.getSystemClassLoader());
                        a(str, aVar);
                        declaredMethod.invoke(null, str, aVar);
                    }
                    f266d.set(new java.util.HashMap<java.lang.String, java.lang.Boolean>() { // from class: com.huawei.hms.feature.dynamic.DynamicModule.1
                        {
                            put(str, java.lang.Boolean.TRUE);
                        }
                    });
                    return bundleC;
                }
            } catch (com.huawei.hms.feature.dynamic.DynamicModule.a unused) {
            }
        } else if (classLoader != java.lang.ClassLoader.getSystemClassLoader()) {
            com.huawei.hms.common.util.Logger.i(a, "Cached loader is available, ready to use it.");
            try {
                a(str, classLoader);
            } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e4) {
                com.huawei.hms.common.util.Logger.w(a, "Get loader interface failed.", e4);
            }
            java.util.HashMap<java.lang.String, java.lang.Boolean> map2 = new java.util.HashMap<>();
            map2.put(str, java.lang.Boolean.valueOf(z));
            f266d.set(map2);
            return new android.os.Bundle();
        }
        z = false;
        java.util.HashMap<java.lang.String, java.lang.Boolean> map22 = new java.util.HashMap<>();
        map22.put(str, java.lang.Boolean.valueOf(z));
        f266d.set(map22);
        return new android.os.Bundle();
    }

    public static com.huawei.hms.feature.dynamic.IDynamicInstall b(android.content.Context context) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        try {
            return (com.huawei.hms.feature.dynamic.IDynamicInstall) context.getClassLoader().loadClass(com.huawei.hms.feature.dynamic.b.f277f).newInstance();
        } catch (java.lang.ClassNotFoundException | java.lang.IllegalAccessException | java.lang.InstantiationException e2) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("getLocalLoaderFallback: failed to instantiate dynamic loader: " + e2.getMessage(), (byte) 0);
        }
    }

    public static android.os.Bundle c(android.content.Context context, final java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.a, com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        try {
            android.os.Bundle bundleD = d(context, str);
            final java.lang.String string = bundleD.getString(com.huawei.hms.feature.dynamic.b.p);
            if (!android.text.TextUtils.isEmpty(string) && new java.io.File(string).exists()) {
                f267e.set(new java.util.HashMap<java.lang.String, java.lang.String>() { // from class: com.huawei.hms.feature.dynamic.DynamicModule.2
                    {
                        put(str, string);
                    }
                });
                com.huawei.hms.common.util.Logger.i(a, "Query remote version by module name:" + str + " success.");
                return bundleD;
            }
            com.huawei.hms.common.util.Logger.w(a, "The loader_path:" + string + " in query bundle is not available,change the module version to:-100");
            bundleD.putInt(com.huawei.hms.feature.dynamic.b.j, -100);
            return bundleD;
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception unused) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.a("failed to Query remote version.", (byte) 0);
        }
    }

    public static android.os.Bundle d(android.content.Context context, java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.a, com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        try {
            android.content.ContentResolver contentResolver = context.getContentResolver();
            if (contentResolver == null) {
                throw new com.huawei.hms.feature.dynamic.DynamicModule.a("Query remote version failed: null contentResolver.", b2);
            }
            android.os.Bundle bundleCall = contentResolver.call(android.net.Uri.parse(com.huawei.hms.feature.dynamic.b.a), str, (java.lang.String) null, (android.os.Bundle) null);
            if (bundleCall == null) {
                com.huawei.hms.common.util.Logger.w(a, "Failed to get bundle info:null.");
                throw new com.huawei.hms.feature.dynamic.DynamicModule.a("Query remote version failed: null bundle info.", b2);
            }
            int i2 = bundleCall.getInt(com.huawei.hms.feature.dynamic.b.f278g);
            java.lang.String string = bundleCall.getString(com.huawei.hms.feature.dynamic.b.p);
            com.huawei.hms.common.util.Logger.i(a, "bundle info: errorCode:" + i2 + ", moduleVersion:" + bundleCall.getInt(com.huawei.hms.feature.dynamic.b.j) + ", modulePath:" + bundleCall.getString(com.huawei.hms.feature.dynamic.b.l) + ", loader_version:" + bundleCall.getInt(com.huawei.hms.feature.dynamic.b.o) + ", loaderPath:" + string + ", armeabiType:" + bundleCall.getInt(com.huawei.hms.feature.dynamic.b.q));
            if (i2 == 0) {
                return bundleCall;
            }
            com.huawei.hms.common.util.Logger.w(a, "Failed to get " + str + " bundle info, errcode:" + i2);
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Query " + str + " unavailable, errorCode:" + i2, bundleCall, b2);
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception unused) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.a("failed to get :" + str + " info.", b2);
        }
    }

    public static android.os.Bundle getLocalModuleInfo(android.content.Context context, java.lang.String str) {
        int localVersion = getLocalVersion(context, str);
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString(com.huawei.hms.feature.dynamic.b.i, str);
        bundle.putInt(com.huawei.hms.feature.dynamic.b.k, localVersion);
        return bundle;
    }

    public static int getLocalVersion(android.content.Context context, java.lang.String str) {
        if (context == null || str.length() == 0 || str.length() > 256) {
            com.huawei.hms.common.util.Logger.e(a, "Invalid context or moduleName.");
            return 0;
        }
        try {
            java.lang.String str2 = "com.huawei.hms.feature.dynamic.descriptors." + str + ".ModuleDescriptor";
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            return context.getClassLoader().loadClass(str2).getDeclaredField("MODULE_VERSION").getInt(null);
        } catch (java.lang.ClassNotFoundException unused) {
            com.huawei.hms.common.util.Logger.w(a, "Cannot find the class of module descriptor for ".concat(str));
            return 0;
        } catch (java.lang.Exception e2) {
            com.huawei.hms.common.util.Logger.w(a, "Get local module info failed.", e2);
            return 0;
        }
    }

    public static android.os.Bundle getRemoteModuleInfo(android.content.Context context, java.lang.String str) {
        try {
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            throw e2;
        } catch (java.lang.Exception e3) {
            com.huawei.hms.common.util.Logger.w(a, "Get remote module info for " + str + " failed.", e3);
        }
        synchronized (com.huawei.hms.feature.dynamic.DynamicModule.class) {
            if (f266d.get() == null || f266d.get().get(str) == null || !f266d.get().get(str).booleanValue()) {
                android.os.Bundle bundleB = b(context, str);
                if (bundleB.getInt(com.huawei.hms.feature.dynamic.b.j) > 0) {
                    return bundleB;
                }
            }
            if (f266d.get().get(str).booleanValue()) {
                try {
                    return c(context, str);
                } catch (com.huawei.hms.feature.dynamic.DynamicModule.a e4) {
                    com.huawei.hms.common.util.Logger.w(a, "Query remote module info in HMS failed.", e4);
                }
            }
            return new android.os.Bundle();
        }
    }

    public static int getRemoteVersion(android.content.Context context, java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        try {
            android.os.Bundle bundleC = c(context, str);
            if (bundleC != null && !bundleC.isEmpty()) {
                return bundleC.getInt(com.huawei.hms.feature.dynamic.b.j);
            }
            com.huawei.hms.common.util.Logger.w(a, "Query remote module:" + str + " info failed.");
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Query remote module info failed: null or empty.", b2);
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.a e2) {
            com.huawei.hms.common.util.Logger.w(a, "Query remote module:" + str + " exception:" + e2);
            return 0;
        }
    }

    public static void install(android.content.Context context) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        if (context == null) {
            com.huawei.hms.common.util.Logger.e(a, "The input context is null.");
            return;
        }
        byte b2 = 0;
        try {
            com.huawei.hms.feature.dynamic.IDynamicInstall iDynamicInstallA = a(context);
            if (iDynamicInstallA == null) {
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Get dynamicInstaller failed.", b2);
            }
            android.os.Bundle bundleInstall = iDynamicInstallA.install(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(context), new android.os.Bundle());
            if (bundleInstall == null) {
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Get install info failed: moduleBundle is null.", b2);
            }
            com.huawei.hms.feature.dynamic.c.a().a(bundleInstall);
            com.huawei.hms.common.util.Logger.i(a, "Install module success.");
        } catch (android.os.RemoteException | com.huawei.hms.feature.dynamic.DynamicModule.LoadingException | java.lang.NullPointerException e2) {
            if (h == 2 || getLocalVersion(context, com.huawei.hms.feature.dynamic.b.f275d) <= 0) {
                com.huawei.hms.common.util.Logger.w(a, "Install module failed.", e2);
                return;
            }
            com.huawei.hms.common.util.Logger.i(a, "Ready to use local loader-fallback to retry:");
            try {
                android.os.Bundle bundleInstall2 = b(context).install(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(context), new android.os.Bundle());
                if (bundleInstall2 == null) {
                    throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Retry: get install info failed: moduleBundle is null.", b2);
                }
                com.huawei.hms.feature.dynamic.c.a().a(bundleInstall2);
                com.huawei.hms.common.util.Logger.i(a, "Retry install module with local loader-fallback success.");
            } catch (android.os.RemoteException | com.huawei.hms.feature.dynamic.DynamicModule.LoadingException | java.lang.NullPointerException e3) {
                com.huawei.hms.common.util.Logger.w(a, "Retry failed with local loader-fallback.", e3);
            }
        }
    }

    public static com.huawei.hms.feature.dynamic.DynamicModule load(android.content.Context context, com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy versionPolicy, java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        byte b2 = 0;
        if (context == null || versionPolicy == null || str == null || str.length() == 0 || str.length() > 256) {
            throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Null param, please check it.", b2);
        }
        try {
            try {
                android.os.Bundle moduleInfo = versionPolicy.getModuleInfo(context, str);
                if (moduleInfo.getInt(com.huawei.hms.feature.dynamic.b.j) <= 0) {
                    if (moduleInfo.getInt(com.huawei.hms.feature.dynamic.b.k) <= 0) {
                        throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Query remote version and local version failed.", b2);
                    }
                    com.huawei.hms.common.util.Logger.i(a, "Remote version is invalid, use local context.");
                    return new com.huawei.hms.feature.dynamic.DynamicModule(context.getApplicationContext());
                }
                try {
                    return a(context, str, moduleInfo);
                } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
                    com.huawei.hms.common.util.Logger.w(a, "Failed to load remote module.", e2);
                    if (getLocalVersion(context, str) <= 0) {
                        return null;
                    }
                    com.huawei.hms.common.util.Logger.d(a, "Local module version is valid, use local fallback.");
                    return new com.huawei.hms.feature.dynamic.DynamicModule(context.getApplicationContext());
                }
            } catch (java.lang.Exception e3) {
                com.huawei.hms.common.util.Logger.e(a, "Other exception:".concat(java.lang.String.valueOf(e3)));
                throw new com.huawei.hms.feature.dynamic.DynamicModule.LoadingException("Load failed.", b2);
            }
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e4) {
            throw e4;
        }
    }

    public final android.content.Context getModuleContext() {
        return this.f269g;
    }
}
