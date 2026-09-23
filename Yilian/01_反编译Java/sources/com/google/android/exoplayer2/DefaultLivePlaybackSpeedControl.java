package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class DefaultLivePlaybackSpeedControl implements com.google.android.exoplayer2.LivePlaybackSpeedControl {
    public static final float DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED = 1.03f;
    public static final float DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED = 0.97f;
    public static final long DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED = 20;
    public static final float DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR = 0.999f;
    public static final long DEFAULT_MIN_UPDATE_INTERVAL_MS = 1000;
    public static final float DEFAULT_PROPORTIONAL_CONTROL_FACTOR = 0.1f;
    public static final long DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS = 500;
    public float adjustedPlaybackSpeed;
    public long currentTargetLiveOffsetUs;
    public final float fallbackMaxPlaybackSpeed;
    public final float fallbackMinPlaybackSpeed;
    public long idealTargetLiveOffsetUs;
    public long lastPlaybackSpeedUpdateMs;
    public final long maxLiveOffsetErrorUsForUnitSpeed;
    public float maxPlaybackSpeed;
    public long maxTargetLiveOffsetUs;
    public long mediaConfigurationTargetLiveOffsetUs;
    public float minPlaybackSpeed;
    public final float minPossibleLiveOffsetSmoothingFactor;
    public long minTargetLiveOffsetUs;
    public final long minUpdateIntervalMs;
    public final float proportionalControlFactor;
    public long smoothedMinPossibleLiveOffsetDeviationUs;
    public long smoothedMinPossibleLiveOffsetUs;
    public long targetLiveOffsetOverrideUs;
    public final long targetLiveOffsetRebufferDeltaUs;

    public static final class Builder {
        public float fallbackMinPlaybackSpeed = 0.97f;
        public float fallbackMaxPlaybackSpeed = 1.03f;
        public long minUpdateIntervalMs = 1000;
        public float proportionalControlFactorUs = 1.0E-7f;
        public long maxLiveOffsetErrorUsForUnitSpeed = com.google.android.exoplayer2.util.Util.msToUs(20);
        public long targetLiveOffsetIncrementOnRebufferUs = com.google.android.exoplayer2.util.Util.msToUs(500);
        public float minPossibleLiveOffsetSmoothingFactor = 0.999f;

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl build() {
            return new com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl(this.fallbackMinPlaybackSpeed, this.fallbackMaxPlaybackSpeed, this.minUpdateIntervalMs, this.proportionalControlFactorUs, this.maxLiveOffsetErrorUsForUnitSpeed, this.targetLiveOffsetIncrementOnRebufferUs, this.minPossibleLiveOffsetSmoothingFactor);
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setFallbackMaxPlaybackSpeed(float f2) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(f2 >= 1.0f);
            this.fallbackMaxPlaybackSpeed = f2;
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setFallbackMinPlaybackSpeed(float f2) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(0.0f < f2 && f2 <= 1.0f);
            this.fallbackMinPlaybackSpeed = f2;
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setMaxLiveOffsetErrorMsForUnitSpeed(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j > 0);
            this.maxLiveOffsetErrorUsForUnitSpeed = com.google.android.exoplayer2.util.Util.msToUs(j);
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setMinPossibleLiveOffsetSmoothingFactor(float f2) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(f2 >= 0.0f && f2 < 1.0f);
            this.minPossibleLiveOffsetSmoothingFactor = f2;
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setMinUpdateIntervalMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j > 0);
            this.minUpdateIntervalMs = j;
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setProportionalControlFactor(float f2) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(f2 > 0.0f);
            this.proportionalControlFactorUs = f2 / 1000000.0f;
            return this;
        }

        public com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder setTargetLiveOffsetIncrementOnRebufferMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
            this.targetLiveOffsetIncrementOnRebufferUs = com.google.android.exoplayer2.util.Util.msToUs(j);
            return this;
        }
    }

    public DefaultLivePlaybackSpeedControl(float f2, float f3, long j, float f4, long j2, long j3, float f5) {
        this.fallbackMinPlaybackSpeed = f2;
        this.fallbackMaxPlaybackSpeed = f3;
        this.minUpdateIntervalMs = j;
        this.proportionalControlFactor = f4;
        this.maxLiveOffsetErrorUsForUnitSpeed = j2;
        this.targetLiveOffsetRebufferDeltaUs = j3;
        this.minPossibleLiveOffsetSmoothingFactor = f5;
        this.mediaConfigurationTargetLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.targetLiveOffsetOverrideUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.minTargetLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.maxTargetLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.minPlaybackSpeed = f2;
        this.maxPlaybackSpeed = f3;
        this.adjustedPlaybackSpeed = 1.0f;
        this.lastPlaybackSpeedUpdateMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.idealTargetLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.currentTargetLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetDeviationUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void adjustTargetLiveOffsetUs(long j) {
        long j2;
        long j3 = (this.smoothedMinPossibleLiveOffsetDeviationUs * 3) + this.smoothedMinPossibleLiveOffsetUs;
        if (this.currentTargetLiveOffsetUs > j3) {
            float fMsToUs = com.google.android.exoplayer2.util.Util.msToUs(this.minUpdateIntervalMs);
            long[] jArr = {j3, this.idealTargetLiveOffsetUs, this.currentTargetLiveOffsetUs - (((long) ((this.adjustedPlaybackSpeed - 1.0f) * fMsToUs)) + ((long) ((this.maxPlaybackSpeed - 1.0f) * fMsToUs)))};
            j2 = jArr[0];
            for (int i = 1; i < 3; i++) {
                if (jArr[i] > j2) {
                    j2 = jArr[i];
                }
            }
        } else {
            long jConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(j - ((long) (java.lang.Math.max(0.0f, this.adjustedPlaybackSpeed - 1.0f) / this.proportionalControlFactor)), this.currentTargetLiveOffsetUs, j3);
            this.currentTargetLiveOffsetUs = jConstrainValue;
            j2 = this.maxTargetLiveOffsetUs;
            if (j2 == com.google.android.exoplayer2.C.TIME_UNSET || jConstrainValue <= j2) {
                return;
            }
        }
        this.currentTargetLiveOffsetUs = j2;
    }

    private void maybeResetTargetLiveOffsetUs() {
        long j = this.mediaConfigurationTargetLiveOffsetUs;
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            long j2 = this.targetLiveOffsetOverrideUs;
            if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.minTargetLiveOffsetUs;
            if (j3 != com.google.android.exoplayer2.C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.maxTargetLiveOffsetUs;
            if (j4 != com.google.android.exoplayer2.C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.idealTargetLiveOffsetUs == j) {
            return;
        }
        this.idealTargetLiveOffsetUs = j;
        this.currentTargetLiveOffsetUs = j;
        this.smoothedMinPossibleLiveOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetDeviationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.lastPlaybackSpeedUpdateMs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static long smooth(long j, long j2, float f2) {
        return (long) (((1.0f - f2) * j2) + (j * f2));
    }

    private void updateSmoothedMinPossibleLiveOffsetUs(long j, long j2) {
        long jSmooth;
        long j3 = j - j2;
        long j4 = this.smoothedMinPossibleLiveOffsetUs;
        if (j4 == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.smoothedMinPossibleLiveOffsetUs = j3;
            jSmooth = 0;
        } else {
            long jMax = java.lang.Math.max(j3, smooth(j4, j3, this.minPossibleLiveOffsetSmoothingFactor));
            this.smoothedMinPossibleLiveOffsetUs = jMax;
            jSmooth = smooth(this.smoothedMinPossibleLiveOffsetDeviationUs, java.lang.Math.abs(j3 - jMax), this.minPossibleLiveOffsetSmoothingFactor);
        }
        this.smoothedMinPossibleLiveOffsetDeviationUs = jSmooth;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public float getAdjustedPlaybackSpeed(long j, long j2) {
        if (this.mediaConfigurationTargetLiveOffsetUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            return 1.0f;
        }
        updateSmoothedMinPossibleLiveOffsetUs(j, j2);
        if (this.lastPlaybackSpeedUpdateMs != com.google.android.exoplayer2.C.TIME_UNSET && android.os.SystemClock.elapsedRealtime() - this.lastPlaybackSpeedUpdateMs < this.minUpdateIntervalMs) {
            return this.adjustedPlaybackSpeed;
        }
        this.lastPlaybackSpeedUpdateMs = android.os.SystemClock.elapsedRealtime();
        adjustTargetLiveOffsetUs(j);
        long j3 = j - this.currentTargetLiveOffsetUs;
        if (java.lang.Math.abs(j3) < this.maxLiveOffsetErrorUsForUnitSpeed) {
            this.adjustedPlaybackSpeed = 1.0f;
        } else {
            this.adjustedPlaybackSpeed = com.google.android.exoplayer2.util.Util.constrainValue((this.proportionalControlFactor * j3) + 1.0f, this.minPlaybackSpeed, this.maxPlaybackSpeed);
        }
        return this.adjustedPlaybackSpeed;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public long getTargetLiveOffsetUs() {
        return this.currentTargetLiveOffsetUs;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void notifyRebuffer() {
        long j = this.currentTargetLiveOffsetUs;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return;
        }
        long j2 = j + this.targetLiveOffsetRebufferDeltaUs;
        this.currentTargetLiveOffsetUs = j2;
        long j3 = this.maxTargetLiveOffsetUs;
        if (j3 != com.google.android.exoplayer2.C.TIME_UNSET && j2 > j3) {
            this.currentTargetLiveOffsetUs = j3;
        }
        this.lastPlaybackSpeedUpdateMs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void setLiveConfiguration(com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration) {
        this.mediaConfigurationTargetLiveOffsetUs = com.google.android.exoplayer2.util.Util.msToUs(liveConfiguration.targetOffsetMs);
        this.minTargetLiveOffsetUs = com.google.android.exoplayer2.util.Util.msToUs(liveConfiguration.minOffsetMs);
        this.maxTargetLiveOffsetUs = com.google.android.exoplayer2.util.Util.msToUs(liveConfiguration.maxOffsetMs);
        float f2 = liveConfiguration.minPlaybackSpeed;
        if (f2 == -3.4028235E38f) {
            f2 = this.fallbackMinPlaybackSpeed;
        }
        this.minPlaybackSpeed = f2;
        float f3 = liveConfiguration.maxPlaybackSpeed;
        if (f3 == -3.4028235E38f) {
            f3 = this.fallbackMaxPlaybackSpeed;
        }
        this.maxPlaybackSpeed = f3;
        maybeResetTargetLiveOffsetUs();
    }

    @Override // com.google.android.exoplayer2.LivePlaybackSpeedControl
    public void setTargetLiveOffsetOverrideUs(long j) {
        this.targetLiveOffsetOverrideUs = j;
        maybeResetTargetLiveOffsetUs();
    }
}
