package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class e {
    public static java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.d> a = new java.util.concurrent.ConcurrentHashMap(16);
    public static final java.lang.Object b = new java.lang.Object();

    public static com.huawei.hms.framework.network.grs.d a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, android.content.Context context) {
        synchronized (b) {
            int iUniqueCode = grsBaseInfo.uniqueCode();
            com.huawei.hms.framework.network.grs.d dVar = a.get(context.getPackageName() + iUniqueCode);
            if (dVar == null) {
                com.huawei.hms.framework.network.grs.d dVar2 = new com.huawei.hms.framework.network.grs.d(context, grsBaseInfo);
                a.put(context.getPackageName() + iUniqueCode, dVar2);
                return dVar2;
            }
            if (dVar.a((java.lang.Object) new com.huawei.hms.framework.network.grs.d(grsBaseInfo))) {
                return dVar;
            }
            com.huawei.hms.framework.network.grs.d dVar3 = new com.huawei.hms.framework.network.grs.d(context, grsBaseInfo);
            a.put(context.getPackageName() + iUniqueCode, dVar3);
            return dVar3;
        }
    }
}
