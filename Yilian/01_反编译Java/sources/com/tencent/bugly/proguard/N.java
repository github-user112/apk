package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class N {
    public static <T extends com.tencent.bugly.proguard.AbstractC0254m> T a(byte[] bArr, java.lang.Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T tNewInstance = cls.newInstance();
                com.tencent.bugly.proguard.C0252k c0252k = new com.tencent.bugly.proguard.C0252k(bArr);
                c0252k.a("utf-8");
                tNewInstance.a(c0252k);
                return tNewInstance;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static com.tencent.bugly.proguard.ta a(android.content.Context context, int i, byte[] bArr) {
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBeanC = com.tencent.bugly.crashreport.common.strategy.c.b().c();
        if (aVarN == null || strategyBeanC == null) {
            com.tencent.bugly.proguard.aa.b("Can not create request pkg for parameters is invalid.", new java.lang.Object[0]);
            return null;
        }
        try {
            com.tencent.bugly.proguard.ta taVar = new com.tencent.bugly.proguard.ta();
            synchronized (aVarN) {
                taVar.f1149c = aVarN.f966f;
                taVar.f1150d = aVarN.e();
                taVar.f1151e = aVarN.f967g;
                taVar.f1152f = aVarN.F;
                taVar.f1153g = aVarN.J;
                taVar.h = aVarN.l;
                taVar.i = i;
                if (bArr == null) {
                    bArr = "".getBytes();
                }
                taVar.j = bArr;
                taVar.k = aVarN.l();
                taVar.l = aVarN.p;
                taVar.m = new java.util.HashMap();
                taVar.n = aVarN.w();
                taVar.o = strategyBeanC.o;
                taVar.q = aVarN.k();
                taVar.r = com.tencent.bugly.crashreport.common.info.d.b(context);
                taVar.s = java.lang.System.currentTimeMillis();
                taVar.u = aVarN.r();
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("");
                sb.append(aVarN.k());
                taVar.x = sb.toString();
                taVar.y = taVar.r;
                aVarN.getClass();
                taVar.p = "com.tencent.bugly";
                java.util.Map<java.lang.String, java.lang.String> map = taVar.m;
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                sb2.append("");
                sb2.append(aVarN.s());
                map.put("A26", sb2.toString());
                java.util.Map<java.lang.String, java.lang.String> map2 = taVar.m;
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                sb3.append("");
                sb3.append(aVarN.I());
                map2.put("A62", sb3.toString());
                java.util.Map<java.lang.String, java.lang.String> map3 = taVar.m;
                java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                sb4.append("");
                sb4.append(aVarN.D());
                map3.put("A63", sb4.toString());
                java.util.Map<java.lang.String, java.lang.String> map4 = taVar.m;
                java.lang.StringBuilder sb5 = new java.lang.StringBuilder();
                sb5.append("");
                sb5.append(aVarN.ha);
                map4.put("F11", sb5.toString());
                java.util.Map<java.lang.String, java.lang.String> map5 = taVar.m;
                java.lang.StringBuilder sb6 = new java.lang.StringBuilder();
                sb6.append("");
                sb6.append(aVarN.ga);
                map5.put("F12", sb6.toString());
                java.util.Map<java.lang.String, java.lang.String> map6 = taVar.m;
                java.lang.StringBuilder sb7 = new java.lang.StringBuilder();
                sb7.append("");
                sb7.append(aVarN.H);
                map6.put("D3", sb7.toString());
                if (com.tencent.bugly.b.b != null) {
                    for (com.tencent.bugly.a aVar : com.tencent.bugly.b.b) {
                        if (aVar.versionKey != null && aVar.version != null) {
                            taVar.m.put(aVar.versionKey, aVar.version);
                        }
                    }
                }
                taVar.m.put("G15", com.tencent.bugly.proguard.ha.b("G15", ""));
                taVar.m.put("G10", com.tencent.bugly.proguard.ha.b("G10", ""));
                taVar.m.put("D4", com.tencent.bugly.proguard.ha.b("D4", "0"));
            }
            java.util.Map<java.lang.String, java.lang.String> mapF = aVarN.f();
            if (mapF != null) {
                for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : mapF.entrySet()) {
                    if (!android.text.TextUtils.isEmpty(entry.getValue())) {
                        taVar.m.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            return taVar;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static com.tencent.bugly.proguard.ua a(byte[] bArr, com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, boolean z) {
        if (bArr != null) {
            try {
                com.tencent.bugly.proguard.C0248e c0248e = new com.tencent.bugly.proguard.C0248e();
                c0248e.a();
                c0248e.a("utf-8");
                c0248e.a(bArr);
                java.lang.Object objB = c0248e.b("detail", new com.tencent.bugly.proguard.ua());
                if (com.tencent.bugly.proguard.ua.class.isInstance(objB)) {
                    return (com.tencent.bugly.proguard.ua) com.tencent.bugly.proguard.ua.class.cast(objB);
                }
                return null;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005a A[PHI: r4
  0x005a: PHI (r4v1 byte) = (r4v0 byte), (r4v3 byte) binds: [B:10:0x0029, B:13:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.bugly.proguard.xa a(com.tencent.bugly.crashreport.biz.UserInfoBean r9, com.tencent.bugly.crashreport.common.info.a r10) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.N.a(com.tencent.bugly.crashreport.biz.UserInfoBean, com.tencent.bugly.crashreport.common.info.a):com.tencent.bugly.proguard.xa");
    }

    public static com.tencent.bugly.proguard.ya a(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list, int i) {
        com.tencent.bugly.crashreport.common.info.a aVarN;
        if (list == null || list.size() == 0 || (aVarN = com.tencent.bugly.crashreport.common.info.a.n()) == null) {
            return null;
        }
        aVarN.J();
        com.tencent.bugly.proguard.ya yaVar = new com.tencent.bugly.proguard.ya();
        yaVar.f1180d = aVarN.h;
        yaVar.f1181e = aVarN.k();
        java.util.ArrayList<com.tencent.bugly.proguard.xa> arrayList = new java.util.ArrayList<>();
        java.util.Iterator<com.tencent.bugly.crashreport.biz.UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.proguard.xa xaVarA = a(it.next(), aVarN);
            if (xaVarA != null) {
                arrayList.add(xaVarA);
            }
        }
        yaVar.f1182f = arrayList;
        java.util.HashMap map = new java.util.HashMap();
        yaVar.f1183g = map;
        aVarN.getClass();
        map.put("A7", "");
        java.util.Map<java.lang.String, java.lang.String> map2 = yaVar.f1183g;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("");
        sbO.append(aVarN.j());
        map2.put("A6", sbO.toString());
        java.util.Map<java.lang.String, java.lang.String> map3 = yaVar.f1183g;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("");
        sbO2.append(aVarN.t());
        map3.put("A5", sbO2.toString());
        java.util.Map<java.lang.String, java.lang.String> map4 = yaVar.f1183g;
        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("");
        sbO3.append(aVarN.x());
        map4.put("A2", sbO3.toString());
        java.util.Map<java.lang.String, java.lang.String> map5 = yaVar.f1183g;
        java.lang.StringBuilder sbO4 = e.a.c.a.a.o("");
        sbO4.append(aVarN.x());
        map5.put("A1", sbO4.toString());
        java.util.Map<java.lang.String, java.lang.String> map6 = yaVar.f1183g;
        java.lang.StringBuilder sbO5 = e.a.c.a.a.o("");
        sbO5.append(aVarN.p);
        map6.put("A24", sbO5.toString());
        java.util.Map<java.lang.String, java.lang.String> map7 = yaVar.f1183g;
        java.lang.StringBuilder sbO6 = e.a.c.a.a.o("");
        sbO6.append(aVarN.z());
        map7.put("A17", sbO6.toString());
        java.util.Map<java.lang.String, java.lang.String> map8 = yaVar.f1183g;
        java.lang.StringBuilder sbO7 = e.a.c.a.a.o("");
        sbO7.append(aVarN.i());
        map8.put("A15", sbO7.toString());
        java.util.Map<java.lang.String, java.lang.String> map9 = yaVar.f1183g;
        java.lang.StringBuilder sbO8 = e.a.c.a.a.o("");
        sbO8.append(aVarN.o());
        map9.put("A13", sbO8.toString());
        java.util.Map<java.lang.String, java.lang.String> map10 = yaVar.f1183g;
        java.lang.StringBuilder sbO9 = e.a.c.a.a.o("");
        sbO9.append(aVarN.ca);
        map10.put("F08", sbO9.toString());
        java.util.Map<java.lang.String, java.lang.String> map11 = yaVar.f1183g;
        java.lang.StringBuilder sbO10 = e.a.c.a.a.o("");
        sbO10.append(aVarN.da);
        map11.put("F09", sbO10.toString());
        java.util.Map<java.lang.String, java.lang.String> mapG = aVarN.g();
        if (mapG != null && mapG.size() > 0) {
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : mapG.entrySet()) {
                java.util.Map<java.lang.String, java.lang.String> map12 = yaVar.f1183g;
                java.lang.StringBuilder sbO11 = e.a.c.a.a.o("C04_");
                sbO11.append(entry.getKey());
                map12.put(sbO11.toString(), entry.getValue());
            }
        }
        if (i == 1) {
            yaVar.f1179c = (byte) 1;
        } else {
            if (i != 2) {
                com.tencent.bugly.proguard.aa.b("unknown up type %d ", java.lang.Integer.valueOf(i));
                return null;
            }
            yaVar.f1179c = (byte) 2;
        }
        return yaVar;
    }

    public static byte[] a(com.tencent.bugly.proguard.AbstractC0254m abstractC0254m) {
        try {
            com.tencent.bugly.proguard.C0253l c0253l = new com.tencent.bugly.proguard.C0253l();
            c0253l.a("utf-8");
            abstractC0254m.a(c0253l);
            return c0253l.b();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] a(java.lang.Object obj) {
        try {
            com.tencent.bugly.proguard.C0248e c0248e = new com.tencent.bugly.proguard.C0248e();
            c0248e.a();
            c0248e.a("utf-8");
            c0248e.a(1);
            c0248e.c("RqdServer");
            c0248e.b("sync");
            c0248e.a("detail", (java.lang.String) obj);
            return c0248e.b();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
