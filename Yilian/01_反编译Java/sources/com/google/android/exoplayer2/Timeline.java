package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public abstract class Timeline implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_PERIODS = 1;
    public static final int FIELD_SHUFFLED_WINDOW_INDICES = 2;
    public static final int FIELD_WINDOWS = 0;
    public static final com.google.android.exoplayer2.Timeline EMPTY = new com.google.android.exoplayer2.Timeline() { // from class: com.google.android.exoplayer2.Timeline.1
        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(java.lang.Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            throw new java.lang.IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public java.lang.Object getUidOfPeriod(int i) {
            throw new java.lang.IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            throw new java.lang.IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 0;
        }
    };
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.Timeline> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.b
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.Timeline.fromBundle(bundle);
        }
    };

    public static final class Period implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.Timeline.Period> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.z1
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.Timeline.Period.fromBundle(bundle);
            }
        };
        public static final int FIELD_AD_PLAYBACK_STATE = 4;
        public static final int FIELD_DURATION_US = 1;
        public static final int FIELD_PLACEHOLDER = 3;
        public static final int FIELD_POSITION_IN_WINDOW_US = 2;
        public static final int FIELD_WINDOW_INDEX = 0;
        public com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE;
        public long durationUs;
        public java.lang.Object id;
        public boolean isPlaceholder;
        public long positionInWindowUs;
        public java.lang.Object uid;
        public int windowIndex;

        public static com.google.android.exoplayer2.Timeline.Period fromBundle(android.os.Bundle bundle) {
            int i = bundle.getInt(keyForField(0), 0);
            long j = bundle.getLong(keyForField(1), com.google.android.exoplayer2.C.TIME_UNSET);
            long j2 = bundle.getLong(keyForField(2), 0L);
            boolean z = bundle.getBoolean(keyForField(3));
            android.os.Bundle bundle2 = bundle.getBundle(keyForField(4));
            com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = bundle2 != null ? (com.google.android.exoplayer2.source.ads.AdPlaybackState) com.google.android.exoplayer2.source.ads.AdPlaybackState.CREATOR.fromBundle(bundle2) : com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE;
            com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
            period.set(null, null, i, j, j2, adPlaybackState, z);
            return period;
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !com.google.android.exoplayer2.Timeline.Period.class.equals(obj.getClass())) {
                return false;
            }
            com.google.android.exoplayer2.Timeline.Period period = (com.google.android.exoplayer2.Timeline.Period) obj;
            return com.google.android.exoplayer2.util.Util.areEqual(this.id, period.id) && com.google.android.exoplayer2.util.Util.areEqual(this.uid, period.uid) && this.windowIndex == period.windowIndex && this.durationUs == period.durationUs && this.positionInWindowUs == period.positionInWindowUs && this.isPlaceholder == period.isPlaceholder && com.google.android.exoplayer2.util.Util.areEqual(this.adPlaybackState, period.adPlaybackState);
        }

        public int getAdCountInAdGroup(int i) {
            return this.adPlaybackState.getAdGroup(i).count;
        }

        public long getAdDurationUs(int i, int i2) {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = this.adPlaybackState.getAdGroup(i);
            return adGroup.count != -1 ? adGroup.durationsUs[i2] : com.google.android.exoplayer2.C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.adPlaybackState.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j) {
            return this.adPlaybackState.getAdGroupIndexAfterPositionUs(j, this.durationUs);
        }

        public int getAdGroupIndexForPositionUs(long j) {
            return this.adPlaybackState.getAdGroupIndexForPositionUs(j, this.durationUs);
        }

        public long getAdGroupTimeUs(int i) {
            return this.adPlaybackState.getAdGroup(i).timeUs;
        }

        public long getAdResumePositionUs() {
            return this.adPlaybackState.adResumePositionUs;
        }

        public java.lang.Object getAdsId() {
            return this.adPlaybackState.adsId;
        }

        public long getContentResumeOffsetUs(int i) {
            return this.adPlaybackState.getAdGroup(i).contentResumeOffsetUs;
        }

        public long getDurationMs() {
            return com.google.android.exoplayer2.util.Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i) {
            return this.adPlaybackState.getAdGroup(i).getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i, int i2) {
            return this.adPlaybackState.getAdGroup(i).getNextAdIndexToPlay(i2);
        }

        public long getPositionInWindowMs() {
            return com.google.android.exoplayer2.util.Util.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public int getRemovedAdGroupCount() {
            return this.adPlaybackState.removedAdGroupCount;
        }

        public boolean hasPlayedAdGroup(int i) {
            return !this.adPlaybackState.getAdGroup(i).hasUnplayedAds();
        }

        public int hashCode() {
            java.lang.Object obj = this.id;
            int iHashCode = (com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8 + (obj == null ? 0 : obj.hashCode())) * 31;
            java.lang.Object obj2 = this.uid;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.windowIndex) * 31;
            long j = this.durationUs;
            int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.positionInWindowUs;
            return this.adPlaybackState.hashCode() + ((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31);
        }

        public boolean isServerSideInsertedAdGroup(int i) {
            return this.adPlaybackState.getAdGroup(i).isServerSideInserted;
        }

        public com.google.android.exoplayer2.Timeline.Period set(java.lang.Object obj, java.lang.Object obj2, int i, long j, long j2) {
            return set(obj, obj2, i, j, j2, com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE, false);
        }

        public com.google.android.exoplayer2.Timeline.Period set(java.lang.Object obj, java.lang.Object obj2, int i, long j, long j2, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState, boolean z) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i;
            this.durationUs = j;
            this.positionInWindowUs = j2;
            this.adPlaybackState = adPlaybackState;
            this.isPlaceholder = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putInt(keyForField(0), this.windowIndex);
            bundle.putLong(keyForField(1), this.durationUs);
            bundle.putLong(keyForField(2), this.positionInWindowUs);
            bundle.putBoolean(keyForField(3), this.isPlaceholder);
            bundle.putBundle(keyForField(4), this.adPlaybackState.toBundle());
            return bundle;
        }
    }

    public static final class RemotableTimeline extends com.google.android.exoplayer2.Timeline {
        public final e.c.b.b.s<com.google.android.exoplayer2.Timeline.Period> periods;
        public final int[] shuffledWindowIndices;
        public final int[] windowIndicesInShuffled;
        public final e.c.b.b.s<com.google.android.exoplayer2.Timeline.Window> windows;

        public RemotableTimeline(e.c.b.b.s<com.google.android.exoplayer2.Timeline.Window> sVar, e.c.b.b.s<com.google.android.exoplayer2.Timeline.Period> sVar2, int[] iArr) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(sVar.size() == iArr.length);
            this.windows = sVar;
            this.periods = sVar2;
            this.shuffledWindowIndices = iArr;
            this.windowIndicesInShuffled = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.windowIndicesInShuffled[iArr[i]] = i;
            }
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getFirstWindowIndex(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            if (z) {
                return this.shuffledWindowIndices[0];
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(java.lang.Object obj) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getLastWindowIndex(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            return z ? this.shuffledWindowIndices[getWindowCount() - 1] : getWindowCount() - 1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != getLastWindowIndex(z)) {
                return z ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i] + 1] : i + 1;
            }
            if (i2 == 2) {
                return getFirstWindowIndex(z);
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            com.google.android.exoplayer2.Timeline.Period period2 = this.periods.get(i);
            period.set(period2.id, period2.uid, period2.windowIndex, period2.durationUs, period2.positionInWindowUs, period2.adPlaybackState, period2.isPlaceholder);
            return period;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.periods.size();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != getFirstWindowIndex(z)) {
                return z ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i] - 1] : i - 1;
            }
            if (i2 == 2) {
                return getLastWindowIndex(z);
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public java.lang.Object getUidOfPeriod(int i) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            com.google.android.exoplayer2.Timeline.Window window2 = this.windows.get(i);
            window.set(window2.uid, window2.mediaItem, window2.manifest, window2.presentationStartTimeMs, window2.windowStartTimeMs, window2.elapsedRealtimeEpochOffsetMs, window2.isSeekable, window2.isDynamic, window2.liveConfiguration, window2.defaultPositionUs, window2.durationUs, window2.firstPeriodIndex, window2.lastPeriodIndex, window2.positionInFirstPeriodUs);
            window.isPlaceholder = window2.isPlaceholder;
            return window;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.windows.size();
        }
    }

    public static final class Window implements com.google.android.exoplayer2.Bundleable {
        public static final int FIELD_DEFAULT_POSITION_US = 9;
        public static final int FIELD_DURATION_US = 10;
        public static final int FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS = 4;
        public static final int FIELD_FIRST_PERIOD_INDEX = 11;
        public static final int FIELD_IS_DYNAMIC = 6;
        public static final int FIELD_IS_PLACEHOLDER = 8;
        public static final int FIELD_IS_SEEKABLE = 5;
        public static final int FIELD_LAST_PERIOD_INDEX = 12;
        public static final int FIELD_LIVE_CONFIGURATION = 7;
        public static final int FIELD_MEDIA_ITEM = 1;
        public static final int FIELD_POSITION_IN_FIRST_PERIOD_US = 13;
        public static final int FIELD_PRESENTATION_START_TIME_MS = 2;
        public static final int FIELD_WINDOW_START_TIME_MS = 3;
        public long defaultPositionUs;
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;

        @java.lang.Deprecated
        public boolean isLive;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration;
        public java.lang.Object manifest;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @java.lang.Deprecated
        public java.lang.Object tag;
        public long windowStartTimeMs;
        public static final java.lang.Object SINGLE_WINDOW_UID = new java.lang.Object();
        public static final java.lang.Object FAKE_WINDOW_UID = new java.lang.Object();
        public static final com.google.android.exoplayer2.MediaItem EMPTY_MEDIA_ITEM = new com.google.android.exoplayer2.MediaItem.Builder().setMediaId("com.google.android.exoplayer2.Timeline").setUri(android.net.Uri.EMPTY).build();
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.Timeline.Window> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p1
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.Timeline.Window.fromBundle(bundle);
            }
        };
        public java.lang.Object uid = SINGLE_WINDOW_UID;
        public com.google.android.exoplayer2.MediaItem mediaItem = EMPTY_MEDIA_ITEM;

        public static com.google.android.exoplayer2.Timeline.Window fromBundle(android.os.Bundle bundle) {
            android.os.Bundle bundle2 = bundle.getBundle(keyForField(1));
            com.google.android.exoplayer2.MediaItem mediaItem = bundle2 != null ? (com.google.android.exoplayer2.MediaItem) com.google.android.exoplayer2.MediaItem.CREATOR.fromBundle(bundle2) : null;
            long j = bundle.getLong(keyForField(2), com.google.android.exoplayer2.C.TIME_UNSET);
            long j2 = bundle.getLong(keyForField(3), com.google.android.exoplayer2.C.TIME_UNSET);
            long j3 = bundle.getLong(keyForField(4), com.google.android.exoplayer2.C.TIME_UNSET);
            boolean z = bundle.getBoolean(keyForField(5), false);
            boolean z2 = bundle.getBoolean(keyForField(6), false);
            android.os.Bundle bundle3 = bundle.getBundle(keyForField(7));
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = bundle3 != null ? (com.google.android.exoplayer2.MediaItem.LiveConfiguration) com.google.android.exoplayer2.MediaItem.LiveConfiguration.CREATOR.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(keyForField(8), false);
            long j4 = bundle.getLong(keyForField(9), 0L);
            long j5 = bundle.getLong(keyForField(10), com.google.android.exoplayer2.C.TIME_UNSET);
            int i = bundle.getInt(keyForField(11), 0);
            int i2 = bundle.getInt(keyForField(12), 0);
            long j6 = bundle.getLong(keyForField(13), 0L);
            com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
            window.set(FAKE_WINDOW_UID, mediaItem, null, j, j2, j3, z, z2, liveConfiguration, j4, j5, i, i2, j6);
            window.isPlaceholder = z3;
            return window;
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final android.os.Bundle toBundle(boolean z) {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putBundle(keyForField(1), (z ? com.google.android.exoplayer2.MediaItem.EMPTY : this.mediaItem).toBundle());
            bundle.putLong(keyForField(2), this.presentationStartTimeMs);
            bundle.putLong(keyForField(3), this.windowStartTimeMs);
            bundle.putLong(keyForField(4), this.elapsedRealtimeEpochOffsetMs);
            bundle.putBoolean(keyForField(5), this.isSeekable);
            bundle.putBoolean(keyForField(6), this.isDynamic);
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            if (liveConfiguration != null) {
                bundle.putBundle(keyForField(7), liveConfiguration.toBundle());
            }
            bundle.putBoolean(keyForField(8), this.isPlaceholder);
            bundle.putLong(keyForField(9), this.defaultPositionUs);
            bundle.putLong(keyForField(10), this.durationUs);
            bundle.putInt(keyForField(11), this.firstPeriodIndex);
            bundle.putInt(keyForField(12), this.lastPeriodIndex);
            bundle.putLong(keyForField(13), this.positionInFirstPeriodUs);
            return bundle;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !com.google.android.exoplayer2.Timeline.Window.class.equals(obj.getClass())) {
                return false;
            }
            com.google.android.exoplayer2.Timeline.Window window = (com.google.android.exoplayer2.Timeline.Window) obj;
            return com.google.android.exoplayer2.util.Util.areEqual(this.uid, window.uid) && com.google.android.exoplayer2.util.Util.areEqual(this.mediaItem, window.mediaItem) && com.google.android.exoplayer2.util.Util.areEqual(this.manifest, window.manifest) && com.google.android.exoplayer2.util.Util.areEqual(this.liveConfiguration, window.liveConfiguration) && this.presentationStartTimeMs == window.presentationStartTimeMs && this.windowStartTimeMs == window.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == window.elapsedRealtimeEpochOffsetMs && this.isSeekable == window.isSeekable && this.isDynamic == window.isDynamic && this.isPlaceholder == window.isPlaceholder && this.defaultPositionUs == window.defaultPositionUs && this.durationUs == window.durationUs && this.firstPeriodIndex == window.firstPeriodIndex && this.lastPeriodIndex == window.lastPeriodIndex && this.positionInFirstPeriodUs == window.positionInFirstPeriodUs;
        }

        public long getCurrentUnixTimeMs() {
            return com.google.android.exoplayer2.util.Util.getNowUnixTimeMs(this.elapsedRealtimeEpochOffsetMs);
        }

        public long getDefaultPositionMs() {
            return com.google.android.exoplayer2.util.Util.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return com.google.android.exoplayer2.util.Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return com.google.android.exoplayer2.util.Util.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public int hashCode() {
            int iHashCode = (this.mediaItem.hashCode() + ((this.uid.hashCode() + com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8) * 31)) * 31;
            java.lang.Object obj = this.manifest;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int iHashCode3 = (iHashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j = this.presentationStartTimeMs;
            int i = (iHashCode3 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.windowStartTimeMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.elapsedRealtimeEpochOffsetMs;
            int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31) + (this.isPlaceholder ? 1 : 0)) * 31;
            long j4 = this.defaultPositionUs;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.durationUs;
            int i5 = (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.firstPeriodIndex) * 31) + this.lastPeriodIndex) * 31;
            long j6 = this.positionInFirstPeriodUs;
            return i5 + ((int) (j6 ^ (j6 >>> 32)));
        }

        public boolean isLive() {
            com.google.android.exoplayer2.util.Assertions.checkState(this.isLive == (this.liveConfiguration != null));
            return this.liveConfiguration != null;
        }

        public com.google.android.exoplayer2.Timeline.Window set(java.lang.Object obj, com.google.android.exoplayer2.MediaItem mediaItem, java.lang.Object obj2, long j, long j2, long j3, boolean z, boolean z2, com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration, long j4, long j5, int i, int i2, long j6) {
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
            this.uid = obj;
            this.mediaItem = mediaItem != null ? mediaItem : EMPTY_MEDIA_ITEM;
            this.tag = (mediaItem == null || (localConfiguration = mediaItem.localConfiguration) == null) ? null : localConfiguration.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j;
            this.windowStartTimeMs = j2;
            this.elapsedRealtimeEpochOffsetMs = j3;
            this.isSeekable = z;
            this.isDynamic = z2;
            this.isLive = liveConfiguration != null;
            this.liveConfiguration = liveConfiguration;
            this.defaultPositionUs = j4;
            this.durationUs = j5;
            this.firstPeriodIndex = i;
            this.lastPeriodIndex = i2;
            this.positionInFirstPeriodUs = j6;
            this.isPlaceholder = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            return toBundle(false);
        }
    }

    public static com.google.android.exoplayer2.Timeline fromBundle(android.os.Bundle bundle) {
        e.c.b.b.s sVarFromBundleListRetriever = fromBundleListRetriever(com.google.android.exoplayer2.Timeline.Window.CREATOR, com.google.android.exoplayer2.util.BundleUtil.getBinder(bundle, keyForField(0)));
        e.c.b.b.s sVarFromBundleListRetriever2 = fromBundleListRetriever(com.google.android.exoplayer2.Timeline.Period.CREATOR, com.google.android.exoplayer2.util.BundleUtil.getBinder(bundle, keyForField(1)));
        int[] intArray = bundle.getIntArray(keyForField(2));
        if (intArray == null) {
            intArray = generateUnshuffledIndices(sVarFromBundleListRetriever.size());
        }
        return new com.google.android.exoplayer2.Timeline.RemotableTimeline(sVarFromBundleListRetriever, sVarFromBundleListRetriever2, intArray);
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> e.c.b.b.s<T> fromBundleListRetriever(com.google.android.exoplayer2.Bundleable.Creator<T> creator, android.os.IBinder iBinder) {
        if (iBinder == null) {
            return e.c.b.b.s.p();
        }
        d.s.y.l(4, "initialCapacity");
        java.lang.Object[] objArrCopyOf = new java.lang.Object[4];
        e.c.b.b.s<android.os.Bundle> list = com.google.android.exoplayer2.BundleListRetriever.getList(iBinder);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < list.size()) {
            com.google.android.exoplayer2.Bundleable bundleableFromBundle = creator.fromBundle(list.get(i));
            if (bundleableFromBundle == null) {
                throw null;
            }
            int i3 = i2 + 1;
            if (objArrCopyOf.length < i3) {
                objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i3));
            } else if (z) {
                objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
            } else {
                objArrCopyOf[i2] = bundleableFromBundle;
                i++;
                i2++;
            }
            z = false;
            objArrCopyOf[i2] = bundleableFromBundle;
            i++;
            i2++;
        }
        return e.c.b.b.s.i(objArrCopyOf, i2);
    }

    public static int[] generateUnshuffledIndices(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.Timeline)) {
            return false;
        }
        com.google.android.exoplayer2.Timeline timeline = (com.google.android.exoplayer2.Timeline) obj;
        if (timeline.getWindowCount() != getWindowCount() || timeline.getPeriodCount() != getPeriodCount()) {
            return false;
        }
        com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        com.google.android.exoplayer2.Timeline.Window window2 = new com.google.android.exoplayer2.Timeline.Window();
        com.google.android.exoplayer2.Timeline.Period period2 = new com.google.android.exoplayer2.Timeline.Period();
        for (int i = 0; i < getWindowCount(); i++) {
            if (!getWindow(i, window).equals(timeline.getWindow(i, window2))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < getPeriodCount(); i2++) {
            if (!getPeriod(i2, period, true).equals(timeline.getPeriod(i2, period2, true))) {
                return false;
            }
        }
        return true;
    }

    public int getFirstWindowIndex(boolean z) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(java.lang.Object obj);

    public int getLastWindowIndex(boolean z) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i, com.google.android.exoplayer2.Timeline.Period period, com.google.android.exoplayer2.Timeline.Window window, int i2, boolean z) {
        int i3 = getPeriod(i, period).windowIndex;
        if (getWindow(i3, window).lastPeriodIndex != i) {
            return i + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i3, i2, z);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == getLastWindowIndex(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == getLastWindowIndex(z) ? getFirstWindowIndex(z) : i + 1;
        }
        throw new java.lang.IllegalStateException();
    }

    public final com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period) {
        return getPeriod(i, period, false);
    }

    public abstract com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z);

    public com.google.android.exoplayer2.Timeline.Period getPeriodByUid(java.lang.Object obj, com.google.android.exoplayer2.Timeline.Period period) {
        return getPeriod(getIndexOfPeriod(obj), period, true);
    }

    public abstract int getPeriodCount();

    @com.google.errorprone.annotations.InlineMe(replacement = "this.getPeriodPositionUs(window, period, windowIndex, windowPositionUs)")
    @java.lang.Deprecated
    public final android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPosition(com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period, int i, long j) {
        return getPeriodPositionUs(window, period, i, j);
    }

    @com.google.errorprone.annotations.InlineMe(replacement = "this.getPeriodPositionUs(window, period, windowIndex, windowPositionUs, defaultPositionProjectionUs)")
    @java.lang.Deprecated
    public final android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPosition(com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period, int i, long j, long j2) {
        return getPeriodPositionUs(window, period, i, j, j2);
    }

    public final android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPositionUs(com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period, int i, long j) {
        return (android.util.Pair) com.google.android.exoplayer2.util.Assertions.checkNotNull(getPeriodPosition(window, period, i, j, 0L));
    }

    public final android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPositionUs(com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period, int i, long j, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkIndex(i, 0, getWindowCount());
        getWindow(i, window, j2);
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            j = window.getDefaultPositionUs();
            if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = window.firstPeriodIndex;
        getPeriod(i2, period);
        while (i2 < window.lastPeriodIndex && period.positionInWindowUs != j) {
            int i3 = i2 + 1;
            if (getPeriod(i3, period).positionInWindowUs > j) {
                break;
            }
            i2 = i3;
        }
        getPeriod(i2, period, true);
        long jMin = j - period.positionInWindowUs;
        long j3 = period.durationUs;
        if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
            jMin = java.lang.Math.min(jMin, j3 - 1);
        }
        return android.util.Pair.create(com.google.android.exoplayer2.util.Assertions.checkNotNull(period.uid), java.lang.Long.valueOf(java.lang.Math.max(0L, jMin)));
    }

    public int getPreviousWindowIndex(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == getFirstWindowIndex(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == getFirstWindowIndex(z) ? getLastWindowIndex(z) : i - 1;
        }
        throw new java.lang.IllegalStateException();
    }

    public abstract java.lang.Object getUidOfPeriod(int i);

    public final com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window) {
        return getWindow(i, window, 0L);
    }

    public abstract com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j);

    public abstract int getWindowCount();

    public int hashCode() {
        int i;
        com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        int windowCount = getWindowCount() + com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8;
        int i2 = 0;
        while (true) {
            i = windowCount * 31;
            if (i2 >= getWindowCount()) {
                break;
            }
            windowCount = i + getWindow(i2, window).hashCode();
            i2++;
        }
        int periodCount = getPeriodCount() + i;
        for (int i3 = 0; i3 < getPeriodCount(); i3++) {
            periodCount = (periodCount * 31) + getPeriod(i3, period, true).hashCode();
        }
        return periodCount;
    }

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, com.google.android.exoplayer2.Timeline.Window window, int i2, boolean z) {
        return getNextPeriodIndex(i, period, window, i2, z) == -1;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public final android.os.Bundle toBundle() {
        return toBundle(false);
    }

    public final android.os.Bundle toBundle(boolean z) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int windowCount = getWindowCount();
        com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
        for (int i = 0; i < windowCount; i++) {
            arrayList.add(getWindow(i, window, 0L).toBundle(z));
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        int periodCount = getPeriodCount();
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        for (int i2 = 0; i2 < periodCount; i2++) {
            arrayList2.add(getPeriod(i2, period, false).toBundle());
        }
        int[] iArr = new int[windowCount];
        if (windowCount > 0) {
            iArr[0] = getFirstWindowIndex(true);
        }
        for (int i3 = 1; i3 < windowCount; i3++) {
            iArr[i3] = getNextWindowIndex(iArr[i3 - 1], 0, true);
        }
        android.os.Bundle bundle = new android.os.Bundle();
        com.google.android.exoplayer2.util.BundleUtil.putBinder(bundle, keyForField(0), new com.google.android.exoplayer2.BundleListRetriever(arrayList));
        com.google.android.exoplayer2.util.BundleUtil.putBinder(bundle, keyForField(1), new com.google.android.exoplayer2.BundleListRetriever(arrayList2));
        bundle.putIntArray(keyForField(2), iArr);
        return bundle;
    }
}
