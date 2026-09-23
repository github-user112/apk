package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class TrackGroupArray implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_TRACK_GROUPS = 0;
    public int hashCode;
    public final int length;
    public final com.google.android.exoplayer2.source.TrackGroup[] trackGroups;
    public static final com.google.android.exoplayer2.source.TrackGroupArray EMPTY = new com.google.android.exoplayer2.source.TrackGroupArray(new com.google.android.exoplayer2.source.TrackGroup[0]);
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.source.TrackGroupArray> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.n2.x
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.source.TrackGroupArray.a(bundle);
        }
    };

    public TrackGroupArray(com.google.android.exoplayer2.source.TrackGroup... trackGroupArr) {
        this.trackGroups = trackGroupArr;
        this.length = trackGroupArr.length;
    }

    public static /* synthetic */ com.google.android.exoplayer2.source.TrackGroupArray a(android.os.Bundle bundle) {
        return new com.google.android.exoplayer2.source.TrackGroupArray((com.google.android.exoplayer2.source.TrackGroup[]) com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableList(com.google.android.exoplayer2.source.TrackGroup.CREATOR, bundle.getParcelableArrayList(keyForField(0)), e.c.b.b.s.p()).toArray(new com.google.android.exoplayer2.source.TrackGroup[0]));
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.source.TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray = (com.google.android.exoplayer2.source.TrackGroupArray) obj;
        return this.length == trackGroupArray.length && java.util.Arrays.equals(this.trackGroups, trackGroupArray.trackGroups);
    }

    public com.google.android.exoplayer2.source.TrackGroup get(int i) {
        return this.trackGroups[i];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = java.util.Arrays.hashCode(this.trackGroups);
        }
        return this.hashCode;
    }

    public int indexOf(com.google.android.exoplayer2.source.TrackGroup trackGroup) {
        for (int i = 0; i < this.length; i++) {
            if (this.trackGroups[i] == trackGroup) {
                return i;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelableArrayList(keyForField(0), com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(e.c.b.b.j.d(this.trackGroups)));
        return bundle;
    }
}
