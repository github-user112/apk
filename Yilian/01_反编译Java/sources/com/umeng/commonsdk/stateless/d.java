package com.umeng.commonsdk.stateless;

/* loaded from: classes.dex */
public class d {
    public static int a;
    public static final byte[] b = {10, 1, 11, 5, 4, com.umeng.analytics.pro.bw.m, 7, 9, 23, 3, 1, 6, 8, 12, com.umeng.analytics.pro.bw.k, 91};

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.Object f1506c = new java.lang.Object();

    /* JADX WARN: Removed duplicated region for block: B:40:0x0065 A[EXC_TOP_SPLITTER, PHI: r1
  0x0065: PHI (r1v2 java.io.FileOutputStream) = (r1v1 java.io.FileOutputStream), (r1v3 java.io.FileOutputStream) binds: [B:22:0x0063, B:27:0x006d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r6, java.lang.String r7, java.lang.String r8, byte[] r9) {
        /*
            r0 = 101(0x65, float:1.42E-43)
            if (r6 == 0) goto L77
            r1 = 0
            java.lang.Object r2 = com.umeng.commonsdk.stateless.d.f1506c     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L69
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L69
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r4.<init>()     // Catch: java.lang.Throwable -> L5c
            java.io.File r5 = r6.getFilesDir()     // Catch: java.lang.Throwable -> L5c
            r4.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = java.io.File.separator     // Catch: java.lang.Throwable -> L5c
            r4.append(r5)     // Catch: java.lang.Throwable -> L5c
            r4.append(r7)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L5c
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L5c
            boolean r7 = r3.isDirectory()     // Catch: java.lang.Throwable -> L5c
            if (r7 != 0) goto L2e
            r3.mkdir()     // Catch: java.lang.Throwable -> L5c
        L2e:
            java.io.File r7 = new java.io.File     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r4.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = r3.getPath()     // Catch: java.lang.Throwable -> L5c
            r4.append(r3)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = java.io.File.separator     // Catch: java.lang.Throwable -> L5c
            r4.append(r3)     // Catch: java.lang.Throwable -> L5c
            r4.append(r8)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = r4.toString()     // Catch: java.lang.Throwable -> L5c
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L5c
            java.io.FileOutputStream r8 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5c
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L5c
            r8.write(r9)     // Catch: java.lang.Throwable -> L59
            r8.close()     // Catch: java.lang.Throwable -> L59
            r0 = 0
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5c
            goto L77
        L59:
            r7 = move-exception
            r1 = r8
            goto L5d
        L5c:
            r7 = move-exception
        L5d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L5c
            throw r7     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L69
        L5f:
            r7 = move-exception
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r6, r7)     // Catch: java.lang.Throwable -> L70
            if (r1 == 0) goto L77
        L65:
            r1.close()     // Catch: java.lang.Throwable -> L77
            goto L77
        L69:
            r7 = move-exception
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r6, r7)     // Catch: java.lang.Throwable -> L70
            if (r1 == 0) goto L77
            goto L65
        L70:
            r6 = move-exception
            if (r1 == 0) goto L76
            r1.close()     // Catch: java.lang.Throwable -> L76
        L76:
            throw r6
        L77:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.d.a(android.content.Context, java.lang.String, java.lang.String, byte[]):int");
    }

    public static java.io.File a(android.content.Context context) {
        java.io.File[] fileArrListFiles;
        java.io.File[] fileArrListFiles2;
        java.io.File file = null;
        try {
            synchronized (f1506c) {
                com.umeng.commonsdk.statistics.common.ULog.i("walle", "get last envelope begin, thread is " + java.lang.Thread.currentThread());
                if (context != null && context.getApplicationContext() != null) {
                    java.lang.String str = context.getApplicationContext().getFilesDir() + java.io.File.separator + com.umeng.commonsdk.stateless.a.f1497e;
                    if (!android.text.TextUtils.isEmpty(str)) {
                        java.io.File file2 = new java.io.File(str);
                        if (file2.isDirectory() && (fileArrListFiles = file2.listFiles()) != null && fileArrListFiles.length > 0) {
                            for (java.io.File file3 : fileArrListFiles) {
                                if (file3 != null && file3.isDirectory() && (fileArrListFiles2 = file3.listFiles()) != null && fileArrListFiles2.length > 0) {
                                    java.util.Arrays.sort(fileArrListFiles2, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.stateless.d.1
                                        @Override // java.util.Comparator
                                        /* renamed from: a, reason: merged with bridge method [inline-methods] */
                                        public int compare(java.io.File file4, java.io.File file5) {
                                            long jLastModified = file4.lastModified() - file5.lastModified();
                                            if (jLastModified > 0) {
                                                return 1;
                                            }
                                            return jLastModified == 0 ? 0 : -1;
                                        }
                                    });
                                    java.io.File file4 = fileArrListFiles2[0];
                                    if (file4 != null && (file == null || file.lastModified() > file4.lastModified())) {
                                        file = file4;
                                    }
                                }
                            }
                        }
                    }
                }
                com.umeng.commonsdk.statistics.common.ULog.i("walle", "get last envelope end, thread is " + java.lang.Thread.currentThread());
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
        return file;
    }

    public static java.lang.String a(android.content.Context context, boolean z) {
        java.lang.StringBuilder sb;
        if (context == null) {
            return null;
        }
        try {
            if (z) {
                sb = new java.lang.StringBuilder();
                sb.append(context.getApplicationContext().getFilesDir());
                sb.append(java.io.File.separator);
                sb.append(com.umeng.commonsdk.stateless.a.f1497e);
            } else {
                sb = new java.lang.StringBuilder();
                sb.append(context.getApplicationContext().getFilesDir());
                sb.append(java.io.File.separator);
                sb.append(com.umeng.commonsdk.stateless.a.f1498f);
            }
            return sb.toString();
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static void a(android.content.Context context, java.lang.String str, int i) {
        try {
            if (str == null) {
                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] fileDir not exist, thread is " + java.lang.Thread.currentThread());
                return;
            }
            java.io.File file = new java.io.File(str);
            if (!file.isDirectory()) {
                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] fileDir not exist, thread is " + java.lang.Thread.currentThread());
                return;
            }
            synchronized (f1506c) {
                java.io.File[] fileArrListFiles = file.listFiles();
                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] delete file begin " + fileArrListFiles.length + ", thread is " + java.lang.Thread.currentThread());
                if (fileArrListFiles.length >= i) {
                    com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] file size >= max");
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    for (java.io.File file2 : fileArrListFiles) {
                        if (file2 != null) {
                            arrayList.add(file2);
                        }
                    }
                    if (arrayList.size() >= i) {
                        java.util.Collections.sort(arrayList, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.stateless.d.4
                            @Override // java.util.Comparator
                            /* renamed from: a, reason: merged with bridge method [inline-methods] */
                            public int compare(java.io.File file3, java.io.File file4) {
                                if (file3 == null || file4 == null || file3.lastModified() >= file4.lastModified()) {
                                    return (file3 == null || file4 == null || file3.lastModified() != file4.lastModified()) ? 1 : 0;
                                }
                                return -1;
                            }
                        });
                        if (com.umeng.commonsdk.statistics.common.ULog.DEBUG) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] overrun native file is " + ((java.io.File) arrayList.get(i2)).getPath());
                            }
                        }
                        for (int i3 = 0; i3 <= arrayList.size() - i; i3++) {
                            if (arrayList.get(i3) != null) {
                                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] overrun remove file is " + ((java.io.File) arrayList.get(i3)).getPath());
                                try {
                                    ((java.io.File) arrayList.get(i3)).delete();
                                    arrayList.remove(i3);
                                } catch (java.lang.Exception unused) {
                                }
                            }
                        }
                    }
                } else {
                    com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] file size < max");
                }
                com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] delete file end " + fileArrListFiles.length + ", thread is " + java.lang.Thread.currentThread());
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
    }

    public static void a(android.content.Context context, java.lang.String str, final java.lang.String str2, int i) {
        if (str == null) {
            return;
        }
        try {
            java.io.File file = new java.io.File(str);
            if (file.isDirectory()) {
                synchronized (f1506c) {
                    java.io.File[] fileArrListFiles = file.listFiles(new java.io.FilenameFilter() { // from class: com.umeng.commonsdk.stateless.d.5
                        @Override // java.io.FilenameFilter
                        public boolean accept(java.io.File file2, java.lang.String str3) {
                            return str3.startsWith(str2);
                        }
                    });
                    if (fileArrListFiles == null || fileArrListFiles.length < i) {
                        com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] file size < max");
                    } else {
                        com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] file size >= max");
                        java.util.ArrayList arrayList = new java.util.ArrayList();
                        for (java.io.File file2 : fileArrListFiles) {
                            if (file2 != null) {
                                arrayList.add(file2);
                            }
                        }
                        if (arrayList.size() >= i) {
                            java.util.Collections.sort(arrayList, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.stateless.d.6
                                @Override // java.util.Comparator
                                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                                public int compare(java.io.File file3, java.io.File file4) {
                                    if (file3 == null || file4 == null || file3.lastModified() >= file4.lastModified()) {
                                        return (file3 == null || file4 == null || file3.lastModified() != file4.lastModified()) ? 1 : 0;
                                    }
                                    return -1;
                                }
                            });
                            if (com.umeng.commonsdk.statistics.common.ULog.DEBUG) {
                                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                    com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] overrun native file is " + ((java.io.File) arrayList.get(i2)).getPath());
                                }
                            }
                            for (int i3 = 0; i3 <= arrayList.size() - i; i3++) {
                                if (arrayList.get(i3) != null) {
                                    com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] overrun remove file is " + ((java.io.File) arrayList.get(i3)).getPath());
                                    try {
                                        ((java.io.File) arrayList.get(i3)).delete();
                                        arrayList.remove(i3);
                                    } catch (java.lang.Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                    com.umeng.commonsdk.statistics.common.ULog.i("AmapLBS", "[lbs-build] delete file end " + fileArrListFiles.length + ", thread is " + java.lang.Thread.currentThread());
                }
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
    }

    public static boolean a(long j, long j2) {
        return j > j2;
    }

    public static boolean a(java.io.File file) {
        if (file == null) {
            return false;
        }
        if (file.isDirectory()) {
            for (java.lang.String str : file.list()) {
                if (!a(new java.io.File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static byte[] a(java.lang.String str) {
        byte[] bArr;
        synchronized (f1506c) {
            java.nio.channels.FileChannel channel = null;
            try {
                try {
                    channel = new java.io.RandomAccessFile(str, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT).getChannel();
                    java.nio.MappedByteBuffer mappedByteBufferLoad = channel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                    bArr = new byte[(int) channel.size()];
                    if (mappedByteBufferLoad.remaining() > 0) {
                        mappedByteBufferLoad.get(bArr, 0, mappedByteBufferLoad.remaining());
                    }
                    try {
                        channel.close();
                    } catch (java.lang.Throwable unused) {
                    }
                } catch (java.io.IOException e2) {
                    com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] write envelope, e is " + e2.getMessage());
                    throw e2;
                }
            } catch (java.lang.Throwable th) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (java.lang.Throwable unused2) {
                    }
                }
                throw th;
            }
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) throws java.lang.Throwable {
        java.io.ByteArrayOutputStream byteArrayOutputStream = null;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        java.util.zip.Deflater deflater = new java.util.zip.Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        a = 0;
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int iDeflate = deflater.deflate(bArr2);
                    a += iDeflate;
                    byteArrayOutputStream2.write(bArr2, 0, iDeflate);
                } catch (java.lang.Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            byteArrayOutputStream2.close();
            return byteArrayOutputStream2.toByteArray();
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new javax.crypto.spec.SecretKeySpec(bArr2, "AES"), new javax.crypto.spec.IvParameterSpec(b));
        return cipher.doFinal(bArr);
    }

    public static java.io.File b(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            synchronized (f1506c) {
                java.lang.String str = context.getApplicationContext().getFilesDir() + java.io.File.separator + com.umeng.commonsdk.stateless.a.f1498f;
                if (android.text.TextUtils.isEmpty(str)) {
                    return null;
                }
                java.io.File file = new java.io.File(str);
                synchronized (f1506c) {
                    java.io.File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                        java.util.Arrays.sort(fileArrListFiles, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.stateless.d.2
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
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String b(java.lang.String str) {
        try {
            return android.util.Base64.encodeToString(str.getBytes(), 0);
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static boolean b(android.content.Context context, java.lang.String str, java.lang.String str2, byte[] bArr) throws java.io.IOException {
        boolean z;
        if (context == null) {
            return false;
        }
        java.io.FileOutputStream fileOutputStream = null;
        try {
            try {
                synchronized (f1506c) {
                    try {
                        com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] begin write envelope, thread is " + java.lang.Thread.currentThread());
                        java.io.File file = new java.io.File(context.getFilesDir() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + com.umeng.commonsdk.stateless.a.f1497e);
                        if (!file.isDirectory()) {
                            file.mkdir();
                        }
                        java.io.File file2 = new java.io.File(file.getPath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str);
                        if (!file2.isDirectory()) {
                            file2.mkdir();
                        }
                        java.io.File file3 = new java.io.File(file2.getPath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str2);
                        if (!file3.exists()) {
                            file3.createNewFile();
                        }
                        java.io.FileOutputStream fileOutputStream2 = new java.io.FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(bArr);
                            fileOutputStream2.close();
                            try {
                                return true;
                            } catch (java.lang.Throwable th) {
                                th = th;
                                z = true;
                                while (true) {
                                    try {
                                        break;
                                    } catch (java.lang.Throwable th2) {
                                        th = th2;
                                    }
                                }
                                throw th;
                            }
                        } catch (java.lang.Throwable th3) {
                            th = th3;
                            fileOutputStream = fileOutputStream2;
                            z = false;
                            while (true) {
                                break;
                                break;
                            }
                            throw th;
                        }
                    } catch (java.lang.Throwable th4) {
                        th = th4;
                    }
                }
                try {
                    break;
                    throw th;
                } catch (java.io.IOException e2) {
                    e = e2;
                    com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] write envelope, e is " + e.getMessage());
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (java.io.IOException unused) {
                        }
                    }
                    return z;
                } catch (java.lang.Throwable th5) {
                    th = th5;
                    com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] write envelope, e is " + th.getMessage());
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    return z;
                }
            } catch (java.lang.Throwable th6) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (java.io.IOException unused2) {
                    }
                }
                throw th6;
            }
        } catch (java.io.IOException e3) {
            e = e3;
            z = false;
        } catch (java.lang.Throwable th7) {
            th = th7;
            z = false;
        }
    }

    public static byte[] b(byte[] bArr) throws java.security.NoSuchAlgorithmException {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String c(java.lang.String str) {
        try {
            return new java.lang.String(android.util.Base64.decode(str, 0));
        } catch (java.lang.Throwable unused) {
            return "";
        }
    }

    public static java.lang.String c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(java.lang.String.format("%02X", java.lang.Byte.valueOf(b2)));
        }
        return stringBuffer.toString().toLowerCase(java.util.Locale.US);
    }

    public static java.io.File[] c(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            synchronized (f1506c) {
                java.lang.String str = context.getApplicationContext().getFilesDir() + java.io.File.separator + com.umeng.commonsdk.stateless.a.f1498f;
                if (android.text.TextUtils.isEmpty(str)) {
                    return null;
                }
                java.io.File file = new java.io.File(str);
                synchronized (f1506c) {
                    java.io.File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                        java.util.Arrays.sort(fileArrListFiles, new java.util.Comparator<java.io.File>() { // from class: com.umeng.commonsdk.stateless.d.3
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
                        return fileArrListFiles;
                    }
                    return null;
                }
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            return null;
        }
    }

    public static java.lang.String d(java.lang.String str) {
        int iLastIndexOf;
        int iLastIndexOf2;
        return (!android.text.TextUtils.isEmpty(str) && str.indexOf("envelope") < 0 && (iLastIndexOf = str.lastIndexOf("_")) >= 0 && (iLastIndexOf2 = str.lastIndexOf(".")) >= 0) ? str.substring(iLastIndexOf + 1, iLastIndexOf2) : "";
    }
}
