package com.huawei.hms.feature.dynamic.a;

/* loaded from: classes.dex */
public final class b extends dalvik.system.DexClassLoader {
    public static final java.lang.String a = com.huawei.hms.feature.dynamic.a.b.class.getSimpleName();

    public b(java.lang.String str, java.lang.String str2, java.lang.ClassLoader classLoader) {
        super(str, str2, null, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final java.lang.Class<?> loadClass(java.lang.String str, boolean z) {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (java.lang.ClassNotFoundException unused) {
                android.util.Log.w(a, "Cannot find The class:".concat(str));
            }
        }
        return super.loadClass(str, z);
    }
}
