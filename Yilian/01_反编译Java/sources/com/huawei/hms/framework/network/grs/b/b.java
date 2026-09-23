package com.huawei.hms.framework.network.grs.b;

/* loaded from: classes.dex */
public class b {
    public static java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.b.b> a = new java.util.concurrent.ConcurrentHashMap(16);
    public com.huawei.hms.framework.network.grs.b.a b;

    public b(android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, boolean z) {
        a(context, z);
        a.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
    }

    public static com.huawei.hms.framework.network.grs.b.b a(java.lang.String str, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.b.b> map = a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
        sbO.append(grsBaseInfo.uniqueCode());
        return map.get(sbO.toString());
    }

    public static void a(android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        com.huawei.hms.framework.network.grs.local.model.a aVarA;
        com.huawei.hms.framework.network.grs.b.b bVarA = a(context.getPackageName(), grsBaseInfo);
        if (bVarA == null || (aVarA = bVarA.a()) == null) {
            return;
        }
        com.huawei.hms.framework.common.Logger.i("LocalManagerProxy", "appGrs is not null and clear services.");
        aVarA.a();
    }

    public com.huawei.hms.framework.network.grs.local.model.a a() {
        return this.b.a();
    }

    public java.lang.String a(android.content.Context context, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, java.lang.String str2, boolean z) {
        return this.b.a(context, aVar, grsBaseInfo, str, str2, z);
    }

    public java.util.Map<java.lang.String, java.lang.String> a(android.content.Context context, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, boolean z) {
        return this.b.a(context, aVar, grsBaseInfo, str, z);
    }

    public void a(android.content.Context context, boolean z) {
        com.huawei.hms.framework.network.grs.b.d dVar = new com.huawei.hms.framework.network.grs.b.d(context, z);
        this.b = dVar;
        if (dVar.c()) {
            return;
        }
        this.b = new com.huawei.hms.framework.network.grs.b.c(context, z);
    }

    public void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        this.b.a(grsBaseInfo);
    }

    public java.util.Set<java.lang.String> b() {
        return this.b.b();
    }
}
