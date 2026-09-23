package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class CacheDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public static final int CACHE_IGNORED_REASON_ERROR = 0;
    public static final int CACHE_IGNORED_REASON_UNSET_LENGTH = 1;
    public static final int CACHE_NOT_IGNORED = -1;
    public static final int FLAG_BLOCK_ON_CACHE = 1;
    public static final int FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS = 4;
    public static final int FLAG_IGNORE_CACHE_ON_ERROR = 2;
    public static final long MIN_READ_BEFORE_CHECKING_CACHE = 102400;
    public android.net.Uri actualUri;
    public final boolean blockOnCache;
    public long bytesRemaining;
    public final com.google.android.exoplayer2.upstream.cache.Cache cache;
    public final com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory;
    public final com.google.android.exoplayer2.upstream.DataSource cacheReadDataSource;
    public final com.google.android.exoplayer2.upstream.DataSource cacheWriteDataSource;
    public long checkCachePosition;
    public com.google.android.exoplayer2.upstream.DataSource currentDataSource;
    public long currentDataSourceBytesRead;
    public com.google.android.exoplayer2.upstream.DataSpec currentDataSpec;
    public com.google.android.exoplayer2.upstream.cache.CacheSpan currentHoleSpan;
    public boolean currentRequestIgnoresCache;
    public final com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener;
    public final boolean ignoreCacheForUnsetLengthRequests;
    public final boolean ignoreCacheOnError;
    public long readPosition;
    public com.google.android.exoplayer2.upstream.DataSpec requestDataSpec;
    public boolean seenCacheError;
    public long totalCachedBytesRead;
    public final com.google.android.exoplayer2.upstream.DataSource upstreamDataSource;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface CacheIgnoredReason {
    }

    public interface EventListener {
        void onCacheIgnored(int i);

        void onCachedBytesRead(long j, long j2);
    }

    public static final class Factory implements com.google.android.exoplayer2.upstream.DataSource.Factory {
        public com.google.android.exoplayer2.upstream.cache.Cache cache;
        public boolean cacheIsReadOnly;
        public com.google.android.exoplayer2.upstream.DataSink.Factory cacheWriteDataSinkFactory;
        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener;
        public int flags;
        public com.google.android.exoplayer2.upstream.DataSource.Factory upstreamDataSourceFactory;
        public int upstreamPriority;
        public com.google.android.exoplayer2.util.PriorityTaskManager upstreamPriorityTaskManager;
        public com.google.android.exoplayer2.upstream.DataSource.Factory cacheReadDataSourceFactory = new com.google.android.exoplayer2.upstream.FileDataSource.Factory();
        public com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory = com.google.android.exoplayer2.upstream.cache.CacheKeyFactory.DEFAULT;

        private com.google.android.exoplayer2.upstream.cache.CacheDataSource createDataSourceInternal(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, int i2) {
            com.google.android.exoplayer2.upstream.DataSink dataSinkCreateDataSink;
            com.google.android.exoplayer2.upstream.cache.Cache cache = (com.google.android.exoplayer2.upstream.cache.Cache) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.cache);
            if (this.cacheIsReadOnly || dataSource == null) {
                dataSinkCreateDataSink = null;
            } else {
                com.google.android.exoplayer2.upstream.DataSink.Factory factory = this.cacheWriteDataSinkFactory;
                dataSinkCreateDataSink = factory != null ? factory.createDataSink() : new com.google.android.exoplayer2.upstream.cache.CacheDataSink.Factory().setCache(cache).createDataSink();
            }
            return new com.google.android.exoplayer2.upstream.cache.CacheDataSource(cache, dataSource, this.cacheReadDataSourceFactory.createDataSource(), dataSinkCreateDataSink, this.cacheKeyFactory, i, this.upstreamPriorityTaskManager, i2, this.eventListener);
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public com.google.android.exoplayer2.upstream.cache.CacheDataSource createDataSource() {
            com.google.android.exoplayer2.upstream.DataSource.Factory factory = this.upstreamDataSourceFactory;
            return createDataSourceInternal(factory != null ? factory.createDataSource() : null, this.flags, this.upstreamPriority);
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource createDataSourceForDownloading() {
            com.google.android.exoplayer2.upstream.DataSource.Factory factory = this.upstreamDataSourceFactory;
            return createDataSourceInternal(factory != null ? factory.createDataSource() : null, this.flags | 1, -1000);
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource createDataSourceForRemovingDownload() {
            return createDataSourceInternal(null, this.flags | 1, -1000);
        }

        public com.google.android.exoplayer2.upstream.cache.Cache getCache() {
            return this.cache;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheKeyFactory getCacheKeyFactory() {
            return this.cacheKeyFactory;
        }

        public com.google.android.exoplayer2.util.PriorityTaskManager getUpstreamPriorityTaskManager() {
            return this.upstreamPriorityTaskManager;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setCache(com.google.android.exoplayer2.upstream.cache.Cache cache) {
            this.cache = cache;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setCacheKeyFactory(com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory) {
            this.cacheKeyFactory = cacheKeyFactory;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setCacheReadDataSourceFactory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this.cacheReadDataSourceFactory = factory;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setCacheWriteDataSinkFactory(com.google.android.exoplayer2.upstream.DataSink.Factory factory) {
            this.cacheWriteDataSinkFactory = factory;
            this.cacheIsReadOnly = factory == null;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setEventListener(com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener) {
            this.eventListener = eventListener;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setFlags(int i) {
            this.flags = i;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setUpstreamDataSourceFactory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this.upstreamDataSourceFactory = factory;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setUpstreamPriority(int i) {
            this.upstreamPriority = i;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory setUpstreamPriorityTaskManager(com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager) {
            this.upstreamPriorityTaskManager = priorityTaskManager;
            return this;
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public CacheDataSource(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource dataSource) {
        this(cache, dataSource, 0);
    }

    public CacheDataSource(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource dataSource, int i) {
        this(cache, dataSource, new com.google.android.exoplayer2.upstream.FileDataSource(), new com.google.android.exoplayer2.upstream.cache.CacheDataSink(cache, com.google.android.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_FRAGMENT_SIZE), i, null);
    }

    public CacheDataSource(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSource dataSource2, com.google.android.exoplayer2.upstream.DataSink dataSink, int i, com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener) {
        this(cache, dataSource, dataSource2, dataSink, i, eventListener, null);
    }

    public CacheDataSource(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSource dataSource2, com.google.android.exoplayer2.upstream.DataSink dataSink, int i, com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener, com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory) {
        this(cache, dataSource, dataSource2, dataSink, cacheKeyFactory, i, null, 0, eventListener);
    }

    public CacheDataSource(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSource dataSource2, com.google.android.exoplayer2.upstream.DataSink dataSink, com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory, int i, com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager, int i2, com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = dataSource2;
        this.cacheKeyFactory = cacheKeyFactory == null ? com.google.android.exoplayer2.upstream.cache.CacheKeyFactory.DEFAULT : cacheKeyFactory;
        this.blockOnCache = (i & 1) != 0;
        this.ignoreCacheOnError = (i & 2) != 0;
        this.ignoreCacheForUnsetLengthRequests = (i & 4) != 0;
        com.google.android.exoplayer2.upstream.TeeDataSource teeDataSource = null;
        if (dataSource != null) {
            dataSource = priorityTaskManager != null ? new com.google.android.exoplayer2.upstream.PriorityDataSource(dataSource, priorityTaskManager, i2) : dataSource;
            this.upstreamDataSource = dataSource;
            if (dataSink != null) {
                teeDataSource = new com.google.android.exoplayer2.upstream.TeeDataSource(dataSource, dataSink);
            }
        } else {
            this.upstreamDataSource = com.google.android.exoplayer2.upstream.DummyDataSource.INSTANCE;
        }
        this.cacheWriteDataSource = teeDataSource;
        this.eventListener = eventListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void closeCurrentSource() {
        com.google.android.exoplayer2.upstream.DataSource dataSource = this.currentDataSource;
        if (dataSource == null) {
            return;
        }
        try {
            dataSource.close();
        } finally {
            this.currentDataSpec = null;
            this.currentDataSource = null;
            com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan = this.currentHoleSpan;
            if (cacheSpan != null) {
                this.cache.releaseHoleSpan(cacheSpan);
                this.currentHoleSpan = null;
            }
        }
    }

    public static android.net.Uri getRedirectedUriOrDefault(com.google.android.exoplayer2.upstream.cache.Cache cache, java.lang.String str, android.net.Uri uri) {
        java.lang.String str2 = cache.getContentMetadata(str).get(com.google.android.exoplayer2.upstream.cache.ContentMetadata.KEY_REDIRECTED_URI, (java.lang.String) null);
        android.net.Uri uri2 = str2 != null ? android.net.Uri.parse(str2) : null;
        return uri2 != null ? uri2 : uri;
    }

    private void handleBeforeThrow(java.lang.Throwable th) {
        if (isReadingFromCache() || (th instanceof com.google.android.exoplayer2.upstream.cache.Cache.CacheException)) {
            this.seenCacheError = true;
        }
    }

    private boolean isBypassingCache() {
        return this.currentDataSource == this.upstreamDataSource;
    }

    private boolean isReadingFromCache() {
        return this.currentDataSource == this.cacheReadDataSource;
    }

    private boolean isReadingFromUpstream() {
        return !isReadingFromCache();
    }

    private boolean isWritingToCache() {
        return this.currentDataSource == this.cacheWriteDataSource;
    }

    private void notifyBytesRead() {
        com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener = this.eventListener;
        if (eventListener == null || this.totalCachedBytesRead <= 0) {
            return;
        }
        eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
        this.totalCachedBytesRead = 0L;
    }

    private void notifyCacheIgnored(int i) {
        com.google.android.exoplayer2.upstream.cache.CacheDataSource.EventListener eventListener = this.eventListener;
        if (eventListener != null) {
            eventListener.onCacheIgnored(i);
        }
    }

    private void openNextSource(com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) throws java.io.InterruptedIOException {
        com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpanStartReadWrite;
        long jMin;
        com.google.android.exoplayer2.upstream.DataSpec dataSpecBuild;
        com.google.android.exoplayer2.upstream.DataSource dataSource;
        java.lang.String str = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(dataSpec.key);
        if (this.currentRequestIgnoresCache) {
            cacheSpanStartReadWrite = null;
        } else if (this.blockOnCache) {
            try {
                cacheSpanStartReadWrite = this.cache.startReadWrite(str, this.readPosition, this.bytesRemaining);
            } catch (java.lang.InterruptedException unused) {
                java.lang.Thread.currentThread().interrupt();
                throw new java.io.InterruptedIOException();
            }
        } else {
            cacheSpanStartReadWrite = this.cache.startReadWriteNonBlocking(str, this.readPosition, this.bytesRemaining);
        }
        if (cacheSpanStartReadWrite == null) {
            dataSource = this.upstreamDataSource;
            dataSpecBuild = dataSpec.buildUpon().setPosition(this.readPosition).setLength(this.bytesRemaining).build();
        } else if (cacheSpanStartReadWrite.isCached) {
            android.net.Uri uriFromFile = android.net.Uri.fromFile((java.io.File) com.google.android.exoplayer2.util.Util.castNonNull(cacheSpanStartReadWrite.file));
            long j = cacheSpanStartReadWrite.position;
            long j2 = this.readPosition - j;
            long jMin2 = cacheSpanStartReadWrite.length - j2;
            long j3 = this.bytesRemaining;
            if (j3 != -1) {
                jMin2 = java.lang.Math.min(jMin2, j3);
            }
            dataSpecBuild = dataSpec.buildUpon().setUri(uriFromFile).setUriPositionOffset(j).setPosition(j2).setLength(jMin2).build();
            dataSource = this.cacheReadDataSource;
        } else {
            if (cacheSpanStartReadWrite.isOpenEnded()) {
                jMin = this.bytesRemaining;
            } else {
                jMin = cacheSpanStartReadWrite.length;
                long j4 = this.bytesRemaining;
                if (j4 != -1) {
                    jMin = java.lang.Math.min(jMin, j4);
                }
            }
            dataSpecBuild = dataSpec.buildUpon().setPosition(this.readPosition).setLength(jMin).build();
            dataSource = this.cacheWriteDataSource;
            if (dataSource == null) {
                dataSource = this.upstreamDataSource;
                this.cache.releaseHoleSpan(cacheSpanStartReadWrite);
                cacheSpanStartReadWrite = null;
            }
        }
        this.checkCachePosition = (this.currentRequestIgnoresCache || dataSource != this.upstreamDataSource) ? Long.MAX_VALUE : this.readPosition + MIN_READ_BEFORE_CHECKING_CACHE;
        if (z) {
            com.google.android.exoplayer2.util.Assertions.checkState(isBypassingCache());
            if (dataSource == this.upstreamDataSource) {
                return;
            }
            try {
                closeCurrentSource();
            } finally {
            }
        }
        if (cacheSpanStartReadWrite != null && cacheSpanStartReadWrite.isHoleSpan()) {
            this.currentHoleSpan = cacheSpanStartReadWrite;
        }
        this.currentDataSource = dataSource;
        this.currentDataSpec = dataSpecBuild;
        this.currentDataSourceBytesRead = 0L;
        long jOpen = dataSource.open(dataSpecBuild);
        com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations = new com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations();
        if (dataSpecBuild.length == -1 && jOpen != -1) {
            this.bytesRemaining = jOpen;
            com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations.setContentLength(contentMetadataMutations, this.readPosition + jOpen);
        }
        if (isReadingFromUpstream()) {
            android.net.Uri uri = dataSource.getUri();
            this.actualUri = uri;
            com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations.setRedirectedUri(contentMetadataMutations, dataSpec.uri.equals(uri) ^ true ? this.actualUri : null);
        }
        if (isWritingToCache()) {
            this.cache.applyContentMetadataMutations(str, contentMetadataMutations);
        }
    }

    private void setNoBytesRemainingAndMaybeStoreLength(java.lang.String str) {
        this.bytesRemaining = 0L;
        if (isWritingToCache()) {
            com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations = new com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations();
            com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations.setContentLength(contentMetadataMutations, this.readPosition);
            this.cache.applyContentMetadataMutations(str, contentMetadataMutations);
        }
    }

    private int shouldIgnoreCacheForRequest(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        if (this.ignoreCacheOnError && this.seenCacheError) {
            return 0;
        }
        return (this.ignoreCacheForUnsetLengthRequests && dataSpec.length == -1) ? 1 : -1;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        this.cacheReadDataSource.addTransferListener(transferListener);
        this.upstreamDataSource.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.requestDataSpec = null;
        this.actualUri = null;
        this.readPosition = 0L;
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (java.lang.Throwable th) {
            handleBeforeThrow(th);
            throw th;
        }
    }

    public com.google.android.exoplayer2.upstream.cache.Cache getCache() {
        return this.cache;
    }

    public com.google.android.exoplayer2.upstream.cache.CacheKeyFactory getCacheKeyFactory() {
        return this.cacheKeyFactory;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return isReadingFromUpstream() ? this.upstreamDataSource.getResponseHeaders() : java.util.Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.actualUri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        try {
            java.lang.String strBuildCacheKey = this.cacheKeyFactory.buildCacheKey(dataSpec);
            com.google.android.exoplayer2.upstream.DataSpec dataSpecBuild = dataSpec.buildUpon().setKey(strBuildCacheKey).build();
            this.requestDataSpec = dataSpecBuild;
            this.actualUri = getRedirectedUriOrDefault(this.cache, strBuildCacheKey, dataSpecBuild.uri);
            this.readPosition = dataSpec.position;
            int iShouldIgnoreCacheForRequest = shouldIgnoreCacheForRequest(dataSpec);
            boolean z = iShouldIgnoreCacheForRequest != -1;
            this.currentRequestIgnoresCache = z;
            if (z) {
                notifyCacheIgnored(iShouldIgnoreCacheForRequest);
            }
            if (this.currentRequestIgnoresCache) {
                this.bytesRemaining = -1L;
            } else {
                long jA = e.c.a.a.r2.m.d.a(this.cache.getContentMetadata(strBuildCacheKey));
                this.bytesRemaining = jA;
                if (jA != -1) {
                    long j = jA - dataSpec.position;
                    this.bytesRemaining = j;
                    if (j < 0) {
                        throw new com.google.android.exoplayer2.upstream.DataSourceException(2008);
                    }
                }
            }
            if (dataSpec.length != -1) {
                this.bytesRemaining = this.bytesRemaining == -1 ? dataSpec.length : java.lang.Math.min(this.bytesRemaining, dataSpec.length);
            }
            if (this.bytesRemaining > 0 || this.bytesRemaining == -1) {
                openNextSource(dataSpecBuild, false);
            }
            return dataSpec.length != -1 ? dataSpec.length : this.bytesRemaining;
        } catch (java.lang.Throwable th) {
            handleBeforeThrow(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.requestDataSpec);
        com.google.android.exoplayer2.upstream.DataSpec dataSpec2 = (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.currentDataSpec);
        try {
            if (this.readPosition >= this.checkCachePosition) {
                openNextSource(dataSpec, true);
            }
            int i3 = ((com.google.android.exoplayer2.upstream.DataSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.currentDataSource)).read(bArr, i, i2);
            if (i3 != -1) {
                if (isReadingFromCache()) {
                    this.totalCachedBytesRead += i3;
                }
                long j = i3;
                this.readPosition += j;
                this.currentDataSourceBytesRead += j;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= j;
                }
            } else {
                if (!isReadingFromUpstream() || (dataSpec2.length != -1 && this.currentDataSourceBytesRead >= dataSpec2.length)) {
                    if (this.bytesRemaining <= 0) {
                        if (this.bytesRemaining == -1) {
                        }
                    }
                    closeCurrentSource();
                    openNextSource(dataSpec, false);
                    return read(bArr, i, i2);
                }
                setNoBytesRemainingAndMaybeStoreLength((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(dataSpec.key));
            }
            return i3;
        } catch (java.lang.Throwable th) {
            handleBeforeThrow(th);
            throw th;
        }
    }
}
