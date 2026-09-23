package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public interface LoadErrorHandlingPolicy {
    public static final int FALLBACK_TYPE_LOCATION = 1;
    public static final int FALLBACK_TYPE_TRACK = 2;

    public static final class FallbackOptions {
        public final int numberOfExcludedLocations;
        public final int numberOfExcludedTracks;
        public final int numberOfLocations;
        public final int numberOfTracks;

        public FallbackOptions(int i, int i2, int i3, int i4) {
            this.numberOfLocations = i;
            this.numberOfExcludedLocations = i2;
            this.numberOfTracks = i3;
            this.numberOfExcludedTracks = i4;
        }

        public boolean isFallbackAvailable(int i) {
            if (i == 1) {
                if (this.numberOfLocations - this.numberOfExcludedLocations <= 1) {
                    return false;
                }
            } else if (this.numberOfTracks - this.numberOfExcludedTracks <= 1) {
                return false;
            }
            return true;
        }
    }

    public static final class FallbackSelection {
        public final long exclusionDurationMs;
        public final int type;

        public FallbackSelection(int i, long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
            this.type = i;
            this.exclusionDurationMs = j;
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface FallbackType {
    }

    public static final class LoadErrorInfo {
        public final int errorCount;
        public final java.io.IOException exception;
        public final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo;
        public final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData;

        public LoadErrorInfo(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, int i) {
            this.loadEventInfo = loadEventInfo;
            this.mediaLoadData = mediaLoadData;
            this.exception = iOException;
            this.errorCount = i;
        }
    }

    com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection getFallbackSelectionFor(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions fallbackOptions, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo);

    int getMinimumLoadableRetryCount(int i);

    long getRetryDelayMsFor(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo);

    void onLoadTaskConcluded(long j);
}
