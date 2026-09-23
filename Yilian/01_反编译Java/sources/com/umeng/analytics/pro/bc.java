package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bc implements java.io.Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.aq>, java.util.Map<? extends com.umeng.analytics.pro.ax, com.umeng.analytics.pro.bc>> f1252d = new java.util.HashMap();
    public final java.lang.String a;
    public final byte b;

    /* renamed from: c, reason: collision with root package name */
    public final com.umeng.analytics.pro.bd f1253c;

    public bc(java.lang.String str, byte b, com.umeng.analytics.pro.bd bdVar) {
        this.a = str;
        this.b = b;
        this.f1253c = bdVar;
    }

    public static java.util.Map<? extends com.umeng.analytics.pro.ax, com.umeng.analytics.pro.bc> a(java.lang.Class<? extends com.umeng.analytics.pro.aq> cls) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
        if (!f1252d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (java.lang.IllegalAccessException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("IllegalAccessException for TBase class: ");
                sbO.append(cls.getName());
                sbO.append(", message: ");
                sbO.append(e2.getMessage());
                throw new java.lang.RuntimeException(sbO.toString());
            } catch (java.lang.InstantiationException e3) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("InstantiationException for TBase class: ");
                sbO2.append(cls.getName());
                sbO2.append(", message: ");
                sbO2.append(e3.getMessage());
                throw new java.lang.RuntimeException(sbO2.toString());
            }
        }
        return f1252d.get(cls);
    }

    public static void a(java.lang.Class<? extends com.umeng.analytics.pro.aq> cls, java.util.Map<? extends com.umeng.analytics.pro.ax, com.umeng.analytics.pro.bc> map) {
        f1252d.put(cls, map);
    }
}
