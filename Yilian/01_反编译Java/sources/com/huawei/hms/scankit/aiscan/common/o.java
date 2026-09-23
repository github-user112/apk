package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class o implements com.huawei.hms.scankit.aiscan.common.t {
    private com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.aiscan.common.l lVar, com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.p._a _aVar2, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.t[] tVarArrA = a(map);
        try {
            if (com.huawei.hms.scankit.p.Bc.a) {
                float f2 = (i * 1.0f) / 500.0f;
                if (f2 <= 1.0f) {
                    f2 = 1.0f;
                }
                com.huawei.hms.scankit.aiscan.common.x xVarA = a(lVar.g(lVar.g(_aVar, f2)), tVarArrA, map);
                if (xVarA != null && xVarA.i() != null) {
                    com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, (com.huawei.hms.scankit.p.C0187ob) null);
                    return xVarA;
                }
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            float f3 = (i * 1.0f) / 1080.0f;
            float f4 = f3 > 1.0f ? f3 : 1.0f;
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(lVar.b(_aVar2, f4), tVarArrA, map);
            if (xVarA2 != null && xVarA2.i() != null) {
                com.huawei.hms.scankit.p.C0192pb.a(xVarA2.h(), f4, (com.huawei.hms.scankit.p.C0187ob) null);
            }
            return xVarA2;
        }
    }

    private com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.l lVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        float f2 = (i * 1.0f) / 250.0f;
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        com.huawei.hms.scankit.p._a _aVarF = lVar.f(_aVar, f2);
        com.huawei.hms.scankit.aiscan.common.t[] tVarArrA = a(map);
        try {
            try {
                com.huawei.hms.scankit.aiscan.common.x xVarA = a(lVar.e(_aVarF), tVarArrA, map);
                if (xVarA == null || xVarA.i() == null) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, c0187ob);
                return xVarA;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(lVar.f(_aVarF), tVarArrA, map);
                if (xVarA2 == null || xVarA2.i() == null) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                com.huawei.hms.scankit.p.C0192pb.a(xVarA2.h(), f2, c0187ob);
                return xVarA2;
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            com.huawei.hms.scankit.aiscan.common.x xVarA3 = a(new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(_aVar.a().c())), tVarArrA, map);
            if (xVarA3 != null && xVarA3.i() != null) {
                com.huawei.hms.scankit.p.C0192pb.a(xVarA3.h(), 1.0f, c0187ob);
            }
            return xVarA3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0080, code lost:
    
        r10 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.huawei.hms.scankit.aiscan.common.l] */
    /* JADX WARN: Type inference failed for: r10v10, types: [com.huawei.hms.scankit.aiscan.common.x] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.huawei.hms.scankit.aiscan.common.x] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a r9, com.huawei.hms.scankit.aiscan.common.l r10, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> r11, float[] r12) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r8 = this;
            int r0 = r9.c()
            int r1 = r9.e()
            int r0 = java.lang.Math.min(r0, r1)
            float r0 = (float) r0
            r1 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 * r1
            r2 = 1149698048(0x44870000, float:1080.0)
            float r0 = r0 / r2
            boolean r2 = com.huawei.hms.scankit.p.Bc.a
            if (r2 == 0) goto L1d
            com.huawei.hms.scankit.p._a r9 = r10.a(r9, r0)
            goto L29
        L1d:
            r2 = 1069547520(0x3fc00000, float:1.5)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto L24
            r1 = r0
        L24:
            com.huawei.hms.scankit.p._a r9 = r10.a(r9, r1)
            r0 = r1
        L29:
            com.huawei.hms.scankit.aiscan.common.t[] r1 = r8.a(r11)
            boolean r2 = com.huawei.hms.scankit.p.Bc.b
            r3 = 0
            r4 = 0
            if (r2 != 0) goto L45
            boolean r2 = com.huawei.hms.scankit.p.Bc.a
            if (r2 == 0) goto L45
            com.huawei.hms.scankit.aiscan.common.d r10 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM
            java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
            r11.put(r10, r2)
            com.huawei.hms.scankit.aiscan.common.x r10 = r8.a(r9, r1, r11)
            goto L81
        L45:
            r2 = r3
            r5 = 0
        L47:
            r6 = 2
            if (r5 >= r6) goto L80
            r6 = 1
            if (r5 != r6) goto L5e
            com.huawei.hms.scankit.p._a r7 = com.huawei.hms.scankit.aiscan.common.k.a(r9)
            com.huawei.hms.scankit.p._a r7 = r10.c(r7)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            com.huawei.hms.scankit.aiscan.common.x r2 = r8.a(r7, r1, r11)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            r7 = 1073741824(0x40000000, float:2.0)
            r12[r6] = r7     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            goto L80
        L5e:
            com.huawei.hms.scankit.p._a r7 = r10.b(r9)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L67
            com.huawei.hms.scankit.aiscan.common.x r10 = r8.a(r7, r1, r11)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L67
            goto L81
        L67:
            boolean r7 = com.huawei.hms.scankit.p.Bc.k     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            if (r7 == 0) goto L7d
            com.huawei.hms.scankit.aiscan.common.d r7 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            r11.put(r7, r6)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            com.huawei.hms.scankit.p._a r6 = r10.d(r9)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            com.huawei.hms.scankit.aiscan.common.x r10 = r8.a(r6, r1, r11)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L7d
            goto L81
        L7d:
            int r5 = r5 + 1
            goto L47
        L80:
            r10 = r2
        L81:
            if (r10 == 0) goto L8a
            com.huawei.hms.scankit.p.bb r9 = r9.b()
            com.huawei.hms.scankit.p.C0192pb.a(r9, r10, r0, r3)
        L8a:
            r12[r4] = r0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.aiscan.common.o.a(com.huawei.hms.scankit.p._a, com.huawei.hms.scankit.aiscan.common.l, java.util.Map, float[]):com.huawei.hms.scankit.aiscan.common.x");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a r11, com.huawei.hms.scankit.aiscan.common.l r12, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> r13, float[] r14, com.huawei.hms.scankit.p.C0187ob r15) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r10 = this;
            float r0 = r15.n()
            int r1 = r11.e()
            int r2 = r11.c()
            if (r1 >= r2) goto L13
            int r1 = r11.e()
            goto L17
        L13:
            int r1 = r11.c()
        L17:
            float r1 = (float) r1
            r2 = 1140457472(0x43fa0000, float:500.0)
            float r2 = r1 / r2
            r3 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r4 >= 0) goto L24
            r2 = 1065353216(0x3f800000, float:1.0)
        L24:
            com.huawei.hms.scankit.p._a r4 = r12.g(r11, r2)
            com.huawei.hms.scankit.aiscan.common.t[] r5 = r10.a(r13)
            float r6 = r15.a()
            r7 = 0
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 <= 0) goto L3f
            float r6 = r15.b()
            float r7 = r15.a()
            float r6 = r6 / r7
            goto L41
        L3f:
            r6 = 1065353216(0x3f800000, float:1.0)
        L41:
            r7 = 0
            com.huawei.hms.scankit.aiscan.common.x r8 = r10.a(r4, r5, r13)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L54
            float r9 = r0 / r2
            boolean r9 = a(r8, r9, r6)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L56
            if (r9 != 0) goto L4f
            goto Laa
        L4f:
            com.huawei.hms.scankit.aiscan.common.a r8 = com.huawei.hms.scankit.aiscan.common.C0102a.a()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L54
            throw r8     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L54
        L54:
            goto L57
        L56:
            r7 = r8
        L57:
            boolean r8 = com.huawei.hms.scankit.p.Bc.k
            if (r8 == 0) goto La9
            r2 = 1132068864(0x437a0000, float:250.0)
            float r1 = r1 / r2
            int r2 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r2 >= 0) goto L63
            goto L64
        L63:
            r3 = r1
        L64:
            com.huawei.hms.scankit.p._a r4 = r12.f(r11, r3)
            com.huawei.hms.scankit.aiscan.common.d r11 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            r1 = 2
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            r13.put(r11, r1)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            com.huawei.hms.scankit.p._a r11 = r12.e(r4)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            com.huawei.hms.scankit.aiscan.common.x r11 = r10.a(r11, r5, r13)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            float r1 = r0 / r3
            boolean r1 = a(r11, r1, r6)     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            if (r1 != 0) goto L83
            goto La2
        L83:
            com.huawei.hms.scankit.aiscan.common.a r11 = com.huawei.hms.scankit.aiscan.common.C0102a.a()     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
            throw r11     // Catch: com.huawei.hms.scankit.aiscan.common.C0102a -> L88
        L88:
            com.huawei.hms.scankit.aiscan.common.d r11 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE_NUM
            r1 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r13.put(r11, r1)
            com.huawei.hms.scankit.p._a r11 = r12.f(r4)
            com.huawei.hms.scankit.aiscan.common.x r11 = r10.a(r11, r5, r13)
            float r0 = r0 / r3
            boolean r12 = a(r11, r0, r6)
            if (r12 != 0) goto La4
        La2:
            r2 = r3
            goto Lab
        La4:
            com.huawei.hms.scankit.aiscan.common.a r11 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            throw r11
        La9:
            r8 = r7
        Laa:
            r11 = r8
        Lab:
            r12 = 0
            r14[r12] = r2
            if (r11 == 0) goto Lb7
            com.huawei.hms.scankit.p.bb r12 = r4.b()
            com.huawei.hms.scankit.p.C0192pb.a(r12, r11, r2, r15)
        Lb7:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.aiscan.common.o.a(com.huawei.hms.scankit.p._a, com.huawei.hms.scankit.aiscan.common.l, java.util.Map, float[], com.huawei.hms.scankit.p.ob):com.huawei.hms.scankit.aiscan.common.x");
    }

    private com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.t[] tVarArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (tVarArr != null) {
            for (com.huawei.hms.scankit.aiscan.common.t tVar : tVarArr) {
                try {
                    com.huawei.hms.scankit.aiscan.common.x xVarA = tVar.a(_aVar, map);
                    if (xVarA != null && xVarA.h() != null) {
                        int i = 0;
                        for (com.huawei.hms.scankit.aiscan.common.z zVar : xVarA.h()) {
                            if (zVar != null) {
                                i++;
                            }
                        }
                        if (i == 0 && xVarA.b() == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417) {
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                        }
                    }
                    return xVarA;
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                }
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static boolean a(com.huawei.hms.scankit.aiscan.common.x xVar, float f2, float f3) {
        double dAbs = java.lang.Math.abs(xVar.h()[0].b() - xVar.h()[1].b()) / f2;
        return (dAbs < 0.55d && ((double) f3) > 1.5d) || dAbs < 0.3d;
    }

    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.l lVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iE = _aVar.e();
        int iC = _aVar.c();
        int i = iE < iC ? iE : iC;
        float f2 = i * 1.0f;
        float f3 = f2 / 128.0f;
        if (f3 < 1.0f && com.huawei.hms.scankit.p.Bc.f491c) {
            _aVar = lVar.e(_aVar, f3);
        }
        com.huawei.hms.scankit.p._a _aVar2 = _aVar;
        float f4 = f2 / 500.0f;
        float f5 = f4 >= 1.0f ? f4 : 1.0f;
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA = a(lVar.g(_aVar2, f5), a(map), map);
            if (xVarA != null && xVarA.i() != null) {
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f5, c0187ob);
                return xVarA;
            }
            if (!com.huawei.hms.scankit.p.Bc.f491c && xVarA != null && xVarA.i() == null && xVarA.h().length >= 3) {
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(i, _aVar2, lVar, map, c0187ob);
            if (xVarA2 == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (0 != 0) {
                xVarA2.a();
                xVarA2.b((com.huawei.hms.scankit.aiscan.common.z[]) null);
                com.huawei.hms.scankit.p.C0192pb.a(xVarA2.h(), f5, c0187ob);
            }
            return xVarA2;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.p._a _aVar2, com.huawei.hms.scankit.aiscan.common.l lVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p._a _aVarA;
        int iE = _aVar.e();
        int iC = _aVar.c();
        int i = iE < iC ? iE : iC;
        float f2 = (i * 1.0f) / 1080.0f;
        if (f2 <= 1.0f) {
            f2 = 1.0f;
        }
        if (com.huawei.hms.scankit.p.Bc.a) {
            _aVarA = lVar.a(_aVar, f2);
        } else {
            float f3 = f2 > 1.5f ? f2 : 1.0f;
            float f4 = f3;
            _aVarA = lVar.a(_aVar, f3);
            f2 = f4;
        }
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA = a(_aVarA, a(map), map);
            if (xVarA != null && xVarA.i() != null) {
                com.huawei.hms.scankit.p.C0192pb.a(xVarA.h(), f2, (com.huawei.hms.scankit.p.C0187ob) null);
                return xVarA;
            }
            if (!com.huawei.hms.scankit.p.Bc.f491c && xVarA != null && xVarA.i() == null && xVarA.h().length >= 3) {
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(i, lVar, _aVar, _aVar2, map);
            if (xVarA2 == null) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (0 != 0) {
                xVarA2.a();
                xVarA2.b((com.huawei.hms.scankit.aiscan.common.z[]) null);
            }
            return xVarA2;
        }
    }

    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.p._a _aVar2, com.huawei.hms.scankit.p._a _aVar3, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, com.huawei.hms.scankit.aiscan.common.l lVar, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        return _aVar3 != null ? a(_aVar3, lVar, map, c0187ob) : a(_aVar, _aVar2, lVar, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a r10, com.huawei.hms.scankit.p._a r11, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> r12, com.huawei.hms.scankit.aiscan.common.l r13, com.huawei.hms.scankit.p.C0187ob r14) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        /*
            r9 = this;
            com.huawei.hms.scankit.aiscan.common.d r0 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.PHOTO_MODE
            boolean r0 = r12.containsKey(r0)
            r1 = 2
            float[] r6 = new float[r1]
            r6 = {x0068: FILL_ARRAY_DATA , data: [1065353216, 0} // fill-array
            r1 = 0
            r8 = 1
            if (r11 == 0) goto L1b
            r2 = r9
            r3 = r11
            r4 = r13
            r5 = r12
            r7 = r14
            com.huawei.hms.scankit.aiscan.common.x r11 = r2.a(r3, r4, r5, r6, r7)
        L19:
            r12 = 0
            goto L31
        L1b:
            if (r0 != 0) goto L24
            boolean r11 = com.huawei.hms.scankit.p.Bc.a
            if (r11 != 0) goto L22
            goto L24
        L22:
            r11 = 0
            goto L19
        L24:
            com.huawei.hms.scankit.aiscan.common.x r11 = r9.a(r10, r13, r12, r6)
            r12 = r6[r8]
            r13 = 1065353216(0x3f800000, float:1.0)
            int r12 = (r12 > r13 ? 1 : (r12 == r13 ? 0 : -1))
            if (r12 <= 0) goto L19
            r12 = 1
        L31:
            if (r11 == 0) goto L60
            if (r12 == 0) goto L5f
            com.huawei.hms.scankit.aiscan.common.z[] r12 = r11.h()
            if (r12 == 0) goto L5f
        L3b:
            int r13 = r12.length
            if (r1 >= r13) goto L5f
            r13 = r12[r1]
            if (r13 == 0) goto L5c
            com.huawei.hms.scankit.aiscan.common.z r13 = new com.huawei.hms.scankit.aiscan.common.z
            r14 = r12[r1]
            float r14 = r14.c()
            int r0 = r10.c()
            int r0 = r0 - r8
            float r0 = (float) r0
            r2 = r12[r1]
            float r2 = r2.b()
            float r0 = r0 - r2
            r13.<init>(r14, r0)
            r12[r1] = r13
        L5c:
            int r1 = r1 + 1
            goto L3b
        L5f:
            return r11
        L60:
            com.huawei.hms.scankit.aiscan.common.a r10 = com.huawei.hms.scankit.aiscan.common.C0102a.a()
            goto L66
        L65:
            throw r10
        L66:
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.aiscan.common.o.a(com.huawei.hms.scankit.p._a, com.huawei.hms.scankit.p._a, java.util.Map, com.huawei.hms.scankit.aiscan.common.l, com.huawei.hms.scankit.p.ob):com.huawei.hms.scankit.aiscan.common.x");
    }

    @Override // com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return a(_aVar, a(map), map);
    }

    public com.huawei.hms.scankit.aiscan.common.t[] a(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        java.util.Collection collection = map == null ? null : (java.util.Collection) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (collection != null) {
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0236yb(map));
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0237yc());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0152hb());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC)) {
                arrayList.add(new com.huawei.hms.scankit.p.Va());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417)) {
                arrayList.add(new com.huawei.hms.scankit.p.Xb());
            }
        }
        return (com.huawei.hms.scankit.aiscan.common.t[]) arrayList.toArray(new com.huawei.hms.scankit.aiscan.common.t[arrayList.size()]);
    }
}
