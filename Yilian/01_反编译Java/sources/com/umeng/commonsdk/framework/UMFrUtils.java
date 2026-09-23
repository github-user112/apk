package com.umeng.commonsdk.framework;

/* loaded from: classes.dex */
public class UMFrUtils {
    public static final java.lang.String KEY_LAST_INSTANT_SUCC_BUILD_TIME = "last_instant_build_time";
    public static final java.lang.String KEY_LAST_SUCC_BUILD_TIME = "last_successful_build_time";
    public static java.lang.String mDefaultEnvelopeDir = "envelope";
    public static java.lang.String mDefaultEnvelopeDirPath = null;
    public static java.lang.Object mEnvelopeBuildTimeLock = new java.lang.Object();
    public static java.lang.Object mEnvelopeFileLock = new java.lang.Object();
    public static java.lang.String sCurrentProcessName = "";

    public static boolean checkPermission(android.content.Context context, java.lang.String str) {
        boolean z = false;
        if (context != null) {
            android.content.Context applicationContext = context.getApplicationContext();
            try {
                if (android.os.Build.VERSION.SDK_INT < 23 ? applicationContext.getPackageManager().checkPermission(str, applicationContext.getPackageName()) == 0 : ((java.lang.Integer) java.lang.Class.forName("android.content.Context").getMethod("checkSelfPermission", java.lang.String.class).invoke(context, str)).intValue() == 0) {
                    z = true;
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(applicationContext, th);
            }
        }
        return z;
    }

    public static int envelopeFileNumber(android.content.Context context) {
        java.lang.String[] list;
        if (context != null) {
            try {
                java.io.File file = new java.io.File(getEnvelopeDirPath(context));
                synchronized (mEnvelopeFileLock) {
                    if (file.isDirectory() && (list = file.list()) != null) {
                        return list.length;
                    }
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            }
        }
        return 0;
    }

    public static java.lang.String getCurrentProcessName(android.content.Context context) {
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (android.text.TextUtils.isEmpty(sCurrentProcessName)) {
            try {
                int iMyPid = android.os.Process.myPid();
                java.lang.String processName = getProcessName(iMyPid);
                if (android.text.TextUtils.isEmpty(processName)) {
                    android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
                    if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
                        java.util.Iterator<android.app.ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                android.app.ActivityManager.RunningAppProcessInfo next = it.next();
                                if (next.pid == iMyPid) {
                                    sCurrentProcessName = next.processName;
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    sCurrentProcessName = processName;
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context.getApplicationContext(), th);
            }
        }
        return sCurrentProcessName;
    }

    public static long getDistanceDays(long j, long j2) {
        return (j < j2 ? j2 - j : j - j2) / 86400000;
    }

    public static java.lang.String getEnvelopeDirPath(android.content.Context context) {
        java.io.File file;
        synchronized (mEnvelopeFileLock) {
            try {
                if (mDefaultEnvelopeDirPath == null) {
                    mDefaultEnvelopeDirPath = context.getFilesDir().getAbsolutePath() + java.io.File.separator + "." + mDefaultEnvelopeDir;
                }
                file = new java.io.File(mDefaultEnvelopeDirPath);
            } finally {
                return mDefaultEnvelopeDirPath;
            }
            if (file.exists() || file.mkdir()) {
            } else {
                com.umeng.commonsdk.statistics.common.ULog.d("--->>> Create Envelope Directory failed!!!");
            }
        }
        return mDefaultEnvelopeDirPath;
    }

    public static java.io.File getEnvelopeFile(android.content.Context context) {
        if (context == null) {
            return null;
        }
        java.io.File file = new java.io.File(getEnvelopeDirPath(context));
        synchronized (mEnvelopeFileLock) {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                java.util.Arrays.sort(fileArrListFiles, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.framework.UMFrUtils.2
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(java.io.File file2, java.io.File file3) {
                        long jLastModified = file2.lastModified() - file3.lastModified();
                        if (jLastModified > 0) {
                            return 1;
                        }
                        return jLastModified == 0 ? 0 : -1;
                    }
                });
                return fileArrListFiles[0];
            }
            return null;
        }
    }

    public static long getLastInstantBuildTime(android.content.Context context) {
        long j;
        synchronized (mEnvelopeBuildTimeLock) {
            j = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getLong(KEY_LAST_INSTANT_SUCC_BUILD_TIME, 0L);
        }
        return j;
    }

    public static long getLastSuccessfulBuildTime(android.content.Context context) {
        long j;
        synchronized (mEnvelopeBuildTimeLock) {
            j = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context).getLong(KEY_LAST_SUCC_BUILD_TIME, 0L);
        }
        return j;
    }

