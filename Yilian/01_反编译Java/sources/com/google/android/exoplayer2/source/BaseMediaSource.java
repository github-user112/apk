package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public abstract class BaseMediaSource implements com.google.android.exoplayer2.source.MediaSource {
    public android.os.Looper looper;
    public com.google.android.exoplayer2.Timeline timeline;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller> mediaSourceCallers = new java.util.ArrayList<>(1);
    public final java.util.HashSet<com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller> enabledMediaSourceCallers = new java.util.HashSet<>(1);
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher = new com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher();
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher = new com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher();

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void addDrmEventListener(android.os.Handler handler, com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(drmSessionEventListener);
        this.drmEventDispatcher.addEventListener(handler, drmSessionEventListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaSourceEventListener);
        this.eventDispatcher.addEventListener(handler, mediaSourceEventListener);
    }

    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher createDrmEventDispatcher(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return this.drmEventDispatcher.withParameters(i, mediaPeriodId);
    }

    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher createDrmEventDispatcher(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return this.drmEventDispatcher.withParameters(0, mediaPeriodId);
    }

    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher createEventDispatcher(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
        return this.eventDispatcher.withParameters(i, mediaPeriodId, j);
    }

    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher createEventDispatcher(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return this.eventDispatcher.withParameters(0, mediaPeriodId, 0L);
    }

    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher createEventDispatcher(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaPeriodId);
        return this.eventDispatcher.withParameters(0, mediaPeriodId, j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void disable(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller) {
        boolean z = !this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.remove(mediaSourceCaller);
        if (z && this.enabledMediaSourceCallers.isEmpty()) {
            disableInternal();
        }
    }

    public void disableInternal() {
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void enable(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.looper);
        boolean zIsEmpty = this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.add(mediaSourceCaller);
        if (zIsEmpty) {
            enableInternal();
        }
    }

    public void enableInternal() {
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public /* synthetic */ com.google.android.exoplayer2.Timeline getInitialTimeline() {
        return e.c.a.a.n2.a0.$default$getInitialTimeline(this);
    }

    public final boolean isEnabled() {
        return !this.enabledMediaSourceCallers.isEmpty();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public /* synthetic */ boolean isSingleWindow() {
        return e.c.a.a.n2.a0.$default$isSingleWindow(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void prepareSource(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller, com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        android.os.Looper looperMyLooper = android.os.Looper.myLooper();
        android.os.Looper looper = this.looper;
        com.google.android.exoplayer2.util.Assertions.checkArgument(looper == null || looper == looperMyLooper);
        com.google.android.exoplayer2.Timeline timeline = this.timeline;
        this.mediaSourceCallers.add(mediaSourceCaller);
        if (this.looper == null) {
            this.looper = looperMyLooper;
            this.enabledMediaSourceCallers.add(mediaSourceCaller);
            prepareSourceInternal(transferListener);
        } else if (timeline != null) {
            enable(mediaSourceCaller);
            mediaSourceCaller.onSourceInfoRefreshed(this, timeline);
        }
    }

    public abstract void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener);

    public final void refreshSourceInfo(com.google.android.exoplayer2.Timeline timeline) {
        this.timeline = timeline;
        java.util.Iterator<com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller> it = this.mediaSourceCallers.iterator();
        while (it.hasNext()) {
            it.next().onSourceInfoRefreshed(this, timeline);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void releaseSource(com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller) {
        this.mediaSourceCallers.remove(mediaSourceCaller);
        if (!this.mediaSourceCallers.isEmpty()) {
            disable(mediaSourceCaller);
            return;
        }
        this.looper = null;
        this.timeline = null;
        this.enabledMediaSourceCallers.clear();
        releaseSourceInternal();
    }

    public abstract void releaseSourceInternal();

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void removeDrmEventListener(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
        this.drmEventDispatcher.removeEventListener(drmSessionEventListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void removeEventListener(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.removeEventListener(mediaSourceEventListener);
    }
}
