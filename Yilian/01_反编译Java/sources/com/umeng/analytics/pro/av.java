package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class av {
    public static com.umeng.analytics.pro.au a(java.lang.Class<? extends com.umeng.analytics.pro.au> cls, int i) {
        try {
            return (com.umeng.analytics.pro.au) cls.getMethod("findByValue", java.lang.Integer.TYPE).invoke(null, java.lang.Integer.valueOf(i));
        } catch (java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }
}
