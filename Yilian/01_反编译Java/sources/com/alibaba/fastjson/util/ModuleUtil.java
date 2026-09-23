package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class ModuleUtil {
    public static boolean hasJavaSql = false;

    static {
        try {
            java.lang.Class.forName("java.sql.Time");
            hasJavaSql = true;
        } catch (java.lang.Throwable unused) {
            hasJavaSql = false;
        }
    }

    public static <T, U, R> R callWhenHasJavaSql(com.alibaba.fastjson.util.BiFunction<T, U, R> biFunction, T t, U u) {
        if (hasJavaSql) {
            return biFunction.apply(t, u);
        }
        return null;
    }

    public static <ARG, T> T callWhenHasJavaSql(com.alibaba.fastjson.util.Function<ARG, T> function, ARG arg) {
        if (hasJavaSql) {
            return function.apply(arg);
        }
        return null;
    }

    public static <T> T callWhenHasJavaSql(java.util.concurrent.Callable<T> callable) {
        if (!hasJavaSql) {
            return null;
        }
        try {
            return callable.call();
        } catch (java.lang.Exception e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }
}
