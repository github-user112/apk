package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareTinkerInternals {
    public static final java.lang.String PATCH_PROCESS_NAME = ":patch";
    public static final java.lang.String SAFEMODE_COUNT_REC_PREFIX = "safemode_count_rec_";
    public static final java.lang.String TAG = "Tinker.TinkerInternals";
    public static final boolean VM_IS_ART = isVmArt(java.lang.System.getProperty("java.vm.version"));
    public static final boolean VM_IS_JIT = isVmJitInternal();
    public static java.lang.Boolean isPatchProcess = null;
    public static java.lang.Boolean isARKHotRunning = null;
    public static final java.lang.String[] processName = {null};
    public static java.lang.String tinkerID = null;
    public static java.lang.String currentInstructionSet = null;

    public static com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo changeTestDexToClassN(com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo shareDexDiffPatchInfo, int i) {
        java.lang.String str;
        if (!shareDexDiffPatchInfo.rawName.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.TEST_DEX_NAME)) {
            return null;
        }
        if (i != 1) {
            str = "classes" + i + com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX;
        } else {
            str = "classes.dex";
        }
        return new com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo(str, shareDexDiffPatchInfo.path, shareDexDiffPatchInfo.destMd5InDvm, shareDexDiffPatchInfo.destMd5InArt, shareDexDiffPatchInfo.dexDiffMd5, shareDexDiffPatchInfo.oldDexCrC, shareDexDiffPatchInfo.newOrPatchedDexCrC, shareDexDiffPatchInfo.dexMode);
    }

    public static int checkPackageAndTinkerFlag(com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck, int i) {
        if (isTinkerEnabledAll(i)) {
            return 0;
        }
        java.util.HashMap<java.lang.String, java.lang.String> metaContentMap = shareSecurityCheck.getMetaContentMap();
        if (!isTinkerEnabledForDex(i) && metaContentMap.containsKey("assets/dex_meta.txt")) {
            return -9;
        }
        if (isTinkerEnabledForNativeLib(i) || !metaContentMap.containsKey("assets/so_meta.txt")) {
            return (isTinkerEnabledForResource(i) || !metaContentMap.containsKey("assets/res_meta.txt")) ? 0 : -9;
        }
        return -9;
    }

    public static int checkSignatureAndTinkerID(android.content.Context context, java.io.File file, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck) {
        if (!shareSecurityCheck.verifyPatchMetaSignature(file)) {
            return -1;
        }
        java.lang.String manifestTinkerID = getManifestTinkerID(context);
        if (manifestTinkerID == null) {
            return -5;
        }
        java.util.HashMap<java.lang.String, java.lang.String> packagePropertiesIfPresent = shareSecurityCheck.getPackagePropertiesIfPresent();
        if (packagePropertiesIfPresent == null) {
            return -2;
        }
        java.lang.String str = packagePropertiesIfPresent.get(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_ID);
        if (str == null) {
            return -6;
        }
        if (manifestTinkerID.equals(str)) {
            return 0;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinkerId in patch is not matched with the one in base pack, base: %s, patch: %s.", manifestTinkerID, str);
        return -7;
    }

    public static int checkTinkerPackage(android.content.Context context, int i, java.io.File file, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck) {
        int iCheckSignatureAndTinkerID = checkSignatureAndTinkerID(context, file, shareSecurityCheck);
        return iCheckSignatureAndTinkerID == 0 ? checkPackageAndTinkerFlag(shareSecurityCheck, i) : iCheckSignatureAndTinkerID;
    }

    public static void cleanPatch(android.content.Context context) {
        java.lang.String str;
        if (context == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("context is null");
        }
        java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context);
        if (!patchDirectory.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, new java.lang.Throwable(), "try to clean patch while there're not any applied patches.", new java.lang.Object[0]);
            return;
        }
        java.io.File patchInfoFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoFile(patchDirectory.getAbsolutePath());
        if (!patchInfoFile.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, new java.lang.Throwable(), "try to clean patch while patch info file does not exist.", new java.lang.Object[0]);
            return;
        }
        java.io.File patchInfoLockFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoLockFile(patchDirectory.getAbsolutePath());
        com.tencent.tinker.loader.shareutil.SharePatchInfo andCheckPropertyWithLock = com.tencent.tinker.loader.shareutil.SharePatchInfo.readAndCheckPropertyWithLock(patchInfoFile, patchInfoLockFile);
        if (andCheckPropertyWithLock == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, new java.lang.Throwable(), "fail to get patchInfo.", new java.lang.Object[0]);
            return;
        }
        if (andCheckPropertyWithLock.newVersion.equals(andCheckPropertyWithLock.oldVersion)) {
            str = andCheckPropertyWithLock.newVersion;
        } else {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(new java.io.File(patchDirectory, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(andCheckPropertyWithLock.newVersion)));
            andCheckPropertyWithLock.newVersion = andCheckPropertyWithLock.oldVersion;
            str = "";
        }
        andCheckPropertyWithLock.versionToRemove = str;
        com.tencent.tinker.loader.shareutil.SharePatchInfo.rewritePatchInfoFileWithLock(patchInfoFile, andCheckPropertyWithLock, patchInfoLockFile);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [long] */
    public static java.util.Properties fastGetPatchPackageMeta(java.io.File file) throws java.lang.Throwable {
        java.util.zip.ZipFile zipFile;
        java.io.InputStream inputStream;
        java.util.zip.ZipFile zipFile2 = null;
        if (file != null && file.isFile()) {
            ?? length = file.length();
            try {
                if (length != 0) {
                    try {
                        zipFile = new java.util.zip.ZipFile(file);
                        try {
                            java.util.zip.ZipEntry entry = zipFile.getEntry(com.tencent.tinker.loader.shareutil.ShareConstants.PACKAGE_META_FILE);
                            if (entry == null) {
                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch meta entry not found", new java.lang.Object[0]);
                                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                return null;
                            }
                            try {
                                inputStream = zipFile.getInputStream(entry);
                                try {
                                    java.util.Properties properties = new java.util.Properties();
                                    properties.load(inputStream);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(inputStream);
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                                    return properties;
                                } catch (java.lang.Throwable th) {
                                    th = th;
                                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(inputStream);
                                    throw th;
                                }
                            } catch (java.lang.Throwable th2) {
                                th = th2;
                                inputStream = null;
                            }
                        } catch (java.io.IOException e2) {
                            e = e2;
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "fastGetPatchPackageMeta exception:" + e.getMessage(), new java.lang.Object[0]);
                            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile);
                            return null;
                        }
                    } catch (java.io.IOException e3) {
                        e = e3;
                        zipFile = null;
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeZip(zipFile2);
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th4) {
                th = th4;
                zipFile2 = length;
            }
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patchFile is illegal", new java.lang.Object[0]);
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCurrentInstructionSet() {
        /*
            java.lang.String r0 = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet
            if (r0 == 0) goto L5
            return r0
        L5:
            r0 = 1
            r1 = 0
            java.lang.String r2 = "dalvik.system.VMRuntime"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L25
            java.lang.String r3 = "getCurrentInstructionSet"
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L25
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r4)     // Catch: java.lang.Throwable -> L25
            r2.setAccessible(r0)     // Catch: java.lang.Throwable -> L25
            r3 = 0
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L25
            java.lang.Object r2 = r2.invoke(r3, r4)     // Catch: java.lang.Throwable -> L25
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L25
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r2     // Catch: java.lang.Throwable -> L25
            goto La1
        L25:
            java.lang.String r2 = android.os.Build.CPU_ABI
            int r3 = r2.hashCode()
            java.lang.String r4 = "mips"
            java.lang.String r5 = "x86"
            java.lang.String r6 = "x86_64"
            java.lang.String r7 = "mips64"
            switch(r3) {
                case -1073971299: goto L6d;
                case -806050265: goto L65;
                case -738963905: goto L5b;
                case 117110: goto L53;
                case 3351711: goto L4b;
                case 145444210: goto L42;
                case 1431565292: goto L38;
                default: goto L37;
            }
        L37:
            goto L75
        L38:
            java.lang.String r0 = "arm64-v8a"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L75
            r0 = 2
            goto L76
        L42:
            java.lang.String r3 = "armeabi-v7a"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L75
            goto L76
        L4b:
            boolean r0 = r2.equals(r4)
            if (r0 == 0) goto L75
            r0 = 5
            goto L76
        L53:
            boolean r0 = r2.equals(r5)
            if (r0 == 0) goto L75
            r0 = 3
            goto L76
        L5b:
            java.lang.String r0 = "armeabi"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L75
            r0 = 0
            goto L76
        L65:
            boolean r0 = r2.equals(r6)
            if (r0 == 0) goto L75
            r0 = 4
            goto L76
        L6d:
            boolean r0 = r2.equals(r7)
            if (r0 == 0) goto L75
            r0 = 6
            goto L76
        L75:
            r0 = -1
        L76:
            switch(r0) {
                case 0: goto L9d;
                case 1: goto L9d;
                case 2: goto L9a;
                case 3: goto L97;
                case 4: goto L94;
                case 5: goto L91;
                case 6: goto L8e;
                default: goto L79;
            }
        L79:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Unsupported abi: "
            java.lang.StringBuilder r1 = e.a.c.a.a.o(r1)
            java.lang.String r2 = android.os.Build.CPU_ABI
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8e:
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r7
            goto La1
        L91:
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r4
            goto La1
        L94:
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r6
            goto La1
        L97:
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r5
            goto La1
        L9a:
            java.lang.String r0 = "arm64"
            goto L9f
        L9d:
            java.lang.String r0 = "arm"
        L9f:
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet = r0
        La1:
            java.lang.String r0 = "getCurrentInstructionSet:"
            java.lang.StringBuilder r0 = e.a.c.a.a.o(r0)
            java.lang.String r2 = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r2 = "Tinker.TinkerInternals"
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(r2, r0, r1)
            java.lang.String r0 = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.currentInstructionSet
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getCurrentInstructionSet():java.lang.String");
    }

    public static java.lang.String getCurrentOatMode(android.content.Context context, java.lang.String str) {
        return str.equals(com.tencent.tinker.loader.shareutil.ShareConstants.CHANING_DEX_OPTIMIZE_PATH) ? isInMainProcess(context) ? "odex" : "interpet" : str;
    }

    public static java.lang.String getExceptionCauseString(java.lang.Throwable th) {
        if (th == null) {
            return "";
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.PrintStream printStream = new java.io.PrintStream(byteArrayOutputStream);
        while (true) {
            try {
                java.lang.Throwable cause = th.getCause();
                if (cause == null) {
                    th.printStackTrace(printStream);
                    return toVisualString(byteArrayOutputStream.toString());
                }
                th = cause;
            } finally {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(printStream);
            }
        }
    }

    public static java.lang.String getManifestTinkerID(android.content.Context context) {
        java.lang.String str = tinkerID;
        if (str != null) {
            return str;
        }
        try {
            java.lang.Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_ID);
            if (obj != null) {
                tinkerID = java.lang.String.valueOf(obj);
            } else {
                tinkerID = null;
            }
            return tinkerID;
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getManifestTinkerID exception:")), new java.lang.Object[0]);
            return null;
        }
    }

    public static java.lang.String getProcessName(android.content.Context context) {
        java.lang.String[] strArr = processName;
        if (strArr[0] == null) {
            synchronized (strArr) {
                if (processName[0] == null) {
                    processName[0] = getProcessNameInternal(context);
                }
            }
        }
        java.lang.String[] strArr2 = processName;
        return strArr2[0] != null ? strArr2[0] : "";
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getProcessNameInternal(android.content.Context r7) {
        /*
            r0 = 28
            r1 = 1
            boolean r0 = isNewerOrEqualThanVersion(r0, r1)
            if (r0 == 0) goto L14
            java.lang.String r0 = android.app.Application.getProcessName()
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L14
            return r0
        L14:
            r0 = 18
            boolean r0 = isNewerOrEqualThanVersion(r0, r1)
            java.lang.String r2 = "Tinker.TinkerInternals"
            r3 = 0
            r4 = 0
            if (r0 == 0) goto L59
            java.lang.String r0 = "android.app.ActivityThread"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L42
            java.lang.String r5 = "currentProcessName"
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L42
            java.lang.reflect.Method r0 = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(r0, r5, r6)     // Catch: java.lang.Throwable -> L42
            r0.setAccessible(r1)     // Catch: java.lang.Throwable -> L42
            java.lang.Object[] r1 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L42
            java.lang.Object r0 = r0.invoke(r3, r1)     // Catch: java.lang.Throwable -> L42
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L59
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L42
            if (r1 != 0) goto L59
            return r0
        L42:
            r0 = move-exception
            java.lang.String r1 = "getProcessNameInternal reflect activity thread exception:"
            java.lang.StringBuilder r1 = e.a.c.a.a.o(r1)
            java.lang.String r0 = r0.getMessage()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.Object[] r1 = new java.lang.Object[r4]
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r2, r0, r1)
        L59:
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L82
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L82
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L82
            java.lang.String r6 = "/proc/self/cmdline"
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L82
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.US_ASCII     // Catch: java.lang.Throwable -> L82
            r1.<init>(r5, r6)     // Catch: java.lang.Throwable -> L82
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L82
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L80
            if (r1 == 0) goto L9f
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L80
            boolean r5 = r1.isEmpty()     // Catch: java.lang.Throwable -> L80
            if (r5 != 0) goto L9f
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(r0)
            return r1
        L80:
            r1 = move-exception
            goto L85
        L82:
            r0 = move-exception
            r1 = r0
            r0 = r3
        L85:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lef
            r5.<init>()     // Catch: java.lang.Throwable -> Lef
            java.lang.String r6 = "getProcessNameInternal parse cmdline exception:"
            r5.append(r6)     // Catch: java.lang.Throwable -> Lef
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> Lef
            r5.append(r1)     // Catch: java.lang.Throwable -> Lef
            java.lang.String r1 = r5.toString()     // Catch: java.lang.Throwable -> Lef
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lef
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r2, r1, r5)     // Catch: java.lang.Throwable -> Lef
        L9f:
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(r0)
            if (r7 == 0) goto Lee
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> Ld7
            int r1 = android.os.Process.myUid()     // Catch: java.lang.Throwable -> Ld7
            java.lang.String r5 = "activity"
            java.lang.Object r7 = r7.getSystemService(r5)     // Catch: java.lang.Throwable -> Ld7
            android.app.ActivityManager r7 = (android.app.ActivityManager) r7     // Catch: java.lang.Throwable -> Ld7
            if (r7 == 0) goto Lee
            java.util.List r7 = r7.getRunningAppProcesses()     // Catch: java.lang.Throwable -> Ld7
            if (r7 == 0) goto Lee
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> Ld7
        Lc0:
            boolean r5 = r7.hasNext()     // Catch: java.lang.Throwable -> Ld7
            if (r5 == 0) goto Lee
            java.lang.Object r5 = r7.next()     // Catch: java.lang.Throwable -> Ld7
            android.app.ActivityManager$RunningAppProcessInfo r5 = (android.app.ActivityManager.RunningAppProcessInfo) r5     // Catch: java.lang.Throwable -> Ld7
            int r6 = r5.pid     // Catch: java.lang.Throwable -> Ld7
            if (r6 != r0) goto Lc0
            int r6 = r5.uid     // Catch: java.lang.Throwable -> Ld7
            if (r6 != r1) goto Lc0
            java.lang.String r7 = r5.processName     // Catch: java.lang.Throwable -> Ld7
            return r7
        Ld7:
            r7 = move-exception
            java.lang.String r0 = "getProcessNameInternal getRunningAppProcesses exception:"
            java.lang.StringBuilder r0 = e.a.c.a.a.o(r0)
            java.lang.String r7 = r7.getMessage()
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            java.lang.Object[] r0 = new java.lang.Object[r4]
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r2, r7, r0)
        Lee:
            return r3
        Lef:
            r7 = move-exception
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(r0)
            goto Lf5
        Lf4:
            throw r7
        Lf5:
            goto Lf4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getProcessNameInternal(android.content.Context):java.lang.String");
    }

    public static int getSafeModeCount(android.content.Context context) {
        java.lang.String strE = e.a.c.a.a.e(SAFEMODE_COUNT_REC_PREFIX, getProcessName(context));
        java.io.DataInputStream dataInputStream = null;
        try {
            java.io.DataInputStream dataInputStream2 = new java.io.DataInputStream(new java.io.FileInputStream(new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context), strE)));
            try {
                java.lang.String utf = dataInputStream2.readUTF();
                if (!"safe_mode_count_1.9.14.26.3".equals(utf)) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "getSafeModeCount: key is not equal, expt: %s, actul: %s, return 0 instead.", "safe_mode_count_1.9.14.26.3", utf);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(dataInputStream2);
                    return 0;
                }
                int i = dataInputStream2.readInt();
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "getSafeModeCount: count: %s", java.lang.Integer.valueOf(i));
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(dataInputStream2);
                return i;
            } catch (java.lang.Throwable unused) {
                dataInputStream = dataInputStream2;
                try {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "getSafeModeCount: recFileName:" + strE + " failed, return 0 instead.", new java.lang.Object[0]);
                    return 0;
                } finally {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(dataInputStream);
                }
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public static java.lang.String getTinkerSwitchSPKey(android.content.Context context) {
        java.lang.String manifestTinkerID = getManifestTinkerID(context);
        if (isNullOrNil(manifestTinkerID)) {
            manifestTinkerID = "@@";
        }
        return e.a.c.a.a.e("tinker_enable_1.9.14.26.3_", manifestTinkerID);
    }

    public static java.lang.String getTypeString(int i) {
        switch (i) {
            case 1:
                return "patch_file";
            case 2:
                return "patch_info";
            case 3:
                return "dex";
            case 4:
                return "dex_opt";
            case 5:
                return "lib";
            case 6:
                return "resource";
            default:
                return "unknown";
        }
    }

    public static boolean is32BitEnv() {
        java.lang.String currentInstructionSet2 = getCurrentInstructionSet();
        return "arm".equals(currentInstructionSet2) || "x86".equals(currentInstructionSet2) || "mips".equals(currentInstructionSet2);
    }

    public static boolean isAfterAndroidO() {
        return android.os.Build.VERSION.SDK_INT > 25;
    }

    public static boolean isArkHotRuning() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.Boolean bool = isARKHotRunning;
        if (bool != null) {
            return bool.booleanValue();
        }
        isARKHotRunning = java.lang.Boolean.FALSE;
        try {
            java.lang.reflect.Method declaredMethod = java.lang.ClassLoader.getSystemClassLoader().getParent().loadClass("com.huawei.ark.app.ArkApplicationInfo").getDeclaredMethod("isRunningInArk", new java.lang.Class[0]);
            declaredMethod.setAccessible(true);
            isARKHotRunning = (java.lang.Boolean) declaredMethod.invoke(null, new java.lang.Object[0]);
        } catch (java.lang.ClassNotFoundException unused) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "class not found exception", new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException unused2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "illegal access exception", new java.lang.Object[0]);
        } catch (java.lang.IllegalArgumentException unused3) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "illegal argument exception", new java.lang.Object[0]);
        } catch (java.lang.NoSuchMethodException unused4) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "no such method exception", new java.lang.Object[0]);
        } catch (java.lang.SecurityException unused5) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "security exception", new java.lang.Object[0]);
        } catch (java.lang.reflect.InvocationTargetException unused6) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "invocation target exception", new java.lang.Object[0]);
        }
        return isARKHotRunning.booleanValue();
    }

    public static boolean isInMainProcess(android.content.Context context) {
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        java.lang.String packageName = applicationInfo != null ? applicationInfo.processName : null;
        if (isNullOrNil(packageName)) {
            packageName = context.getPackageName();
        }
        java.lang.String processName2 = getProcessName(context);
        if (processName2 == null || processName2.length() == 0) {
            processName2 = "";
        }
        return packageName.equals(processName2);
    }

    public static boolean isInPatchProcess(android.content.Context context) {
        java.lang.Boolean bool = isPatchProcess;
        if (bool != null) {
            return bool.booleanValue();
        }
        java.lang.Boolean boolValueOf = java.lang.Boolean.valueOf(getProcessName(context).endsWith(PATCH_PROCESS_NAME));
        isPatchProcess = boolValueOf;
        return boolValueOf.booleanValue();
    }

    public static boolean isNewerOrEqualThanVersion(int i, boolean z) {
        int i2;
        return (!z || (i2 = android.os.Build.VERSION.SDK_INT) < 23) ? android.os.Build.VERSION.SDK_INT >= i : i2 >= i || (i2 == i - 1 && android.os.Build.VERSION.PREVIEW_SDK_INT > 0);
    }

    public static boolean isNullOrNil(java.lang.String str) {
        return str == null || str.length() <= 0;
    }

    public static boolean isOlderOrEqualThanVersion(int i, boolean z) {
        int i2;
        return (!z || (i2 = android.os.Build.VERSION.SDK_INT) < 23) ? android.os.Build.VERSION.SDK_INT <= i : i2 <= i || (i2 == i - 1 && android.os.Build.VERSION.PREVIEW_SDK_INT > 0);
    }

    public static boolean isSystemOTA(java.lang.String str) {
        java.lang.String str2 = android.os.Build.FINGERPRINT;
        if (str == null || str.equals("") || str2 == null || str2.equals("")) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, e.a.c.a.a.g("fingerprint empty:", str, ",current:", str2), new java.lang.Object[0]);
            return false;
        }
        if (str.equals(str2)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, e.a.c.a.a.e("same fingerprint:", str2), new java.lang.Object[0]);
            return false;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, e.a.c.a.a.g("system OTA,fingerprint not equal:", str, ",", str2), new java.lang.Object[0]);
        return true;
    }

    public static boolean isTinkerEnableWithSharedPreferences(android.content.Context context) {
        if (context == null) {
            return false;
        }
        return context.getSharedPreferences(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_SHARE_PREFERENCE_CONFIG, 4).getBoolean(getTinkerSwitchSPKey(context), true);
    }

    public static boolean isTinkerEnabled(int i) {
        return i != 0;
    }

    public static boolean isTinkerEnabledAll(int i) {
        return i == 15;
    }

    public static boolean isTinkerEnabledForArkHot(int i) {
        return (i & 8) != 0;
    }

    public static boolean isTinkerEnabledForDex(int i) {
        return (i & 1) != 0;
    }

    public static boolean isTinkerEnabledForNativeLib(int i) {
        return (i & 2) != 0;
    }

    public static boolean isTinkerEnabledForResource(int i) {
        return (i & 4) != 0;
    }

    public static boolean isVersionInRange(int i, int i2, boolean z) {
        return isNewerOrEqualThanVersion(i, z) && isOlderOrEqualThanVersion(i2, z);
    }

    public static boolean isVmArt() {
        return VM_IS_ART || android.os.Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isVmArt(java.lang.String str) throws java.lang.NumberFormatException {
        if (str == null) {
            return false;
        }
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
        if (!matcher.matches()) {
            return false;
        }
        try {
            int i = java.lang.Integer.parseInt(matcher.group(1));
            return i > 2 || (i == 2 && java.lang.Integer.parseInt(matcher.group(2)) >= 1);
        } catch (java.lang.NumberFormatException unused) {
            return false;
        }
    }

    public static boolean isVmJit() {
        return VM_IS_JIT && android.os.Build.VERSION.SDK_INT < 24;
    }

    public static boolean isVmJitInternal() {
        try {
            java.lang.reflect.Method declaredMethod = java.lang.Class.forName("android.os.SystemProperties").getDeclaredMethod("get", java.lang.String.class);
            java.lang.String str = (java.lang.String) declaredMethod.invoke(null, "dalvik.vm.usejit");
            java.lang.String str2 = (java.lang.String) declaredMethod.invoke(null, "dalvik.vm.usejitprofiles");
            if (!isNullOrNil(str) && isNullOrNil(str2)) {
                if (str.equals("true")) {
                    return true;
                }
            }
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "isVmJitInternal ex:" + th, new java.lang.Object[0]);
        }
        return false;
    }

    public static void killAllOtherProcess(android.content.Context context) {
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return;
        }
        for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.uid == android.os.Process.myUid() && runningAppProcessInfo.pid != android.os.Process.myPid()) {
                android.os.Process.killProcess(runningAppProcessInfo.pid);
            }
        }
    }

    public static void killProcessExceptMain(android.content.Context context) {
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return;
        }
        for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.uid == android.os.Process.myUid() && !runningAppProcessInfo.processName.equals(context.getPackageName())) {
                android.os.Process.killProcess(runningAppProcessInfo.pid);
            }
        }
    }

    public static void setSafeModeCount(android.content.Context context, int i) {
        java.lang.String strE = e.a.c.a.a.e(SAFEMODE_COUNT_REC_PREFIX, getProcessName(context));
        java.io.File file = new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context), strE);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        java.io.DataOutputStream dataOutputStream = null;
        try {
            java.io.DataOutputStream dataOutputStream2 = new java.io.DataOutputStream(new java.io.FileOutputStream(file));
            try {
                dataOutputStream2.writeUTF("safe_mode_count_1.9.14.26.3");
                dataOutputStream2.writeInt(i);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "setSafeModeCount: count: %s", java.lang.Integer.valueOf(i));
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(dataOutputStream2);
            } catch (java.lang.Throwable unused) {
                dataOutputStream = dataOutputStream2;
                try {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "setSafeModeCount: recFileName:" + strE + " failed, return 0 instead.", new java.lang.Object[0]);
                } finally {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(dataOutputStream);
                }
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public static void setTinkerDisableWithSharedPreferences(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(com.tencent.tinker.loader.shareutil.ShareConstants.TINKER_SHARE_PREFERENCE_CONFIG, 4);
        sharedPreferences.edit().putBoolean(getTinkerSwitchSPKey(context), false).commit();
    }

    public static java.lang.String toVisualString(java.lang.String str) {
        char[] charArray;
        boolean z;
        if (str == null || (charArray = str.toCharArray()) == null) {
            return null;
        }
        int i = 0;
        while (true) {
            if (i >= charArray.length) {
                z = false;
                break;
            }
            if (charArray[i] > 127) {
                charArray[i] = 0;
                z = true;
                break;
            }
            i++;
        }
        return z ? new java.lang.String(charArray, 0, i) : str;
    }
}
