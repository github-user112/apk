package d.o;

/* loaded from: classes.dex */
public final class e {
    public static final java.util.Set<java.io.File> a = new java.util.HashSet();
    public static final boolean b;

    public static final class a {
        public static d.o.h a(java.io.RandomAccessFile randomAccessFile) throws java.io.IOException {
            long length = randomAccessFile.length() - 22;
            if (length < 0) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("File too short to be a zip file: ");
                sbO.append(randomAccessFile.length());
                throw new java.util.zip.ZipException(sbO.toString());
            }
            long j = length - android.support.v4.media.session.PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
            long j2 = j >= 0 ? j : 0L;
            int iReverseBytes = java.lang.Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == iReverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    d.o.h hVar = new d.o.h();
                    hVar.b = java.lang.Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    hVar.a = java.lang.Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return hVar;
                }
                length--;
            } while (length >= j2);
            throw new java.util.zip.ZipException("End Of Central Directory signature not found");
        }

        public static java.lang.String b(java.lang.Throwable th) {
            for (java.lang.Throwable cause = th; cause != null; cause = cause.getCause()) {
                if (cause instanceof java.net.UnknownHostException) {
                    return "";
                }
            }
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            java.io.PrintWriter printWriter = new java.io.PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }
    }

    static {
        java.lang.String property = java.lang.System.getProperty("java.vm.version");
        boolean z = false;
        if (property != null) {
            java.util.StringTokenizer stringTokenizer = new java.util.StringTokenizer(property, ".");
            java.lang.String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            java.lang.String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (strNextToken != null && strNextToken2 != null) {
                try {
                    int i = java.lang.Integer.parseInt(strNextToken);
                    int i2 = java.lang.Integer.parseInt(strNextToken2);
                    if (i > 2 || (i == 2 && i2 >= 1)) {
                        z = true;
                    }
                } catch (java.lang.NumberFormatException unused) {
                }
            }
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q("VM with version ", property);
        sbQ.append(z ? " has multidex support" : " does not have multidex support");
        android.util.Log.i("MultiDex", sbQ.toString());
        b = z;
    }

    public static void a(java.lang.Object obj, java.lang.String str, java.lang.Object[] objArr) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        java.lang.reflect.Field fieldE = e(obj, str);
        java.lang.Object[] objArr2 = (java.lang.Object[]) fieldE.get(obj);
        java.lang.Object[] objArr3 = (java.lang.Object[]) java.lang.reflect.Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        java.lang.System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        java.lang.System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldE.set(obj, objArr3);
    }

    public static java.lang.reflect.Method b(java.lang.Object obj, java.lang.String str, java.lang.Class[] clsArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        for (java.lang.Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                java.lang.reflect.Method declaredMethod = superclass.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (java.lang.NoSuchMethodException unused) {
            }
        }
        java.lang.StringBuilder sbR = e.a.c.a.a.r("Method ", str, " with parameters ");
        sbR.append(java.util.Arrays.asList(clsArr));
        sbR.append(" not found in ");
        sbR.append(obj.getClass());
        throw new java.lang.NoSuchMethodException(sbR.toString());
    }

    public static void c(android.content.Context context) {
        java.io.File file = new java.io.File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Clearing old secondary dex dir (");
            sbO.append(file.getPath());
            sbO.append(").");
            android.util.Log.i("MultiDex", sbO.toString());
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to list secondary dex dir content (");
                sbO2.append(file.getPath());
                sbO2.append(").");
                android.util.Log.w("MultiDex", sbO2.toString());
                return;
            }
            for (java.io.File file2 : fileArrListFiles) {
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Trying to delete old file ");
                sbO3.append(file2.getPath());
                sbO3.append(" of size ");
                sbO3.append(file2.length());
                android.util.Log.i("MultiDex", sbO3.toString());
                if (file2.delete()) {
                    java.lang.StringBuilder sbO4 = e.a.c.a.a.o("Deleted old file ");
                    sbO4.append(file2.getPath());
                    android.util.Log.i("MultiDex", sbO4.toString());
                } else {
                    java.lang.StringBuilder sbO5 = e.a.c.a.a.o("Failed to delete old file ");
                    sbO5.append(file2.getPath());
                    android.util.Log.w("MultiDex", sbO5.toString());
                }
            }
            if (file.delete()) {
                java.lang.StringBuilder sbO6 = e.a.c.a.a.o("Deleted old secondary dex dir ");
                sbO6.append(file.getPath());
                android.util.Log.i("MultiDex", sbO6.toString());
            } else {
                java.lang.StringBuilder sbO7 = e.a.c.a.a.o("Failed to delete secondary dex dir ");
                sbO7.append(file.getPath());
                android.util.Log.w("MultiDex", sbO7.toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0070 A[Catch: all -> 0x00cd, DONT_GENERATE, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0003, B:6:0x000b, B:8:0x000d, B:10:0x0018, B:13:0x0058, B:14:0x005c, B:22:0x0070, B:28:0x007e, B:29:0x0085, B:32:0x0095, B:40:0x00bd, B:44:0x00c4, B:46:0x00c6, B:49:0x00c9, B:50:0x00cc, B:31:0x0089, B:27:0x0077, B:17:0x0061, B:19:0x0068, B:24:0x0072, B:34:0x00a3, B:35:0x00a7, B:39:0x00ae, B:47:0x00c7), top: B:64:0x0003, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(android.content.Context r6, java.io.File r7, java.io.File r8, java.lang.String r9, java.lang.String r10, boolean r11) {
        /*
            java.util.Set<java.io.File> r0 = d.o.e.a
            monitor-enter(r0)
            java.util.Set<java.io.File> r1 = d.o.e.a     // Catch: java.lang.Throwable -> Lcd
            boolean r1 = r1.contains(r7)     // Catch: java.lang.Throwable -> Lcd
            if (r1 == 0) goto Ld
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcd
            return
        Ld:
            java.util.Set<java.io.File> r1 = d.o.e.a     // Catch: java.lang.Throwable -> Lcd
            r1.add(r7)     // Catch: java.lang.Throwable -> Lcd
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lcd
            r2 = 20
            if (r1 <= r2) goto L55
            java.lang.String r1 = "MultiDex"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcd
            r3.<init>()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r4 = "MultiDex is not guaranteed to work in SDK version "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lcd
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lcd
            r3.append(r4)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r4 = ": SDK version higher than "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lcd
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = " should be backed by "
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = "runtime with built-in multidex capabilty but it's not the "
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = "case here: java.vm.version=\""
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = "java.vm.version"
            java.lang.String r2 = java.lang.System.getProperty(r2)     // Catch: java.lang.Throwable -> Lcd
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = "\""
            r3.append(r2)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> Lcd
            android.util.Log.w(r1, r2)     // Catch: java.lang.Throwable -> Lcd
        L55:
            java.lang.String r1 = "MultiDex"
            r2 = 0
            java.lang.ClassLoader r3 = r6.getClassLoader()     // Catch: java.lang.RuntimeException -> L67 java.lang.Throwable -> Lcd
            boolean r4 = r3 instanceof dalvik.system.BaseDexClassLoader     // Catch: java.lang.Throwable -> Lcd
            if (r4 == 0) goto L61
            goto L6e
        L61:
            java.lang.String r3 = "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching."
            android.util.Log.e(r1, r3)     // Catch: java.lang.Throwable -> Lcd
            goto L6d
        L67:
            r3 = move-exception
            java.lang.String r4 = "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."
            android.util.Log.w(r1, r4, r3)     // Catch: java.lang.Throwable -> Lcd
        L6d:
            r3 = r2
        L6e:
            if (r3 != 0) goto L72
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcd
            return
        L72:
            c(r6)     // Catch: java.lang.Throwable -> L76
            goto L7e
        L76:
            r1 = move-exception
            java.lang.String r4 = "MultiDex"
            java.lang.String r5 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
            android.util.Log.w(r4, r5, r1)     // Catch: java.lang.Throwable -> Lcd
        L7e:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r4 = "code_cache"
            r1.<init>(r8, r4)     // Catch: java.lang.Throwable -> Lcd
            h(r1)     // Catch: java.io.IOException -> L89 java.lang.Throwable -> Lcd
            goto L95
        L89:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> Lcd
            java.io.File r8 = r6.getFilesDir()     // Catch: java.lang.Throwable -> Lcd
            r1.<init>(r8, r4)     // Catch: java.lang.Throwable -> Lcd
            h(r1)     // Catch: java.lang.Throwable -> Lcd
        L95:
            java.io.File r8 = new java.io.File     // Catch: java.lang.Throwable -> Lcd
            r8.<init>(r1, r9)     // Catch: java.lang.Throwable -> Lcd
            h(r8)     // Catch: java.lang.Throwable -> Lcd
            d.o.g r9 = new d.o.g     // Catch: java.lang.Throwable -> Lcd
            r9.<init>(r7, r8)     // Catch: java.lang.Throwable -> Lcd
            r7 = 0
            java.util.List r7 = r9.e(r6, r10, r7)     // Catch: java.lang.Throwable -> Lc8
            g(r3, r8, r7)     // Catch: java.io.IOException -> Lab java.lang.Throwable -> Lc8
            goto Lbd
        Lab:
            r7 = move-exception
            if (r11 == 0) goto Lc7
            java.lang.String r11 = "MultiDex"
            java.lang.String r1 = "Failed to install extracted secondary dex files, retrying with forced extraction"
            android.util.Log.w(r11, r1, r7)     // Catch: java.lang.Throwable -> Lc8
            r7 = 1
            java.util.List r6 = r9.e(r6, r10, r7)     // Catch: java.lang.Throwable -> Lc8
            g(r3, r8, r6)     // Catch: java.lang.Throwable -> Lc8
        Lbd:
            r9.close()     // Catch: java.io.IOException -> Lc1 java.lang.Throwable -> Lcd
            goto Lc2
        Lc1:
            r2 = move-exception
        Lc2:
            if (r2 != 0) goto Lc6
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcd
            return
        Lc6:
            throw r2     // Catch: java.lang.Throwable -> Lcd
        Lc7:
            throw r7     // Catch: java.lang.Throwable -> Lc8
        Lc8:
            r6 = move-exception
            r9.close()     // Catch: java.io.IOException -> Lcc java.lang.Throwable -> Lcd
        Lcc:
            throw r6     // Catch: java.lang.Throwable -> Lcd
        Lcd:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcd
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: d.o.e.d(android.content.Context, java.io.File, java.io.File, java.lang.String, java.lang.String, boolean):void");
    }

    public static java.lang.reflect.Field e(java.lang.Object obj, java.lang.String str) throws java.lang.NoSuchFieldException {
        for (java.lang.Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                java.lang.reflect.Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (java.lang.NoSuchFieldException unused) {
            }
        }
        java.lang.StringBuilder sbR = e.a.c.a.a.r("Field ", str, " not found in ");
        sbR.append(obj.getClass());
        throw new java.lang.NoSuchFieldException(sbR.toString());
    }

    public static void f(android.content.Context context) {
        android.content.pm.ApplicationInfo applicationInfo;
        java.lang.String str;
        android.util.Log.i("MultiDex", "Installing application");
        if (b) {
            str = "VM has multidex support, MultiDex support library is disabled.";
        } else {
            try {
                try {
                    applicationInfo = context.getApplicationInfo();
                } catch (java.lang.RuntimeException e2) {
                    android.util.Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e2);
                    applicationInfo = null;
                }
                if (applicationInfo == null) {
                    android.util.Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                } else {
                    d(context, new java.io.File(applicationInfo.sourceDir), new java.io.File(applicationInfo.dataDir), "secondary-dexes", "", true);
                    str = "install done";
                }
            } catch (java.lang.Exception e3) {
                android.util.Log.e("MultiDex", "MultiDex installation failure", e3);
                java.lang.StringBuilder sbO = e.a.c.a.a.o("MultiDex installation failed (");
                sbO.append(e3.getMessage());
                sbO.append(").");
                throw new java.lang.RuntimeException(sbO.toString());
            }
        }
        android.util.Log.i("MultiDex", str);
    }

    public static void g(java.lang.ClassLoader classLoader, java.io.File file, java.util.List<? extends java.io.File> list) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.io.IOException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException {
        d.o.a dVar;
        java.io.IOException[] iOExceptionArr;
        if (list.isEmpty()) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            java.lang.Object obj = e(classLoader, "pathList").get(classLoader);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            a(obj, "dexElements", (java.lang.Object[]) b(obj, "makeDexElements", new java.lang.Class[]{java.util.ArrayList.class, java.io.File.class, java.util.ArrayList.class}).invoke(obj, new java.util.ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                java.util.Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    android.util.Log.w("MultiDex", "Exception in makeDexElement", (java.io.IOException) it.next());
                }
                java.lang.reflect.Field fieldE = e(obj, "dexElementsSuppressedExceptions");
                java.io.IOException[] iOExceptionArr2 = (java.io.IOException[]) fieldE.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (java.io.IOException[]) arrayList.toArray(new java.io.IOException[arrayList.size()]);
                } else {
                    java.io.IOException[] iOExceptionArr3 = new java.io.IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    java.lang.System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                fieldE.set(obj, iOExceptionArr);
                java.io.IOException iOException = new java.io.IOException("I/O exception during makeDexElement");
                iOException.initCause((java.lang.Throwable) arrayList.get(0));
                throw iOException;
            }
            return;
        }
        java.lang.Object obj2 = e(classLoader, "pathList").get(classLoader);
        java.lang.Class<?> cls = java.lang.Class.forName("dalvik.system.DexPathList$Element");
        try {
            try {
                dVar = new d.o.b(cls);
            } catch (java.lang.NoSuchMethodException unused) {
                dVar = new d.o.c(cls);
            }
        } catch (java.lang.NoSuchMethodException unused2) {
            dVar = new d.o.d(cls);
        }
        int size = list.size();
        java.lang.Object[] objArr = new java.lang.Object[size];
        for (int i = 0; i < size; i++) {
            java.io.File file2 = list.get(i);
            objArr[i] = dVar.a(file2, dalvik.system.DexFile.loadDex(file2.getPath(), new java.io.File(file2.getParentFile(), file2.getName().substring(0, r9.length() - 4) + com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX).getPath(), 0));
        }
        try {
            a(obj2, "dexElements", objArr);
        } catch (java.lang.NoSuchFieldException e2) {
            android.util.Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e2);
            a(obj2, "pathElements", objArr);
        }
    }

    public static void h(java.io.File file) throws java.io.IOException {
        java.lang.String string;
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        java.io.File parentFile = file.getParentFile();
        if (parentFile == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to create dir ");
            sbO.append(file.getPath());
            sbO.append(". Parent file is null.");
            string = sbO.toString();
        } else {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Failed to create dir ");
            sbO2.append(file.getPath());
            sbO2.append(". parent file is a dir ");
            sbO2.append(parentFile.isDirectory());
            sbO2.append(", a file ");
            sbO2.append(parentFile.isFile());
            sbO2.append(", exists ");
            sbO2.append(parentFile.exists());
            sbO2.append(", readable ");
            sbO2.append(parentFile.canRead());
            sbO2.append(", writable ");
            sbO2.append(parentFile.canWrite());
            string = sbO2.toString();
        }
        android.util.Log.e("MultiDex", string);
        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Failed to create directory ");
        sbO3.append(file.getPath());
        throw new java.io.IOException(sbO3.toString());
    }
}
