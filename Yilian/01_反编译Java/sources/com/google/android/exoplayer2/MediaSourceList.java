package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MediaSourceList {
    public static final java.lang.String TAG = "MediaSourceList";
    public boolean isPrepared;
    public final com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener mediaSourceListInfoListener;
    public com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;
    public com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder = new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(0);
    public final java.util.IdentityHashMap<com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> mediaSourceByMediaPeriod = new java.util.IdentityHashMap<>();
    public final java.util.Map<java.lang.Object, com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> mediaSourceByUid = new java.util.HashMap();
    public final java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> mediaSourceHolders = new java.util.ArrayList();
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher = new com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher();
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher = new com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher();
    public final java.util.HashMap<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder, com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener> childSources = new java.util.HashMap<>();
    public final java.util.Set<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> enabledMediaSourceHolders = new java.util.HashSet();

    public final class ForwardingEventListener implements com.google.android.exoplayer2.source.MediaSourceEventListener, com.google.android.exoplayer2.drm.DrmSessionEventListener {
        public com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
        public final com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder id;
        public com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;

        public ForwardingEventListener(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder) {
            this.mediaSourceEventDispatcher = com.google.android.exoplayer2.MediaSourceList.this.mediaSourceEventDispatcher;
            this.drmEventDispatcher = com.google.android.exoplayer2.MediaSourceList.this.drmEventDispatcher;
            this.id = mediaSourceHolder;
        }

        private boolean maybeUpdateEventDispatcher(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdForChildMediaPeriodId;
            if (mediaPeriodId != null) {
                mediaPeriodIdForChildMediaPeriodId = com.google.android.exoplayer2.MediaSourceList.getMediaPeriodIdForChildMediaPeriodId(this.id, mediaPeriodId);
                if (mediaPeriodIdForChildMediaPeriodId == null) {
                    return false;
                }
            } else {
                mediaPeriodIdForChildMediaPeriodId = null;
            }
            int windowIndexForChildWindowIndex = com.google.android.exoplayer2.MediaSourceList.getWindowIndexForChildWindowIndex(this.id, i);
            com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher = this.mediaSourceEventDispatcher;
            if (eventDispatcher.windowIndex != windowIndexForChildWindowIndex || !com.google.android.exoplayer2.util.Util.areEqual(eventDispatcher.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                this.mediaSourceEventDispatcher = com.google.android.exoplayer2.MediaSourceList.this.mediaSourceEventDispatcher.withParameters(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId, 0L);
            }
            com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.drmEventDispatcher;
            if (eventDispatcher2.windowIndex == windowIndexForChildWindowIndex && com.google.android.exoplayer2.util.Util.areEqual(eventDispatcher2.mediaPeriodId, mediaPeriodIdForChildMediaPeriodId)) {
                return true;
            }
            this.drmEventDispatcher = com.google.android.exoplayer2.MediaSourceList.this.drmEventDispatcher.withParameters(windowIndexForChildWindowIndex, mediaPeriodIdForChildMediaPeriodId);
            return true;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.downstreamFormatChanged(mediaLoadData);
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
                this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadError(loadEventInfo, mediaLoadData, iOException, z);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.loadStarted(loadEventInfo, mediaLoadData);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (maybeUpdateEventDispatcher(i, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.upstreamDiscarded(mediaLoadData);
            }
        }
    }

    public static final class MediaSourceAndListener {
        public final com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller caller;
        public final com.google.android.exoplayer2.MediaSourceList.ForwardingEventListener eventListener;
        public final com.google.android.exoplayer2.source.MediaSource mediaSource;

        public MediaSourceAndListener(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller, com.google.android.exoplayer2.MediaSourceList.ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    public static final class MediaSourceHolder implements com.google.android.exoplayer2.MediaSourceInfoHolder {
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final com.google.android.exoplayer2.source.MaskingMediaSource mediaSource;
        public final java.util.List<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> activeMediaPeriodIds = new java.util.ArrayList();
        public final java.lang.Object uid = new java.lang.Object();

        public MediaSourceHolder(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z) {
            this.mediaSource = new com.google.android.exoplayer2.source.MaskingMediaSource(mediaSource, z);
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public com.google.android.exoplayer2.Timeline getTimeline() {
            return this.mediaSource.getTimeline();
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public java.lang.Object getUid() {
            return this.uid;
        }

        public void reset(int i) {
            this.firstWindowIndexInChild = i;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }
    }

    public interface MediaSourceListInfoRefreshListener {
        void onPlaylistUpdateRequested();
    }

    public MediaSourceList(com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector, android.os.Handler handler) {
        this.mediaSourceListInfoListener = mediaSourceListInfoRefreshListener;
        if (analyticsCollector != null) {
            this.mediaSourceEventDispatcher.addEventListener(handler, analyticsCollector);
            this.drmEventDispatcher.addEventListener(handler, analyticsCollector);
        }
    }

    private void correctOffsets(int i, int i2) {
        while (i < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i).firstWindowIndexInChild += i2;
            i++;
        }
    }

    private void disableChildSource(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder) {
        com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
        }
    }

    private void disableUnusedMediaSources() {
        java.util.Iterator<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                disableChildSource(next);
                it.remove();
            }
        }
    }

    private void enableMediaSource(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder) {
        this.enabledMediaSourceHolders.add(mediaSourceHolder);
        com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
        }
    }

    public static java.lang.Object getChildPeriodUid(java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(obj);
    }

    public static com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < mediaSourceHolder.activeMediaPeriodIds.size(); i++) {
            if (mediaSourceHolder.activeMediaPeriodIds.get(i).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(getPeriodUid(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    public static java.lang.Object getMediaSourceHolderUid(java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    public static java.lang.Object getPeriodUid(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder, java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getConcatenatedUid(mediaSourceHolder.uid, obj);
    }

    public static int getWindowIndexForChildWindowIndex(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder, int i) {
        return i + mediaSourceHolder.firstWindowIndexInChild;
    }

    private void maybeReleaseChildSource(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.activeMediaPeriodIds.isEmpty()) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener mediaSourceAndListener = (com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.childSources.remove(mediaSourceHolder));
            mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
            this.enabledMediaSourceHolders.remove(mediaSourceHolder);
        }
    }

    private void prepareChildSource(com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder) {
        com.google.android.exoplayer2.source.MaskingMediaSource maskingMediaSource = mediaSourceHolder.mediaSource;
        com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller mediaSourceCaller = new com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller() { // from class: e.c.a.a.k1
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
                this.a.a(mediaSource, timeline);
            }
        };
        com.google.android.exoplayer2.MediaSourceList.ForwardingEventListener forwardingEventListener = new com.google.android.exoplayer2.MediaSourceList.ForwardingEventListener(mediaSourceHolder);
        this.childSources.put(mediaSourceHolder, new com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener(maskingMediaSource, mediaSourceCaller, forwardingEventListener));
        maskingMediaSource.addEventListener(com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper(), forwardingEventListener);
        maskingMediaSource.addDrmEventListener(com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper(), forwardingEventListener);
        maskingMediaSource.prepareSource(mediaSourceCaller, this.mediaTransferListener);
    }

    private void removeMediaSourcesInternal(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceHolders.remove(i3);
            this.mediaSourceByUid.remove(mediaSourceHolderRemove.uid);
            correctOffsets(i3, -mediaSourceHolderRemove.mediaSource.getTimeline().getWindowCount());
            mediaSourceHolderRemove.isRemoved = true;
            if (this.isPrepared) {
                maybeReleaseChildSource(mediaSourceHolderRemove);
            }
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        this.mediaSourceListInfoListener.onPlaylistUpdateRequested();
    }

    public com.google.android.exoplayer2.Timeline addMediaSources(int i, java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> list, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        if (!list.isEmpty()) {
            this.shuffleOrder = shuffleOrder;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = list.get(i2 - i);
                if (i2 > 0) {
                    com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i2 - 1);
                    mediaSourceHolder.reset(mediaSourceHolder2.mediaSource.getTimeline().getWindowCount() + mediaSourceHolder2.firstWindowIndexInChild);
                } else {
                    mediaSourceHolder.reset(0);
                }
                correctOffsets(i2, mediaSourceHolder.mediaSource.getTimeline().getWindowCount());
                this.mediaSourceHolders.add(i2, mediaSourceHolder);
                this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
                if (this.isPrepared) {
                    prepareChildSource(mediaSourceHolder);
                    if (this.mediaSourceByMediaPeriod.isEmpty()) {
                        this.enabledMediaSourceHolders.add(mediaSourceHolder);
                    } else {
                        disableChildSource(mediaSourceHolder);
                    }
                }
            }
        }
        return createTimeline();
    }

    public com.google.android.exoplayer2.Timeline clear(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        if (shuffleOrder == null) {
            shuffleOrder = this.shuffleOrder.cloneAndClear();
        }
        this.shuffleOrder = shuffleOrder;
        removeMediaSourcesInternal(0, getSize());
        return createTimeline();
    }

    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        java.lang.Object mediaSourceHolderUid = getMediaSourceHolderUid(mediaPeriodId.periodUid);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdCopyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaPeriodId.periodUid));
        com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = (com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSourceByUid.get(mediaSourceHolderUid));
        enableMediaSource(mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriodIds.add(mediaPeriodIdCopyWithPeriodUid);
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriodCreatePeriod = mediaSourceHolder.mediaSource.createPeriod(mediaPeriodIdCopyWithPeriodUid, allocator, j);
        this.mediaSourceByMediaPeriod.put(maskingMediaPeriodCreatePeriod, mediaSourceHolder);
        disableUnusedMediaSources();
        return maskingMediaPeriodCreatePeriod;
    }

    public com.google.android.exoplayer2.Timeline createTimeline() {
        if (this.mediaSourceHolders.isEmpty()) {
            return com.google.android.exoplayer2.Timeline.EMPTY;
        }
        int windowCount = 0;
        for (int i = 0; i < this.mediaSourceHolders.size(); i++) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i);
            mediaSourceHolder.firstWindowIndexInChild = windowCount;
            windowCount += mediaSourceHolder.mediaSource.getTimeline().getWindowCount();
        }
        return new com.google.android.exoplayer2.PlaylistTimeline(this.mediaSourceHolders, this.shuffleOrder);
    }

    public int getSize() {
        return this.mediaSourceHolders.size();
    }

    public boolean isPrepared() {
        return this.isPrepared;
    }

    public com.google.android.exoplayer2.Timeline moveMediaSource(int i, int i2, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        return moveMediaSourceRange(i, i + 1, i2, shuffleOrder);
    }

    public com.google.android.exoplayer2.Timeline moveMediaSourceRange(int i, int i2, int i3, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= getSize() && i3 >= 0);
        this.shuffleOrder = shuffleOrder;
        if (i == i2 || i == i3) {
            return createTimeline();
        }
        int iMin = java.lang.Math.min(i, i3);
        int iMax = java.lang.Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int windowCount = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        com.google.android.exoplayer2.util.Util.moveItems(this.mediaSourceHolders, i, i2, i3);
        while (iMin <= iMax) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(iMin);
            mediaSourceHolder.firstWindowIndexInChild = windowCount;
            windowCount += mediaSourceHolder.mediaSource.getTimeline().getWindowCount();
            iMin++;
        }
        return createTimeline();
    }

    public void prepare(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isPrepared);
        this.mediaTransferListener = transferListener;
        for (int i = 0; i < this.mediaSourceHolders.size(); i++) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i);
            prepareChildSource(mediaSourceHolder);
            this.enabledMediaSourceHolders.add(mediaSourceHolder);
        }
        this.isPrepared = true;
    }

    public void release() {
        for (com.google.android.exoplayer2.MediaSourceList.MediaSourceAndListener mediaSourceAndListener : this.childSources.values()) {
            try {
                mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            } catch (java.lang.RuntimeException e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Failed to release child source.", e2);
            }
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
        this.enabledMediaSourceHolders.clear();
        this.isPrepared = false;
    }

    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = (com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.releasePeriod(mediaPeriod);
        mediaSourceHolder.activeMediaPeriodIds.remove(((com.google.android.exoplayer2.source.MaskingMediaPeriod) mediaPeriod).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            disableUnusedMediaSources();
        }
        maybeReleaseChildSource(mediaSourceHolder);
    }

    public com.google.android.exoplayer2.Timeline removeMediaSourceRange(int i, int i2, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= getSize());
        this.shuffleOrder = shuffleOrder;
        removeMediaSourcesInternal(i, i2);
        return createTimeline();
    }

    public com.google.android.exoplayer2.Timeline setMediaSources(java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> list, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        removeMediaSourcesInternal(0, this.mediaSourceHolders.size());
        return addMediaSources(this.mediaSourceHolders.size(), list, shuffleOrder);
    }

    public com.google.android.exoplayer2.Timeline setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        int size = getSize();
        if (shuffleOrder.getLength() != size) {
            shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, size);
        }
        this.shuffleOrder = shuffleOrder;
        return createTimeline();
    }
}
