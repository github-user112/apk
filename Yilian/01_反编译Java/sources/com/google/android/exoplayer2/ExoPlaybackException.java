package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class ExoPlaybackException extends com.google.android.exoplayer2.PlaybackException {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.ExoPlaybackException> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.w1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return new com.google.android.exoplayer2.ExoPlaybackException(bundle);
        }
    };
    public static final int FIELD_IS_RECOVERABLE = 1006;
    public static final int FIELD_RENDERER_FORMAT = 1004;
    public static final int FIELD_RENDERER_FORMAT_SUPPORT = 1005;
    public static final int FIELD_RENDERER_INDEX = 1003;
    public static final int FIELD_RENDERER_NAME = 1002;
    public static final int FIELD_TYPE = 1001;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    public final boolean isRecoverable;
    public final com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId;
    public final com.google.android.exoplayer2.Format rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    public final java.lang.String rendererName;
    public final int type;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Type {
    }

    public ExoPlaybackException(int i, java.lang.Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    public ExoPlaybackException(int i, java.lang.Throwable th, java.lang.String str, int i2, java.lang.String str2, int i3, com.google.android.exoplayer2.Format format, int i4, boolean z) {
        this(deriveMessage(i, str, str2, i3, format, i4), th, i2, i, str2, i3, format, i4, null, android.os.SystemClock.elapsedRealtime(), z);
    }

    public ExoPlaybackException(android.os.Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(com.google.android.exoplayer2.PlaybackException.keyForField(1001), 2);
        this.rendererName = bundle.getString(com.google.android.exoplayer2.PlaybackException.keyForField(1002));
        this.rendererIndex = bundle.getInt(com.google.android.exoplayer2.PlaybackException.keyForField(1003), -1);
        this.rendererFormat = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.BundleableUtil.fromNullableBundle(com.google.android.exoplayer2.Format.CREATOR, bundle.getBundle(com.google.android.exoplayer2.PlaybackException.keyForField(1004)));
        this.rendererFormatSupport = bundle.getInt(com.google.android.exoplayer2.PlaybackException.keyForField(1005), 4);
        this.isRecoverable = bundle.getBoolean(com.google.android.exoplayer2.PlaybackException.keyForField(1006), false);
        this.mediaPeriodId = null;
    }

    public ExoPlaybackException(java.lang.String str, java.lang.Throwable th, int i, int i2, java.lang.String str2, int i3, com.google.android.exoplayer2.Format format, int i4, com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId, long j, boolean z) {
        super(str, th, i, j);
        com.google.android.exoplayer2.util.Assertions.checkArgument(!z || i2 == 1);
        com.google.android.exoplayer2.util.Assertions.checkArgument(th != null || i2 == 3);
        this.type = i2;
        this.rendererName = str2;
        this.rendererIndex = i3;
        this.rendererFormat = format;
        this.rendererFormatSupport = i4;
        this.mediaPeriodId = mediaPeriodId;
        this.isRecoverable = z;
    }

    public static com.google.android.exoplayer2.ExoPlaybackException createForRemote(java.lang.String str) {
        return new com.google.android.exoplayer2.ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    public static com.google.android.exoplayer2.ExoPlaybackException createForRenderer(java.lang.Throwable th, java.lang.String str, int i, com.google.android.exoplayer2.Format format, int i2, boolean z, int i3) {
        return new com.google.android.exoplayer2.ExoPlaybackException(1, th, null, i3, str, i, format, format == null ? 4 : i2, z);
    }

    public static com.google.android.exoplayer2.ExoPlaybackException createForSource(java.io.IOException iOException, int i) {
        return new com.google.android.exoplayer2.ExoPlaybackException(0, iOException, i);
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.ExoPlaybackException createForUnexpected(java.lang.RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    public static com.google.android.exoplayer2.ExoPlaybackException createForUnexpected(java.lang.RuntimeException runtimeException, int i) {
        return new com.google.android.exoplayer2.ExoPlaybackException(2, runtimeException, i);
    }

    public static java.lang.String deriveMessage(int i, java.lang.String str, java.lang.String str2, int i2, com.google.android.exoplayer2.Format format, int i3) {
        java.lang.String string;
        if (i == 0) {
            string = "Source error";
        } else if (i != 1) {
            string = i != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            java.lang.String strValueOf = java.lang.String.valueOf(format);
            java.lang.String formatSupportString = com.google.android.exoplayer2.util.Util.getFormatSupportString(i3);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(e.a.c.a.a.m(formatSupportString, strValueOf.length() + e.a.c.a.a.m(str2, 53)));
            sb.append(str2);
            sb.append(" error, index=");
            sb.append(i2);
            sb.append(", format=");
            sb.append(strValueOf);
            sb.append(", format_supported=");
            sb.append(formatSupportString);
            string = sb.toString();
        }
        if (android.text.TextUtils.isEmpty(str)) {
            return string;
        }
        java.lang.String strValueOf2 = java.lang.String.valueOf(string);
        return e.a.c.a.a.G(e.a.c.a.a.m(str, strValueOf2.length() + 2), strValueOf2, ": ", str);
    }

    public com.google.android.exoplayer2.ExoPlaybackException copyWithMediaPeriodId(com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId) {
        return new com.google.android.exoplayer2.ExoPlaybackException((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, mediaPeriodId, this.timestampMs, this.isRecoverable);
    }

    @Override // com.google.android.exoplayer2.PlaybackException
    public boolean errorInfoEquals(com.google.android.exoplayer2.PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        com.google.android.exoplayer2.ExoPlaybackException exoPlaybackException = (com.google.android.exoplayer2.ExoPlaybackException) com.google.android.exoplayer2.util.Util.castNonNull(playbackException);
        return this.type == exoPlaybackException.type && com.google.android.exoplayer2.util.Util.areEqual(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && com.google.android.exoplayer2.util.Util.areEqual(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && com.google.android.exoplayer2.util.Util.areEqual(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    public java.lang.Exception getRendererException() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.type == 1);
        return (java.lang.Exception) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCause());
    }

    public java.io.IOException getSourceException() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.type == 0);
        return (java.io.IOException) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCause());
    }

    public java.lang.RuntimeException getUnexpectedException() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.type == 2);
        return (java.lang.RuntimeException) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCause());
    }

    @Override // com.google.android.exoplayer2.PlaybackException, com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = super.toBundle();
        bundle.putInt(com.google.android.exoplayer2.PlaybackException.keyForField(1001), this.type);
        bundle.putString(com.google.android.exoplayer2.PlaybackException.keyForField(1002), this.rendererName);
        bundle.putInt(com.google.android.exoplayer2.PlaybackException.keyForField(1003), this.rendererIndex);
        bundle.putBundle(com.google.android.exoplayer2.PlaybackException.keyForField(1004), com.google.android.exoplayer2.util.BundleableUtil.toNullableBundle(this.rendererFormat));
        bundle.putInt(com.google.android.exoplayer2.PlaybackException.keyForField(1005), this.rendererFormatSupport);
        bundle.putBoolean(com.google.android.exoplayer2.PlaybackException.keyForField(1006), this.isRecoverable);
        return bundle;
    }
}
