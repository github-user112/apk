package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class SharePatchFileUtil {
    public static final java.lang.String TAG = "Tinker.PatchFileUtil";
    public static char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static boolean checkIfMd5Valid(java.lang.String str) {
        return str != null && str.length() == 32;
    }

    public static boolean checkResourceArscMd5(java.io.File file, java.lang.String str) throws java.io.IOException {
        java.util.zip.ZipFile zipFile;
        java.util.zip.ZipEntry entry;
        java.util.zip.ZipFile zipFile2 = null;
        java.io.InputStream inputStream = null;
        try {
            zipFile = new java.util.zip.ZipFile(file);
            try {
                entry = zipFile.getEntry(com.tencent.tinker.loader.shareutil.ShareConstants.RES_ARSC);
            } catch (java.lang.Throwable th) {
                th = th;
                zipFile2 = zipFile;
                try {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "checkResourceArscMd5 throwable:" + th.getMessage(), new java.lang.Object[0]);
                    return false;
                } finally {
                    closeZip(zipFile2);
                }
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
        if (entry == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "checkResourceArscMd5 resources.arsc not found", new java.lang.Object[0]);
            closeZip(zipFile);
            return false;
        }
        try {
            inputStream = zipFile.getInputStream(entry);
            java.lang.String md5 = getMD5(inputStream);
            if (md5 != null) {
                if (md5.equals(str)) {
                    closeZip(zipFile);
                    return true;
                }
            }
            closeZip(zipFile);
            return false;
        } finally {
            closeQuietly(inputStream);
        }
    }

    public static java.lang.String checkTinkerLastUncaughtCrash(android.content.Context context) throws java.lang.Throwable {
        java.io.BufferedReader bufferedReader;
        java.io.File patchLastCrashFile = getPatchLastCrashFile(context);
        java.io.BufferedReader bufferedReader2 = null;
        if (!isLegalFile(patchLastCrashFile)) {
            return null;
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        try {
            bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(patchLastCrashFile)));
            while (true) {
                try {
                    try {
                        java.lang.String line = bufferedReader.readLine();
                        if (line == null) {
                            closeQuietly(bufferedReader);
                            return stringBuffer.toString();
                        }
                        stringBuffer.append(line);
                        stringBuffer.append("\n");
                    } catch (java.lang.Exception e2) {
                        e = e2;
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "checkTinkerLastUncaughtCrash exception: " + e, new java.lang.Object[0]);
                        closeQuietly(bufferedReader);
                        return null;
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    closeQuietly(bufferedReader2);
                    throw th;
                }
            }
        } catch (java.lang.Exception e3) {
            e = e3;
            bufferedReader = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            closeQuietly(bufferedReader2);
            throw th;
        }
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static void closeQuietly(java.lang.Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof java.io.Closeable) {
                ((java.io.Closeable) obj).close();
            } else if (android.os.Build.VERSION.SDK_INT >= 19 && (obj instanceof java.lang.AutoCloseable)) {
                ((java.lang.AutoCloseable) obj).close();
            } else {
                if (!(obj instanceof java.util.zip.ZipFile)) {
                    throw new java.lang.IllegalArgumentException("obj: " + obj + " cannot be closed.");
                }
                ((java.util.zip.ZipFile) obj).close();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void closeZip(java.util.zip.ZipFile zipFile) throws java.io.IOException {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (java.io.IOException e2) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "Failed to close resource", e2);
            }
        }
    }

    public static void copyFileUsingStream(java.io.File file, java.io.File file2) throws java.lang.Throwable {
        java.io.FileOutputStream fileOutputStream;
        if (!isLegalFile(file) || file2 == null || file.getAbsolutePath().equals(file2.getAbsolutePath())) {
            return;
        }
        java.io.File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        java.io.FileInputStream fileInputStream = null;
        try {
            java.io.FileInputStream fileInputStream2 = new java.io.FileInputStream(file);
            try {
                fileOutputStream = new java.io.FileOutputStream(file2, false);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = fileInputStream2.read(bArr);
                        if (i <= 0) {
                            closeQuietly(fileInputStream2);
                            closeQuietly(fileOutputStream);
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    closeQuietly(fileInputStream);
                    closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static final boolean deleteDir(java.io.File file) {
        java.io.File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return false;
        }
        if (!file.isFile()) {
            if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                return true;
            }
            for (java.io.File file2 : fileArrListFiles) {
                deleteDir(file2);
            }
        }
        safeDeleteFile(file);
        return true;
    }

    public static final boolean deleteDir(java.lang.String str) {
        if (str == null) {
            return false;
        }
        return deleteDir(new java.io.File(str));
    }

    public static void deleteDirAsync(final java.io.File file) {
        new java.lang.Thread(new java.lang.Runnable() { // from class: com.tencent.tinker.loader.shareutil.SharePatchFileUtil.1
            @Override // java.lang.Runnable
            public void run() {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file);
            }
        }, "tinker-clean") { // from class: com.tencent.tinker.loader.shareutil.SharePatchFileUtil.2
            {
                setPriority(4);
            }
        }.start();
    }

    public static void deleteDirAsync(java.lang.String str) {
        deleteDirAsync(new java.io.File(str));
    }

    public static void ensureFileDirectory(java.io.File file) {
        if (file == null) {
            return;
        }
        java.io.File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            return;
        }
        parentFile.mkdirs();
    }

    public static long getFileOrDirectorySize(java.io.File file) {
        long fileOrDirectorySize = 0;
        if (file != null && file.exists()) {
            if (file.isFile()) {
                return file.length();
            }
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (java.io.File file2 : fileArrListFiles) {
                    fileOrDirectorySize = (file2.isDirectory() ? getFileOrDirectorySize(file2) : file2.length()) + fileOrDirectorySize;
                }
            }
        }
        return fileOrDirectorySize;
    }

    public static java.lang.String getMD5(java.io.File file) throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream;
        java.io.FileInputStream fileInputStream2 = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            fileInputStream = new java.io.FileInputStream(file);
            try {
                try {
                    java.lang.String md5 = getMD5(fileInputStream);
                    closeQuietly(fileInputStream);
                    return md5;
                } catch (java.lang.Exception e2) {
                    e = e2;
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.getMessage(), new java.lang.Object[0]);
                    closeQuietly(fileInputStream);
                    return null;
                }
            } catch (java.lang.Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                closeQuietly(fileInputStream2);
                throw th;
            }
        } catch (java.lang.Exception e3) {
            e = e3;
            fileInputStream = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            closeQuietly(fileInputStream2);
            throw th;
        }
    }

    public static final java.lang.String getMD5(java.io.InputStream inputStream) throws java.security.NoSuchAlgorithmException {
        int i;
        if (inputStream == null) {
            return null;
        }
        try {
            java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(inputStream);
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            java.lang.StringBuilder sb = new java.lang.StringBuilder(32);
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = bufferedInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i2);
            }
            for (byte b : messageDigest.digest()) {
                sb.append(java.lang.Integer.toString((b & 255) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getMD5(byte[] bArr) throws java.security.NoSuchAlgorithmException {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr = new char[bArrDigest.length * 2];
            int i = 0;
            for (byte b : bArrDigest) {
                int i2 = i + 1;
                cArr[i] = hexDigits[(b >>> 4) & 15];
                i = i2 + 1;
                cArr[i2] = hexDigits[b & com.umeng.analytics.pro.bw.m];
            }
            return new java.lang.String(cArr);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.io.File getPatchDirectory(android.content.Context context) {
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return null;
        }
        return new java.io.File(applicationInfo.dataDir, ("oppo".equalsIgnoreCase(android.os.Build.MANUFACTURER) && android.os.Build.VERSION.SDK_INT == 22) ? com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_DIRECTORY_NAME_SPEC : com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_DIRECTORY_NAME);
    }

    public static java.io.File getPatchInfoFile(java.lang.String str) {
        return new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_INFO_NAME));
    }

    public static java.io.File getPatchInfoLockFile(java.lang.String str) {
        return new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_INFO_LOCK_NAME));
    }

    public static java.io.File getPatchLastCrashFile(android.content.Context context) {
        java.io.File patchTempDirectory = getPatchTempDirectory(context);
        if (patchTempDirectory == null) {
            return null;
        }
        return new java.io.File(patchTempDirectory, com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_TEMP_LAST_CRASH_NAME);
    }

    public static java.io.File getPatchTempDirectory(android.content.Context context) {
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return null;
        }
        return new java.io.File(applicationInfo.dataDir, com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_TEMP_DIRECTORY_NAME);
    }

    public static java.lang.String getPatchVersionDirectory(java.lang.String str) {
        if (str == null || str.length() != 32) {
            return null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o(com.tencent.tinker.loader.shareutil.ShareConstants.PATCH_BASE_NAME);
        sbO.append(str.substring(0, 8));
        return sbO.toString();
    }

    public static java.lang.String getPatchVersionFile(java.lang.String str) {
        if (str == null || str.length() != 32) {
            return null;
        }
        return getPatchVersionDirectory(str) + ".apk";
    }

    public static final boolean isLegalFile(java.io.File file) {
        return file != null && file.exists() && file.canRead() && file.isFile() && file.length() > 0;
    }

    public static boolean isRawDexFile(java.lang.String str) {
        if (str == null) {
            return false;
        }
        return str.endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX);
    }

    public static java.lang.String loadDigestes(java.util.jar.JarFile jarFile, java.util.jar.JarEntry jarEntry) throws java.lang.Throwable {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.io.BufferedInputStream bufferedInputStream = null;
        try {
            java.io.InputStream inputStream = jarFile.getInputStream(jarEntry);
            byte[] bArr = new byte[4096];
            java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(inputStream);
            while (true) {
                try {
                    int i = bufferedInputStream2.read(bArr);
                    if (i <= 0) {
                        closeQuietly(bufferedInputStream2);
                        return sb.toString();
                    }
                    sb.append(new java.lang.String(bArr, 0, i));
                } catch (java.lang.Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    closeQuietly(bufferedInputStream);
                    throw th;
                }
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static java.lang.String optimizedPathFor(java.io.File file, java.io.File file2) {
        if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isAfterAndroidO()) {
            java.lang.String name = file.getName();
            if (!name.endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX)) {
                int iLastIndexOf = name.lastIndexOf(".");
                if (iLastIndexOf < 0) {
                    name = e.a.c.a.a.e(name, com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX);
                } else {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(iLastIndexOf + 4);
                    sb.append((java.lang.CharSequence) name, 0, iLastIndexOf);
                    sb.append(com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX);
                    name = sb.toString();
                }
            }
            return new java.io.File(file2, name).getPath();
        }
        try {
            java.lang.String currentInstructionSet = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getCurrentInstructionSet();
            java.io.File parentFile = file.getParentFile();
            java.lang.String name2 = file.getName();
            int iLastIndexOf2 = name2.lastIndexOf(46);
            if (iLastIndexOf2 > 0) {
                name2 = name2.substring(0, iLastIndexOf2);
            }
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(parentFile.getAbsolutePath());
            sb2.append("/oat/");
            sb2.append(currentInstructionSet);
            sb2.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
            return e.a.c.a.a.j(sb2, name2, com.tencent.tinker.loader.shareutil.ShareConstants.ODEX_SUFFIX);
        } catch (java.lang.Exception e2) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("getCurrentInstructionSet fail:", e2);
        }
    }

    public static final boolean safeDeleteFile(java.io.File file) {
        boolean zDelete = true;
        if (file == null) {
            return true;
        }
        if (file.exists()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("safeDeleteFile, try to delete path: ");
            sbO.append(file.getPath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
            zDelete = file.delete();
            if (!zDelete) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to delete file, try to delete when exit. path: ");
                sbO2.append(file.getPath());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO2.toString(), new java.lang.Object[0]);
                file.deleteOnExit();
            }
        }
        return zDelete;
    }

    public static final boolean shouldAcceptEvenIfIllegal(java.io.File file) {
        return (("vivo".equalsIgnoreCase(android.os.Build.MANUFACTURER) || "oppo".equalsIgnoreCase(android.os.Build.MANUFACTURER) || "meizu".equalsIgnoreCase(android.os.Build.MANUFACTURER)) || (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(29, true) || com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isArkHotRuning())) && (!file.exists() || (file.length() > 0L ? 1 : (file.length() == 0L ? 0 : -1)) == 0);
    }

    public static boolean verifyDexFileMd5(java.io.File file, java.lang.String str) {
        return verifyDexFileMd5(file, "classes.dex", str);
    }

    public static boolean verifyDexFileMd5(java.io.File file, java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        java.lang.String md5;
        if (file == null || str2 == null || str == null) {
            return false;
        }
        if (isRawDexFile(file.getName())) {
            md5 = getMD5(file);
        } else {
            java.util.zip.ZipFile zipFile = null;
            java.io.InputStream inputStream = null;
            try {
                java.util.zip.ZipFile zipFile2 = new java.util.zip.ZipFile(file);
                try {
                    java.util.zip.ZipEntry entry = zipFile2.getEntry(str);
                    if (entry == null) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "There's no entry named: classes.dex in " + file.getAbsolutePath(), new java.lang.Object[0]);
                        closeZip(zipFile2);
                        return false;
                    }
                    try {
                        inputStream = zipFile2.getInputStream(entry);
                        java.lang.String md52 = getMD5(inputStream);
                        closeQuietly(inputStream);
                        md5 = md52;
                    } catch (java.lang.Throwable th) {
                        try {
                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "exception occurred when get md5: " + file.getAbsolutePath(), th);
                            md5 = "";
                        } finally {
                            closeQuietly(inputStream);
                        }
                    }
                    closeZip(zipFile2);
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    zipFile = zipFile2;
                    try {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "Bad dex jar file: " + file.getAbsolutePath(), th);
                        return false;
                    } finally {
                        closeZip(zipFile);
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
            }
        }
        return str2.equals(md5);
    }

    public static boolean verifyFileMd5(java.io.File file, java.lang.String str) {
        java.lang.String md5;
        if (str == null || (md5 = getMD5(file)) == null) {
            return false;
        }
        return str.equals(md5);
    }
}
