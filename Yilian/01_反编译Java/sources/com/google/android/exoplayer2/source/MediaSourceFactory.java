package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public interface MediaSourceFactory {
    public static final com.google.android.exoplayer2.source.MediaSourceFactory UNSUPPORTED = new com.google.android.exoplayer2.source.MediaSourceFactory() { // from class: com.google.android.exoplayer2.source.MediaSourceFactory.1
        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public /* synthetic */ com.google.android.exoplayer2.source.MediaSource createMediaSource(android.net.Uri uri) {
            return createMediaSource(com.google.android.exoplayer2.MediaItem.fromUri(uri));
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.MediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.MediaSourceFactory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.MediaSourceFactory setDrmSessionManager(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.MediaSourceFactory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.MediaSourceFactory setDrmUserAgent(java.lang.String str) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.MediaSourceFactory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            return e.c.a.a.n2.c0.$default$setStreamKeys(this, list);
        }
    };

    @java.lang.Deprecated
    com.google.android.exoplayer2.source.MediaSource createMediaSource(android.net.Uri uri);

    com.google.android.exoplayer2.source.MediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem);

    int[] getSupportedTypes();

    @java.lang.Deprecated
    com.google.android.exoplayer2.source.MediaSourceFactory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory);

    @java.lang.Deprecated
    com.google.android.exoplayer2.source.MediaSourceFactory setDrmSessionManager(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager);

    com.google.android.exoplayer2.source.MediaSourceFactory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider);

    @java.lang.Deprecated
    com.google.android.exoplayer2.source.MediaSourceFactory setDrmUserAgent(java.lang.String str);

    com.google.android.exoplayer2.source.MediaSourceFactory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy);

    @java.lang.Deprecated
    com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list);
}
