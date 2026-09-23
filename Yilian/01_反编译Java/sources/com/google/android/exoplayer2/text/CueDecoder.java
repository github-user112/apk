package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public final class CueDecoder {
    public static final java.lang.String BUNDLED_CUES = "c";

    public e.c.b.b.s<com.google.android.exoplayer2.text.Cue> decode(byte[] bArr) {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        android.os.Bundle bundle = parcelObtain.readBundle(android.os.Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return com.google.android.exoplayer2.util.BundleableUtil.fromBundleList(com.google.android.exoplayer2.text.Cue.CREATOR, (java.util.ArrayList) com.google.android.exoplayer2.util.Assertions.checkNotNull(bundle.getParcelableArrayList("c")));
    }
}
