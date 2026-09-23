package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public final class RyuDouble {
    public static final int[][] POW5_SPLIT = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 326, 4);
    public static final int[][] POW5_INV_SPLIT = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 291, 4);

    static {
        java.math.BigInteger bigIntegerSubtract = java.math.BigInteger.ONE.shiftLeft(31).subtract(java.math.BigInteger.ONE);
        java.math.BigInteger bigIntegerSubtract2 = java.math.BigInteger.ONE.shiftLeft(31).subtract(java.math.BigInteger.ONE);
        int i = 0;
        while (i < 326) {
            java.math.BigInteger bigIntegerPow = java.math.BigInteger.valueOf(5L).pow(i);
            int iBitLength = bigIntegerPow.bitLength();
            int i2 = i == 0 ? 1 : (int) ((((i * 23219280) + 10000000) - 1) / 10000000);
            if (i2 != iBitLength) {
                throw new java.lang.IllegalStateException(iBitLength + " != " + i2);
            }
            if (i < POW5_SPLIT.length) {
                for (int i3 = 0; i3 < 4; i3++) {
                    POW5_SPLIT[i][i3] = bigIntegerPow.shiftRight(((3 - i3) * 31) + (iBitLength - 121)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i < POW5_INV_SPLIT.length) {
                java.math.BigInteger bigIntegerAdd = java.math.BigInteger.ONE.shiftLeft(iBitLength + 121).divide(bigIntegerPow).add(java.math.BigInteger.ONE);
                for (int i4 = 0; i4 < 4; i4++) {
                    int[][] iArr = POW5_INV_SPLIT;
                    if (i4 == 0) {
                        iArr[i][i4] = bigIntegerAdd.shiftRight((3 - i4) * 31).intValue();
                    } else {
                        iArr[i][i4] = bigIntegerAdd.shiftRight((3 - i4) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i++;
        }
    }

    public static int toString(double d2, char[] cArr, int i) {
        int i2;
        boolean z;
        boolean z2;
        long j;
        long j2;
        int i3;
        boolean z3;
        boolean z4;
        long j3;
        long j4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z5;
        int i9;
        int i10;
        int i11;
        int i12;
        if (!java.lang.Double.isNaN(d2)) {
            if (d2 == Double.POSITIVE_INFINITY) {
                int i13 = i + 1;
                cArr[i] = 'I';
                int i14 = i13 + 1;
                cArr[i13] = 'n';
                int i15 = i14 + 1;
                cArr[i14] = 'f';
                int i16 = i15 + 1;
                cArr[i15] = 'i';
                int i17 = i16 + 1;
                cArr[i16] = 'n';
                int i18 = i17 + 1;
                cArr[i17] = 'i';
                int i19 = i18 + 1;
                cArr[i18] = 't';
                i8 = i19 + 1;
                cArr[i19] = 'y';
            } else if (d2 == Double.NEGATIVE_INFINITY) {
                int i20 = i + 1;
                cArr[i] = '-';
                int i21 = i20 + 1;
                cArr[i20] = 'I';
                int i22 = i21 + 1;
                cArr[i21] = 'n';
                int i23 = i22 + 1;
                cArr[i22] = 'f';
                int i24 = i23 + 1;
                cArr[i23] = 'i';
                int i25 = i24 + 1;
                cArr[i24] = 'n';
                int i26 = i25 + 1;
                cArr[i25] = 'i';
                int i27 = i26 + 1;
                cArr[i26] = 't';
                i12 = i27 + 1;
                cArr[i27] = 'y';
            } else {
                long jDoubleToLongBits = java.lang.Double.doubleToLongBits(d2);
                if (jDoubleToLongBits == 0) {
                    int i28 = i + 1;
                    cArr[i] = '0';
                    int i29 = i28 + 1;
                    cArr[i28] = '.';
                    i12 = i29 + 1;
                    cArr[i29] = '0';
                } else if (jDoubleToLongBits == Long.MIN_VALUE) {
                    int i30 = i + 1;
                    cArr[i] = '-';
                    int i31 = i30 + 1;
                    cArr[i30] = '0';
                    int i32 = i31 + 1;
                    cArr[i31] = '.';
                    i8 = i32 + 1;
                    cArr[i32] = '0';
                } else {
                    int i33 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                    long j5 = 4503599627370495L & jDoubleToLongBits;
                    if (i33 == 0) {
                        i2 = -1074;
                    } else {
                        i2 = (i33 - 1023) - 52;
                        j5 |= 4503599627370496L;
                    }
                    boolean z6 = jDoubleToLongBits < 0;
                    boolean z7 = (j5 & 1) == 0;
                    long j6 = 4 * j5;
                    long j7 = 2 + j6;
                    int i34 = (j5 != 4503599627370496L || i33 <= 1) ? 1 : 0;
                    long j8 = (j6 - 1) - i34;
                    int i35 = i2 - 2;
                    int i36 = 3;
                    if (i35 >= 0) {
                        int iMax = java.lang.Math.max(0, ((int) ((i35 * 3010299) / 10000000)) - 1);
                        int i37 = ((((-i35) + iMax) + (((iMax == 0 ? 1 : (int) ((((iMax * 23219280) + 10000000) - 1) / 10000000)) + 122) - 1)) - 93) - 21;
                        if (i37 < 0) {
                            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("", i37));
                        }
                        int[] iArr = POW5_INV_SPLIT[iMax];
                        long j9 = j6 >>> 31;
                        long j10 = j6 & 2147483647L;
                        z = z6;
                        z2 = z7;
                        long j11 = iArr[0] * j10;
                        long j12 = iArr[1] * j9;
                        long j13 = iArr[1] * j10;
                        long j14 = ((((((((((((j10 * iArr[3]) >>> 31) + (iArr[2] * j10)) + (iArr[3] * j9)) >>> 31) + j13) + (iArr[2] * j9)) >>> 31) + j11) + j12) >>> 21) + ((iArr[0] * j9) << 10)) >>> i37;
                        long j15 = j7 >>> 31;
                        long j16 = j7 & 2147483647L;
                        long j17 = iArr[0] * j16;
                        long j18 = iArr[1] * j15;
                        long j19 = iArr[1] * j16;
                        long j20 = ((((((((((((iArr[3] * j16) >>> 31) + (iArr[2] * j16)) + (j15 * iArr[3])) >>> 31) + j19) + (iArr[2] * j15)) >>> 31) + j17) + j18) >>> 21) + ((iArr[0] * j15) << 10)) >>> i37;
                        long j21 = j8 >>> 31;
                        long j22 = j8 & 2147483647L;
                        long j23 = iArr[0] * j22;
                        long j24 = iArr[1] * j21;
                        long j25 = iArr[1] * j22;
                        j2 = ((((((((((((j22 * iArr[3]) >>> 31) + (iArr[2] * j22)) + (j21 * iArr[3])) >>> 31) + j25) + (iArr[2] * j21)) >>> 31) + j23) + j24) >>> 21) + ((iArr[0] * j21) << 10)) >>> i37;
                        i3 = iMax;
                        if (i3 <= 21) {
                            long j26 = j6 % 5;
                            if (j26 == 0) {
                                if (j26 != 0) {
                                    i11 = 0;
                                } else if (j6 % 25 != 0) {
                                    i11 = 1;
                                } else if (j6 % 125 != 0) {
                                    i11 = 2;
                                } else if (j6 % 625 != 0) {
                                    i11 = 3;
                                } else {
                                    long j27 = j6 / 625;
                                    i11 = 4;
                                    for (long j28 = 0; j27 > j28 && j27 % 5 == j28; j28 = 0) {
                                        j27 /= 5;
                                        i11++;
                                    }
                                }
                                z4 = i11 >= i3;
                                z3 = false;
                                j3 = j20;
                                j = j14;
                            } else {
                                if (z2) {
                                    if (j8 % 5 != 0) {
                                        i10 = 0;
                                    } else if (j8 % 25 != 0) {
                                        i10 = 1;
                                    } else if (j8 % 125 != 0) {
                                        i10 = 2;
                                    } else if (j8 % 625 != 0) {
                                        i10 = 3;
                                    } else {
                                        long j29 = j8 / 625;
                                        i10 = 4;
                                        for (long j30 = 0; j29 > j30 && j29 % 5 == j30; j30 = 0) {
                                            j29 /= 5;
                                            i10++;
                                        }
                                    }
                                    if (i10 >= i3) {
                                        z5 = true;
                                        j3 = j20;
                                        z3 = z5;
                                        z4 = false;
                                        j = j14;
                                    }
                                } else {
                                    if (j7 % 5 != 0) {
                                        i9 = 0;
                                    } else if (j7 % 25 != 0) {
                                        i9 = 1;
                                    } else if (j7 % 125 != 0) {
                                        i9 = 2;
                                    } else if (j7 % 625 != 0) {
                                        i9 = 3;
                                    } else {
                                        long j31 = j7 / 625;
                                        i9 = 4;
                                        for (long j32 = 0; j31 > j32 && j31 % 5 == j32; j32 = 0) {
                                            j31 /= 5;
                                            i9++;
                                        }
                                    }
                                    if (i9 >= i3) {
                                        j3 = j20 - 1;
                                    }
                                    z5 = false;
                                    z3 = z5;
                                    z4 = false;
                                    j = j14;
                                }
                                j3 = j20;
                                z5 = false;
                                z3 = z5;
                                z4 = false;
                                j = j14;
                            }
                        } else {
                            j3 = j20;
                            z5 = false;
                            z3 = z5;
                            z4 = false;
                            j = j14;
                        }
                    } else {
                        z = z6;
                        z2 = z7;
                        int iMax2 = java.lang.Math.max(0, ((int) ((r0 * 6989700) / 10000000)) - 1);
                        int i38 = (-i35) - iMax2;
                        int i39 = ((iMax2 - ((i38 == 0 ? 1 : (int) ((((i38 * 23219280) + 10000000) - 1) / 10000000)) - 121)) - 93) - 21;
                        if (i39 < 0) {
                            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("", i39));
                        }
                        int[] iArr2 = POW5_SPLIT[i38];
                        long j33 = j6 >>> 31;
                        long j34 = j6 & 2147483647L;
                        long j35 = iArr2[0] * j34;
                        long j36 = iArr2[1] * j33;
                        long j37 = iArr2[1] * j34;
                        int i40 = i34;
                        long j38 = ((((((((((((j34 * iArr2[3]) >>> 31) + (iArr2[2] * j34)) + (j33 * iArr2[3])) >>> 31) + j37) + (iArr2[2] * j33)) >>> 31) + j35) + j36) >>> 21) + ((iArr2[0] * j33) << 10)) >>> i39;
                        long j39 = j7 >>> 31;
                        long j40 = j7 & 2147483647L;
                        long j41 = iArr2[0] * j40;
                        long j42 = iArr2[1] * j39;
                        long j43 = iArr2[1] * j40;
                        j = j38;
                        long j44 = ((((((((((((iArr2[3] * j40) >>> 31) + (iArr2[2] * j40)) + (j39 * iArr2[3])) >>> 31) + j43) + (iArr2[2] * j39)) >>> 31) + j41) + j42) >>> 21) + ((iArr2[0] * j39) << 10)) >>> i39;
                        long j45 = j8 >>> 31;
                        long j46 = j8 & 2147483647L;
                        long j47 = iArr2[0] * j46;
                        long j48 = iArr2[1] * j45;
                        long j49 = iArr2[1] * j46;
                        j2 = ((((((((((((j46 * iArr2[3]) >>> 31) + (iArr2[2] * j46)) + (j45 * iArr2[3])) >>> 31) + j49) + (iArr2[2] * j45)) >>> 31) + j47) + j48) >>> 21) + ((iArr2[0] * j45) << 10)) >>> i39;
                        i3 = iMax2 + i35;
                        if (iMax2 <= 1) {
                            if (z2) {
                                j3 = j44;
                                z3 = i40 == 1;
                            } else {
                                j3 = j44 - 1;
                                z3 = false;
                            }
                            z4 = true;
                        } else {
                            if (iMax2 < 63) {
                                z4 = (j6 & ((1 << (iMax2 + (-1))) - 1)) == 0;
                                z3 = false;
                            } else {
                                z3 = false;
                                z4 = false;
                            }
                            j3 = j44;
                        }
                    }
                    if (j3 >= 1000000000000000000L) {
                        i36 = 19;
                    } else if (j3 >= 100000000000000000L) {
                        i36 = 18;
                    } else if (j3 >= 10000000000000000L) {
                        i36 = 17;
                    } else if (j3 >= 1000000000000000L) {
                        i36 = 16;
                    } else if (j3 >= 100000000000000L) {
                        i36 = 15;
                    } else if (j3 >= 10000000000000L) {
                        i36 = 14;
                    } else if (j3 >= com.google.android.exoplayer2.MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US) {
                        i36 = 13;
                    } else if (j3 >= 100000000000L) {
                        i36 = 12;
                    } else if (j3 >= 10000000000L) {
                        i36 = 11;
                    } else if (j3 >= com.google.android.exoplayer2.C.NANOS_PER_SECOND) {
                        i36 = 10;
                    } else if (j3 >= 100000000) {
                        i36 = 9;
                    } else if (j3 >= 10000000) {
                        i36 = 8;
                    } else if (j3 >= 1000000) {
                        i36 = 7;
                    } else if (j3 >= 100000) {
                        i36 = 6;
                    } else if (j3 >= 10000) {
                        i36 = 5;
                    } else if (j3 >= 1000) {
                        i36 = 4;
                    } else if (j3 < 100) {
                        i36 = j3 >= 10 ? 2 : 1;
                    }
                    int i41 = (i3 + i36) - 1;
                    boolean z8 = i41 < -3 || i41 >= 7;
                    if (z3 || z4) {
                        int i42 = 0;
                        int i43 = 0;
                        while (true) {
                            long j50 = j3 / 10;
                            long j51 = j2 / 10;
                            if (j50 <= j51 || (j3 < 100 && z8)) {
                                break;
                            }
                            z3 &= j2 % 10 == 0;
                            z4 &= i42 == 0;
                            i42 = (int) (j % 10);
                            j /= 10;
                            i43++;
                            j3 = j50;
                            j2 = j51;
                        }
                        if (z3 && z2) {
                            for (long j52 = 100; j2 % 10 == 0 && (j3 >= j52 || !z8); j52 = 100) {
                                z4 &= i42 == 0;
                                i42 = (int) (j % 10);
                                j3 /= 10;
                                j /= 10;
                                j2 /= 10;
                                i43++;
                            }
                        }
                        if (z4 && i42 == 5 && j % 2 == 0) {
                            i42 = 4;
                        }
                        j4 = j + (((j != j2 || (z3 && z2)) && i42 < 5) ? 0 : 1);
                        i4 = i43;
                    } else {
                        i4 = 0;
                        int i44 = 0;
                        while (true) {
                            long j53 = j3 / 10;
                            long j54 = j2 / 10;
                            if (j53 <= j54 || (j3 < 100 && z8)) {
                                break;
                            }
                            i44 = (int) (j % 10);
                            j /= 10;
                            i4++;
                            j3 = j53;
                            j2 = j54;
                        }
                        j4 = j + ((j == j2 || i44 >= 5) ? 1 : 0);
                    }
                    int i45 = i36 - i4;
                    if (z) {
                        i5 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i5 = i;
                    }
                    if (!z8) {
                        char c2 = '0';
                        if (i41 < 0) {
                            int i46 = i5 + 1;
                            cArr[i5] = '0';
                            int i47 = i46 + 1;
                            cArr[i46] = '.';
                            int i48 = -1;
                            while (i48 > i41) {
                                cArr[i47] = c2;
                                i48--;
                                c2 = '0';
                                i47++;
                            }
                            i6 = i47;
                            for (int i49 = 0; i49 < i45; i49++) {
                                cArr[((i47 + i45) - i49) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                                i6++;
                            }
                        } else {
                            int i50 = i41 + 1;
                            if (i50 >= i45) {
                                for (int i51 = 0; i51 < i45; i51++) {
                                    cArr[((i5 + i45) - i51) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                int i52 = i5 + i45;
                                while (i45 < i50) {
                                    cArr[i52] = '0';
                                    i45++;
                                    i52++;
                                }
                                int i53 = i52 + 1;
                                cArr[i52] = '.';
                                i6 = i53 + 1;
                                cArr[i53] = '0';
                            } else {
                                int i54 = i5 + 1;
                                for (int i55 = 0; i55 < i45; i55++) {
                                    if ((i45 - i55) - 1 == i41) {
                                        cArr[((i54 + i45) - i55) - 1] = '.';
                                        i54--;
                                    }
                                    cArr[((i54 + i45) - i55) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                i6 = i45 + 1 + i5;
                            }
                        }
                        return i6 - i;
                    }
                    for (int i56 = 0; i56 < i45 - 1; i56++) {
                        int i57 = (int) (j4 % 10);
                        j4 /= 10;
                        cArr[(i5 + i45) - i56] = (char) (i57 + 48);
                    }
                    cArr[i5] = (char) ((j4 % 10) + 48);
                    cArr[i5 + 1] = '.';
                    int i58 = i45 + 1 + i5;
                    if (i45 == 1) {
                        cArr[i58] = '0';
                        i58++;
                    }
                    int i59 = i58 + 1;
                    cArr[i58] = 'E';
                    if (i41 < 0) {
                        cArr[i59] = '-';
                        i41 = -i41;
                        i59++;
                    }
                    if (i41 >= 100) {
                        int i60 = i59 + 1;
                        i7 = 48;
                        cArr[i59] = (char) ((i41 / 100) + 48);
                        i41 %= 100;
                        i59 = i60 + 1;
                        cArr[i60] = (char) ((i41 / 10) + 48);
                    } else {
                        i7 = 48;
                        if (i41 >= 10) {
                            cArr[i59] = (char) ((i41 / 10) + 48);
                            i59++;
                        }
                    }
                    i8 = i59 + 1;
                    cArr[i59] = (char) ((i41 % 10) + i7);
                }
            }
            return i8 - i;
        }
        int i61 = i + 1;
        cArr[i] = 'N';
        int i62 = i61 + 1;
        cArr[i61] = 'a';
        i12 = i62 + 1;
        cArr[i62] = 'N';
        return i12 - i;
    }

    public static java.lang.String toString(double d2) {
        char[] cArr = new char[24];
        return new java.lang.String(cArr, 0, toString(d2, cArr, 0));
    }
}
