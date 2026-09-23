package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareReflectUtil {
    public static void expandFieldArray(java.lang.Object obj, java.lang.String str, java.lang.Object[] objArr) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        java.lang.reflect.Field fieldFindField = findField(obj, str);
        java.lang.Object[] objArr2 = (java.lang.Object[]) fieldFindField.get(obj);
        java.lang.Object[] objArr3 = (java.lang.Object[]) java.lang.reflect.Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        java.lang.System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
        java.lang.System.arraycopy(objArr2, 0, objArr3, objArr.length, objArr2.length);
        fieldFindField.set(obj, objArr3);
    }

    public static java.lang.reflect.Constructor<?> findConstructor(java.lang.Class<?> cls, java.lang.Class<?>... clsArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        for (java.lang.Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                java.lang.reflect.Constructor<?> declaredConstructor = superclass.getDeclaredConstructor(clsArr);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
                return declaredConstructor;
            } catch (java.lang.NoSuchMethodException unused) {
            }
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Constructor with parameters ");
        sbO.append(java.util.Arrays.asList(clsArr));
        sbO.append(" not found in ");
        sbO.append(cls);
        throw new java.lang.NoSuchMethodException(sbO.toString());
    }

    public static java.lang.reflect.Constructor<?> findConstructor(java.lang.Object obj, java.lang.Class<?>... clsArr) {
        return findConstructor(obj.getClass(), clsArr);
    }

    public static java.lang.reflect.Field findField(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        for (java.lang.Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                java.lang.reflect.Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (java.lang.NoSuchFieldException unused) {
            }
        }
        throw new java.lang.NoSuchFieldException("Field " + str + " not found in " + cls);
    }

    public static java.lang.reflect.Field findField(java.lang.Object obj, java.lang.String str) throws java.lang.NoSuchFieldException {
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

    public static java.lang.reflect.Method findMethod(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        while (cls != null) {
            try {
                java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (java.lang.NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        java.lang.StringBuilder sbR = e.a.c.a.a.r("Method ", str, " with parameters ");
        sbR.append(java.util.Arrays.asList(clsArr));
        sbR.append(" not found in ");
        sbR.append(cls);
        throw new java.lang.NoSuchMethodException(sbR.toString());
    }

    public static java.lang.reflect.Method findMethod(java.lang.Object obj, java.lang.String str, java.lang.Class<?>... clsArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
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

    public static java.lang.Object getActivityThread(android.content.Context context, java.lang.Class<?> cls) {
        if (cls == null) {
            try {
                cls = java.lang.Class.forName("android.app.ActivityThread");
            } catch (java.lang.Throwable unused) {
                return null;
            }
        }
        java.lang.reflect.Method method = cls.getMethod("currentActivityThread", new java.lang.Class[0]);
        method.setAccessible(true);
        java.lang.Object objInvoke = method.invoke(null, new java.lang.Object[0]);
        if (objInvoke != null || context == null) {
            return objInvoke;
        }
        java.lang.reflect.Field field = context.getClass().getField("mLoadedApk");
        field.setAccessible(true);
        java.lang.Object obj = field.get(context);
        java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    public static int getValueOfStaticIntField(java.lang.Class<?> cls, java.lang.String str, int i) {
        try {
            return findField(cls, str).getInt(null);
        } catch (java.lang.Throwable unused) {
            return i;
        }
    }

    public static void reduceFieldArray(java.lang.Object obj, java.lang.String str, int i) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        if (i <= 0) {
            return;
        }
        java.lang.reflect.Field fieldFindField = findField(obj, str);
        java.lang.Object[] objArr = (java.lang.Object[]) fieldFindField.get(obj);
        int length = objArr.length - i;
        if (length <= 0) {
            return;
        }
        java.lang.Object[] objArr2 = (java.lang.Object[]) java.lang.reflect.Array.newInstance(objArr.getClass().getComponentType(), length);
        java.lang.System.arraycopy(objArr, i, objArr2, 0, length);
        fieldFindField.set(obj, objArr2);
    }
}
