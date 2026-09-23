package androidx.media;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static androidx.media.AudioAttributesCompat read(d.u.a aVar) {
        androidx.media.AudioAttributesCompat audioAttributesCompat = new androidx.media.AudioAttributesCompat();
        d.u.c cVarK = audioAttributesCompat.a;
        if (aVar.h(1)) {
            cVarK = aVar.k();
        }
        audioAttributesCompat.a = (androidx.media.AudioAttributesImpl) cVarK;
        return audioAttributesCompat;
    }

    public static void write(androidx.media.AudioAttributesCompat audioAttributesCompat, d.u.a aVar) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (aVar == null) {
            throw null;
        }
        androidx.media.AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.a;
        aVar.l(1);
        aVar.o(audioAttributesImpl);
    }
}
