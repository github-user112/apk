package com.tencent.tinker.lib.library;

/* loaded from: classes.dex */
public class TinkerLoadLibrary {
    public static final java.lang.String TAG = "Tinker.LoadLibrary";

    public static final class V14 {
        public static void install(java.lang.ClassLoader classLoader, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            java.lang.reflect.Field fieldFindField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "nativeLibraryDirectories");
            java.io.File[] fileArr = (java.io.File[]) fieldFindField.get(obj);
            java.util.ArrayList arrayList = new java.util.ArrayList(fileArr.length + 1);
            arrayList.add(file);
            for (java.io.File file2 : fileArr) {
                if (!file.equals(file2)) {
                    arrayList.add(file2);
                }
            }
            fieldFindField.set(obj, arrayList.toArray(new java.io.File[0]));
        }
    }

    public static final class V23 {
        public static void install(java.lang.ClassLoader classLoader, java.io.File file) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            java.util.List arrayList = (java.util.List) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "nativeLibraryDirectories").get(obj);
            if (arrayList == null) {
                arrayList = new java.util.ArrayList(2);
            }
            java.util.Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (file.equals((java.io.File) it.next())) {
                    it.remove();
                    break;
                }
            }
            arrayList.add(0, file);
            java.util.List arrayList2 = (java.util.List) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "systemNativeLibraryDirectories").get(obj);
            if (arrayList2 == null) {
                arrayList2 = new java.util.ArrayList(2);
            }
            java.util.ArrayList arrayList3 = new java.util.ArrayList(arrayList2.size() + arrayList.size() + 1);
            arrayList3.addAll(arrayList);
            arrayList3.addAll(arrayList2);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "nativeLibraryPathElements").set(obj, (java.lang.Object[]) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makePathElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.List.class, java.io.File.class, java.util.List.class}).invoke(obj, arrayList3, null, new java.util.ArrayList()));
        }
    }

    public static final class V25 {
        public static void install(java.lang.ClassLoader classLoader, java.io.File file) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
            java.lang.Object obj = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "pathList").get(classLoader);
            java.util.List arrayList = (java.util.List) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "nativeLibraryDirectories").get(obj);
            if (arrayList == null) {
                arrayList = new java.util.ArrayList(2);
            }
            java.util.Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (file.equals((java.io.File) it.next())) {
                    it.remove();
                    break;
                }
            }
            arrayList.add(0, file);
            java.util.List arrayList2 = (java.util.List) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "systemNativeLibraryDirectories").get(obj);
            if (arrayList2 == null) {
                arrayList2 = new java.util.ArrayList(2);
            }
            java.util.ArrayList arrayList3 = new java.util.ArrayList(arrayList2.size() + arrayList.size() + 1);
            arrayList3.addAll(arrayList);
            arrayList3.addAll(arrayList2);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "nativeLibraryPathElements").set(obj, (java.lang.Object[]) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(obj, "makePathElements", (java.lang.Class<?>[]) new java.lang.Class[]{java.util.List.class}).invoke(obj, arrayList3));
        }
    }

    public static final class V4 {
        public static void install(java.lang.ClassLoader classLoader, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            java.lang.String path = file.getPath();
            java.lang.reflect.Field fieldFindField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "libPath");
            java.lang.String[] strArrSplit = ((java.lang.String) fieldFindField.get(classLoader)).split(":");
            java.lang.StringBuilder sb = new java.lang.StringBuilder(path);
            for (java.lang.String str : strArrSplit) {
                if (str != null && !path.equals(str)) {
                    sb.append(':');
                    sb.append(str);
                }
            }
            fieldFindField.set(classLoader, sb.toString());
            java.lang.reflect.Field fieldFindField2 = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(classLoader, "libraryPathElements");
            java.util.List list = (java.util.List) fieldFindField2.get(classLoader);
            java.util.Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (path.equals((java.lang.String) it.next())) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
            list.add(0, path);
            fieldFindField2.set(classLoader, list);
        }
    }

    public static boolean installNativeLibraryABIWithoutTinkerInstalled(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str) {
        if (!com.tencent.tinker.lib.tinker.TinkerApplicationHelper.isTinkerLoadSuccess(applicationLike)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "no loaded patch, skip installation.", new java.lang.Object[0]);
            return false;
        }
        java.lang.String currentVersion = com.tencent.tinker.lib.tinker.TinkerApplicationHelper.getCurrentVersion(applicationLike);
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(currentVersion)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "failed to get current patch version.", new java.lang.Object[0]);
            return false;
        }
        java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(applicationLike.getApplication());
        if (patchDirectory == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "failed to get current patch directory.", new java.lang.Object[0]);
            return false;
        }
        java.io.File file = new java.io.File(new java.io.File(patchDirectory.getAbsolutePath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(currentVersion)).getAbsolutePath() + "/lib/lib/" + str);
        if (!file.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinker lib path [%s] is not exists.", file);
            return false;
        }
        java.lang.ClassLoader classLoader = applicationLike.getApplication().getClassLoader();
        if (classLoader == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "classloader is null", new java.lang.Object[0]);
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("before hack classloader:");
        sbO.append(classLoader.toString());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
        try {
            java.lang.reflect.Method declaredMethod = com.tencent.tinker.lib.library.TinkerLoadLibrary.class.getDeclaredMethod("installNativeLibraryPath", java.lang.ClassLoader.class, java.io.File.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, classLoader, file);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("after hack classloader:");
            sbO2.append(classLoader.toString());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO2.toString(), new java.lang.Object[0]);
            return true;
        } catch (java.lang.Throwable th) {
            try {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "installNativeLibraryPath fail:" + file + ", thr: " + th, new java.lang.Object[0]);
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("after hack classloader:");
                sbO3.append(classLoader.toString());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO3.toString(), new java.lang.Object[0]);
                return false;
            } catch (java.lang.Throwable th2) {
                java.lang.StringBuilder sbO4 = e.a.c.a.a.o("after hack classloader:");
                sbO4.append(classLoader.toString());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO4.toString(), new java.lang.Object[0]);
                throw th2;
            }
        }
    }

    public static void installNativeLibraryPath(java.lang.ClassLoader classLoader, java.io.File file) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        int i;
        if (file == null || !file.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "installNativeLibraryPath, folder %s is illegal", file);
            return;
        }
        if ((android.os.Build.VERSION.SDK_INT == 25 && android.os.Build.VERSION.PREVIEW_SDK_INT != 0) || (i = android.os.Build.VERSION.SDK_INT) > 25) {
            try {
                com.tencent.tinker.lib.library.TinkerLoadLibrary.V25.install(classLoader, file);
                return;
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23", java.lang.Integer.valueOf(android.os.Build.VERSION.SDK_INT), th.getMessage());
                com.tencent.tinker.lib.library.TinkerLoadLibrary.V23.install(classLoader, file);
                return;
            }
        }
        if (i >= 23) {
            try {
                com.tencent.tinker.lib.library.TinkerLoadLibrary.V23.install(classLoader, file);
                return;
            } catch (java.lang.Throwable th2) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14", java.lang.Integer.valueOf(android.os.Build.VERSION.SDK_INT), th2.getMessage());
            }
        }
        com.tencent.tinker.lib.library.TinkerLoadLibrary.V14.install(classLoader, file);
    }

    public static boolean installNavitveLibraryABI(android.content.Context context, java.lang.String str) {
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        if (!tinkerWith.isTinkerLoaded()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "tinker is not loaded, just return", new java.lang.Object[0]);
            return false;
        }
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResultIfPresent = tinkerWith.getTinkerLoadResultIfPresent();
        if (tinkerLoadResultIfPresent.libs == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "tinker libs is null, just return", new java.lang.Object[0]);
            return false;
        }
        java.io.File file = new java.io.File(tinkerLoadResultIfPresent.libraryDirectory, e.a.c.a.a.e("lib/", str));
        if (!file.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "current libraryABI folder is not exist, path: %s", file.getPath());
            return false;
        }
        java.lang.ClassLoader classLoader = context.getClassLoader();
        if (classLoader == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "classloader is null", new java.lang.Object[0]);
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("before hack classloader:");
        sbO.append(classLoader.toString());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO.toString(), new java.lang.Object[0]);
        try {
            installNativeLibraryPath(classLoader, file);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("after hack classloader:");
            sbO2.append(classLoader.toString());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO2.toString(), new java.lang.Object[0]);
            return true;
        } catch (java.lang.Throwable th) {
            try {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "installNativeLibraryPath fail:" + th, new java.lang.Object[0]);
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("after hack classloader:");
                sbO3.append(classLoader.toString());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO3.toString(), new java.lang.Object[0]);
                return false;
            } catch (java.lang.Throwable th2) {
                java.lang.StringBuilder sbO4 = e.a.c.a.a.o("after hack classloader:");
                sbO4.append(classLoader.toString());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, sbO4.toString(), new java.lang.Object[0]);
                throw th2;
            }
        }
    }

    public static void loadArmLibrary(android.content.Context context, java.lang.String str) {
        if (str == null || str.isEmpty() || context == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or context is null!");
        }
        if (com.tencent.tinker.lib.tinker.Tinker.with(context).isEnabledForNativeLib() && loadLibraryFromTinker(context, "lib/armeabi", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static void loadArmLibraryWithoutTinkerInstalled(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str) {
        if (str == null || str.isEmpty() || applicationLike == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or appLike is null!");
        }
        if (com.tencent.tinker.lib.tinker.TinkerApplicationHelper.isTinkerEnableForNativeLib(applicationLike) && com.tencent.tinker.lib.tinker.TinkerApplicationHelper.loadLibraryFromTinker(applicationLike, "lib/armeabi", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static void loadArmV7Library(android.content.Context context, java.lang.String str) {
        if (str == null || str.isEmpty() || context == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or context is null!");
        }
        if (com.tencent.tinker.lib.tinker.Tinker.with(context).isEnabledForNativeLib() && loadLibraryFromTinker(context, "lib/armeabi-v7a", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static void loadArmV7LibraryWithoutTinkerInstalled(com.tencent.tinker.entry.ApplicationLike applicationLike, java.lang.String str) {
        if (str == null || str.isEmpty() || applicationLike == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("libName or appLike is null!");
        }
        if (com.tencent.tinker.lib.tinker.TinkerApplicationHelper.isTinkerEnableForNativeLib(applicationLike) && com.tencent.tinker.lib.tinker.TinkerApplicationHelper.loadLibraryFromTinker(applicationLike, "lib/armeabi-v7a", str)) {
            return;
        }
        java.lang.System.loadLibrary(str);
    }

    public static boolean loadLibraryFromTinker(android.content.Context context, java.lang.String str, java.lang.String str2) {
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResultIfPresent;
        java.util.HashMap<java.lang.String, java.lang.String> map;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(context);
        if (!str2.startsWith("lib")) {
            str2 = e.a.c.a.a.e("lib", str2);
        }
        if (!str2.endsWith(".so")) {
            str2 = e.a.c.a.a.e(str2, ".so");
        }
        java.lang.String strF = e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2);
        if (!tinkerWith.isEnabledForNativeLib() || !tinkerWith.isTinkerLoaded() || (map = (tinkerLoadResultIfPresent = tinkerWith.getTinkerLoadResultIfPresent()).libs) == null) {
            return false;
        }
        for (java.lang.String str3 : map.keySet()) {
            if (str3.equals(strF)) {
                java.lang.String str4 = tinkerLoadResultIfPresent.libraryDirectory + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str3;
                java.io.File file = new java.io.File(str4);
                if (!file.exists()) {
                    continue;
                } else {
                    if (!tinkerWith.isTinkerLoadVerify() || com.tencent.tinker.loader.shareutil.SharePatchFileUtil.verifyFileMd5(file, tinkerLoadResultIfPresent.libs.get(str3))) {
                        java.lang.System.load(str4);
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "loadLibraryFromTinker success:" + str4, new java.lang.Object[0]);
                        return true;
                    }
                    tinkerWith.getLoadReporter().onLoadFileMd5Mismatch(file, 5);
                }
            }
        }
        return false;
    }
}
