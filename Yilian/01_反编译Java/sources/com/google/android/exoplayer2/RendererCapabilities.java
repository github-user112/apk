package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public interface RendererCapabilities {
    public static final int ADAPTIVE_NOT_SEAMLESS = 8;
    public static final int ADAPTIVE_NOT_SUPPORTED = 0;
    public static final int ADAPTIVE_SEAMLESS = 16;
    public static final int ADAPTIVE_SUPPORT_MASK = 24;

    @java.lang.Deprecated
    public static final int FORMAT_EXCEEDS_CAPABILITIES = 3;

    @java.lang.Deprecated
    public static final int FORMAT_HANDLED = 4;
    public static final int FORMAT_SUPPORT_MASK = 7;

    @java.lang.Deprecated
    public static final int FORMAT_UNSUPPORTED_DRM = 2;

    @java.lang.Deprecated
    public static final int FORMAT_UNSUPPORTED_SUBTYPE = 1;

    @java.lang.Deprecated
    public static final int FORMAT_UNSUPPORTED_TYPE = 0;
    public static final int TUNNELING_NOT_SUPPORTED = 0;
    public static final int TUNNELING_SUPPORTED = 32;
    public static final int TUNNELING_SUPPORT_MASK = 32;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface AdaptiveSupport {
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Capabilities {
    }

    @java.lang.Deprecated
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface FormatSupport {
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface TunnelingSupport {
    }

    java.lang.String getName();

    int getTrackType();

    int supportsFormat(com.google.android.exoplayer2.Format format);

    int supportsMixedMimeTypeAdaptation();
}
