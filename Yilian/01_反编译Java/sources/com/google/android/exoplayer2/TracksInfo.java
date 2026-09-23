package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class TracksInfo implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_TRACK_GROUP_INFOS = 0;
    public final e.c.b.b.s<com.google.android.exoplayer2.TracksInfo.TrackGroupInfo> trackGroupInfos;
    public static final com.google.android.exoplayer2.TracksInfo EMPTY = new com.google.android.exoplayer2.TracksInfo(e.c.b.b.s.p());
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.TracksInfo> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.q1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.TracksInfo.a(bundle);
        }
    };

    public static final class TrackGroupInfo implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.TracksInfo.TrackGroupInfo> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.r1
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.TracksInfo.TrackGroupInfo.a(bundle);
            }
        };
        public static final int FIELD_TRACK_GROUP = 0;
        public static final int FIELD_TRACK_SELECTED = 3;
        public static final int FIELD_TRACK_SUPPORT = 1;
        public static final int FIELD_TRACK_TYPE = 2;
        public final com.google.android.exoplayer2.source.TrackGroup trackGroup;
        public final boolean[] trackSelected;
        public final int[] trackSupport;
        public final int trackType;

        public TrackGroupInfo(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, boolean[] zArr) {
            int i2 = trackGroup.length;
            com.google.android.exoplayer2.util.Assertions.checkArgument(i2 == iArr.length && i2 == zArr.length);
            this.trackGroup = trackGroup;
            this.trackSupport = (int[]) iArr.clone();
            this.trackType = i;
            this.trackSelected = (boolean[]) zArr.clone();
        }

        public static /* synthetic */ com.google.android.exoplayer2.TracksInfo.TrackGroupInfo a(android.os.Bundle bundle) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = (com.google.android.exoplayer2.source.TrackGroup) com.google.android.exoplayer2.util.BundleableUtil.fromNullableBundle(com.google.android.exoplayer2.source.TrackGroup.CREATOR, bundle.getBundle(keyForField(0)));
            com.google.android.exoplayer2.util.Assertions.checkNotNull(trackGroup);
            return new com.google.android.exoplayer2.TracksInfo.TrackGroupInfo(trackGroup, (int[]) e.c.b.a.f.i(bundle.getIntArray(keyForField(1)), new int[trackGroup.length]), bundle.getInt(keyForField(2), -1), (boolean[]) e.c.b.a.f.i(bundle.getBooleanArray(keyForField(3)), new boolean[trackGroup.length]));
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.TracksInfo.TrackGroupInfo.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.TracksInfo.TrackGroupInfo trackGroupInfo = (com.google.android.exoplayer2.TracksInfo.TrackGroupInfo) obj;
            return this.trackType == trackGroupInfo.trackType && this.trackGroup.equals(trackGroupInfo.trackGroup) && java.util.Arrays.equals(this.trackSupport, trackGroupInfo.trackSupport) && java.util.Arrays.equals(this.trackSelected, trackGroupInfo.trackSelected);
        }

        public com.google.android.exoplayer2.source.TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        public int getTrackSupport(int i) {
            return this.trackSupport[i];
        }

        public int getTrackType() {
            return this.trackType;
        }

        public int hashCode() {
            return java.util.Arrays.hashCode(this.trackSelected) + ((((java.util.Arrays.hashCode(this.trackSupport) + (this.trackGroup.hashCode() * 31)) * 31) + this.trackType) * 31);
        }

        public boolean isSelected() {
            for (boolean z : this.trackSelected) {
                if (z) {
                    return true;
                }
            }
            return false;
        }

        public boolean isSupported() {
            for (int i = 0; i < this.trackSupport.length; i++) {
                if (isTrackSupported(i)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isTrackSelected(int i) {
            return this.trackSelected[i];
        }

        public boolean isTrackSupported(int i) {
            return this.trackSupport[i] == 4;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putBundle(keyForField(0), this.trackGroup.toBundle());
            bundle.putIntArray(keyForField(1), this.trackSupport);
            bundle.putInt(keyForField(2), this.trackType);
            bundle.putBooleanArray(keyForField(3), this.trackSelected);
            return bundle;
        }
    }

    public TracksInfo(java.util.List<com.google.android.exoplayer2.TracksInfo.TrackGroupInfo> list) {
        this.trackGroupInfos = e.c.b.b.s.l(list);
    }

    public static com.google.android.exoplayer2.TracksInfo a(android.os.Bundle bundle) {
        return new com.google.android.exoplayer2.TracksInfo(com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableList(com.google.android.exoplayer2.TracksInfo.TrackGroupInfo.CREATOR, bundle.getParcelableArrayList(keyForField(0)), e.c.b.b.k0.f2705e));
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.TracksInfo.class != obj.getClass()) {
            return false;
        }
        return this.trackGroupInfos.equals(((com.google.android.exoplayer2.TracksInfo) obj).trackGroupInfos);
    }

    public e.c.b.b.s<com.google.android.exoplayer2.TracksInfo.TrackGroupInfo> getTrackGroupInfos() {
        return this.trackGroupInfos;
    }

    public int hashCode() {
        return this.trackGroupInfos.hashCode();
    }

    public boolean isTypeSelected(int i) {
        for (int i2 = 0; i2 < this.trackGroupInfos.size(); i2++) {
            com.google.android.exoplayer2.TracksInfo.TrackGroupInfo trackGroupInfo = this.trackGroupInfos.get(i2);
            if (trackGroupInfo.isSelected() && trackGroupInfo.getTrackType() == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isTypeSupportedOrEmpty(int i) {
        boolean z = true;
        for (int i2 = 0; i2 < this.trackGroupInfos.size(); i2++) {
            if (this.trackGroupInfos.get(i2).trackType == i) {
                if (this.trackGroupInfos.get(i2).isSupported()) {
                    return true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelableArrayList(keyForField(0), com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(this.trackGroupInfos));
        return bundle;
    }
}
