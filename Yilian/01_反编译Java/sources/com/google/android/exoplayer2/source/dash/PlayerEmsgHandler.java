package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class PlayerEmsgHandler implements android.os.Handler.Callback {
    public static final int EMSG_MANIFEST_EXPIRED = 1;
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public boolean chunkLoadedCompletedSinceLastManifestRefreshRequest;
    public long expiredManifestPublishTimeUs;
    public boolean isWaitingForManifestRefresh;
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest manifest;
    public final com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback;
    public boolean released;
    public final java.util.TreeMap<java.lang.Long, java.lang.Long> manifestPublishTimeToExpiryTimeUs = new java.util.TreeMap<>();
    public final android.os.Handler handler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper(this);
    public final com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder decoder = new com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder();

    public static final class ManifestExpiryEventInfo {
        public final long eventTimeUs;
        public final long manifestPublishTimeMsInEmsg;

        public ManifestExpiryEventInfo(long j, long j2) {
            this.eventTimeUs = j;
            this.manifestPublishTimeMsInEmsg = j2;
        }
    }

    public interface PlayerEmsgCallback {
        void onDashManifestPublishTimeExpired(long j);

        void onDashManifestRefreshRequested();
    }

    public final class PlayerTrackEmsgHandler implements com.google.android.exoplayer2.extractor.TrackOutput {
        public final com.google.android.exoplayer2.source.SampleQueue sampleQueue;
        public final com.google.android.exoplayer2.FormatHolder formatHolder = new com.google.android.exoplayer2.FormatHolder();
        public final com.google.android.exoplayer2.metadata.MetadataInputBuffer buffer = new com.google.android.exoplayer2.metadata.MetadataInputBuffer();
        public long maxLoadedChunkEndTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;

        public PlayerTrackEmsgHandler(com.google.android.exoplayer2.upstream.Allocator allocator) {
            this.sampleQueue = com.google.android.exoplayer2.source.SampleQueue.createWithoutDrm(allocator);
        }

        private com.google.android.exoplayer2.metadata.MetadataInputBuffer dequeueSample() {
            this.buffer.clear();
            if (this.sampleQueue.read(this.formatHolder, this.buffer, 0, false) != -4) {
                return null;
            }
            this.buffer.flip();
            return this.buffer;
        }

        private void onManifestExpiredMessageEncountered(long j, long j2) {
            com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.handler.sendMessage(com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.handler.obtainMessage(1, new com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.ManifestExpiryEventInfo(j, j2)));
        }

        private void parseAndDiscardSamples() {
            while (this.sampleQueue.isReady(false)) {
                com.google.android.exoplayer2.metadata.MetadataInputBuffer metadataInputBufferDequeueSample = dequeueSample();
                if (metadataInputBufferDequeueSample != null) {
                    long j = metadataInputBufferDequeueSample.timeUs;
                    com.google.android.exoplayer2.metadata.Metadata metadataDecode = com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.decoder.decode(metadataInputBufferDequeueSample);
                    if (metadataDecode != null) {
                        com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage = (com.google.android.exoplayer2.metadata.emsg.EventMessage) metadataDecode.get(0);
                        if (com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.isPlayerEmsgEvent(eventMessage.schemeIdUri, eventMessage.value)) {
                            parsePlayerEmsgEvent(j, eventMessage);
                        }
                    }
                }
            }
            this.sampleQueue.discardToRead();
        }

        private void parsePlayerEmsgEvent(long j, com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage) {
            long manifestPublishTimeMsInEmsg = com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.getManifestPublishTimeMsInEmsg(eventMessage);
            if (manifestPublishTimeMsInEmsg == com.google.android.exoplayer2.C.TIME_UNSET) {
                return;
            }
            onManifestExpiredMessageEncountered(j, manifestPublishTimeMsInEmsg);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(com.google.android.exoplayer2.Format format) {
            this.sampleQueue.format(format);
        }

        public boolean maybeRefreshManifestBeforeLoadingNextChunk(long j) {
            return com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.maybeRefreshManifestBeforeLoadingNextChunk(j);
        }

        public void onChunkLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
            long j = this.maxLoadedChunkEndTimeUs;
            if (j == com.google.android.exoplayer2.C.TIME_UNSET || chunk.endTimeUs > j) {
                this.maxLoadedChunkEndTimeUs = chunk.endTimeUs;
            }
            com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.onChunkLoadCompleted(chunk);
        }

        public boolean onChunkLoadError(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
            long j = this.maxLoadedChunkEndTimeUs;
            return com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.this.onChunkLoadError(j != com.google.android.exoplayer2.C.TIME_UNSET && j < chunk.startTimeUs);
        }

        public void release() {
            this.sampleQueue.release();
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z) {
            return sampleData(dataReader, i, z, 0);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z, int i2) {
            return this.sampleQueue.sampleData(dataReader, i, z);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
            sampleData(parsableByteArray, i, 0);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) {
            this.sampleQueue.sampleData(parsableByteArray, i);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
            this.sampleQueue.sampleMetadata(j, i, i2, i3, cryptoData);
            parseAndDiscardSamples();
        }
    }

    public PlayerEmsgHandler(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback, com.google.android.exoplayer2.upstream.Allocator allocator) {
        this.manifest = dashManifest;
        this.playerEmsgCallback = playerEmsgCallback;
        this.allocator = allocator;
    }

    private java.util.Map.Entry<java.lang.Long, java.lang.Long> ceilingExpiryEntryForPublishTime(long j) {
        return this.manifestPublishTimeToExpiryTimeUs.ceilingEntry(java.lang.Long.valueOf(j));
    }

    public static long getManifestPublishTimeMsInEmsg(com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage) {
        try {
            return com.google.android.exoplayer2.util.Util.parseXsDateTime(com.google.android.exoplayer2.util.Util.fromUtf8Bytes(eventMessage.messageData));
        } catch (com.google.android.exoplayer2.ParserException unused) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
    }

    private void handleManifestExpiredMessage(long j, long j2) {
        java.lang.Long l = this.manifestPublishTimeToExpiryTimeUs.get(java.lang.Long.valueOf(j2));
        if (l != null && l.longValue() <= j) {
            return;
        }
        this.manifestPublishTimeToExpiryTimeUs.put(java.lang.Long.valueOf(j2), java.lang.Long.valueOf(j));
    }

    public static boolean isPlayerEmsgEvent(java.lang.String str, java.lang.String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    private void maybeNotifyDashManifestRefreshNeeded() {
        if (this.chunkLoadedCompletedSinceLastManifestRefreshRequest) {
            this.isWaitingForManifestRefresh = true;
            this.chunkLoadedCompletedSinceLastManifestRefreshRequest = false;
            this.playerEmsgCallback.onDashManifestRefreshRequested();
        }
    }

    private void notifyManifestPublishTimeExpired() {
        this.playerEmsgCallback.onDashManifestPublishTimeExpired(this.expiredManifestPublishTimeUs);
    }

    private void removePreviouslyExpiredManifestPublishTimeValues() {
        java.util.Iterator<java.util.Map.Entry<java.lang.Long, java.lang.Long>> it = this.manifestPublishTimeToExpiryTimeUs.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().longValue() < this.manifest.publishTimeMs) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) {
        if (this.released) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.ManifestExpiryEventInfo manifestExpiryEventInfo = (com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.ManifestExpiryEventInfo) message.obj;
        handleManifestExpiredMessage(manifestExpiryEventInfo.eventTimeUs, manifestExpiryEventInfo.manifestPublishTimeMsInEmsg);
        return true;
    }

    public boolean maybeRefreshManifestBeforeLoadingNextChunk(long j) {
        com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest = this.manifest;
        boolean z = false;
        if (!dashManifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        java.util.Map.Entry<java.lang.Long, java.lang.Long> entryCeilingExpiryEntryForPublishTime = ceilingExpiryEntryForPublishTime(dashManifest.publishTimeMs);
        if (entryCeilingExpiryEntryForPublishTime != null && entryCeilingExpiryEntryForPublishTime.getValue().longValue() < j) {
            this.expiredManifestPublishTimeUs = entryCeilingExpiryEntryForPublishTime.getKey().longValue();
            notifyManifestPublishTimeExpired();
            z = true;
        }
        if (z) {
            maybeNotifyDashManifestRefreshNeeded();
        }
        return z;
    }

    public com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler newPlayerTrackEmsgHandler() {
        return new com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler(this.allocator);
    }

    public void onChunkLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
        this.chunkLoadedCompletedSinceLastManifestRefreshRequest = true;
    }

    public boolean onChunkLoadError(boolean z) {
        if (!this.manifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        if (!z) {
            return false;
        }
        maybeNotifyDashManifestRefreshNeeded();
        return true;
    }

    public void release() {
        this.released = true;
        this.handler.removeCallbacksAndMessages(null);
    }

    public void updateManifest(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest) {
        this.isWaitingForManifestRefresh = false;
        this.expiredManifestPublishTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.manifest = dashManifest;
        removePreviouslyExpiredManifestPublishTimeValues();
    }
}
