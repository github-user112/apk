package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class PlaybackParameters implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_PITCH = 1;
    public static final int FIELD_SPEED = 0;
    public final float pitch;
    public final int scaledUsPerMs;
    public final float speed;
    public static final com.google.android.exoplayer2.PlaybackParameters DEFAULT = new com.google.android.exoplayer2.PlaybackParameters(1.0f);
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.PlaybackParameters> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.m1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.PlaybackParameters.a(bundle);
        }
    };

    public PlaybackParameters(float f2) {
        this(f2, 1.0f);
    }

    public PlaybackParameters(float f2, float f3) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(f2 > 0.0f);
        com.google.android.exoplayer2.util.Assertions.checkArgument(f3 > 0.0f);
        this.speed = f2;
        this.pitch = f3;
        this.scaledUsPerMs = java.lang.Math.round(f2 * 1000.0f);
    }

    public static /* synthetic */ com.google.android.exoplayer2.PlaybackParameters a(android.os.Bundle bundle) {
        return new com.google.android.exoplayer2.PlaybackParameters(bundle.getFloat(keyForField(0), 1.0f), bundle.getFloat(keyForField(1), 1.0f));
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.PlaybackParameters.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.PlaybackParameters playbackParameters = (com.google.android.exoplayer2.PlaybackParameters) obj;
        return this.speed == playbackParameters.speed && this.pitch == playbackParameters.pitch;
    }

    public long getMediaTimeUsForPlayoutTimeMs(long j) {
        return j * this.scaledUsPerMs;
    }

    public int hashCode() {
        return java.lang.Float.floatToRawIntBits(this.pitch) + ((java.lang.Float.floatToRawIntBits(this.speed) + 527) * 31);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putFloat(keyForField(0), this.speed);
        bundle.putFloat(keyForField(1), this.pitch);
        return bundle;
    }

    public java.lang.String toString() {
        return com.google.android.exoplayer2.util.Util.formatInvariant("PlaybackParameters(speed=%.2f, pitch=%.2f)", java.lang.Float.valueOf(this.speed), java.lang.Float.valueOf(this.pitch));
    }

    public com.google.android.exoplayer2.PlaybackParameters withSpeed(float f2) {
        return new com.google.android.exoplayer2.PlaybackParameters(f2, this.pitch);
    }
}
