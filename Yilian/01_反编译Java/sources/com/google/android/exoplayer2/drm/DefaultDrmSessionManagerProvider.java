package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class DefaultDrmSessionManagerProvider implements com.google.android.exoplayer2.drm.DrmSessionManagerProvider {
    public com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration;
    public com.google.android.exoplayer2.upstream.HttpDataSource.Factory drmHttpDataSourceFactory;
    public final java.lang.Object lock = new java.lang.Object();
    public com.google.android.exoplayer2.drm.DrmSessionManager manager;
    public java.lang.String userAgent;

    private com.google.android.exoplayer2.drm.DrmSessionManager createManager(com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration) {
        com.google.android.exoplayer2.upstream.HttpDataSource.Factory userAgent = this.drmHttpDataSourceFactory;
        if (userAgent == null) {
            userAgent = new com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory().setUserAgent(this.userAgent);
        }
        android.net.Uri uri = drmConfiguration.licenseUri;
        com.google.android.exoplayer2.drm.HttpMediaDrmCallback httpMediaDrmCallback = new com.google.android.exoplayer2.drm.HttpMediaDrmCallback(uri == null ? null : uri.toString(), drmConfiguration.forceDefaultLicenseUri, userAgent);
        e.c.b.b.w0<java.util.Map.Entry<java.lang.String, java.lang.String>> it = drmConfiguration.licenseRequestHeaders.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry<java.lang.String, java.lang.String> next = it.next();
            httpMediaDrmCallback.setKeyRequestProperty(next.getKey(), next.getValue());
        }
        com.google.android.exoplayer2.drm.DefaultDrmSessionManager defaultDrmSessionManagerBuild = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder().setUuidAndExoMediaDrmProvider(drmConfiguration.scheme, com.google.android.exoplayer2.drm.FrameworkMediaDrm.DEFAULT_PROVIDER).setMultiSession(drmConfiguration.multiSession).setPlayClearSamplesWithoutKeys(drmConfiguration.playClearContentWithoutKey).setUseDrmSessionsForClearContent(d.s.y.a0(drmConfiguration.forcedSessionTrackTypes)).build(httpMediaDrmCallback);
        defaultDrmSessionManagerBuild.setMode(0, drmConfiguration.getKeySetId());
        return defaultDrmSessionManagerBuild;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
    public com.google.android.exoplayer2.drm.DrmSessionManager get(com.google.android.exoplayer2.MediaItem mediaItem) {
        com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration = mediaItem.localConfiguration.drmConfiguration;
        if (drmConfiguration == null || com.google.android.exoplayer2.util.Util.SDK_INT < 18) {
            return com.google.android.exoplayer2.drm.DrmSessionManager.DRM_UNSUPPORTED;
        }
        synchronized (this.lock) {
            if (!com.google.android.exoplayer2.util.Util.areEqual(drmConfiguration, this.drmConfiguration)) {
                this.drmConfiguration = drmConfiguration;
                this.manager = createManager(drmConfiguration);
            }
            drmSessionManager = (com.google.android.exoplayer2.drm.DrmSessionManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.manager);
        }
        return drmSessionManager;
    }

    public void setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
        this.drmHttpDataSourceFactory = factory;
    }

    public void setDrmUserAgent(java.lang.String str) {
        this.userAgent = str;
    }
}
