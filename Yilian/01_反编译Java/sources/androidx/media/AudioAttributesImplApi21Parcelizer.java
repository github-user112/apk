package androidx.media;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static androidx.media.AudioAttributesImplApi21 read(d.u.a aVar) {
        androidx.media.AudioAttributesImplApi21 audioAttributesImplApi21 = new androidx.media.AudioAttributesImplApi21();
        audioAttributesImplApi21.a = (android.media.AudioAttributes) aVar.j(audioAttributesImplApi21.a, 1);
        audioAttributesImplApi21.b = aVar.i(audioAttributesImplApi21.b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(androidx.media.AudioAttributesImplApi21 audioAttributesImplApi21, d.u.a aVar) {
        if (aVar == null) {
            throw null;
        }
        aVar.n(audioAttributesImplApi21.a, 1);
        aVar.m(audioAttributesImplApi21.b, 2);
    }
}
