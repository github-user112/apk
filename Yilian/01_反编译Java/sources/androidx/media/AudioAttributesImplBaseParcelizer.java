package androidx.media;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static androidx.media.AudioAttributesImplBase read(d.u.a aVar) {
        androidx.media.AudioAttributesImplBase audioAttributesImplBase = new androidx.media.AudioAttributesImplBase();
        audioAttributesImplBase.a = aVar.i(audioAttributesImplBase.a, 1);
        audioAttributesImplBase.b = aVar.i(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.f129c = aVar.i(audioAttributesImplBase.f129c, 3);
        audioAttributesImplBase.f130d = aVar.i(audioAttributesImplBase.f130d, 4);
        return audioAttributesImplBase;
    }

    public static void write(androidx.media.AudioAttributesImplBase audioAttributesImplBase, d.u.a aVar) {
        if (aVar == null) {
            throw null;
        }
        aVar.m(audioAttributesImplBase.a, 1);
        aVar.m(audioAttributesImplBase.b, 2);
        aVar.m(audioAttributesImplBase.f129c, 3);
        aVar.m(audioAttributesImplBase.f130d, 4);
    }
}
