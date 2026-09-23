package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public interface MediaSource {

    public static final class MediaPeriodId extends com.google.android.exoplayer2.source.MediaPeriodId {
        public MediaPeriodId(com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId) {
            super(mediaPeriodId);
        }

        public MediaPeriodId(java.lang.Object obj) {
            super(obj);
        }

        public MediaPeriodId(java.lang.Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public MediaPeriodId(java.lang.Object obj, long j) {
            super(obj, j);
        }

        public MediaPeriodId(java.lang.Object obj, long j, int i) {
            super(obj, j, i);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriodId
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId copyWithPeriodUid(java.lang.Object obj) {
            return new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(super.copyWithPeriodUid(obj));
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriodId
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId copyWithWindowSequenceNumber(long j) {
            return new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(super.copyWithWindowSequenceNumber(j));
        }
    }

    public interface MediaSourceCaller {
        void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline);
    }

    void addDrmEventListener(android.os.Handler handler, com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener);

    void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener);

    com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j);

    void disable(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller);

    void enable(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller);

    com.google.android.exoplayer2.Timeline getInitialTimeline();

    com.google.android.exoplayer2.MediaItem getMediaItem();

    boolean isSingleWindow();

    void maybeThrowSourceInfoRefreshError();

    void prepareSource(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller, com.google.android.exoplayer2.upstream.TransferListener transferListener);

    void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod);

    void releaseSource(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller);

    void removeDrmEventListener(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener);

    void removeEventListener(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener);
}
