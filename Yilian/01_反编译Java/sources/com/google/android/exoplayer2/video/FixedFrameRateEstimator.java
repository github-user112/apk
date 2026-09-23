package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class FixedFrameRateEstimator {
    public static final int CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC = 15;
    public static final long MAX_MATCHING_FRAME_DIFFERENCE_NS = 1000000;
    public boolean candidateMatcherActive;
    public int framesWithoutSyncCount;
    public boolean switchToCandidateMatcherWhenSynced;
    public com.google.android.exoplayer2.video.FixedFrameRateEstimator.Matcher currentMatcher = new com.google.android.exoplayer2.video.FixedFrameRateEstimator.Matcher();
    public com.google.android.exoplayer2.video.FixedFrameRateEstimator.Matcher candidateMatcher = new com.google.android.exoplayer2.video.FixedFrameRateEstimator.Matcher();
    public long lastFramePresentationTimeNs = com.google.android.exoplayer2.C.TIME_UNSET;

    public static final class Matcher {
        public long firstFrameDurationNs;
        public long firstFramePresentationTimeNs;
        public long frameCount;
        public long lastFramePresentationTimeNs;
        public long matchingFrameCount;
        public long matchingFrameDurationSumNs;
        public int recentFrameOutlierCount;
        public final boolean[] recentFrameOutlierFlags = new boolean[15];

        public static int getRecentFrameOutlierIndex(long j) {
            return (int) (j % 15);
        }

        public long getFrameDurationNs() {
            long j = this.matchingFrameCount;
            if (j == 0) {
                return 0L;
            }
            return this.matchingFrameDurationSumNs / j;
        }

        public long getMatchingFrameDurationSumNs() {
            return this.matchingFrameDurationSumNs;
        }

        public boolean isLastFrameOutlier() {
            long j = this.frameCount;
            if (j == 0) {
                return false;
            }
            return this.recentFrameOutlierFlags[getRecentFrameOutlierIndex(j - 1)];
        }

        public boolean isSynced() {
            return this.frameCount > 15 && this.recentFrameOutlierCount == 0;
        }

        public void onNextFrame(long j) {
            int i;
            long j2 = this.frameCount;
            if (j2 == 0) {
                this.firstFramePresentationTimeNs = j;
            } else if (j2 == 1) {
                long j3 = j - this.firstFramePresentationTimeNs;
                this.firstFrameDurationNs = j3;
                this.matchingFrameDurationSumNs = j3;
                this.matchingFrameCount = 1L;
            } else {
                long j4 = j - this.lastFramePresentationTimeNs;
                int recentFrameOutlierIndex = getRecentFrameOutlierIndex(j2);
                if (java.lang.Math.abs(j4 - this.firstFrameDurationNs) <= 1000000) {
                    this.matchingFrameCount++;
                    this.matchingFrameDurationSumNs += j4;
                    boolean[] zArr = this.recentFrameOutlierFlags;
                    if (zArr[recentFrameOutlierIndex]) {
                        zArr[recentFrameOutlierIndex] = false;
                        i = this.recentFrameOutlierCount - 1;
                        this.recentFrameOutlierCount = i;
                    }
                } else {
                    boolean[] zArr2 = this.recentFrameOutlierFlags;
                    if (!zArr2[recentFrameOutlierIndex]) {
                        zArr2[recentFrameOutlierIndex] = true;
                        i = this.recentFrameOutlierCount + 1;
                        this.recentFrameOutlierCount = i;
                    }
                }
            }
            this.frameCount++;
            this.lastFramePresentationTimeNs = j;
        }

        public void reset() {
            this.frameCount = 0L;
            this.matchingFrameCount = 0L;
            this.matchingFrameDurationSumNs = 0L;
            this.recentFrameOutlierCount = 0;
            java.util.Arrays.fill(this.recentFrameOutlierFlags, false);
        }
    }

    public long getFrameDurationNs() {
        return isSynced() ? this.currentMatcher.getFrameDurationNs() : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public float getFrameRate() {
        if (!isSynced()) {
            return -1.0f;
        }
        double frameDurationNs = this.currentMatcher.getFrameDurationNs();
        java.lang.Double.isNaN(frameDurationNs);
        return (float) (1.0E9d / frameDurationNs);
    }

    public int getFramesWithoutSyncCount() {
        return this.framesWithoutSyncCount;
    }

    public long getMatchingFrameDurationSumNs() {
        return isSynced() ? this.currentMatcher.getMatchingFrameDurationSumNs() : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public boolean isSynced() {
        return this.currentMatcher.isSynced();
    }

    public void onNextFrame(long j) {
        this.currentMatcher.onNextFrame(j);
        if (this.currentMatcher.isSynced() && !this.switchToCandidateMatcherWhenSynced) {
            this.candidateMatcherActive = false;
        } else if (this.lastFramePresentationTimeNs != com.google.android.exoplayer2.C.TIME_UNSET) {
            if (!this.candidateMatcherActive || this.candidateMatcher.isLastFrameOutlier()) {
                this.candidateMatcher.reset();
                this.candidateMatcher.onNextFrame(this.lastFramePresentationTimeNs);
            }
            this.candidateMatcherActive = true;
            this.candidateMatcher.onNextFrame(j);
        }
        if (this.candidateMatcherActive && this.candidateMatcher.isSynced()) {
            com.google.android.exoplayer2.video.FixedFrameRateEstimator.Matcher matcher = this.currentMatcher;
            this.currentMatcher = this.candidateMatcher;
            this.candidateMatcher = matcher;
            this.candidateMatcherActive = false;
            this.switchToCandidateMatcherWhenSynced = false;
        }
        this.lastFramePresentationTimeNs = j;
        this.framesWithoutSyncCount = this.currentMatcher.isSynced() ? 0 : this.framesWithoutSyncCount + 1;
    }

    public void reset() {
        this.currentMatcher.reset();
        this.candidateMatcher.reset();
        this.candidateMatcherActive = false;
        this.lastFramePresentationTimeNs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.framesWithoutSyncCount = 0;
    }
}
