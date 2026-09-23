package com.tencent.bugly.beta.upgrade;

/* loaded from: classes.dex */
public class b {
    public static com.tencent.bugly.beta.upgrade.b a = new com.tencent.bugly.beta.upgrade.b();

    public synchronized void a(int i, int i2, byte[] bArr, com.tencent.bugly.beta.upgrade.a aVar, boolean z, java.lang.String str) {
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        try {
            try {
                com.tencent.bugly.proguard.ta taVarA = com.tencent.bugly.proguard.N.a(com.tencent.bugly.beta.global.e.b.v, i, bArr);
                if (taVarA != null) {
                    com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
                    taVarA.f1150d = eVar.x;
                    if (!android.text.TextUtils.isEmpty(eVar.R)) {
                        taVarA.f1153g = eVar.R;
                    }
                    if (taVarA.m != null) {
                        taVarA.m.put("G6", eVar.y);
                        taVarA.m.put("G10", "1.6.1");
                        java.util.Map<java.lang.String, java.lang.String> map = taVarA.m;
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("");
                        sb.append(eVar.A);
                        map.put("G3", sb.toString());
                        taVarA.m.put("G11", java.lang.String.valueOf(eVar.z));
                        taVarA.m.put("G2", java.lang.String.valueOf(com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v)));
                        taVarA.m.put("G12", java.lang.String.valueOf(eVar.r < 0 ? 0 : eVar.r));
                        java.util.Map<java.lang.String, java.lang.String> map2 = taVarA.m;
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                        sb2.append("");
                        sb2.append(aVarN.A());
                        map2.put("A21", sb2.toString());
                        java.util.Map<java.lang.String, java.lang.String> map3 = taVarA.m;
                        java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                        sb3.append("");
                        sb3.append(aVarN.k());
                        map3.put("A22", sb3.toString());
                        java.util.Map<java.lang.String, java.lang.String> map4 = taVarA.m;
                        java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                        sb4.append("");
                        sb4.append(eVar.L);
                        map4.put("G13", sb4.toString());
                        java.util.Map<java.lang.String, java.lang.String> map5 = taVarA.m;
                        java.lang.StringBuilder sb5 = new java.lang.StringBuilder();
                        sb5.append("");
                        sb5.append(eVar.M);
                        map5.put("G14", sb5.toString());
                        java.util.Map<java.lang.String, java.lang.String> map6 = taVarA.m;
                        java.lang.StringBuilder sb6 = new java.lang.StringBuilder();
                        sb6.append("");
                        sb6.append(eVar.O);
                        map6.put("G15", sb6.toString());
                        java.util.Map<java.lang.String, java.lang.String> map7 = taVarA.m;
                        java.lang.StringBuilder sb7 = new java.lang.StringBuilder();
                        sb7.append("");
                        sb7.append(aVarN.o());
                        map7.put("G17", sb7.toString());
                        java.util.Map<java.lang.String, java.lang.String> map8 = taVarA.m;
                        java.lang.StringBuilder sb8 = new java.lang.StringBuilder();
                        sb8.append("");
                        sb8.append(aVarN.C());
                        map8.put("C01", sb8.toString());
                        java.util.Map<java.lang.String, java.lang.String> map9 = taVarA.m;
                        java.lang.StringBuilder sb9 = new java.lang.StringBuilder();
                        sb9.append("");
                        sb9.append(aVarN.A());
                        map9.put("G18", sb9.toString());
                        java.util.Map<java.lang.String, java.lang.String> map10 = taVarA.m;
                        java.lang.StringBuilder sb10 = new java.lang.StringBuilder();
                        sb10.append("");
                        sb10.append(i2);
                        map10.put("strategyType", sb10.toString());
                        java.util.Map<java.lang.String, java.lang.String> map11 = taVarA.m;
                        java.lang.StringBuilder sb11 = new java.lang.StringBuilder();
                        sb11.append("");
                        sb11.append(z);
                        map11.put("strategyRequestManner", sb11.toString());
                        java.util.Map<java.lang.String, java.lang.String> mapH = aVarN.h();
                        if (mapH != null && mapH.size() > 0) {
                            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : mapH.entrySet()) {
                                java.util.Map<java.lang.String, java.lang.String> map12 = taVarA.m;
                                java.lang.StringBuilder sb12 = new java.lang.StringBuilder();
                                sb12.append("C03_");
                                sb12.append(entry.getKey());
                                map12.put(sb12.toString(), entry.getValue());
                            }
                        }
                        com.tencent.bugly.proguard.aa.a("app version is: [%s.%s], [deviceId:%s], channel: [%s], buildNo: [%s], base tinkerId:[%s], patch tinkerId:[%s], patch version:[%s], strategyType:[%s]", eVar.A, java.lang.Integer.valueOf(eVar.z), aVarN.k(), taVarA.f1153g, java.lang.Integer.valueOf(eVar.r), eVar.L, eVar.M, eVar.O, java.lang.Integer.valueOf(i2));
                        java.util.HashMap map13 = new java.util.HashMap();
                        java.lang.StringBuilder sb13 = new java.lang.StringBuilder();
                        sb13.append(com.tencent.bugly.beta.global.e.b.H.b);
                        sb13.append("");
                        map13.put("grayStrategyUpdateTime", sb13.toString());
                        if (z) {
                            com.tencent.bugly.proguard.W.a().a(1002, taVarA.i, com.tencent.bugly.proguard.N.a((java.lang.Object) taVarA), str, str, aVar, 0, 1, true, map13);
                        } else {
                            com.tencent.bugly.proguard.W.a().a(1002, taVarA.i, com.tencent.bugly.proguard.N.a((java.lang.Object) taVarA), str, str, (com.tencent.bugly.proguard.T) aVar, false, (java.util.Map<java.lang.String, java.lang.String>) map13);
                        }
                    }
                }
            } catch (java.lang.Throwable th) {
                th = th;
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                aVar.a(i, null, 0L, 0L, false, "sendRequest failed");
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public synchronized void a(com.tencent.bugly.proguard.A a2, boolean z) {
        if (a2 == null) {
            return;
        }
        try {
            a(803, -1, com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) a2), new com.tencent.bugly.beta.upgrade.a(2, 803, a2, java.lang.Boolean.valueOf(z)), false, com.tencent.bugly.beta.global.e.b.H.a.f1164g);
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.a(th)) {
                th.printStackTrace();
            }
        }
    }

    public synchronized void a(com.tencent.bugly.proguard.C0260z c0260z, boolean z) {
        if (c0260z == null) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(c0260z);
        com.tencent.bugly.proguard.A a2 = new com.tencent.bugly.proguard.A(arrayList);
        try {
            a(803, -1, com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) a2), new com.tencent.bugly.beta.upgrade.a(2, 803, a2, java.lang.Boolean.valueOf(z)), false, com.tencent.bugly.beta.global.e.b.H.a.f1164g);
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.a(th)) {
                th.printStackTrace();
            }
        }
    }
}
