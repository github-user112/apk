package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class DownloadHelper {

    @java.lang.Deprecated
    public static final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS;
    public static final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT;

    @java.lang.Deprecated
    public static final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT;
    public com.google.android.exoplayer2.offline.DownloadHelper.Callback callback;
    public final android.os.Handler callbackHandler;
    public java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection>[][] immutableTrackSelectionsByPeriodAndRenderer;
    public boolean isPreparedWithMedia;
    public final com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
    public com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo[] mappedTrackInfos;
    public com.google.android.exoplayer2.offline.DownloadHelper.MediaPreparer mediaPreparer;
    public final com.google.android.exoplayer2.source.MediaSource mediaSource;
    public final com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilities;
    public final android.util.SparseIntArray scratchSet = new android.util.SparseIntArray();
    public com.google.android.exoplayer2.source.TrackGroupArray[] trackGroupArrays;
    public java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection>[][] trackSelectionsByPeriodAndRenderer;
    public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector trackSelector;
    public final com.google.android.exoplayer2.Timeline.Window window;

    public interface Callback {
        void onPrepareError(com.google.android.exoplayer2.offline.DownloadHelper downloadHelper, java.io.IOException iOException);

        void onPrepared(com.google.android.exoplayer2.offline.DownloadHelper downloadHelper);
    }

    public static final class DownloadTrackSelection extends com.google.android.exoplayer2.trackselection.BaseTrackSelection {

        public static final class Factory implements com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory {
            public Factory() {
            }

            @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
            public com.google.android.exoplayer2.trackselection.ExoTrackSelection[] createTrackSelections(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
                com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr = new com.google.android.exoplayer2.trackselection.ExoTrackSelection[definitionArr.length];
                for (int i = 0; i < definitionArr.length; i++) {
                    exoTrackSelectionArr[i] = definitionArr[i] == null ? null : new com.google.android.exoplayer2.offline.DownloadHelper.DownloadTrackSelection(definitionArr[i].group, definitionArr[i].tracks);
                }
                return exoTrackSelectionArr;
            }
        }

        public DownloadTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public java.lang.Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr) {
        }
    }

    public static final class FakeBandwidthMeter implements com.google.android.exoplayer2.upstream.BandwidthMeter {
        public FakeBandwidthMeter() {
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public /* synthetic */ long getTimeToFirstByteEstimateUs() {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public com.google.android.exoplayer2.upstream.TransferListener getTransferListener() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void removeEventListener(com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
        }
    }

    public static class LiveContentUnsupportedException extends java.io.IOException {
    }

    public static final class MediaPreparer implements com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller, com.google.android.exoplayer2.source.MediaPeriod.Callback, android.os.Handler.Callback {
        public static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED = 1;
        public static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED = 0;
        public static final int MESSAGE_CHECK_FOR_FAILURE = 1;
        public static final int MESSAGE_CONTINUE_LOADING = 2;
        public static final int MESSAGE_PREPARE_SOURCE = 0;
        public static final int MESSAGE_RELEASE = 3;
        public final com.google.android.exoplayer2.offline.DownloadHelper downloadHelper;
        public com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriods;
        public final com.google.android.exoplayer2.source.MediaSource mediaSource;
        public final android.os.Handler mediaSourceHandler;
        public final android.os.HandlerThread mediaSourceThread;
        public boolean released;
        public com.google.android.exoplayer2.Timeline timeline;
        public final com.google.android.exoplayer2.upstream.Allocator allocator = new com.google.android.exoplayer2.upstream.DefaultAllocator(true, 65536);
        public final java.util.ArrayList<com.google.android.exoplayer2.source.MediaPeriod> pendingMediaPeriods = new java.util.ArrayList<>();
        public final android.os.Handler downloadHelperHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper(new android.os.Handler.Callback() { // from class: e.c.a.a.l2.d
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.a.handleDownloadHelperCallbackMessage(message);
            }
        });

        public MediaPreparer(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.offline.DownloadHelper downloadHelper) {
            this.mediaSource = mediaSource;
            this.downloadHelper = downloadHelper;
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:DownloadHelper");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            android.os.Handler handlerCreateHandler = com.google.android.exoplayer2.util.Util.createHandler(this.mediaSourceThread.getLooper(), this);
            this.mediaSourceHandler = handlerCreateHandler;
            handlerCreateHandler.sendEmptyMessage(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean handleDownloadHelperCallbackMessage(android.os.Message message) {
            if (this.released) {
                return false;
            }
            int i = message.what;
            if (i == 0) {
                this.downloadHelper.onMediaPrepared();
                return true;
            }
            if (i != 1) {
                return false;
            }
            release();
            this.downloadHelper.onMediaPreparationFailed((java.io.IOException) com.google.android.exoplayer2.util.Util.castNonNull(message.obj));
            return true;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            int i = message.what;
            if (i == 0) {
                this.mediaSource.prepareSource(this, null);
                this.mediaSourceHandler.sendEmptyMessage(1);
                return true;
            }
            int i2 = 0;
            if (i == 1) {
                try {
                    if (this.mediaPeriods == null) {
                        this.mediaSource.maybeThrowSourceInfoRefreshError();
                    } else {
                        while (i2 < this.pendingMediaPeriods.size()) {
                            this.pendingMediaPeriods.get(i2).maybeThrowPrepareError();
                            i2++;
                        }
                    }
                    this.mediaSourceHandler.sendEmptyMessageDelayed(1, 100L);
                } catch (java.io.IOException e2) {
                    this.downloadHelperHandler.obtainMessage(1, e2).sendToTarget();
                }
                return true;
            }
            if (i == 2) {
                com.google.android.exoplayer2.source.MediaPeriod mediaPeriod = (com.google.android.exoplayer2.source.MediaPeriod) message.obj;
                if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                    mediaPeriod.continueLoading(0L);
                }
                return true;
            }
            if (i != 3) {
                return false;
            }
            com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = this.mediaPeriods;
            if (mediaPeriodArr != null) {
                int length = mediaPeriodArr.length;
                while (i2 < length) {
                    this.mediaSource.releasePeriod(mediaPeriodArr[i2]);
                    i2++;
                }
            }
            this.mediaSource.releaseSource(this);
            this.mediaSourceHandler.removeCallbacksAndMessages(null);
            this.mediaSourceThread.quit();
            return true;
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                this.mediaSourceHandler.obtainMessage(2, mediaPeriod).sendToTarget();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            this.pendingMediaPeriods.remove(mediaPeriod);
            if (this.pendingMediaPeriods.isEmpty()) {
                this.mediaSourceHandler.removeMessages(1);
                this.downloadHelperHandler.sendEmptyMessage(0);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
        public void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
            com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr;
            if (this.timeline != null) {
                return;
            }
            if (timeline.getWindow(0, new com.google.android.exoplayer2.Timeline.Window()).isLive()) {
                this.downloadHelperHandler.obtainMessage(1, new com.google.android.exoplayer2.offline.DownloadHelper.LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.timeline = timeline;
            this.mediaPeriods = new com.google.android.exoplayer2.source.MediaPeriod[timeline.getPeriodCount()];
            int i = 0;
            while (true) {
                mediaPeriodArr = this.mediaPeriods;
                if (i >= mediaPeriodArr.length) {
                    break;
                }
                com.google.android.exoplayer2.source.MediaPeriod mediaPeriodCreatePeriod = this.mediaSource.createPeriod(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(timeline.getUidOfPeriod(i)), this.allocator, 0L);
                this.mediaPeriods[i] = mediaPeriodCreatePeriod;
                this.pendingMediaPeriods.add(mediaPeriodCreatePeriod);
                i++;
            }
            for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod : mediaPeriodArr) {
                mediaPeriod.prepare(this, 0L);
            }
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.mediaSourceHandler.sendEmptyMessage(3);
        }
    }

    static {
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parametersBuild = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon().setForceHighestSupportedBitrate(true).build();
        DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = parametersBuild;
        DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_VIEWPORT = parametersBuild;
        DEFAULT_TRACK_SELECTOR_PARAMETERS = parametersBuild;
    }

    public DownloadHelper(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr) {
        this.localConfiguration = (com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.mediaSource = mediaSource;
        this.trackSelector = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector(parameters, new com.google.android.exoplayer2.offline.DownloadHelper.DownloadTrackSelection.Factory());
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.trackSelector.init(new com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener() { // from class: e.c.a.a.l2.b
            @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                com.google.android.exoplayer2.offline.DownloadHelper.c();
            }
        }, new com.google.android.exoplayer2.offline.DownloadHelper.FakeBandwidthMeter());
        this.callbackHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper();
        this.window = new com.google.android.exoplayer2.Timeline.Window();
    }

    public static /* synthetic */ void a(java.util.List list) {
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void assertPreparedWithMedia() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.isPreparedWithMedia);
    }

    public static /* synthetic */ void b(com.google.android.exoplayer2.metadata.Metadata metadata) {
    }

    public static /* synthetic */ void c() {
    }

    public static com.google.android.exoplayer2.source.MediaSource createMediaSource(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        return createMediaSource(downloadRequest, factory, null);
    }

    public static com.google.android.exoplayer2.source.MediaSource createMediaSource(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
        return createMediaSourceInternal(downloadRequest.toMediaItem(), factory, drmSessionManager);
    }

    public static com.google.android.exoplayer2.source.MediaSource createMediaSourceInternal(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
        return new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(factory, com.google.android.exoplayer2.extractor.ExtractorsFactory.EMPTY).setDrmSessionManager(drmSessionManager).createMediaSource(mediaItem);
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forDash(android.content.Context context, android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory) {
        return forDash(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forDash(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forHls(android.content.Context context, android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory) {
        return forHls(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forHls(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_M3U8).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    public static com.google.android.exoplayer2.offline.DownloadHelper forMediaItem(android.content.Context context, com.google.android.exoplayer2.MediaItem mediaItem) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(isProgressive((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration)));
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), null, null, null);
    }

    public static com.google.android.exoplayer2.offline.DownloadHelper forMediaItem(android.content.Context context, com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), renderersFactory, factory, null);
    }

    public static com.google.android.exoplayer2.offline.DownloadHelper forMediaItem(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        return forMediaItem(mediaItem, parameters, renderersFactory, factory, null);
    }

    public static com.google.android.exoplayer2.offline.DownloadHelper forMediaItem(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
        boolean zIsProgressive = isProgressive((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration));
        com.google.android.exoplayer2.util.Assertions.checkArgument(zIsProgressive || factory != null);
        return new com.google.android.exoplayer2.offline.DownloadHelper(mediaItem, zIsProgressive ? null : createMediaSourceInternal(mediaItem, (com.google.android.exoplayer2.upstream.DataSource.Factory) com.google.android.exoplayer2.util.Util.castNonNull(factory), drmSessionManager), parameters, renderersFactory != null ? getRendererCapabilities(renderersFactory) : new com.google.android.exoplayer2.RendererCapabilities[0]);
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forProgressive(android.content.Context context, android.net.Uri uri) {
        return forMediaItem(context, new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).build());
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forProgressive(android.content.Context context, android.net.Uri uri, java.lang.String str) {
        return forMediaItem(context, new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setCustomCacheKey(str).build());
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forSmoothStreaming(android.content.Context context, android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forSmoothStreaming(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT);
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.offline.DownloadHelper forSmoothStreaming(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        return forMediaItem(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SS).build(), parameters, renderersFactory, factory, drmSessionManager);
    }

    public static com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters getDefaultTrackSelectorParameters(android.content.Context context) {
        return com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.getDefaults(context).buildUpon().setForceHighestSupportedBitrate(true).build();
    }

    public static com.google.android.exoplayer2.RendererCapabilities[] getRendererCapabilities(com.google.android.exoplayer2.RenderersFactory renderersFactory) {
        com.google.android.exoplayer2.Renderer[] rendererArrCreateRenderers = renderersFactory.createRenderers(com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper(), new com.google.android.exoplayer2.video.VideoRendererEventListener() { // from class: com.google.android.exoplayer2.offline.DownloadHelper.1
            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onDroppedFrames(int i, long j) {
                e.c.a.a.t2.n.$default$onDroppedFrames(this, i, j);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onRenderedFirstFrame(java.lang.Object obj, long j) {
                e.c.a.a.t2.n.$default$onRenderedFirstFrame(this, obj, j);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoCodecError(java.lang.Exception exc) {
                e.c.a.a.t2.n.$default$onVideoCodecError(this, exc);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoDecoderInitialized(java.lang.String str, long j, long j2) {
                e.c.a.a.t2.n.$default$onVideoDecoderInitialized(this, str, j, j2);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoDecoderReleased(java.lang.String str) {
                e.c.a.a.t2.n.$default$onVideoDecoderReleased(this, str);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
                e.c.a.a.t2.n.$default$onVideoDisabled(this, decoderCounters);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
                e.c.a.a.t2.n.$default$onVideoEnabled(this, decoderCounters);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoFrameProcessingOffset(long j, int i) {
                e.c.a.a.t2.n.$default$onVideoFrameProcessingOffset(this, j, i);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            @java.lang.Deprecated
            public /* synthetic */ void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format) {
                e.c.a.a.t2.n.$default$onVideoInputFormatChanged(this, format);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
                e.c.a.a.t2.n.$default$onVideoInputFormatChanged(this, format, decoderReuseEvaluation);
            }

            @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
            public /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.video.VideoSize videoSize) {
                e.c.a.a.t2.n.$default$onVideoSizeChanged(this, videoSize);
            }
        }, new com.google.android.exoplayer2.audio.AudioRendererEventListener() { // from class: com.google.android.exoplayer2.offline.DownloadHelper.2
            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioCodecError(java.lang.Exception exc) {
                e.c.a.a.g2.m.$default$onAudioCodecError(this, exc);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioDecoderInitialized(java.lang.String str, long j, long j2) {
                e.c.a.a.g2.m.$default$onAudioDecoderInitialized(this, str, j, j2);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioDecoderReleased(java.lang.String str) {
                e.c.a.a.g2.m.$default$onAudioDecoderReleased(this, str);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
                e.c.a.a.g2.m.$default$onAudioDisabled(this, decoderCounters);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
                e.c.a.a.g2.m.$default$onAudioEnabled(this, decoderCounters);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            @java.lang.Deprecated
            public /* synthetic */ void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format) {
                e.c.a.a.g2.m.$default$onAudioInputFormatChanged(this, format);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
                e.c.a.a.g2.m.$default$onAudioInputFormatChanged(this, format, decoderReuseEvaluation);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioPositionAdvancing(long j) {
                e.c.a.a.g2.m.$default$onAudioPositionAdvancing(this, j);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioSinkError(java.lang.Exception exc) {
                e.c.a.a.g2.m.$default$onAudioSinkError(this, exc);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onAudioUnderrun(int i, long j, long j2) {
                e.c.a.a.g2.m.$default$onAudioUnderrun(this, i, j, j2);
            }

            @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
            public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
                e.c.a.a.g2.m.$default$onSkipSilenceEnabledChanged(this, z);
            }
        }, new com.google.android.exoplayer2.text.TextOutput() { // from class: e.c.a.a.l2.a
            @Override // com.google.android.exoplayer2.text.TextOutput
            public final void onCues(java.util.List list) {
                com.google.android.exoplayer2.offline.DownloadHelper.a(list);
            }
        }, new com.google.android.exoplayer2.metadata.MetadataOutput() { // from class: e.c.a.a.l2.c
            @Override // com.google.android.exoplayer2.metadata.MetadataOutput
            public final void onMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
                com.google.android.exoplayer2.offline.DownloadHelper.b(metadata);
            }
        });
        com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr = new com.google.android.exoplayer2.RendererCapabilities[rendererArrCreateRenderers.length];
        for (int i = 0; i < rendererArrCreateRenderers.length; i++) {
            rendererCapabilitiesArr[i] = rendererArrCreateRenderers[i].getCapabilities();
        }
        return rendererCapabilitiesArr;
    }

    public static boolean isProgressive(com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration) {
        return com.google.android.exoplayer2.util.Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPreparationFailed(final java.io.IOException iOException) {
        ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callbackHandler)).post(new java.lang.Runnable() { // from class: e.c.a.a.l2.g
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(iOException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPrepared() {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaPreparer);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaPreparer.mediaPeriods);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaPreparer.timeline);
        int length = this.mediaPreparer.mediaPeriods.length;
        int length2 = this.rendererCapabilities.length;
        this.trackSelectionsByPeriodAndRenderer = (java.util.List[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) java.util.List.class, length, length2);
        this.immutableTrackSelectionsByPeriodAndRenderer = (java.util.List[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) java.util.List.class, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                this.trackSelectionsByPeriodAndRenderer[i][i2] = new java.util.ArrayList();
                this.immutableTrackSelectionsByPeriodAndRenderer[i][i2] = java.util.Collections.unmodifiableList(this.trackSelectionsByPeriodAndRenderer[i][i2]);
            }
        }
        this.trackGroupArrays = new com.google.android.exoplayer2.source.TrackGroupArray[length];
        this.mappedTrackInfos = new com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo[length];
        for (int i3 = 0; i3 < length; i3++) {
            this.trackGroupArrays[i3] = this.mediaPreparer.mediaPeriods[i3].getTrackGroups();
            this.trackSelector.onSelectionActivated(runTrackSelection(i3).info);
            this.mappedTrackInfos[i3] = (com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackSelector.getCurrentMappedTrackInfo());
        }
        setPreparedWithMedia();
        ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callbackHandler)).post(new java.lang.Runnable() { // from class: e.c.a.a.l2.f
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e();
            }
        });
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private com.google.android.exoplayer2.trackselection.TrackSelectorResult runTrackSelection(int i) {
        boolean z;
        try {
            com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResultSelectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, this.trackGroupArrays[i], new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(this.mediaPreparer.timeline.getUidOfPeriod(i)), this.mediaPreparer.timeline);
            for (int i2 = 0; i2 < trackSelectorResultSelectTracks.length; i2++) {
                com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = trackSelectorResultSelectTracks.selections[i2];
                if (exoTrackSelection != null) {
                    java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list = this.trackSelectionsByPeriodAndRenderer[i][i2];
                    int i3 = 0;
                    while (true) {
                        if (i3 >= list.size()) {
                            z = false;
                            break;
                        }
                        com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection2 = list.get(i3);
                        if (exoTrackSelection2.getTrackGroup() == exoTrackSelection.getTrackGroup()) {
                            this.scratchSet.clear();
                            for (int i4 = 0; i4 < exoTrackSelection2.length(); i4++) {
                                this.scratchSet.put(exoTrackSelection2.getIndexInTrackGroup(i4), 0);
                            }
                            for (int i5 = 0; i5 < exoTrackSelection.length(); i5++) {
                                this.scratchSet.put(exoTrackSelection.getIndexInTrackGroup(i5), 0);
                            }
                            int[] iArr = new int[this.scratchSet.size()];
                            for (int i6 = 0; i6 < this.scratchSet.size(); i6++) {
                                iArr[i6] = this.scratchSet.keyAt(i6);
                            }
                            list.set(i3, new com.google.android.exoplayer2.offline.DownloadHelper.DownloadTrackSelection(exoTrackSelection2.getTrackGroup(), iArr));
                            z = true;
                        } else {
                            i3++;
                        }
                    }
                    if (!z) {
                        list.add(exoTrackSelection);
                    }
                }
            }
            return trackSelectorResultSelectTracks;
        } catch (com.google.android.exoplayer2.ExoPlaybackException e2) {
            throw new java.lang.UnsupportedOperationException(e2);
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void setPreparedWithMedia() {
        this.isPreparedWithMedia = true;
    }

    public void addAudioLanguagesToSelection(java.lang.String... strArr) {
        assertPreparedWithMedia();
        for (int i = 0; i < this.mappedTrackInfos.length; i++) {
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder parametersBuilderBuildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo = this.mappedTrackInfos[i];
            int rendererCount = mappedTrackInfo.getRendererCount();
            for (int i2 = 0; i2 < rendererCount; i2++) {
                if (mappedTrackInfo.getRendererType(i2) != 1) {
                    parametersBuilderBuildUpon.setRendererDisabled(i2, true);
                }
            }
            for (java.lang.String str : strArr) {
                parametersBuilderBuildUpon.setPreferredAudioLanguage(str);
                addTrackSelection(i, parametersBuilderBuildUpon.build());
            }
        }
    }

    public void addTextLanguagesToSelection(boolean z, java.lang.String... strArr) {
        assertPreparedWithMedia();
        for (int i = 0; i < this.mappedTrackInfos.length; i++) {
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder parametersBuilderBuildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo = this.mappedTrackInfos[i];
            int rendererCount = mappedTrackInfo.getRendererCount();
            for (int i2 = 0; i2 < rendererCount; i2++) {
                if (mappedTrackInfo.getRendererType(i2) != 3) {
                    parametersBuilderBuildUpon.setRendererDisabled(i2, true);
                }
            }
            parametersBuilderBuildUpon.setSelectUndeterminedTextLanguage(z);
            for (java.lang.String str : strArr) {
                parametersBuilderBuildUpon.setPreferredTextLanguage(str);
                addTrackSelection(i, parametersBuilderBuildUpon.build());
            }
        }
    }

    public void addTrackSelection(int i, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        assertPreparedWithMedia();
        this.trackSelector.setParameters(parameters);
        runTrackSelection(i);
    }

    public void addTrackSelectionForSingleRenderer(int i, int i2, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, java.util.List<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> list) {
        assertPreparedWithMedia();
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder parametersBuilderBuildUpon = parameters.buildUpon();
        int i3 = 0;
        while (i3 < this.mappedTrackInfos[i].getRendererCount()) {
            parametersBuilderBuildUpon.setRendererDisabled(i3, i3 != i2);
            i3++;
        }
        if (list.isEmpty()) {
            addTrackSelection(i, parametersBuilderBuildUpon.build());
            return;
        }
        com.google.android.exoplayer2.source.TrackGroupArray trackGroups = this.mappedTrackInfos[i].getTrackGroups(i2);
        for (int i4 = 0; i4 < list.size(); i4++) {
            parametersBuilderBuildUpon.setSelectionOverride(i2, trackGroups, list.get(i4));
            addTrackSelection(i, parametersBuilderBuildUpon.build());
        }
    }

    public void clearTrackSelections(int i) {
        assertPreparedWithMedia();
        for (int i2 = 0; i2 < this.rendererCapabilities.length; i2++) {
            this.trackSelectionsByPeriodAndRenderer[i][i2].clear();
        }
    }

    public /* synthetic */ void d(java.io.IOException iOException) {
        ((com.google.android.exoplayer2.offline.DownloadHelper.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onPrepareError(this, iOException);
    }

    public /* synthetic */ void e() {
        ((com.google.android.exoplayer2.offline.DownloadHelper.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    public /* synthetic */ void f(com.google.android.exoplayer2.offline.DownloadHelper.Callback callback) {
        callback.onPrepared(this);
    }

    public com.google.android.exoplayer2.offline.DownloadRequest getDownloadRequest(java.lang.String str, byte[] bArr) {
        com.google.android.exoplayer2.offline.DownloadRequest.Builder mimeType = new com.google.android.exoplayer2.offline.DownloadRequest.Builder(str, this.localConfiguration.uri).setMimeType(this.localConfiguration.mimeType);
        com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration = this.localConfiguration.drmConfiguration;
        com.google.android.exoplayer2.offline.DownloadRequest.Builder data = mimeType.setKeySetId(drmConfiguration != null ? drmConfiguration.getKeySetId() : null).setCustomCacheKey(this.localConfiguration.customCacheKey).setData(bArr);
        if (this.mediaSource == null) {
            return data.build();
        }
        assertPreparedWithMedia();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        int length = this.trackSelectionsByPeriodAndRenderer.length;
        for (int i = 0; i < length; i++) {
            arrayList2.clear();
            int length2 = this.trackSelectionsByPeriodAndRenderer[i].length;
            for (int i2 = 0; i2 < length2; i2++) {
                arrayList2.addAll(this.trackSelectionsByPeriodAndRenderer[i][i2]);
            }
            arrayList.addAll(this.mediaPreparer.mediaPeriods[i].getStreamKeys(arrayList2));
        }
        return data.setStreamKeys(arrayList).build();
    }

    public com.google.android.exoplayer2.offline.DownloadRequest getDownloadRequest(byte[] bArr) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), bArr);
    }

    public java.lang.Object getManifest() {
        if (this.mediaSource == null) {
            return null;
        }
        assertPreparedWithMedia();
        if (this.mediaPreparer.timeline.getWindowCount() > 0) {
            return this.mediaPreparer.timeline.getWindow(0, this.window).manifest;
        }
        return null;
    }

    public com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo getMappedTrackInfo(int i) {
        assertPreparedWithMedia();
        return this.mappedTrackInfos[i];
    }

    public int getPeriodCount() {
        if (this.mediaSource == null) {
            return 0;
        }
        assertPreparedWithMedia();
        return this.trackGroupArrays.length;
    }

    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups(int i) {
        assertPreparedWithMedia();
        return this.trackGroupArrays[i];
    }

    public java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> getTrackSelections(int i, int i2) {
        assertPreparedWithMedia();
        return this.immutableTrackSelectionsByPeriodAndRenderer[i][i2];
    }

    public void prepare(final com.google.android.exoplayer2.offline.DownloadHelper.Callback callback) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.callback == null);
        this.callback = callback;
        com.google.android.exoplayer2.source.MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            this.mediaPreparer = new com.google.android.exoplayer2.offline.DownloadHelper.MediaPreparer(mediaSource, this);
        } else {
            this.callbackHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.l2.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.f(callback);
                }
            });
        }
    }

    public void release() {
        com.google.android.exoplayer2.offline.DownloadHelper.MediaPreparer mediaPreparer = this.mediaPreparer;
        if (mediaPreparer != null) {
            mediaPreparer.release();
        }
    }

    public void replaceTrackSelections(int i, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        clearTrackSelections(i);
        addTrackSelection(i, parameters);
    }
}
