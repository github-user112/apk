package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class SystemClassLoaderAdder {
    public static final java.lang.String CHECK_DEX_CLASS = "com.tencent.tinker.loader.TinkerTestDexLoad";
    public static final java.lang.String CHECK_DEX_FIELD = "isPatch";
    public static final java.lang.String TAG = "Tinker.ClassLoaderAdder";
    public static int sPatchDexCount;

    public static final class ArkHot {
        public static void install(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.io.IOException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            java.lang.Class<?> clsLoadClass = java.lang.ClassLoader.getSystemClassLoader().getParent().loadClass("com.huawei.ark.classloader.ExtendedClassLoaderHelper");
            java.util.Iterator<java.io.File> it = list.iterator();
            while (it.hasNext()) {
                java.lang.String canonicalPath = it.next().getCanonicalPath();
                java.lang.reflect.Method declaredMethod = clsLoadClass.getDeclaredMethod("applyPatch", java.lang.ClassLoader.class, java.lang.String.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, classLoader, canonicalPath);
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "ArkHot install path = " + canonicalPath, new java.lang.Object[0]);
            }
        }
    }

    public static final class V14 {
        public static void install(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(obj, "dexElements", makeDexElements(obj, new java.util.ArrayList(list), file));
        }

        public static java.lang.Object[] makeDexElements(java.lang.Object obj, java.util.ArrayList<java.io.File> arrayList, java.io.File file) {
            return (java.lang.Object[]) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makeDexElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.ArrayList.class, java.io.File.class}).invoke(obj, arrayList, file);
        }
    }

    public static final class V19 {
        public static void install(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.io.IOException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(obj, "dexElements", makeDexElements(obj, new java.util.ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                java.util.Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    java.io.IOException iOException = (java.io.IOException) it.next();
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "Exception in makeDexElement", iOException);
                    throw iOException;
                }
            }
        }

        public static java.lang.Object[] makeDexElements(java.lang.Object obj, java.util.ArrayList<java.io.File> arrayList, java.io.File file, java.util.ArrayList<java.io.IOException> arrayList2) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            java.lang.reflect.Method methodFindMethod;
            try {
                methodFindMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makeDexElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.ArrayList.class, java.io.File.class, java.util.ArrayList.class});
            } catch (java.lang.NoSuchMethodException unused) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure", new java.lang.Object[0]);
                try {
                    methodFindMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makeDexElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.List.class, java.io.File.class, java.util.List.class});
                } catch (java.lang.NoSuchMethodException e2) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: makeDexElements(List,File,List) failure", new java.lang.Object[0]);
                    throw e2;
                }
            }
            return (java.lang.Object[]) methodFindMethod.invoke(obj, arrayList, file, arrayList2);
        }
    }

    public static final class V23 {
        public static void install(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.io.IOException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            java.util.ArrayList arrayList = new java.util.ArrayList();
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(obj, "dexElements", makePathElements(obj, new java.util.ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                java.util.Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    java.io.IOException iOException = (java.io.IOException) it.next();
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "Exception in makePathElement", iOException);
                    throw iOException;
                }
            }
        }

        public static java.lang.Object[] makePathElements(java.lang.Object obj, java.util.ArrayList<java.io.File> arrayList, java.io.File file, java.util.ArrayList<java.io.IOException> arrayList2) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            java.lang.reflect.Method methodFindMethod;
            try {
                methodFindMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makePathElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.List.class, java.io.File.class, java.util.List.class});
            } catch (java.lang.NoSuchMethodException unused) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: makePathElements(List,File,List) failure", new java.lang.Object[0]);
                try {
                    methodFindMethod = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makePathElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.ArrayList.class, java.io.File.class, java.util.ArrayList.class});
                } catch (java.lang.NoSuchMethodException unused2) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: makeDexElements(ArrayList,File,ArrayList) failure", new java.lang.Object[0]);
                    try {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: try use v19 instead", new java.lang.Object[0]);
                        return com.tencent.tinker.loader.SystemClassLoaderAdder.V19.makeDexElements(obj, arrayList, file, arrayList2);
                    } catch (java.lang.NoSuchMethodException e2) {
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.loader.SystemClassLoaderAdder.TAG, "NoSuchMethodException: makeDexElements(List,File,List) failure", new java.lang.Object[0]);
                        throw e2;
                    }
                }
            }
            return (java.lang.Object[]) methodFindMethod.invoke(obj, arrayList, file, arrayList2);
        }
    }

    public static final class V4 {
        public static void install(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            int size = list.size();
            java.lang.reflect.Field fieldFindField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, androidx.core.content.FileProvider.ATTR_PATH);
            java.lang.StringBuilder sb = new java.lang.StringBuilder((java.lang.String) fieldFindField.get(classLoader));
            java.lang.String[] strArr = new java.lang.String[size];
            java.io.File[] fileArr = new java.io.File[size];
            java.util.zip.ZipFile[] zipFileArr = new java.util.zip.ZipFile[size];
            dalvik.system.DexFile[] dexFileArr = new dalvik.system.DexFile[size];
            java.util.ListIterator<java.io.File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                java.io.File next = listIterator.next();
                java.lang.String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int iPreviousIndex = listIterator.previousIndex();
                strArr[iPreviousIndex] = absolutePath;
                fileArr[iPreviousIndex] = next;
                zipFileArr[iPreviousIndex] = new java.util.zip.ZipFile(next);
                dexFileArr[iPreviousIndex] = dalvik.system.DexFile.loadDex(absolutePath, com.tencent.tinker.loader.shareutil.SharePatchFileUtil.optimizedPathFor(next, file), 0);
            }
            fieldFindField.set(classLoader, sb.toString());
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(classLoader, "mPaths", strArr);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(classLoader, "mFiles", fileArr);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(classLoader, "mZips", zipFileArr);
            try {
                com.tencent.tinker.loader.shareutil.ShareReflectUtil.expandFieldArray(classLoader, "mDexs", dexFileArr);
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static boolean checkDexInstall(java.lang.ClassLoader classLoader) throws java.lang.ClassNotFoundException {
        java.lang.Class<?> cls = java.lang.Class.forName(CHECK_DEX_CLASS, true, classLoader);
        boolean zBooleanValue = ((java.lang.Boolean) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls, CHECK_DEX_FIELD).get(null)).booleanValue();
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "checkDexInstall result: %s, checker_classloader: %s", java.lang.Boolean.valueOf(zBooleanValue), cls.getClassLoader());
        return zBooleanValue;
    }

    public static java.util.List<java.io.File> createSortedAdditionalPathEntries(java.util.List<java.io.File> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        final java.util.HashMap map = new java.util.HashMap();
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            java.lang.String name = ((java.io.File) it.next()).getName();
            map.put(name, java.lang.Boolean.valueOf(com.tencent.tinker.loader.shareutil.ShareConstants.CLASS_N_PATTERN.matcher(name).matches()));
        }
        java.util.Collections.sort(arrayList, new java.util.Comparator<java.io.File>() { // from class: com.tencent.tinker.loader.SystemClassLoaderAdder.1
            @Override // java.util.Comparator
            public int compare(java.io.File file, java.io.File file2) {
                if (file == null && file2 == null) {
                    return 0;
                }
                if (file == null) {
                    return -1;
                }
                if (file2 == null) {
                    return 1;
                }
                java.lang.String name2 = file.getName();
                java.lang.String name3 = file2.getName();
                if (name2.equals(name3)) {
                    return 0;
                }
                if (name2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.TEST_DEX_NAME)) {
                    return 1;
                }
                if (name3.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.TEST_DEX_NAME)) {
                    return -1;
                }
                boolean zBooleanValue = ((java.lang.Boolean) map.get(name2)).booleanValue();
                boolean zBooleanValue2 = ((java.lang.Boolean) map.get(name3)).booleanValue();
                if (!zBooleanValue || !zBooleanValue2) {
                    if (zBooleanValue) {
                        return -1;
                    }
                    if (zBooleanValue2) {
                        return 1;
                    }
                    return name2.compareTo(name3);
                }
                int iIndexOf = name2.indexOf(46);
                int iIndexOf2 = name3.indexOf(46);
                int i = iIndexOf > 7 ? java.lang.Integer.parseInt(name2.substring(7, iIndexOf)) : 1;
                int i2 = iIndexOf2 > 7 ? java.lang.Integer.parseInt(name3.substring(7, iIndexOf2)) : 1;
                if (i == i2) {
                    return 0;
                }
                return i < i2 ? -1 : 1;
            }
        });
        return arrayList;
    }

    public static void injectDexesInternal(java.lang.ClassLoader classLoader, java.util.List<java.io.File> list, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.io.IOException, java.lang.IllegalArgumentException {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 23) {
            com.tencent.tinker.loader.SystemClassLoaderAdder.V23.install(classLoader, list, file);
        } else if (i >= 19) {
            com.tencent.tinker.loader.SystemClassLoaderAdder.V19.install(classLoader, list, file);
        } else {
            com.tencent.tinker.loader.SystemClassLoaderAdder.V14.install(classLoader, list, file);
        }
    }

    public static void installApk(dalvik.system.PathClassLoader pathClassLoader, java.util.List<java.io.File> list) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.io.IOException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (list.isEmpty()) {
            return;
        }
        java.util.List<java.io.File> listCreateSortedAdditionalPathEntries = createSortedAdditionalPathEntries(list);
        com.tencent.tinker.loader.SystemClassLoaderAdder.ArkHot.install(pathClassLoader, listCreateSortedAdditionalPathEntries);
        sPatchDexCount = listCreateSortedAdditionalPathEntries.size();
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "after loaded classloader: " + pathClassLoader + ", dex size:" + sPatchDexCount, new java.lang.Object[0]);
        checkDexInstall(pathClassLoader);
    }

    public static void installDexes(android.app.Application application, java.lang.ClassLoader classLoader, java.io.File file, java.util.List<java.io.File> list, boolean z, boolean z2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.io.IOException, java.lang.IllegalArgumentException {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("installDexes dexOptDir: ");
        sbO.append(file.getAbsolutePath());
        sbO.append(", dex size:");
        sbO.append(list.size());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
        if (list.isEmpty()) {
            return;
        }
        java.util.List<java.io.File> listCreateSortedAdditionalPathEntries = createSortedAdditionalPathEntries(list);
        if (android.os.Build.VERSION.SDK_INT < 24 || z) {
            injectDexesInternal(classLoader, listCreateSortedAdditionalPathEntries, file);
        } else {
            classLoader = com.tencent.tinker.loader.NewClassLoaderInjector.inject(application, classLoader, file, z2, listCreateSortedAdditionalPathEntries);
        }
        sPatchDexCount = listCreateSortedAdditionalPathEntries.size();
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "after loaded classloader: " + classLoader + ", dex size:" + sPatchDexCount, new java.lang.Object[0]);
        if (checkDexInstall(classLoader)) {
            return;
        }
        uninstallPatchDex(classLoader);
        throw new com.tencent.tinker.loader.TinkerRuntimeException(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_INSTALL_FAIL);
    }

    public static void uninstallPatchDex(java.lang.ClassLoader classLoader) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        if (sPatchDexCount <= 0) {
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareReflectUtil.reduceFieldArray(com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader), "dexElements", sPatchDexCount);
    }
}
