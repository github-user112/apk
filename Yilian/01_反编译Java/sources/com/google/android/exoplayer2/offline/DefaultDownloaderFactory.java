package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public class DefaultDownloaderFactory implements com.google.android.exoplayer2.offline.DownloaderFactory {
    public static final android.util.SparseArray<java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader>> CONSTRUCTORS = createDownloaderConstructors();
    public final com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory cacheDataSourceFactory;
    public final java.util.concurrent.Executor executor;

    @java.lang.Deprecated
    public DefaultDownloaderFactory(com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory) {
        this(factory, e.c.a.a.l2.n.a);
    }

    public DefaultDownloaderFactory(com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        this.cacheDataSourceFactory = (com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory) com.google.android.exoplayer2.util.Assertions.checkNotNull(factory);
        this.executor = (java.util.concurrent.Executor) com.google.android.exoplayer2.util.Assertions.checkNotNull(executor);
    }

    private com.google.android.exoplayer2.offline.Downloader createDownloader(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i) {
        java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader> constructor = CONSTRUCTORS.get(i);
        if (constructor == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.F(43, "Module missing for content type ", i));
        }
        try {
            return constructor.newInstance(new com.google.android.exoplayer2.MediaItem.Builder().setUri(downloadRequest.uri).setStreamKeys(downloadRequest.streamKeys).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.cacheDataSourceFactory, this.executor);
        } catch (java.lang.Exception unused) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.F(61, "Failed to instantiate downloader for content type ", i));
        }
    }

    public static android.util.SparseArray<java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader>> createDownloaderConstructors() {
        android.util.SparseArray<java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader>> sparseArray = new android.util.SparseArray<>();
        try {
            sparseArray.put(0, getDownloaderConstructor(java.lang.Class.forName("com.google.android.exoplayer2.source.dash.offline.DashDownloader")));
        } catch (java.lang.ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, getDownloaderConstructor(java.lang.Class.forName("com.google.android.exoplayer2.source.hls.offline.HlsDownloader")));
        } catch (java.lang.ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, getDownloaderConstructor(java.lang.Class.forName("com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader")));
        } catch (java.lang.ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    public static java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.offline.Downloader> getDownloaderConstructor(java.lang.Class<?> cls) {
        try {
            return cls.asSubclass(com.google.android.exoplayer2.offline.Downloader.class).getConstructor(com.google.android.exoplayer2.MediaItem.class, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory.class, java.util.concurrent.Executor.class);
        } catch (java.lang.NoSuchMethodException e2) {
            throw new java.lang.IllegalStateException("Downloader constructor missing", e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.DownloaderFactory
    public com.google.android.exoplayer2.offline.Downloader createDownloader(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest) {
        int iInferContentTypeForUriAndMimeType = com.google.android.exoplayer2.util.Util.inferContentTypeForUriAndMimeType(downloadRequest.uri, downloadRequest.mimeType);
        if (iInferContentTypeForUriAndMimeType == 0 || iInferContentTypeForUriAndMimeType == 1 || iInferContentTypeForUriAndMimeType == 2) {
            return createDownloader(downloadRequest, iInferContentTypeForUriAndMimeType);
        }
        if (iInferContentTypeForUriAndMimeType == 4) {
            return new com.google.android.exoplayer2.offline.ProgressiveDownloader(new com.google.android.exoplayer2.MediaItem.Builder().setUri(downloadRequest.uri).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.cacheDataSourceFactory, this.executor);
        }
        throw new java.lang.IllegalArgumentException(e.a.c.a.a.F(29, "Unsupported type: ", iInferContentTypeForUriAndMimeType));
    }
}
