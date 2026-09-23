package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public final class NewClassLoaderInjector {
    public NewClassLoaderInjector() {
        throw new java.lang.UnsupportedOperationException();
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static java.lang.ClassLoader createNewClassLoader(java.lang.ClassLoader classLoader, java.io.File file, boolean z, boolean z2, java.lang.String... strArr) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        java.lang.ClassLoader tinkerClassLoader;
        java.lang.Object obj = findField(java.lang.Class.forName("dalvik.system.BaseDexClassLoader", false, classLoader), "pathList").get(classLoader);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (strArr != null && strArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                if (i > 0) {
                    sb.append(java.io.File.pathSeparator);
                }
                sb.append(strArr[i]);
            }
        }
        java.lang.String string = sb.toString();
        java.lang.reflect.Field fieldFindField = findField(obj.getClass(), "nativeLibraryDirectories");
        boolean zIsArray = fieldFindField.getType().isArray();
        java.lang.Object obj2 = fieldFindField.get(obj);
        java.util.List<java.io.File> listAsList = zIsArray ? java.util.Arrays.asList((java.io.File[]) obj2) : (java.util.List) obj2;
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        boolean z3 = true;
        for (java.io.File file2 : listAsList) {
            if (file2 != null) {
                if (z3) {
                    z3 = false;
                } else {
                    sb2.append(java.io.File.pathSeparator);
                }
                sb2.append(file2.getAbsolutePath());
            }
        }
        java.lang.String string2 = sb2.toString();
        if (!z || !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(27, true)) {
            tinkerClassLoader = new com.tencent.tinker.loader.TinkerClassLoader(string, file, string2, classLoader);
        } else if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(31, true)) {
            tinkerClassLoader = new dalvik.system.DelegateLastClassLoader(string, string2, classLoader);
        } else {
            tinkerClassLoader = new dalvik.system.DelegateLastClassLoader(string, string2, java.lang.ClassLoader.getSystemClassLoader());
            java.lang.reflect.Field declaredField = java.lang.ClassLoader.class.getDeclaredField("parent");
            declaredField.setAccessible(true);
            declaredField.set(tinkerClassLoader, classLoader);
        }
        if (z2 && !com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNewerOrEqualThanVersion(26, true)) {
            findField(obj.getClass(), "definingContext").set(obj, tinkerClassLoader);
        }
        return tinkerClassLoader;
    }

    public static void doInject(android.app.Application application, java.lang.ClassLoader classLoader) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        java.lang.Thread.currentThread().setContextClassLoader(classLoader);
        android.content.Context context = (android.content.Context) findField(application.getClass(), "mBase").get(application);
        try {
            findField(context.getClass(), "mClassLoader").set(context, classLoader);
        } catch (java.lang.Throwable unused) {
        }
        java.lang.Object obj = findField(context.getClass(), "mPackageInfo").get(context);
        findField(obj.getClass(), "mClassLoader").set(obj, classLoader);
        android.content.res.Resources resources = application.getResources();
        try {
            findField(resources.getClass(), "mClassLoader").set(resources, classLoader);
        } catch (java.lang.Throwable unused2) {
        }
        try {
            java.lang.Object obj2 = findField(resources.getClass(), "mDrawableInflater").get(resources);
            if (obj2 != null) {
                findField(obj2.getClass(), "mClassLoader").set(obj2, classLoader);
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    public static java.lang.reflect.Field findField(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        java.lang.Class<?> superclass = cls;
        while (true) {
            try {
                java.lang.reflect.Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (java.lang.Throwable unused) {
                if (superclass == java.lang.Object.class) {
                    java.lang.StringBuilder sbR = e.a.c.a.a.r("Cannot find field ", str, " in class ");
                    sbR.append(cls.getName());
                    sbR.append(" and its super classes.");
                    throw new java.lang.NoSuchFieldException(sbR.toString());
                }
                superclass = superclass.getSuperclass();
            }
        }
    }

    public static java.lang.ClassLoader inject(android.app.Application application, java.lang.ClassLoader classLoader, java.io.File file, boolean z, java.util.List<java.io.File> list) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        int size = list.size();
        java.lang.String[] strArr = new java.lang.String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = list.get(i).getAbsolutePath();
        }
        java.lang.ClassLoader classLoaderCreateNewClassLoader = createNewClassLoader(classLoader, file, z, true, strArr);
        doInject(application, classLoaderCreateNewClassLoader);
        return classLoaderCreateNewClassLoader;
    }

    public static java.lang.ClassLoader triggerDex2Oat(android.content.Context context, java.io.File file, boolean z, java.lang.String... strArr) {
        return createNewClassLoader(context.getClassLoader(), file, z, false, strArr);
    }
}
