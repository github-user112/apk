package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class SilenceMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource {
    public static final int CHANNEL_COUNT = 2;
    public static final int PCM_ENCODING = 2;
    public final long durationUs;
    public final com.google.android.exoplayer2.MediaItem mediaItem;
    public static final int SAMPLE_RATE_HZ = 44100;
    public static final com.google.android.exoplayer2.Format FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW).setChannelCount(2).setSampleRate(SAMPLE_RATE_HZ).setPcmEncoding(2).build();
    public static final java.lang.String MEDIA_ID = "SilenceMediaSource";
    public static final com.google.android.exoplayer2.MediaItem MEDIA_ITEM = new com.google.android.exoplayer2.MediaItem.Builder().setMediaId(MEDIA_ID).setUri(android.net.Uri.EMPTY).setMimeType(FORMAT.sampleMimeType).build();
    public static final byte[] SILENCE_SAMPLE = new byte[com.google.android.exoplayer2.util.Util.getPcmFrameSize(2, 2) * 1024];

    public static final class Factory {
        public long durationUs;
        public java.lang.Object tag;

        public com.google.android.exoplayer2.source.SilenceMediaSource createMediaSource() {
            com.google.android.exoplayer2.util.Assertions.checkState(this.durationUs > 0);
            return new com.google.android.exoplayer2.source.SilenceMediaSource(this.durationUs, com.google.android.exoplayer2.source.SilenceMediaSource.MEDIA_ITEM.buildUpon().setTag(this.tag).build());
        }

        public com.google.android.exoplayer2.source.SilenceMediaSource.Factory setDurationUs(long j) {
            this.durationUs = j;
            return this;
        }

        public com.google.android.exoplayer2.source.SilenceMediaSource.Factory setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }
    }

    public static final class SilenceMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod {
        public static final com.google.android.exoplayer2.source.TrackGroupArray TRACKS = new com.google.android.exoplayer2.source.TrackGroupArray(new com.google.android.exoplayer2.source.TrackGroup(com.google.android.exoplayer2.source.SilenceMediaSource.FORMAT));
        public final long durationUs;
        public final java.util.ArrayList<com.google.android.exoplayer2.source.SampleStream> sampleStreams = new java.util.ArrayList<>();

        public SilenceMediaPeriod(long j) {
            this.durationUs = j;
        }

        private long constrainSeekPosition(long j) {
            return com.google.android.exoplayer2.util.Util.constrainValue(j, 0L, this.durationUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
            return constrainSeekPosition(j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public /* synthetic */ java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
            return java.util.Collections.emptyList();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
            callback.onPrepared(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            long jConstrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < this.sampleStreams.size(); i++) {
                ((com.google.android.exoplayer2.source.SilenceMediaSource.SilenceSampleStream) this.sampleStreams.get(i)).seekTo(jConstrainSeekPosition);
            }
            return jConstrainSeekPosition;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            long jConstrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                    this.sampleStreams.remove(sampleStreamArr[i]);
                    sampleStreamArr[i] = null;
                }
                if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                    com.google.android.exoplayer2.source.SilenceMediaSource.SilenceSampleStream silenceSampleStream = new com.google.android.exoplayer2.source.SilenceMediaSource.SilenceSampleStream(this.durationUs);
                    silenceSampleStream.seekTo(jConstrainSeekPosition);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i] = silenceSampleStream;
                    zArr2[i] = true;
                }
            }
            return jConstrainSeekPosition;
        }
    }

    public static final class SilenceSampleStream implements com.google.android.exoplayer2.source.SampleStream {
        public final long durationBytes;
        public long positionBytes;
        public boolean sentFormat;

        public SilenceSampleStream(long j) {
            this.durationBytes = com.google.android.exoplayer2.source.SilenceMediaSource.getAudioByteCount(j);
            seekTo(0L);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
            if (!this.sentFormat || (i & 2) != 0) {
                formatHolder.format = com.google.android.exoplayer2.source.SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j = this.durationBytes;
            long j2 = this.positionBytes;
            long j3 = j - j2;
            if (j3 == 0) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            decoderInputBuffer.timeUs = com.google.android.exoplayer2.source.SilenceMediaSource.getAudioPositionUs(j2);
            decoderInputBuffer.addFlag(1);
            int iMin = (int) java.lang.Math.min(com.google.android.exoplayer2.source.SilenceMediaSource.SILENCE_SAMPLE.length, j3);
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(iMin);
                decoderInputBuffer.data.put(com.google.android.exoplayer2.source.SilenceMediaSource.SILENCE_SAMPLE, 0, iMin);
            }
            if ((i & 1) == 0) {
                this.positionBytes += iMin;
            }
            return -4;
        }

        public void seekTo(long j) {
            this.positionBytes = com.google.android.exoplayer2.util.Util.constrainValue(com.google.android.exoplayer2.source.SilenceMediaSource.getAudioByteCount(j), 0L, this.durationBytes);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            long j2 = this.positionBytes;
            seekTo(j);
            return (int) ((this.positionBytes - j2) / com.google.android.exoplayer2.source.SilenceMediaSource.SILENCE_SAMPLE.length);
        }
    }

    public SilenceMediaSource(long j) {
        this(j, MEDIA_ITEM);
    }

    public SilenceMediaSource(long j, com.google.android.exoplayer2.MediaItem mediaItem) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
        this.durationUs = j;
        this.mediaItem = mediaItem;
    }

    public static long getAudioByteCount(long j) {
        return com.google.android.exoplayer2.util.Util.getPcmFrameSize(2, 2) * ((j * 44100) / 1000000);
    }

    public static long getAudioPositionUs(long j) {
        return ((j / com.google.android.exoplayer2.util.Util.getPcmFrameSize(2, 2)) * 1000000) / 44100;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        return new com.google.android.exoplayer2.source.SilenceMediaSource.SilenceMediaPeriod(this.durationUs);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        refreshSourceInfo(new com.google.android.exoplayer2.source.SinglePeriodTimeline(this.durationUs, true, false, false, (java.lang.Object) null, this.mediaItem));
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
