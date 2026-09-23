package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public class AdaptiveTrackSelection extends com.google.android.exoplayer2.trackselection.BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    public static final long MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 1000;
    public static final java.lang.String TAG = "AdaptiveTrackSelection";
    public final e.c.b.b.s<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint> adaptationCheckpoints;
    public final float bandwidthFraction;
    public final com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter;
    public final float bufferedFractionToLiveEdgeForQualityIncrease;
    public final com.google.android.exoplayer2.util.Clock clock;
    public com.google.android.exoplayer2.source.chunk.MediaChunk lastBufferEvaluationMediaChunk;
    public long lastBufferEvaluationMs;
    public final long maxDurationForQualityDecreaseUs;
    public final int maxHeightToDiscard;
    public final int maxWidthToDiscard;
    public final long minDurationForQualityIncreaseUs;
    public final long minDurationToRetainAfterDiscardUs;
    public float playbackSpeed;
    public int reason;
    public int selectedIndex;

    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public AdaptationCheckpoint(long j, long j2) {
            this.totalBandwidth = j;
            this.allocatedBandwidth = j2;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint)) {
                return false;
            }
            com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint adaptationCheckpoint = (com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }
    }

    public static class Factory implements com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory {
        public final float bandwidthFraction;
        public final float bufferedFractionToLiveEdgeForQualityIncrease;
        public final com.google.android.exoplayer2.util.Clock clock;
        public final int maxDurationForQualityDecreaseMs;
        public final int maxHeightToDiscard;
        public final int maxWidthToDiscard;
        public final int minDurationForQualityIncreaseMs;
        public final int minDurationToRetainAfterDiscardMs;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public Factory(int i, int i2, int i3, float f2) {
            this(i, i2, i3, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f2, 0.75f, com.google.android.exoplayer2.util.Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, float f2, float f3, com.google.android.exoplayer2.util.Clock clock) {
            this(i, i2, i3, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f2, f3, clock);
        }

        public Factory(int i, int i2, int i3, int i4, int i5, float f2) {
            this(i, i2, i3, i4, i5, f2, 0.75f, com.google.android.exoplayer2.util.Clock.DEFAULT);
        }

        public Factory(int i, int i2, int i3, int i4, int i5, float f2, float f3, com.google.android.exoplayer2.util.Clock clock) {
            this.minDurationForQualityIncreaseMs = i;
            this.maxDurationForQualityDecreaseMs = i2;
            this.minDurationToRetainAfterDiscardMs = i3;
            this.maxWidthToDiscard = i4;
            this.maxHeightToDiscard = i5;
            this.bandwidthFraction = f2;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
            this.clock = clock;
        }

        public com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection createAdaptiveTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, e.c.b.b.s<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint> sVar) {
            return new com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection(trackGroup, iArr, i, bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, sVar, this.clock);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
        public final com.google.android.exoplayer2.trackselection.ExoTrackSelection[] createTrackSelections(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
            e.c.b.b.s adaptationCheckpoints = com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.getAdaptationCheckpoints(definitionArr);
            com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr = new com.google.android.exoplayer2.trackselection.ExoTrackSelection[definitionArr.length];
            for (int i = 0; i < definitionArr.length; i++) {
                com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition = definitionArr[i];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length != 0) {
                        exoTrackSelectionArr[i] = iArr.length == 1 ? new com.google.android.exoplayer2.trackselection.FixedTrackSelection(definition.group, iArr[0], definition.type) : createAdaptiveTrackSelection(definition.group, iArr, definition.type, bandwidthMeter, (e.c.b.b.s) adaptationCheckpoints.get(i));
                    }
                }
            }
            return exoTrackSelectionArr;
        }
    }

    public AdaptiveTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, long j, long j2, long j3, int i2, int i3, float f2, float f3, java.util.List<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint> list, com.google.android.exoplayer2.util.Clock clock) {
        com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter2;
        long j4;
        super(trackGroup, iArr, i);
        if (j3 < j) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            bandwidthMeter2 = bandwidthMeter;
            j4 = j;
        } else {
            bandwidthMeter2 = bandwidthMeter;
            j4 = j3;
        }
        this.bandwidthMeter = bandwidthMeter2;
        this.minDurationForQualityIncreaseUs = j * 1000;
        this.maxDurationForQualityDecreaseUs = j2 * 1000;
        this.minDurationToRetainAfterDiscardUs = j4 * 1000;
        this.maxWidthToDiscard = i2;
        this.maxHeightToDiscard = i3;
        this.bandwidthFraction = f2;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
        this.adaptationCheckpoints = e.c.b.b.s.l(list);
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public AdaptiveTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, 10000L, 25000L, 25000L, DEFAULT_MAX_WIDTH_TO_DISCARD, DEFAULT_MAX_HEIGHT_TO_DISCARD, 0.7f, 0.75f, e.c.b.b.s.p(), com.google.android.exoplayer2.util.Clock.DEFAULT);
    }

    public static void addCheckpoint(java.util.List<e.c.b.b.s.a<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            e.c.b.b.s.a<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint> aVar = list.get(i);
            if (aVar != null) {
                aVar.b(new com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint(j, jArr[i]));
            }
        }
    }

    private int determineIdealSelectedIndex(long j, long j2) {
        long allocatedBandwidth = getAllocatedBandwidth(j2);
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (j == Long.MIN_VALUE || !isBlacklisted(i2, j)) {
                com.google.android.exoplayer2.Format format = getFormat(i2);
                if (canSelectFormat(format, format.bitrate, allocatedBandwidth)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    public static e.c.b.b.s<e.c.b.b.s<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint>> getAdaptationCheckpoints(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr) {
        e.c.b.b.s.a aVarJ;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < definitionArr.length; i++) {
            if (definitionArr[i] == null || definitionArr[i].tracks.length <= 1) {
                aVarJ = null;
            } else {
                aVarJ = e.c.b.b.s.j();
                aVarJ.b(new com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint(0L, 0L));
            }
            arrayList.add(aVarJ);
        }
        long[][] sortedTrackBitrates = getSortedTrackBitrates(definitionArr);
        int[] iArr = new int[sortedTrackBitrates.length];
        long[] jArr = new long[sortedTrackBitrates.length];
        for (int i2 = 0; i2 < sortedTrackBitrates.length; i2++) {
            jArr[i2] = sortedTrackBitrates[i2].length == 0 ? 0L : sortedTrackBitrates[i2][0];
        }
        addCheckpoint(arrayList, jArr);
        e.c.b.b.s<java.lang.Integer> switchOrder = getSwitchOrder(sortedTrackBitrates);
        for (int i3 = 0; i3 < switchOrder.size(); i3++) {
            int iIntValue = switchOrder.get(i3).intValue();
            int i4 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i4;
            jArr[iIntValue] = sortedTrackBitrates[iIntValue][i4];
            addCheckpoint(arrayList, jArr);
        }
        for (int i5 = 0; i5 < definitionArr.length; i5++) {
            if (arrayList.get(i5) != null) {
                jArr[i5] = jArr[i5] * 2;
            }
        }
        addCheckpoint(arrayList, jArr);
        e.c.b.b.s.a aVarJ2 = e.c.b.b.s.j();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            e.c.b.b.s.a aVar = (e.c.b.b.s.a) arrayList.get(i6);
            aVarJ2.b(aVar == null ? e.c.b.b.k0.f2705e : aVar.c());
        }
        return aVarJ2.c();
    }

    private long getAllocatedBandwidth(long j) {
        long totalAllocatableBandwidth = getTotalAllocatableBandwidth(j);
        if (this.adaptationCheckpoints.isEmpty()) {
            return totalAllocatableBandwidth;
        }
        int i = 1;
        while (i < this.adaptationCheckpoints.size() - 1 && this.adaptationCheckpoints.get(i).totalBandwidth < totalAllocatableBandwidth) {
            i++;
        }
        com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint adaptationCheckpoint = this.adaptationCheckpoints.get(i - 1);
        com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.AdaptationCheckpoint adaptationCheckpoint2 = this.adaptationCheckpoints.get(i);
        long j2 = adaptationCheckpoint.totalBandwidth;
        float f2 = (totalAllocatableBandwidth - j2) / (adaptationCheckpoint2.totalBandwidth - j2);
        return adaptationCheckpoint.allocatedBandwidth + ((long) (f2 * (adaptationCheckpoint2.allocatedBandwidth - r2)));
    }

    private long getLastChunkDurationUs(java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        if (list.isEmpty()) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk = (com.google.android.exoplayer2.source.chunk.MediaChunk) e.c.b.a.f.l(list);
        long j = mediaChunk.startTimeUs;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        long j2 = mediaChunk.endTimeUs;
        return j2 != com.google.android.exoplayer2.C.TIME_UNSET ? j2 - j : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private long getNextChunkDurationUs(com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        int i = this.selectedIndex;
        if (i < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i].next()) {
            com.google.android.exoplayer2.source.chunk.MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.selectedIndex];
            return mediaChunkIterator.getChunkEndTimeUs() - mediaChunkIterator.getChunkStartTimeUs();
        }
        for (com.google.android.exoplayer2.source.chunk.MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.getChunkEndTimeUs() - mediaChunkIterator2.getChunkStartTimeUs();
            }
        }
        return getLastChunkDurationUs(list);
    }

    public static long[][] getSortedTrackBitrates(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length][];
        for (int i = 0; i < definitionArr.length; i++) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition = definitionArr[i];
            if (definition == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[definition.tracks.length];
                int i2 = 0;
                while (true) {
                    if (i2 >= definition.tracks.length) {
                        break;
                    }
                    jArr[i][i2] = definition.group.getFormat(r5[i2]).bitrate;
                    i2++;
                }
                java.util.Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    public static e.c.b.b.s<java.lang.Integer> getSwitchOrder(long[][] jArr) {
        e.c.b.b.i0 i0Var = e.c.b.b.i0.a;
        d.s.y.l(2, "expectedValuesPerKey");
        e.c.b.b.f0 f0Var = new e.c.b.b.f0(new java.util.TreeMap(i0Var), new e.c.b.b.e0(2));
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i].length > 1) {
                int length = jArr[i].length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    double dLog = 0.0d;
                    if (i2 >= jArr[i].length) {
                        break;
                    }
                    if (jArr[i][i2] != -1) {
                        dLog = java.lang.Math.log(jArr[i][i2]);
                    }
                    dArr[i2] = dLog;
                    i2++;
                }
                int i3 = length - 1;
                double d2 = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d3 = dArr[i4];
                    i4++;
                    f0Var.put(java.lang.Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i4]) * 0.5d) - dArr[0]) / d2), java.lang.Integer.valueOf(i));
                }
            }
        }
        return e.c.b.b.s.l(f0Var.values());
    }

    private long getTotalAllocatableBandwidth(long j) {
        long bitrateEstimate = (long) (this.bandwidthMeter.getBitrateEstimate() * this.bandwidthFraction);
        long timeToFirstByteEstimateUs = this.bandwidthMeter.getTimeToFirstByteEstimateUs();
        if (timeToFirstByteEstimateUs == com.google.android.exoplayer2.C.TIME_UNSET || j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return (long) (bitrateEstimate / this.playbackSpeed);
        }
        float f2 = j;
        return (long) ((bitrateEstimate * java.lang.Math.max((f2 / this.playbackSpeed) - timeToFirstByteEstimateUs, 0.0f)) / f2);
    }

    private long minDurationForQualityIncreaseUs(long j) {
        return (j > com.google.android.exoplayer2.C.TIME_UNSET ? 1 : (j == com.google.android.exoplayer2.C.TIME_UNSET ? 0 : -1)) != 0 && (j > this.minDurationForQualityIncreaseUs ? 1 : (j == this.minDurationForQualityIncreaseUs ? 0 : -1)) <= 0 ? (long) (j * this.bufferedFractionToLiveEdgeForQualityIncrease) : this.minDurationForQualityIncreaseUs;
    }

    public boolean canSelectFormat(com.google.android.exoplayer2.Format format, int i, long j) {
        return ((long) i) <= j;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        int i;
        int i2;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        if (!shouldEvaluateQueueSize(jElapsedRealtime, list)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        this.lastBufferEvaluationMediaChunk = list.isEmpty() ? null : (com.google.android.exoplayer2.source.chunk.MediaChunk) e.c.b.a.f.l(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = com.google.android.exoplayer2.util.Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j, this.playbackSpeed);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration < minDurationToRetainAfterDiscardUs) {
            return size;
        }
        com.google.android.exoplayer2.Format format = getFormat(determineIdealSelectedIndex(jElapsedRealtime, getLastChunkDurationUs(list)));
        for (int i3 = 0; i3 < size; i3++) {
            com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk = list.get(i3);
            com.google.android.exoplayer2.Format format2 = mediaChunk.trackFormat;
            if (com.google.android.exoplayer2.util.Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j, this.playbackSpeed) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i = format2.height) != -1 && i <= this.maxHeightToDiscard && (i2 = format2.width) != -1 && i2 <= this.maxWidthToDiscard && i < format.height) {
                return i3;
            }
        }
        return size;
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public java.lang.Object getSelectionData() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // com.google.android.exoplayer2.trackselection.BaseTrackSelection, com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f2) {
        this.playbackSpeed = f2;
    }

    public boolean shouldEvaluateQueueSize(long j, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        long j2 = this.lastBufferEvaluationMs;
        return j2 == com.google.android.exoplayer2.C.TIME_UNSET || j - j2 >= 1000 || !(list.isEmpty() || ((com.google.android.exoplayer2.source.chunk.MediaChunk) e.c.b.a.f.l(list)).equals(this.lastBufferEvaluationMediaChunk));
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long nextChunkDurationUs = getNextChunkDurationUs(mediaChunkIteratorArr, list);
        int i = this.reason;
        if (i == 0) {
            this.reason = 1;
            this.selectedIndex = determineIdealSelectedIndex(jElapsedRealtime, nextChunkDurationUs);
            return;
        }
        int i2 = this.selectedIndex;
        int iIndexOf = list.isEmpty() ? -1 : indexOf(((com.google.android.exoplayer2.source.chunk.MediaChunk) e.c.b.a.f.l(list)).trackFormat);
        if (iIndexOf != -1) {
            i = ((com.google.android.exoplayer2.source.chunk.MediaChunk) e.c.b.a.f.l(list)).trackSelectionReason;
            i2 = iIndexOf;
        }
        int iDetermineIdealSelectedIndex = determineIdealSelectedIndex(jElapsedRealtime, nextChunkDurationUs);
        if (!isBlacklisted(i2, jElapsedRealtime)) {
            com.google.android.exoplayer2.Format format = getFormat(i2);
            com.google.android.exoplayer2.Format format2 = getFormat(iDetermineIdealSelectedIndex);
            if ((format2.bitrate > format.bitrate && j2 < minDurationForQualityIncreaseUs(j3)) || (format2.bitrate < format.bitrate && j2 >= this.maxDurationForQualityDecreaseUs)) {
                iDetermineIdealSelectedIndex = i2;
            }
        }
        if (iDetermineIdealSelectedIndex != i2) {
            i = 3;
        }
        this.reason = i;
        this.selectedIndex = iDetermineIdealSelectedIndex;
    }
}
