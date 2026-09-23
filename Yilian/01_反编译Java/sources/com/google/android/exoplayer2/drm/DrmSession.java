package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public interface DrmSession {
    public static final int STATE_ERROR = 1;
    public static final int STATE_OPENED = 3;
    public static final int STATE_OPENED_WITH_KEYS = 4;
    public static final int STATE_OPENING = 2;
    public static final int STATE_RELEASED = 0;

    public static class DrmSessionException extends java.io.IOException {
        public final int errorCode;

        public DrmSessionException(java.lang.Throwable th, int i) {
            super(th);
            this.errorCode = i;
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface State {
    }

    void acquire(com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher);

    com.google.android.exoplayer2.decoder.CryptoConfig getCryptoConfig();

    com.google.android.exoplayer2.drm.DrmSession.DrmSessionException getError();

    byte[] getOfflineLicenseKeySetId();

    java.util.UUID getSchemeUuid();

    int getState();

    boolean playClearSamplesWithoutKeys();

    java.util.Map<java.lang.String, java.lang.String> queryKeyStatus();

    void release(com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher);

    boolean requiresSecureDecoder(java.lang.String str);
}
