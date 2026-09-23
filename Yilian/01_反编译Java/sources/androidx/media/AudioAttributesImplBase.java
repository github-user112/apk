package androidx.media;

/* loaded from: classes.dex */
public class AudioAttributesImplBase implements androidx.media.AudioAttributesImpl {
    public int a = 0;
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f129c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f130d = -1;

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof androidx.media.AudioAttributesImplBase)) {
            return false;
        }
        androidx.media.AudioAttributesImplBase audioAttributesImplBase = (androidx.media.AudioAttributesImplBase) obj;
        if (this.b != audioAttributesImplBase.b) {
            return false;
        }
        int i = this.f129c;
        int i2 = audioAttributesImplBase.f129c;
        int iA = audioAttributesImplBase.f130d;
        if (iA == -1) {
            iA = androidx.media.AudioAttributesCompat.a(false, i2, audioAttributesImplBase.a);
        }
        if (iA == 6) {
            i2 |= 4;
        } else if (iA == 7) {
            i2 |= 1;
        }
        return i == (i2 & 273) && this.a == audioAttributesImplBase.a && this.f130d == audioAttributesImplBase.f130d;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Integer.valueOf(this.b), java.lang.Integer.valueOf(this.f129c), java.lang.Integer.valueOf(this.a), java.lang.Integer.valueOf(this.f130d)});
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("AudioAttributesCompat:");
        if (this.f130d != -1) {
            sb.append(" stream=");
            sb.append(this.f130d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(androidx.media.AudioAttributesCompat.b(this.a));
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(java.lang.Integer.toHexString(this.f129c).toUpperCase());
        return sb.toString();
    }
}
