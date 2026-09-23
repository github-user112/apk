package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.vd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0223vd {
    public static final java.lang.String[] a = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    public static final int[][] b = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: c, reason: collision with root package name */
    public static final int[][] f841c;

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f842d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f843e;

    /* renamed from: com.huawei.hms.scankit.p.vd$a */
    public static class a<State> implements java.util.Comparator<com.huawei.hms.scankit.p.C0233xd> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.huawei.hms.scankit.p.C0233xd c0233xd, com.huawei.hms.scankit.p.C0233xd c0233xd2) {
            return c0233xd.b() - c0233xd2.b();
        }
    }

    static {
        int[][] iArr = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 5, 256);
        f841c = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f841c[0][i] = (i - 65) + 2;
        }
        f841c[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f841c[1][i2] = (i2 - 97) + 2;
        }
        f841c[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f841c[2][i3] = (i3 - 48) + 2;
        }
        int[][] iArr2 = f841c;
        iArr2[2][44] = 12;
        iArr2[2][46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i4 = 0; i4 < 28; i4++) {
            f841c[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr4[i5] > 0) {
                f841c[4][iArr4[i5]] = i5;
            }
        }
        int[][] iArr5 = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, 6, 6);
        f842d = iArr5;
        for (int[] iArr6 : iArr5) {
            java.util.Arrays.fill(iArr6, -1);
        }
        try {
            if (com.huawei.hms.scankit.util.b.a(f842d, 0) && com.huawei.hms.scankit.util.b.a(f842d[0], 4)) {
                f842d[0][4] = 0;
            }
            if (com.huawei.hms.scankit.util.b.a(f842d, 1) && com.huawei.hms.scankit.util.b.a(f842d[1], 4)) {
                f842d[1][4] = 0;
            }
            if (com.huawei.hms.scankit.util.b.a(f842d, 1) && com.huawei.hms.scankit.util.b.a(f842d[1], 0)) {
                f842d[1][0] = 28;
            }
            if (com.huawei.hms.scankit.util.b.a(f842d, 3) && com.huawei.hms.scankit.util.b.a(f842d[3], 4)) {
                f842d[3][4] = 0;
            }
            if (com.huawei.hms.scankit.util.b.a(f842d, 2) && com.huawei.hms.scankit.util.b.a(f842d[2], 4)) {
                f842d[2][4] = 0;
            }
            if (com.huawei.hms.scankit.util.b.a(f842d, 2) && com.huawei.hms.scankit.util.b.a(f842d[2], 0)) {
                f842d[2][0] = 15;
            }
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public C0223vd(byte[] bArr) {
        this.f843e = bArr;
    }

    public static java.util.Collection<com.huawei.hms.scankit.p.C0233xd> a(java.lang.Iterable<com.huawei.hms.scankit.p.C0233xd> iterable) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        for (com.huawei.hms.scankit.p.C0233xd c0233xd : iterable) {
            boolean z = true;
            java.util.Iterator it = linkedList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.huawei.hms.scankit.p.C0233xd c0233xd2 = (com.huawei.hms.scankit.p.C0233xd) it.next();
                if (c0233xd2.a(c0233xd)) {
                    z = false;
                    break;
                }
                if (c0233xd.a(c0233xd2)) {
                    it.remove();
                }
            }
            if (z) {
                linkedList.add(c0233xd);
            }
        }
        return linkedList;
    }

    private java.util.Collection<com.huawei.hms.scankit.p.C0233xd> a(java.lang.Iterable<com.huawei.hms.scankit.p.C0233xd> iterable, int i) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        java.util.Iterator<com.huawei.hms.scankit.p.C0233xd> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next(), i, linkedList);
        }
        return a(linkedList);
    }

    public static java.util.Collection<com.huawei.hms.scankit.p.C0233xd> a(java.lang.Iterable<com.huawei.hms.scankit.p.C0233xd> iterable, int i, int i2) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        java.util.Iterator<com.huawei.hms.scankit.p.C0233xd> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next(), i, i2, linkedList);
        }
        return a(linkedList);
    }

    public static void a(com.huawei.hms.scankit.p.C0233xd c0233xd, int i, int i2, java.util.Collection<com.huawei.hms.scankit.p.C0233xd> collection) {
        com.huawei.hms.scankit.p.C0233xd c0233xdB = c0233xd.b(i);
        collection.add(c0233xdB.a(4, i2));
        if (c0233xd.c() != 4) {
            collection.add(c0233xdB.b(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(c0233xdB.a(2, 16 - i2).a(2, 1));
        }
        if (c0233xd.a() > 0) {
            collection.add(c0233xd.a(i).a(i + 1));
        }
    }

    private void a(com.huawei.hms.scankit.p.C0233xd c0233xd, int i, java.util.Collection<com.huawei.hms.scankit.p.C0233xd> collection) {
        if (com.huawei.hms.scankit.util.b.a(this.f843e, i)) {
            char c2 = (char) (this.f843e[i] & 255);
            boolean z = com.huawei.hms.scankit.util.b.a(f841c, c0233xd.c()) && com.huawei.hms.scankit.util.b.a(f841c[c0233xd.c()], (int) c2) && f841c[c0233xd.c()][c2] > 0;
            com.huawei.hms.scankit.p.C0233xd c0233xdB = null;
            for (int i2 = 0; i2 <= 4; i2++) {
                int i3 = (com.huawei.hms.scankit.util.b.a(f841c, i2) && com.huawei.hms.scankit.util.b.a(f841c[i2], (int) c2)) ? f841c[i2][c2] : 0;
                if (i3 > 0) {
                    if (c0233xdB == null) {
                        c0233xdB = c0233xd.b(i);
                    }
                    if (!z || i2 == c0233xd.c() || i2 == 2) {
                        collection.add(c0233xdB.a(i2, i3));
                    }
                    if (!z && f842d[c0233xd.c()][i2] >= 0) {
                        collection.add(c0233xdB.b(i2, i3));
                    }
                }
            }
            if (com.huawei.hms.scankit.util.b.a(f841c, c0233xd.c()) && com.huawei.hms.scankit.util.b.a(f841c[c0233xd.c()], (int) c2)) {
                if (c0233xd.a() > 0 || f841c[c0233xd.c()][c2] == 0) {
                    collection.add(c0233xd.a(i));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.scankit.p.C0117ab a() {
        /*
            r8 = this;
            com.huawei.hms.scankit.p.xd r0 = com.huawei.hms.scankit.p.C0233xd.a
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = 0
        L8:
            byte[] r3 = r8.f843e
            int r4 = r3.length
            if (r2 >= r4) goto L4f
            int r4 = r2 + 1
            int r5 = r3.length
            if (r4 >= r5) goto L15
            r3 = r3[r4]
            goto L16
        L15:
            r3 = 0
        L16:
            byte[] r5 = r8.f843e
            r5 = r5[r2]
            r6 = 13
            if (r5 == r6) goto L39
            r6 = 44
            r7 = 32
            if (r5 == r6) goto L35
            r6 = 46
            if (r5 == r6) goto L31
            r6 = 58
            if (r5 == r6) goto L2d
            goto L3f
        L2d:
            if (r3 != r7) goto L3f
            r3 = 5
            goto L40
        L31:
            if (r3 != r7) goto L3f
            r3 = 3
            goto L40
        L35:
            if (r3 != r7) goto L3f
            r3 = 4
            goto L40
        L39:
            r5 = 10
            if (r3 != r5) goto L3f
            r3 = 2
            goto L40
        L3f:
            r3 = 0
        L40:
            if (r3 <= 0) goto L48
            java.util.Collection r0 = a(r0, r2, r3)
            r2 = r4
            goto L4c
        L48:
            java.util.Collection r0 = r8.a(r0, r2)
        L4c:
            int r2 = r2 + 1
            goto L8
        L4f:
            com.huawei.hms.scankit.p.vd$a r1 = new com.huawei.hms.scankit.p.vd$a
            r1.<init>()
            java.lang.Object r0 = java.util.Collections.min(r0, r1)
            com.huawei.hms.scankit.p.xd r0 = (com.huawei.hms.scankit.p.C0233xd) r0
            byte[] r1 = r8.f843e
            com.huawei.hms.scankit.p.ab r0 = r0.a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0223vd.a():com.huawei.hms.scankit.p.ab");
    }
}
