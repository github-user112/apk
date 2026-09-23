package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public class ObjectWrapper<T> extends com.huawei.hms.feature.dynamic.IObjectWrapper.Stub {
    public final T a;

    public ObjectWrapper(T t) {
        this.a = t;
    }

    public static <T> T unwrap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof com.huawei.hms.feature.dynamic.ObjectWrapper) {
            return ((com.huawei.hms.feature.dynamic.ObjectWrapper) iObjectWrapper).a;
        }
        android.os.IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        java.lang.reflect.Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        int i = 0;
        for (java.lang.reflect.Field field : declaredFields) {
            if (!field.isSynthetic()) {
                i++;
            }
        }
        if (i != 1) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.i(new java.lang.StringBuilder("Got "), declaredFields.length, " fields, The number of field number should be 1."));
        }
        if (declaredFields[0].isAccessible()) {
            throw new java.lang.IllegalArgumentException("The field is accessible.");
        }
        declaredFields[0].setAccessible(true);
        try {
            return (T) declaredFields[0].get(iBinderAsBinder);
        } catch (java.lang.Exception unused) {
            throw new java.lang.IllegalArgumentException("Get binder failed: null or not permitted.");
        }
    }

    public static <T> com.huawei.hms.feature.dynamic.IObjectWrapper wrap(T t) {
        return new com.huawei.hms.feature.dynamic.ObjectWrapper(t);
    }
}
