package d.g.g;

/* loaded from: classes.dex */
public class c {
    public char a;
    public float[] b;

    public c(char c2, float[] fArr) {
        this.a = c2;
        this.b = fArr;
    }

    public c(d.g.g.c cVar) {
        this.a = cVar.a;
        float[] fArr = cVar.b;
        this.b = d.b.k.r.m(fArr, 0, fArr.length);
    }

    public static void a(android.graphics.Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
        double d2;
        double d3;
        double radians = java.lang.Math.toRadians(f8);
        double dCos = java.lang.Math.cos(radians);
        double dSin = java.lang.Math.sin(radians);
        double d4 = f2;
        java.lang.Double.isNaN(d4);
        double d5 = f3;
        java.lang.Double.isNaN(d5);
        double d6 = (d5 * dSin) + (d4 * dCos);
        double d7 = d4;
        double d8 = f6;
        java.lang.Double.isNaN(d8);
        double d9 = d6 / d8;
        double d10 = -f2;
        java.lang.Double.isNaN(d10);
        java.lang.Double.isNaN(d5);
        double d11 = (d5 * dCos) + (d10 * dSin);
        double d12 = f7;
        java.lang.Double.isNaN(d12);
        double d13 = d11 / d12;
        double d14 = d5;
        double d15 = f4;
        java.lang.Double.isNaN(d15);
        double d16 = f5;
        java.lang.Double.isNaN(d16);
        java.lang.Double.isNaN(d8);
        double d17 = ((d16 * dSin) + (d15 * dCos)) / d8;
        double d18 = -f4;
        java.lang.Double.isNaN(d18);
        java.lang.Double.isNaN(d16);
        java.lang.Double.isNaN(d12);
        double d19 = ((d16 * dCos) + (d18 * dSin)) / d12;
        double d20 = d9 - d17;
        double d21 = d13 - d19;
        double d22 = (d9 + d17) / 2.0d;
        double d23 = (d13 + d19) / 2.0d;
        double d24 = (d21 * d21) + (d20 * d20);
        if (d24 == 0.0d) {
            android.util.Log.w("PathParser", " Points are coincident");
            return;
        }
        double d25 = (1.0d / d24) - 0.25d;
        if (d25 < 0.0d) {
            android.util.Log.w("PathParser", "Points are too far apart " + d24);
            float fSqrt = (float) (java.lang.Math.sqrt(d24) / 1.99999d);
            a(path, f2, f3, f4, f5, f6 * fSqrt, f7 * fSqrt, f8, z, z2);
            return;
        }
        double dSqrt = java.lang.Math.sqrt(d25);
        double d26 = d20 * dSqrt;
        double d27 = dSqrt * d21;
        if (z == z2) {
            d2 = d22 - d27;
            d3 = d23 + d26;
        } else {
            d2 = d22 + d27;
            d3 = d23 - d26;
        }
        double dAtan2 = java.lang.Math.atan2(d13 - d3, d9 - d2);
        double dAtan22 = java.lang.Math.atan2(d19 - d3, d17 - d2) - dAtan2;
        int i = 0;
        if (z2 != (dAtan22 >= 0.0d)) {
            dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
        }
        java.lang.Double.isNaN(d8);
        double d28 = d2 * d8;
        java.lang.Double.isNaN(d12);
        double d29 = d3 * d12;
        double d30 = (d28 * dCos) - (d29 * dSin);
        double d31 = (d29 * dCos) + (d28 * dSin);
        int iCeil = (int) java.lang.Math.ceil(java.lang.Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
        double dCos2 = java.lang.Math.cos(radians);
        double dSin2 = java.lang.Math.sin(radians);
        double dCos3 = java.lang.Math.cos(dAtan2);
        double dSin3 = java.lang.Math.sin(dAtan2);
        java.lang.Double.isNaN(d8);
        double d32 = -d8;
        double d33 = d32 * dCos2;
        java.lang.Double.isNaN(d12);
        double d34 = d12 * dSin2;
        double d35 = (d33 * dSin3) - (d34 * dCos3);
        double d36 = d32 * dSin2;
        java.lang.Double.isNaN(d12);
        double d37 = d12 * dCos2;
        double d38 = (dCos3 * d37) + (dSin3 * d36);
        double d39 = iCeil;
        java.lang.Double.isNaN(d39);
        java.lang.Double.isNaN(d39);
        double d40 = dAtan22 / d39;
        double d41 = dAtan2;
        while (i < iCeil) {
            double d42 = d41 + d40;
            double dSin4 = java.lang.Math.sin(d42);
            double dCos4 = java.lang.Math.cos(d42);
            java.lang.Double.isNaN(d8);
            double d43 = d40;
            double d44 = (((d8 * dCos2) * dCos4) + d30) - (d34 * dSin4);
            java.lang.Double.isNaN(d8);
            double d45 = d30;
            double d46 = (d37 * dSin4) + (d8 * dSin2 * dCos4) + d31;
            double d47 = (d33 * dSin4) - (d34 * dCos4);
            double d48 = (dCos4 * d37) + (dSin4 * d36);
            double d49 = d42 - d41;
            double dTan = java.lang.Math.tan(d49 / 2.0d);
            double dSqrt2 = ((java.lang.Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * java.lang.Math.sin(d49)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d35 * dSqrt2) + d7), (float) ((d38 * dSqrt2) + d14), (float) (d44 - (dSqrt2 * d47)), (float) (d46 - (dSqrt2 * d48)), (float) d44, (float) d46);
            i++;
            d37 = d37;
            d36 = d36;
            iCeil = iCeil;
            dCos2 = dCos2;
            d41 = d42;
            d8 = d8;
            d38 = d48;
            d35 = d47;
            d7 = d44;
            d14 = d46;
            d40 = d43;
            d30 = d45;
        }
    }

