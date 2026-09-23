package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class DeviceInfo implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_MAX_VOLUME = 2;
    public static final int FIELD_MIN_VOLUME = 1;
    public static final int FIELD_PLAYBACK_TYPE = 0;
    public static final int PLAYBACK_TYPE_LOCAL = 0;
    public static final int PLAYBACK_TYPE_REMOTE = 1;
    public final int maxVolume;
    public final int minVolume;
    public final int playbackType;
    public static final com.google.android.exoplayer2.DeviceInfo UNKNOWN = new com.google.android.exoplayer2.DeviceInfo(0, 0, 0);
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.DeviceInfo> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.e
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.DeviceInfo.a(bundle);
        }
    };

    @java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE_USE})
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface PlaybackType {
    }

    public DeviceInfo(int i, int i2, int i3) {
        this.playbackType = i;
        this.minVolume = i2;
        this.maxVolume = i3;
    }

    public static /* synthetic */ com.google.android.exoplayer2.DeviceInfo a(android.os.Bundle bundle) {
        return new com.google.android.exoplayer2.DeviceInfo(bundle.getInt(keyForField(0), 0), bundle.getInt(keyForField(1), 0), bundle.getInt(keyForField(2), 0));
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.DeviceInfo)) {
            return false;
        }
        com.google.android.exoplayer2.DeviceInfo deviceInfo = (com.google.android.exoplayer2.DeviceInfo) obj;
        return this.playbackType == deviceInfo.playbackType && this.minVolume == deviceInfo.minVolume && this.maxVolume == deviceInfo.maxVolume;
    }

    public int hashCode() {
        return ((((527 + this.playbackType) * 31) + this.minVolume) * 31) + this.maxVolume;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), this.playbackType);
        bundle.putInt(keyForField(1), this.minVolume);
        bundle.putInt(keyForField(2), this.maxVolume);
        return bundle;
    }
}
