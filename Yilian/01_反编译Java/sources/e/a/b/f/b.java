package e.a.b.f;

/* loaded from: classes.dex */
public final class b {
    public final byte[] a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2529c;

    public b(byte[] bArr) {
        int length = bArr.length;
        if (length < 0) {
            throw new java.lang.IllegalArgumentException("end < start");
        }
        if (length > bArr.length) {
            throw new java.lang.IllegalArgumentException("end > bytes.length");
        }
        this.a = bArr;
        this.b = 0;
        this.f2529c = length - 0;
    }
}
