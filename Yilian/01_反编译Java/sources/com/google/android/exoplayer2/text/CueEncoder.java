package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public final class CueEncoder {
    public byte[] encode(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        java.util.ArrayList<android.os.Bundle> bundleArrayList = com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(list);
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelableArrayList("c", bundleArrayList);
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
