package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public class TrackSelectionParameters implements com.google.android.exoplayer2.Bundleable {
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.trackselection.TrackSelectionParameters> CREATOR;

    @java.lang.Deprecated
    public static final com.google.android.exoplayer2.trackselection.TrackSelectionParameters DEFAULT;
    public static final com.google.android.exoplayer2.trackselection.TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;
    public static final int FIELD_DISABLED_TRACK_TYPE = 25;
    public static final int FIELD_FORCE_HIGHEST_SUPPORTED_BITRATE = 22;
    public static final int FIELD_FORCE_LOWEST_BITRATE = 21;
    public static final int FIELD_MAX_AUDIO_BITRATE = 19;
    public static final int FIELD_MAX_AUDIO_CHANNEL_COUNT = 18;
    public static final int FIELD_MAX_VIDEO_BITRATE = 9;
    public static final int FIELD_MAX_VIDEO_FRAMERATE = 8;
    public static final int FIELD_MAX_VIDEO_HEIGHT = 7;
    public static final int FIELD_MAX_VIDEO_WIDTH = 6;
    public static final int FIELD_MIN_VIDEO_BITRATE = 13;
    public static final int FIELD_MIN_VIDEO_FRAMERATE = 12;
    public static final int FIELD_MIN_VIDEO_HEIGHT = 11;
    public static final int FIELD_MIN_VIDEO_WIDTH = 10;
    public static final int FIELD_PREFERRED_AUDIO_LANGUAGES = 1;
    public static final int FIELD_PREFERRED_AUDIO_MIME_TYPES = 20;
    public static final int FIELD_PREFERRED_AUDIO_ROLE_FLAGS = 2;
    public static final int FIELD_PREFERRED_TEXT_LANGUAGES = 3;
    public static final int FIELD_PREFERRED_TEXT_ROLE_FLAGS = 4;
    public static final int FIELD_PREFERRED_VIDEO_MIMETYPES = 17;
    public static final int FIELD_SELECTION_OVERRIDE_KEYS = 23;
    public static final int FIELD_SELECTION_OVERRIDE_VALUES = 24;
    public static final int FIELD_SELECT_UNDETERMINED_TEXT_LANGUAGE = 5;
    public static final int FIELD_VIEWPORT_HEIGHT = 15;
    public static final int FIELD_VIEWPORT_ORIENTATION_MAY_CHANGE = 16;
    public static final int FIELD_VIEWPORT_WIDTH = 14;
    public final e.c.b.b.u<java.lang.Integer> disabledTrackTypes;
    public final boolean forceHighestSupportedBitrate;
    public final boolean forceLowestBitrate;
    public final int maxAudioBitrate;
    public final int maxAudioChannelCount;
    public final int maxVideoBitrate;
    public final int maxVideoFrameRate;
    public final int maxVideoHeight;
    public final int maxVideoWidth;
    public final int minVideoBitrate;
    public final int minVideoFrameRate;
    public final int minVideoHeight;
    public final int minVideoWidth;
    public final e.c.b.b.s<java.lang.String> preferredAudioLanguages;
    public final e.c.b.b.s<java.lang.String> preferredAudioMimeTypes;
    public final int preferredAudioRoleFlags;
    public final e.c.b.b.s<java.lang.String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final e.c.b.b.s<java.lang.String> preferredVideoMimeTypes;
    public final boolean selectUndeterminedTextLanguage;
    public final com.google.android.exoplayer2.trackselection.TrackSelectionOverrides trackSelectionOverrides;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;

    static {
        com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParametersBuild = new com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder().build();
        DEFAULT_WITHOUT_CONTEXT = trackSelectionParametersBuild;
        DEFAULT = trackSelectionParametersBuild;
        CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p2.i
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return new com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder(bundle).build();
            }
        };
    }

    public TrackSelectionParameters(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder builder) {
        this.maxVideoWidth = builder.maxVideoWidth;
        this.maxVideoHeight = builder.maxVideoHeight;
        this.maxVideoFrameRate = builder.maxVideoFrameRate;
        this.maxVideoBitrate = builder.maxVideoBitrate;
        this.minVideoWidth = builder.minVideoWidth;
        this.minVideoHeight = builder.minVideoHeight;
        this.minVideoFrameRate = builder.minVideoFrameRate;
        this.minVideoBitrate = builder.minVideoBitrate;
        this.viewportWidth = builder.viewportWidth;
        this.viewportHeight = builder.viewportHeight;
        this.viewportOrientationMayChange = builder.viewportOrientationMayChange;
        this.preferredVideoMimeTypes = builder.preferredVideoMimeTypes;
        this.preferredAudioLanguages = builder.preferredAudioLanguages;
        this.preferredAudioRoleFlags = builder.preferredAudioRoleFlags;
        this.maxAudioChannelCount = builder.maxAudioChannelCount;
        this.maxAudioBitrate = builder.maxAudioBitrate;
        this.preferredAudioMimeTypes = builder.preferredAudioMimeTypes;
        this.preferredTextLanguages = builder.preferredTextLanguages;
        this.preferredTextRoleFlags = builder.preferredTextRoleFlags;
        this.selectUndeterminedTextLanguage = builder.selectUndeterminedTextLanguage;
        this.forceLowestBitrate = builder.forceLowestBitrate;
        this.forceHighestSupportedBitrate = builder.forceHighestSupportedBitrate;
        this.trackSelectionOverrides = builder.trackSelectionOverrides;
        this.disabledTrackTypes = builder.disabledTrackTypes;
    }

    public static com.google.android.exoplayer2.trackselection.TrackSelectionParameters getDefaults(android.content.Context context) {
        return new com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder(context).build();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder buildUpon() {
        return new com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder(this);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters = (com.google.android.exoplayer2.trackselection.TrackSelectionParameters) obj;
        return this.maxVideoWidth == trackSelectionParameters.maxVideoWidth && this.maxVideoHeight == trackSelectionParameters.maxVideoHeight && this.maxVideoFrameRate == trackSelectionParameters.maxVideoFrameRate && this.maxVideoBitrate == trackSelectionParameters.maxVideoBitrate && this.minVideoWidth == trackSelectionParameters.minVideoWidth && this.minVideoHeight == trackSelectionParameters.minVideoHeight && this.minVideoFrameRate == trackSelectionParameters.minVideoFrameRate && this.minVideoBitrate == trackSelectionParameters.minVideoBitrate && this.viewportOrientationMayChange == trackSelectionParameters.viewportOrientationMayChange && this.viewportWidth == trackSelectionParameters.viewportWidth && this.viewportHeight == trackSelectionParameters.viewportHeight && this.preferredVideoMimeTypes.equals(trackSelectionParameters.preferredVideoMimeTypes) && this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.maxAudioChannelCount == trackSelectionParameters.maxAudioChannelCount && this.maxAudioBitrate == trackSelectionParameters.maxAudioBitrate && this.preferredAudioMimeTypes.equals(trackSelectionParameters.preferredAudioMimeTypes) && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.forceLowestBitrate == trackSelectionParameters.forceLowestBitrate && this.forceHighestSupportedBitrate == trackSelectionParameters.forceHighestSupportedBitrate && this.trackSelectionOverrides.equals(trackSelectionParameters.trackSelectionOverrides) && this.disabledTrackTypes.equals(trackSelectionParameters.disabledTrackTypes);
    }

    public int hashCode() {
        return this.disabledTrackTypes.hashCode() + ((this.trackSelectionOverrides.hashCode() + ((((((((((this.preferredTextLanguages.hashCode() + ((this.preferredAudioMimeTypes.hashCode() + ((((((((this.preferredAudioLanguages.hashCode() + ((this.preferredVideoMimeTypes.hashCode() + ((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31)) * 31)) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31)) * 31)) * 31) + this.preferredTextRoleFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31)) * 31);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(6), this.maxVideoWidth);
        bundle.putInt(keyForField(7), this.maxVideoHeight);
        bundle.putInt(keyForField(8), this.maxVideoFrameRate);
        bundle.putInt(keyForField(9), this.maxVideoBitrate);
        bundle.putInt(keyForField(10), this.minVideoWidth);
        bundle.putInt(keyForField(11), this.minVideoHeight);
        bundle.putInt(keyForField(12), this.minVideoFrameRate);
        bundle.putInt(keyForField(13), this.minVideoBitrate);
        bundle.putInt(keyForField(14), this.viewportWidth);
        bundle.putInt(keyForField(15), this.viewportHeight);
        bundle.putBoolean(keyForField(16), this.viewportOrientationMayChange);
        bundle.putStringArray(keyForField(17), (java.lang.String[]) this.preferredVideoMimeTypes.toArray(new java.lang.String[0]));
        bundle.putStringArray(keyForField(1), (java.lang.String[]) this.preferredAudioLanguages.toArray(new java.lang.String[0]));
        bundle.putInt(keyForField(2), this.preferredAudioRoleFlags);
        bundle.putInt(keyForField(18), this.maxAudioChannelCount);
        bundle.putInt(keyForField(19), this.maxAudioBitrate);
        bundle.putStringArray(keyForField(20), (java.lang.String[]) this.preferredAudioMimeTypes.toArray(new java.lang.String[0]));
        bundle.putStringArray(keyForField(3), (java.lang.String[]) this.preferredTextLanguages.toArray(new java.lang.String[0]));
        bundle.putInt(keyForField(4), this.preferredTextRoleFlags);
        bundle.putBoolean(keyForField(5), this.selectUndeterminedTextLanguage);
        bundle.putBoolean(keyForField(21), this.forceLowestBitrate);
        bundle.putBoolean(keyForField(22), this.forceHighestSupportedBitrate);
        bundle.putBundle(keyForField(23), this.trackSelectionOverrides.toBundle());
        bundle.putIntArray(keyForField(25), d.s.y.a0(this.disabledTrackTypes));
        return bundle;
    }

    public static class Builder {
        public e.c.b.b.u<java.lang.Integer> disabledTrackTypes;
        public boolean forceHighestSupportedBitrate;
        public boolean forceLowestBitrate;
        public int maxAudioBitrate;
        public int maxAudioChannelCount;
        public int maxVideoBitrate;
        public int maxVideoFrameRate;
        public int maxVideoHeight;
        public int maxVideoWidth;
        public int minVideoBitrate;
        public int minVideoFrameRate;
        public int minVideoHeight;
        public int minVideoWidth;
        public e.c.b.b.s<java.lang.String> preferredAudioLanguages;
        public e.c.b.b.s<java.lang.String> preferredAudioMimeTypes;
        public int preferredAudioRoleFlags;
        public e.c.b.b.s<java.lang.String> preferredTextLanguages;
        public int preferredTextRoleFlags;
        public e.c.b.b.s<java.lang.String> preferredVideoMimeTypes;
        public boolean selectUndeterminedTextLanguage;
        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides trackSelectionOverrides;
        public int viewportHeight;
        public boolean viewportOrientationMayChange;
        public int viewportWidth;

        @java.lang.Deprecated
        public Builder() {
            this.maxVideoWidth = Integer.MAX_VALUE;
            this.maxVideoHeight = Integer.MAX_VALUE;
            this.maxVideoFrameRate = Integer.MAX_VALUE;
            this.maxVideoBitrate = Integer.MAX_VALUE;
            this.viewportWidth = Integer.MAX_VALUE;
            this.viewportHeight = Integer.MAX_VALUE;
            this.viewportOrientationMayChange = true;
            this.preferredVideoMimeTypes = e.c.b.b.s.p();
            e.c.b.b.s sVar = e.c.b.b.k0.f2705e;
            this.preferredAudioLanguages = sVar;
            this.preferredAudioRoleFlags = 0;
            this.maxAudioChannelCount = Integer.MAX_VALUE;
            this.maxAudioBitrate = Integer.MAX_VALUE;
            this.preferredAudioMimeTypes = sVar;
            this.preferredTextLanguages = sVar;
            this.preferredTextRoleFlags = 0;
            this.selectUndeterminedTextLanguage = false;
            this.forceLowestBitrate = false;
            this.forceHighestSupportedBitrate = false;
            this.trackSelectionOverrides = com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.EMPTY;
            this.disabledTrackTypes = e.c.b.b.u.m();
        }

        public Builder(android.content.Context context) {
            this();
            setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(context);
            setViewportSizeToPhysicalDisplaySize(context, true);
        }

        public Builder(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
        }

        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioLanguages", "preferredAudioMimeTypes", "preferredTextLanguages", "trackSelectionOverrides", "disabledTrackTypes"})
        private void init(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
            this.maxVideoWidth = trackSelectionParameters.maxVideoWidth;
            this.maxVideoHeight = trackSelectionParameters.maxVideoHeight;
            this.maxVideoFrameRate = trackSelectionParameters.maxVideoFrameRate;
            this.maxVideoBitrate = trackSelectionParameters.maxVideoBitrate;
            this.minVideoWidth = trackSelectionParameters.minVideoWidth;
            this.minVideoHeight = trackSelectionParameters.minVideoHeight;
            this.minVideoFrameRate = trackSelectionParameters.minVideoFrameRate;
            this.minVideoBitrate = trackSelectionParameters.minVideoBitrate;
            this.viewportWidth = trackSelectionParameters.viewportWidth;
            this.viewportHeight = trackSelectionParameters.viewportHeight;
            this.viewportOrientationMayChange = trackSelectionParameters.viewportOrientationMayChange;
            this.preferredVideoMimeTypes = trackSelectionParameters.preferredVideoMimeTypes;
            this.preferredAudioLanguages = trackSelectionParameters.preferredAudioLanguages;
            this.preferredAudioRoleFlags = trackSelectionParameters.preferredAudioRoleFlags;
            this.maxAudioChannelCount = trackSelectionParameters.maxAudioChannelCount;
            this.maxAudioBitrate = trackSelectionParameters.maxAudioBitrate;
            this.preferredAudioMimeTypes = trackSelectionParameters.preferredAudioMimeTypes;
            this.preferredTextLanguages = trackSelectionParameters.preferredTextLanguages;
            this.preferredTextRoleFlags = trackSelectionParameters.preferredTextRoleFlags;
            this.selectUndeterminedTextLanguage = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.forceLowestBitrate = trackSelectionParameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = trackSelectionParameters.forceHighestSupportedBitrate;
            this.trackSelectionOverrides = trackSelectionParameters.trackSelectionOverrides;
            this.disabledTrackTypes = trackSelectionParameters.disabledTrackTypes;
        }

        public static e.c.b.b.s<java.lang.String> normalizeLanguageCodes(java.lang.String[] strArr) {
            e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
            for (java.lang.String str : (java.lang.String[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(strArr)) {
                aVarJ.b(com.google.android.exoplayer2.util.Util.normalizeLanguageCode((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(str)));
            }
            return aVarJ.c();
        }

        private void setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(android.content.Context context) {
            android.view.accessibility.CaptioningManager captioningManager;
            if ((com.google.android.exoplayer2.util.Util.SDK_INT >= 23 || android.os.Looper.myLooper() != null) && (captioningManager = (android.view.accessibility.CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.preferredTextRoleFlags = 1088;
                java.util.Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.preferredTextLanguages = e.c.b.b.s.q(com.google.android.exoplayer2.util.Util.getLocaleLanguageTag(locale));
                }
            }
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters build() {
            return new com.google.android.exoplayer2.trackselection.TrackSelectionParameters(this);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder clearVideoSizeConstraints() {
            return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder clearViewportSizeConstraints() {
            return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder set(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
            init(trackSelectionParameters);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setDisabledTrackTypes(java.util.Set<java.lang.Integer> set) {
            this.disabledTrackTypes = e.c.b.b.u.j(set);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setForceHighestSupportedBitrate(boolean z) {
            this.forceHighestSupportedBitrate = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setForceLowestBitrate(boolean z) {
            this.forceLowestBitrate = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxAudioBitrate(int i) {
            this.maxAudioBitrate = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxAudioChannelCount(int i) {
            this.maxAudioChannelCount = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxVideoBitrate(int i) {
            this.maxVideoBitrate = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxVideoFrameRate(int i) {
            this.maxVideoFrameRate = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxVideoSize(int i, int i2) {
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMaxVideoSizeSd() {
            return setMaxVideoSize(com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMinVideoBitrate(int i) {
            this.minVideoBitrate = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMinVideoFrameRate(int i) {
            this.minVideoFrameRate = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setMinVideoSize(int i, int i2) {
            this.minVideoWidth = i;
            this.minVideoHeight = i2;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredAudioLanguage(java.lang.String str) {
            return str == null ? setPreferredAudioLanguages(new java.lang.String[0]) : setPreferredAudioLanguages(str);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredAudioLanguages(java.lang.String... strArr) {
            this.preferredAudioLanguages = normalizeLanguageCodes(strArr);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredAudioMimeType(java.lang.String str) {
            return str == null ? setPreferredAudioMimeTypes(new java.lang.String[0]) : setPreferredAudioMimeTypes(str);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredAudioMimeTypes(java.lang.String... strArr) {
            this.preferredAudioMimeTypes = e.c.b.b.s.m(strArr);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredAudioRoleFlags(int i) {
            this.preferredAudioRoleFlags = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredTextLanguage(java.lang.String str) {
            return str == null ? setPreferredTextLanguages(new java.lang.String[0]) : setPreferredTextLanguages(str);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(android.content.Context context) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 19) {
                setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(context);
            }
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredTextLanguages(java.lang.String... strArr) {
            this.preferredTextLanguages = normalizeLanguageCodes(strArr);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredTextRoleFlags(int i) {
            this.preferredTextRoleFlags = i;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredVideoMimeType(java.lang.String str) {
            return str == null ? setPreferredVideoMimeTypes(new java.lang.String[0]) : setPreferredVideoMimeTypes(str);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setPreferredVideoMimeTypes(java.lang.String... strArr) {
            this.preferredVideoMimeTypes = e.c.b.b.s.m(strArr);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setSelectUndeterminedTextLanguage(boolean z) {
            this.selectUndeterminedTextLanguage = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setTrackSelectionOverrides(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides trackSelectionOverrides) {
            this.trackSelectionOverrides = trackSelectionOverrides;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setViewportSize(int i, int i2, boolean z) {
            this.viewportWidth = i;
            this.viewportHeight = i2;
            this.viewportOrientationMayChange = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setViewportSizeToPhysicalDisplaySize(android.content.Context context, boolean z) {
            android.graphics.Point currentDisplayModeSize = com.google.android.exoplayer2.util.Util.getCurrentDisplayModeSize(context);
            return setViewportSize(currentDisplayModeSize.x, currentDisplayModeSize.y, z);
        }

        public Builder(android.os.Bundle bundle) {
            this.maxVideoWidth = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(6), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxVideoWidth);
            this.maxVideoHeight = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(7), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxVideoHeight);
            this.maxVideoFrameRate = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(8), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxVideoFrameRate);
            this.maxVideoBitrate = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(9), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxVideoBitrate);
            this.minVideoWidth = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(10), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.minVideoWidth);
            this.minVideoHeight = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(11), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.minVideoHeight);
            this.minVideoFrameRate = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(12), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.minVideoFrameRate);
            this.minVideoBitrate = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(13), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.minVideoBitrate);
            this.viewportWidth = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(14), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.viewportWidth);
            this.viewportHeight = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(15), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.viewportHeight);
            this.viewportOrientationMayChange = bundle.getBoolean(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(16), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.viewportOrientationMayChange);
            this.preferredVideoMimeTypes = e.c.b.b.s.m((java.lang.String[]) e.c.b.a.f.i(bundle.getStringArray(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(17)), new java.lang.String[0]));
            this.preferredAudioLanguages = normalizeLanguageCodes((java.lang.String[]) e.c.b.a.f.i(bundle.getStringArray(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(1)), new java.lang.String[0]));
            this.preferredAudioRoleFlags = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(2), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.preferredAudioRoleFlags);
            this.maxAudioChannelCount = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(18), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxAudioChannelCount);
            this.maxAudioBitrate = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(19), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.maxAudioBitrate);
            this.preferredAudioMimeTypes = e.c.b.b.s.m((java.lang.String[]) e.c.b.a.f.i(bundle.getStringArray(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(20)), new java.lang.String[0]));
            this.preferredTextLanguages = normalizeLanguageCodes((java.lang.String[]) e.c.b.a.f.i(bundle.getStringArray(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(3)), new java.lang.String[0]));
            this.preferredTextRoleFlags = bundle.getInt(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(4), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.preferredTextRoleFlags);
            this.selectUndeterminedTextLanguage = bundle.getBoolean(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(5), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.selectUndeterminedTextLanguage);
            this.forceLowestBitrate = bundle.getBoolean(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(21), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.forceLowestBitrate);
            this.forceHighestSupportedBitrate = bundle.getBoolean(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(22), com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT.forceHighestSupportedBitrate);
            this.trackSelectionOverrides = (com.google.android.exoplayer2.trackselection.TrackSelectionOverrides) com.google.android.exoplayer2.util.BundleableUtil.fromNullableBundle(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.CREATOR, bundle.getBundle(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(23)), com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.EMPTY);
            int[] iArr = (int[]) e.c.b.a.f.i(bundle.getIntArray(com.google.android.exoplayer2.trackselection.TrackSelectionParameters.keyForField(25)), new int[0]);
            this.disabledTrackTypes = e.c.b.b.u.j(iArr.length == 0 ? java.util.Collections.emptyList() : new e.c.b.d.a(iArr));
        }
    }
}
