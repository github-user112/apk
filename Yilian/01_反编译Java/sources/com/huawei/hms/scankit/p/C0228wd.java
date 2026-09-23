package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.wd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0228wd extends com.huawei.hms.scankit.p.AbstractC0238yd {

    /* renamed from: c, reason: collision with root package name */
    public final short f849c;

    /* renamed from: d, reason: collision with root package name */
    public final short f850d;

    public C0228wd(com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238yd, int i, int i2) {
        super(abstractC0238yd);
        this.f849c = (short) i;
        this.f850d = (short) i2;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0238yd
    public void a(com.huawei.hms.scankit.p.C0117ab c0117ab, byte[] bArr) throws java.lang.Exception {
        c0117ab.a(this.f849c, this.f850d);
    }

    public java.lang.String toString() {
        short s = this.f849c;
        int i = 1 << this.f850d;
        return com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_LESS_THAN + java.lang.Integer.toBinaryString((s & (i - 1)) | i | (1 << this.f850d)).substring(1) + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_GREATER_THAN;
    }
}
