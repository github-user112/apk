package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.pc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0193pc {
    public final com.huawei.hms.scankit.p.C0122bb a;
    public com.huawei.hms.scankit.aiscan.common.A b;

    public C0193pc(com.huawei.hms.scankit.p.C0122bb c0122bb) {
        this.a = c0122bb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0085, code lost:
    
        if (r15 != 2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        return com.huawei.hms.scankit.aiscan.common.n.a(r19, r6, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008e, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float a(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            int r0 = r21 - r19
            int r0 = java.lang.Math.abs(r0)
            int r1 = r20 - r18
            int r1 = java.lang.Math.abs(r1)
            r3 = 1
            if (r0 <= r1) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L1d
            r4 = r18
            r1 = r19
            r6 = r20
            r5 = r21
            goto L25
        L1d:
            r1 = r18
            r4 = r19
            r5 = r20
            r6 = r21
        L25:
            int r7 = r5 - r1
            int r7 = java.lang.Math.abs(r7)
            int r8 = r6 - r4
            int r8 = java.lang.Math.abs(r8)
            int r9 = -r7
            r10 = 2
            int r9 = r9 / r10
            r11 = -1
            if (r1 >= r5) goto L39
            r12 = 1
            goto L3a
        L39:
            r12 = -1
        L3a:
            if (r4 >= r6) goto L3d
            r11 = 1
        L3d:
            int r5 = r5 + r12
            r13 = r1
            r14 = r4
            r15 = 0
        L41:
            if (r13 == r5) goto L80
            if (r0 == 0) goto L47
            r2 = r14
            goto L48
        L47:
            r2 = r13
        L48:
            if (r0 == 0) goto L4c
            r10 = r13
            goto L4d
        L4c:
            r10 = r14
        L4d:
            if (r15 != r3) goto L57
            r3 = r17
            r16 = r0
            r19 = r5
            r0 = 1
            goto L5e
        L57:
            r3 = r17
            r16 = r0
            r19 = r5
            r0 = 0
        L5e:
            com.huawei.hms.scankit.p.bb r5 = r3.a
            boolean r2 = r5.b(r2, r10)
            if (r0 != r2) goto L70
            r0 = 2
            if (r15 != r0) goto L6e
            float r0 = com.huawei.hms.scankit.aiscan.common.n.a(r13, r14, r1, r4)
            return r0
        L6e:
            int r15 = r15 + 1
        L70:
            int r9 = r9 + r8
            if (r9 <= 0) goto L78
            if (r14 != r6) goto L76
            goto L84
        L76:
            int r14 = r14 + r11
            int r9 = r9 - r7
        L78:
            int r13 = r13 + r12
            r5 = r19
            r0 = r16
            r3 = 1
            r10 = 2
            goto L41
        L80:
            r3 = r17
            r19 = r5
        L84:
            r0 = 2
            if (r15 != r0) goto L8e
            r5 = r19
            float r0 = com.huawei.hms.scankit.aiscan.common.n.a(r5, r6, r1, r4)
            return r0
        L8e:
            r0 = 2143289344(0x7fc00000, float:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0193pc.a(int, int, int, int):float");
    }

    private float a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        float fB = b((int) zVar.b(), (int) zVar.c(), (int) zVar2.b(), (int) zVar2.c());
        float fB2 = b((int) zVar2.b(), (int) zVar2.c(), (int) zVar.b(), (int) zVar.c());
        return java.lang.Float.isNaN(fB) ? fB2 / 7.0f : java.lang.Float.isNaN(fB2) ? fB / 7.0f : (fB + fB2) / 14.0f;
    }

    public static int a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, float f2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iA;
        int i;
        try {
            iA = ((com.huawei.hms.scankit.aiscan.common.n.a(com.huawei.hms.scankit.aiscan.common.z.a(zVar, zVar2) / f2) + com.huawei.hms.scankit.aiscan.common.n.a(com.huawei.hms.scankit.aiscan.common.z.a(zVar, zVar3) / f2)) / 2) + 7;
            i = iA & 3;
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            iA = ((((int) (com.huawei.hms.scankit.aiscan.common.z.a(zVar, zVar2) / f2)) + ((int) (com.huawei.hms.scankit.aiscan.common.z.a(zVar, zVar3) / f2))) / 2) + 7;
            int i2 = iA & 3;
            if (i2 != 0) {
                if (i2 != 2) {
                    return i2 != 3 ? iA : iA + 2;
                }
            }
        }
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    return iA;
                }
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            return iA - 1;
        }
        return iA + 1;
    }

    private int a(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2, com.huawei.hms.scankit.p.C0202rc c0202rc3, float f2, int i, com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p._b[] _bVarArr, com.huawei.hms.scankit.p._b[] _bVarArr2, int i2, int i3, com.huawei.hms.scankit.p._b[] _bVarArr3) {
        int i4;
        int i5;
        float fB = c0202rc3.b() + (c0202rc2.b() - c0202rc.b());
        float fC = c0202rc3.c() + (c0202rc2.c() - c0202rc.c());
        float f3 = i3;
        float f4 = 3.0f / f3;
        float f5 = 1.0f - f4;
        int iB = (int) (((fB - c0202rc.b()) * f5) + c0202rc.b());
        int iC = (int) (((fC - c0202rc.c()) * f5) + c0202rc.c());
        if (com.huawei.hms.scankit.p.Bc.q[0] && i3 == 22) {
            i4 = 2;
            i5 = 8;
        } else {
            i4 = 4;
            i5 = 16;
        }
        for (int i6 = i4; i6 <= i5; i6 <<= 1) {
            try {
                _bVarArr3[0] = a(f2, iB, iC, i6);
                break;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            }
        }
        float f6 = i - 6.5f;
        _bVarArr3[1] = new com.huawei.hms.scankit.p._b(f6, f6, c0202rc3.e());
        if (_bVarArr3[0] != null && com.huawei.hms.scankit.aiscan.common.n.a(iB, iC, _bVarArr3[0].b(), _bVarArr3[0].c()) > f2 * 4.0f) {
            _bVarArr3[0] = null;
        }
        if (_bVarArr3[0] == null && i2 > 2) {
            int i7 = i2 - 2;
            _bVarArr3[1] = new com.huawei.hms.scankit.p._b(c0242zc.b()[i7] + 0.5f, f6, c0202rc3.e());
            int iC2 = (int) (c0202rc3.c() - ((c0202rc3.c() - c0202rc.c()) * f4));
            int iB2 = (int) (c0202rc3.b() + ((c0202rc2.b() - c0202rc.b()) * ((c0242zc.b()[i7] - 3.0f) / f3)));
            while (i4 <= i5) {
                try {
                    _bVarArr3[0] = a(f2, iB2, iC2, i4);
                    break;
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                    i4 <<= 1;
                }
            }
            if (_bVarArr3[0] != null && com.huawei.hms.scankit.aiscan.common.n.a(iB2, iC2, _bVarArr3[0].b(), _bVarArr3[0].c()) > f2 * 4.0f) {
                _bVarArr3[0] = null;
            }
        }
        if (com.huawei.hms.scankit.p.Bc.k && com.huawei.hms.scankit.p.Bc.h) {
            return a(c0242zc, i3, c0202rc2, c0202rc, c0202rc3, f2, i2, 0, _bVarArr, _bVarArr2);
        }
        return 0;
    }

    private int a(com.huawei.hms.scankit.p.C0242zc c0242zc, int i, com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2, com.huawei.hms.scankit.p.C0202rc c0202rc3, float f2, int i2, int i3, com.huawei.hms.scankit.p._b[] _bVarArr, com.huawei.hms.scankit.p._b[] _bVarArr2) {
        int i4;
        int i5;
        int i6;
        int i7 = i2;
        int i8 = i3;
        int i9 = 0;
        while (i9 < i7) {
            if (i9 == 0) {
                i4 = i7 - 1;
                i5 = 1;
            } else {
                i4 = i7;
                i5 = 0;
            }
            int i10 = i9 != i7 + (-1) ? i5 : 1;
            float f3 = 3.0f;
            float f4 = i;
            float fB = c0202rc2.b() + (((c0202rc.b() - c0202rc2.b()) * (c0242zc.b()[i9] - 3.0f)) / f4);
            float fC = c0202rc2.c() + (((c0202rc.c() - c0202rc2.c()) * (c0242zc.b()[i9] - 3.0f)) / f4);
            while (i10 < i4) {
                int iC = (int) (fC - (((c0202rc2.c() - c0202rc3.c()) * (c0242zc.b()[i10] - f3)) / f4));
                int iB = (int) (fB - (((c0202rc2.b() - c0202rc3.b()) * (c0242zc.b()[i10] - f3)) / f4));
                int i11 = 4;
                int i12 = 4;
                while (true) {
                    if (i12 > i11) {
                        i6 = i4;
                        break;
                    }
                    int i13 = (i9 * i7) + i10;
                    try {
                        _bVarArr[i13] = a(f2, iB, iC, i12);
                        i6 = i4;
                        try {
                            _bVarArr2[i13] = new com.huawei.hms.scankit.p._b(c0242zc.b()[i9] + 0.5f, c0242zc.b()[i10] + 0.5f, c0202rc3.e());
                            i8++;
                            break;
                        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                            continue;
                        }
                    } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
                        i6 = i4;
                    }
                    i12 <<= 1;
                    i7 = i2;
                    i4 = i6;
                    i11 = 4;
                }
                i10++;
                i7 = i2;
                i4 = i6;
                f3 = 3.0f;
            }
            i9++;
            i7 = i2;
        }
        return i8;
    }

    private com.huawei.hms.scankit.aiscan.common.g a(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2, com.huawei.hms.scankit.p.C0202rc c0202rc3, float f2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p._b[] _bVarArr;
        com.huawei.hms.scankit.p._b[] _bVarArr2;
        com.huawei.hms.scankit.p._b[] _bVarArr3;
        char c2;
        int iA;
        com.huawei.hms.scankit.aiscan.common.q qVar;
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr;
        int iA2 = a((com.huawei.hms.scankit.aiscan.common.z) c0202rc, (com.huawei.hms.scankit.aiscan.common.z) c0202rc2, (com.huawei.hms.scankit.aiscan.common.z) c0202rc3, f2);
        com.huawei.hms.scankit.p.Bc.r.push(java.lang.Integer.valueOf(iA2));
        com.huawei.hms.scankit.p.C0242zc c0242zcB = com.huawei.hms.scankit.p.C0242zc.b(iA2);
        if (com.huawei.hms.scankit.p.Bc.n && com.huawei.hms.scankit.p.Bc.f491c) {
            return a(c0202rc, c0202rc2, c0202rc3, f2, iA2);
        }
        int iC = c0242zcB.c() - 7;
        int length = c0242zcB.b().length;
        int i = length * length;
        com.huawei.hms.scankit.p._b[] _bVarArr4 = new com.huawei.hms.scankit.p._b[i];
        com.huawei.hms.scankit.p._b[] _bVarArr5 = new com.huawei.hms.scankit.p._b[i];
        com.huawei.hms.scankit.p._b[] _bVarArr6 = new com.huawei.hms.scankit.p._b[2];
        if (c0242zcB.b().length > 0) {
            _bVarArr = _bVarArr6;
            c2 = 2;
            _bVarArr2 = _bVarArr5;
            _bVarArr3 = _bVarArr4;
            iA = a(c0202rc, c0202rc2, c0202rc3, f2, iA2, c0242zcB, _bVarArr4, _bVarArr5, length, iC, _bVarArr);
        } else {
            _bVarArr = _bVarArr6;
            _bVarArr2 = _bVarArr5;
            _bVarArr3 = _bVarArr4;
            c2 = 2;
            iA = 0;
        }
        com.huawei.hms.scankit.p._b _bVar = _bVarArr[0];
        com.huawei.hms.scankit.aiscan.common.q qVarA = a(c0202rc, c0202rc2, c0202rc3, _bVar, _bVarArr[1], iA2);
        if (com.huawei.hms.scankit.p.Bc.k && com.huawei.hms.scankit.p.Bc.h) {
            qVar = qVarA;
            a(qVarA, length, iA2, c0202rc, c0202rc2, c0202rc3, _bVarArr3, iA, _bVarArr2);
        } else {
            qVar = qVarA;
        }
        com.huawei.hms.scankit.p.C0122bb c0122bbA = a(this.a, qVar, iA2);
        if (_bVar == null) {
            zVarArr = new com.huawei.hms.scankit.aiscan.common.z[3];
            zVarArr[0] = c0202rc3;
            zVarArr[1] = c0202rc;
            zVarArr[c2] = c0202rc2;
        } else {
            zVarArr = new com.huawei.hms.scankit.aiscan.common.z[4];
            zVarArr[0] = c0202rc3;
            zVarArr[1] = c0202rc;
            zVarArr[c2] = c0202rc2;
            zVarArr[3] = _bVar;
        }
        float[] fArr = new float[8];
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f3 = iA2;
        fArr[c2] = f3;
        fArr[3] = 0.0f;
        fArr[4] = f3;
        fArr[5] = f3;
        fArr[6] = 0.0f;
        fArr[7] = f3;
        qVar.a(fArr);
        com.huawei.hms.scankit.aiscan.common.z zVar = new com.huawei.hms.scankit.aiscan.common.z(fArr[0], fArr[1], c0202rc.d());
        com.huawei.hms.scankit.aiscan.common.z zVar2 = new com.huawei.hms.scankit.aiscan.common.z(fArr[c2], fArr[3], c0202rc2.d());
        com.huawei.hms.scankit.aiscan.common.z zVar3 = new com.huawei.hms.scankit.aiscan.common.z(fArr[4], fArr[5], c0202rc3.d());
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr2 = new com.huawei.hms.scankit.aiscan.common.z[4];
        zVarArr2[0] = a(new com.huawei.hms.scankit.aiscan.common.z(fArr[6], fArr[7]));
        zVarArr2[1] = a(zVar);
        zVarArr2[c2] = a(zVar2);
        zVarArr2[3] = a(zVar3);
        return new com.huawei.hms.scankit.aiscan.common.g(c0122bbA, zVarArr, zVarArr2, f2);
    }

    private com.huawei.hms.scankit.aiscan.common.g a(com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2, com.huawei.hms.scankit.p.C0202rc c0202rc3, float f2, int i) {
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(i, i);
        float f3 = i;
        float fB = this.a.b() / f3;
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                double d2 = i3 * fB;
                double d3 = fB;
                java.lang.Double.isNaN(d3);
                double d4 = d3 * 0.5d;
                java.lang.Double.isNaN(d2);
                int i4 = (int) (d2 + d4);
                double d5 = i2 * fB;
                java.lang.Double.isNaN(d5);
                int i5 = (int) (d5 + d4);
                if (i4 < -1 || i4 > this.a.d() || i5 < -1 || i5 > this.a.b() || this.a.b(i4, i5)) {
                    c0122bb.c(i3, i2);
                }
            }
        }
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr = {c0202rc3, c0202rc, c0202rc2};
        float[] fArr = {0.0f, 0.0f, f3, 0.0f, f3, f3, 0.0f, f3};
        a(c0202rc, c0202rc2, c0202rc3, null, null, i).a(fArr);
        return new com.huawei.hms.scankit.aiscan.common.g(c0122bb, zVarArr, new com.huawei.hms.scankit.aiscan.common.z[]{a(new com.huawei.hms.scankit.aiscan.common.z(fArr[6], fArr[7])), a(new com.huawei.hms.scankit.aiscan.common.z(fArr[0], fArr[1])), a(new com.huawei.hms.scankit.aiscan.common.z(fArr[2], fArr[3])), a(new com.huawei.hms.scankit.aiscan.common.z(fArr[4], fArr[5]))}, f2);
    }

    public static com.huawei.hms.scankit.aiscan.common.q a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, com.huawei.hms.scankit.aiscan.common.z zVar4, com.huawei.hms.scankit.aiscan.common.z zVar5, int i) {
        float fB;
        float fC;
        float fB2;
        float fC2;
        float f2 = i - 3.5f;
        if (zVar4 != null) {
            float fB3 = zVar4.b();
            fB = fB3;
            fC = zVar4.c();
            fB2 = zVar5.b();
            fC2 = zVar5.c();
        } else {
            fB = zVar3.b() + (zVar2.b() - zVar.b());
            fC = zVar3.c() + (zVar2.c() - zVar.c());
            fB2 = f2;
            fC2 = fB2;
        }
        return com.huawei.hms.scankit.aiscan.common.q.a(3.5f, 3.5f, f2, 3.5f, fB2, fC2, 3.5f, f2, zVar.b(), zVar.c(), zVar2.b(), zVar2.c(), fB, fC, zVar3.b(), zVar3.c());
    }

    private com.huawei.hms.scankit.aiscan.common.z a(com.huawei.hms.scankit.aiscan.common.z zVar) {
        float fB = zVar.b();
        float fC = zVar.c();
        int iD = this.a.d() - 1;
        int iB = this.a.b() - 1;
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        float f2 = iD;
        if (fB > f2) {
            fB = f2;
        }
        if (fC < 0.0f) {
            fC = 0.0f;
        }
        float f3 = iB;
        if (fC > f3) {
            fC = f3;
        }
        return new com.huawei.hms.scankit.aiscan.common.z(fB, fC, zVar.d());
    }

    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.q qVar, int i) {
        return com.huawei.hms.scankit.aiscan.common.j.a().a(c0122bb, i, i, qVar, true);
    }

    private void a(com.huawei.hms.scankit.aiscan.common.q qVar, int i, int i2, com.huawei.hms.scankit.p.C0202rc c0202rc, com.huawei.hms.scankit.p.C0202rc c0202rc2, com.huawei.hms.scankit.p.C0202rc c0202rc3, com.huawei.hms.scankit.p._b[] _bVarArr, int i3, com.huawei.hms.scankit.p._b[] _bVarArr2) {
        int i4 = i3 + 3;
        int i5 = i4 * 2;
        float[] fArr = new float[i5];
        float[] fArr2 = new float[i5];
        fArr[0] = c0202rc.b();
        fArr[1] = c0202rc.c();
        fArr[2] = c0202rc2.b();
        fArr[3] = c0202rc2.c();
        fArr[4] = c0202rc3.b();
        fArr[5] = c0202rc3.c();
        fArr2[0] = 3.5f;
        fArr2[1] = 3.5f;
        float f2 = i2 - 3.5f;
        fArr2[2] = f2;
        fArr2[3] = 3.5f;
        fArr2[4] = 3.5f;
        fArr2[5] = f2;
        int i6 = 6;
        int i7 = 6;
        for (int i8 = 0; i8 < i * i; i8++) {
            if (_bVarArr[i8] != null) {
                int i9 = i6 + 1;
                fArr[i6] = _bVarArr[i8].b();
                i6 = i9 + 1;
                fArr[i9] = _bVarArr[i8].c();
                int i10 = i7 + 1;
                fArr2[i7] = _bVarArr2[i8].b();
                i7 = i10 + 1;
                fArr2[i10] = _bVarArr2[i8].c();
            }
        }
        float[] fArrQuadFitting = com.huawei.hms.scankit.util.LoadOpencvJNIUtil.QuadFitting(fArr2, i4, fArr);
        if (fArrQuadFitting.length != 0) {
            qVar.a(fArrQuadFitting[0], fArrQuadFitting[1], fArrQuadFitting[2], fArrQuadFitting[3], fArrQuadFitting[4], fArrQuadFitting[5], fArrQuadFitting[6], fArrQuadFitting[7], fArrQuadFitting[8], fArrQuadFitting[9], fArrQuadFitting[10], fArrQuadFitting[11], fArrQuadFitting[12], fArrQuadFitting[13]);
        }
    }

    private float b(int i, int i2, int i3, int i4) {
        float fD;
        float fB;
        float fA = a(i, i2, i3, i4);
        int iD = i - (i3 - i);
        int iB = 0;
        if (iD < 0) {
            fD = i / (i - iD);
            iD = 0;
        } else if (iD >= this.a.d()) {
            fD = ((this.a.d() - 1) - i) / (iD - i);
            iD = this.a.d() - 1;
        } else {
            fD = 1.0f;
        }
        float f2 = i2;
        int i5 = (int) (f2 - ((i4 - i2) * fD));
        if (i5 < 0) {
            fB = f2 / (i2 - i5);
        } else if (i5 >= this.a.b()) {
            fB = ((this.a.b() - 1) - i2) / (i5 - i2);
            iB = this.a.b() - 1;
        } else {
            iB = i5;
            fB = 1.0f;
        }
        float fA2 = a(i, i2, (int) (((iD - i) * fB) + i), iB);
        double dMax = java.lang.Math.max(fA, fA2);
        double dMin = java.lang.Math.min(fA, fA2);
        java.lang.Double.isNaN(dMin);
        if (dMax > dMin * 1.5d) {
            return Float.NaN;
        }
        return (fA + fA2) - 1.0f;
    }

    public final float a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3) {
        return (a(zVar, zVar2) + a(zVar, zVar3)) / 2.0f;
    }

    public final com.huawei.hms.scankit.aiscan.common.g a(com.huawei.hms.scankit.p.C0217uc c0217uc) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0202rc c0202rcB = c0217uc.b();
        com.huawei.hms.scankit.p.C0202rc c0202rcC = c0217uc.c();
        com.huawei.hms.scankit.p.C0202rc c0202rcA = c0217uc.a();
        try {
            float fA = a(c0202rcB, c0202rcC, c0202rcA);
            if (fA >= 1.0f) {
                return a(c0202rcB, c0202rcC, c0202rcA, fA);
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            float fE = (c0202rcA.e() + (c0202rcC.e() + c0202rcB.e())) / 3.0f;
            if (fE >= 1.0f) {
                return a(c0202rcB, c0202rcC, c0202rcA, fE);
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public final com.huawei.hms.scankit.aiscan.common.g a(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        this.b = map == null ? null : (com.huawei.hms.scankit.aiscan.common.A) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK);
        return a(new com.huawei.hms.scankit.p.C0212tc(this.a, this.b).a());
    }

    public final com.huawei.hms.scankit.p._b a(float f2, int i, int i2, float f3) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i3 = (int) (f3 * f2);
        int iMax = java.lang.Math.max(0, i - i3);
        int iMin = java.lang.Math.min(this.a.d() - 1, i + i3) - iMax;
        float f4 = 3.0f * f2;
        if (iMin < f4) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int iMax2 = java.lang.Math.max(0, i2 - i3);
        int iMin2 = java.lang.Math.min(this.a.b() - 1, i2 + i3) - iMax2;
        if (iMin2 >= f4) {
            return new com.huawei.hms.scankit.p.C0118ac(this.a, iMax, iMax2, iMin, iMin2, f2, this.b).a();
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }
}
