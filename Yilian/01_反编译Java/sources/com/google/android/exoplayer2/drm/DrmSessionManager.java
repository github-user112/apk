package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public interface DrmSessionManager {
    public static final com.google.android.exoplayer2.drm.DrmSessionManager DRM_UNSUPPORTED;

    @java.lang.Deprecated
    public static final com.google.android.exoplayer2.drm.DrmSessionManager DUMMY;

    public interface DrmSessionReference {
        public static final com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference EMPTY = new com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference() { // from class: e.c.a.a.h2.m
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference
            public final void release() {
                e.c.a.a.h2.w.a();
            }
        };

        void release();
    }

    static {
        com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager = new com.google.android.exoplayer2.drm.DrmSessionManager() { // from class: com.google.android.exoplayer2.drm.DrmSessionManager.1
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public com.google.android.exoplayer2.drm.DrmSession acquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new com.google.android.exoplayer2.drm.ErrorStateDrmSession(new com.google.android.exoplayer2.drm.DrmSession.DrmSessionException(new com.google.android.exoplayer2.drm.UnsupportedDrmException(1), com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED));
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public int getCryptoType(com.google.android.exoplayer2.Format format) {
                return format.drmInitData != null ? 1 : 0;
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference preacquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format) {
                return com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference.EMPTY;
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ void prepare() {
                e.c.a.a.h2.v.$default$prepare(this);
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public /* synthetic */ void release() {
                e.c.a.a.h2.v.$default$release(this);
            }
        };
        DRM_UNSUPPORTED = drmSessionManager;
        DUMMY = drmSessionManager;
    }

    com.google.android.exoplayer2.drm.DrmSession acquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format);

    int getCryptoType(com.google.android.exoplayer2.Format format);

    com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference preacquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format);

    void prepare();

    void release();
}
