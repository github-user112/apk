package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public abstract class Fb extends com.huawei.hms.scankit.p.Ab {
    public static final int[] a = {1, 1, 1};
    public static final int[] b = {1, 1, 1, 1, 1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f522c = {1, 1, 1, 1, 1, 1};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f523d;

    /* renamed from: e, reason: collision with root package name */
    public static final int[][] f524e;

    /* renamed from: f, reason: collision with root package name */
    public final java.lang.StringBuilder f525f = new java.lang.StringBuilder(20);

    /* renamed from: g, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Eb f526g = new com.huawei.hms.scankit.p.Eb();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f523d = iArr;
        int[][] iArr2 = new int[20][];
        f524e = iArr2;
        java.lang.System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = f523d[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            f524e[i] = iArr4;
        }
    }

    public static int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, int i, int[][] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Ab.a(c0117ab, i, iArr);
        int length = iArr2.length;
        float f2 = 0.46f;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float fA = com.huawei.hms.scankit.p.Ab.a(iArr, iArr2[i3], 0.8f);
            if (fA < f2) {
                i2 = i3;
                f2 = fA;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private void a(com.huawei.hms.scankit.aiscan.common.x xVar, int[] iArr, int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length;
        boolean z = true;
        try {
            com.huawei.hms.scankit.aiscan.common.x xVarA = this.f526g.a(i, c0117ab, iArr[1]);
            xVar.a(xVarA.h());
            length = xVarA.i().length();
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            length = 0;
        }
        int[] iArr2 = map == null ? null : (int[]) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.ALLOWED_EAN_EXTENSIONS);
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z = false;
                    break;
                } else if (length == iArr2[i2]) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
        }
    }

    public static boolean a(java.lang.CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = length - 1;
        return b(charSequence.subSequence(0, i)) == java.lang.Character.digit(charSequence.charAt(i), 10);
    }

    public static int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab) {
        return b(c0117ab, 0);
    }

    public static int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, boolean z, int[] iArr) {
        return a(c0117ab, i, z, iArr, new int[iArr.length]);
    }

    public static int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, boolean z, int[] iArr, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iD = c0117ab.d();
        int iC = z ? c0117ab.c(i) : c0117ab.b(i);
        int length = iArr.length;
        boolean z2 = z;
        int i2 = 0;
        int i3 = iC;
        while (iC < iD) {
            if (c0117ab.a(iC) == z2) {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (com.huawei.hms.scankit.p.Ab.a(iArr2, iArr, 0.8f) < 0.46f) {
                        return new int[]{i3, iC};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i4 = i2 - 1;
                    java.lang.System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i2] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z2 = !z2;
            } else {
                if (i2 < 0 || i2 >= iArr2.length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr2[i2] = iArr2[i2] + 1;
            }
            iC++;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int b(java.lang.CharSequence charSequence) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            int iCharAt = charSequence.charAt(i2) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            i += iCharAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 2; i4 >= 0; i4 -= 2) {
            int iCharAt2 = charSequence.charAt(i4) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            i3 += iCharAt2;
        }
        return (1000 - i3) % 10;
    }

    public static java.util.ArrayList<int[]> b(com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iD = c0117ab.d() / 2;
        java.util.ArrayList<int[]> arrayList = new java.util.ArrayList<>();
        int i = 0;
        while (i < iD) {
            try {
                int[] iArrB = b(c0117ab, i);
                arrayList.add(iArrB);
                i = iArrB[0] + 1;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            }
        }
        if (arrayList.size() != 0) {
            return arrayList;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int[] b(com.huawei.hms.scankit.p.C0117ab c0117ab, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr = new int[a.length];
        int[] iArrA = null;
        boolean zA = false;
        while (!zA) {
            java.util.Arrays.fill(iArr, 0, a.length, 0);
            iArrA = a(c0117ab, i, false, a, iArr);
            int i2 = iArrA[0];
            int i3 = iArrA[1];
            int i4 = i2 - (i3 - i2);
            int i5 = i4 + 3;
            while (i4 <= i5 && (i4 < 0 || !(zA = c0117ab.a(i4, i2, false, true)))) {
                i4++;
            }
            i = i3;
        }
        return iArrA;
    }

    public abstract int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb);

    public abstract com.huawei.hms.scankit.aiscan.common.BarcodeFormat a();

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return a(i, c0117ab, a(c0117ab), map);
    }

    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.A a2 = map == null ? null : (com.huawei.hms.scankit.aiscan.common.A) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK);
        if (a2 != null) {
            a2.a(new com.huawei.hms.scankit.aiscan.common.z((iArr[0] + iArr[1]) / 2.0f, i));
        }
        java.lang.StringBuilder sb = this.f525f;
        sb.setLength(0);
        int iA = a(c0117ab, iArr, sb);
        if (a2 != null) {
            a2.a(new com.huawei.hms.scankit.aiscan.common.z(iA, i));
        }
        int[] iArrA = a(c0117ab, iA);
        if (iArrA[0] - iA > 1) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (a2 != null) {
            a2.a(new com.huawei.hms.scankit.aiscan.common.z((iArrA[0] + iArrA[1]) / 2.0f, i));
        }
        if (!a(iArr, iArrA)) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i2 = iArrA[1];
        if ((i2 - iArrA[0]) + i2 >= c0117ab.d() || !a(iArrA[0], i2, c0117ab)) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        java.lang.String string = sb.toString();
        if (string.length() < 8) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (!a(string)) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        float f2 = i;
        com.huawei.hms.scankit.aiscan.common.x xVar = new com.huawei.hms.scankit.aiscan.common.x(string, null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(iArr[0], f2), new com.huawei.hms.scankit.aiscan.common.z(iArrA[1], f2)}, a());
        a(xVar, iArrA, i, c0117ab, map);
        return xVar;
    }

    public abstract boolean a(int i, int i2, com.huawei.hms.scankit.p.C0117ab c0117ab);

    public boolean a(java.lang.String str) {
        return a((java.lang.CharSequence) str);
    }

    public abstract boolean a(int[] iArr, int[] iArr2);

    public int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i) {
        return a(c0117ab, i, false, a);
    }
}
