package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MetadataRetriever {

    public static final class MetadataRetrieverInternal {
        public static final int MESSAGE_CHECK_FOR_FAILURE = 1;
        public static final int MESSAGE_CONTINUE_LOADING = 2;
        public static final int MESSAGE_PREPARE_SOURCE = 0;
        public static final int MESSAGE_RELEASE = 3;
        public final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory;
        public final com.google.android.exoplayer2.util.HandlerWrapper mediaSourceHandler;
        public final android.os.HandlerThread mediaSourceThread;
        public final e.c.b.e.a.c<com.google.android.exoplayer2.source.TrackGroupArray> trackGroupsFuture;

        public final class MediaSourceHandlerCallback implements android.os.Handler.Callback {
            public static final int ERROR_POLL_INTERVAL_MS = 100;
            public com.google.android.exoplayer2.source.MediaPeriod mediaPeriod;
            public com.google.android.exoplayer2.source.MediaSource mediaSource;
            public final com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.MediaSourceCaller mediaSourceCaller = new com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.MediaSourceCaller();

            public final class MediaSourceCaller implements com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller {
                public boolean mediaPeriodCreated;
                public final com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.MediaSourceCaller.MediaPeriodCallback mediaPeriodCallback = new com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.MediaSourceCaller.MediaPeriodCallback();
                public final com.google.android.exoplayer2.upstream.Allocator allocator = new com.google.android.exoplayer2.upstream.DefaultAllocator(true, 65536);

                public final class MediaPeriodCallback implements com.google.android.exoplayer2.source.MediaPeriod.Callback {
                    public MediaPeriodCallback() {
                    }

                    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
                    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
                        com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(2).sendToTarget();
                    }

                    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
                    public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
                        e.c.b.e.a.c cVar = com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.trackGroupsFuture;
                        java.lang.Object trackGroups = mediaPeriod.getTrackGroups();
                        if (cVar == null) {
                            throw null;
                        }
                        if (trackGroups == null) {
                            trackGroups = e.c.b.e.a.a.f2754g;
                        }
                        if (e.c.b.e.a.a.f2753f.b(cVar, null, trackGroups)) {
                            e.c.b.e.a.a.b(cVar);
                        }
                        com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(3).sendToTarget();
                    }
                }

                public MediaSourceCaller() {
                }

                @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
                public void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
                    if (this.mediaPeriodCreated) {
                        return;
                    }
                    this.mediaPeriodCreated = true;
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.this.mediaPeriod = mediaSource.createPeriod(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0)), this.allocator, 0L);
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback.this.mediaPeriod.prepare(this.mediaPeriodCallback, 0L);
                }
            }

            public MediaSourceHandlerCallback() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(android.os.Message message) {
                int i = message.what;
                if (i == 0) {
                    com.google.android.exoplayer2.source.MediaSource mediaSourceCreateMediaSource = com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceFactory.createMediaSource((com.google.android.exoplayer2.MediaItem) message.obj);
                    this.mediaSource = mediaSourceCreateMediaSource;
                    mediaSourceCreateMediaSource.prepareSource(this.mediaSourceCaller, null);
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.sendEmptyMessage(1);
                    return true;
                }
                if (i != 1) {
                    if (i == 2) {
                        ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaPeriod)).continueLoading(0L);
                        return true;
                    }
                    if (i != 3) {
                        return false;
                    }
                    if (this.mediaPeriod != null) {
                        ((com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSource)).releasePeriod(this.mediaPeriod);
                    }
                    ((com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSource)).releaseSource(this.mediaSourceCaller);
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.removeCallbacksAndMessages(null);
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceThread.quit();
                    return true;
                }
                try {
                    if (this.mediaPeriod == null) {
                        ((com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSource)).maybeThrowSourceInfoRefreshError();
                    } else {
                        this.mediaPeriod.maybeThrowPrepareError();
                    }
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.sendEmptyMessageDelayed(1, 100);
                } catch (java.lang.Exception e2) {
                    e.c.b.e.a.c cVar = com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.trackGroupsFuture;
                    if (cVar == null) {
                        throw null;
                    }
                    if (e.c.b.e.a.a.f2753f.b(cVar, null, new e.c.b.e.a.a.d(e2))) {
                        e.c.b.e.a.a.b(cVar);
                    }
                    com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(3).sendToTarget();
                }
                return true;
            }
        }

        public MetadataRetrieverInternal(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.util.Clock clock) {
            this.mediaSourceFactory = mediaSourceFactory;
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:MetadataRetriever");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            this.mediaSourceHandler = clock.createHandler(this.mediaSourceThread.getLooper(), new com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal.MediaSourceHandlerCallback());
            this.trackGroupsFuture = new e.c.b.e.a.c<>();
        }

        public e.c.b.e.a.b<com.google.android.exoplayer2.source.TrackGroupArray> retrieveMetadata(com.google.android.exoplayer2.MediaItem mediaItem) {
            this.mediaSourceHandler.obtainMessage(0, mediaItem).sendToTarget();
            return this.trackGroupsFuture;
        }
    }

    public static e.c.b.e.a.b<com.google.android.exoplayer2.source.TrackGroupArray> retrieveMetadata(android.content.Context context, com.google.android.exoplayer2.MediaItem mediaItem) {
        return retrieveMetadata(context, mediaItem, com.google.android.exoplayer2.util.Clock.DEFAULT);
    }

    public static e.c.b.e.a.b<com.google.android.exoplayer2.source.TrackGroupArray> retrieveMetadata(android.content.Context context, com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.util.Clock clock) {
        return retrieveMetadata(new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(context, new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory().setMp4ExtractorFlags(6)), mediaItem, clock);
    }

    public static e.c.b.e.a.b<com.google.android.exoplayer2.source.TrackGroupArray> retrieveMetadata(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.MediaItem mediaItem) {
        return retrieveMetadata(mediaSourceFactory, mediaItem, com.google.android.exoplayer2.util.Clock.DEFAULT);
    }

    public static e.c.b.e.a.b<com.google.android.exoplayer2.source.TrackGroupArray> retrieveMetadata(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.util.Clock clock) {
        return new com.google.android.exoplayer2.MetadataRetriever.MetadataRetrieverInternal(mediaSourceFactory, clock).retrieveMetadata(mediaItem);
    }
}
