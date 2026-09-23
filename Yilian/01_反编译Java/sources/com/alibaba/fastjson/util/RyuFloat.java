package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public final class RyuFloat {
    public static final int[][] POW5_SPLIT = {new int[]{536870912, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{1000000000, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, 1073741824}, new int[]{762939453, 268435456}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    public static final int[][] POW5_INV_SPLIT = {new int[]{268435456, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static int toString(float f2, char[] cArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (java.lang.Float.isNaN(f2)) {
            int i15 = i + 1;
            cArr[i] = 'N';
            int i16 = i15 + 1;
            cArr[i15] = 'a';
            i14 = i16 + 1;
            cArr[i16] = 'N';
        } else {
            if (f2 == Float.POSITIVE_INFINITY) {
                int i17 = i + 1;
                cArr[i] = 'I';
                int i18 = i17 + 1;
                cArr[i17] = 'n';
                int i19 = i18 + 1;
                cArr[i18] = 'f';
                int i20 = i19 + 1;
                cArr[i19] = 'i';
                int i21 = i20 + 1;
                cArr[i20] = 'n';
                int i22 = i21 + 1;
                cArr[i21] = 'i';
                int i23 = i22 + 1;
                cArr[i22] = 't';
                cArr[i23] = 'y';
                return (i23 + 1) - i;
            }
            if (f2 == Float.NEGATIVE_INFINITY) {
                int i24 = i + 1;
                cArr[i] = '-';
                int i25 = i24 + 1;
                cArr[i24] = 'I';
                int i26 = i25 + 1;
                cArr[i25] = 'n';
                int i27 = i26 + 1;
                cArr[i26] = 'f';
                int i28 = i27 + 1;
                cArr[i27] = 'i';
                int i29 = i28 + 1;
                cArr[i28] = 'n';
                int i30 = i29 + 1;
                cArr[i29] = 'i';
                int i31 = i30 + 1;
                cArr[i30] = 't';
                i14 = i31 + 1;
                cArr[i31] = 'y';
            } else {
                int iFloatToIntBits = java.lang.Float.floatToIntBits(f2);
                if (iFloatToIntBits != 0) {
                    if (iFloatToIntBits == Integer.MIN_VALUE) {
                        int i32 = i + 1;
                        cArr[i] = '-';
                        int i33 = i32 + 1;
                        cArr[i32] = '0';
                        int i34 = i33 + 1;
                        cArr[i33] = '.';
                        cArr[i34] = '0';
                        return (i34 + 1) - i;
                    }
                    int i35 = (iFloatToIntBits >> 23) & 255;
                    int i36 = 8388607 & iFloatToIntBits;
                    if (i35 == 0) {
                        i2 = -149;
                    } else {
                        i2 = (i35 + com.huawei.hms.framework.common.NetworkUtil.INVALID_RSSI) - 23;
                        i36 |= 8388608;
                    }
                    boolean z5 = iFloatToIntBits < 0;
                    boolean z6 = (i36 & 1) == 0;
                    int i37 = i36 * 4;
                    int i38 = i37 + 2;
                    int i39 = i37 - ((((long) i36) != 8388608 || i35 <= 1) ? 2 : 1);
                    int i40 = i2 - 2;
                    if (i40 >= 0) {
                        i7 = (int) ((i40 * 3010299) / 10000000);
                        if (i7 == 0) {
                            i12 = i40;
                            i13 = 1;
                        } else {
                            i12 = i40;
                            i13 = (int) ((((i7 * 23219280) + 10000000) - 1) / 10000000);
                        }
                        int i41 = (-i12) + i7;
                        int[][] iArr = POW5_INV_SPLIT;
                        long j = iArr[i7][0];
                        long j2 = iArr[i7][1];
                        long j3 = i37;
                        int i42 = (((i13 + 59) - 1) + i41) - 31;
                        z = z6;
                        int i43 = i37;
                        int i44 = (int) (((j3 * j) + ((j3 * j2) >> 31)) >> i42);
                        long j4 = i38;
                        i5 = (int) (((j4 * j) + ((j4 * j2) >> 31)) >> i42);
                        i3 = i44;
                        long j5 = i39;
                        i6 = (int) (((j * j5) + ((j5 * j2) >> 31)) >> i42);
                        if (i7 == 0 || (i5 - 1) / 10 > i6 / 10) {
                            i8 = 0;
                        } else {
                            int i45 = i7 - 1;
                            int i46 = (i41 - 1) + (((i45 == 0 ? 1 : (int) ((((i45 * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1);
                            int[][] iArr2 = POW5_INV_SPLIT;
                            i8 = (int) ((((iArr2[i45][0] * j3) + ((iArr2[i45][1] * j3) >> 31)) >> (i46 - 31)) % 10);
                        }
                        int i47 = 0;
                        int i48 = i38;
                        while (i48 > 0 && i48 % 5 == 0) {
                            i48 /= 5;
                            i47++;
                        }
                        int i49 = 0;
                        while (i43 > 0 && i43 % 5 == 0) {
                            i43 /= 5;
                            i49++;
                        }
                        int i50 = 0;
                        while (i39 > 0 && i39 % 5 == 0) {
                            i39 /= 5;
                            i50++;
                        }
                        z3 = i47 >= i7;
                        z4 = i49 >= i7;
                        z2 = i50 >= i7;
                    } else {
                        z = z6;
                        int i51 = -i40;
                        int i52 = (int) ((i51 * 6989700) / 10000000);
                        int i53 = i51 - i52;
                        int i54 = i53 == 0 ? 1 : (int) ((((i53 * 23219280) + 10000000) - 1) / 10000000);
                        int[][] iArr3 = POW5_SPLIT;
                        long j6 = iArr3[i53][0];
                        long j7 = iArr3[i53][1];
                        int i55 = (i52 - (i54 - 61)) - 31;
                        long j8 = i37;
                        i3 = (int) (((j8 * j6) + ((j8 * j7) >> 31)) >> i55);
                        long j9 = i38;
                        int i56 = (int) (((j9 * j6) + ((j9 * j7) >> 31)) >> i55);
                        long j10 = i39;
                        int i57 = (int) (((j6 * j10) + ((j10 * j7) >> 31)) >> i55);
                        if (i52 == 0 || (i56 - 1) / 10 > i57 / 10) {
                            i4 = 0;
                        } else {
                            int[][] iArr4 = POW5_SPLIT;
                            i4 = (int) ((((iArr4[r3][0] * j8) + ((j8 * iArr4[r3][1]) >> 31)) >> (((i52 - 1) - ((i53 + 1 == 0 ? 1 : (int) ((((r3 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31)) % 10);
                        }
                        int i58 = i40 + i52;
                        boolean z7 = 1 >= i52;
                        boolean z8 = i52 < 23 && (i37 & ((1 << (i52 + (-1))) - 1)) == 0;
                        z2 = (i39 % 2 == 1 ? 0 : 1) >= i52;
                        z3 = z7;
                        int i59 = i4;
                        i5 = i56;
                        z4 = z8;
                        i6 = i57;
                        i7 = i58;
                        i8 = i59;
                    }
                    int i60 = 1000000000;
                    int i61 = 10;
                    while (i61 > 0 && i5 < i60) {
                        i60 /= 10;
                        i61--;
                    }
                    int i62 = (i7 + i61) - 1;
                    boolean z9 = i62 < -3 || i62 >= 7;
                    if (z3 && !z) {
                        i5--;
                    }
                    int i63 = 0;
                    while (true) {
                        int i64 = i5 / 10;
                        int i65 = i6 / 10;
                        if (i64 <= i65 || (i5 < 100 && z9)) {
                            break;
                        }
                        z2 &= i6 % 10 == 0;
                        i8 = i3 % 10;
                        i3 /= 10;
                        i63++;
                        i5 = i64;
                        i6 = i65;
                    }
                    if (z2 && z) {
                        while (i6 % 10 == 0 && (i5 >= 100 || !z9)) {
                            i5 /= 10;
                            i8 = i3 % 10;
                            i3 /= 10;
                            i6 /= 10;
                            i63++;
                        }
                    }
                    int i66 = i3;
                    if (z4 && i8 == 5 && i66 % 2 == 0) {
                        i8 = 4;
                    }
                    int i67 = i66 + (((i66 != i6 || (z2 && z)) && i8 < 5) ? 0 : 1);
                    int i68 = i61 - i63;
                    if (z5) {
                        i9 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i9 = i;
                    }
                    if (z9) {
                        for (int i69 = 0; i69 < i68 - 1; i69++) {
                            int i70 = i67 % 10;
                            i67 /= 10;
                            cArr[(i9 + i68) - i69] = (char) (i70 + 48);
                        }
                        cArr[i9] = (char) ((i67 % 10) + 48);
                        cArr[i9 + 1] = '.';
                        int i71 = i68 + 1 + i9;
                        if (i68 == 1) {
                            cArr[i71] = '0';
                            i71++;
                        }
                        int i72 = i71 + 1;
                        cArr[i71] = 'E';
                        if (i62 < 0) {
                            cArr[i72] = '-';
                            i62 = -i62;
                            i72++;
                        }
                        if (i62 >= 10) {
                            i11 = 48;
                            cArr[i72] = (char) ((i62 / 10) + 48);
                            i72++;
                        } else {
                            i11 = 48;
                        }
                        i10 = i72 + 1;
                        cArr[i72] = (char) ((i62 % 10) + i11);
                    } else {
                        int i73 = 48;
                        if (i62 < 0) {
                            int i74 = i9 + 1;
                            cArr[i9] = '0';
                            int i75 = i74 + 1;
                            cArr[i74] = '.';
                            int i76 = -1;
                            while (i76 > i62) {
                                cArr[i75] = '0';
                                i76--;
                                i75++;
                            }
                            int i77 = i75;
                            int i78 = i67;
                            int i79 = 0;
                            while (i79 < i68) {
                                cArr[((i75 + i68) - i79) - 1] = (char) ((i78 % 10) + i73);
                                i78 /= 10;
                                i77++;
                                i79++;
                                i73 = 48;
                            }
                            i10 = i77;
                        } else {
                            int i80 = i62 + 1;
                            if (i80 >= i68) {
                                for (int i81 = 0; i81 < i68; i81++) {
                                    cArr[((i9 + i68) - i81) - 1] = (char) ((i67 % 10) + 48);
                                    i67 /= 10;
                                }
                                int i82 = i9 + i68;
                                while (i68 < i80) {
                                    cArr[i82] = '0';
                                    i68++;
                                    i82++;
                                }
                                int i83 = i82 + 1;
                                cArr[i82] = '.';
                                cArr[i83] = '0';
                                i10 = i83 + 1;
                            } else {
                                int i84 = i9 + 1;
                                for (int i85 = 0; i85 < i68; i85++) {
                                    if ((i68 - i85) - 1 == i62) {
                                        cArr[((i84 + i68) - i85) - 1] = '.';
                                        i84--;
                                    }
                                    cArr[((i84 + i68) - i85) - 1] = (char) ((i67 % 10) + 48);
                                    i67 /= 10;
                                }
                                i10 = i68 + 1 + i9;
                            }
                        }
                    }
                    return i10 - i;
                }
                int i86 = i + 1;
                cArr[i] = '0';
                int i87 = i86 + 1;
                cArr[i86] = '.';
                i14 = i87 + 1;
                cArr[i87] = '0';
            }
        }
        return i14 - i;
    }

    public static java.lang.String toString(float f2) {
        char[] cArr = new char[15];
        return new java.lang.String(cArr, 0, toString(f2, cArr, 0));
    }
}
