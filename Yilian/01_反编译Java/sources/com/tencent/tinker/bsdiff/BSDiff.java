package com.tencent.tinker.bsdiff;

/* loaded from: classes.dex */
public class BSDiff {
    public static final byte[] MAGIC_BYTES = {77, 105, 99, 114, 111, 77, 115, 103};

    /* renamed from: com.tencent.tinker.bsdiff.BSDiff$1EmuStackFrame, reason: invalid class name */
    public class C1EmuStackFrame {
        public int h;
        public int len;
        public int start;
        public int stmRetLabel;
        public int i = 0;
        public int j = 0;
        public int k = 0;
        public int x = 0;
        public int jj = 0;
        public int kk = 0;

        public C1EmuStackFrame(int i, int i2, int i3, int i4) {
            this.stmRetLabel = i;
            this.start = i2;
            this.len = i3;
            this.h = i4;
        }
    }

    public static class IntByRef {
        public int value;

        public IntByRef() {
        }
    }

    public static void bsdiff(java.io.File file, java.io.File file2, java.io.File file3) throws java.io.IOException {
        java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
        java.io.BufferedInputStream bufferedInputStream2 = new java.io.BufferedInputStream(new java.io.FileInputStream(file2));
        java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file3);
        try {
            fileOutputStream.write(bsdiff(bufferedInputStream, (int) file.length(), bufferedInputStream2, (int) file2.length()));
        } finally {
            fileOutputStream.close();
        }
    }

    public static byte[] bsdiff(java.io.InputStream inputStream, int i, java.io.InputStream inputStream2, int i2) throws java.io.IOException {
        byte[] bArr = new byte[i];
        com.tencent.tinker.bsdiff.BSUtil.readFromStream(inputStream, bArr, 0, i);
        inputStream.close();
        byte[] bArr2 = new byte[i2];
        com.tencent.tinker.bsdiff.BSUtil.readFromStream(inputStream2, bArr2, 0, i2);
        inputStream2.close();
        return bsdiff(bArr, i, bArr2, i2);
    }

    public static byte[] bsdiff(byte[] bArr, int i, byte[] bArr2, int i2) throws java.io.IOException {
        int i3;
        com.tencent.tinker.bsdiff.BSDiff.IntByRef intByRef;
        java.io.DataOutputStream dataOutputStream;
        java.util.zip.GZIPOutputStream gZIPOutputStream;
        long j;
        java.io.DataOutputStream dataOutputStream2;
        int i4;
        int iSearch;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13 = i;
        int i14 = i13 + 1;
        int[] iArr = new int[i14];
        qsufsort(iArr, new int[i14], bArr, i13);
        byte[] bArr3 = new byte[i2];
        byte[] bArr4 = new byte[i2];
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.io.DataOutputStream dataOutputStream3 = new java.io.DataOutputStream(byteArrayOutputStream);
        dataOutputStream3.write(MAGIC_BYTES);
        dataOutputStream3.writeLong(-1L);
        dataOutputStream3.writeLong(-1L);
        long j2 = i2;
        dataOutputStream3.writeLong(j2);
        dataOutputStream3.flush();
        java.util.zip.GZIPOutputStream gZIPOutputStream2 = new java.util.zip.GZIPOutputStream(dataOutputStream3);
        java.io.DataOutputStream dataOutputStream4 = new java.io.DataOutputStream(gZIPOutputStream2);
        com.tencent.tinker.bsdiff.BSDiff.IntByRef intByRef2 = new com.tencent.tinker.bsdiff.BSDiff.IntByRef();
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i15 < i2) {
            int i22 = i15 + i18;
            int i23 = i18;
            int i24 = 0;
            int i25 = i22;
            while (true) {
                if (i22 >= i2) {
                    i3 = i16;
                    intByRef = intByRef2;
                    dataOutputStream = dataOutputStream4;
                    gZIPOutputStream = gZIPOutputStream2;
                    j = j2;
                    dataOutputStream2 = dataOutputStream3;
                    i4 = i22;
                    iSearch = i23;
                    i5 = i24;
                    break;
                }
                int i26 = i22;
                i3 = i16;
                intByRef = intByRef2;
                dataOutputStream = dataOutputStream4;
                gZIPOutputStream = gZIPOutputStream2;
                j = j2;
                dataOutputStream2 = dataOutputStream3;
                iSearch = search(iArr, bArr, i, bArr2, i2, i26, 0, i, intByRef);
                int i27 = i25;
                i5 = i24;
                i4 = i26;
                while (i27 < i4 + iSearch) {
                    int i28 = i27 + i19;
                    if (i28 < i13 && bArr[i28] == bArr2[i27]) {
                        i5++;
                    }
                    i27++;
                }
                if ((iSearch == i5 && iSearch != 0) || iSearch > i5 + 8) {
                    break;
                }
                int i29 = i4 + i19;
                if (i29 < i13 && bArr[i29] == bArr2[i4]) {
                    i5--;
                }
                i24 = i5;
                i23 = iSearch;
                i25 = i27;
                i22 = i4 + 1;
                i16 = i3;
                intByRef2 = intByRef;
                dataOutputStream4 = dataOutputStream;
                gZIPOutputStream2 = gZIPOutputStream;
                j2 = j;
                dataOutputStream3 = dataOutputStream2;
            }
            if (iSearch != i5 || i4 == i2) {
                int i30 = 0;
                int i31 = 0;
                int i32 = 0;
                int i33 = 0;
                while (true) {
                    int i34 = i20 + i31;
                    if (i34 >= i4 || (i12 = i21 + i31) >= i13) {
                        break;
                    }
                    if (bArr[i12] == bArr2[i34]) {
                        i30++;
                    }
                    i31++;
                    if ((i30 * 2) - i31 > (i32 * 2) - i33) {
                        i32 = i30;
                        i33 = i31;
                    }
                }
                if (i4 < i2) {
                    i6 = 0;
                    int i35 = 0;
                    int i36 = 0;
                    for (int i37 = 1; i4 >= i20 + i37 && intByRef.value >= i37; i37++) {
                        if (bArr[intByRef.value - i37] == bArr2[i4 - i37]) {
                            i35++;
                        }
                        if ((i35 * 2) - i37 > (i36 * 2) - i6) {
                            i6 = i37;
                            i36 = i35;
                        }
                    }
                } else {
                    i6 = 0;
                }
                int i38 = i20 + i33;
                int i39 = i4 - i6;
                if (i38 > i39) {
                    int i40 = i38 - i39;
                    i7 = iSearch;
                    int i41 = 0;
                    int i42 = 0;
                    int i43 = 0;
                    int i44 = 0;
                    while (i42 < i40) {
                        int i45 = i38;
                        if (bArr2[(i38 - i40) + i42] == bArr[((i21 + i33) - i40) + i42]) {
                            i44++;
                        }
                        if (bArr2[i39 + i42] == bArr[(intByRef.value - i6) + i42]) {
                            i44--;
                        }
                        int i46 = i44;
                        if (i46 > i41) {
                            i43 = i42 + 1;
                            i41 = i46;
                        }
                        i42++;
                        i44 = i46;
                        i38 = i45;
                    }
                    i33 += i43 - i40;
                    i6 -= i43;
                } else {
                    i7 = iSearch;
                }
                int i47 = 0;
                while (true) {
                    i8 = i3;
                    if (i47 >= i33) {
                        break;
                    }
                    bArr3[i8 + i47] = (byte) (bArr2[i20 + i47] - bArr[i21 + i47]);
                    i47++;
                }
                int i48 = 0;
                while (true) {
                    i9 = i4 - i6;
                    int i49 = i20 + i33;
                    i10 = i9 - i49;
                    i11 = i17;
                    if (i48 >= i10) {
                        break;
                    }
                    bArr4[i11 + i48] = bArr2[i49 + i48];
                    i48++;
                    i17 = i11;
                }
                i16 = i8 + i33;
                i17 = i11 + i10;
                java.io.DataOutputStream dataOutputStream5 = dataOutputStream;
                dataOutputStream5.writeInt(i33);
                dataOutputStream5.writeInt(i10);
                dataOutputStream5.writeInt((intByRef.value - i6) - (i21 + i33));
                i21 = intByRef.value - i6;
                i13 = i;
                i20 = i9;
                i18 = i7;
                gZIPOutputStream2 = gZIPOutputStream;
                j2 = j;
                dataOutputStream3 = dataOutputStream2;
                dataOutputStream4 = dataOutputStream5;
                i19 = intByRef.value - i4;
                i15 = i4;
                intByRef2 = intByRef;
            } else {
                i18 = iSearch;
                i15 = i4;
                i16 = i3;
                intByRef2 = intByRef;
                dataOutputStream4 = dataOutputStream;
                gZIPOutputStream2 = gZIPOutputStream;
                j2 = j;
                dataOutputStream3 = dataOutputStream2;
            }
        }
        java.io.DataOutputStream dataOutputStream6 = dataOutputStream3;
        dataOutputStream4.flush();
        gZIPOutputStream2.finish();
        int size = dataOutputStream6.size() - 32;
        java.util.zip.GZIPOutputStream gZIPOutputStream3 = new java.util.zip.GZIPOutputStream(dataOutputStream6);
        gZIPOutputStream3.write(bArr3, 0, i16);
        gZIPOutputStream3.finish();
        gZIPOutputStream3.flush();
        int size2 = (dataOutputStream6.size() - size) - 32;
        java.util.zip.GZIPOutputStream gZIPOutputStream4 = new java.util.zip.GZIPOutputStream(dataOutputStream6);
        gZIPOutputStream4.write(bArr4, 0, i17);
        gZIPOutputStream4.finish();
        gZIPOutputStream4.flush();
        dataOutputStream6.close();
        java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream(32);
        java.io.DataOutputStream dataOutputStream7 = new java.io.DataOutputStream(byteArrayOutputStream2);
        dataOutputStream7.write(MAGIC_BYTES);
        dataOutputStream7.writeLong(size);
        dataOutputStream7.writeLong(size2);
        dataOutputStream7.writeLong(j2);
        dataOutputStream7.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
        java.lang.System.arraycopy(byteArray2, 0, byteArray, 0, byteArray2.length);
        return byteArray;
    }

    public static void main(java.lang.String[] strArr) throws java.io.IOException {
        bsdiff(new java.io.File("/Users/tomystang/bsdiff-test/old/classes.dex"), new java.io.File("/Users/tomystang/bsdiff-test/new/classes.dex"), new java.io.File("/Users/tomystang/bsdiff-test/test_bsdiff.diff"));
    }

    public static int matchlen(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        int iMin = java.lang.Math.min(i - i2, i3 - i4);
        for (int i5 = 0; i5 < iMin; i5++) {
            if (bArr[i2 + i5] != bArr2[i4 + i5]) {
                return i5;
            }
        }
        return iMin;
    }

    public static int memcmp(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        int i5 = i - i2;
        int i6 = i3 - i4;
        if (i5 > i6) {
            i5 = i6;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 + i2;
            int i9 = i7 + i4;
            if (bArr[i8] != bArr2[i9]) {
                return bArr[i8] < bArr2[i9] ? -1 : 1;
            }
        }
        return 0;
    }

    public static void qsufsort(int[] iArr, int[] iArr2, byte[] bArr, int i) {
        int i2;
        int i3;
        int[] iArr3 = new int[256];
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = 255 & bArr[i4];
            iArr3[i5] = iArr3[i5] + 1;
        }
        for (int i6 = 1; i6 < 256; i6++) {
            iArr3[i6] = iArr3[i6] + iArr3[i6 - 1];
        }
        for (int i7 = 255; i7 > 0; i7--) {
            iArr3[i7] = iArr3[i7 - 1];
        }
        iArr3[0] = 0;
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = bArr[i8] & 255;
            int i10 = iArr3[i9] + 1;
            iArr3[i9] = i10;
            iArr[i10] = i8;
        }
        iArr[0] = i;
        for (int i11 = 0; i11 < i; i11++) {
            iArr2[i11] = iArr3[bArr[i11] & 255];
        }
        iArr2[i] = 0;
        for (int i12 = 1; i12 < 256; i12++) {
            if (iArr3[i12] == iArr3[i12 - 1] + 1) {
                iArr[iArr3[i12]] = -1;
            }
        }
        iArr[0] = -1;
        int i13 = 1;
        while (true) {
            i2 = i + 1;
            if (iArr[0] == (-i2)) {
                break;
            }
            int i14 = 0;
            while (true) {
                i3 = 0;
                while (i14 < i2) {
                    if (iArr[i14] < 0) {
                        i3 -= iArr[i14];
                        i14 -= iArr[i14];
                    } else {
                        if (i3 != 0) {
                            iArr[i14 - i3] = -i3;
                        }
                        int i15 = (iArr2[iArr[i14]] + 1) - i14;
                        split(iArr, iArr2, i14, i15, i13);
                        i14 += i15;
                    }
                }
                break;
            }
            if (i3 != 0) {
                iArr[i14 - i3] = -i3;
            }
            i13 += i13;
        }
        for (int i16 = 0; i16 < i2; i16++) {
            iArr[iArr2[i16]] = i16;
        }
    }

    public static int search(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2, int i3, int i4, int i5, com.tencent.tinker.bsdiff.BSDiff.IntByRef intByRef) {
        int i6 = i5 - i4;
        if (i6 >= 2) {
            int i7 = (i6 / 2) + i4;
            return memcmp(bArr, i, iArr[i7], bArr2, i2, i3) < 0 ? search(iArr, bArr, i, bArr2, i2, i3, i7, i5, intByRef) : search(iArr, bArr, i, bArr2, i2, i3, i4, i7, intByRef);
        }
        int iMatchlen = matchlen(bArr, i, iArr[i4], bArr2, i2, i3);
        int iMatchlen2 = matchlen(bArr, i, iArr[i5], bArr2, i2, i3);
        if (iMatchlen > iMatchlen2) {
            intByRef.value = iArr[i4];
            return iMatchlen;
        }
        intByRef.value = iArr[i5];
        return iMatchlen2;
    }

    public static void split(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        java.util.Stack stack = new java.util.Stack();
        stack.push(new com.tencent.tinker.bsdiff.BSDiff.C1EmuStackFrame(2, i, i2, i3));
        while (true) {
            int i9 = 0;
            while (!stack.empty()) {
                com.tencent.tinker.bsdiff.BSDiff.C1EmuStackFrame c1EmuStackFrame = (com.tencent.tinker.bsdiff.BSDiff.C1EmuStackFrame) stack.peek();
                if (i9 == 0) {
                    int i10 = c1EmuStackFrame.len;
                    if (i10 < 16) {
                        int i11 = c1EmuStackFrame.start;
                        while (true) {
                            c1EmuStackFrame.k = i11;
                            int i12 = c1EmuStackFrame.k;
                            if (i12 >= c1EmuStackFrame.start + c1EmuStackFrame.len) {
                                break;
                            }
                            c1EmuStackFrame.j = 1;
                            c1EmuStackFrame.x = iArr2[iArr[i12] + c1EmuStackFrame.h];
                            c1EmuStackFrame.i = 1;
                            while (true) {
                                int i13 = c1EmuStackFrame.k;
                                int i14 = c1EmuStackFrame.i;
                                if (i13 + i14 >= c1EmuStackFrame.start + c1EmuStackFrame.len) {
                                    break;
                                }
                                int i15 = iArr[i13 + i14];
                                int i16 = c1EmuStackFrame.h;
                                if (iArr2[i15 + i16] < c1EmuStackFrame.x) {
                                    c1EmuStackFrame.x = iArr2[iArr[i13 + i14] + i16];
                                    c1EmuStackFrame.j = 0;
                                }
                                int i17 = c1EmuStackFrame.k;
                                int i18 = c1EmuStackFrame.i;
                                if (iArr2[iArr[i17 + i18] + c1EmuStackFrame.h] == c1EmuStackFrame.x) {
                                    int i19 = c1EmuStackFrame.j;
                                    int i20 = iArr[i17 + i19];
                                    iArr[i17 + i19] = iArr[i17 + i18];
                                    iArr[i17 + i18] = i20;
                                    c1EmuStackFrame.j = i19 + 1;
                                }
                                c1EmuStackFrame.i++;
                            }
                            c1EmuStackFrame.i = 0;
                            while (true) {
                                int i21 = c1EmuStackFrame.i;
                                i6 = c1EmuStackFrame.j;
                                if (i21 >= i6) {
                                    break;
                                }
                                int i22 = c1EmuStackFrame.k;
                                iArr2[iArr[i22 + i21]] = (i22 + i6) - 1;
                                c1EmuStackFrame.i = i21 + 1;
                            }
                            if (i6 == 1) {
                                iArr[c1EmuStackFrame.k] = -1;
                            }
                            i11 = c1EmuStackFrame.k + c1EmuStackFrame.j;
                        }
                        i9 = 2;
                    } else {
                        int i23 = c1EmuStackFrame.start;
                        c1EmuStackFrame.x = iArr2[iArr[(i10 / 2) + i23] + c1EmuStackFrame.h];
                        c1EmuStackFrame.jj = 0;
                        c1EmuStackFrame.kk = 0;
                        c1EmuStackFrame.i = i23;
                        while (true) {
                            int i24 = c1EmuStackFrame.i;
                            i7 = c1EmuStackFrame.start;
                            if (i24 >= c1EmuStackFrame.len + i7) {
                                break;
                            }
                            if (iArr2[iArr[i24] + c1EmuStackFrame.h] < c1EmuStackFrame.x) {
                                c1EmuStackFrame.jj++;
                            }
                            if (iArr2[iArr[c1EmuStackFrame.i] + c1EmuStackFrame.h] == c1EmuStackFrame.x) {
                                c1EmuStackFrame.kk++;
                            }
                            c1EmuStackFrame.i++;
                        }
                        int i25 = c1EmuStackFrame.jj + i7;
                        c1EmuStackFrame.jj = i25;
                        c1EmuStackFrame.kk += i25;
                        c1EmuStackFrame.i = i7;
                        c1EmuStackFrame.j = 0;
                        c1EmuStackFrame.k = 0;
                        while (true) {
                            int i26 = c1EmuStackFrame.i;
                            int i27 = c1EmuStackFrame.jj;
                            if (i26 >= i27) {
                                break;
                            }
                            int i28 = iArr[i26];
                            int i29 = c1EmuStackFrame.h;
                            int i30 = iArr2[i28 + i29];
                            int i31 = c1EmuStackFrame.x;
                            if (i30 < i31) {
                                c1EmuStackFrame.i = i26 + 1;
                            } else if (iArr2[iArr[i26] + i29] == i31) {
                                int i32 = iArr[i26];
                                int i33 = c1EmuStackFrame.j;
                                iArr[i26] = iArr[i27 + i33];
                                iArr[i27 + i33] = i32;
                                c1EmuStackFrame.j = i33 + 1;
                            } else {
                                int i34 = iArr[i26];
                                int i35 = c1EmuStackFrame.kk;
                                int i36 = c1EmuStackFrame.k;
                                iArr[i26] = iArr[i35 + i36];
                                iArr[i35 + i36] = i34;
                                c1EmuStackFrame.k = i36 + 1;
                            }
                        }
                        while (true) {
                            i8 = c1EmuStackFrame.jj;
                            int i37 = c1EmuStackFrame.j;
                            int i38 = i8 + i37;
                            int i39 = c1EmuStackFrame.kk;
                            if (i38 >= i39) {
                                break;
                            }
                            if (iArr2[iArr[i8 + i37] + c1EmuStackFrame.h] == c1EmuStackFrame.x) {
                                c1EmuStackFrame.j = i37 + 1;
                            } else {
                                int i40 = iArr[i8 + i37];
                                int i41 = i8 + i37;
                                int i42 = c1EmuStackFrame.k;
                                iArr[i41] = iArr[i39 + i42];
                                iArr[i39 + i42] = i40;
                                c1EmuStackFrame.k = i42 + 1;
                            }
                        }
                        int i43 = c1EmuStackFrame.start;
                        if (i8 > i43) {
                            stack.push(new com.tencent.tinker.bsdiff.BSDiff.C1EmuStackFrame(1, i43, i8 - i43, c1EmuStackFrame.h));
                        } else {
                            i9 = 1;
                        }
                    }
                } else if (i9 != 1) {
                    i9 = c1EmuStackFrame.stmRetLabel;
                    stack.pop();
                } else {
                    c1EmuStackFrame.i = 0;
                    while (true) {
                        int i44 = c1EmuStackFrame.i;
                        i4 = c1EmuStackFrame.kk;
                        i5 = c1EmuStackFrame.jj;
                        if (i44 >= i4 - i5) {
                            break;
                        }
                        iArr2[iArr[i5 + i44]] = i4 - 1;
                        c1EmuStackFrame.i = i44 + 1;
                    }
                    if (i5 == i4 - 1) {
                        iArr[i5] = -1;
                    }
                    int i45 = c1EmuStackFrame.start;
                    int i46 = c1EmuStackFrame.len;
                    int i47 = i45 + i46;
                    int i48 = c1EmuStackFrame.kk;
                    if (i47 > i48) {
                        stack.push(new com.tencent.tinker.bsdiff.BSDiff.C1EmuStackFrame(2, i48, (i45 + i46) - i48, c1EmuStackFrame.h));
                    }
                    i9 = 2;
                }
            }
            return;
        }
    }
}
