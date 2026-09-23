package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerUtils {
    public static final int ERROR_PATCH_CONDITION_NOT_SATISFIED = -24;
    public static final int ERROR_PATCH_CRASH_LIMIT = -23;
    public static final int ERROR_PATCH_GOOGLEPLAY_CHANNEL = -20;
    public static final int ERROR_PATCH_MEMORY_LIMIT = -22;
    public static final int ERROR_PATCH_ROM_SPACE = -21;
    public static final int MIN_MEMORY_HEAP_SIZE = 45;
    public static final java.lang.String PLATFORM = "platform";
    public static final java.lang.String TAG = "Tinker.TinkerUtils";
    public static boolean background = false;

    public static class ScreenState {

        public class a extends android.content.BroadcastReceiver {
            public final /* synthetic */ com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b a;

            public a(com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState screenState, com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b bVar) {
                this.a = bVar;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context, android.content.Intent intent) {
                java.lang.String action = intent == null ? "" : intent.getAction();
                com.tencent.tinker.lib.util.TinkerLog.i(com.tencent.bugly.beta.tinker.TinkerUtils.TAG, "ScreenReceiver action [%s] ", action);
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b bVar = this.a;
                    if (bVar != null) {
                        bVar.a();
                    }
                    context.unregisterReceiver(this);
                }
            }
        }

        public interface b {
            void a();
        }

        public ScreenState(android.content.Context context, com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.b bVar) {
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(new com.tencent.bugly.beta.tinker.TinkerUtils.ScreenState.a(this, bVar), intentFilter);
        }
    }

    public static java.lang.String bytesToHexString(byte[] bArr, boolean z) {
        if (bArr == null) {
            return "";
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(bArr.length * 2);
        java.util.Formatter formatter = new java.util.Formatter(stringBuffer);
        for (byte b : bArr) {
            formatter.format("%02x", java.lang.Byte.valueOf(b));
        }
        formatter.close();
        java.lang.String string = stringBuffer.toString();
        return z ? string.toUpperCase() : string.toLowerCase();
    }

    public static int checkForPatchRecover(long j, int i) {
        if (isGooglePlay()) {
            return -20;
        }
        if (i < 45) {
            return -22;
        }
        return !checkRomSpaceEnough(j) ? -21 : 0;
    }

    @java.lang.Deprecated
    public static boolean checkRomSpaceEnough(long j) {
        long availableBlocks;
        long blockCount;
        try {
            android.os.StatFs statFs = new android.os.StatFs(android.os.Environment.getDataDirectory().getPath());
            availableBlocks = statFs.getAvailableBlocks() * statFs.getBlockSize();
            try {
                blockCount = statFs.getBlockCount() * statFs.getBlockSize();
            } catch (java.lang.Exception unused) {
                blockCount = 0;
                return blockCount == 0 ? false : false;
            }
        } catch (java.lang.Exception unused2) {
            availableBlocks = 0;
        }
        if (blockCount == 0 && availableBlocks > j) {
            return true;
        }
    }

    public static boolean copy(java.io.File file, java.io.File file2) throws java.lang.Throwable {
        java.io.BufferedOutputStream bufferedOutputStream;
        if (file == null || file2 == null || !file.exists()) {
            return false;
        }
        java.io.BufferedInputStream bufferedInputStream = null;
        try {
            java.lang.String absolutePath = file2.getAbsolutePath();
            java.io.File file3 = new java.io.File(absolutePath.substring(0, absolutePath.lastIndexOf(java.io.File.separator)));
            if (!file3.exists()) {
                file3.mkdirs();
            }
            java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
            try {
                java.io.BufferedOutputStream bufferedOutputStream2 = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file2));
                try {
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int i = bufferedInputStream2.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        bufferedOutputStream2.write(bArr, 0, i);
                    }
                    bufferedOutputStream2.flush();
                    try {
                        bufferedInputStream2.close();
                    } catch (java.io.IOException e2) {
                        e2.printStackTrace();
                    }
                    try {
                        bufferedOutputStream2.close();
                    } catch (java.io.IOException e3) {
                        e3.printStackTrace();
                    }
                    return true;
                } catch (java.lang.Throwable th) {
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream = bufferedOutputStream2;
                    th = th;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (java.io.IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (bufferedOutputStream == null) {
                        throw th;
                    }
                    try {
                        bufferedOutputStream.close();
                        throw th;
                    } catch (java.io.IOException e5) {
                        e5.printStackTrace();
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
                bufferedInputStream = bufferedInputStream2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    public static java.lang.String getExceptionCauseString(java.lang.Throwable th) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.PrintStream printStream = new java.io.PrintStream(byteArrayOutputStream);
        while (th != null) {
            try {
                if (th.getCause() == null) {
                    break;
                }
                th = th.getCause();
            } catch (java.lang.Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (java.io.IOException e2) {
                    e2.printStackTrace();
                }
                throw th2;
            }
        }
        if (th != null) {
            th.printStackTrace(printStream);
        }
        java.lang.String visualString = toVisualString(byteArrayOutputStream.toString());
        try {
            byteArrayOutputStream.close();
        } catch (java.io.IOException e3) {
            e3.printStackTrace();
        }
        return visualString;
    }

    public static java.lang.String getSignature(android.content.Context context) throws java.security.NoSuchAlgorithmException {
        try {
            android.content.pm.Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr != null && signatureArr.length > 0) {
                java.security.cert.X509Certificate x509Certificate = (java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(new java.io.ByteArrayInputStream(signatureArr[0].toByteArray()));
                java.security.MessageDigest.getInstance("SHA-1");
                return new java.lang.String(x509Certificate.getEncoded());
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        return "";
    }

    public static boolean isBackground() {
        return background;
    }

    public static boolean isGooglePlay() {
        return false;
    }

    public static boolean isXposedExists(java.lang.Throwable th) {
        for (java.lang.StackTraceElement stackTraceElement : th.getStackTrace()) {
            java.lang.String className = stackTraceElement.getClassName();
            if (className != null && className.contains("de.robv.android.xposed.XposedBridge")) {
                return true;
            }
        }
        return false;
    }

    public static byte[] readBytes(java.io.InputStream inputStream) throws java.io.IOException {
        try {
            byte[] bArr = new byte[512];
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] readJarEntry(java.io.File file, java.lang.String str) {
        if (file != null) {
            try {
                if (file.exists() && !android.text.TextUtils.isEmpty(str)) {
                    return readJarEntry(new java.util.jar.JarFile(file), str);
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] readJarEntry(java.util.jar.JarFile jarFile, java.lang.String str) {
        if (jarFile != null) {
            try {
                if (!android.text.TextUtils.isEmpty(str)) {
                    return readJarEntry(jarFile, jarFile.getJarEntry(str));
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] readJarEntry(java.util.jar.JarFile jarFile, java.util.jar.JarEntry jarEntry) {
        if (jarFile != null && jarEntry != null) {
            try {
                return readBytes(jarFile.getInputStream(jarEntry));
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static void rollbackPatch(android.content.Context context) {
        com.tencent.tinker.lib.tinker.Tinker.with(context).rollbackPatch();
    }

    public static void setBackground(boolean z) {
        background = z;
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
