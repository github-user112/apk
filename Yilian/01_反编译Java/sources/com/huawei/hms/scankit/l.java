package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class l {
    public com.huawei.hms.scankit.aiscan.common.m a;
    public com.huawei.hms.scankit.p._a b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f470c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f471d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f472e = false;

    /* renamed from: f, reason: collision with root package name */
    public float f473f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f474g = 0.0f;
    public float h = 0.0f;
    public float j = 1.778f;
    public int k = 0;
    public int l = 0;
    public com.huawei.hms.scankit.aiscan.common.l i = new com.huawei.hms.scankit.aiscan.common.l();

    public l(com.huawei.hms.scankit.aiscan.common.m mVar) {
        this.a = mVar;
        this.b = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVar));
        this.f470c = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(this.a));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.aiscan.common.o r15, com.huawei.hms.scankit.aiscan.common.m r16, com.huawei.hms.scankit.aiscan.common.x r17, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> r18, float r19, int r20, int r21) {
        /*
            r14 = this;
            r7 = r14
            r4 = r17
            r5 = r18
            r6 = r19
            r0 = r20
            r1 = r21
            boolean r2 = com.huawei.hms.scankit.p.Bc.a
            r3 = 0
            if (r2 == 0) goto L99
            r2 = 3
            com.huawei.hms.scankit.p.db r8 = new com.huawei.hms.scankit.p.db     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L4a
            r9 = r16
            r8.<init>(r9)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L48
            com.huawei.hms.scankit.p._a r10 = new com.huawei.hms.scankit.p._a     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L48
            r10.<init>(r8)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L48
            r8 = r15
            com.huawei.hms.scankit.aiscan.common.x r3 = r15.a(r10, r5)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            if (r3 == 0) goto L2f
            java.lang.String r11 = r3.i()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            if (r11 == 0) goto L2f
            com.huawei.hms.scankit.aiscan.common.x r0 = r14.a(r3, r6, r0, r1)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            return r0
        L2f:
            if (r3 == 0) goto L4e
            com.huawei.hms.scankit.aiscan.common.z[] r11 = r3.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            if (r11 == 0) goto L4e
            com.huawei.hms.scankit.aiscan.common.z[] r11 = r3.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            int r11 = r11.length     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            if (r11 < r2) goto L4e
            com.huawei.hms.scankit.aiscan.common.z[] r3 = r3.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            r4.b(r3)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L46
            goto L4e
        L46:
            goto L4e
        L48:
            r8 = r15
            goto L4d
        L4a:
            r8 = r15
            r9 = r16
        L4d:
            r10 = r3
        L4e:
            if (r4 == 0) goto L8a
            com.huawei.hms.scankit.aiscan.common.z[] r3 = r17.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            if (r3 == 0) goto L8a
            com.huawei.hms.scankit.aiscan.common.z[] r3 = r17.h()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            int r3 = r3.length     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            if (r3 < r2) goto L8a
            boolean r3 = com.huawei.hms.scankit.p.Bc.h     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            if (r3 != 0) goto L8a
            r3 = 6
            double[] r3 = new double[r3]     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r11 = 0
            r12 = 0
            r3[r11] = r12     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r11 = 1
            r3[r11] = r12     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r11 = 2
            r3[r11] = r12     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r3[r2] = r12     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r2 = 4
            r3[r2] = r12     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            r2 = 5
            r11 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r3[r2] = r11     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            com.huawei.hms.scankit.aiscan.common.x r2 = r14.a(r10, r5, r4, r3)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            if (r2 == 0) goto L8a
            java.lang.String r3 = r2.i()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            if (r3 == 0) goto L8a
            com.huawei.hms.scankit.aiscan.common.x r0 = r14.a(r2, r6, r0, r1)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L8a
            return r0
        L8a:
            r0 = r14
            r1 = r10
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            com.huawei.hms.scankit.aiscan.common.x r3 = r0.a(r1, r2, r3, r4, r5, r6)
        L99:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.l.a(com.huawei.hms.scankit.aiscan.common.o, com.huawei.hms.scankit.aiscan.common.m, com.huawei.hms.scankit.aiscan.common.x, java.util.Map, float, int, int):com.huawei.hms.scankit.aiscan.common.x");
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.aiscan.common.o oVar, com.huawei.hms.scankit.aiscan.common.m mVar, com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, float f2, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.x xVarA = null;
        if (com.huawei.hms.scankit.p.Bc.a && !com.huawei.hms.scankit.p.Bc.b) {
            try {
                com.huawei.hms.scankit.p._a _aVar2 = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVar));
                try {
                    xVarA = oVar.a(_aVar2, map);
                    if (xVarA != null && xVarA.i() != null) {
                        com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
                        return xVarA;
                    }
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                }
                _aVar = _aVar2;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            }
            if (xVarA != null && xVarA.h() != null && xVarA.h().length >= 3) {
                try {
                    xVarA = a(_aVar, map, xVarA, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d});
                    if (xVarA != null && xVarA.i() != null) {
                        com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
                        return xVarA;
                    }
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused3) {
                }
            }
        }
        com.huawei.hms.scankit.p._a _aVar3 = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(mVar));
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = oVar.a(_aVar3, map);
            if (xVarA2 == null || xVarA2.i() == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            com.huawei.hms.scankit.p.C0192pb.a(xVarA2.h(), f2, c0187ob);
            return xVarA2;
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused4) {
            if (com.huawei.hms.scankit.p.Bc.a && !com.huawei.hms.scankit.p.Bc.b && xVarA != null && xVarA.h() != null && xVarA.h().length >= 3 && (xVarA = a(_aVar3, map, xVarA, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d})) != null && xVarA.i() != null) {
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
            }
            return xVarA;
        }
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.aiscan.common.x xVar, float f2, int i, int i2) {
        if (xVar != null && xVar.h().length == 4 && (f2 != 1.0f || i != 0 || i2 != 0)) {
            com.huawei.hms.scankit.aiscan.common.z[] zVarArr = new com.huawei.hms.scankit.aiscan.common.z[4];
            for (int i3 = 0; i3 < 4; i3++) {
                zVarArr[i3] = new com.huawei.hms.scankit.aiscan.common.z((xVar.h()[i3].b() * f2) + i, (xVar.h()[i3].c() * f2) + i2);
            }
            xVar.a();
            xVar.a(zVarArr);
        }
        return xVar;
    }

    public static com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.l lVar) {
        float fA = lVar.a(lVar.b);
        com.huawei.hms.scankit.aiscan.common.x xVar = new com.huawei.hms.scankit.aiscan.common.x(1.0f);
        xVar.b(fA);
        xVar.b(new com.huawei.hms.scankit.p.C0187ob(false, 0.0f, 0.0f, lVar.b.e(), lVar.b.e(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));
        return xVar;
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.o oVar, com.huawei.hms.scankit.aiscan.common.m mVar, com.huawei.hms.scankit.aiscan.common.x xVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, float f2) {
        com.huawei.hms.scankit.aiscan.common.x xVarA = null;
        try {
            com.huawei.hms.scankit.p.C0237yc.a(this.a, xVar);
            if (com.huawei.hms.scankit.p.Bc.f491c && com.huawei.hms.scankit.p.Bc.q[1]) {
                com.huawei.hms.scankit.p.Bc.n = true;
                xVarA = oVar.a(this.b, map);
                com.huawei.hms.scankit.p.Bc.n = false;
                if (xVarA != null && xVarA.i() != null) {
                    return a(xVarA, f2, 0, 0);
                }
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            com.huawei.hms.scankit.p.Bc.n = false;
        }
        float fE = _aVar.e() / _aVar.c();
        if (fE < 1.0f) {
            fE = 1.0f / fE;
        }
        if (!com.huawei.hms.scankit.p.Bc.h && !com.huawei.hms.scankit.p.Bc.i) {
            double d2 = fE;
            if (d2 > 1.27d && d2 < 1.272d) {
                com.huawei.hms.scankit.p.Bc.p = true;
                try {
                    com.huawei.hms.scankit.aiscan.common.x xVarA2 = oVar.a(new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(mVar)), map);
                    if (xVarA2 != null) {
                        try {
                            if (xVarA2.i() != null) {
                                return a(xVarA2, f2, 0, 0);
                            }
                        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                        }
                    }
                    xVarA = xVarA2;
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused3) {
                }
                com.huawei.hms.scankit.p.Bc.p = false;
            }
        }
        return xVarA;
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.x xVar, com.huawei.hms.scankit.aiscan.common.x xVar2, com.huawei.hms.scankit.aiscan.common.o oVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, float f2, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        try {
            if (com.huawei.hms.scankit.p.Bc.a) {
                _aVar.a(a(_aVar.d(), _aVar.e(), _aVar.c()));
                xVar = oVar.a(_aVar, map);
                if (xVar != null && xVar.i() == null && xVar.h() != null && xVar.h().length >= 3) {
                    com.huawei.hms.scankit.aiscan.common.x xVar3 = new com.huawei.hms.scankit.aiscan.common.x(null, null, xVar.h(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
                    try {
                        xVar = a(_aVar, map, xVar, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d});
                    } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                        xVar2 = xVar3;
                        if (xVar == null && (com.huawei.hms.scankit.p.Bc.s || (!com.huawei.hms.scankit.p.Bc.f491c && com.huawei.hms.scankit.p.Bc.l))) {
                            try {
                                _aVar.a(_aVar.b().c());
                                com.huawei.hms.scankit.aiscan.common.x xVarA = oVar.a(_aVar, map);
                                if (xVarA != null && xVarA.i() != null) {
                                    com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
                                    return xVarA;
                                }
                            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                            }
                        }
                        return xVar2;
                    }
                }
                if (xVar != null && xVar.i() != null) {
                    com.huawei.hms.scankit.p.C0192pb.a(xVar.h(), f2, c0187ob);
                    return xVar;
                }
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused3) {
        }
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, com.huawei.hms.scankit.aiscan.common.x xVar, double[] dArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.x xVarA;
        if (_aVar == null) {
            return null;
        }
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        int[] iArr = {0, 0};
        com.huawei.hms.scankit.aiscan.common.r rVar = new com.huawei.hms.scankit.aiscan.common.r(com.huawei.hms.scankit.aiscan.common.D.a(_aVar, map, xVar, iArr, dArr), iArr[0], iArr[1], 0, 0, iArr[0], iArr[1], false);
        try {
            xVarA = oVar.a(new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(rVar)), map);
            if (xVarA != null) {
                try {
                    if (xVarA.i() != null) {
                        com.huawei.hms.scankit.aiscan.common.z[] zVarArrA = com.huawei.hms.scankit.aiscan.common.D.a(xVarA.h(), _aVar.e(), _aVar.c(), dArr);
                        xVarA.a();
                        xVarA.b(zVarArrA);
                        return xVarA;
                    }
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                    com.huawei.hms.scankit.p._a _aVar2 = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(rVar));
                    try {
                        com.huawei.hms.scankit.aiscan.common.x xVarA2 = oVar.a(_aVar2, map);
                        if (xVarA2 == null || xVarA2.i() == null) {
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                        }
                        com.huawei.hms.scankit.aiscan.common.z[] zVarArrA2 = com.huawei.hms.scankit.aiscan.common.D.a(xVarA2.h(), _aVar.e(), _aVar.c(), dArr);
                        xVarA2.a();
                        xVarA2.b(zVarArrA2);
                        return xVarA2;
                    } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                        _aVar2.a(a(rVar.b(), rVar.c(), rVar.a()));
                        try {
                            com.huawei.hms.scankit.aiscan.common.x xVarA3 = oVar.a(_aVar2, map);
                            if (xVarA3 == null || xVarA3.i() == null) {
                                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                            }
                            com.huawei.hms.scankit.aiscan.common.z[] zVarArrA3 = com.huawei.hms.scankit.aiscan.common.D.a(xVarA3.h(), _aVar.e(), _aVar.c(), dArr);
                            xVarA3.a();
                            xVarA3.b(zVarArrA3);
                            return xVarA3;
                        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused3) {
                            return xVarA;
                        }
                    }
                }
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused4) {
            xVarA = xVar;
        }
    }

    public static com.huawei.hms.scankit.aiscan.common.x a(java.util.List<com.huawei.hms.scankit.p.C0187ob> list, com.huawei.hms.scankit.l lVar) {
        for (com.huawei.hms.scankit.p.C0187ob c0187ob : list) {
            if (com.huawei.hms.scankit.p.Bc.b || c0187ob.h() > 0.4d) {
                int iJ = (int) c0187ob.j();
                int iK = (int) c0187ob.k();
                if (iJ > lVar.a.c() / 3 && iJ < (lVar.a.c() * 2) / 3 && iK > lVar.a.a() / 3 && iK < (lVar.a.a() * 2) / 3) {
                    float fA = lVar.a(lVar.f471d);
                    com.huawei.hms.scankit.aiscan.common.x xVar = new com.huawei.hms.scankit.aiscan.common.x(1.0f);
                    xVar.a(fA);
                    xVar.a(c0187ob);
                    return xVar;
                }
            }
        }
        return null;
    }

    public static com.huawei.hms.scankit.p.C0122bb a(byte[] bArr, int i, int i2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        byte[] bArrAdaptivebinary = com.huawei.hms.scankit.util.LoadOpencvJNIUtil.adaptivebinary(bArr, i2, i, 45);
        if (bArrAdaptivebinary == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(i, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                if (bArrAdaptivebinary[(i3 * i) + i4] == 0) {
                    c0122bb.c(i4, i3);
                }
            }
        }
        return c0122bb;
    }

    public static boolean a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        if (com.huawei.hms.scankit.p.Bc.a && !com.huawei.hms.scankit.p.Bc.b) {
            float fD = c0187ob.d();
            float fE = c0187ob.e();
            float f2 = c0187ob.f();
            float fC = c0187ob.c();
            float f3 = fD - ((f2 * 0.2f) / 2.0f);
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            float f4 = fE - ((0.2f * fC) / 2.0f);
            float f5 = f4 >= 0.0f ? f4 : 0.0f;
            float fE2 = (f2 * 1.2f) + f3;
            if (fE2 > _aVar.e()) {
                fE2 = _aVar.e();
            }
            float fC2 = (fC * 1.2f) + f5;
            if (fC2 > _aVar.c()) {
                fC2 = _aVar.c();
            }
            float f6 = fE2 - f3;
            float f7 = fC2 - f5;
            if (f6 < _aVar.e() / 2.0f && f7 < _aVar.c() / 2.0f) {
                for (com.huawei.hms.scankit.p.C0187ob c0187ob2 : com.huawei.hms.scankit.p.C0192pb.a(com.huawei.hms.scankit.p.Bc.b, _aVar.a((int) f3, (int) f5, (int) f6, (int) f7), 0, true)) {
                    boolean z = c0187ob2.g() == 1.0f && ((double) c0187ob2.h()) > 0.5d;
                    boolean z2 = c0187ob.g() == 2.0f && c0187ob2.g() == 2.0f && ((double) c0187ob2.h()) > 0.7d;
                    boolean z3 = c0187ob.g() == 3.0f && c0187ob2.g() == 3.0f && ((double) c0187ob2.h()) > 0.7d;
                    if (z || z2 || z3) {
                        return true;
                    }
                }
                return false;
            }
        }
        return true;
    }

    private com.huawei.hms.scankit.p._a b(com.huawei.hms.scankit.p._a _aVar) {
        int iE = _aVar.e();
        int iC = _aVar.c();
        double d2 = iE;
        java.lang.Double.isNaN(d2);
        int i = (int) (d2 * 0.75d);
        double d3 = iC;
        java.lang.Double.isNaN(d3);
        int i2 = (int) (d3 * 0.75d);
        int i3 = (iE - i) / 2;
        this.k += i3;
        int i4 = (iC - i2) / 2;
        this.l += i4;
        return _aVar.a(i3, i4, i, i2);
    }

    private void b(java.util.List<com.huawei.hms.scankit.p.C0187ob> list) {
        for (com.huawei.hms.scankit.p.C0187ob c0187ob : list) {
            c0187ob.a(this.a.c(), this.a.a(), this.k, this.l);
            float fMin = java.lang.Math.min(java.lang.Math.abs(c0187ob.i() % 90.0f), 90.0f - java.lang.Math.abs(c0187ob.i() % 90.0f));
            if (c0187ob.f() * c0187ob.c() > this.a.a() * 0.9f * this.a.c() && fMin < 5.0f) {
                c0187ob.b(this.a.c(), this.a.a());
            }
        }
    }

    private com.huawei.hms.scankit.p._a c(com.huawei.hms.scankit.p._a _aVar) {
        int iE = _aVar.e();
        int iC = _aVar.c();
        if (iE < iC) {
            if (iC / iE <= 1.2d) {
                return _aVar;
            }
            double d2 = iE;
            java.lang.Double.isNaN(d2);
            int i = (int) (d2 * 1.2d);
            int i2 = (iC - i) / 2;
            this.l = i2;
            return _aVar.a(0, i2, iE, i);
        }
        if (iE / iC <= 1.2d) {
            return _aVar;
        }
        double d3 = iC;
        java.lang.Double.isNaN(d3);
        int i3 = (int) (d3 * 1.2d);
        int i4 = (iE - i3) / 2;
        this.k = i4;
        return _aVar.a(i4, 0, i3, iC);
    }

    public float a(com.huawei.hms.scankit.p._a _aVar) {
        if (((_aVar == null || (_aVar.a() == null && _aVar.a().c() == null)) ? null : _aVar.a().c().b()) == null) {
            return 1.0f;
        }
        long j = 0;
        int iE = _aVar.e();
        int iC = _aVar.c();
        for (int i = iC / 4; i < (iC * 3) / 4; i++) {
            for (int i2 = iE / 4; i2 < (iE * 3) / 4; i2++) {
                j += r0[(i * iE) + i2] & 255;
            }
        }
        return (j / r0.length) * 4;
    }

    public com.huawei.hms.scankit.aiscan.common.x a(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, list);
        if (com.huawei.hms.scankit.p.Bc.f491c) {
            map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE, java.lang.Boolean.valueOf(com.huawei.hms.scankit.p.Bc.f491c));
        }
        com.huawei.hms.scankit.aiscan.common.x xVarA = null;
        try {
            xVarA = c0187ob != null ? oVar.a(this.b, this.f471d, map, this.i, c0187ob) : oVar.a(this.b, (com.huawei.hms.scankit.p._a) null, map, this.i, (com.huawei.hms.scankit.p.C0187ob) null);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
        }
        if (xVarA != null || com.huawei.hms.scankit.p.Bc.b || c0187ob == null || !com.huawei.hms.scankit.p.Bc.f491c || c0187ob.h() >= 0.8d) {
            return xVarA;
        }
        float fI = c0187ob.i() % 180.0f;
        double dC = c0187ob.c();
        double dC2 = this.b.c();
        java.lang.Double.isNaN(dC2);
        boolean z = true;
        boolean z2 = dC > dC2 * 0.97d && ((fI < 5.0f && fI > -5.0f) || fI < -175.0f || fI > 175.0f);
        double dB = c0187ob.b();
        double dE = this.b.e();
        java.lang.Double.isNaN(dE);
        if (dB <= dE * 0.97d || ((fI >= 95.0f || fI <= 85.0f) && (fI >= -85.0f || fI <= -95.0f))) {
            z = false;
        }
        if (!z2 && !z) {
            return xVarA;
        }
        this.i.a();
        try {
            return oVar.a(this.b, (com.huawei.hms.scankit.p._a) null, map, this.i, (com.huawei.hms.scankit.p.C0187ob) null);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            return xVarA;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.x a(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map) {
        com.huawei.hms.scankit.aiscan.common.m mVarC;
        float f2;
        com.huawei.hms.scankit.aiscan.common.x xVarA;
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        com.huawei.hms.scankit.aiscan.common.m mVar = this.a;
        if (!com.huawei.hms.scankit.p.Bc.a || (this.b.e() <= 800 && this.b.c() <= 800)) {
            mVarC = mVar;
            f2 = 1.0f;
        } else {
            float fMax = java.lang.Math.max(this.b.e(), this.b.c()) / 800.0f;
            if (com.huawei.hms.scankit.p.Bc.f491c && (this.b.e() > this.b.c() * this.j || this.b.c() > this.b.e() * this.j)) {
                fMax = java.lang.Math.min(this.b.e(), this.b.c()) / 860.0f;
            }
            mVarC = this.i.d(this.b, fMax).a().c();
            f2 = fMax;
        }
        if (mVarC == null) {
            return null;
        }
        com.huawei.hms.scankit.p._a _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVarC));
        com.huawei.hms.scankit.p.C0237yc.a(this.a);
        try {
            if (com.huawei.hms.scankit.p.Bc.a) {
                _aVar.a(a(mVarC.b(), mVarC.c(), mVarC.a()));
            }
            xVarA = oVar.a(_aVar, map);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
        }
        if (xVarA != null && xVarA.i() != null) {
            return a(xVarA, f2, 0, 0);
        }
        com.huawei.hms.scankit.aiscan.common.x xVar = (xVarA == null || xVarA.h() == null || xVarA.h().length < 3) ? null : new com.huawei.hms.scankit.aiscan.common.x(null, null, xVarA.h(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
        com.huawei.hms.scankit.aiscan.common.x xVar2 = xVar == null ? new com.huawei.hms.scankit.aiscan.common.x(null, null, null, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE) : xVar;
        if (com.huawei.hms.scankit.p.Bc.f491c) {
            xVar2 = a(oVar, mVarC, xVar2, map, f2, 0, 0);
        }
        if (xVar2 != null && xVar2.i() != null) {
            return xVar2;
        }
        if (xVar2 != null && xVar2.h() != null) {
            xVar = xVar2;
        }
        if (!com.huawei.hms.scankit.p.Bc.f491c && xVar != null && xVar.h() != null && xVar.h().length >= 3) {
            a(xVar, f2, 0, 0);
            float fA = com.huawei.hms.scankit.H.a(this.a.c(), this.a.a(), xVar.h());
            if (java.lang.Math.abs(1.0f - fA) > 0.001d) {
                this.f473f = fA;
                this.f472e = true;
            }
        }
        return xVar;
    }

    public com.huawei.hms.scankit.aiscan.common.x a(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p._a _aVar;
        float f2;
        com.huawei.hms.scankit.aiscan.common.x xVar;
        com.huawei.hms.scankit.p._a _aVar2;
        com.huawei.hms.scankit.aiscan.common.x xVar2;
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        com.huawei.hms.scankit.p._a _aVar3 = this.f471d;
        if (_aVar3 == null) {
            return null;
        }
        com.huawei.hms.scankit.p.Bc.f492d = true;
        int iE = _aVar3.e() > this.f471d.c() ? this.f471d.e() : this.f471d.c();
        if (!com.huawei.hms.scankit.p.Bc.a || iE <= 500) {
            _aVar = this.f471d;
            f2 = 1.0f;
        } else {
            float f3 = iE / 500.0f;
            if (f3 < 1.0f) {
                f3 = 1.0f;
            }
            _aVar = this.i.g(this.f471d, f3);
            f2 = f3;
        }
        try {
            if (com.huawei.hms.scankit.p.Bc.j) {
                _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(com.huawei.hms.scankit.aiscan.common.C.a(_aVar.a().c())));
            }
            com.huawei.hms.scankit.aiscan.common.x xVarA = oVar.a(_aVar, map);
            if (xVarA != null) {
                try {
                    if (xVarA.i() == null && xVarA.h() != null && xVarA.h().length >= 3) {
                        xVar = new com.huawei.hms.scankit.aiscan.common.x(null, null, xVarA.h(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
                        try {
                            xVarA = a(_aVar, map, xVarA, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d});
                        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                            _aVar2 = _aVar;
                            xVar2 = xVarA;
                            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(_aVar2, xVar2, xVar, oVar, map, f2, c0187ob);
                            if ((xVarA2 == null || xVarA2.i() == null) && !com.huawei.hms.scankit.p.Bc.f491c && xVarA2 != null && xVarA2.h() != null && xVarA2.h().length >= 3) {
                                com.huawei.hms.scankit.p.C0192pb.a(xVarA2.h(), f2, c0187ob);
                                float fA = com.huawei.hms.scankit.H.a(this.a.c(), this.a.a(), xVarA2.h());
                                if (java.lang.Math.abs(1.0f - fA) > 0.001d) {
                                    this.f473f = fA;
                                    this.f472e = true;
                                }
                            }
                            return xVarA2;
                        }
                    }
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                    xVar = null;
                }
            }
            if (xVarA == null || xVarA.i() == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
            return xVarA;
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused3) {
            xVar = null;
            _aVar2 = _aVar;
            xVar2 = null;
        }
    }

    public java.util.List<com.huawei.hms.scankit.p.C0187ob> a(int i, boolean z) {
        java.util.List<com.huawei.hms.scankit.p.C0187ob> listA;
        com.huawei.hms.scankit.p._a _aVar;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (!com.huawei.hms.scankit.p.Bc.a) {
            return arrayList;
        }
        boolean z2 = com.huawei.hms.scankit.p.Bc.b;
        if (z2) {
            listA = com.huawei.hms.scankit.p.C0192pb.a(z2, this.b, i, z);
        } else {
            byte[] bArrC = com.huawei.hms.scankit.z.c();
            float[] fArrD = com.huawei.hms.scankit.z.d();
            int iA = com.huawei.hms.scankit.z.a();
            byte[] bArrB = com.huawei.hms.scankit.z.b();
            com.huawei.hms.scankit.util.LoadOpencvJNIUtil.setModel(bArrC, bArrC.length, fArrD, iA, bArrB, bArrB.length);
            com.huawei.hms.scankit.p._a _aVarB = this.b;
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis() % 10;
            boolean z3 = jCurrentTimeMillis % 2 == 0;
            boolean z4 = jCurrentTimeMillis % 3 == 0;
            if (i == 0 && !com.huawei.hms.scankit.p.Bc.f491c && z3) {
                _aVarB = c(this.b);
            } else if (i == 0 && !com.huawei.hms.scankit.p.Bc.f491c && z4) {
                _aVarB = b(c(this.b));
            } else {
                if (this.a.a() / this.a.c() > 1.35d) {
                    int iA2 = (int) (this.a.a() / 1.3f);
                    this.l = 0;
                    this.k = (-(iA2 - this.a.c())) / 2;
                    com.huawei.hms.scankit.aiscan.common.m mVar = this.a;
                    _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVar.b(iA2, mVar.a(), -this.k, -this.l)));
                } else if (1.0f / r1 > 1.35d) {
                    int iC = (int) (this.a.c() / 1.3f);
                    this.l = (-(iC - this.a.a())) / 2;
                    this.k = 0;
                    com.huawei.hms.scankit.aiscan.common.m mVar2 = this.a;
                    _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVar2.b(mVar2.c(), iC, -this.k, -this.l)));
                }
                _aVarB = _aVar;
            }
            listA = com.huawei.hms.scankit.p.C0192pb.a(com.huawei.hms.scankit.p.Bc.b, _aVarB, i, z);
        }
        java.util.List<com.huawei.hms.scankit.p.C0187ob> list = listA;
        b(list);
        return list;
    }

    public void a(com.huawei.hms.scankit.p.C0187ob c0187ob) {
        try {
            if (com.huawei.hms.scankit.p.Bc.a) {
                com.huawei.hms.scankit.p.C0192pb.a(com.huawei.hms.scankit.p.Bc.b, this.b, c0187ob);
                this.f471d = c0187ob.l;
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
        }
    }

    public boolean a() {
        return this.f472e;
    }

    public boolean a(java.util.List<com.huawei.hms.scankit.p.C0187ob> list) {
        int i;
        for (com.huawei.hms.scankit.p.C0187ob c0187ob : list) {
            boolean z = c0187ob.g() == 1.0f && ((double) c0187ob.h()) > 0.7d;
            boolean z2 = c0187ob.g() == 1.0f && ((double) c0187ob.h()) > 0.4d;
            boolean z3 = c0187ob.g() == 2.0f && ((double) c0187ob.h()) > 0.7d;
            boolean z4 = c0187ob.g() == 3.0f && ((double) c0187ob.h()) > 0.7d;
            if (z2 || z3 || z4) {
                if (z || a(this.b, c0187ob) || (i = com.huawei.hms.scankit.p.Bc.f495g) > 4) {
                    com.huawei.hms.scankit.p.Bc.f495g = 0;
                    float fB = com.huawei.hms.scankit.H.b(this.a.c(), this.a.a(), new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(c0187ob.d(), c0187ob.e()), new com.huawei.hms.scankit.aiscan.common.z(c0187ob.f() + c0187ob.d(), c0187ob.e()), new com.huawei.hms.scankit.aiscan.common.z(c0187ob.d(), c0187ob.c() + c0187ob.e())});
                    if (fB > 1.001f) {
                        this.f474g = fB;
                        this.f472e = true;
                    }
                } else {
                    com.huawei.hms.scankit.p.Bc.f495g = i + 2;
                }
            }
        }
        return this.f472e;
    }

    public float b() {
        return this.f473f;
    }

    public com.huawei.hms.scankit.aiscan.common.x b(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, list);
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA = c0187ob != null ? oVar.a(this.b, this.f470c, this.f471d, map, this.i, c0187ob) : oVar.a(this.b, this.f470c, null, map, this.i, null);
            try {
                if (com.huawei.hms.scankit.p.Bc.f491c || xVarA == null || xVarA.i() != null || xVarA.h() == null || xVarA.h().length < 3) {
                    return xVarA;
                }
                float fB = com.huawei.hms.scankit.H.b(this.a.c(), this.a.a(), xVarA.h());
                if (java.lang.Math.abs(1.0f - fB) <= 0.001d) {
                    return xVarA;
                }
                this.h = fB;
                this.f472e = true;
                return xVarA;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                return xVarA;
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            return null;
        }
    }

    public float c() {
        return this.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f2 A[Catch: a -> 0x00fa, TRY_ENTER, TRY_LEAVE, TryCatch #0 {a -> 0x00fa, blocks: (B:10:0x003a, B:39:0x00f2, B:16:0x0058, B:18:0x0066, B:24:0x0080, B:26:0x008b, B:32:0x009e, B:30:0x0096), top: B:57:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fa A[PHI: r6 r7
  0x00fa: PHI (r6v7 com.huawei.hms.scankit.aiscan.common.x) = (r6v6 com.huawei.hms.scankit.aiscan.common.x), (r6v8 com.huawei.hms.scankit.aiscan.common.x) binds: [B:54:0x00fa, B:38:0x00f0] A[DONT_GENERATE, DONT_INLINE]
  0x00fa: PHI (r7v7 float) = (r7v6 float), (r7v8 float) binds: [B:54:0x00fa, B:38:0x00f0] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.scankit.aiscan.common.x c(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> r31, com.huawei.hms.scankit.p.C0187ob r32) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.l.c(java.util.List, com.huawei.hms.scankit.p.ob):com.huawei.hms.scankit.aiscan.common.x");
    }

    public float d() {
        return this.f474g;
    }

    public com.huawei.hms.scankit.aiscan.common.x d(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, list);
        if (c0187ob == null) {
            com.huawei.hms.scankit.aiscan.common.x xVarA = a(map);
            if (xVarA != null && xVarA.i() == null && com.huawei.hms.scankit.p.Bc.l) {
                com.huawei.hms.scankit.p.Bc.h = true;
                xVarA = a(map);
                com.huawei.hms.scankit.p.Bc.h = false;
            }
            com.huawei.hms.scankit.aiscan.common.x xVar = xVarA;
            if (xVar == null || xVar.i() != null || !com.huawei.hms.scankit.p.Bc.m) {
                return xVar;
            }
            com.huawei.hms.scankit.p.Bc.i = true;
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(map);
            com.huawei.hms.scankit.p.Bc.i = false;
            return xVarA2;
        }
        com.huawei.hms.scankit.aiscan.common.x xVarA3 = a(map, c0187ob);
        if (xVarA3 != null && xVarA3.i() == null && com.huawei.hms.scankit.p.Bc.k) {
            com.huawei.hms.scankit.p.Bc.h = true;
            xVarA3 = f(list, c0187ob);
            com.huawei.hms.scankit.p.Bc.h = false;
        }
        if (xVarA3 != null && xVarA3.i() == null && com.huawei.hms.scankit.p.Bc.l) {
            com.huawei.hms.scankit.p.Bc.i = true;
            xVarA3 = a(map, c0187ob);
            com.huawei.hms.scankit.p.Bc.i = false;
        }
        if ((xVarA3 != null && xVarA3.i() != null) || !com.huawei.hms.scankit.p.Bc.m) {
            return xVarA3;
        }
        com.huawei.hms.scankit.p.Bc.j = true;
        com.huawei.hms.scankit.aiscan.common.x xVarA4 = a(map, c0187ob);
        com.huawei.hms.scankit.p.Bc.j = false;
        return xVarA4;
    }

    public com.huawei.hms.scankit.aiscan.common.x e(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.m mVarC;
        float f2;
        com.huawei.hms.scankit.p._a _aVar;
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, list);
        try {
            com.huawei.hms.scankit.aiscan.common.m mVarC2 = c0187ob != null ? this.f471d.a().c() : this.a;
            if (!com.huawei.hms.scankit.p.Bc.a || (this.b.e() <= 800 && this.b.c() <= 800)) {
                mVarC = mVarC2;
                f2 = 1.0f;
            } else {
                float fE = (this.b.e() > this.b.c() ? this.b.e() : this.b.c()) / 800.0f;
                mVarC = this.i.h(new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVarC2)), fE).a().c();
                f2 = fE;
            }
            if (mVarC == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (!com.huawei.hms.scankit.p.Bc.a || com.huawei.hms.scankit.p.Bc.b) {
                _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVarC));
            } else {
                com.huawei.hms.scankit.p.C0122bb c0122bbA = a(mVarC.b(), mVarC.c(), mVarC.a());
                _aVar = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(mVarC));
                _aVar.a(c0122bbA);
            }
            com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
            try {
                com.huawei.hms.scankit.aiscan.common.x xVarA = oVar.a(_aVar, map);
                if (xVarA == null || xVarA.i() == null) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
                return xVarA;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                return a(oVar, mVarC, _aVar, map, f2, c0187ob);
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            return null;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.x f(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        com.huawei.hms.scankit.p._a _aVarG;
        com.huawei.hms.scankit.p._a _aVar;
        com.huawei.hms.scankit.aiscan.common.o oVar = new com.huawei.hms.scankit.aiscan.common.o();
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, list);
        float fE = 1.0f;
        boolean z = com.huawei.hms.scankit.p.Bc.a;
        if (c0187ob == null) {
            if (!z || (this.b.e() <= 500 && this.b.c() <= 500)) {
                _aVarG = this.b;
            } else {
                fE = (this.b.e() > this.b.c() ? this.b.e() : this.b.c()) / 500.0f;
                _aVarG = this.i.c(this.b, fE);
            }
        } else if (!z || (_aVar = this.f471d) == null || (_aVar.e() <= 500 && this.f471d.c() <= 500)) {
            _aVarG = this.f471d;
        } else {
            fE = (this.f471d.e() > this.f471d.c() ? this.f471d.e() : this.f471d.c()) / 500.0f;
            _aVarG = this.i.g(this.f471d, fE);
        }
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA = oVar.a(_aVarG, map);
            if (xVarA == null) {
                return xVarA;
            }
            try {
                if (xVarA.i() == null) {
                    return xVarA;
                }
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), fE, c0187ob);
                return xVarA;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                return xVarA;
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            return null;
        }
    }
}
