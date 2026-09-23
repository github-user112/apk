package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MediaItem implements com.google.android.exoplayer2.Bundleable {
    public static final java.lang.String DEFAULT_MEDIA_ID = "";
    public static final int FIELD_CLIPPING_PROPERTIES = 3;
    public static final int FIELD_LIVE_CONFIGURATION = 1;
    public static final int FIELD_MEDIA_ID = 0;
    public static final int FIELD_MEDIA_METADATA = 2;
    public final com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration;

    @java.lang.Deprecated
    public final com.google.android.exoplayer2.MediaItem.ClippingProperties clippingProperties;
    public final com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration;
    public final com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
    public final java.lang.String mediaId;
    public final com.google.android.exoplayer2.MediaMetadata mediaMetadata;

    @java.lang.Deprecated
    public final com.google.android.exoplayer2.MediaItem.PlaybackProperties playbackProperties;
    public static final com.google.android.exoplayer2.MediaItem EMPTY = new com.google.android.exoplayer2.MediaItem.Builder().build();
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.MediaItem> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.y1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.MediaItem.fromBundle(bundle);
        }
    };

    public static final class AdsConfiguration {
        public final android.net.Uri adTagUri;
        public final java.lang.Object adsId;

        public static final class Builder {
            public android.net.Uri adTagUri;
            public java.lang.Object adsId;

            public Builder(android.net.Uri uri) {
                this.adTagUri = uri;
            }

            public com.google.android.exoplayer2.MediaItem.AdsConfiguration build() {
                return new com.google.android.exoplayer2.MediaItem.AdsConfiguration(this);
            }

            public com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder setAdTagUri(android.net.Uri uri) {
                this.adTagUri = uri;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder setAdsId(java.lang.Object obj) {
                this.adsId = obj;
                return this;
            }
        }

        public AdsConfiguration(com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder builder) {
            this.adTagUri = builder.adTagUri;
            this.adsId = builder.adsId;
        }

        public com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder buildUpon() {
            return new com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder(this.adTagUri).setAdsId(this.adsId);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.AdsConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration = (com.google.android.exoplayer2.MediaItem.AdsConfiguration) obj;
            return this.adTagUri.equals(adsConfiguration.adTagUri) && com.google.android.exoplayer2.util.Util.areEqual(this.adsId, adsConfiguration.adsId);
        }

        public int hashCode() {
            int iHashCode = this.adTagUri.hashCode() * 31;
            java.lang.Object obj = this.adsId;
            return iHashCode + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static final class Builder {
        public com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration;
        public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder clippingConfiguration;
        public java.lang.String customCacheKey;
        public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder drmConfiguration;
        public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder liveConfiguration;
        public java.lang.String mediaId;
        public com.google.android.exoplayer2.MediaMetadata mediaMetadata;
        public java.lang.String mimeType;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public e.c.b.b.s<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> subtitleConfigurations;
        public java.lang.Object tag;
        public android.net.Uri uri;

        public Builder() {
            this.clippingConfiguration = new com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder();
            this.drmConfiguration = new com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder();
            this.streamKeys = java.util.Collections.emptyList();
            this.subtitleConfigurations = e.c.b.b.s.p();
            this.liveConfiguration = new com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder();
        }

        public Builder(com.google.android.exoplayer2.MediaItem mediaItem) {
            this();
            this.clippingConfiguration = mediaItem.clippingConfiguration.buildUpon();
            this.mediaId = mediaItem.mediaId;
            this.mediaMetadata = mediaItem.mediaMetadata;
            this.liveConfiguration = mediaItem.liveConfiguration.buildUpon();
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                this.customCacheKey = localConfiguration.customCacheKey;
                this.mimeType = localConfiguration.mimeType;
                this.uri = localConfiguration.uri;
                this.streamKeys = localConfiguration.streamKeys;
                this.subtitleConfigurations = localConfiguration.subtitleConfigurations;
                this.tag = localConfiguration.tag;
                com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration = localConfiguration.drmConfiguration;
                this.drmConfiguration = drmConfiguration != null ? drmConfiguration.buildUpon() : new com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder();
                this.adsConfiguration = localConfiguration.adsConfiguration;
            }
        }

        public com.google.android.exoplayer2.MediaItem build() {
            com.google.android.exoplayer2.MediaItem.PlaybackProperties playbackProperties;
            com.google.android.exoplayer2.util.Assertions.checkState(this.drmConfiguration.licenseUri == null || this.drmConfiguration.scheme != null);
            android.net.Uri uri = this.uri;
            if (uri != null) {
                playbackProperties = new com.google.android.exoplayer2.MediaItem.PlaybackProperties(uri, this.mimeType, this.drmConfiguration.scheme != null ? this.drmConfiguration.build() : null, this.adsConfiguration, this.streamKeys, this.customCacheKey, this.subtitleConfigurations, this.tag);
            } else {
                playbackProperties = null;
            }
            java.lang.String str = this.mediaId;
            if (str == null) {
                str = "";
            }
            java.lang.String str2 = str;
            com.google.android.exoplayer2.MediaItem.ClippingProperties clippingPropertiesBuildClippingProperties = this.clippingConfiguration.buildClippingProperties();
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfigurationBuild = this.liveConfiguration.build();
            com.google.android.exoplayer2.MediaMetadata mediaMetadata = this.mediaMetadata;
            if (mediaMetadata == null) {
                mediaMetadata = com.google.android.exoplayer2.MediaMetadata.EMPTY;
            }
            return new com.google.android.exoplayer2.MediaItem(str2, clippingPropertiesBuildClippingProperties, playbackProperties, liveConfigurationBuild, mediaMetadata);
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setAdTagUri(android.net.Uri uri) {
            return setAdTagUri(uri, null);
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setAdTagUri(android.net.Uri uri, java.lang.Object obj) {
            this.adsConfiguration = uri != null ? new com.google.android.exoplayer2.MediaItem.AdsConfiguration.Builder(uri).setAdsId(obj).build() : null;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setAdTagUri(java.lang.String str) {
            return setAdTagUri(str != null ? android.net.Uri.parse(str) : null);
        }

        public com.google.android.exoplayer2.MediaItem.Builder setAdsConfiguration(com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration) {
            this.adsConfiguration = adsConfiguration;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setClipEndPositionMs(long j) {
            this.clippingConfiguration.setEndPositionMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setClipRelativeToDefaultPosition(boolean z) {
            this.clippingConfiguration.setRelativeToDefaultPosition(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setClipRelativeToLiveWindow(boolean z) {
            this.clippingConfiguration.setRelativeToLiveWindow(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setClipStartPositionMs(long j) {
            this.clippingConfiguration.setStartPositionMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setClipStartsAtKeyFrame(boolean z) {
            this.clippingConfiguration.setStartsAtKeyFrame(z);
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setClippingConfiguration(com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration) {
            this.clippingConfiguration = clippingConfiguration.buildUpon();
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setCustomCacheKey(java.lang.String str) {
            this.customCacheKey = str;
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setDrmConfiguration(com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration) {
            this.drmConfiguration = drmConfiguration != null ? drmConfiguration.buildUpon() : new com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder();
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmForceDefaultLicenseUri(boolean z) {
            this.drmConfiguration.setForceDefaultLicenseUri(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmKeySetId(byte[] bArr) {
            this.drmConfiguration.setKeySetId(bArr);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmLicenseRequestHeaders(java.util.Map<java.lang.String, java.lang.String> map) {
            com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder builder = this.drmConfiguration;
            if (map == null) {
                map = e.c.b.b.l0.f2709g;
            }
            builder.setLicenseRequestHeaders(map);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmLicenseUri(android.net.Uri uri) {
            this.drmConfiguration.setLicenseUri(uri);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmLicenseUri(java.lang.String str) {
            this.drmConfiguration.setLicenseUri(str);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmMultiSession(boolean z) {
            this.drmConfiguration.setMultiSession(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmPlayClearContentWithoutKey(boolean z) {
            this.drmConfiguration.setPlayClearContentWithoutKey(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmSessionForClearPeriods(boolean z) {
            this.drmConfiguration.forceSessionsForAudioAndVideoTracks(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmSessionForClearTypes(java.util.List<java.lang.Integer> list) {
            com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder builder = this.drmConfiguration;
            if (list == null) {
                list = e.c.b.b.s.p();
            }
            builder.setForcedSessionTrackTypes(list);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setDrmUuid(java.util.UUID uuid) {
            this.drmConfiguration.setNullableScheme(uuid);
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setLiveConfiguration(com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration) {
            this.liveConfiguration = liveConfiguration.buildUpon();
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setLiveMaxOffsetMs(long j) {
            this.liveConfiguration.setMaxOffsetMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setLiveMaxPlaybackSpeed(float f2) {
            this.liveConfiguration.setMaxPlaybackSpeed(f2);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setLiveMinOffsetMs(long j) {
            this.liveConfiguration.setMinOffsetMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setLiveMinPlaybackSpeed(float f2) {
            this.liveConfiguration.setMinPlaybackSpeed(f2);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setLiveTargetOffsetMs(long j) {
            this.liveConfiguration.setTargetOffsetMs(j);
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setMediaId(java.lang.String str) {
            this.mediaId = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setMediaMetadata(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
            this.mediaMetadata = mediaMetadata;
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setMimeType(java.lang.String str) {
            this.mimeType = str;
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            this.streamKeys = (list == null || list.isEmpty()) ? java.util.Collections.emptyList() : java.util.Collections.unmodifiableList(new java.util.ArrayList(list));
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setSubtitleConfigurations(java.util.List<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> list) {
            this.subtitleConfigurations = e.c.b.b.s.l(list);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaItem.Builder setSubtitles(java.util.List<com.google.android.exoplayer2.MediaItem.Subtitle> list) {
            this.subtitleConfigurations = list != null ? e.c.b.b.s.l(list) : e.c.b.b.s.p();
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setUri(android.net.Uri uri) {
            this.uri = uri;
            return this;
        }

        public com.google.android.exoplayer2.MediaItem.Builder setUri(java.lang.String str) {
            return setUri(str == null ? null : android.net.Uri.parse(str));
        }
    }

    public static class ClippingConfiguration implements com.google.android.exoplayer2.Bundleable {
        public static final int FIELD_END_POSITION_MS = 1;
        public static final int FIELD_RELATIVE_TO_DEFAULT_POSITION = 3;
        public static final int FIELD_RELATIVE_TO_LIVE_WINDOW = 2;
        public static final int FIELD_STARTS_AT_KEY_FRAME = 4;
        public static final int FIELD_START_POSITION_MS = 0;
        public final long endPositionMs;
        public final boolean relativeToDefaultPosition;
        public final boolean relativeToLiveWindow;
        public final long startPositionMs;
        public final boolean startsAtKeyFrame;
        public static final com.google.android.exoplayer2.MediaItem.ClippingConfiguration UNSET = new com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder().build();
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.MediaItem.ClippingProperties> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.h1
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return new com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder().setStartPositionMs(bundle.getLong(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.keyForField(0), 0L)).setEndPositionMs(bundle.getLong(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.keyForField(1), Long.MIN_VALUE)).setRelativeToLiveWindow(bundle.getBoolean(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.keyForField(2), false)).setRelativeToDefaultPosition(bundle.getBoolean(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.keyForField(3), false)).setStartsAtKeyFrame(bundle.getBoolean(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.keyForField(4), false)).buildClippingProperties();
            }
        };

        public static final class Builder {
            public long endPositionMs;
            public boolean relativeToDefaultPosition;
            public boolean relativeToLiveWindow;
            public long startPositionMs;
            public boolean startsAtKeyFrame;

            public Builder() {
                this.endPositionMs = Long.MIN_VALUE;
            }

            public Builder(com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration) {
                this.startPositionMs = clippingConfiguration.startPositionMs;
                this.endPositionMs = clippingConfiguration.endPositionMs;
                this.relativeToLiveWindow = clippingConfiguration.relativeToLiveWindow;
                this.relativeToDefaultPosition = clippingConfiguration.relativeToDefaultPosition;
                this.startsAtKeyFrame = clippingConfiguration.startsAtKeyFrame;
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration build() {
                return buildClippingProperties();
            }

            @java.lang.Deprecated
            public com.google.android.exoplayer2.MediaItem.ClippingProperties buildClippingProperties() {
                return new com.google.android.exoplayer2.MediaItem.ClippingProperties(this);
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder setEndPositionMs(long j) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(j == Long.MIN_VALUE || j >= 0);
                this.endPositionMs = j;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder setRelativeToDefaultPosition(boolean z) {
                this.relativeToDefaultPosition = z;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder setRelativeToLiveWindow(boolean z) {
                this.relativeToLiveWindow = z;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder setStartPositionMs(long j) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
                this.startPositionMs = j;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder setStartsAtKeyFrame(boolean z) {
                this.startsAtKeyFrame = z;
                return this;
            }
        }

        public ClippingConfiguration(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder builder) {
            this.startPositionMs = builder.startPositionMs;
            this.endPositionMs = builder.endPositionMs;
            this.relativeToLiveWindow = builder.relativeToLiveWindow;
            this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
            this.startsAtKeyFrame = builder.startsAtKeyFrame;
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder buildUpon() {
            return new com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder();
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.ClippingConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration = (com.google.android.exoplayer2.MediaItem.ClippingConfiguration) obj;
            return this.startPositionMs == clippingConfiguration.startPositionMs && this.endPositionMs == clippingConfiguration.endPositionMs && this.relativeToLiveWindow == clippingConfiguration.relativeToLiveWindow && this.relativeToDefaultPosition == clippingConfiguration.relativeToDefaultPosition && this.startsAtKeyFrame == clippingConfiguration.startsAtKeyFrame;
        }

        public int hashCode() {
            long j = this.startPositionMs;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.endPositionMs;
            return ((((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.relativeToLiveWindow ? 1 : 0)) * 31) + (this.relativeToDefaultPosition ? 1 : 0)) * 31) + (this.startsAtKeyFrame ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putLong(keyForField(0), this.startPositionMs);
            bundle.putLong(keyForField(1), this.endPositionMs);
            bundle.putBoolean(keyForField(2), this.relativeToLiveWindow);
            bundle.putBoolean(keyForField(3), this.relativeToDefaultPosition);
            bundle.putBoolean(keyForField(4), this.startsAtKeyFrame);
            return bundle;
        }
    }

    @java.lang.Deprecated
    public static final class ClippingProperties extends com.google.android.exoplayer2.MediaItem.ClippingConfiguration {
        public static final com.google.android.exoplayer2.MediaItem.ClippingProperties UNSET = new com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder().buildClippingProperties();

        public ClippingProperties(com.google.android.exoplayer2.MediaItem.ClippingConfiguration.Builder builder) {
            super(builder);
        }
    }

    public static final class DrmConfiguration {
        public final boolean forceDefaultLicenseUri;
        public final e.c.b.b.s<java.lang.Integer> forcedSessionTrackTypes;
        public final byte[] keySetId;
        public final e.c.b.b.t<java.lang.String, java.lang.String> licenseRequestHeaders;
        public final android.net.Uri licenseUri;
        public final boolean multiSession;
        public final boolean playClearContentWithoutKey;

        @java.lang.Deprecated
        public final e.c.b.b.t<java.lang.String, java.lang.String> requestHeaders;
        public final java.util.UUID scheme;

        @java.lang.Deprecated
        public final e.c.b.b.s<java.lang.Integer> sessionForClearTypes;

        @java.lang.Deprecated
        public final java.util.UUID uuid;

        public DrmConfiguration(com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder builder) {
            com.google.android.exoplayer2.util.Assertions.checkState((builder.forceDefaultLicenseUri && builder.licenseUri == null) ? false : true);
            java.util.UUID uuid = (java.util.UUID) com.google.android.exoplayer2.util.Assertions.checkNotNull(builder.scheme);
            this.scheme = uuid;
            this.uuid = uuid;
            this.licenseUri = builder.licenseUri;
            this.requestHeaders = builder.licenseRequestHeaders;
            this.licenseRequestHeaders = builder.licenseRequestHeaders;
            this.multiSession = builder.multiSession;
            this.forceDefaultLicenseUri = builder.forceDefaultLicenseUri;
            this.playClearContentWithoutKey = builder.playClearContentWithoutKey;
            this.sessionForClearTypes = builder.forcedSessionTrackTypes;
            this.forcedSessionTrackTypes = builder.forcedSessionTrackTypes;
            this.keySetId = builder.keySetId != null ? java.util.Arrays.copyOf(builder.keySetId, builder.keySetId.length) : null;
        }

        public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder buildUpon() {
            return new com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder();
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.DrmConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration = (com.google.android.exoplayer2.MediaItem.DrmConfiguration) obj;
            return this.scheme.equals(drmConfiguration.scheme) && com.google.android.exoplayer2.util.Util.areEqual(this.licenseUri, drmConfiguration.licenseUri) && com.google.android.exoplayer2.util.Util.areEqual(this.licenseRequestHeaders, drmConfiguration.licenseRequestHeaders) && this.multiSession == drmConfiguration.multiSession && this.forceDefaultLicenseUri == drmConfiguration.forceDefaultLicenseUri && this.playClearContentWithoutKey == drmConfiguration.playClearContentWithoutKey && this.forcedSessionTrackTypes.equals(drmConfiguration.forcedSessionTrackTypes) && java.util.Arrays.equals(this.keySetId, drmConfiguration.keySetId);
        }

        public byte[] getKeySetId() {
            byte[] bArr = this.keySetId;
            if (bArr != null) {
                return java.util.Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public int hashCode() {
            int iHashCode = this.scheme.hashCode() * 31;
            android.net.Uri uri = this.licenseUri;
            return java.util.Arrays.hashCode(this.keySetId) + ((this.forcedSessionTrackTypes.hashCode() + ((((((((this.licenseRequestHeaders.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 31) + (this.multiSession ? 1 : 0)) * 31) + (this.forceDefaultLicenseUri ? 1 : 0)) * 31) + (this.playClearContentWithoutKey ? 1 : 0)) * 31)) * 31);
        }

        public static final class Builder {
            public boolean forceDefaultLicenseUri;
            public e.c.b.b.s<java.lang.Integer> forcedSessionTrackTypes;
            public byte[] keySetId;
            public e.c.b.b.t<java.lang.String, java.lang.String> licenseRequestHeaders;
            public android.net.Uri licenseUri;
            public boolean multiSession;
            public boolean playClearContentWithoutKey;
            public java.util.UUID scheme;

            @java.lang.Deprecated
            public Builder() {
                this.licenseRequestHeaders = e.c.b.b.l0.f2709g;
                this.forcedSessionTrackTypes = e.c.b.b.s.p();
            }

            public Builder(com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration) {
                this.scheme = drmConfiguration.scheme;
                this.licenseUri = drmConfiguration.licenseUri;
                this.licenseRequestHeaders = drmConfiguration.licenseRequestHeaders;
                this.multiSession = drmConfiguration.multiSession;
                this.playClearContentWithoutKey = drmConfiguration.playClearContentWithoutKey;
                this.forceDefaultLicenseUri = drmConfiguration.forceDefaultLicenseUri;
                this.forcedSessionTrackTypes = drmConfiguration.forcedSessionTrackTypes;
                this.keySetId = drmConfiguration.keySetId;
            }

            /* JADX INFO: Access modifiers changed from: private */
            @java.lang.Deprecated
            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setNullableScheme(java.util.UUID uuid) {
                this.scheme = uuid;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration build() {
                return new com.google.android.exoplayer2.MediaItem.DrmConfiguration(this);
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder forceSessionsForAudioAndVideoTracks(boolean z) {
                setForcedSessionTrackTypes(z ? e.c.b.b.s.r(2, 1) : e.c.b.b.s.p());
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setForceDefaultLicenseUri(boolean z) {
                this.forceDefaultLicenseUri = z;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setForcedSessionTrackTypes(java.util.List<java.lang.Integer> list) {
                this.forcedSessionTrackTypes = e.c.b.b.s.l(list);
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setKeySetId(byte[] bArr) {
                this.keySetId = bArr != null ? java.util.Arrays.copyOf(bArr, bArr.length) : null;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setLicenseRequestHeaders(java.util.Map<java.lang.String, java.lang.String> map) {
                this.licenseRequestHeaders = e.c.b.b.t.a(map);
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setLicenseUri(android.net.Uri uri) {
                this.licenseUri = uri;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setLicenseUri(java.lang.String str) {
                this.licenseUri = str == null ? null : android.net.Uri.parse(str);
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setMultiSession(boolean z) {
                this.multiSession = z;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setPlayClearContentWithoutKey(boolean z) {
                this.playClearContentWithoutKey = z;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.DrmConfiguration.Builder setScheme(java.util.UUID uuid) {
                this.scheme = uuid;
                return this;
            }

            public Builder(java.util.UUID uuid) {
                this.scheme = uuid;
                this.licenseRequestHeaders = e.c.b.b.l0.f2709g;
                this.forcedSessionTrackTypes = e.c.b.b.s.p();
            }
        }
    }

    public static final class LiveConfiguration implements com.google.android.exoplayer2.Bundleable {
        public static final int FIELD_MAX_OFFSET_MS = 2;
        public static final int FIELD_MAX_PLAYBACK_SPEED = 4;
        public static final int FIELD_MIN_OFFSET_MS = 1;
        public static final int FIELD_MIN_PLAYBACK_SPEED = 3;
        public static final int FIELD_TARGET_OFFSET_MS = 0;
        public final long maxOffsetMs;
        public final float maxPlaybackSpeed;
        public final long minOffsetMs;
        public final float minPlaybackSpeed;
        public final long targetOffsetMs;
        public static final com.google.android.exoplayer2.MediaItem.LiveConfiguration UNSET = new com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder().build();
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.MediaItem.LiveConfiguration> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.i1
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.MediaItem.LiveConfiguration.a(bundle);
            }
        };

        public static final class Builder {
            public long maxOffsetMs;
            public float maxPlaybackSpeed;
            public long minOffsetMs;
            public float minPlaybackSpeed;
            public long targetOffsetMs;

            public Builder() {
                this.targetOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
                this.minOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
                this.maxOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
                this.minPlaybackSpeed = -3.4028235E38f;
                this.maxPlaybackSpeed = -3.4028235E38f;
            }

            public Builder(com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration) {
                this.targetOffsetMs = liveConfiguration.targetOffsetMs;
                this.minOffsetMs = liveConfiguration.minOffsetMs;
                this.maxOffsetMs = liveConfiguration.maxOffsetMs;
                this.minPlaybackSpeed = liveConfiguration.minPlaybackSpeed;
                this.maxPlaybackSpeed = liveConfiguration.maxPlaybackSpeed;
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration build() {
                return new com.google.android.exoplayer2.MediaItem.LiveConfiguration(this);
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder setMaxOffsetMs(long j) {
                this.maxOffsetMs = j;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder setMaxPlaybackSpeed(float f2) {
                this.maxPlaybackSpeed = f2;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder setMinOffsetMs(long j) {
                this.minOffsetMs = j;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder setMinPlaybackSpeed(float f2) {
                this.minPlaybackSpeed = f2;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder setTargetOffsetMs(long j) {
                this.targetOffsetMs = j;
                return this;
            }
        }

        @java.lang.Deprecated
        public LiveConfiguration(long j, long j2, long j3, float f2, float f3) {
            this.targetOffsetMs = j;
            this.minOffsetMs = j2;
            this.maxOffsetMs = j3;
            this.minPlaybackSpeed = f2;
            this.maxPlaybackSpeed = f3;
        }

        public LiveConfiguration(com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder builder) {
            this(builder.targetOffsetMs, builder.minOffsetMs, builder.maxOffsetMs, builder.minPlaybackSpeed, builder.maxPlaybackSpeed);
        }

        public static /* synthetic */ com.google.android.exoplayer2.MediaItem.LiveConfiguration a(android.os.Bundle bundle) {
            return new com.google.android.exoplayer2.MediaItem.LiveConfiguration(bundle.getLong(keyForField(0), com.google.android.exoplayer2.C.TIME_UNSET), bundle.getLong(keyForField(1), com.google.android.exoplayer2.C.TIME_UNSET), bundle.getLong(keyForField(2), com.google.android.exoplayer2.C.TIME_UNSET), bundle.getFloat(keyForField(3), -3.4028235E38f), bundle.getFloat(keyForField(4), -3.4028235E38f));
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder buildUpon() {
            return new com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder();
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.LiveConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = (com.google.android.exoplayer2.MediaItem.LiveConfiguration) obj;
            return this.targetOffsetMs == liveConfiguration.targetOffsetMs && this.minOffsetMs == liveConfiguration.minOffsetMs && this.maxOffsetMs == liveConfiguration.maxOffsetMs && this.minPlaybackSpeed == liveConfiguration.minPlaybackSpeed && this.maxPlaybackSpeed == liveConfiguration.maxPlaybackSpeed;
        }

        public int hashCode() {
            long j = this.targetOffsetMs;
            long j2 = this.minOffsetMs;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.maxOffsetMs;
            int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            float f2 = this.minPlaybackSpeed;
            int iFloatToIntBits = (i2 + (f2 != 0.0f ? java.lang.Float.floatToIntBits(f2) : 0)) * 31;
            float f3 = this.maxPlaybackSpeed;
            return iFloatToIntBits + (f3 != 0.0f ? java.lang.Float.floatToIntBits(f3) : 0);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putLong(keyForField(0), this.targetOffsetMs);
            bundle.putLong(keyForField(1), this.minOffsetMs);
            bundle.putLong(keyForField(2), this.maxOffsetMs);
            bundle.putFloat(keyForField(3), this.minPlaybackSpeed);
            bundle.putFloat(keyForField(4), this.maxPlaybackSpeed);
            return bundle;
        }
    }

    public static class LocalConfiguration {
        public final com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration;
        public final java.lang.String customCacheKey;
        public final com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration;
        public final java.lang.String mimeType;
        public final java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public final e.c.b.b.s<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> subtitleConfigurations;

        @java.lang.Deprecated
        public final java.util.List<com.google.android.exoplayer2.MediaItem.Subtitle> subtitles;
        public final java.lang.Object tag;
        public final android.net.Uri uri;

        public LocalConfiguration(android.net.Uri uri, java.lang.String str, com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration, com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration, java.util.List<com.google.android.exoplayer2.offline.StreamKey> list, java.lang.String str2, e.c.b.b.s<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> sVar, java.lang.Object obj) {
            this.uri = uri;
            this.mimeType = str;
            this.drmConfiguration = drmConfiguration;
            this.adsConfiguration = adsConfiguration;
            this.streamKeys = list;
            this.customCacheKey = str2;
            this.subtitleConfigurations = sVar;
            e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
            for (int i = 0; i < sVar.size(); i++) {
                aVarJ.b(sVar.get(i).buildUpon().buildSubtitle());
            }
            this.subtitles = aVarJ.c();
            this.tag = obj;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.LocalConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = (com.google.android.exoplayer2.MediaItem.LocalConfiguration) obj;
            return this.uri.equals(localConfiguration.uri) && com.google.android.exoplayer2.util.Util.areEqual(this.mimeType, localConfiguration.mimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.drmConfiguration, localConfiguration.drmConfiguration) && com.google.android.exoplayer2.util.Util.areEqual(this.adsConfiguration, localConfiguration.adsConfiguration) && this.streamKeys.equals(localConfiguration.streamKeys) && com.google.android.exoplayer2.util.Util.areEqual(this.customCacheKey, localConfiguration.customCacheKey) && this.subtitleConfigurations.equals(localConfiguration.subtitleConfigurations) && com.google.android.exoplayer2.util.Util.areEqual(this.tag, localConfiguration.tag);
        }

        public int hashCode() {
            int iHashCode = this.uri.hashCode() * 31;
            java.lang.String str = this.mimeType;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration = this.drmConfiguration;
            int iHashCode3 = (iHashCode2 + (drmConfiguration == null ? 0 : drmConfiguration.hashCode())) * 31;
            com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration = this.adsConfiguration;
            int iHashCode4 = (this.streamKeys.hashCode() + ((iHashCode3 + (adsConfiguration == null ? 0 : adsConfiguration.hashCode())) * 31)) * 31;
            java.lang.String str2 = this.customCacheKey;
            int iHashCode5 = (this.subtitleConfigurations.hashCode() + ((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            java.lang.Object obj = this.tag;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    @java.lang.Deprecated
    public static final class PlaybackProperties extends com.google.android.exoplayer2.MediaItem.LocalConfiguration {
        public PlaybackProperties(android.net.Uri uri, java.lang.String str, com.google.android.exoplayer2.MediaItem.DrmConfiguration drmConfiguration, com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration, java.util.List<com.google.android.exoplayer2.offline.StreamKey> list, java.lang.String str2, e.c.b.b.s<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> sVar, java.lang.Object obj) {
            super(uri, str, drmConfiguration, adsConfiguration, list, str2, sVar, obj);
        }
    }

    @java.lang.Deprecated
    public static final class Subtitle extends com.google.android.exoplayer2.MediaItem.SubtitleConfiguration {
        @java.lang.Deprecated
        public Subtitle(android.net.Uri uri, java.lang.String str, java.lang.String str2) {
            this(uri, str, str2, 0);
        }

        @java.lang.Deprecated
        public Subtitle(android.net.Uri uri, java.lang.String str, java.lang.String str2, int i) {
            this(uri, str, str2, i, 0, null);
        }

        @java.lang.Deprecated
        public Subtitle(android.net.Uri uri, java.lang.String str, java.lang.String str2, int i, int i2, java.lang.String str3) {
            super(uri, str, str2, i, i2, str3);
        }

        public Subtitle(com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder builder) {
            super(builder);
        }
    }

    public static class SubtitleConfiguration {
        public final java.lang.String label;
        public final java.lang.String language;
        public final java.lang.String mimeType;
        public final int roleFlags;
        public final int selectionFlags;
        public final android.net.Uri uri;

        public static final class Builder {
            public java.lang.String label;
            public java.lang.String language;
            public java.lang.String mimeType;
            public int roleFlags;
            public int selectionFlags;
            public android.net.Uri uri;

            public Builder(android.net.Uri uri) {
                this.uri = uri;
            }

            public Builder(com.google.android.exoplayer2.MediaItem.SubtitleConfiguration subtitleConfiguration) {
                this.uri = subtitleConfiguration.uri;
                this.mimeType = subtitleConfiguration.mimeType;
                this.language = subtitleConfiguration.language;
                this.selectionFlags = subtitleConfiguration.selectionFlags;
                this.roleFlags = subtitleConfiguration.roleFlags;
                this.label = subtitleConfiguration.label;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.google.android.exoplayer2.MediaItem.Subtitle buildSubtitle() {
                return new com.google.android.exoplayer2.MediaItem.Subtitle(this);
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration build() {
                return new com.google.android.exoplayer2.MediaItem.SubtitleConfiguration(this);
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setLabel(java.lang.String str) {
                this.label = str;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setLanguage(java.lang.String str) {
                this.language = str;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setMimeType(java.lang.String str) {
                this.mimeType = str;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setRoleFlags(int i) {
                this.roleFlags = i;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setSelectionFlags(int i) {
                this.selectionFlags = i;
                return this;
            }

            public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder setUri(android.net.Uri uri) {
                this.uri = uri;
                return this;
            }
        }

        public SubtitleConfiguration(android.net.Uri uri, java.lang.String str, java.lang.String str2, int i, int i2, java.lang.String str3) {
            this.uri = uri;
            this.mimeType = str;
            this.language = str2;
            this.selectionFlags = i;
            this.roleFlags = i2;
            this.label = str3;
        }

        public SubtitleConfiguration(com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder builder) {
            this.uri = builder.uri;
            this.mimeType = builder.mimeType;
            this.language = builder.language;
            this.selectionFlags = builder.selectionFlags;
            this.roleFlags = builder.roleFlags;
            this.label = builder.label;
        }

        public com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder buildUpon() {
            return new com.google.android.exoplayer2.MediaItem.SubtitleConfiguration.Builder();
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof com.google.android.exoplayer2.MediaItem.SubtitleConfiguration)) {
                return false;
            }
            com.google.android.exoplayer2.MediaItem.SubtitleConfiguration subtitleConfiguration = (com.google.android.exoplayer2.MediaItem.SubtitleConfiguration) obj;
            return this.uri.equals(subtitleConfiguration.uri) && com.google.android.exoplayer2.util.Util.areEqual(this.mimeType, subtitleConfiguration.mimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.language, subtitleConfiguration.language) && this.selectionFlags == subtitleConfiguration.selectionFlags && this.roleFlags == subtitleConfiguration.roleFlags && com.google.android.exoplayer2.util.Util.areEqual(this.label, subtitleConfiguration.label);
        }

        public int hashCode() {
            int iHashCode = this.uri.hashCode() * 31;
            java.lang.String str = this.mimeType;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            java.lang.String str2 = this.language;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31;
            java.lang.String str3 = this.label;
            return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
        }
    }

    public MediaItem(java.lang.String str, com.google.android.exoplayer2.MediaItem.ClippingProperties clippingProperties, com.google.android.exoplayer2.MediaItem.PlaybackProperties playbackProperties, com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration, com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        this.mediaId = str;
        this.localConfiguration = playbackProperties;
        this.playbackProperties = playbackProperties;
        this.liveConfiguration = liveConfiguration;
        this.mediaMetadata = mediaMetadata;
        this.clippingConfiguration = clippingProperties;
        this.clippingProperties = clippingProperties;
    }

    public static com.google.android.exoplayer2.MediaItem fromBundle(android.os.Bundle bundle) {
        java.lang.String str = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(bundle.getString(keyForField(0), ""));
        android.os.Bundle bundle2 = bundle.getBundle(keyForField(1));
        com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = bundle2 == null ? com.google.android.exoplayer2.MediaItem.LiveConfiguration.UNSET : (com.google.android.exoplayer2.MediaItem.LiveConfiguration) com.google.android.exoplayer2.MediaItem.LiveConfiguration.CREATOR.fromBundle(bundle2);
        android.os.Bundle bundle3 = bundle.getBundle(keyForField(2));
        com.google.android.exoplayer2.MediaMetadata mediaMetadata = bundle3 == null ? com.google.android.exoplayer2.MediaMetadata.EMPTY : (com.google.android.exoplayer2.MediaMetadata) com.google.android.exoplayer2.MediaMetadata.CREATOR.fromBundle(bundle3);
        android.os.Bundle bundle4 = bundle.getBundle(keyForField(3));
        return new com.google.android.exoplayer2.MediaItem(str, bundle4 == null ? com.google.android.exoplayer2.MediaItem.ClippingProperties.UNSET : (com.google.android.exoplayer2.MediaItem.ClippingProperties) com.google.android.exoplayer2.MediaItem.ClippingConfiguration.CREATOR.fromBundle(bundle4), null, liveConfiguration, mediaMetadata);
    }

    public static com.google.android.exoplayer2.MediaItem fromUri(android.net.Uri uri) {
        return new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).build();
    }

    public static com.google.android.exoplayer2.MediaItem fromUri(java.lang.String str) {
        return new com.google.android.exoplayer2.MediaItem.Builder().setUri(str).build();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public com.google.android.exoplayer2.MediaItem.Builder buildUpon() {
        return new com.google.android.exoplayer2.MediaItem.Builder();
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.MediaItem)) {
            return false;
        }
        com.google.android.exoplayer2.MediaItem mediaItem = (com.google.android.exoplayer2.MediaItem) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.mediaId, mediaItem.mediaId) && this.clippingConfiguration.equals(mediaItem.clippingConfiguration) && com.google.android.exoplayer2.util.Util.areEqual(this.localConfiguration, mediaItem.localConfiguration) && com.google.android.exoplayer2.util.Util.areEqual(this.liveConfiguration, mediaItem.liveConfiguration) && com.google.android.exoplayer2.util.Util.areEqual(this.mediaMetadata, mediaItem.mediaMetadata);
    }

    public int hashCode() {
        int iHashCode = this.mediaId.hashCode() * 31;
        com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = this.localConfiguration;
        return this.mediaMetadata.hashCode() + ((this.clippingConfiguration.hashCode() + ((this.liveConfiguration.hashCode() + ((iHashCode + (localConfiguration != null ? localConfiguration.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString(keyForField(0), this.mediaId);
        bundle.putBundle(keyForField(1), this.liveConfiguration.toBundle());
        bundle.putBundle(keyForField(2), this.mediaMetadata.toBundle());
        bundle.putBundle(keyForField(3), this.clippingConfiguration.toBundle());
        return bundle;
    }
}
