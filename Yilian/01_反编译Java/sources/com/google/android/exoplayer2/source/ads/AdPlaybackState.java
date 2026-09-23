package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public final class AdPlaybackState implements com.google.android.exoplayer2.Bundleable {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public static final int FIELD_AD_GROUPS = 1;
    public static final int FIELD_AD_RESUME_POSITION_US = 2;
    public static final int FIELD_CONTENT_DURATION_US = 3;
    public static final int FIELD_REMOVED_AD_GROUP_COUNT = 4;
    public final int adGroupCount;
    public final com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final java.lang.Object adsId;
    public final long contentDurationUs;
    public final int removedAdGroupCount;
    public static final com.google.android.exoplayer2.source.ads.AdPlaybackState NONE = new com.google.android.exoplayer2.source.ads.AdPlaybackState(null, new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[0], 0, com.google.android.exoplayer2.C.TIME_UNSET, 0);
    public static final com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup REMOVED_AD_GROUP = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(0).withAdCount(0);
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.source.ads.AdPlaybackState> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.n2.d0.h
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.source.ads.AdPlaybackState.fromBundle(bundle);
        }
    };

    public static final class AdGroup implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.n2.d0.f
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup.fromBundle(bundle);
            }
        };
        public static final int FIELD_CONTENT_RESUME_OFFSET_US = 5;
        public static final int FIELD_COUNT = 1;
        public static final int FIELD_DURATIONS_US = 4;
        public static final int FIELD_IS_SERVER_SIDE_INSERTED = 6;
        public static final int FIELD_STATES = 3;
        public static final int FIELD_TIME_US = 0;
        public static final int FIELD_URIS = 2;
        public final long contentResumeOffsetUs;
        public final int count;
        public final long[] durationsUs;
        public final boolean isServerSideInserted;
        public final int[] states;
        public final long timeUs;
        public final android.net.Uri[] uris;

        public AdGroup(long j) {
            this(j, -1, new int[0], new android.net.Uri[0], new long[0], 0L, false);
        }

        public AdGroup(long j, int i, int[] iArr, android.net.Uri[] uriArr, long[] jArr, long j2, boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(iArr.length == uriArr.length);
            this.timeUs = j;
            this.count = i;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
            this.contentResumeOffsetUs = j2;
            this.isServerSideInserted = z;
        }

        public static long[] copyDurationsUsWithSpaceForAdCount(long[] jArr, int i) {
            int length = jArr.length;
            int iMax = java.lang.Math.max(i, length);
            long[] jArrCopyOf = java.util.Arrays.copyOf(jArr, iMax);
            java.util.Arrays.fill(jArrCopyOf, length, iMax, com.google.android.exoplayer2.C.TIME_UNSET);
            return jArrCopyOf;
        }

        public static int[] copyStatesWithSpaceForAdCount(int[] iArr, int i) {
            int length = iArr.length;
            int iMax = java.lang.Math.max(i, length);
            int[] iArrCopyOf = java.util.Arrays.copyOf(iArr, iMax);
            java.util.Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public static com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup fromBundle(android.os.Bundle bundle) {
            long j = bundle.getLong(keyForField(0));
            int i = bundle.getInt(keyForField(1), -1);
            java.util.ArrayList parcelableArrayList = bundle.getParcelableArrayList(keyForField(2));
            int[] intArray = bundle.getIntArray(keyForField(3));
            long[] longArray = bundle.getLongArray(keyForField(4));
            long j2 = bundle.getLong(keyForField(5));
            boolean z = bundle.getBoolean(keyForField(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(j, i, intArray, parcelableArrayList == null ? new android.net.Uri[0] : (android.net.Uri[]) parcelableArrayList.toArray(new android.net.Uri[0]), longArray == null ? new long[0] : longArray, j2, z);
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup) obj;
            return this.timeUs == adGroup.timeUs && this.count == adGroup.count && java.util.Arrays.equals(this.uris, adGroup.uris) && java.util.Arrays.equals(this.states, adGroup.states) && java.util.Arrays.equals(this.durationsUs, adGroup.durationsUs) && this.contentResumeOffsetUs == adGroup.contentResumeOffsetUs && this.isServerSideInserted == adGroup.isServerSideInserted;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getNextAdIndexToPlay(int i) {
            int i2 = i + 1;
            while (true) {
                int[] iArr = this.states;
                if (i2 >= iArr.length || this.isServerSideInserted || iArr[i2] == 0 || iArr[i2] == 1) {
                    break;
                }
                i2++;
            }
            return i2;
        }

        public boolean hasUnplayedAds() {
            if (this.count == -1) {
                return true;
            }
            for (int i = 0; i < this.count; i++) {
                int[] iArr = this.states;
                if (iArr[i] == 0 || iArr[i] == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i = this.count * 31;
            long j = this.timeUs;
            int iHashCode = (java.util.Arrays.hashCode(this.durationsUs) + ((java.util.Arrays.hashCode(this.states) + ((((i + ((int) (j ^ (j >>> 32)))) * 31) + java.util.Arrays.hashCode(this.uris)) * 31)) * 31)) * 31;
            long j2 = this.contentResumeOffsetUs;
            return ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.isServerSideInserted ? 1 : 0);
        }

        public boolean shouldPlayAdGroup() {
            return this.count == -1 || getFirstAdIndexToPlay() < this.count;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putLong(keyForField(0), this.timeUs);
            bundle.putInt(keyForField(1), this.count);
            bundle.putParcelableArrayList(keyForField(2), new java.util.ArrayList<>(java.util.Arrays.asList(this.uris)));
            bundle.putIntArray(keyForField(3), this.states);
            bundle.putLongArray(keyForField(4), this.durationsUs);
            bundle.putLong(keyForField(5), this.contentResumeOffsetUs);
            bundle.putBoolean(keyForField(6), this.isServerSideInserted);
            return bundle;
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAdCount(int i) {
            int[] iArrCopyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i);
            long[] jArrCopyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(this.durationsUs, i);
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, i, iArrCopyStatesWithSpaceForAdCount, (android.net.Uri[]) java.util.Arrays.copyOf(this.uris, i), jArrCopyDurationsUsWithSpaceForAdCount, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAdDurationsUs(long[] jArr) {
            int length = jArr.length;
            android.net.Uri[] uriArr = this.uris;
            if (length < uriArr.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, uriArr.length);
            } else if (this.count != -1 && jArr.length > uriArr.length) {
                jArr = java.util.Arrays.copyOf(jArr, uriArr.length);
            }
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, this.count, this.states, this.uris, jArr, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAdState(int i, int i2) {
            int i3 = this.count;
            com.google.android.exoplayer2.util.Assertions.checkArgument(i3 == -1 || i2 < i3);
            int[] iArrCopyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i2 + 1);
            com.google.android.exoplayer2.util.Assertions.checkArgument(iArrCopyStatesWithSpaceForAdCount[i2] == 0 || iArrCopyStatesWithSpaceForAdCount[i2] == 1 || iArrCopyStatesWithSpaceForAdCount[i2] == i);
            long[] jArrCopyDurationsUsWithSpaceForAdCount = this.durationsUs;
            if (jArrCopyDurationsUsWithSpaceForAdCount.length != iArrCopyStatesWithSpaceForAdCount.length) {
                jArrCopyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(jArrCopyDurationsUsWithSpaceForAdCount, iArrCopyStatesWithSpaceForAdCount.length);
            }
            long[] jArr = jArrCopyDurationsUsWithSpaceForAdCount;
            android.net.Uri[] uriArr = this.uris;
            if (uriArr.length != iArrCopyStatesWithSpaceForAdCount.length) {
                uriArr = (android.net.Uri[]) java.util.Arrays.copyOf(uriArr, iArrCopyStatesWithSpaceForAdCount.length);
            }
            iArrCopyStatesWithSpaceForAdCount[i2] = i;
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, this.count, iArrCopyStatesWithSpaceForAdCount, uriArr, jArr, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAdUri(android.net.Uri uri, int i) {
            int[] iArrCopyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i + 1);
            long[] jArrCopyDurationsUsWithSpaceForAdCount = this.durationsUs;
            if (jArrCopyDurationsUsWithSpaceForAdCount.length != iArrCopyStatesWithSpaceForAdCount.length) {
                jArrCopyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(jArrCopyDurationsUsWithSpaceForAdCount, iArrCopyStatesWithSpaceForAdCount.length);
            }
            long[] jArr = jArrCopyDurationsUsWithSpaceForAdCount;
            android.net.Uri[] uriArr = (android.net.Uri[]) java.util.Arrays.copyOf(this.uris, iArrCopyStatesWithSpaceForAdCount.length);
            uriArr[i] = uri;
            iArrCopyStatesWithSpaceForAdCount[i] = 1;
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, this.count, iArrCopyStatesWithSpaceForAdCount, uriArr, jArr, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, 0, new int[0], new android.net.Uri[0], new long[0], this.contentResumeOffsetUs, this.isServerSideInserted);
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] iArrCopyOf = java.util.Arrays.copyOf(iArr, length);
            for (int i = 0; i < length; i++) {
                if (iArrCopyOf[i] == 1 || iArrCopyOf[i] == 0) {
                    iArrCopyOf[i] = 2;
                }
            }
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, length, iArrCopyOf, this.uris, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withContentResumeOffsetUs(long j) {
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, this.count, this.states, this.uris, this.durationsUs, j, this.isServerSideInserted);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withIsServerSideInserted(boolean z) {
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(this.timeUs, this.count, this.states, this.uris, this.durationsUs, this.contentResumeOffsetUs, z);
        }

        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withTimeUs(long j) {
            return new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(j, this.count, this.states, this.uris, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted);
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public AdPlaybackState(java.lang.Object obj, long... jArr) {
        this(obj, createEmptyAdGroups(jArr), 0L, com.google.android.exoplayer2.C.TIME_UNSET, 0);
    }

    public AdPlaybackState(java.lang.Object obj, com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr, long j, long j2, int i) {
        this.adsId = obj;
        this.adResumePositionUs = j;
        this.contentDurationUs = j2;
        this.adGroupCount = adGroupArr.length + i;
        this.adGroups = adGroupArr;
        this.removedAdGroupCount = i;
    }

    public static com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] createEmptyAdGroups(long[] jArr) {
        int length = jArr.length;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[length];
        for (int i = 0; i < length; i++) {
            adGroupArr[i] = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(jArr[i]);
        }
        return adGroupArr;
    }

    public static com.google.android.exoplayer2.source.ads.AdPlaybackState fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr;
        java.util.ArrayList parcelableArrayList = bundle.getParcelableArrayList(keyForField(1));
        if (parcelableArrayList == null) {
            adGroupArr = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[0];
        } else {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[parcelableArrayList.size()];
            for (int i = 0; i < parcelableArrayList.size(); i++) {
                adGroupArr2[i] = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup) com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup.CREATOR.fromBundle((android.os.Bundle) parcelableArrayList.get(i));
            }
            adGroupArr = adGroupArr2;
        }
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(null, adGroupArr, bundle.getLong(keyForField(2), 0L), bundle.getLong(keyForField(3), com.google.android.exoplayer2.C.TIME_UNSET), bundle.getInt(keyForField(4)));
    }

    private boolean isPositionBeforeAdGroup(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = getAdGroup(i).timeUs;
        return j3 == Long.MIN_VALUE ? j2 == com.google.android.exoplayer2.C.TIME_UNSET || j < j2 : j < j3;
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.source.ads.AdPlaybackState.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = (com.google.android.exoplayer2.source.ads.AdPlaybackState) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.adsId, adPlaybackState.adsId) && this.adGroupCount == adPlaybackState.adGroupCount && this.adResumePositionUs == adPlaybackState.adResumePositionUs && this.contentDurationUs == adPlaybackState.contentDurationUs && this.removedAdGroupCount == adPlaybackState.removedAdGroupCount && java.util.Arrays.equals(this.adGroups, adPlaybackState.adGroups);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup getAdGroup(int i) {
        int i2 = this.removedAdGroupCount;
        return i < i2 ? REMOVED_AD_GROUP : this.adGroups[i - i2];
    }

    public int getAdGroupIndexAfterPositionUs(long j, long j2) {
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET && j >= j2) {
            return -1;
        }
        int i = this.removedAdGroupCount;
        while (i < this.adGroupCount && ((getAdGroup(i).timeUs != Long.MIN_VALUE && getAdGroup(i).timeUs <= j) || !getAdGroup(i).shouldPlayAdGroup())) {
            i++;
        }
        if (i < this.adGroupCount) {
            return i;
        }
        return -1;
    }

    public int getAdGroupIndexForPositionUs(long j, long j2) {
        int i = this.adGroupCount - 1;
        while (i >= 0 && isPositionBeforeAdGroup(j, j2, i)) {
            i--;
        }
        if (i < 0 || !getAdGroup(i).hasUnplayedAds()) {
            return -1;
        }
        return i;
    }

    public int hashCode() {
        int i = this.adGroupCount * 31;
        java.lang.Object obj = this.adsId;
        return ((((((((i + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.adResumePositionUs)) * 31) + ((int) this.contentDurationUs)) * 31) + this.removedAdGroupCount) * 31) + java.util.Arrays.hashCode(this.adGroups);
    }

    public boolean isAdInErrorState(int i, int i2) {
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup;
        int i3;
        return i < this.adGroupCount && (i3 = (adGroup = getAdGroup(i)).count) != -1 && i2 < i3 && adGroup.states[i2] == 4;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        java.util.ArrayList<? extends android.os.Parcelable> arrayList = new java.util.ArrayList<>();
        for (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup : this.adGroups) {
            arrayList.add(adGroup.toBundle());
        }
        bundle.putParcelableArrayList(keyForField(1), arrayList);
        bundle.putLong(keyForField(2), this.adResumePositionUs);
        bundle.putLong(keyForField(3), this.contentDurationUs);
        bundle.putInt(keyForField(4), this.removedAdGroupCount);
        return bundle;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("AdPlaybackState(adsId=");
        sbO.append(this.adsId);
        sbO.append(", adResumePositionUs=");
        sbO.append(this.adResumePositionUs);
        sbO.append(", adGroups=[");
        for (int i = 0; i < this.adGroups.length; i++) {
            sbO.append("adGroup(timeUs=");
            sbO.append(this.adGroups[i].timeUs);
            sbO.append(", ads=[");
            for (int i2 = 0; i2 < this.adGroups[i].states.length; i2++) {
                sbO.append("ad(state=");
                int i3 = this.adGroups[i].states[i2];
                sbO.append(i3 != 0 ? i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? '?' : '!' : 'P' : 'S' : 'R' : '_');
                sbO.append(", durationUs=");
                sbO.append(this.adGroups[i].durationsUs[i2]);
                sbO.append(')');
                if (i2 < this.adGroups[i].states.length - 1) {
                    sbO.append(", ");
                }
            }
            sbO.append("])");
            if (i < this.adGroups.length - 1) {
                sbO.append(", ");
            }
        }
        sbO.append("])");
        return sbO.toString();
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdCount(int i, int i2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i2 > 0);
        int i3 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i3].count == i2) {
            return this;
        }
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i3] = this.adGroups[i3].withAdCount(i2);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdDurationsUs(int i, long... jArr) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i2] = adGroupArr2[i2].withAdDurationsUs(jArr);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdDurationsUs(long[][] jArr) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.removedAdGroupCount == 0);
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        for (int i = 0; i < this.adGroupCount; i++) {
            adGroupArr2[i] = adGroupArr2[i].withAdDurationsUs(jArr[i]);
        }
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdGroupTimeUs(int i, long j) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i2] = this.adGroups[i2].withTimeUs(j);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdLoadError(int i, int i2) {
        int i3 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i3] = adGroupArr2[i3].withAdState(4, i2);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdResumePositionUs(long j) {
        return this.adResumePositionUs == j ? this : new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, this.adGroups, j, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withAdUri(int i, int i2, android.net.Uri uri) {
        int i3 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i3] = adGroupArr2[i3].withAdUri(uri, i2);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withContentDurationUs(long j) {
        return this.contentDurationUs == j ? this : new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, this.adGroups, this.adResumePositionUs, j, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withContentResumeOffsetUs(int i, long j) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i2].contentResumeOffsetUs == j) {
            return this;
        }
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i2] = adGroupArr2[i2].withContentResumeOffsetUs(j);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withIsServerSideInserted(int i, boolean z) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i2].isServerSideInserted == z) {
            return this;
        }
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i2] = adGroupArr2[i2].withIsServerSideInserted(z);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withNewAdGroup(int i, long j) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup(j);
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayAppend(this.adGroups, adGroup);
        java.lang.System.arraycopy(adGroupArr, i2, adGroupArr, i2 + 1, this.adGroups.length - i2);
        adGroupArr[i2] = adGroup;
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withPlayedAd(int i, int i2) {
        int i3 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i3] = adGroupArr2[i3].withAdState(3, i2);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withRemovedAdGroupCount(int i) {
        int i2 = this.removedAdGroupCount;
        if (i2 == i) {
            return this;
        }
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > i2);
        int i3 = this.adGroupCount - i;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = new com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[i3];
        java.lang.System.arraycopy(this.adGroups, i - this.removedAdGroupCount, adGroupArr, 0, i3);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr, this.adResumePositionUs, this.contentDurationUs, i);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withSkippedAd(int i, int i2) {
        int i3 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i3] = adGroupArr2[i3].withAdState(2, i2);
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public com.google.android.exoplayer2.source.ads.AdPlaybackState withSkippedAdGroup(int i) {
        int i2 = i - this.removedAdGroupCount;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr = this.adGroups;
        com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[] adGroupArr2 = (com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i2] = adGroupArr2[i2].withAllAdsSkipped();
        return new com.google.android.exoplayer2.source.ads.AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }
}
