package com.huawei.hms.framework.network.grs.d;

/* loaded from: classes.dex */
public class d {
    public static java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.d.d.a> a = new java.util.concurrent.ConcurrentHashMap(16);

    public static class a {
        public long a;
        public long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public boolean a() {
            return android.os.SystemClock.elapsedRealtime() - this.b <= this.a;
        }
    }

    public static com.huawei.hms.framework.network.grs.d.d.a a(java.lang.String str) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("map size of get is before:");
        sbO.append(a.size());
        com.huawei.hms.framework.common.Logger.v("RequestUtil", sbO.toString());
        com.huawei.hms.framework.network.grs.d.d.a aVar = a.get(str);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("map size of get is after:");
        sbO2.append(a.size());
        com.huawei.hms.framework.common.Logger.v("RequestUtil", sbO2.toString());
        return aVar;
    }

    public static void a(java.lang.String str, com.huawei.hms.framework.network.grs.d.d.a aVar) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("map size of put is before:");
        sbO.append(a.size());
        com.huawei.hms.framework.common.Logger.v("RequestUtil", sbO.toString());
        a.put(str, aVar);
        com.huawei.hms.framework.common.Logger.v("RequestUtil", "map size of put is after:" + a.size());
    }
}
