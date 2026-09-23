package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public abstract class SegmentDownloader<M extends com.google.android.exoplayer2.offline.FilterableManifest<M>> implements com.google.android.exoplayer2.offline.Downloader {
    public static final int BUFFER_SIZE_BYTES = 131072;
    public static final long MAX_MERGED_SEGMENT_START_TIME_DIFF_US = 20000000;
    public final java.util.ArrayList<com.google.android.exoplayer2.util.RunnableFutureTask<?, ?>> activeRunnables;
    public final com.google.android.exoplayer2.upstream.cache.Cache cache;
    public final com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory cacheDataSourceFactory;
    public final com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory;
    public final java.util.concurrent.Executor executor;
    public volatile boolean isCanceled;
    public final com.google.android.exoplayer2.upstream.DataSpec manifestDataSpec;
    public final com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<M> manifestParser;
    public final com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager;
    public final java.util.ArrayList<com.google.android.exoplayer2.offline.StreamKey> streamKeys;

    public static final class ProgressNotifier implements com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener {
        public long bytesDownloaded;
        public final long contentLength;
        public final com.google.android.exoplayer2.offline.Downloader.ProgressListener progressListener;
        public int segmentsDownloaded;
        public final int totalSegments;

        public ProgressNotifier(com.google.android.exoplayer2.offline.Downloader.ProgressListener progressListener, long j, int i, long j2, int i2) {
            this.progressListener = progressListener;
            this.contentLength = j;
            this.totalSegments = i;
            this.bytesDownloaded = j2;
            this.segmentsDownloaded = i2;
        }

        private float getPercentDownloaded() {
            long j = this.contentLength;
            if (j != -1 && j != 0) {
                return (this.bytesDownloaded * 100.0f) / j;
            }
            int i = this.totalSegments;
            if (i != 0) {
                return (this.segmentsDownloaded * 100.0f) / i;
            }
            return -1.0f;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
        public void onProgress(long j, long j2, long j3) {
            long j4 = this.bytesDownloaded + j3;
            this.bytesDownloaded = j4;
            this.progressListener.onProgress(this.contentLength, j4, getPercentDownloaded());
        }

        public void onSegmentDownloaded() {
            this.segmentsDownloaded++;
            this.progressListener.onProgress(this.contentLength, this.bytesDownloaded, getPercentDownloaded());
        }
    }

    public static class Segment implements java.lang.Comparable<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> {
        public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
        public final long startTimeUs;

        public Segment(long j, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            this.startTimeUs = j;
            this.dataSpec = dataSpec;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.offline.SegmentDownloader.Segment segment) {
            return com.google.android.exoplayer2.util.Util.compareLong(this.startTimeUs, segment.startTimeUs);
        }
    }

    public static final class SegmentDownloadRunnable extends com.google.android.exoplayer2.util.RunnableFutureTask<java.lang.Void, java.io.IOException> {
        public final com.google.android.exoplayer2.upstream.cache.CacheWriter cacheWriter;
        public final com.google.android.exoplayer2.upstream.cache.CacheDataSource dataSource;
        public final com.google.android.exoplayer2.offline.SegmentDownloader.ProgressNotifier progressNotifier;
        public final com.google.android.exoplayer2.offline.SegmentDownloader.Segment segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(com.google.android.exoplayer2.offline.SegmentDownloader.Segment segment, com.google.android.exoplayer2.upstream.cache.CacheDataSource cacheDataSource, com.google.android.exoplayer2.offline.SegmentDownloader.ProgressNotifier progressNotifier, byte[] bArr) {
            this.segment = segment;
            this.dataSource = cacheDataSource;
            this.progressNotifier = progressNotifier;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new com.google.android.exoplayer2.upstream.cache.CacheWriter(cacheDataSource, segment.dataSpec, bArr, progressNotifier);
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        public void cancelWork() {
            this.cacheWriter.cancel();
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        public java.lang.Void doWork() throws java.io.IOException {
            this.cacheWriter.cache();
            com.google.android.exoplayer2.offline.SegmentDownloader.ProgressNotifier progressNotifier = this.progressNotifier;
            if (progressNotifier == null) {
                return null;
            }
            progressNotifier.onSegmentDownloaded();
            return null;
        }
    }

    public SegmentDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<M> parser, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.manifestDataSpec = getCompressibleDataSpec(mediaItem.localConfiguration.uri);
        this.manifestParser = parser;
        this.streamKeys = new java.util.ArrayList<>(mediaItem.localConfiguration.streamKeys);
        this.cacheDataSourceFactory = factory;
        this.executor = executor;
        this.cache = (com.google.android.exoplayer2.upstream.cache.Cache) com.google.android.exoplayer2.util.Assertions.checkNotNull(factory.getCache());
        this.cacheKeyFactory = factory.getCacheKeyFactory();
        this.priorityTaskManager = factory.getUpstreamPriorityTaskManager();
        this.activeRunnables = new java.util.ArrayList<>();
    }

    private <T> void addActiveRunnable(com.google.android.exoplayer2.util.RunnableFutureTask<T, ?> runnableFutureTask) {
        synchronized (this.activeRunnables) {
            if (this.isCanceled) {
                throw new java.lang.InterruptedException();
            }
            this.activeRunnables.add(runnableFutureTask);
        }
    }

    public static boolean canMergeSegments(com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.upstream.DataSpec dataSpec2) {
        if (dataSpec.uri.equals(dataSpec2.uri)) {
            long j = dataSpec.length;
            if (j != -1 && dataSpec.position + j == dataSpec2.position && com.google.android.exoplayer2.util.Util.areEqual(dataSpec.key, dataSpec2.key) && dataSpec.flags == dataSpec2.flags && dataSpec.httpMethod == dataSpec2.httpMethod && dataSpec.httpRequestHeaders.equals(dataSpec2.httpRequestHeaders)) {
                return true;
            }
        }
        return false;
    }

    public static com.google.android.exoplayer2.upstream.DataSpec getCompressibleDataSpec(android.net.Uri uri) {
        return new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(uri).setFlags(1).build();
    }

    public static void mergeSegments(java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> list, com.google.android.exoplayer2.upstream.cache.CacheKeyFactory cacheKeyFactory) {
        java.util.HashMap map = new java.util.HashMap();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.google.android.exoplayer2.offline.SegmentDownloader.Segment segment = list.get(i2);
            java.lang.String strBuildCacheKey = cacheKeyFactory.buildCacheKey(segment.dataSpec);
            java.lang.Integer num = (java.lang.Integer) map.get(strBuildCacheKey);
            com.google.android.exoplayer2.offline.SegmentDownloader.Segment segment2 = num == null ? null : list.get(num.intValue());
            if (segment2 == null || segment.startTimeUs > segment2.startTimeUs + 20000000 || !canMergeSegments(segment2.dataSpec, segment.dataSpec)) {
                map.put(strBuildCacheKey, java.lang.Integer.valueOf(i));
                list.set(i, segment);
                i++;
            } else {
                long j = segment.dataSpec.length;
                list.set(((java.lang.Integer) com.google.android.exoplayer2.util.Assertions.checkNotNull(num)).intValue(), new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(segment2.startTimeUs, segment2.dataSpec.subrange(0L, j != -1 ? segment2.dataSpec.length + j : -1L)));
            }
        }
        com.google.android.exoplayer2.util.Util.removeRange(list, i, list.size());
    }

    private void removeActiveRunnable(int i) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(i);
        }
    }

    private void removeActiveRunnable(com.google.android.exoplayer2.util.RunnableFutureTask<?, ?> runnableFutureTask) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(runnableFutureTask);
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        synchronized (this.activeRunnables) {
            this.isCanceled = true;
            for (int i = 0; i < this.activeRunnables.size(); i++) {
                this.activeRunnables.get(i).cancel(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x01a9 A[LOOP:1: B:84:0x01a1->B:86:0x01a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01c2 A[LOOP:2: B:88:0x01c0->B:89:0x01c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d7  */
    @Override // com.google.android.exoplayer2.offline.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void download(com.google.android.exoplayer2.offline.Downloader.ProgressListener r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.SegmentDownloader.download(com.google.android.exoplayer2.offline.Downloader$ProgressListener):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:23|38|24|(2:27|(2:29|46)(3:45|31|32))(2:26|47)|30) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        r0 = (java.lang.Throwable) com.google.android.exoplayer2.util.Assertions.checkNotNull(r4.getCause());
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
    
        if ((r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r0 instanceof java.io.IOException) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        com.google.android.exoplayer2.util.Util.sneakyThrow(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
    
        throw ((java.io.IOException) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
    
        r3.blockUntilFinished();
        removeActiveRunnable((com.google.android.exoplayer2.util.RunnableFutureTask<?, ?>) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        throw r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T execute(com.google.android.exoplayer2.util.RunnableFutureTask<T, ?> r3, boolean r4) throws java.lang.Throwable {
        /*
            r2 = this;
            if (r4 == 0) goto L20
            r3.run()
            java.lang.Object r3 = r3.get()     // Catch: java.util.concurrent.ExecutionException -> La
            return r3
        La:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()
            java.lang.Object r0 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r0)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 != 0) goto L1d
            com.google.android.exoplayer2.util.Util.sneakyThrow(r4)
            goto L20
        L1d:
            java.io.IOException r0 = (java.io.IOException) r0
            throw r0
        L20:
            boolean r4 = r2.isCanceled
            if (r4 != 0) goto L6a
            com.google.android.exoplayer2.util.PriorityTaskManager r4 = r2.priorityTaskManager
            if (r4 == 0) goto L2d
            r0 = -1000(0xfffffffffffffc18, float:NaN)
            r4.proceed(r0)
        L2d:
            r2.addActiveRunnable(r3)
            java.util.concurrent.Executor r4 = r2.executor
            r4.execute(r3)
            java.lang.Object r4 = r3.get()     // Catch: java.lang.Throwable -> L40 java.util.concurrent.ExecutionException -> L42
            r3.blockUntilFinished()
            r2.removeActiveRunnable(r3)
            return r4
        L40:
            r4 = move-exception
            goto L63
        L42:
            r4 = move-exception
            java.lang.Throwable r0 = r4.getCause()     // Catch: java.lang.Throwable -> L40
            java.lang.Object r0 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r0)     // Catch: java.lang.Throwable -> L40
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L40
            boolean r1 = r0 instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L52
            goto L59
        L52:
            boolean r1 = r0 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L60
            com.google.android.exoplayer2.util.Util.sneakyThrow(r4)     // Catch: java.lang.Throwable -> L40
        L59:
            r3.blockUntilFinished()
            r2.removeActiveRunnable(r3)
            goto L20
        L60:
            java.io.IOException r0 = (java.io.IOException) r0     // Catch: java.lang.Throwable -> L40
            throw r0     // Catch: java.lang.Throwable -> L40
        L63:
            r3.blockUntilFinished()
            r2.removeActiveRunnable(r3)
            throw r4
        L6a:
            java.lang.InterruptedException r3 = new java.lang.InterruptedException
            r3.<init>()
            goto L71
        L70:
            throw r3
        L71:
            goto L70
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.SegmentDownloader.execute(com.google.android.exoplayer2.util.RunnableFutureTask, boolean):java.lang.Object");
    }

    public final M getManifest(final com.google.android.exoplayer2.upstream.DataSource dataSource, final com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
        return (M) execute(new com.google.android.exoplayer2.util.RunnableFutureTask<M, java.io.IOException>() { // from class: com.google.android.exoplayer2.offline.SegmentDownloader.1
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public M doWork() {
                return (M) com.google.android.exoplayer2.upstream.ParsingLoadable.load(dataSource, com.google.android.exoplayer2.offline.SegmentDownloader.this.manifestParser, dataSpec, 4);
            }
        }, z);
    }

    public abstract java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> getSegments(com.google.android.exoplayer2.upstream.DataSource dataSource, M m, boolean z);

    @Override // com.google.android.exoplayer2.offline.Downloader
    public final void remove() {
        com.google.android.exoplayer2.upstream.cache.CacheDataSource cacheDataSourceCreateDataSourceForRemovingDownload = this.cacheDataSourceFactory.createDataSourceForRemovingDownload();
        try {
            try {
                java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> segments = getSegments(cacheDataSourceCreateDataSourceForRemovingDownload, getManifest(cacheDataSourceCreateDataSourceForRemovingDownload, this.manifestDataSpec, true), true);
                for (int i = 0; i < segments.size(); i++) {
                    this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(segments.get(i).dataSpec));
                }
            } catch (java.lang.InterruptedException unused) {
                java.lang.Thread.currentThread().interrupt();
            } catch (java.lang.Exception unused2) {
            }
        } finally {
            this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
        }
    }
}
