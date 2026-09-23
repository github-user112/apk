package com.umeng.commonsdk.config;

/* loaded from: classes.dex */
public class FieldManager {
    public static final java.lang.String a = "cfgfd";
    public static com.umeng.commonsdk.config.b b = com.umeng.commonsdk.config.b.b();

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1426c = false;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.Object f1427d = new java.lang.Object();

    public static class a {
        public static final com.umeng.commonsdk.config.FieldManager a = new com.umeng.commonsdk.config.FieldManager();
    }

    public FieldManager() {
    }

    public static android.util.Pair<java.lang.Long, java.lang.String> a(java.lang.String str) {
        android.util.Pair<java.lang.Long, java.lang.String> pair = new android.util.Pair<>(-1L, null);
        if (str != null && str.length() >= 2) {
            java.lang.String[] strArrSplit = str.split("@");
            if (strArrSplit.length < 2) {
                return pair;
            }
            try {
                long j = java.lang.Long.parseLong(strArrSplit[0]);
                return new android.util.Pair<>(java.lang.Long.valueOf(j), strArrSplit[1]);
            } catch (java.lang.Throwable unused) {
            }
        }
        return pair;
    }

    public static com.umeng.commonsdk.config.FieldManager a() {
        return com.umeng.commonsdk.config.FieldManager.a.a;
    }

    public static boolean allow(java.lang.String str) {
        synchronized (f1427d) {
            if (!f1426c) {
                return false;
            }
            return com.umeng.commonsdk.config.b.a(str);
        }
    }

    public static boolean b() {
        boolean z;
        synchronized (f1427d) {
            z = f1426c;
        }
        return z;
    }

    public void a(android.content.Context context) {
        java.lang.String str;
        java.lang.String str2 = "1001@3758096383,2147483647,262143,2047";
        java.lang.String[] strArr = {com.umeng.commonsdk.config.d.a.class.getName(), com.umeng.commonsdk.config.d.b.class.getName(), com.umeng.commonsdk.config.d.c.class.getName(), com.umeng.commonsdk.config.d.EnumC0018d.class.getName()};
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, "cfgfd", "1001@3758096383,2147483647,262143,2047");
        synchronized (f1427d) {
            android.util.Pair<java.lang.Long, java.lang.String> pairA = a(strImprintProperty);
            if (((java.lang.Long) pairA.first).longValue() > 1000 && (str = (java.lang.String) pairA.second) != null && str.length() > 0) {
                str2 = str;
            }
            java.lang.String[] strArrSplit = str2.split(",");
            int length = strArrSplit.length;
            if (length > 0) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                com.umeng.commonsdk.config.g gVar = new com.umeng.commonsdk.config.g();
                for (int i = 0; i < length; i++) {
                    arrayList.add(gVar);
                    ((com.umeng.commonsdk.config.e) arrayList.get(i)).a(strArrSplit[i], b, com.umeng.commonsdk.config.d.b(strArr[i]));
                }
            }
            f1426c = true;
        }
    }

    public void a(android.content.Context context, java.lang.String str) {
        java.lang.String str2;
        java.lang.String str3 = "1001@3758096383,2147483647,262143,2047";
        java.lang.String[] strArr = {com.umeng.commonsdk.config.d.a.class.getName(), com.umeng.commonsdk.config.d.b.class.getName(), com.umeng.commonsdk.config.d.c.class.getName(), com.umeng.commonsdk.config.d.EnumC0018d.class.getName()};
        synchronized (f1427d) {
            b.a();
            if (str != null) {
                android.util.Pair<java.lang.Long, java.lang.String> pairA = a(str);
                if (((java.lang.Long) pairA.first).longValue() > 1000 && (str2 = (java.lang.String) pairA.second) != null && str2.length() > 0) {
                    str3 = str2;
                }
            }
            java.lang.String[] strArrSplit = str3.split(",");
            int length = strArrSplit.length;
            if (length > 0) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                com.umeng.commonsdk.config.g gVar = new com.umeng.commonsdk.config.g();
                for (int i = 0; i < length; i++) {
                    arrayList.add(gVar);
                    ((com.umeng.commonsdk.config.e) arrayList.get(i)).a(strArrSplit[i], b, com.umeng.commonsdk.config.d.b(strArr[i]));
                }
            }
            f1426c = true;
        }
    }
}
