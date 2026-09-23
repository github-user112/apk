package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public class SampleQueue implements com.google.android.exoplayer2.extractor.TrackOutput {
    public static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    public static final java.lang.String TAG = "SampleQueue";
    public int absoluteFirstIndex;
    public com.google.android.exoplayer2.drm.DrmSession currentDrmSession;
    public com.google.android.exoplayer2.Format downstreamFormat;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public boolean isLastSampleQueued;
    public int length;
    public boolean loggedUnexpectedNonSyncSample;
    public boolean pendingSplice;
    public final android.os.Looper playbackLooper;
    public int readPosition;
    public int relativeFirstIndex;
    public final com.google.android.exoplayer2.source.SampleDataQueue sampleDataQueue;
    public long sampleOffsetUs;
    public com.google.android.exoplayer2.Format unadjustedUpstreamFormat;
    public boolean upstreamAllSamplesAreSyncSamples;
    public com.google.android.exoplayer2.Format upstreamFormat;
    public boolean upstreamFormatAdjustmentRequired;
    public com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener upstreamFormatChangeListener;
    public int upstreamSourceId;
    public final com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder extrasHolder = new com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder();
    public int capacity = 1000;
    public int[] sourceIds = new int[1000];
    public long[] offsets = new long[1000];
    public long[] timesUs = new long[1000];
    public int[] flags = new int[1000];
    public int[] sizes = new int[1000];
    public com.google.android.exoplayer2.extractor.TrackOutput.CryptoData[] cryptoDatas = new com.google.android.exoplayer2.extractor.TrackOutput.CryptoData[1000];
    public final com.google.android.exoplayer2.source.SpannedData<com.google.android.exoplayer2.source.SampleQueue.SharedSampleMetadata> sharedSampleMetadata = new com.google.android.exoplayer2.source.SpannedData<>(new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.n2.u
        @Override // com.google.android.exoplayer2.util.Consumer
        public final void accept(java.lang.Object obj) {
            ((com.google.android.exoplayer2.source.SampleQueue.SharedSampleMetadata) obj).drmSessionReference.release();
        }
    });
    public long startTimeUs = Long.MIN_VALUE;
    public long largestDiscardedTimestampUs = Long.MIN_VALUE;
    public long largestQueuedTimestampUs = Long.MIN_VALUE;
    public boolean upstreamFormatRequired = true;
    public boolean upstreamKeyframeRequired = true;

    public static final class SampleExtrasHolder {
        public com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    public static final class SharedSampleMetadata {
        public final com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference drmSessionReference;
        public final com.google.android.exoplayer2.Format format;

        public SharedSampleMetadata(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.format = format;
            this.drmSessionReference = drmSessionReference;
        }
    }

    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(com.google.android.exoplayer2.Format format);
    }

    public SampleQueue(com.google.android.exoplayer2.upstream.Allocator allocator, android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.playbackLooper = looper;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.sampleDataQueue = new com.google.android.exoplayer2.source.SampleDataQueue(allocator);
    }

    private synchronized boolean attemptSplice(long j) {
        if (this.length == 0) {
            return j > this.largestDiscardedTimestampUs;
        }
        if (getLargestReadTimestampUs() >= j) {
            return false;
        }
        discardUpstreamSampleMetadata(this.absoluteFirstIndex + countUnreadSamplesBefore(j));
        return true;
    }

    private synchronized void commitSample(long j, int i, long j2, int i2, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
        if (this.length > 0) {
            int relativeIndex = getRelativeIndex(this.length - 1);
            com.google.android.exoplayer2.util.Assertions.checkArgument(this.offsets[relativeIndex] + ((long) this.sizes[relativeIndex]) <= j2);
        }
        this.isLastSampleQueued = (536870912 & i) != 0;
        this.largestQueuedTimestampUs = java.lang.Math.max(this.largestQueuedTimestampUs, j);
        int relativeIndex2 = getRelativeIndex(this.length);
        this.timesUs[relativeIndex2] = j;
        this.offsets[relativeIndex2] = j2;
        this.sizes[relativeIndex2] = i2;
        this.flags[relativeIndex2] = i;
        this.cryptoDatas[relativeIndex2] = cryptoData;
        this.sourceIds[relativeIndex2] = this.upstreamSourceId;
        if (this.sharedSampleMetadata.isEmpty() || !this.sharedSampleMetadata.getEndValue().format.equals(this.upstreamFormat)) {
            this.sharedSampleMetadata.appendSpan(getWriteIndex(), new com.google.android.exoplayer2.source.SampleQueue.SharedSampleMetadata((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.upstreamFormat), this.drmSessionManager != null ? this.drmSessionManager.preacquireSession((android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playbackLooper), this.drmEventDispatcher, this.upstreamFormat) : com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference.EMPTY));
        }
        int i3 = this.length + 1;
        this.length = i3;
        if (i3 == this.capacity) {
            int i4 = this.capacity + 1000;
            int[] iArr = new int[i4];
            long[] jArr = new long[i4];
            long[] jArr2 = new long[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            com.google.android.exoplayer2.extractor.TrackOutput.CryptoData[] cryptoDataArr = new com.google.android.exoplayer2.extractor.TrackOutput.CryptoData[i4];
            int i5 = this.capacity - this.relativeFirstIndex;
            java.lang.System.arraycopy(this.offsets, this.relativeFirstIndex, jArr, 0, i5);
            java.lang.System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr2, 0, i5);
            java.lang.System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i5);
            java.lang.System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i5);
            java.lang.System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i5);
            java.lang.System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i5);
            int i6 = this.relativeFirstIndex;
            java.lang.System.arraycopy(this.offsets, 0, jArr, i5, i6);
            java.lang.System.arraycopy(this.timesUs, 0, jArr2, i5, i6);
            java.lang.System.arraycopy(this.flags, 0, iArr2, i5, i6);
            java.lang.System.arraycopy(this.sizes, 0, iArr3, i5, i6);
            java.lang.System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i5, i6);
            java.lang.System.arraycopy(this.sourceIds, 0, iArr, i5, i6);
            this.offsets = jArr;
            this.timesUs = jArr2;
            this.flags = iArr2;
            this.sizes = iArr3;
            this.cryptoDatas = cryptoDataArr;
            this.sourceIds = iArr;
            this.relativeFirstIndex = 0;
            this.capacity = i4;
        }
    }

    private int countUnreadSamplesBefore(long j) {
        int i = this.length;
        int relativeIndex = getRelativeIndex(i - 1);
        while (i > this.readPosition && this.timesUs[relativeIndex] >= j) {
            i--;
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return i;
    }

    public static com.google.android.exoplayer2.source.SampleQueue createWithDrm(com.google.android.exoplayer2.upstream.Allocator allocator, android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new com.google.android.exoplayer2.source.SampleQueue(allocator, (android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkNotNull(looper), (com.google.android.exoplayer2.drm.DrmSessionManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(drmSessionManager), (com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) com.google.android.exoplayer2.util.Assertions.checkNotNull(eventDispatcher));
    }

    public static com.google.android.exoplayer2.source.SampleQueue createWithoutDrm(com.google.android.exoplayer2.upstream.Allocator allocator) {
        return new com.google.android.exoplayer2.source.SampleQueue(allocator, null, null, null);
    }

    private synchronized long discardSampleMetadataTo(long j, boolean z, boolean z2) {
        if (this.length != 0 && j >= this.timesUs[this.relativeFirstIndex]) {
            int iFindSampleBefore = findSampleBefore(this.relativeFirstIndex, (!z2 || this.readPosition == this.length) ? this.length : this.readPosition + 1, j, z);
            if (iFindSampleBefore == -1) {
                return -1L;
            }
            return discardSamples(iFindSampleBefore);
        }
        return -1L;
    }

    private synchronized long discardSampleMetadataToEnd() {
        if (this.length == 0) {
            return -1L;
        }
        return discardSamples(this.length);
    }

    private long discardSamples(int i) {
        this.largestDiscardedTimestampUs = java.lang.Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i));
        this.length -= i;
        this.absoluteFirstIndex += i;
        int i2 = this.relativeFirstIndex + i;
        this.relativeFirstIndex = i2;
        int i3 = this.capacity;
        if (i2 >= i3) {
            this.relativeFirstIndex = i2 - i3;
        }
        int i4 = this.readPosition - i;
        this.readPosition = i4;
        if (i4 < 0) {
            this.readPosition = 0;
        }
        this.sharedSampleMetadata.discardTo(this.absoluteFirstIndex);
        if (this.length != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i5 = this.relativeFirstIndex;
        if (i5 == 0) {
            i5 = this.capacity;
        }
        return this.offsets[i5 - 1] + this.sizes[r6];
    }

    private long discardUpstreamSampleMetadata(int i) {
        int writeIndex = getWriteIndex() - i;
        boolean z = false;
        com.google.android.exoplayer2.util.Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        int i2 = this.length - writeIndex;
        this.length = i2;
        this.largestQueuedTimestampUs = java.lang.Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i2));
        if (writeIndex == 0 && this.isLastSampleQueued) {
            z = true;
        }
        this.isLastSampleQueued = z;
        this.sharedSampleMetadata.discardFrom(i);
        int i3 = this.length;
        if (i3 == 0) {
            return 0L;
        }
        return this.offsets[getRelativeIndex(i3 - 1)] + this.sizes[r9];
    }

    private int findSampleBefore(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2 && this.timesUs[i] <= j; i4++) {
            if (!z || (this.flags[i] & 1) != 0) {
                if (this.timesUs[i] == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.capacity) {
                i = 0;
            }
        }
        return i3;
    }

    private long getLargestTimestamp(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = java.lang.Math.max(jMax, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                break;
            }
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return jMax;
    }

    private int getRelativeIndex(int i) {
        int i2 = this.relativeFirstIndex + i;
        int i3 = this.capacity;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private boolean hasNextSample() {
        return this.readPosition != this.length;
    }

    private boolean mayReadSample(int i) {
        com.google.android.exoplayer2.drm.DrmSession drmSession = this.currentDrmSession;
        return drmSession == null || drmSession.getState() == 4 || ((this.flags[i] & 1073741824) == 0 && this.currentDrmSession.playClearSamplesWithoutKeys());
    }

    private void onFormatResult(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.FormatHolder formatHolder) {
        boolean z = this.downstreamFormat == null;
        com.google.android.exoplayer2.drm.DrmInitData drmInitData = z ? null : this.downstreamFormat.drmInitData;
        this.downstreamFormat = format;
        com.google.android.exoplayer2.drm.DrmInitData drmInitData2 = format.drmInitData;
        com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager = this.drmSessionManager;
        formatHolder.format = drmSessionManager != null ? format.copyWithCryptoType(drmSessionManager.getCryptoType(format)) : format;
        formatHolder.drmSession = this.currentDrmSession;
        if (this.drmSessionManager == null) {
            return;
        }
        if (z || !com.google.android.exoplayer2.util.Util.areEqual(drmInitData, drmInitData2)) {
            com.google.android.exoplayer2.drm.DrmSession drmSession = this.currentDrmSession;
            com.google.android.exoplayer2.drm.DrmSession drmSessionAcquireSession = this.drmSessionManager.acquireSession((android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playbackLooper), this.drmEventDispatcher, format);
            this.currentDrmSession = drmSessionAcquireSession;
            formatHolder.drmSession = drmSessionAcquireSession;
            if (drmSession != null) {
                drmSession.release(this.drmEventDispatcher);
            }
        }
    }

    private synchronized int peekSampleMetadata(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        decoderInputBuffer.waitingForKeys = false;
        if (!hasNextSample()) {
            if (!z2 && !this.isLastSampleQueued) {
                if (this.upstreamFormat == null || (!z && this.upstreamFormat == this.downstreamFormat)) {
                    return -3;
                }
                onFormatResult((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.upstreamFormat), formatHolder);
                return -5;
            }
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        com.google.android.exoplayer2.Format format = this.sharedSampleMetadata.get(getReadIndex()).format;
        if (!z && format == this.downstreamFormat) {
            int relativeIndex = getRelativeIndex(this.readPosition);
            if (!mayReadSample(relativeIndex)) {
                decoderInputBuffer.waitingForKeys = true;
                return -3;
            }
            decoderInputBuffer.setFlags(this.flags[relativeIndex]);
            long j = this.timesUs[relativeIndex];
            decoderInputBuffer.timeUs = j;
            if (j < this.startTimeUs) {
                decoderInputBuffer.addFlag(Integer.MIN_VALUE);
            }
            sampleExtrasHolder.size = this.sizes[relativeIndex];
            sampleExtrasHolder.offset = this.offsets[relativeIndex];
            sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
            return -4;
        }
        onFormatResult(format, formatHolder);
        return -5;
    }

    private void releaseDrmSessionReferences() {
        com.google.android.exoplayer2.drm.DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null) {
            drmSession.release(this.drmEventDispatcher);
            this.currentDrmSession = null;
            this.downstreamFormat = null;
        }
    }

    private synchronized void rewind() {
        this.readPosition = 0;
        this.sampleDataQueue.rewind();
    }

    private synchronized boolean setUpstreamFormat(com.google.android.exoplayer2.Format format) {
        this.upstreamFormatRequired = false;
        if (com.google.android.exoplayer2.util.Util.areEqual(format, this.upstreamFormat)) {
            return false;
        }
        if (!this.sharedSampleMetadata.isEmpty() && this.sharedSampleMetadata.getEndValue().format.equals(format)) {
            format = this.sharedSampleMetadata.getEndValue().format;
        }
        this.upstreamFormat = format;
        this.upstreamAllSamplesAreSyncSamples = com.google.android.exoplayer2.util.MimeTypes.allSamplesAreSyncSamples(this.upstreamFormat.sampleMimeType, this.upstreamFormat.codecs);
        this.loggedUnexpectedNonSyncSample = false;
        return true;
    }

    public synchronized long discardSampleMetadataToRead() {
        if (this.readPosition == 0) {
            return -1L;
        }
        return discardSamples(this.readPosition);
    }

    public final void discardTo(long j, boolean z, boolean z2) {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataTo(j, z, z2));
    }

    public final void discardToEnd() {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataToEnd());
    }

    public final void discardToRead() {
        this.sampleDataQueue.discardDownstreamTo(discardSampleMetadataToRead());
    }

    public final void discardUpstreamFrom(long j) {
        if (this.length == 0) {
            return;
        }
        com.google.android.exoplayer2.util.Assertions.checkArgument(j > getLargestReadTimestampUs());
        discardUpstreamSamples(this.absoluteFirstIndex + countUnreadSamplesBefore(j));
    }

    public final void discardUpstreamSamples(int i) {
        this.sampleDataQueue.discardUpstreamSampleBytes(discardUpstreamSampleMetadata(i));
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final void format(com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.Format adjustedUpstreamFormat = getAdjustedUpstreamFormat(format);
        this.upstreamFormatAdjustmentRequired = false;
        this.unadjustedUpstreamFormat = format;
        boolean upstreamFormat = setUpstreamFormat(adjustedUpstreamFormat);
        com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener == null || !upstreamFormat) {
            return;
        }
        upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedUpstreamFormat);
    }

    public com.google.android.exoplayer2.Format getAdjustedUpstreamFormat(com.google.android.exoplayer2.Format format) {
        return (this.sampleOffsetUs == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.sampleOffsetUs).build();
    }

    public final int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    public final synchronized long getFirstTimestampUs() {
        return this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
    }

    public final synchronized long getLargestQueuedTimestampUs() {
        return this.largestQueuedTimestampUs;
    }

    public final synchronized long getLargestReadTimestampUs() {
        return java.lang.Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition));
    }

    public final int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public final synchronized int getSkipCount(long j, boolean z) {
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (hasNextSample() && j >= this.timesUs[relativeIndex]) {
            if (j > this.largestQueuedTimestampUs && z) {
                return this.length - this.readPosition;
            }
            int iFindSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j, true);
            if (iFindSampleBefore == -1) {
                return 0;
            }
            return iFindSampleBefore;
        }
        return 0;
    }

    public final synchronized com.google.android.exoplayer2.Format getUpstreamFormat() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public final int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public final void invalidateUpstreamFormatAdjustment() {
        this.upstreamFormatAdjustmentRequired = true;
    }

    public final synchronized boolean isLastSampleQueued() {
        return this.isLastSampleQueued;
    }

    public synchronized boolean isReady(boolean z) {
        boolean z2 = true;
        if (hasNextSample()) {
            if (this.sharedSampleMetadata.get(getReadIndex()).format != this.downstreamFormat) {
                return true;
            }
            return mayReadSample(getRelativeIndex(this.readPosition));
        }
        if (!z && !this.isLastSampleQueued && (this.upstreamFormat == null || this.upstreamFormat == this.downstreamFormat)) {
            z2 = false;
        }
        return z2;
    }

    public void maybeThrowError() throws com.google.android.exoplayer2.drm.DrmSession.DrmSessionException {
        com.google.android.exoplayer2.drm.DrmSession drmSession = this.currentDrmSession;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.currentDrmSession.getError()));
        }
    }

    public final synchronized int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public void preRelease() {
        discardToEnd();
        releaseDrmSessionReferences();
    }

    public int read(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i, boolean z) {
        int iPeekSampleMetadata = peekSampleMetadata(formatHolder, decoderInputBuffer, (i & 2) != 0, z, this.extrasHolder);
        if (iPeekSampleMetadata == -4 && !decoderInputBuffer.isEndOfStream()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                com.google.android.exoplayer2.source.SampleDataQueue sampleDataQueue = this.sampleDataQueue;
                com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder = this.extrasHolder;
                if (z2) {
                    sampleDataQueue.peekToBuffer(decoderInputBuffer, sampleExtrasHolder);
                } else {
                    sampleDataQueue.readToBuffer(decoderInputBuffer, sampleExtrasHolder);
                }
            }
            if (!z2) {
                this.readPosition++;
            }
        }
        return iPeekSampleMetadata;
    }

    public void release() {
        reset(true);
        releaseDrmSessionReferences();
    }

    public final void reset() {
        reset(false);
    }

    public void reset(boolean z) {
        this.sampleDataQueue.reset();
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.startTimeUs = Long.MIN_VALUE;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.isLastSampleQueued = false;
        this.sharedSampleMetadata.clear();
        if (z) {
            this.unadjustedUpstreamFormat = null;
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public /* synthetic */ int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z) {
        return sampleData(dataReader, i, z, 0);
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z, int i2) {
        return this.sampleDataQueue.sampleData(dataReader, i, z);
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public /* synthetic */ void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        sampleData(parsableByteArray, i, 0);
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public final void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) {
        this.sampleDataQueue.sampleData(parsableByteArray, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sampleMetadata(long r12, int r14, int r15, int r16, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.upstreamFormatAdjustmentRequired
            if (r0 == 0) goto L10
            com.google.android.exoplayer2.Format r0 = r8.unadjustedUpstreamFormat
            java.lang.Object r0 = com.google.android.exoplayer2.util.Assertions.checkStateNotNull(r0)
            com.google.android.exoplayer2.Format r0 = (com.google.android.exoplayer2.Format) r0
            r11.format(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = 1
            goto L19
        L18:
            r3 = 0
        L19:
            boolean r4 = r8.upstreamKeyframeRequired
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.upstreamKeyframeRequired = r1
        L22:
            long r4 = r8.sampleOffsetUs
            long r4 = r4 + r12
            boolean r6 = r8.upstreamAllSamplesAreSyncSamples
            if (r6 == 0) goto L5e
            long r6 = r8.startTimeUs
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L5e
            boolean r0 = r8.loggedUnexpectedNonSyncSample
            if (r0 != 0) goto L5a
            com.google.android.exoplayer2.Format r0 = r8.upstreamFormat
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r6 = r0.length()
            int r6 = r6 + 50
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r7.append(r6)
            r7.append(r0)
            java.lang.String r0 = r7.toString()
            java.lang.String r6 = "SampleQueue"
            com.google.android.exoplayer2.util.Log.w(r6, r0)
            r8.loggedUnexpectedNonSyncSample = r2
        L5a:
            r0 = r14 | 1
            r6 = r0
            goto L5f
        L5e:
            r6 = r14
        L5f:
            boolean r0 = r8.pendingSplice
            if (r0 == 0) goto L70
            if (r3 == 0) goto L6f
            boolean r0 = r11.attemptSplice(r4)
            if (r0 != 0) goto L6c
            goto L6f
        L6c:
            r8.pendingSplice = r1
            goto L70
        L6f:
            return
        L70:
            com.google.android.exoplayer2.source.SampleDataQueue r0 = r8.sampleDataQueue
            long r0 = r0.getTotalBytesWritten()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.commitSample(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.SampleQueue.sampleMetadata(long, int, int, int, com.google.android.exoplayer2.extractor.TrackOutput$CryptoData):void");
    }

    public final synchronized boolean seekTo(int i) {
        boolean z;
        rewind();
        if (i < this.absoluteFirstIndex || i > this.absoluteFirstIndex + this.length) {
            z = false;
        } else {
            this.startTimeUs = Long.MIN_VALUE;
            this.readPosition = i - this.absoluteFirstIndex;
            z = true;
        }
        return z;
    }

    public final synchronized boolean seekTo(long j, boolean z) {
        rewind();
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (hasNextSample() && j >= this.timesUs[relativeIndex] && (j <= this.largestQueuedTimestampUs || z)) {
            int iFindSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j, true);
            if (iFindSampleBefore == -1) {
                return false;
            }
            this.startTimeUs = j;
            this.readPosition += iFindSampleBefore;
            return true;
        }
        return false;
    }

    public final void setSampleOffsetUs(long j) {
        if (this.sampleOffsetUs != j) {
            this.sampleOffsetUs = j;
            invalidateUpstreamFormatAdjustment();
        }
    }

    public final void setStartTimeUs(long j) {
        this.startTimeUs = j;
    }

    public final void setUpstreamFormatChangeListener(com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void skip(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 < 0) goto Le
            int r0 = r2.readPosition     // Catch: java.lang.Throwable -> Lc
            int r0 = r0 + r3
            int r1 = r2.length     // Catch: java.lang.Throwable -> Lc
            if (r0 > r1) goto Le
            r0 = 1
            goto Lf
        Lc:
            r3 = move-exception
            goto L19
        Le:
            r0 = 0
        Lf:
            com.google.android.exoplayer2.util.Assertions.checkArgument(r0)     // Catch: java.lang.Throwable -> Lc
            int r0 = r2.readPosition     // Catch: java.lang.Throwable -> Lc
            int r0 = r0 + r3
            r2.readPosition = r0     // Catch: java.lang.Throwable -> Lc
            monitor-exit(r2)
            return
        L19:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.SampleQueue.skip(int):void");
    }

    public final void sourceId(int i) {
        this.upstreamSourceId = i;
    }

    public final void splice() {
        this.pendingSplice = true;
    }
}
