package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public abstract class CompositeMediaSource<T> extends com.google.android.exoplayer2.source.BaseMediaSource {
    public final java.util.HashMap<T, com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<T>> childSources = new java.util.HashMap<>();
    public android.os.Handler eventHandler;
    public com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;

    public final class ForwardingEventListener implements com.google.android.exoplayer2.source.MediaSourceEventListener, com.google.android.exoplayer2.drm.DrmSessionEventListener {
        public com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;

        @com.google.android.exoplayer2.util.UnknownNull
        public final T id;
        public com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;

        public ForwardingEventListener(@com.google.android.exoplayer2.util.UnknownNull T t) {
            this.mediaSourceEventDispatcher = com.google.android.exoplayer2.source.CompositeMediaSource.this.createEventDispatcher(null);
            this.drmEventDispatcher = com.google.android.exoplayer2.source.CompositeMediaSource.this.createDrmEventDispatcher(null);
            this.id = t;
        }

        private boolean maybeUpdateEventDispatcher(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdForChildMediaPeriodId;
            if (mediaPeriodId != null) {
                mediaPeriodIdForChildMediaPeriodId = com.google.android.exoplayer2.source.CompositeMediaSource.this.getMediaPeriodIdForChildMediaPeriodId(this.id, mediaPeriodId);
                if (mediaPeriodIdForChildMediaPeriodId == null) {
                    return false;
                }
            } else {
                mediaPeriodIdForChildMediaPeriodId = null;
            }
            int windowIndexForChildWindowIndex = com.google.android.exoplayer2.source.CompositeMediaSource.this.getWindowIndexForChildWindowIndex(this.id, i);
            com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher = this.mediaSourceEventDispatcher;
            if (eventDispatcher.windowIndex != windowIndexForChildWindowIndex || !com.google.android.exoplayer2.util.Util.areEqual(eventDispatcher.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                this.mediaSourceEventDispatcher = com.google.android.exoplayer2.source.CompositeMediaSource.this.createEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId, 0L);
            }
            com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.drmEventDispatcher;
            if (eventDispatcher2.windowIndex == windowIndexForChildWindowIndex && com.google.android.exoplayer2.util.Util.areEqual(eventDispatcher2.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                return true;
            }
            this.drmEventDispatcher = com.google.android.exoplayer2.source.CompositeMediaSource.this.createDrmEventDispatcher(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId);
            return true;
        }

        private com.google.android.exoplayer2.source.MediaLoadData maybeUpdateMediaLoadData(com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            long mediaTimeForChildMediaTime = com.google.android.exoplayer2.source.CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.id, mediaLoadData.mediaStartTimeMs);
            long mediaTimeForChildMediaTime2 = com.google.android.exoplayer2.source.CompositeMediaSource.this.getMediaTimeForChildMediaTime(this.id, mediaLoadData.mediaEndTimeMs);
            return (mediaTimeForChildMediaTime == mediaLoadData.mediaStartTimeMs && mediaTimeForChildMediaTime2 == mediaLoadData.mediaEndTimeMs) ? mediaLoadData : new com.google.android.exoplayer2.source.MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, mediaTimeForChildMediaTime, mediaTimeForChildMediaTime2);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.downstreamFormatChanged(maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysLoaded();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysRemoved();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmKeysRestored();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        @java.lang.Deprecated
        public /* synthetic */ void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            e.c.a.a.h2.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, int i2) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionAcquired(i2);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.lang.Exception exc) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionManagerError(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionReleased(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.drmEventDispatcher.drmSessionReleased();
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCanceled(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadError(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData), iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadStarted(loadEventInfo, maybeUpdateMediaLoadData(mediaLoadData));
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.upstreamDiscarded(maybeUpdateMediaLoadData(mediaLoadData));
            }
        }
    }

    public static final class MediaSourceAndListener<T> {
        public final com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller caller;
        public final com.google.android.exoplayer2.source.CompositeMediaSource<T>.ForwardingEventListener eventListener;
        public final com.google.android.exoplayer2.source.MediaSource mediaSource;

        public MediaSourceAndListener(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller, com.google.android.exoplayer2.source.CompositeMediaSource<T>.ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    public final void disableChildSource(@com.google.android.exoplayer2.util.UnknownNull T t) {
        com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener mediaSourceAndListener = (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.childSources.get(t));
        mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void disableInternal() {
        for (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
        }
    }

    public final void enableChildSource(@com.google.android.exoplayer2.util.UnknownNull T t) {
        com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener mediaSourceAndListener = (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.childSources.get(t));
        mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void enableInternal() {
        for (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
        }
    }

    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(@com.google.android.exoplayer2.util.UnknownNull T t, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    public long getMediaTimeForChildMediaTime(@com.google.android.exoplayer2.util.UnknownNull T t, long j) {
        return j;
    }

    public int getWindowIndexForChildWindowIndex(@com.google.android.exoplayer2.util.UnknownNull T t, int i) {
        return i;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        java.util.Iterator<com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<T>> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().mediaSource.maybeThrowSourceInfoRefreshError();
        }
    }

    /* renamed from: onChildSourceInfoRefreshed, reason: merged with bridge method [inline-methods] */
    public abstract void a(@com.google.android.exoplayer2.util.UnknownNull T t, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline);

    public final void prepareChildSource(@com.google.android.exoplayer2.util.UnknownNull final T t, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(!this.childSources.containsKey(t));
        com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller = new com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller() { // from class: e.c.a.a.n2.a
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource2, com.google.android.exoplayer2.Timeline timeline) {
                this.a.a(t, mediaSource2, timeline);
            }
        };
        com.google.android.exoplayer2.source.CompositeMediaSource.ForwardingEventListener forwardingEventListener = new com.google.android.exoplayer2.source.CompositeMediaSource.ForwardingEventListener(t);
        this.childSources.put(t, new com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<>(mediaSource, mediaSourceCaller, forwardingEventListener));
        mediaSource.addEventListener((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.eventHandler), forwardingEventListener);
        mediaSource.addDrmEventListener((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.eventHandler), forwardingEventListener);
        mediaSource.prepareSource(mediaSourceCaller, this.mediaTransferListener);
        if (isEnabled()) {
            return;
        }
        mediaSource.disable(mediaSourceCaller);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.eventHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
    }

    public final void releaseChildSource(@com.google.android.exoplayer2.util.UnknownNull T t) {
        com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener mediaSourceAndListener = (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.childSources.remove(t));
        mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
        mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
        mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        for (com.google.android.exoplayer2.source.CompositeMediaSource.MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
    }
}
