package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public class PlaybackException extends java.lang.Exception implements com.google.android.exoplayer2.Bundleable {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.PlaybackException> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.u1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return new com.google.android.exoplayer2.PlaybackException(bundle);
        }
    };
    public static final int CUSTOM_ERROR_CODE_BASE = 1000000;
    public static final int ERROR_CODE_AUDIO_TRACK_INIT_FAILED = 5001;
    public static final int ERROR_CODE_AUDIO_TRACK_WRITE_FAILED = 5002;
    public static final int ERROR_CODE_BEHIND_LIVE_WINDOW = 1002;
    public static final int ERROR_CODE_DECODER_INIT_FAILED = 4001;
    public static final int ERROR_CODE_DECODER_QUERY_FAILED = 4002;
    public static final int ERROR_CODE_DECODING_FAILED = 4003;
    public static final int ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES = 4004;
    public static final int ERROR_CODE_DECODING_FORMAT_UNSUPPORTED = 4005;
    public static final int ERROR_CODE_DRM_CONTENT_ERROR = 6003;
    public static final int ERROR_CODE_DRM_DEVICE_REVOKED = 6007;
    public static final int ERROR_CODE_DRM_DISALLOWED_OPERATION = 6005;
    public static final int ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED = 6004;
    public static final int ERROR_CODE_DRM_LICENSE_EXPIRED = 6008;
    public static final int ERROR_CODE_DRM_PROVISIONING_FAILED = 6002;
    public static final int ERROR_CODE_DRM_SCHEME_UNSUPPORTED = 6001;
    public static final int ERROR_CODE_DRM_SYSTEM_ERROR = 6006;
    public static final int ERROR_CODE_DRM_UNSPECIFIED = 6000;
    public static final int ERROR_CODE_FAILED_RUNTIME_CHECK = 1004;
    public static final int ERROR_CODE_IO_BAD_HTTP_STATUS = 2004;
    public static final int ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED = 2007;
    public static final int ERROR_CODE_IO_FILE_NOT_FOUND = 2005;
    public static final int ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE = 2003;
    public static final int ERROR_CODE_IO_NETWORK_CONNECTION_FAILED = 2001;
    public static final int ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT = 2002;
    public static final int ERROR_CODE_IO_NO_PERMISSION = 2006;
    public static final int ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE = 2008;
    public static final int ERROR_CODE_IO_UNSPECIFIED = 2000;
    public static final int ERROR_CODE_PARSING_CONTAINER_MALFORMED = 3001;
    public static final int ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED = 3003;
    public static final int ERROR_CODE_PARSING_MANIFEST_MALFORMED = 3002;
    public static final int ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED = 3004;
    public static final int ERROR_CODE_REMOTE_ERROR = 1001;
    public static final int ERROR_CODE_TIMEOUT = 1003;
    public static final int ERROR_CODE_UNSPECIFIED = 1000;
    public static final int FIELD_CUSTOM_ID_BASE = 1000;
    public static final int FIELD_INT_ERROR_CODE = 0;
    public static final int FIELD_LONG_TIMESTAMP_MS = 1;
    public static final int FIELD_STRING_CAUSE_CLASS_NAME = 3;
    public static final int FIELD_STRING_CAUSE_MESSAGE = 4;
    public static final int FIELD_STRING_MESSAGE = 2;
    public final int errorCode;
    public final long timestampMs;

    @java.lang.annotation.Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.PARAMETER, java.lang.annotation.ElementType.LOCAL_VARIABLE, java.lang.annotation.ElementType.TYPE_USE})
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface ErrorCode {
    }

    public PlaybackException(android.os.Bundle bundle) {
        this(bundle.getString(keyForField(2)), getCauseFromBundle(bundle), bundle.getInt(keyForField(0), 1000), bundle.getLong(keyForField(1), android.os.SystemClock.elapsedRealtime()));
    }

    public PlaybackException(java.lang.String str, java.lang.Throwable th, int i) {
        this(str, th, i, com.google.android.exoplayer2.util.Clock.DEFAULT.elapsedRealtime());
    }

    public PlaybackException(java.lang.String str, java.lang.Throwable th, int i, long j) {
        super(str, th);
        this.errorCode = i;
        this.timestampMs = j;
    }

    public static android.os.RemoteException createRemoteException(java.lang.String str) {
        return new android.os.RemoteException(str);
    }

    public static java.lang.Throwable createThrowable(java.lang.Class<?> cls, java.lang.String str) {
        return (java.lang.Throwable) cls.getConstructor(java.lang.String.class).newInstance(str);
    }

    public static java.lang.Throwable getCauseFromBundle(android.os.Bundle bundle) {
        java.lang.String string = bundle.getString(keyForField(3));
        java.lang.String string2 = bundle.getString(keyForField(4));
        if (android.text.TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName(string, true, com.google.android.exoplayer2.PlaybackException.class.getClassLoader());
            java.lang.Throwable thCreateThrowable = java.lang.Throwable.class.isAssignableFrom(cls) ? createThrowable(cls, string2) : null;
            if (thCreateThrowable != null) {
                return thCreateThrowable;
            }
        } catch (java.lang.Throwable unused) {
        }
        return createRemoteException(string2);
    }

    public static java.lang.String getErrorCodeName(int i) {
        if (i == 5001) {
            return "ERROR_CODE_AUDIO_TRACK_INIT_FAILED";
        }
        if (i == 5002) {
            return "ERROR_CODE_AUDIO_TRACK_WRITE_FAILED";
        }
        switch (i) {
            case 1000:
                return "ERROR_CODE_UNSPECIFIED";
            case 1001:
                return "ERROR_CODE_REMOTE_ERROR";
            case 1002:
                return "ERROR_CODE_BEHIND_LIVE_WINDOW";
            case 1003:
                return "ERROR_CODE_TIMEOUT";
            case 1004:
                return "ERROR_CODE_FAILED_RUNTIME_CHECK";
            default:
                switch (i) {
                    case 2000:
                        return "ERROR_CODE_IO_UNSPECIFIED";
                    case 2001:
                        return "ERROR_CODE_IO_NETWORK_CONNECTION_FAILED";
                    case 2002:
                        return "ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT";
                    case ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE /* 2003 */:
                        return "ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE";
                    case ERROR_CODE_IO_BAD_HTTP_STATUS /* 2004 */:
                        return "ERROR_CODE_IO_BAD_HTTP_STATUS";
                    case ERROR_CODE_IO_FILE_NOT_FOUND /* 2005 */:
                        return "ERROR_CODE_IO_FILE_NOT_FOUND";
                    case ERROR_CODE_IO_NO_PERMISSION /* 2006 */:
                        return "ERROR_CODE_IO_NO_PERMISSION";
                    case ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED /* 2007 */:
                        return "ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED";
                    case 2008:
                        return "ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE";
                    default:
                        switch (i) {
                            case ERROR_CODE_PARSING_CONTAINER_MALFORMED /* 3001 */:
                                return "ERROR_CODE_PARSING_CONTAINER_MALFORMED";
                            case ERROR_CODE_PARSING_MANIFEST_MALFORMED /* 3002 */:
                                return "ERROR_CODE_PARSING_MANIFEST_MALFORMED";
                            case ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED /* 3003 */:
                                return "ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED";
                            case ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED /* 3004 */:
                                return "ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED";
                            default:
                                switch (i) {
                                    case 4001:
                                        return "ERROR_CODE_DECODER_INIT_FAILED";
                                    case 4002:
                                        return "ERROR_CODE_DECODER_QUERY_FAILED";
                                    case ERROR_CODE_DECODING_FAILED /* 4003 */:
                                        return "ERROR_CODE_DECODING_FAILED";
                                    case ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES /* 4004 */:
                                        return "ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES";
                                    case ERROR_CODE_DECODING_FORMAT_UNSUPPORTED /* 4005 */:
                                        return "ERROR_CODE_DECODING_FORMAT_UNSUPPORTED";
                                    default:
                                        switch (i) {
                                            case ERROR_CODE_DRM_UNSPECIFIED /* 6000 */:
                                                return "ERROR_CODE_DRM_UNSPECIFIED";
                                            case ERROR_CODE_DRM_SCHEME_UNSUPPORTED /* 6001 */:
                                                return "ERROR_CODE_DRM_SCHEME_UNSUPPORTED";
                                            case ERROR_CODE_DRM_PROVISIONING_FAILED /* 6002 */:
                                                return "ERROR_CODE_DRM_PROVISIONING_FAILED";
                                            case ERROR_CODE_DRM_CONTENT_ERROR /* 6003 */:
                                                return "ERROR_CODE_DRM_CONTENT_ERROR";
                                            case ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED /* 6004 */:
                                                return "ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED";
                                            case ERROR_CODE_DRM_DISALLOWED_OPERATION /* 6005 */:
                                                return "ERROR_CODE_DRM_DISALLOWED_OPERATION";
                                            case ERROR_CODE_DRM_SYSTEM_ERROR /* 6006 */:
                                                return "ERROR_CODE_DRM_SYSTEM_ERROR";
                                            case ERROR_CODE_DRM_DEVICE_REVOKED /* 6007 */:
                                                return "ERROR_CODE_DRM_DEVICE_REVOKED";
                                            case ERROR_CODE_DRM_LICENSE_EXPIRED /* 6008 */:
                                                return "ERROR_CODE_DRM_LICENSE_EXPIRED";
                                            default:
                                                return i >= 1000000 ? "custom error code" : "invalid error code";
                                        }
                                }
                        }
                }
        }
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (r3 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean errorInfoEquals(com.google.android.exoplayer2.PlaybackException r7) {
        /*
            r6 = this;
            r0 = 1
            if (r6 != r7) goto L4
            return r0
        L4:
            r1 = 0
            if (r7 == 0) goto L60
            java.lang.Class r2 = r6.getClass()
            java.lang.Class r3 = r7.getClass()
            if (r2 == r3) goto L12
            goto L60
        L12:
            java.lang.Throwable r2 = r6.getCause()
            java.lang.Throwable r3 = r7.getCause()
            if (r2 == 0) goto L3c
            if (r3 == 0) goto L3c
            java.lang.String r4 = r2.getMessage()
            java.lang.String r5 = r3.getMessage()
            boolean r4 = com.google.android.exoplayer2.util.Util.areEqual(r4, r5)
            if (r4 != 0) goto L2d
            return r1
        L2d:
            java.lang.Class r2 = r2.getClass()
            java.lang.Class r3 = r3.getClass()
            boolean r2 = com.google.android.exoplayer2.util.Util.areEqual(r2, r3)
            if (r2 != 0) goto L41
            return r1
        L3c:
            if (r2 != 0) goto L60
            if (r3 == 0) goto L41
            goto L60
        L41:
            int r2 = r6.errorCode
            int r3 = r7.errorCode
            if (r2 != r3) goto L5e
            java.lang.String r2 = r6.getMessage()
            java.lang.String r3 = r7.getMessage()
            boolean r2 = com.google.android.exoplayer2.util.Util.areEqual(r2, r3)
            if (r2 == 0) goto L5e
            long r2 = r6.timestampMs
            long r4 = r7.timestampMs
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 != 0) goto L5e
            goto L5f
        L5e:
            r0 = 0
        L5f:
            return r0
        L60:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.PlaybackException.errorInfoEquals(com.google.android.exoplayer2.PlaybackException):boolean");
    }

    public final java.lang.String getErrorCodeName() {
        return getErrorCodeName(this.errorCode);
    }

    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), this.errorCode);
        bundle.putLong(keyForField(1), this.timestampMs);
        bundle.putString(keyForField(2), getMessage());
        java.lang.Throwable cause = getCause();
        if (cause != null) {
            bundle.putString(keyForField(3), cause.getClass().getName());
            bundle.putString(keyForField(4), cause.getMessage());
        }
        return bundle;
    }
}
