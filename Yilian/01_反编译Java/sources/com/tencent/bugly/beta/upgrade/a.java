package com.tencent.bugly.beta.upgrade;

/* loaded from: classes.dex */
public class a implements com.tencent.bugly.proguard.T {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Object[] f917c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f918d = false;

    public a(int i, int i2, java.lang.Object... objArr) {
        this.a = i;
        this.b = i2;
        this.f917c = objArr;
    }

    @Override // com.tencent.bugly.proguard.T
    public void a(int i) {
    }

    @Override // com.tencent.bugly.proguard.T
    public synchronized void a(int i, com.tencent.bugly.proguard.ua uaVar, long j, long j2, boolean z, java.lang.String str) {
        com.tencent.bugly.proguard.B b;
        com.tencent.bugly.proguard.wa waVar;
        com.tencent.bugly.beta.global.d dVar;
        com.tencent.bugly.proguard.D d2;
        com.tencent.bugly.proguard.D d3;
        try {
            if (!this.f918d && i == this.b) {
                java.lang.Object[] objArr = new java.lang.Object[4];
                objArr[0] = z ? "succ" : "err";
                objArr[1] = java.lang.Integer.valueOf(i);
                objArr[2] = java.lang.Long.valueOf(j);
                objArr[3] = java.lang.Long.valueOf(j2);
                com.tencent.bugly.proguard.aa.c("upload %s:[%d] [sended %d] [recevied %d]", objArr);
                int i2 = this.a;
                if (i2 == 1) {
                    boolean zBooleanValue = ((java.lang.Boolean) this.f917c[0]).booleanValue();
                    boolean zBooleanValue2 = ((java.lang.Boolean) this.f917c[1]).booleanValue();
                    if (this.b != 804) {
                        return;
                    }
                    com.tencent.bugly.proguard.B b2 = null;
                    if (!z || uaVar == null || uaVar.f1156e.length == 0 || (d2 = (com.tencent.bugly.proguard.D) com.tencent.bugly.proguard.N.a(com.tencent.bugly.proguard.ha.a(uaVar.f1156e, 2), com.tencent.bugly.proguard.D.class)) == null) {
                        b = null;
                        waVar = null;
                    } else {
                        waVar = d2.f1062d;
                        b = d2.f1063e;
                    }
                    com.tencent.bugly.beta.upgrade.d.a.a(waVar);
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.f917c[2];
                    if (b != null) {
                        b2 = b;
                    } else if (betaGrayStrategy != null) {
                        b2 = betaGrayStrategy.a;
                    }
                    if (b2 != null) {
                        int i3 = b2.u;
                        if (i3 == 1) {
                            com.tencent.bugly.beta.upgrade.d.a.a(zBooleanValue, zBooleanValue2, z ? 0 : -1, b, str);
                        } else if (i3 != 2) {
                            if (i3 != 3) {
                                com.tencent.bugly.proguard.aa.c("unexpected updatetype", new java.lang.Object[0]);
                            } else {
                                com.tencent.bugly.proguard.r.a.a(z ? 0 : -1, b, false);
                                if (com.tencent.bugly.beta.upgrade.d.a.f922f != null) {
                                    dVar = new com.tencent.bugly.beta.global.d(18, com.tencent.bugly.beta.upgrade.d.a.f922f, 1, java.lang.Boolean.valueOf(zBooleanValue));
                                } else if (zBooleanValue && !zBooleanValue2) {
                                    dVar = new com.tencent.bugly.beta.global.d(5, com.tencent.bugly.beta.Beta.strToastYourAreTheLatestVersion);
                                }
                                com.tencent.bugly.beta.utils.e.a(dVar);
                            }
                        }
                    } else {
                        if (com.tencent.bugly.beta.upgrade.d.a.f922f != null) {
                            dVar = new com.tencent.bugly.beta.global.d(18, com.tencent.bugly.beta.upgrade.d.a.f922f, 1, java.lang.Boolean.valueOf(zBooleanValue));
                        } else if (zBooleanValue && !zBooleanValue2) {
                            dVar = new com.tencent.bugly.beta.global.d(5, com.tencent.bugly.beta.Beta.strToastYourAreTheLatestVersion);
                        }
                        com.tencent.bugly.beta.utils.e.a(dVar);
                    }
                } else if (i2 == 2) {
                    com.tencent.bugly.proguard.A a = (com.tencent.bugly.proguard.A) this.f917c[0];
                    if (this.b == 803 && a != null && a.a() != null) {
                        if (z) {
                            if (uaVar != null && (d3 = (com.tencent.bugly.proguard.D) com.tencent.bugly.proguard.N.a(uaVar.f1156e, com.tencent.bugly.proguard.D.class)) != null) {
                                com.tencent.bugly.beta.upgrade.d.a.a(d3.f1062d);
                            }
                            java.util.ArrayList<com.tencent.bugly.proguard.C0260z> arrayListA = a.a();
                            if (arrayListA.size() > 1) {
                                com.tencent.bugly.proguard.C0256p.a.a();
                            } else if (arrayListA.size() == 1) {
                                com.tencent.bugly.proguard.C0256p.a.a(arrayListA.get(0).f1186e);
                            }
                        }
                    }
                    return;
                }
                this.f918d = true;
            }
        } catch (java.lang.Exception e2) {
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
        }
    }
}
