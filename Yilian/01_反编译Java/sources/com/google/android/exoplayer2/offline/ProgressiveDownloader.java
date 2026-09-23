package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class ProgressiveDownloader implements com.google.android.exoplayer2.offline.Downloader {
    public final com.google.android.exoplayer2.upstream.cache.CacheWriter cacheWriter;
    public final com.google.android.exoplayer2.upstream.cache.CacheDataSource dataSource;
    public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public volatile com.google.android.exoplayer2.util.RunnableFutureTask<java.lang.Void, java.io.IOException> downloadRunnable;
    public final java.util.concurrent.Executor executor;
    public volatile boolean isCanceled;
    public final com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager;
    public com.google.android.exoplayer2.offline.Downloader.ProgressListener progressListener;

    public ProgressiveDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory) {
        this(mediaItem, factory, e.c.a.a.l2.n.a);
    }

    public ProgressiveDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        this.executor = (java.util.concurrent.Executor) com.google.android.exoplayer2.util.Assertions.checkNotNull(executor);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.dataSpec = new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(mediaItem.localConfiguration.uri).setKey(mediaItem.localConfiguration.customCacheKey).setFlags(4).build();
        this.dataSource = factory.createDataSourceForDownloading();
        this.cacheWriter = new com.google.android.exoplayer2.upstream.cache.CacheWriter(this.dataSource, this.dataSpec, null, new com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener() { // from class: e.c.a.a.l2.m
            @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
            public final void onProgress(long j, long j2, long j3) {
                this.a.onProgress(j, j2, j3);
            }
        });
        this.priorityTaskManager = factory.getUpstreamPriorityTaskManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgress(long j, long j2, long j3) {
        if (this.progressListener == null) {
            return;
        }
        this.progressListener.onProgress(j, j2, (j == -1 || j == 0) ? -1.0f : (j2 * 100.0f) / j);
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        this.isCanceled = true;
        com.google.android.exoplayer2.util.RunnableFutureTask<java.lang.Void, java.io.IOException> runnableFutureTask = this.downloadRunnable;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void download(com.google.android.exoplayer2.offline.Downloader.ProgressListener progressListener) {
        this.progressListener = progressListener;
        this.downloadRunnable = new com.google.android.exoplayer2.util.RunnableFutureTask<java.lang.Void, java.io.IOException>() { // from class: com.google.android.exoplayer2.offline.ProgressiveDownloader.1
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public void cancelWork() {
                com.google.android.exoplayer2.offline.ProgressiveDownloader.this.cacheWriter.cancel();
            }

            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public java.lang.Void doWork() throws java.io.IOException {
                com.google.android.exoplayer2.offline.ProgressiveDownloader.this.cacheWriter.cache();
                return null;
            }
        };
        com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            priorityTaskManager.add(-1000);
        }
        boolean z = false;
        while (!z) {
            try {
                if (this.isCanceled) {
                    break;
                }
                if (this.priorityTaskManager != null) {
                    this.priorityTaskManager.proceed(-1000);
                }
                this.executor.execute(this.downloadRunnable);
                try {
                    this.downloadRunnable.get();
                    z = true;
                } catch (java.util.concurrent.ExecutionException e2) {
                    java.lang.Throwable th = (java.lang.Throwable) com.google.android.exoplayer2.util.Assertions.checkNotNull(e2.getCause());
                    if (!(th instanceof com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException)) {
                        if (th instanceof java.io.IOException) {
                            throw ((java.io.IOException) th);
                        }
                        com.google.android.exoplayer2.util.Util.sneakyThrow(th);
                    }
                }
            } finally {
                this.downloadRunnable.blockUntilFinished();
                com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager2 = this.priorityTaskManager;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.remove(-1000);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void remove() {
        this.dataSource.getCache().removeResource(this.dataSource.getCacheKeyFactory().buildCacheKey(this.dataSpec));
    }
}
