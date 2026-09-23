package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerResourcePatcher {
    public static final java.lang.String TAG = "Tinker.ResourcePatcher";
    public static final java.lang.String TEST_ASSETS_VALUE = "only_use_to_test_tinker_resource.txt";
    public static java.lang.reflect.Method addAssetPathAsSharedLibraryMethod;
    public static java.lang.reflect.Method addAssetPathMethod;
    public static java.lang.reflect.Field assetsFiled;
    public static java.lang.Object currentActivityThread;
    public static java.lang.reflect.Method ensureStringBlocksMethod;
    public static android.content.res.AssetManager newAssetManager;
    public static java.lang.reflect.Constructor<?> newAssetManagerCtor;
    public static android.content.Context packageContext;
    public static android.content.Context packageResContext;
    public static java.lang.reflect.Field packagesFiled;
    public static java.lang.reflect.Field publicSourceDirField;
    public static java.util.Collection<java.lang.ref.WeakReference<android.content.res.Resources>> references;
    public static java.lang.reflect.Field resDir;
    public static java.util.Map<java.lang.Object, java.lang.ref.WeakReference<java.lang.Object>> resourceImpls;
    public static java.lang.reflect.Field resourcePackagesFiled;
    public static java.lang.reflect.Field resourcesImplFiled;
    public static long storedPatchedResModifiedTime;
    public static java.lang.reflect.Field stringBlocksField;

    public static final class ResourceInsuranceHandlerCallback implements android.os.Handler.Callback {
        public static final java.lang.String LAUNCH_ACTIVITY_LIFECYCLE_ITEM_CLASSNAME = "android.app.servertransaction.LaunchActivityItem";
        public final int EXECUTE_TRANSACTION;
        public final int LAUNCH_ACTIVITY;
        public final int RELAUNCH_ACTIVITY;
        public final android.content.Context mContext;
        public final android.os.Handler.Callback mOriginalCallback;
        public final java.lang.String mPatchResApkPath;
        public java.lang.reflect.Method mGetCallbacksMethod = null;
        public boolean mSkipInterceptExecuteTransaction = false;

        public ResourceInsuranceHandlerCallback(android.content.Context context, java.lang.String str, android.os.Handler.Callback callback, java.lang.Class<?> cls) {
            android.content.Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext != null ? applicationContext : context;
            this.mPatchResApkPath = str;
            this.mOriginalCallback = callback;
            this.LAUNCH_ACTIVITY = fetchMessageId(cls, "LAUNCH_ACTIVITY", 100);
            this.RELAUNCH_ACTIVITY = fetchMessageId(cls, "RELAUNCH_ACTIVITY", 126);
            this.EXECUTE_TRANSACTION = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(28, true) ? fetchMessageId(cls, "EXECUTE_TRANSACTION ", 159) : -1;
        }

        private int fetchMessageId(java.lang.Class<?> cls, java.lang.String str, int i) {
            try {
                return com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls, str).getInt(null);
            } catch (java.lang.Throwable unused) {
                return i;
            }
        }

        private boolean hackMessage(android.os.Message message) {
            boolean z;
            java.lang.Object obj;
            if (com.tencent.tinker.loader.TinkerResourcePatcher.isPatchedResModifiedAfterLastLoad(this.mPatchResApkPath)) {
                int i = message.what;
                if (i != this.LAUNCH_ACTIVITY && i != this.RELAUNCH_ACTIVITY) {
                    if (i == this.EXECUTE_TRANSACTION && !this.mSkipInterceptExecuteTransaction) {
                        java.lang.Object obj2 = message.obj;
                        if (obj2 == null) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.loader.TinkerResourcePatcher.TAG, "transaction is null, skip rest insurance logic.", new java.lang.Object[0]);
                        } else {
                            if (this.mGetCallbacksMethod == null) {
                                try {
                                    this.mGetCallbacksMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj2, "getCallbacks", (java.lang.Class<?>[]) new java.lang.Class[0]);
                                } catch (java.lang.Throwable unused) {
                                }
                            }
                            java.lang.reflect.Method method = this.mGetCallbacksMethod;
                            if (method == null) {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.TinkerResourcePatcher.TAG, "fail to find getLifecycleStateRequest method, skip rest insurance logic.", new java.lang.Object[0]);
                                this.mSkipInterceptExecuteTransaction = true;
                            } else {
                                try {
                                    java.util.List list = (java.util.List) method.invoke(obj2, new java.lang.Object[0]);
                                    if (list != null && list.size() > 0 && (obj = list.get(0)) != null) {
                                        if (obj.getClass().getName().equals(LAUNCH_ACTIVITY_LIFECYCLE_ITEM_CLASSNAME)) {
                                        }
                                    }
                                } catch (java.lang.Throwable unused2) {
                                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.TinkerResourcePatcher.TAG, "fail to call getLifecycleStateRequest method, skip rest insurance logic.", new java.lang.Object[0]);
                                }
                            }
                        }
                    }
                    z = false;
                }
                z = true;
            } else {
                z = false;
            }
            if (z) {
                try {
                    com.tencent.tinker.loader.TinkerResourcePatcher.monkeyPatchExistingResources(this.mContext, this.mPatchResApkPath, true);
                } catch (java.lang.Throwable th) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(com.tencent.tinker.loader.TinkerResourcePatcher.TAG, th, "fail to ensure patched resources available after it's modified.", new java.lang.Object[0]);
                }
            }
            return false;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            if (hackMessage(message)) {
                return true;
            }
            android.os.Handler.Callback callback = this.mOriginalCallback;
            if (callback != null) {
                return callback.handleMessage(message);
            }
            return false;
        }
    }

    public static boolean checkResUpdate(android.content.Context context) {
        try {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(context.getAssets().open(TEST_ASSETS_VALUE));
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "checkResUpdate success, found test resource assets file only_use_to_test_tinker_resource.txt", new java.lang.Object[0]);
            return true;
        } catch (java.lang.Throwable th) {
            try {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "checkResUpdate failed, can't find test resource assets file only_use_to_test_tinker_resource.txt e:" + th.getMessage(), new java.lang.Object[0]);
                return false;
            } finally {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(null);
            }
        }
    }

    public static void clearPreloadTypedArrayIssue(android.content.res.Resources resources) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "try to clear typedArray cache!", new java.lang.Object[0]);
        try {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField((java.lang.Class<?>) android.content.res.Resources.class, "mTypedArrayPool").get(resources);
            do {
            } while (com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "acquire", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(obj, new java.lang.Object[0]) != null);
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "clearPreloadTypedArrayIssue failed, ignore error: " + th, new java.lang.Object[0]);
        }
    }

    public static void installResourceInsuranceHacks(android.content.Context context, java.lang.String str) {
        try {
            java.lang.Object activityThread = com.tencent.tinker.loader.shareutil.ShareReflectUtil.getActivityThread(context, null);
            android.os.Handler handler = (android.os.Handler) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(activityThread, "mH").get(activityThread);
            java.lang.reflect.Field fieldFindField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField((java.lang.Class<?>) android.os.Handler.class, "mCallback");
            android.os.Handler.Callback callback = (android.os.Handler.Callback) fieldFindField.get(handler);
            if (callback instanceof com.tencent.tinker.loader.TinkerResourcePatcher.ResourceInsuranceHandlerCallback) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "installResourceInsuranceHacks: already installed, skip rest logic.", new java.lang.Object[0]);
            } else {
                fieldFindField.set(handler, new com.tencent.tinker.loader.TinkerResourcePatcher.ResourceInsuranceHandlerCallback(context, str, callback, handler.getClass()));
            }
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "failed to install resource insurance hack.", new java.lang.Object[0]);
        }
    }

    public static boolean isPatchedResModifiedAfterLastLoad(java.lang.String str) {
        long jLastModified;
        try {
            jLastModified = new java.io.File(str).lastModified();
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "Fail to get patched res modified time.", new java.lang.Object[0]);
            jLastModified = 0;
        }
        return (jLastModified == 0 || jLastModified == storedPatchedResModifiedTime) ? false : true;
    }

    public static void isResourceCanPatch(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.Class<?> cls;
        java.lang.Class<?> cls2 = java.lang.Class.forName("android.app.ActivityThread");
        currentActivityThread = com.tencent.tinker.loader.shareutil.ShareReflectUtil.getActivityThread(context, cls2);
        try {
            cls = java.lang.Class.forName("android.app.LoadedApk");
        } catch (java.lang.ClassNotFoundException unused) {
            cls = java.lang.Class.forName("android.app.ActivityThread$PackageInfo");
        }
        resDir = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls, "mResDir");
        packagesFiled = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls2, "mPackages");
        try {
            resourcePackagesFiled = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls2, "mResourcePackages");
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "Fail to get mResourcePackages field.", new java.lang.Object[0]);
            resourcePackagesFiled = null;
        }
        android.content.res.AssetManager assets = context.getAssets();
        addAssetPathMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(assets, "addAssetPath", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class});
        if (shouldAddSharedLibraryAssets(context.getApplicationInfo())) {
            addAssetPathAsSharedLibraryMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(assets, "addAssetPathAsSharedLibrary", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class});
        }
        try {
            stringBlocksField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(assets, "mStringBlocks");
            ensureStringBlocksMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(assets, "ensureStringBlocks", (java.lang.Class<?>[]) new java.lang.Class[0]);
        } catch (java.lang.Throwable unused2) {
        }
        newAssetManagerCtor = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findConstructor(assets, (java.lang.Class<?>[]) new java.lang.Class[0]);
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            java.lang.Class<?> cls3 = java.lang.Class.forName("android.app.ResourcesManager");
            java.lang.Object objInvoke = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(cls3, "getInstance", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            try {
                references = ((android.util.ArrayMap) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls3, "mActiveResources").get(objInvoke)).values();
            } catch (java.lang.NoSuchFieldException unused3) {
                references = (java.util.Collection) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls3, "mResourceReferences").get(objInvoke);
                try {
                    resourceImpls = (java.util.Map) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls3, "mResourceImpls").get(objInvoke);
                } catch (java.lang.Throwable unused4) {
                    resourceImpls = null;
                }
            }
        } else {
            references = ((java.util.HashMap) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls2, "mActiveResources").get(currentActivityThread)).values();
        }
        if (references == null) {
            throw new java.lang.IllegalStateException("resource references is null");
        }
        android.content.res.Resources resources = context.getResources();
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            try {
                resourcesImplFiled = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(resources, "mResourcesImpl");
            } catch (java.lang.Throwable unused5) {
            }
        } else {
            assetsFiled = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(resources, "mAssets");
        }
        try {
            publicSourceDirField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField((java.lang.Class<?>) android.content.pm.ApplicationInfo.class, "publicSourceDir");
        } catch (java.lang.NoSuchFieldException unused6) {
        }
    }

    public static void monkeyPatchExistingResources(android.content.Context context, java.lang.String str, boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (str == null) {
            return;
        }
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        packageContext = context.createPackageContext(context.getPackageName(), 1);
        packageResContext = context.createPackageContext(context.getPackageName(), 0);
        java.lang.reflect.Field[] fieldArr = {packagesFiled, resourcePackagesFiled};
        for (int i = 0; i < 2; i++) {
            java.lang.reflect.Field field = fieldArr[i];
            if (field != null) {
                java.util.Iterator it = ((java.util.Map) field.get(currentActivityThread)).entrySet().iterator();
                while (it.hasNext()) {
                    java.lang.Object obj = ((java.lang.ref.WeakReference) ((java.util.Map.Entry) it.next()).getValue()).get();
                    if (obj != null && applicationInfo.sourceDir.equals((java.lang.String) resDir.get(obj))) {
                        resDir.set(obj, str);
                    }
                }
            }
        }
        if (z) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "Re-injecting, skip rest logic.", new java.lang.Object[0]);
            recordCurrentPatchedResModifiedTime(str);
            return;
        }
        android.content.res.AssetManager assetManager = (android.content.res.AssetManager) newAssetManagerCtor.newInstance(new java.lang.Object[0]);
        newAssetManager = assetManager;
        if (((java.lang.Integer) addAssetPathMethod.invoke(assetManager, str)).intValue() == 0) {
            throw new java.lang.IllegalStateException("Could not create new AssetManager");
        }
        recordCurrentPatchedResModifiedTime(str);
        if (shouldAddSharedLibraryAssets(applicationInfo)) {
            for (java.lang.String str2 : applicationInfo.sharedLibraryFiles) {
                if (str2.endsWith(".apk")) {
                    if (((java.lang.Integer) addAssetPathAsSharedLibraryMethod.invoke(newAssetManager, str2)).intValue() == 0) {
                        throw new java.lang.IllegalStateException("AssetManager add SharedLibrary Fail");
                    }
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, e.a.c.a.a.e("addAssetPathAsSharedLibrary ", str2), new java.lang.Object[0]);
                }
            }
        }
        java.lang.reflect.Field field2 = stringBlocksField;
        if (field2 != null && ensureStringBlocksMethod != null) {
            field2.set(newAssetManager, null);
            ensureStringBlocksMethod.invoke(newAssetManager, new java.lang.Object[0]);
        }
        java.util.Iterator<java.lang.ref.WeakReference<android.content.res.Resources>> it2 = references.iterator();
        while (it2.hasNext()) {
            android.content.res.Resources resources = it2.next().get();
            if (resources != null) {
                try {
                    assetsFiled.set(resources, newAssetManager);
                } catch (java.lang.Throwable unused) {
                    java.lang.Object obj2 = resourcesImplFiled.get(resources);
                    com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj2, "mAssets").set(obj2, newAssetManager);
                }
                clearPreloadTypedArrayIssue(resources);
                resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
            }
        }
        try {
            if (resourceImpls != null) {
                java.util.Iterator<java.lang.ref.WeakReference<java.lang.Object>> it3 = resourceImpls.values().iterator();
                while (it3.hasNext()) {
                    java.lang.Object obj3 = it3.next().get();
                    if (obj3 != null) {
                        com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj3, "mAssets").set(obj3, newAssetManager);
                    }
                }
            }
        } catch (java.lang.Throwable unused2) {
        }
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            try {
                if (publicSourceDirField != null) {
                    publicSourceDirField.set(context.getApplicationInfo(), str);
                }
            } catch (java.lang.Throwable unused3) {
            }
        }
        if (!checkResUpdate(context)) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_RES_INSTALL_FAIL);
        }
        installResourceInsuranceHacks(context, str);
    }

    public static void recordCurrentPatchedResModifiedTime(java.lang.String str) {
        try {
            storedPatchedResModifiedTime = new java.io.File(str).lastModified();
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "Fail to store patched res modified time.", new java.lang.Object[0]);
            storedPatchedResModifiedTime = 0L;
        }
    }

    public static boolean shouldAddSharedLibraryAssets(android.content.pm.ApplicationInfo applicationInfo) {
        return (android.os.Build.VERSION.SDK_INT < 24 || applicationInfo == null || applicationInfo.sharedLibraryFiles == null) ? false : true;
    }
}
