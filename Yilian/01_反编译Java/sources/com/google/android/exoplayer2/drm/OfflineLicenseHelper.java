package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class OfflineLicenseHelper {
    public static final com.google.android.exoplayer2.Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new com.google.android.exoplayer2.Format.Builder().setDrmInitData(new com.google.android.exoplayer2.drm.DrmInitData(new com.google.android.exoplayer2.drm.DrmInitData.SchemeData[0])).build();
    public final android.os.ConditionVariable conditionVariable;
    public final com.google.android.exoplayer2.drm.DefaultDrmSessionManager drmSessionManager;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher;
    public final android.os.HandlerThread handlerThread;

    public OfflineLicenseHelper(com.google.android.exoplayer2.drm.DefaultDrmSessionManager defaultDrmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.conditionVariable = new android.os.ConditionVariable();
        eventDispatcher.addEventListener(new android.os.Handler(this.handlerThread.getLooper()), new com.google.android.exoplayer2.drm.DrmSessionEventListener() { // from class: com.google.android.exoplayer2.drm.OfflineLicenseHelper.1
            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public void onDrmKeysLoaded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
                com.google.android.exoplayer2.drm.OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public void onDrmKeysRemoved(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
                com.google.android.exoplayer2.drm.OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public void onDrmKeysRestored(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
                com.google.android.exoplayer2.drm.OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            @java.lang.Deprecated
            public /* synthetic */ void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
                e.c.a.a.h2.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public /* synthetic */ void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, int i2) {
                e.c.a.a.h2.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId, i2);
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public void onDrmSessionManagerError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.lang.Exception exc) {
                com.google.android.exoplayer2.drm.OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
            public /* synthetic */ void onDrmSessionReleased(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
                e.c.a.a.h2.u.$default$onDrmSessionReleased(this, i, mediaPeriodId);
            }
        });
    }

    @java.lang.Deprecated
    public OfflineLicenseHelper(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.Provider provider, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, java.util.Map<java.lang.String, java.lang.String> map, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this(new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder().setUuidAndExoMediaDrmProvider(uuid, provider).setKeyRequestParameters(map).build(mediaDrmCallback), eventDispatcher);
    }

    private byte[] blockingKeyRequest(int i, byte[] bArr, com.google.android.exoplayer2.Format format) throws com.google.android.exoplayer2.drm.DrmSession.DrmSessionException {
        this.drmSessionManager.prepare();
        com.google.android.exoplayer2.drm.DrmSession drmSessionOpenBlockingKeyRequest = openBlockingKeyRequest(i, bArr, format);
        com.google.android.exoplayer2.drm.DrmSession.DrmSessionException error = drmSessionOpenBlockingKeyRequest.getError();
        byte[] offlineLicenseKeySetId = drmSessionOpenBlockingKeyRequest.getOfflineLicenseKeySetId();
        drmSessionOpenBlockingKeyRequest.release(this.eventDispatcher);
        this.drmSessionManager.release();
        if (error == null) {
            return (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(offlineLicenseKeySetId);
        }
        throw error;
    }

    public static com.google.android.exoplayer2.drm.OfflineLicenseHelper newWidevineInstance(java.lang.String str, com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    public static com.google.android.exoplayer2.drm.OfflineLicenseHelper newWidevineInstance(java.lang.String str, boolean z, com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, factory, null, eventDispatcher);
    }

    public static com.google.android.exoplayer2.drm.OfflineLicenseHelper newWidevineInstance(java.lang.String str, boolean z, com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory, java.util.Map<java.lang.String, java.lang.String> map, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new com.google.android.exoplayer2.drm.OfflineLicenseHelper(new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder().setKeyRequestParameters(map).build(new com.google.android.exoplayer2.drm.HttpMediaDrmCallback(str, z, factory)), eventDispatcher);
    }

    private com.google.android.exoplayer2.drm.DrmSession openBlockingKeyRequest(int i, byte[] bArr, com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(format.drmInitData);
        this.drmSessionManager.setMode(i, bArr);
        this.conditionVariable.close();
        com.google.android.exoplayer2.drm.DrmSession drmSessionAcquireSession = this.drmSessionManager.acquireSession(this.handlerThread.getLooper(), this.eventDispatcher, format);
        this.conditionVariable.block();
        return (com.google.android.exoplayer2.drm.DrmSession) com.google.android.exoplayer2.util.Assertions.checkNotNull(drmSessionAcquireSession);
    }

    public synchronized byte[] downloadLicense(com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(format.drmInitData != null);
        return blockingKeyRequest(2, null, format);
    }

    public synchronized android.util.Pair<java.lang.Long, java.lang.Long> getLicenseDurationRemainingSec(byte[] bArr) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        this.drmSessionManager.prepare();
        com.google.android.exoplayer2.drm.DrmSession drmSessionOpenBlockingKeyRequest = openBlockingKeyRequest(1, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
        com.google.android.exoplayer2.drm.DrmSession.DrmSessionException error = drmSessionOpenBlockingKeyRequest.getError();
        android.util.Pair<java.lang.Long, java.lang.Long> licenseDurationRemainingSec = com.google.android.exoplayer2.drm.WidevineUtil.getLicenseDurationRemainingSec(drmSessionOpenBlockingKeyRequest);
        drmSessionOpenBlockingKeyRequest.release(this.eventDispatcher);
        this.drmSessionManager.release();
        if (error == null) {
            return (android.util.Pair) com.google.android.exoplayer2.util.Assertions.checkNotNull(licenseDurationRemainingSec);
        }
        if (!(error.getCause() instanceof com.google.android.exoplayer2.drm.KeysExpiredException)) {
            throw error;
        }
        return android.util.Pair.create(0L, 0L);
    }

    public void release() {
        this.handlerThread.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        blockingKeyRequest(3, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public synchronized byte[] renewLicense(byte[] bArr) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        return blockingKeyRequest(2, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }
}
