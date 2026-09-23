package com.huawei.hms.scankit.p;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.huawei.hms.scankit.p.lc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class EnumC0173lc {
    public static final com.huawei.hms.scankit.p.EnumC0173lc a = new com.huawei.hms.scankit.p.C0133dc("DATA_MASK_000", 0);
    public static final com.huawei.hms.scankit.p.EnumC0173lc b;

    /* renamed from: c, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0173lc f756c;

    /* renamed from: d, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0173lc f757d;

    /* renamed from: e, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0173lc f758e;

    /* renamed from: f, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0173lc f759f;

    /* renamed from: g, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0173lc f760g;
    public static final com.huawei.hms.scankit.p.EnumC0173lc h;
    public static final /* synthetic */ com.huawei.hms.scankit.p.EnumC0173lc[] i;

    static {
        final java.lang.String str = "DATA_MASK_001";
        final int i2 = 1;
        b = new com.huawei.hms.scankit.p.EnumC0173lc(str, i2) { // from class: com.huawei.hms.scankit.p.ec
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i3, int i4) {
                return (i3 & 1) == 0;
            }
        };
        final java.lang.String str2 = "DATA_MASK_010";
        final int i3 = 2;
        f756c = new com.huawei.hms.scankit.p.EnumC0173lc(str2, i3) { // from class: com.huawei.hms.scankit.p.fc
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i4, int i5) {
                return i5 % 3 == 0;
            }
        };
        final java.lang.String str3 = "DATA_MASK_011";
        final int i4 = 3;
        f757d = new com.huawei.hms.scankit.p.EnumC0173lc(str3, i4) { // from class: com.huawei.hms.scankit.p.gc
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i5, int i6) {
                return (i5 + i6) % 3 == 0;
            }
        };
        final java.lang.String str4 = "DATA_MASK_100";
        final int i5 = 4;
        f758e = new com.huawei.hms.scankit.p.EnumC0173lc(str4, i5) { // from class: com.huawei.hms.scankit.p.hc
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i6, int i7) {
                return (((i7 / 3) + (i6 / 2)) & 1) == 0;
            }
        };
        final java.lang.String str5 = "DATA_MASK_101";
        final int i6 = 5;
        f759f = new com.huawei.hms.scankit.p.EnumC0173lc(str5, i6) { // from class: com.huawei.hms.scankit.p.ic
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i7, int i8) {
                return (i7 * i8) % 6 == 0;
            }
        };
        final java.lang.String str6 = "DATA_MASK_110";
        final int i7 = 6;
        f760g = new com.huawei.hms.scankit.p.EnumC0173lc(str6, i7) { // from class: com.huawei.hms.scankit.p.jc
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i8, int i9) {
                return (i8 * i9) % 6 < 3;
            }
        };
        final java.lang.String str7 = "DATA_MASK_111";
        final int i8 = 7;
        com.huawei.hms.scankit.p.EnumC0173lc enumC0173lc = new com.huawei.hms.scankit.p.EnumC0173lc(str7, i8) { // from class: com.huawei.hms.scankit.p.kc
            {
                com.huawei.hms.scankit.p.C0133dc c0133dc = null;
            }

            @Override // com.huawei.hms.scankit.p.EnumC0173lc
            public boolean a(int i9, int i10) {
                return ((((i9 * i10) % 3) + (i9 + i10)) & 1) == 0;
            }
        };
        h = enumC0173lc;
        i = new com.huawei.hms.scankit.p.EnumC0173lc[]{a, b, f756c, f757d, f758e, f759f, f760g, enumC0173lc};
    }

    public EnumC0173lc(java.lang.String str, int i2) {
    }

    public /* synthetic */ EnumC0173lc(java.lang.String str, int i2, com.huawei.hms.scankit.p.C0133dc c0133dc) {
        this(str, i2);
    }

    public static com.huawei.hms.scankit.p.EnumC0173lc valueOf(java.lang.String str) {
        return (com.huawei.hms.scankit.p.EnumC0173lc) java.lang.Enum.valueOf(com.huawei.hms.scankit.p.EnumC0173lc.class, str);
    }

    public static com.huawei.hms.scankit.p.EnumC0173lc[] values() {
        return (com.huawei.hms.scankit.p.EnumC0173lc[]) i.clone();
    }

    public final void a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                if (a(i3, i4)) {
                    c0122bb.a(i4, i3);
                }
            }
        }
    }

    public abstract boolean a(int i2, int i3);
}
