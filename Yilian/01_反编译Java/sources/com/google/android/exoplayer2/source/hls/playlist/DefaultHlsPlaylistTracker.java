package com.google.android.exoplayer2.source.hls.playlist;

/* loaded from: classes.dex */
public final class DefaultHlsPlaylistTracker implements com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker, com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist>> {
    public static final double DEFAULT_PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT = 3.5d;
    public static final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory FACTORY = new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory() { // from class: e.c.a.a.n2.g0.g.b
        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory
        public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker createTracker(com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory) {
            return new com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory);
        }
    };
    public final com.google.android.exoplayer2.source.hls.HlsDataSourceFactory dataSourceFactory;
    public com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher;
    public com.google.android.exoplayer2.upstream.Loader initialPlaylistLoader;
    public long initialStartTimeUs;
    public boolean isLive;
    public final java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener> listeners;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist masterPlaylist;
    public final java.util.HashMap<android.net.Uri, com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle> playlistBundles;
    public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory playlistParserFactory;
    public android.os.Handler playlistRefreshHandler;
    public final double playlistStuckTargetDurationCoefficient;
    public com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist primaryMediaPlaylistSnapshot;
    public android.net.Uri primaryMediaPlaylistUrl;
    public com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener;

    public class FirstPrimaryMediaPlaylistListener implements com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener {
        public FirstPrimaryMediaPlaylistListener() {
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public void onPlaylistChanged() {
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.listeners.remove(this);
        }

        @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
        public boolean onPlaylistError(android.net.Uri uri, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle;
            if (com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.primaryMediaPlaylistSnapshot == null) {
                long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
                java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> list = ((com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) com.google.android.exoplayer2.util.Util.castNonNull(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.masterPlaylist)).variants;
                int i = 0;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle2 = (com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle) com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.playlistBundles.get(list.get(i2).url);
                    if (mediaPlaylistBundle2 != null && jElapsedRealtime < mediaPlaylistBundle2.excludeUntilMs) {
                        i++;
                    }
                }
                com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getFallbackSelectionFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions(1, 0, com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.masterPlaylist.variants.size(), i), loadErrorInfo);
                if (fallbackSelectionFor != null && fallbackSelectionFor.type == 2 && (mediaPlaylistBundle = (com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle) com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.playlistBundles.get(uri)) != null) {
                    mediaPlaylistBundle.excludePlaylist(fallbackSelectionFor.exclusionDurationMs);
                }
            }
            return false;
        }
    }

    public final class MediaPlaylistBundle implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist>> {
        public static final java.lang.String BLOCK_MSN_PARAM = "_HLS_msn";
        public static final java.lang.String BLOCK_PART_PARAM = "_HLS_part";
        public static final java.lang.String SKIP_PARAM = "_HLS_skip";
        public long earliestNextLoadTimeMs;
        public long excludeUntilMs;
        public long lastSnapshotChangeMs;
        public long lastSnapshotLoadMs;
        public boolean loadPending;
        public final com.google.android.exoplayer2.upstream.DataSource mediaPlaylistDataSource;
        public final com.google.android.exoplayer2.upstream.Loader mediaPlaylistLoader = new com.google.android.exoplayer2.upstream.Loader("DefaultHlsPlaylistTracker:MediaPlaylist");
        public java.io.IOException playlistError;
        public com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist playlistSnapshot;
        public final android.net.Uri playlistUrl;

        public MediaPlaylistBundle(android.net.Uri uri) {
            this.playlistUrl = uri;
            this.mediaPlaylistDataSource = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.dataSourceFactory.createDataSource(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean excludePlaylist(long j) {
            this.excludeUntilMs = android.os.SystemClock.elapsedRealtime() + j;
            return this.playlistUrl.equals(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl) && !com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.maybeSelectNewPrimaryUrl();
        }

        private android.net.Uri getMediaPlaylistUriForReload() {
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            if (hlsMediaPlaylist != null) {
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
                if (serverControl.skipUntilUs != com.google.android.exoplayer2.C.TIME_UNSET || serverControl.canBlockReload) {
                    android.net.Uri.Builder builderBuildUpon = this.playlistUrl.buildUpon();
                    com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
                    if (hlsMediaPlaylist2.serverControl.canBlockReload) {
                        builderBuildUpon.appendQueryParameter(BLOCK_MSN_PARAM, java.lang.String.valueOf(hlsMediaPlaylist2.mediaSequence + hlsMediaPlaylist2.segments.size()));
                        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
                        if (hlsMediaPlaylist3.partTargetDurationUs != com.google.android.exoplayer2.C.TIME_UNSET) {
                            java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list = hlsMediaPlaylist3.trailingParts;
                            int size = list.size();
                            if (!list.isEmpty() && ((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part) e.c.b.a.f.l(list)).isPreload) {
                                size--;
                            }
                            builderBuildUpon.appendQueryParameter(BLOCK_PART_PARAM, java.lang.String.valueOf(size));
                        }
                    }
                    com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.ServerControl serverControl2 = this.playlistSnapshot.serverControl;
                    if (serverControl2.skipUntilUs != com.google.android.exoplayer2.C.TIME_UNSET) {
                        builderBuildUpon.appendQueryParameter(SKIP_PARAM, serverControl2.canSkipDateRanges ? "v2" : com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.BOOLEAN_TRUE);
                    }
                    return builderBuildUpon.build();
                }
            }
            return this.playlistUrl;
        }

        private void loadPlaylistImmediately(android.net.Uri uri) {
            com.google.android.exoplayer2.upstream.ParsingLoadable parsingLoadable = new com.google.android.exoplayer2.upstream.ParsingLoadable(this.mediaPlaylistDataSource, uri, 4, com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.playlistParserFactory.createPlaylistParser(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.masterPlaylist, this.playlistSnapshot));
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.mediaPlaylistLoader.startLoading(parsingLoadable, this, com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadPlaylistInternal(final android.net.Uri uri) {
            this.excludeUntilMs = 0L;
            if (this.loadPending || this.mediaPlaylistLoader.isLoading() || this.mediaPlaylistLoader.hasFatalError()) {
                return;
            }
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (jElapsedRealtime >= this.earliestNextLoadTimeMs) {
                loadPlaylistImmediately(uri);
            } else {
                this.loadPending = true;
                com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.playlistRefreshHandler.postDelayed(new java.lang.Runnable() { // from class: e.c.a.a.n2.g0.g.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(uri);
                    }
                }, this.earliestNextLoadTimeMs - jElapsedRealtime);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void processLoadedPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo) {
            java.io.IOException playlistStuckException;
            boolean z;
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2 = this.playlistSnapshot;
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            this.lastSnapshotLoadMs = jElapsedRealtime;
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist latestPlaylistSnapshot = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.getLatestPlaylistSnapshot(hlsMediaPlaylist2, hlsMediaPlaylist);
            this.playlistSnapshot = latestPlaylistSnapshot;
            if (latestPlaylistSnapshot != hlsMediaPlaylist2) {
                this.playlistError = null;
                this.lastSnapshotChangeMs = jElapsedRealtime;
                com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.onPlaylistUpdated(this.playlistUrl, latestPlaylistSnapshot);
            } else if (!latestPlaylistSnapshot.hasEndTag) {
                long size = hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size();
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
                if (size < hlsMediaPlaylist3.mediaSequence) {
                    playlistStuckException = new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistResetException(this.playlistUrl);
                    z = true;
                } else {
                    double d2 = jElapsedRealtime - this.lastSnapshotChangeMs;
                    double dUsToMs = com.google.android.exoplayer2.util.Util.usToMs(hlsMediaPlaylist3.targetDurationUs);
                    double d3 = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.playlistStuckTargetDurationCoefficient;
                    java.lang.Double.isNaN(dUsToMs);
                    playlistStuckException = d2 > d3 * dUsToMs ? new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistStuckException(this.playlistUrl) : null;
                    z = false;
                }
                if (playlistStuckException != null) {
                    this.playlistError = playlistStuckException;
                    com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(4), playlistStuckException, 1), z);
                }
            }
            long j = 0;
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist4 = this.playlistSnapshot;
            if (!hlsMediaPlaylist4.serverControl.canBlockReload) {
                j = hlsMediaPlaylist4.targetDurationUs;
                if (hlsMediaPlaylist4 == hlsMediaPlaylist2) {
                    j /= 2;
                }
            }
            this.earliestNextLoadTimeMs = com.google.android.exoplayer2.util.Util.usToMs(j) + jElapsedRealtime;
            if (!(this.playlistSnapshot.partTargetDurationUs != com.google.android.exoplayer2.C.TIME_UNSET || this.playlistUrl.equals(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl)) || this.playlistSnapshot.hasEndTag) {
                return;
            }
            loadPlaylistInternal(getMediaPlaylistUriForReload());
        }

        public /* synthetic */ void a(android.net.Uri uri) {
            this.loadPending = false;
            loadPlaylistImmediately(uri);
        }

        public com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist getPlaylistSnapshot() {
            return this.playlistSnapshot;
        }

        public boolean isSnapshotValid() {
            int i;
            if (this.playlistSnapshot == null) {
                return false;
            }
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            long jMax = java.lang.Math.max(30000L, com.google.android.exoplayer2.util.Util.usToMs(this.playlistSnapshot.durationUs));
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = this.playlistSnapshot;
            return hlsMediaPlaylist.hasEndTag || (i = hlsMediaPlaylist.playlistType) == 2 || i == 1 || this.lastSnapshotLoadMs + jMax > jElapsedRealtime;
        }

        public void loadPlaylist() {
            loadPlaylistInternal(this.playlistUrl);
        }

        public void maybeThrowPlaylistRefreshError() throws java.io.IOException {
            this.mediaPlaylistLoader.maybeThrowError();
            java.io.IOException iOException = this.playlistError;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
            com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher.loadCanceled(loadEventInfo, 4);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2) {
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist result = parsingLoadable.getResult();
            com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            if (result instanceof com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist) {
                processLoadedPlaylist((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist) result, loadEventInfo);
                com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher.loadCompleted(loadEventInfo, 4);
            } else {
                this.playlistError = com.google.android.exoplayer2.ParserException.createForMalformedManifest("Loaded playlist has unexpected type.", null);
                com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher.loadError(loadEventInfo, 4, this.playlistError, true);
            }
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
            com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionCreateRetryAction;
            com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
            boolean z = iOException instanceof com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.DeltaUpdateException;
            if ((parsingLoadable.getUri().getQueryParameter(BLOCK_MSN_PARAM) != null) || z) {
                int i2 = iOException instanceof com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException ? ((com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) iOException).responseCode : Integer.MAX_VALUE;
                if (z || i2 == 400 || i2 == 503) {
                    this.earliestNextLoadTimeMs = android.os.SystemClock.elapsedRealtime();
                    loadPlaylist();
                    ((com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher) com.google.android.exoplayer2.util.Util.castNonNull(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher)).loadError(loadEventInfo, parsingLoadable.type, iOException, true);
                    return com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
                }
            }
            com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(parsingLoadable.type), iOException, i);
            if (com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, loadErrorInfo, false)) {
                long retryDelayMsFor = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getRetryDelayMsFor(loadErrorInfo);
                loadErrorActionCreateRetryAction = retryDelayMsFor != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.upstream.Loader.createRetryAction(false, retryDelayMsFor) : com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL;
            } else {
                loadErrorActionCreateRetryAction = com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
            }
            boolean zIsRetry = true ^ loadErrorActionCreateRetryAction.isRetry();
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.eventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, zIsRetry);
            if (zIsRetry) {
                com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
            }
            return loadErrorActionCreateRetryAction;
        }

        public void release() {
            this.mediaPlaylistLoader.release();
        }
    }

    public DefaultHlsPlaylistTracker(com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, 3.5d);
    }

    public DefaultHlsPlaylistTracker(com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory, double d2) {
        this.dataSourceFactory = hlsDataSourceFactory;
        this.playlistParserFactory = hlsPlaylistParserFactory;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistStuckTargetDurationCoefficient = d2;
        this.listeners = new java.util.concurrent.CopyOnWriteArrayList<>();
        this.playlistBundles = new java.util.HashMap<>();
        this.initialStartTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void createBundles(java.util.List<android.net.Uri> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            android.net.Uri uri = list.get(i);
            this.playlistBundles.put(uri, new com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle(uri));
        }
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment getFirstOldOverlappingSegment(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2) {
        int i = (int) (hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence);
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist getLatestPlaylistSnapshot(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2) {
        return !hlsMediaPlaylist2.isNewerThan(hlsMediaPlaylist) ? hlsMediaPlaylist2.hasEndTag ? hlsMediaPlaylist.copyWithEndTag() : hlsMediaPlaylist : hlsMediaPlaylist2.copyWith(getLoadedPlaylistStartTimeUs(hlsMediaPlaylist, hlsMediaPlaylist2), getLoadedPlaylistDiscontinuitySequence(hlsMediaPlaylist, hlsMediaPlaylist2));
    }

    private int getLoadedPlaylistDiscontinuitySequence(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment firstOldOverlappingSegment;
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        int i = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.discontinuitySequence : 0;
        return (hlsMediaPlaylist == null || (firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2)) == null) ? i : (hlsMediaPlaylist.discontinuitySequence + firstOldOverlappingSegment.relativeDiscontinuitySequence) - hlsMediaPlaylist2.segments.get(0).relativeDiscontinuitySequence;
    }

    private long getLoadedPlaylistStartTimeUs(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        long j = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.startTimeUs : 0L;
        if (hlsMediaPlaylist == null) {
            return j;
        }
        int size = hlsMediaPlaylist.segments.size();
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2);
        return firstOldOverlappingSegment != null ? hlsMediaPlaylist.startTimeUs + firstOldOverlappingSegment.relativeStartTimeUs : ((long) size) == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence ? hlsMediaPlaylist.getEndTimeUs() : j;
    }

    private android.net.Uri getRequestUriForPrimaryChange(android.net.Uri uri) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.RenditionReport renditionReport;
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.serverControl.canBlockReload || (renditionReport = hlsMediaPlaylist.renditionReports.get(uri)) == null) {
            return uri;
        }
        android.net.Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.appendQueryParameter(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle.BLOCK_MSN_PARAM, java.lang.String.valueOf(renditionReport.lastMediaSequence));
        int i = renditionReport.lastPartIndex;
        if (i != -1) {
            builderBuildUpon.appendQueryParameter(com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle.BLOCK_PART_PARAM, java.lang.String.valueOf(i));
        }
        return builderBuildUpon.build();
    }

    private boolean isVariantUrl(android.net.Uri uri) {
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> list = this.masterPlaylist.variants;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(list.get(i).url)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean maybeSelectNewPrimaryUrl() {
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> list = this.masterPlaylist.variants;
        int size = list.size();
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle = (com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playlistBundles.get(list.get(i).url));
            if (jElapsedRealtime > mediaPlaylistBundle.excludeUntilMs) {
                android.net.Uri uri = mediaPlaylistBundle.playlistUrl;
                this.primaryMediaPlaylistUrl = uri;
                mediaPlaylistBundle.loadPlaylistInternal(getRequestUriForPrimaryChange(uri));
                return true;
            }
        }
        return false;
    }

    private void maybeSetPrimaryUrl(android.net.Uri uri) {
        if (uri.equals(this.primaryMediaPlaylistUrl) || !isVariantUrl(uri)) {
            return;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
        if (hlsMediaPlaylist == null || !hlsMediaPlaylist.hasEndTag) {
            this.primaryMediaPlaylistUrl = uri;
            com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(uri);
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist2 = mediaPlaylistBundle.playlistSnapshot;
            if (hlsMediaPlaylist2 == null || !hlsMediaPlaylist2.hasEndTag) {
                mediaPlaylistBundle.loadPlaylistInternal(getRequestUriForPrimaryChange(uri));
            } else {
                this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist2;
                this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(hlsMediaPlaylist2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyPlaylistError(android.net.Uri uri, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        java.util.Iterator<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            z2 |= !it.next().onPlaylistError(uri, loadErrorInfo, z);
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlaylistUpdated(android.net.Uri uri, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        if (uri.equals(this.primaryMediaPlaylistUrl)) {
            if (this.primaryMediaPlaylistSnapshot == null) {
                this.isLive = !hlsMediaPlaylist.hasEndTag;
                this.initialStartTimeUs = hlsMediaPlaylist.startTimeUs;
            }
            this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist;
            this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(hlsMediaPlaylist);
        }
        java.util.Iterator<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaylistChanged();
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void addListener(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(playlistEventListener);
        this.listeners.add(playlistEventListener);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean excludeMediaPlaylist(android.net.Uri uri, long j) {
        if (this.playlistBundles.get(uri) != null) {
            return !r2.excludePlaylist(j);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public long getInitialStartTimeUs() {
        return this.initialStartTimeUs;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist getMasterPlaylist() {
        return this.masterPlaylist;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist getPlaylistSnapshot(android.net.Uri uri, boolean z) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist playlistSnapshot = this.playlistBundles.get(uri).getPlaylistSnapshot();
        if (playlistSnapshot != null && z) {
            maybeSetPrimaryUrl(uri);
        }
        return playlistSnapshot;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean isLive() {
        return this.isLive;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public boolean isSnapshotValid(android.net.Uri uri) {
        return this.playlistBundles.get(uri).isSnapshotValid();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPlaylistRefreshError(android.net.Uri uri) throws java.io.IOException {
        this.playlistBundles.get(uri).maybeThrowPlaylistRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void maybeThrowPrimaryPlaylistRefreshError() throws java.io.IOException {
        com.google.android.exoplayer2.upstream.Loader loader = this.initialPlaylistLoader;
        if (loader != null) {
            loader.maybeThrowError();
        }
        android.net.Uri uri = this.primaryMediaPlaylistUrl;
        if (uri != null) {
            maybeThrowPlaylistRefreshError(uri);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.eventDispatcher.loadCanceled(loadEventInfo, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2) {
        com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist result = parsingLoadable.getResult();
        boolean z = result instanceof com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
        com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylistCreateSingleVariantMasterPlaylist = z ? com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.createSingleVariantMasterPlaylist(result.baseUri) : (com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) result;
        this.masterPlaylist = hlsMasterPlaylistCreateSingleVariantMasterPlaylist;
        this.primaryMediaPlaylistUrl = hlsMasterPlaylistCreateSingleVariantMasterPlaylist.variants.get(0).url;
        this.listeners.add(new com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.FirstPrimaryMediaPlaylistListener());
        createBundles(hlsMasterPlaylistCreateSingleVariantMasterPlaylist.mediaPlaylistUrls);
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle mediaPlaylistBundle = this.playlistBundles.get(this.primaryMediaPlaylistUrl);
        if (z) {
            mediaPlaylistBundle.processLoadedPlaylist((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist) result, loadEventInfo);
        } else {
            mediaPlaylistBundle.loadPlaylist();
        }
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.eventDispatcher.loadCompleted(loadEventInfo, 4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(parsingLoadable.type), iOException, i));
        boolean z = retryDelayMsFor == com.google.android.exoplayer2.C.TIME_UNSET;
        this.eventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        return z ? com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL : com.google.android.exoplayer2.upstream.Loader.createRetryAction(false, retryDelayMsFor);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void refreshPlaylist(android.net.Uri uri) {
        this.playlistBundles.get(uri).loadPlaylist();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void removeListener(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener playlistEventListener) {
        this.listeners.remove(playlistEventListener);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void start(android.net.Uri uri, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener primaryPlaylistListener) {
        this.playlistRefreshHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        this.eventDispatcher = eventDispatcher;
        this.primaryPlaylistListener = primaryPlaylistListener;
        com.google.android.exoplayer2.upstream.ParsingLoadable parsingLoadable = new com.google.android.exoplayer2.upstream.ParsingLoadable(this.dataSourceFactory.createDataSource(4), uri, 4, this.playlistParserFactory.createPlaylistParser());
        com.google.android.exoplayer2.util.Assertions.checkState(this.initialPlaylistLoader == null);
        com.google.android.exoplayer2.upstream.Loader loader = new com.google.android.exoplayer2.upstream.Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        this.initialPlaylistLoader = loader;
        eventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, loader.startLoading(parsingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker
    public void stop() {
        this.primaryMediaPlaylistUrl = null;
        this.primaryMediaPlaylistSnapshot = null;
        this.masterPlaylist = null;
        this.initialStartTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.initialPlaylistLoader.release();
        this.initialPlaylistLoader = null;
        java.util.Iterator<com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle> it = this.playlistBundles.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.playlistRefreshHandler.removeCallbacksAndMessages(null);
        this.playlistRefreshHandler = null;
        this.playlistBundles.clear();
    }
}
