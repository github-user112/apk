package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ReflectionUtils {
    public static final java.lang.String TAG = "ReflectionUtils";

    public static boolean checkCompatible(java.lang.String str) {
        try {
            tryLoadClass(str);
            return true;
        } catch (java.lang.Exception unused) {
            com.huawei.hms.framework.common.Logger.w(TAG, str + "ClassNotFoundException");
            return false;
        }
    }

    public static java.lang.Class<?> getClass(java.lang.String str) {
        if (str == null) {
            return null;
        }
        try {
            return java.lang.Class.forName(str);
        } catch (java.lang.ClassNotFoundException unused) {
            return null;
        }
    }

    public static java.lang.Object getFieldObj(java.lang.Object obj, java.lang.String str) throws java.lang.NoSuchFieldException {
        java.lang.String str2;
        if (obj == null || android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(str);
            java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.1
                @Override // java.security.PrivilegedAction
                public java.lang.Object run() {
                    declaredField.setAccessible(true);
                    return null;
                }
            });
            return declaredField.get(obj);
        } catch (java.lang.IllegalAccessException e2) {
            e = e2;
            str2 = "Exception in getFieldObj :: IllegalAccessException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        } catch (java.lang.IllegalArgumentException e3) {
            e = e3;
            str2 = "Exception in getFieldObj :: IllegalArgumentException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        } catch (java.lang.NoSuchFieldException e4) {
            e = e4;
            str2 = "Exception in getFieldObj :: NoSuchFieldException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        } catch (java.lang.SecurityException e5) {
            e = e5;
            str2 = "not security int method getStaticFieldObj,SecurityException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        }
    }

    public static java.lang.reflect.Method getMethod(java.lang.Class<?> cls, java.lang.String str, java.lang.Class<?>... clsArr) {
        java.lang.String str2;
        if (cls == null || str == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "targetClass is  null pr name is null:");
            return null;
        }
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (java.lang.NoSuchMethodException e2) {
            e = e2;
            str2 = "NoSuchMethodException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        } catch (java.lang.SecurityException e3) {
            e = e3;
            str2 = "SecurityException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str2, e);
            return null;
        }
    }

    public static java.lang.Object getStaticFieldObj(java.lang.String str, java.lang.String str2) throws java.lang.NoSuchFieldException {
        java.lang.Class<?> cls;
        java.lang.String str3;
        if (str == null || (cls = getClass(str)) == null || android.text.TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            final java.lang.reflect.Field declaredField = cls.getDeclaredField(str2);
            java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.2
                @Override // java.security.PrivilegedAction
                public java.lang.Object run() {
                    declaredField.setAccessible(true);
                    return null;
                }
            });
            return declaredField.get(cls);
        } catch (java.lang.IllegalAccessException e2) {
            e = e2;
            str3 = "Exception in getFieldObj :: IllegalAccessException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str3, e);
            return null;
        } catch (java.lang.IllegalArgumentException e3) {
            e = e3;
            str3 = "Exception in getFieldObj :: IllegalArgumentException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str3, e);
            return null;
        } catch (java.lang.NoSuchFieldException e4) {
            e = e4;
            str3 = "Exception in getFieldObj :: NoSuchFieldException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str3, e);
            return null;
        } catch (java.lang.SecurityException e5) {
            e = e5;
            str3 = "not security int method getStaticFieldObj,SecurityException:";
            com.huawei.hms.framework.common.Logger.e(TAG, str3, e);
            return null;
        }
    }

    public static java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object... objArr) {
        java.lang.String str;
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (java.lang.RuntimeException e2) {
            e = e2;
            str = "RuntimeException in invoke:";
            com.huawei.hms.framework.common.Logger.e(TAG, str, e);
            return null;
        } catch (java.lang.Exception e3) {
            e = e3;
            str = "Exception in invoke:";
            com.huawei.hms.framework.common.Logger.e(TAG, str, e);
            return null;
        }
    }

    public static java.lang.Object invokeStaticMethod(java.lang.String str, java.lang.String str2, java.lang.Class<?>[] clsArr, java.lang.Object... objArr) {
        java.lang.reflect.Method method = getMethod(getClass(str), str2, clsArr);
        if (method == null) {
            return null;
        }
        return invoke(null, method, objArr);
    }

    public static java.lang.Object invokeStaticMethod(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        java.lang.Class[] clsArr;
        if (str == null) {
            return null;
        }
        if (objArr != null) {
            int length = objArr.length;
            clsArr = new java.lang.Class[length];
            for (int i = 0; i < length; i++) {
                setClassType(clsArr, objArr[i], i);
            }
        } else {
            clsArr = null;
        }
        java.lang.reflect.Method method = getMethod(getClass(str), str2, clsArr);
        if (method == null) {
            return null;
        }
        return invoke(null, method, objArr);
    }

    public static void setClassType(java.lang.Class<?>[] clsArr, java.lang.Object obj, int i) {
        if (obj instanceof java.lang.Integer) {
            clsArr[i] = java.lang.Integer.TYPE;
            return;
        }
        if (obj instanceof java.lang.Long) {
            clsArr[i] = java.lang.Long.TYPE;
            return;
        }
        if (obj instanceof java.lang.Double) {
            clsArr[i] = java.lang.Double.TYPE;
            return;
        }
        if (obj instanceof java.lang.Float) {
            clsArr[i] = java.lang.Float.TYPE;
            return;
        }
        if (obj instanceof java.lang.Boolean) {
            clsArr[i] = java.lang.Boolean.TYPE;
            return;
        }
        if (obj instanceof java.lang.Character) {
            clsArr[i] = java.lang.Character.TYPE;
            return;
        }
        if (obj instanceof java.lang.Byte) {
            clsArr[i] = java.lang.Byte.TYPE;
            return;
        }
        if (obj instanceof java.lang.Void) {
            clsArr[i] = java.lang.Void.TYPE;
        } else if (obj instanceof java.lang.Short) {
            clsArr[i] = java.lang.Short.TYPE;
        } else {
            clsArr[i] = obj.getClass();
        }
    }

    public static void tryLoadClass(java.lang.String str) throws java.lang.ClassNotFoundException {
        java.lang.ClassLoader classLoader = com.huawei.hms.framework.common.ReflectionUtils.class.getClassLoader();
        if (classLoader == null) {
            throw new java.lang.ClassNotFoundException("not found classloader");
        }
        classLoader.loadClass(str);
    }
}
