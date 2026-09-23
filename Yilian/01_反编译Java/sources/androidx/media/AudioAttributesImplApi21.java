package androidx.media;

@android.annotation.TargetApi(21)
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements androidx.media.AudioAttributesImpl {
    public android.media.AudioAttributes a;
    public int b = -1;

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof androidx.media.AudioAttributesImplApi21) {
            return this.a.equals(((androidx.media.AudioAttributesImplApi21) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("AudioAttributesCompat: audioattributes=");
        sbO.append(this.a);
        return sbO.toString();
    }
}