    public static java.lang.String getLegacyEnvelopeDir(android.content.Context context) {
        java.lang.String processName;
        try {
            processName = getProcessName(android.os.Process.myPid());
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
        if (!android.text.TextUtils.isEmpty(processName)) {
            java.lang.String strReplace = processName.replace(':', '_');
            com.umeng.commonsdk.statistics.common.ULog.d("--->>> getEnvelopeDir: use current process name as envelope directory.");
            return strReplace;
        }
        android.app.ActivityManager activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
        if (activityManager != null) {
            java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                com.umeng.commonsdk.statistics.common.ULog.d("--->>> getEnvelopeDir: can't get process name, use default envelope directory.");
                return mDefaultEnvelopeDir;
            }
            if (runningAppProcesses.size() == 0) {
                return mDefaultEnvelopeDir;
            }
            try {
                for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == android.os.Process.myPid()) {
                        java.lang.String strReplace2 = runningAppProcessInfo.processName.replace(':', '_');
                        com.umeng.commonsdk.statistics.common.ULog.d("--->>> getEnvelopeDir: use current process name as envelope directory.");
                        return strReplace2;
                    }
                }
            } catch (java.lang.Throwable th2) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th2);
            }
        }
        return mDefaultEnvelopeDir;
    }

    public static java.lang.String getProcessName(int i) {
        java.io.BufferedReader bufferedReader;
        try {
            bufferedReader = new java.io.BufferedReader(new java.io.FileReader("/proc/" + i + "/cmdline"));
        } catch (java.lang.Throwable unused) {
            bufferedReader = null;
        }
        try {
            java.lang.String line = bufferedReader.readLine();
            if (!android.text.TextUtils.isEmpty(line)) {
                line = line.trim();
            }
            try {
                bufferedReader.close();
            } catch (java.lang.Throwable unused2) {
            }
            return line;
        } catch (java.lang.Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (java.lang.Throwable unused4) {
                }
            }
            return null;
        }
    }

    public static java.lang.String getSubProcessName(android.content.Context context) {
        java.lang.String strSubstring;
        strSubstring = "";
        try {
            java.lang.String currentProcessName = getCurrentProcessName(context);
            int iIndexOf = currentProcessName.indexOf(":");
            strSubstring = iIndexOf >= 0 ? currentProcessName.substring(iIndexOf + 1) : "";
            if (iIndexOf < 0) {
                java.lang.String packageName = context.getPackageName();
                return currentProcessName.length() > packageName.length() ? currentProcessName.substring(packageName.length() + 1, currentProcessName.length()) : currentProcessName;
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context.getApplicationContext(), th);
        }
        return strSubstring;
    }

    public static boolean hasEnvelopeFile(android.content.Context context, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType uMBusinessType) {
        java.io.File[] fileArrListFiles;
        java.lang.String str = com.umeng.analytics.pro.ai.at;
        if (uMBusinessType == com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_INTERNAL) {
            str = "i";
        }
        if (uMBusinessType == com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType.U_ZeroEnv) {
            str = com.umeng.analytics.pro.ai.aB;
        }
        java.lang.String envelopeDirPath = getEnvelopeDirPath(context);
        if (envelopeDirPath == null) {
            return false;
        }
        java.io.File file = new java.io.File(envelopeDirPath);
        synchronized (mEnvelopeFileLock) {
            try {
                fileArrListFiles = file.listFiles();
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            }
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (java.io.File file2 : fileArrListFiles) {
                    if (file2.getName().startsWith(str)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    public static boolean isOnline(android.content.Context context) {
        android.net.ConnectivityManager connectivityManager;
        android.net.NetworkInfo activeNetworkInfo;
        try {
            if (!checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnectedOrConnecting();
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context.getApplicationContext(), th);
            return false;
        }
    }

    public static boolean removeEnvelopeFile(java.io.File file) {
        android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
        synchronized (mEnvelopeFileLock) {
            if (file != null) {
                try {
                    if (file.exists()) {
                        return file.delete();
                    }
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, th);
                }
            }
            return true;
        }
    }

    public static void removeRedundantEnvelopeFiles(android.content.Context context, int i) {
        java.io.File file = new java.io.File(getEnvelopeDirPath(context));
        synchronized (mEnvelopeFileLock) {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > i) {
                java.util.Arrays.sort(fileArrListFiles, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.framework.UMFrUtils.1
                    @Override // java.util.Comparator
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(java.io.File file2, java.io.File file3) {
                        long jLastModified = file2.lastModified() - file3.lastModified();
                        if (jLastModified > 0) {
                            return 1;
                        }
                        return jLastModified == 0 ? 0 : -1;
                    }
                });
                if (fileArrListFiles.length > i) {
                    for (int i2 = 0; i2 < fileArrListFiles.length - i; i2++) {
                        try {
                            if (!fileArrListFiles[i2].delete()) {
                                com.umeng.commonsdk.statistics.common.ULog.d("--->>> remove [" + i2 + "] file fail.");
                            }
                        } catch (java.lang.Throwable th) {
                            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                        }
                    }
                }
            }
        }
    }

    public static int saveEnvelopeFile(android.content.Context context, java.lang.String str, byte[] bArr) {
        java.io.FileOutputStream fileOutputStream;
        if (bArr == null) {
            return 101;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(getEnvelopeDirPath(context));
        java.io.File file = new java.io.File(e.a.c.a.a.j(sb, java.io.File.separator, str));
        synchronized (mEnvelopeFileLock) {
            java.io.FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new java.io.FileOutputStream(file);
                } catch (java.io.IOException e2) {
                    e = e2;
                }
            } catch (java.lang.Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
            }
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
                boolean zA = com.umeng.commonsdk.statistics.internal.a.a(context).a(str);
                boolean zB = com.umeng.commonsdk.statistics.internal.a.a(context).b(str);
                if (zA) {
                    updateLastSuccessfulBuildTime(context);
                }
                if (zB) {
                    updateLastInstantBuildTime(context);
                }
                return 0;
            } catch (java.io.IOException e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (java.lang.Throwable th2) {
                        com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th2);
                    }
                }
                return 101;
            } catch (java.lang.Throwable th3) {
                th = th3;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (java.lang.Throwable th4) {
                        com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th4);
                    }
                }
                throw th;
            }
        }
    }

    public static void syncLegacyEnvelopeIfNeeded(android.content.Context context) {
        java.lang.String legacyEnvelopeDir;
        if (context == null) {
            return;
        }
        try {
            legacyEnvelopeDir = getLegacyEnvelopeDir(context);
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
        if (android.text.TextUtils.isEmpty(legacyEnvelopeDir) || legacyEnvelopeDir.equals(mDefaultEnvelopeDir)) {
            return;
        }
        java.io.File file = new java.io.File(context.getFilesDir().getAbsolutePath() + "/." + legacyEnvelopeDir);
        if (file.exists()) {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                try {
                    if (file.isDirectory()) {
                        file.delete();
                        return;
                    }
                    return;
                } catch (java.lang.Throwable th2) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th2);
                    return;
                }
            }
            try {
                java.lang.String envelopeDirPath = getEnvelopeDirPath(context);
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    fileArrListFiles[i].renameTo(new java.io.File(envelopeDirPath + java.io.File.separator + fileArrListFiles[i].getName()));
                }
                if (file.isDirectory()) {
                    file.delete();
                    return;
                }
                return;
            } catch (java.lang.Throwable th3) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th3);
                return;
            }
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
    }

    public static byte[] toByteArray(java.lang.String str) {
        byte[] bArr;
        android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
        synchronized (mEnvelopeFileLock) {
            java.nio.channels.FileChannel channel = null;
            try {
                try {
                    channel = new java.io.RandomAccessFile(str, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT).getChannel();
                    java.nio.MappedByteBuffer mappedByteBufferLoad = channel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    bArr = new byte[(int) channel.size()];
                    if (mappedByteBufferLoad.remaining() > 0) {
                        mappedByteBufferLoad.get(bArr, 0, mappedByteBufferLoad.remaining());
                    }
                } catch (java.io.IOException e2) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, e2);
                    throw e2;
                }
            } finally {
                try {
                    channel.close();
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, th);
                }
            }
        }
        return bArr;
    }

    public static void updateLastInstantBuildTime(android.content.Context context) {
        synchronized (mEnvelopeBuildTimeLock) {
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(KEY_LAST_INSTANT_SUCC_BUILD_TIME, java.lang.System.currentTimeMillis()).commit();
        }
    }

    public static void updateLastSuccessfulBuildTime(android.content.Context context) {
        synchronized (mEnvelopeBuildTimeLock) {
            android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(context);
            sharedPreferences.edit().putLong(KEY_LAST_SUCC_BUILD_TIME, java.lang.System.currentTimeMillis()).commit();
        }
    }
}
