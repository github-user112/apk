package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public final class TinkerDexOptimizer {
    public static final java.lang.String INTERPRET_LOCK_FILE_NAME = "interpret.lock";
    public static final int SHELL_COMMAND_TRANSACTION = 1598246212;
    public static final java.lang.String TAG = "Tinker.ParallelDex";
    public static final int[] sPerformDexOptSecondaryTransactionCode = {-1};
    public static final android.os.IBinder[] sPMSBinderProxy = {null};
    public static final android.os.Handler sHandler = new android.os.Handler(android.os.Looper.getMainLooper());
    public static final android.os.ResultReceiver sEmptyResultReceiver = new android.os.ResultReceiver(sHandler);
    public static final android.content.pm.PackageManager[] sSynchronizedPMCache = {null};

    public static class OptimizeWorker {
        public static java.lang.ClassLoader patchClassLoaderStrongRef;
        public final com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback callback;
        public final android.content.Context context;
        public final java.io.File dexFile;
        public final java.io.File optimizedDir;
        public final java.lang.String targetISA;
        public final boolean useDLC;
        public final boolean useEmergencyMode;
        public final boolean useInterpretMode;

        public OptimizeWorker(android.content.Context context, java.io.File file, java.io.File file2, boolean z, boolean z2, java.lang.String str, boolean z3, com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback resultCallback) {
            this.context = context;
            this.dexFile = file;
            this.optimizedDir = file2;
            this.useInterpretMode = z;
            this.useDLC = z2;
            this.callback = resultCallback;
            this.targetISA = str;
            this.useEmergencyMode = z3;
        }

        public boolean run() {
            java.io.File file;
            try {
                if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(this.dexFile) && this.callback != null) {
                    this.callback.onFailed(this.dexFile, this.optimizedDir, new java.io.IOException("dex file " + this.dexFile.getAbsolutePath() + " is not exist!"));
                    return false;
                }
                if (this.callback != null) {
                    this.callback.onStart(this.dexFile, this.optimizedDir);
                }
                final java.lang.String strOptimizedPathFor = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.optimizedPathFor(this.dexFile, this.optimizedDir);
                if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isArkHotRuning()) {
                    if (this.useInterpretMode) {
                        com.tencent.tinker.loader.TinkerDexOptimizer.interpretDex2Oat(this.dexFile.getAbsolutePath(), strOptimizedPathFor, this.targetISA);
                    } else if (com.tencent.tinker.loader.app.TinkerApplication.getInstance().isUseInterpretModeOnSupported32BitSystem() && com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVersionInRange(21, 25, true) && com.tencent.tinker.loader.shareutil.ShareTinkerInternals.is32BitEnv()) {
                        try {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.loader.TinkerDexOptimizer.TAG, "dexopt with interpret mode on 32bit supported system was enabled.", new java.lang.Object[0]);
                            com.tencent.tinker.loader.TinkerDexOptimizer.interpretDex2Oat(this.dexFile.getAbsolutePath(), strOptimizedPathFor, this.targetISA);
                        } catch (java.lang.Throwable th) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(com.tencent.tinker.loader.TinkerDexOptimizer.TAG, th, "exception occurred on dexopt triggering.", new java.lang.Object[0]);
                        }
                        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(new java.io.File(strOptimizedPathFor))) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.loader.TinkerDexOptimizer.TAG, "interpret dexopt failure, compensate with system method.", new java.lang.Object[0]);
                            file = this.dexFile;
                            dalvik.system.DexFile.loadDex(file.getAbsolutePath(), strOptimizedPathFor, 0);
                        }
                    } else if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(26, true)) {
                        file = this.dexFile;
                        dalvik.system.DexFile.loadDex(file.getAbsolutePath(), strOptimizedPathFor, 0);
                    } else if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
                        com.tencent.tinker.loader.TinkerDexOptimizer.createFakeODexPathStructureOnDemand(strOptimizedPathFor);
                        patchClassLoaderStrongRef = com.tencent.tinker.loader.NewClassLoaderInjector.triggerDex2Oat(this.context, this.optimizedDir, this.useDLC, this.dexFile.getAbsolutePath());
                        java.lang.Runnable runnable = new java.lang.Runnable() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    com.tencent.tinker.loader.TinkerDexOptimizer.triggerPMDexOptOnDemand(com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.context, com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.dexFile.getAbsolutePath(), strOptimizedPathFor);
                                    if (com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.useEmergencyMode) {
                                        return;
                                    }
                                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                    java.lang.String str = strOptimizedPathFor;
                                    sb.append(str.substring(0, str.lastIndexOf(com.tencent.tinker.loader.shareutil.ShareConstants.ODEX_SUFFIX)));
                                    sb.append(com.tencent.tinker.loader.shareutil.ShareConstants.VDEX_SUFFIX);
                                    com.tencent.tinker.loader.TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.context, sb.toString(), new java.lang.Long[0]);
                                } catch (java.lang.Throwable th2) {
                                    try {
                                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(com.tencent.tinker.loader.TinkerDexOptimizer.TAG, th2, "Fail to call triggerPMDexOptAsyncOnDemand.", new java.lang.Object[0]);
                                        if (com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.useEmergencyMode) {
                                            return;
                                        }
                                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                                        java.lang.String str2 = strOptimizedPathFor;
                                        sb2.append(str2.substring(0, str2.lastIndexOf(com.tencent.tinker.loader.shareutil.ShareConstants.ODEX_SUFFIX)));
                                        sb2.append(com.tencent.tinker.loader.shareutil.ShareConstants.VDEX_SUFFIX);
                                        com.tencent.tinker.loader.TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.context, sb2.toString(), new java.lang.Long[0]);
                                    } catch (java.lang.Throwable th3) {
                                        if (!com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.useEmergencyMode) {
                                            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                                            java.lang.String str3 = strOptimizedPathFor;
                                            sb3.append(str3.substring(0, str3.lastIndexOf(com.tencent.tinker.loader.shareutil.ShareConstants.ODEX_SUFFIX)));
                                            sb3.append(com.tencent.tinker.loader.shareutil.ShareConstants.VDEX_SUFFIX);
                                            com.tencent.tinker.loader.TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.this.context, sb3.toString(), new java.lang.Long[0]);
                                        }
                                        throw th3;
                                    }
                                }
                            }
                        };
                        if (this.useEmergencyMode) {
                            new java.lang.Thread(runnable, "TinkerDex2oatTrigger").start();
                        } else {
                            runnable.run();
                        }
                    } else {
                        patchClassLoaderStrongRef = com.tencent.tinker.loader.NewClassLoaderInjector.triggerDex2Oat(this.context, this.optimizedDir, this.useDLC, this.dexFile.getAbsolutePath());
                    }
                }
                java.io.File file2 = new java.io.File(strOptimizedPathFor);
                if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2) && !com.tencent.tinker.loader.shareutil.SharePatchFileUtil.shouldAcceptEvenIfIllegal(file2)) {
                    java.io.FileNotFoundException fileNotFoundException = new java.io.FileNotFoundException("Odex file: " + file2.getAbsolutePath() + " does not exist.");
                    if (this.callback != null) {
                        this.callback.onFailed(this.dexFile, this.optimizedDir, fileNotFoundException);
                    }
                    return false;
                }
                if (this.callback != null) {
                    this.callback.onSuccess(this.dexFile, this.optimizedDir, file2);
                }
                return true;
            } catch (java.lang.Throwable th2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to optimize dex: ");
                sbO.append(this.dexFile.getAbsolutePath());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.TinkerDexOptimizer.TAG, sbO.toString(), th2);
                com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback resultCallback = this.callback;
                if (resultCallback != null) {
                    resultCallback.onFailed(this.dexFile, this.optimizedDir, th2);
                }
                return false;
            }
        }
    }

    public interface ResultCallback {
        void onFailed(java.io.File file, java.io.File file2, java.lang.Throwable th);

        void onStart(java.io.File file, java.io.File file2);

        void onSuccess(java.io.File file, java.io.File file2, java.io.File file3);
    }

    public static class StreamConsumer {
        public static final java.util.concurrent.Executor STREAM_CONSUMER = java.util.concurrent.Executors.newSingleThreadExecutor();

        public static void consumeInputStream(final java.io.InputStream inputStream) {
            STREAM_CONSUMER.execute(new java.lang.Runnable() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.StreamConsumer.1
                @Override // java.lang.Runnable
                public void run() throws java.io.IOException {
                    if (inputStream == null) {
                        return;
                    }
                    do {
                        try {
                        } catch (java.io.IOException unused) {
                        } catch (java.lang.Throwable th) {
                            try {
                                inputStream.close();
                            } catch (java.lang.Exception unused2) {
                            }
                            throw th;
                        }
                    } while (inputStream.read(new byte[256]) > 0);
                    try {
                        inputStream.close();
                    } catch (java.lang.Exception unused3) {
                    }
                }
            });
        }
    }

    public static void createFakeODexPathStructureOnDemand(java.lang.String str) {
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "Creating fake odex path structure.", new java.lang.Object[0]);
            java.io.File file = new java.io.File(str);
            if (file.exists()) {
                return;
            }
            java.io.File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            try {
                file.createNewFile();
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public static void executePMSShellCommand(android.content.Context context, java.lang.String[] strArr) {
        android.os.Parcel parcelObtain;
        android.os.IBinder pMSBinderProxy = getPMSBinderProxy(context);
        long jClearCallingIdentity = android.os.Binder.clearCallingIdentity();
        android.os.Parcel parcel = null;
        try {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] Execute shell cmd, args: %s", java.util.Arrays.toString(strArr));
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain2.writeFileDescriptor(java.io.FileDescriptor.in);
                    parcelObtain2.writeFileDescriptor(java.io.FileDescriptor.out);
                    parcelObtain2.writeFileDescriptor(java.io.FileDescriptor.err);
                    parcelObtain2.writeStringArray(strArr);
                    parcelObtain2.writeStrongBinder(null);
                    sEmptyResultReceiver.writeToParcel(parcelObtain2, 0);
                    pMSBinderProxy.transact(SHELL_COMMAND_TRANSACTION, parcelObtain2, parcelObtain, 0);
                    parcelObtain.readException();
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] Execute shell cmd done.", new java.lang.Object[0]);
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    android.os.Binder.restoreCallingIdentity(jClearCallingIdentity);
                } catch (java.lang.Throwable th) {
                    th = th;
                    parcel = parcelObtain2;
                    try {
                        throw new java.lang.IllegalStateException("Failure on executing shell cmd.", th);
                    } catch (java.lang.Throwable th2) {
                        if (parcelObtain != null) {
                            parcelObtain.recycle();
                        }
                        if (parcel != null) {
                            parcel.recycle();
                        }
                        android.os.Binder.restoreCallingIdentity(jClearCallingIdentity);
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
                parcelObtain = null;
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            parcelObtain = null;
        }
    }

    public static android.os.IBinder getPMSBinderProxy(android.content.Context context) {
        synchronized (sPMSBinderProxy) {
            android.os.IBinder iBinder = sPMSBinderProxy[0];
            if (iBinder != null && iBinder.isBinderAlive()) {
                return iBinder;
            }
            try {
                sPMSBinderProxy[0] = (android.os.IBinder) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(java.lang.Class.forName("android.os.ServiceManager"), "getService", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class}).invoke(null, com.tencent.tinker.loader.hotplug.EnvConsts.PACKAGE_MANAGER_SRVNAME);
                return sPMSBinderProxy[0];
            } catch (java.lang.Throwable th) {
                if (th instanceof java.lang.reflect.InvocationTargetException) {
                    throw new java.lang.IllegalStateException(th.getTargetException());
                }
                throw new java.lang.IllegalStateException(th);
            }
        }
    }

    public static final android.content.pm.PackageManager getSynchronizedPackageManager(android.content.Context context) {
        synchronized (sSynchronizedPMCache) {
            try {
                try {
                    if (sSynchronizedPMCache[0] != null) {
                        synchronized (sPMSBinderProxy) {
                            if (sPMSBinderProxy[0] != null && sPMSBinderProxy[0].isBinderAlive()) {
                                return sSynchronizedPMCache[0];
                            }
                        }
                    }
                    final android.os.IBinder pMSBinderProxy = getPMSBinderProxy(context);
                    java.lang.Object objInvoke = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(java.lang.Class.forName("android.content.pm.IPackageManager$Stub"), "asInterface", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class}).invoke(null, (android.os.IBinder) java.lang.reflect.Proxy.newProxyInstance(context.getClassLoader(), pMSBinderProxy.getClass().getInterfaces(), new java.lang.reflect.InvocationHandler() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.2
                        @Override // java.lang.reflect.InvocationHandler
                        public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
                            if ("transact".equals(method.getName())) {
                                objArr[3] = 0;
                            }
                            return method.invoke(pMSBinderProxy, objArr);
                        }
                    }));
                    java.lang.Class<?> cls = java.lang.Class.forName("android.app.ApplicationPackageManager");
                    if (context instanceof android.content.ContextWrapper) {
                        context = ((android.content.ContextWrapper) context).getBaseContext();
                    }
                    android.content.pm.PackageManager packageManager = (android.content.pm.PackageManager) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findConstructor(cls, (java.lang.Class<?>[]) new java.lang.Class[]{context.getClass(), java.lang.Class.forName("android.content.pm.IPackageManager")}).newInstance(context, objInvoke);
                    sSynchronizedPMCache[0] = packageManager;
                    return packageManager;
                } catch (java.lang.reflect.InvocationTargetException e2) {
                    throw new java.lang.IllegalStateException(e2.getTargetException());
                }
            } catch (java.lang.Throwable th) {
                if (th instanceof java.lang.IllegalStateException) {
                    throw th;
                }
                throw new java.lang.IllegalStateException(th);
            }
        }
    }

    public static void interpretDex2Oat(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.io.File file = new java.io.File(str2);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        java.io.File file2 = new java.io.File(file.getParentFile(), INTERPRET_LOCK_FILE_NAME);
        com.tencent.tinker.loader.shareutil.ShareFileLockHelper fileLock = null;
        try {
            fileLock = com.tencent.tinker.loader.shareutil.ShareFileLockHelper.getFileLock(file2);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add("dex2oat");
            if (android.os.Build.VERSION.SDK_INT >= 24) {
                arrayList.add("--runtime-arg");
                arrayList.add("-classpath");
                arrayList.add("--runtime-arg");
                arrayList.add(com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER);
            }
            arrayList.add("--dex-file=" + str);
            arrayList.add("--oat-file=" + str2);
            arrayList.add("--instruction-set=" + str3);
            arrayList.add(android.os.Build.VERSION.SDK_INT > 25 ? "--compiler-filter=quicken" : "--compiler-filter=interpret-only");
            java.lang.ProcessBuilder processBuilder = new java.lang.ProcessBuilder(arrayList);
            processBuilder.redirectErrorStream(true);
            java.lang.Process processStart = processBuilder.start();
            com.tencent.tinker.loader.TinkerDexOptimizer.StreamConsumer.consumeInputStream(processStart.getInputStream());
            com.tencent.tinker.loader.TinkerDexOptimizer.StreamConsumer.consumeInputStream(processStart.getErrorStream());
            try {
                int iWaitFor = processStart.waitFor();
                if (iWaitFor != 0) {
                    throw new java.io.IOException("dex2oat works unsuccessfully, exit code: " + iWaitFor);
                }
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (java.io.IOException e2) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "release interpret Lock error", e2);
                    }
                }
            } catch (java.lang.InterruptedException e3) {
                throw new java.io.IOException("dex2oat is interrupted, msg: " + e3.getMessage(), e3);
            }
        } catch (java.lang.Throwable th) {
            if (fileLock != null) {
                try {
                    fileLock.close();
                } catch (java.io.IOException e4) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "release interpret Lock error", e4);
                }
            }
            throw th;
        }
    }

    public static boolean optimizeAll(android.content.Context context, java.util.Collection<java.io.File> collection, java.io.File file, boolean z, boolean z2, com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback resultCallback) {
        return optimizeAll(context, collection, file, false, z, com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getCurrentInstructionSet(), z2, resultCallback);
    }

    public static boolean optimizeAll(android.content.Context context, java.util.Collection<java.io.File> collection, java.io.File file, boolean z, boolean z2, java.lang.String str, boolean z3, com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback resultCallback) {
        java.util.ArrayList arrayList = new java.util.ArrayList(collection);
        java.util.Collections.sort(arrayList, new java.util.Comparator<java.io.File>() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.1
            @Override // java.util.Comparator
            public int compare(java.io.File file2, java.io.File file3) {
                long length = file2.length();
                long length2 = file3.length();
                if (length < length2) {
                    return 1;
                }
                return length == length2 ? 0 : -1;
            }
        });
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!new com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker(context, (java.io.File) it.next(), file, z, z2, str, z3, resultCallback).run()) {
                return false;
            }
        }
        return true;
    }

    public static void performBgDexOptJob(android.content.Context context) {
        executePMSShellCommand(context, new java.lang.String[]{"bg-dexopt-job", context.getPackageName()});
    }

    public static void performDexOptSecondary(android.content.Context context) {
        java.lang.String[] strArr = new java.lang.String[6];
        strArr[0] = "compile";
        strArr[1] = "-f";
        strArr[2] = "--secondary-dex";
        strArr[3] = "-m";
        strArr[4] = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(31, true) ? "verify" : "speed-profile";
        strArr[5] = context.getPackageName();
        executePMSShellCommand(context, strArr);
    }

    public static void performDexOptSecondaryByTransactionCode(android.content.Context context) throws java.lang.Throwable {
        android.os.Parcel parcel;
        boolean z;
        android.os.Parcel parcelObtain;
        synchronized (sPerformDexOptSecondaryTransactionCode) {
            parcel = null;
            z = true;
            if (sPerformDexOptSecondaryTransactionCode[0] == -1) {
                try {
                    java.lang.reflect.Method methodFindMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod((java.lang.Class<?>) java.lang.Class.class, "getDeclaredField", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class});
                    methodFindMethod.setAccessible(true);
                    java.lang.reflect.Field field = (java.lang.reflect.Field) methodFindMethod.invoke(java.lang.Class.forName("android.content.pm.IPackageManager$Stub"), "TRANSACTION_performDexOptSecondary");
                    field.setAccessible(true);
                    sPerformDexOptSecondaryTransactionCode[0] = ((java.lang.Integer) field.get(null)).intValue();
                } catch (java.lang.Throwable th) {
                    throw new java.lang.IllegalStateException("Cannot query transaction code of performDexOptSecondary.", th);
                }
            }
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] performDexOptSecondaryByTransactionCode, code: %s", java.lang.Integer.valueOf(sPerformDexOptSecondaryTransactionCode[0]));
        android.os.IBinder pMSBinderProxy = getPMSBinderProxy(context);
        try {
            parcelObtain = android.os.Parcel.obtain();
            try {
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(pMSBinderProxy.getInterfaceDescriptor());
                    parcelObtain.writeString(context.getPackageName());
                    parcelObtain.writeString(com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(31, true) ? "verify" : "speed-profile");
                    parcelObtain.writeInt(1);
                    if (!pMSBinderProxy.transact(sPerformDexOptSecondaryTransactionCode[0], parcelObtain, parcelObtain2, 0)) {
                        throw new java.lang.IllegalStateException("Binder transaction failure.");
                    }
                    try {
                        parcelObtain2.readException();
                        if (parcelObtain2.readInt() == 0) {
                            z = false;
                        }
                        if (!z) {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "[!] System API return false.", new java.lang.Object[0]);
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return;
                    } finally {
                        java.lang.IllegalStateException illegalStateException = new java.lang.IllegalStateException(th);
                    }
                } catch (android.os.RemoteException th2) {
                    throw new java.lang.IllegalStateException(th2);
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
            }
            th = th3;
        } catch (java.lang.Throwable th4) {
            th = th4;
            parcelObtain = null;
        }
        if (0 != 0) {
            parcel.recycle();
        }
        if (parcelObtain != null) {
            parcelObtain.recycle();
        }
        throw th;
    }

    public static void registerDexModule(android.content.Context context, java.lang.String str) {
        android.content.pm.PackageManager synchronizedPackageManager = getSynchronizedPackageManager(context);
        try {
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(synchronizedPackageManager, "registerDexModule", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.String.class, java.lang.Class.forName("android.content.pm.PackageManager$DexModuleRegisterCallback")}).invoke(synchronizedPackageManager, str, null);
        } catch (java.lang.reflect.InvocationTargetException e2) {
            throw new java.lang.IllegalStateException(e2.getTargetException());
        } catch (java.lang.Throwable th) {
            if (!(th instanceof java.lang.IllegalStateException)) {
                throw new java.lang.IllegalStateException(th);
            }
            throw th;
        }
    }

    public static void triggerPMDexOptOnDemand(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "[+] Not API 29, 30 and newer device, skip triggering dexopt.", new java.lang.Object[0]);
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] Hit target device, do dexopt logic now.", new java.lang.Object[0]);
        java.io.File file = new java.io.File(str2);
        if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] Oat file %s should be valid, skip triggering dexopt.", str2);
            return;
        }
        java.io.File file2 = new java.io.File(str);
        for (int i = 0; i < 10; i++) {
            if (triggerSecondaryDexOpt(context, file2, file, true)) {
                return;
            }
        }
        if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            return;
        }
        if (!"huawei".equalsIgnoreCase(android.os.Build.MANUFACTURER) && !"honor".equalsIgnoreCase(android.os.Build.MANUFACTURER)) {
            throw new java.lang.IllegalStateException("No odex file was generated after calling performDexOptSecondary");
        }
        for (int i2 = 0; i2 < 5; i2++) {
            try {
                registerDexModule(context, str);
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "[-] Error.", new java.lang.Object[0]);
            }
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
                break;
            }
            android.os.SystemClock.sleep(com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
        if (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            throw new java.lang.IllegalStateException("No odex file was generated after calling registerDexModule");
        }
    }

    public static boolean triggerSecondaryDexOpt(android.content.Context context, java.io.File file, java.io.File file2, boolean z) {
        try {
            performDexOptSecondary(context);
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "[-] Error.", new java.lang.Object[0]);
        }
        try {
            performBgDexOptJob(context);
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (java.lang.Throwable th2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th2, "[-] Error.", new java.lang.Object[0]);
        }
        try {
            performDexOptSecondaryByTransactionCode(context);
            if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (java.lang.Throwable th3) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th3, "[-] Error.", new java.lang.Object[0]);
        }
        return z ? waitUntilFileGeneratedOrTimeout(context, file2.getAbsolutePath(), java.lang.Long.valueOf(com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS)) : com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file2);
    }

    public static boolean waitUntilFileGeneratedOrTimeout(android.content.Context context, java.lang.String str, java.lang.Long... lArr) {
        java.io.File file = new java.io.File(str);
        if (lArr == null || lArr.length <= 0) {
            lArr = new java.lang.Long[]{1000L, 2000L, 4000L, 8000L, java.lang.Long.valueOf(com.google.android.exoplayer2.text.cea.Cea608Decoder.MIN_DATA_CHANNEL_TIMEOUT_MS), 32000L};
        }
        int i = 0;
        while (!com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file) && i < lArr.length) {
            int i2 = i + 1;
            android.os.SystemClock.sleep(lArr[i].longValue());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "[!] File %s does not exist after waiting %s time(s), wait again.", str, java.lang.Integer.valueOf(i2));
            i = i2;
        }
        if (com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(file)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "[+] File %s was found.", str);
            return true;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "[-] File %s does not exist after waiting for %s times.", str, java.lang.Integer.valueOf(lArr.length));
        return false;
    }
}