    public static void b(d.g.g.c[] cVarArr, android.graphics.Path path) {
        int i;
        int i2;
        float[] fArr;
        char c2;
        int i3;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        d.g.g.c[] cVarArr2 = cVarArr;
        float[] fArr2 = new float[6];
        char c3 = 'm';
        char c4 = 0;
        char c5 = 'm';
        int i4 = 0;
        while (i4 < cVarArr2.length) {
            char c6 = cVarArr2[i4].a;
            float[] fArr3 = cVarArr2[i4].b;
            float f21 = fArr2[c4];
            float f22 = fArr2[1];
            float f23 = fArr2[2];
            float f24 = fArr2[3];
            float f25 = fArr2[4];
            float f26 = fArr2[5];
            switch (c6) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f25, f26);
                    f21 = f25;
                    f23 = f21;
                    f22 = f26;
                    f24 = f22;
                default:
                    i = 2;
                    break;
            }
            float f27 = f25;
            float f28 = f26;
            float f29 = f21;
            float f30 = f22;
            int i5 = 0;
            while (i5 < fArr3.length) {
                if (c6 != 'A') {
                    if (c6 != 'C') {
                        if (c6 == 'H') {
                            i2 = i5;
                            fArr = fArr3;
                            c2 = c6;
                            i3 = i4;
                            int i6 = i2 + 0;
                            path.lineTo(fArr[i6], f30);
                            f29 = fArr[i6];
                        } else if (c6 == 'Q') {
                            i2 = i5;
                            fArr = fArr3;
                            c2 = c6;
                            i3 = i4;
                            int i7 = i2 + 0;
                            int i8 = i2 + 1;
                            int i9 = i2 + 2;
                            int i10 = i2 + 3;
                            path.quadTo(fArr[i7], fArr[i8], fArr[i9], fArr[i10]);
                            f2 = fArr[i7];
                            f3 = fArr[i8];
                            f29 = fArr[i9];
                            f30 = fArr[i10];
                        } else if (c6 == 'V') {
                            i2 = i5;
                            fArr = fArr3;
                            c2 = c6;
                            i3 = i4;
                            int i11 = i2 + 0;
                            path.lineTo(f29, fArr[i11]);
                            f30 = fArr[i11];
                        } else if (c6 != 'a') {
                            if (c6 != 'c') {
                                if (c6 == 'h') {
                                    i2 = i5;
                                    int i12 = i2 + 0;
                                    path.rLineTo(fArr3[i12], 0.0f);
                                    f29 += fArr3[i12];
                                } else if (c6 != 'q') {
                                    if (c6 == 'v') {
                                        i2 = i5;
                                        f11 = f30;
                                        int i13 = i2 + 0;
                                        path.rLineTo(0.0f, fArr3[i13]);
                                        f12 = fArr3[i13];
                                    } else if (c6 == 'L') {
                                        i2 = i5;
                                        int i14 = i2 + 0;
                                        int i15 = i2 + 1;
                                        path.lineTo(fArr3[i14], fArr3[i15]);
                                        f29 = fArr3[i14];
                                        f30 = fArr3[i15];
                                    } else if (c6 == 'M') {
                                        i2 = i5;
                                        int i16 = i2 + 0;
                                        float f31 = fArr3[i16];
                                        int i17 = i2 + 1;
                                        float f32 = fArr3[i17];
                                        if (i2 > 0) {
                                            path.lineTo(fArr3[i16], fArr3[i17]);
                                            f29 = f31;
                                            f30 = f32;
                                        } else {
                                            path.moveTo(fArr3[i16], fArr3[i17]);
                                            f27 = f31;
                                            f28 = f32;
                                            f29 = f27;
                                            f30 = f28;
                                        }
                                    } else if (c6 == 'S') {
                                        i2 = i5;
                                        float f33 = f30;
                                        float f34 = f29;
                                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                            f13 = (f33 * 2.0f) - f24;
                                            f14 = (f34 * 2.0f) - f23;
                                        } else {
                                            f14 = f34;
                                            f13 = f33;
                                        }
                                        int i18 = i2 + 0;
                                        int i19 = i2 + 1;
                                        int i20 = i2 + 2;
                                        int i21 = i2 + 3;
                                        path.cubicTo(f14, f13, fArr3[i18], fArr3[i19], fArr3[i20], fArr3[i21]);
                                        float f35 = fArr3[i18];
                                        float f36 = fArr3[i19];
                                        f10 = fArr3[i20];
                                        f9 = fArr3[i21];
                                        f23 = f35;
                                        f24 = f36;
                                        f29 = f10;
                                        f30 = f9;
                                    } else if (c6 == 'T') {
                                        i2 = i5;
                                        float f37 = f30;
                                        float f38 = f29;
                                        if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                            f15 = (f38 * 2.0f) - f23;
                                            f16 = (f37 * 2.0f) - f24;
                                        } else {
                                            f15 = f38;
                                            f16 = f37;
                                        }
                                        int i22 = i2 + 0;
                                        int i23 = i2 + 1;
                                        path.quadTo(f15, f16, fArr3[i22], fArr3[i23]);
                                        f24 = f16;
                                        f23 = f15;
                                        fArr = fArr3;
                                        c2 = c6;
                                        i3 = i4;
                                        f29 = fArr3[i22];
                                        f30 = fArr3[i23];
                                    } else if (c6 == 'l') {
                                        i2 = i5;
                                        f11 = f30;
                                        int i24 = i2 + 0;
                                        int i25 = i2 + 1;
                                        path.rLineTo(fArr3[i24], fArr3[i25]);
                                        f29 += fArr3[i24];
                                        f12 = fArr3[i25];
                                    } else if (c6 == c3) {
                                        i2 = i5;
                                        int i26 = i2 + 0;
                                        f29 += fArr3[i26];
                                        int i27 = i2 + 1;
                                        f30 += fArr3[i27];
                                        if (i2 > 0) {
                                            path.rLineTo(fArr3[i26], fArr3[i27]);
                                        } else {
                                            path.rMoveTo(fArr3[i26], fArr3[i27]);
                                            f28 = f30;
                                            f27 = f29;
                                            f29 = f27;
                                            f30 = f28;
                                        }
                                    } else if (c6 != 's') {
                                        if (c6 == 't') {
                                            if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                                f19 = f29 - f23;
                                                f20 = f30 - f24;
                                            } else {
                                                f20 = 0.0f;
                                                f19 = 0.0f;
                                            }
                                            int i28 = i5 + 0;
                                            int i29 = i5 + 1;
                                            path.rQuadTo(f19, f20, fArr3[i28], fArr3[i29]);
                                            float f39 = f19 + f29;
                                            float f40 = f20 + f30;
                                            f29 += fArr3[i28];
                                            f30 += fArr3[i29];
                                            f24 = f40;
                                            f23 = f39;
                                        }
                                        i2 = i5;
                                    } else {
                                        if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                            f17 = f30 - f24;
                                            f18 = f29 - f23;
                                        } else {
                                            f18 = 0.0f;
                                            f17 = 0.0f;
                                        }
                                        int i30 = i5 + 0;
                                        int i31 = i5 + 1;
                                        int i32 = i5 + 2;
                                        int i33 = i5 + 3;
                                        i2 = i5;
                                        f4 = f30;
                                        float f41 = f29;
                                        path.rCubicTo(f18, f17, fArr3[i30], fArr3[i31], fArr3[i32], fArr3[i33]);
                                        f5 = fArr3[i30] + f41;
                                        f6 = fArr3[i31] + f4;
                                        f7 = f41 + fArr3[i32];
                                        f8 = fArr3[i33];
                                    }
                                    f30 = f11 + f12;
                                } else {
                                    i2 = i5;
                                    f4 = f30;
                                    float f42 = f29;
                                    int i34 = i2 + 0;
                                    int i35 = i2 + 1;
                                    int i36 = i2 + 2;
                                    int i37 = i2 + 3;
                                    path.rQuadTo(fArr3[i34], fArr3[i35], fArr3[i36], fArr3[i37]);
                                    f5 = fArr3[i34] + f42;
                                    f6 = fArr3[i35] + f4;
                                    float f43 = f42 + fArr3[i36];
                                    float f44 = fArr3[i37];
                                    f7 = f43;
                                    f8 = f44;
                                }
                                fArr = fArr3;
                                c2 = c6;
                                i3 = i4;
                            } else {
                                i2 = i5;
                                f4 = f30;
                                float f45 = f29;
                                int i38 = i2 + 2;
                                int i39 = i2 + 3;
                                int i40 = i2 + 4;
                                int i41 = i2 + 5;
                                path.rCubicTo(fArr3[i2 + 0], fArr3[i2 + 1], fArr3[i38], fArr3[i39], fArr3[i40], fArr3[i41]);
                                f5 = fArr3[i38] + f45;
                                f6 = fArr3[i39] + f4;
                                f7 = f45 + fArr3[i40];
                                f8 = fArr3[i41];
                            }
                            f9 = f4 + f8;
                            f23 = f5;
                            f24 = f6;
                            f10 = f7;
                            f29 = f10;
                            f30 = f9;
                            fArr = fArr3;
                            c2 = c6;
                            i3 = i4;
                        } else {
                            i2 = i5;
                            float f46 = f30;
                            float f47 = f29;
                            int i42 = i2 + 5;
                            int i43 = i2 + 6;
                            fArr = fArr3;
                            c2 = c6;
                            i3 = i4;
                            a(path, f47, f46, fArr3[i42] + f47, fArr3[i43] + f46, fArr3[i2 + 0], fArr3[i2 + 1], fArr3[i2 + 2], fArr3[i2 + 3] != 0.0f, fArr3[i2 + 4] != 0.0f);
                            f29 = f47 + fArr[i42];
                            f30 = f46 + fArr[i43];
                        }
                        i5 = i2 + i;
                        c5 = c2;
                        c6 = c5;
                        fArr3 = fArr;
                        i4 = i3;
                        c3 = 'm';
                    } else {
                        i2 = i5;
                        fArr = fArr3;
                        c2 = c6;
                        i3 = i4;
                        int i44 = i2 + 2;
                        int i45 = i2 + 3;
                        int i46 = i2 + 4;
                        int i47 = i2 + 5;
                        path.cubicTo(fArr[i2 + 0], fArr[i2 + 1], fArr[i44], fArr[i45], fArr[i46], fArr[i47]);
                        float f48 = fArr[i46];
                        float f49 = fArr[i47];
                        f2 = fArr[i44];
                        f29 = f48;
                        f30 = f49;
                        f3 = fArr[i45];
                    }
                    f23 = f2;
                    f24 = f3;
                    i5 = i2 + i;
                    c5 = c2;
                    c6 = c5;
                    fArr3 = fArr;
                    i4 = i3;
                    c3 = 'm';
                } else {
                    i2 = i5;
                    fArr = fArr3;
                    c2 = c6;
                    i3 = i4;
                    int i48 = i2 + 5;
                    int i49 = i2 + 6;
                    a(path, f29, f30, fArr[i48], fArr[i49], fArr[i2 + 0], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != 0.0f, fArr[i2 + 4] != 0.0f);
                    f29 = fArr[i48];
                    f30 = fArr[i49];
                }
                f24 = f30;
                f23 = f29;
                i5 = i2 + i;
                c5 = c2;
                c6 = c5;
                fArr3 = fArr;
                i4 = i3;
                c3 = 'm';
            }
            int i50 = i4;
            fArr2[0] = f29;
            fArr2[1] = f30;
            fArr2[2] = f23;
            fArr2[3] = f24;
            fArr2[4] = f27;
            fArr2[5] = f28;
            i4 = i50 + 1;
            c5 = cVarArr[i50].a;
            c3 = 'm';
            c4 = 0;
            cVarArr2 = cVarArr;
        }
    }
}
