package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.td, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0213td extends com.huawei.hms.scankit.p.AbstractC0238yd {

    /* renamed from: c, reason: collision with root package name */
    public final short f830c;

    /* renamed from: d, reason: collision with root package name */
    public final short f831d;

    public C0213td(com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238yd, int i, int i2) {
        super(abstractC0238yd);
        this.f830c = (short) i;
        this.f831d = (short) i2;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0238yd
    public void a(com.huawei.hms.scankit.p.C0117ab c0117ab, byte[] bArr) throws java.lang.Exception {
        int i;
        int i2 = 0;
        while (true) {
            short s = this.f831d;
            if (i2 >= s) {
                return;
            }
            if (i2 == 0 || (i2 == 31 && s <= 62)) {
                int i3 = 5;
                c0117ab.a(31, 5);
                short s2 = this.f831d;
                if (s2 > 62) {
                    i = s2 - 31;
                    i3 = 16;
                } else if (i2 == 0) {
                    c0117ab.a(java.lang.Math.min((int) s2, 31), 5);
                } else {
                    i = s2 - 31;
                }
                c0117ab.a(i, i3);
            }
            c0117ab.a(bArr[this.f830c + i2], 8);
            i2++;
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("<");
        sbO.append((int) this.f830c);
        sbO.append("::");
        sbO.append((this.f830c + this.f831d) - 1);
        sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_GREATER_THAN);
        return sbO.toString();
    }
}
