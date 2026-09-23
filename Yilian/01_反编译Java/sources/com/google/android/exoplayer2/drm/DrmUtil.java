package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;

    public static final class Api18 {
        public static boolean isDeniedByServerException(java.lang.Throwable th) {
            return th instanceof android.media.DeniedByServerException;
        }

        public static boolean isNotProvisionedException(java.lang.Throwable th) {
            return th instanceof android.media.NotProvisionedException;
        }
    }

    public static final class Api21 {
        public static boolean isMediaDrmStateException(java.lang.Throwable th) {
            return th instanceof android.media.MediaDrm.MediaDrmStateException;
        }

        public static int mediaDrmStateExceptionToErrorCode(java.lang.Throwable th) {
            return com.google.android.exoplayer2.util.Util.getErrorCodeForMediaDrmErrorCode(com.google.android.exoplayer2.util.Util.getErrorCodeFromPlatformDiagnosticsInfo(((android.media.MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    public static final class Api23 {
        public static boolean isMediaDrmResetException(java.lang.Throwable th) {
            return th instanceof android.media.MediaDrmResetException;
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    public static int getErrorCodeForMediaDrmException(java.lang.Exception exc, int i) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && com.google.android.exoplayer2.drm.DrmUtil.Api21.isMediaDrmStateException(exc)) {
            return com.google.android.exoplayer2.drm.DrmUtil.Api21.mediaDrmStateExceptionToErrorCode(exc);
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23 && com.google.android.exoplayer2.drm.DrmUtil.Api23.isMediaDrmResetException(exc)) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 18 && com.google.android.exoplayer2.drm.DrmUtil.Api18.isNotProvisionedException(exc)) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 18 && com.google.android.exoplayer2.drm.DrmUtil.Api18.isDeniedByServerException(exc)) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED;
        }
        if (exc instanceof com.google.android.exoplayer2.drm.UnsupportedDrmException) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED;
        }
        if (exc instanceof com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MissingSchemeDataException) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        if (exc instanceof com.google.android.exoplayer2.drm.KeysExpiredException) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED;
        }
        if (i == 1) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if (i == 2) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i == 3) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        throw new java.lang.IllegalArgumentException();
    }
}
