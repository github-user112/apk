package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class ConcatenatingMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> {
    public static final com.google.android.exoplayer2.MediaItem EMPTY_MEDIA_ITEM = new com.google.android.exoplayer2.MediaItem.Builder().setUri(android.net.Uri.EMPTY).build();
    public static final int MSG_ADD = 0;
    public static final int MSG_MOVE = 2;
    public static final int MSG_ON_COMPLETION = 5;
    public static final int MSG_REMOVE = 1;
    public static final int MSG_SET_SHUFFLE_ORDER = 3;
    public static final int MSG_UPDATE_TIMELINE = 4;
    public final java.util.Set<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> enabledMediaSourceHolders;
    public final boolean isAtomic;
    public final java.util.IdentityHashMap<com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> mediaSourceByMediaPeriod;
    public final java.util.Map<java.lang.Object, com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> mediaSourceByUid;
    public final java.util.List<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> mediaSourceHolders;
    public final java.util.List<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> mediaSourcesPublic;
    public java.util.Set<com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable> nextTimelineUpdateOnCompletionActions;
    public final java.util.Set<com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable> pendingOnCompletionActions;
    public android.os.Handler playbackThreadHandler;
    public com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder;
    public boolean timelineUpdateScheduled;
    public final boolean useLazyPreparation;

    public static final class ConcatenatedTimeline extends com.google.android.exoplayer2.AbstractConcatenatedTimeline {
        public final java.util.HashMap<java.lang.Object, java.lang.Integer> childIndexByUid;
        public final int[] firstPeriodInChildIndices;
        public final int[] firstWindowInChildIndices;
        public final int periodCount;
        public final com.google.android.exoplayer2.Timeline[] timelines;
        public final java.lang.Object[] uids;
        public final int windowCount;

        public ConcatenatedTimeline(java.util.Collection<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> collection, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, boolean z) {
            super(z, shuffleOrder);
            int size = collection.size();
            this.firstPeriodInChildIndices = new int[size];
            this.firstWindowInChildIndices = new int[size];
            this.timelines = new com.google.android.exoplayer2.Timeline[size];
            this.uids = new java.lang.Object[size];
            this.childIndexByUid = new java.util.HashMap<>();
            int windowCount = 0;
            int periodCount = 0;
            int i = 0;
            for (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder : collection) {
                this.timelines[i] = mediaSourceHolder.mediaSource.getTimeline();
                this.firstWindowInChildIndices[i] = windowCount;
                this.firstPeriodInChildIndices[i] = periodCount;
                windowCount += this.timelines[i].getWindowCount();
                periodCount += this.timelines[i].getPeriodCount();
                java.lang.Object[] objArr = this.uids;
                objArr[i] = mediaSourceHolder.uid;
                this.childIndexByUid.put(objArr[i], java.lang.Integer.valueOf(i));
                i++;
            }
            this.windowCount = windowCount;
            this.periodCount = periodCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(java.lang.Object obj) {
            java.lang.Integer num = this.childIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return com.google.android.exoplayer2.util.Util.binarySearchFloor(this.firstPeriodInChildIndices, i + 1, false, false);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return com.google.android.exoplayer2.util.Util.binarySearchFloor(this.firstWindowInChildIndices, i + 1, false, false);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public java.lang.Object getChildUidByChildIndex(int i) {
            return this.uids[i];
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return this.firstPeriodInChildIndices[i];
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return this.firstWindowInChildIndices[i];
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.periodCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public com.google.android.exoplayer2.Timeline getTimelineByChildIndex(int i) {
            return this.timelines[i];
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.windowCount;
        }
    }

    public static final class FakeMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource {
        public FakeMediaSource() {
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public com.google.android.exoplayer2.MediaItem getMediaItem() {
            return com.google.android.exoplayer2.source.ConcatenatingMediaSource.EMPTY_MEDIA_ITEM;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public void maybeThrowSourceInfoRefreshError() {
        }

        @Override // com.google.android.exoplayer2.source.BaseMediaSource
        public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        }

        @Override // com.google.android.exoplayer2.source.MediaSource
        public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        }

        @Override // com.google.android.exoplayer2.source.BaseMediaSource
        public void releaseSourceInternal() {
        }
    }

    public static final class HandlerAndRunnable {
        public final android.os.Handler handler;
        public final java.lang.Runnable runnable;

        public HandlerAndRunnable(android.os.Handler handler, java.lang.Runnable runnable) {
            this.handler = handler;
            this.runnable = runnable;
        }

        public void dispatch() {
            this.handler.post(this.runnable);
        }
    }

    public static final class MediaSourceHolder {
        public int childIndex;
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final com.google.android.exoplayer2.source.MaskingMediaSource mediaSource;
        public final java.util.List<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> activeMediaPeriodIds = new java.util.ArrayList();
        public final java.lang.Object uid = new java.lang.Object();

        public MediaSourceHolder(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z) {
            this.mediaSource = new com.google.android.exoplayer2.source.MaskingMediaSource(mediaSource, z);
        }

        public void reset(int i, int i2) {
            this.childIndex = i;
            this.firstWindowIndexInChild = i2;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }
    }

    public static final class MessageData<T> {
        public final T customData;
        public final int index;
        public final com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable onCompletionAction;

        public MessageData(int i, T t, com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable handlerAndRunnable) {
            this.index = i;
            this.customData = t;
            this.onCompletionAction = handlerAndRunnable;
        }
    }

    public ConcatenatingMediaSource(boolean z, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(z, false, shuffleOrder, mediaSourceArr);
    }

    public ConcatenatingMediaSource(boolean z, boolean z2, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        for (com.google.android.exoplayer2.source.MediaSource mediaSource : mediaSourceArr) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaSource);
        }
        this.shuffleOrder = shuffleOrder.getLength() > 0 ? shuffleOrder.cloneAndClear() : shuffleOrder;
        this.mediaSourceByMediaPeriod = new java.util.IdentityHashMap<>();
        this.mediaSourceByUid = new java.util.HashMap();
        this.mediaSourcesPublic = new java.util.ArrayList();
        this.mediaSourceHolders = new java.util.ArrayList();
        this.nextTimelineUpdateOnCompletionActions = new java.util.HashSet();
        this.pendingOnCompletionActions = new java.util.HashSet();
        this.enabledMediaSourceHolders = new java.util.HashSet();
        this.isAtomic = z;
        this.useLazyPreparation = z2;
        addMediaSources(java.util.Arrays.asList(mediaSourceArr));
    }

    public ConcatenatingMediaSource(boolean z, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(z, new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(0), mediaSourceArr);
    }

    public ConcatenatingMediaSource(com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    private void addMediaSourceInternal(int i, com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder) {
        if (i > 0) {
            com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i - 1);
            mediaSourceHolder.reset(i, mediaSourceHolder2.mediaSource.getTimeline().getWindowCount() + mediaSourceHolder2.firstWindowIndexInChild);
        } else {
            mediaSourceHolder.reset(i, 0);
        }
        correctOffsets(i, 1, mediaSourceHolder.mediaSource.getTimeline().getWindowCount());
        this.mediaSourceHolders.add(i, mediaSourceHolder);
        this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
        prepareChildSource(mediaSourceHolder, mediaSourceHolder.mediaSource);
        if (isEnabled() && this.mediaSourceByMediaPeriod.isEmpty()) {
            this.enabledMediaSourceHolders.add(mediaSourceHolder);
        } else {
            disableChildSource(mediaSourceHolder);
        }
    }

    private void addMediaSourcesInternal(int i, java.util.Collection<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> collection) {
        java.util.Iterator<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> it = collection.iterator();
        while (it.hasNext()) {
            addMediaSourceInternal(i, it.next());
            i++;
        }
    }

    private void addPublicMediaSources(int i, java.util.Collection<com.google.android.exoplayer2.source.MediaSource> collection, android.os.Handler handler, java.lang.Runnable runnable) {
        com.google.android.exoplayer2.util.Assertions.checkArgument((handler == null) == (runnable == null));
        android.os.Handler handler2 = this.playbackThreadHandler;
        java.util.Iterator<com.google.android.exoplayer2.source.MediaSource> it = collection.iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(it.next());
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(collection.size());
        java.util.Iterator<com.google.android.exoplayer2.source.MediaSource> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder(it2.next(), this.useLazyPreparation));
        }
        this.mediaSourcesPublic.addAll(i, arrayList);
        if (handler2 != null && !collection.isEmpty()) {
            handler2.obtainMessage(0, new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData(i, arrayList, createOnCompletionAction(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    private void correctOffsets(int i, int i2, int i3) {
        while (i < this.mediaSourceHolders.size()) {
            com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i);
            mediaSourceHolder.childIndex += i2;
            mediaSourceHolder.firstWindowIndexInChild += i3;
            i++;
        }
    }

    private com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable createOnCompletionAction(android.os.Handler handler, java.lang.Runnable runnable) {
        if (handler == null || runnable == null) {
            return null;
        }
        com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable handlerAndRunnable = new com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable(handler, runnable);
        this.pendingOnCompletionActions.add(handlerAndRunnable);
        return handlerAndRunnable;
    }

    private void disableUnusedMediaSources() {
        java.util.Iterator<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                disableChildSource(next);
                it.remove();
            }
        }
    }

    private synchronized void dispatchOnCompletionActions(java.util.Set<com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable> set) {
        java.util.Iterator<com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable> it = set.iterator();
        while (it.hasNext()) {
            it.next().dispatch();
        }
        this.pendingOnCompletionActions.removeAll(set);
    }

    private void enableMediaSource(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder) {
        this.enabledMediaSourceHolders.add(mediaSourceHolder);
        enableChildSource(mediaSourceHolder);
    }

    public static java.lang.Object getChildPeriodUid(java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(obj);
    }

    public static java.lang.Object getMediaSourceHolderUid(java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    public static java.lang.Object getPeriodUid(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder, java.lang.Object obj) {
        return com.google.android.exoplayer2.AbstractConcatenatedTimeline.getConcatenatedUid(mediaSourceHolder.uid, obj);
    }

    private android.os.Handler getPlaybackThreadHandlerOnPlaybackThread() {
        return (android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playbackThreadHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean handleMessage(android.os.Message message) {
        com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData messageData;
        int i = message.what;
        if (i == 0) {
            messageData = (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData) com.google.android.exoplayer2.util.Util.castNonNull(message.obj);
            this.shuffleOrder = this.shuffleOrder.cloneAndInsert(messageData.index, ((java.util.Collection) messageData.customData).size());
            addMediaSourcesInternal(messageData.index, (java.util.Collection) messageData.customData);
        } else if (i == 1) {
            messageData = (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData) com.google.android.exoplayer2.util.Util.castNonNull(message.obj);
            int i2 = messageData.index;
            int iIntValue = ((java.lang.Integer) messageData.customData).intValue();
            this.shuffleOrder = (i2 == 0 && iIntValue == this.shuffleOrder.getLength()) ? this.shuffleOrder.cloneAndClear() : this.shuffleOrder.cloneAndRemove(i2, iIntValue);
            for (int i3 = iIntValue - 1; i3 >= i2; i3--) {
                removeMediaSourceInternal(i3);
            }
        } else if (i == 2) {
            messageData = (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData) com.google.android.exoplayer2.util.Util.castNonNull(message.obj);
            com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder = this.shuffleOrder;
            int i4 = messageData.index;
            com.google.android.exoplayer2.source.ShuffleOrder shuffleOrderCloneAndRemove = shuffleOrder.cloneAndRemove(i4, i4 + 1);
            this.shuffleOrder = shuffleOrderCloneAndRemove;
            this.shuffleOrder = shuffleOrderCloneAndRemove.cloneAndInsert(((java.lang.Integer) messageData.customData).intValue(), 1);
            moveMediaSourceInternal(messageData.index, ((java.lang.Integer) messageData.customData).intValue());
        } else {
            if (i != 3) {
                if (i == 4) {
                    updateTimelineAndScheduleOnCompletionActions();
                } else {
                    if (i != 5) {
                        throw new java.lang.IllegalStateException();
                    }
                    dispatchOnCompletionActions((java.util.Set) com.google.android.exoplayer2.util.Util.castNonNull(message.obj));
                }
                return true;
            }
            messageData = (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData) com.google.android.exoplayer2.util.Util.castNonNull(message.obj);
            this.shuffleOrder = (com.google.android.exoplayer2.source.ShuffleOrder) messageData.customData;
        }
        scheduleTimelineUpdate(messageData.onCompletionAction);
        return true;
    }

    private void maybeReleaseChildSource(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.activeMediaPeriodIds.isEmpty()) {
            this.enabledMediaSourceHolders.remove(mediaSourceHolder);
            releaseChildSource(mediaSourceHolder);
        }
    }

    private void moveMediaSourceInternal(int i, int i2) {
        int iMin = java.lang.Math.min(i, i2);
        int iMax = java.lang.Math.max(i, i2);
        int windowCount = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        java.util.List<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> list = this.mediaSourceHolders;
        list.add(i2, list.remove(i));
        while (iMin <= iMax) {
            com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(iMin);
            mediaSourceHolder.childIndex = iMin;
            mediaSourceHolder.firstWindowIndexInChild = windowCount;
            windowCount += mediaSourceHolder.mediaSource.getTimeline().getWindowCount();
            iMin++;
        }
    }

    private void movePublicMediaSource(int i, int i2, android.os.Handler handler, java.lang.Runnable runnable) {
        com.google.android.exoplayer2.util.Assertions.checkArgument((handler == null) == (runnable == null));
        android.os.Handler handler2 = this.playbackThreadHandler;
        java.util.List<com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder> list = this.mediaSourcesPublic;
        list.add(i2, list.remove(i));
        if (handler2 != null) {
            handler2.obtainMessage(2, new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData(i, java.lang.Integer.valueOf(i2), createOnCompletionAction(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    private void removeMediaSourceInternal(int i) {
        com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolderRemove = this.mediaSourceHolders.remove(i);
        this.mediaSourceByUid.remove(mediaSourceHolderRemove.uid);
        correctOffsets(i, -1, -mediaSourceHolderRemove.mediaSource.getTimeline().getWindowCount());
        mediaSourceHolderRemove.isRemoved = true;
        maybeReleaseChildSource(mediaSourceHolderRemove);
    }

    private void removePublicMediaSources(int i, int i2, android.os.Handler handler, java.lang.Runnable runnable) {
        com.google.android.exoplayer2.util.Assertions.checkArgument((handler == null) == (runnable == null));
        android.os.Handler handler2 = this.playbackThreadHandler;
        com.google.android.exoplayer2.util.Util.removeRange(this.mediaSourcesPublic, i, i2);
        if (handler2 != null) {
            handler2.obtainMessage(1, new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData(i, java.lang.Integer.valueOf(i2), createOnCompletionAction(handler, runnable))).sendToTarget();
        } else {
            if (runnable == null || handler == null) {
                return;
            }
            handler.post(runnable);
        }
    }

    private void scheduleTimelineUpdate() {
        scheduleTimelineUpdate(null);
    }

    private void scheduleTimelineUpdate(com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable handlerAndRunnable) {
        if (!this.timelineUpdateScheduled) {
            getPlaybackThreadHandlerOnPlaybackThread().obtainMessage(4).sendToTarget();
            this.timelineUpdateScheduled = true;
        }
        if (handlerAndRunnable != null) {
            this.nextTimelineUpdateOnCompletionActions.add(handlerAndRunnable);
        }
    }

    private void setPublicShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, android.os.Handler handler, java.lang.Runnable runnable) {
        com.google.android.exoplayer2.util.Assertions.checkArgument((handler == null) == (runnable == null));
        android.os.Handler handler2 = this.playbackThreadHandler;
        if (handler2 != null) {
            int size = getSize();
            if (shuffleOrder.getLength() != size) {
                shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, size);
            }
            handler2.obtainMessage(3, new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MessageData(0, shuffleOrder, createOnCompletionAction(handler, runnable))).sendToTarget();
            return;
        }
        if (shuffleOrder.getLength() > 0) {
            shuffleOrder = shuffleOrder.cloneAndClear();
        }
        this.shuffleOrder = shuffleOrder;
        if (runnable == null || handler == null) {
            return;
        }
        handler.post(runnable);
    }

    private void updateMediaSourceInternal(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder, com.google.android.exoplayer2.Timeline timeline) {
        if (mediaSourceHolder.childIndex + 1 < this.mediaSourceHolders.size()) {
            int windowCount = timeline.getWindowCount() - (this.mediaSourceHolders.get(mediaSourceHolder.childIndex + 1).firstWindowIndexInChild - mediaSourceHolder.firstWindowIndexInChild);
            if (windowCount != 0) {
                correctOffsets(mediaSourceHolder.childIndex + 1, 0, windowCount);
            }
        }
        scheduleTimelineUpdate();
    }

    private void updateTimelineAndScheduleOnCompletionActions() {
        this.timelineUpdateScheduled = false;
        java.util.Set<com.google.android.exoplayer2.source.ConcatenatingMediaSource.HandlerAndRunnable> set = this.nextTimelineUpdateOnCompletionActions;
        this.nextTimelineUpdateOnCompletionActions = new java.util.HashSet();
        refreshSourceInfo(new com.google.android.exoplayer2.source.ConcatenatingMediaSource.ConcatenatedTimeline(this.mediaSourceHolders, this.shuffleOrder, this.isAtomic));
        getPlaybackThreadHandlerOnPlaybackThread().obtainMessage(5, set).sendToTarget();
    }

    public synchronized void addMediaSource(int i, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        addPublicMediaSources(i, java.util.Collections.singletonList(mediaSource), null, null);
    }

    public synchronized void addMediaSource(int i, com.google.android.exoplayer2.source.MediaSource mediaSource, android.os.Handler handler, java.lang.Runnable runnable) {
        addPublicMediaSources(i, java.util.Collections.singletonList(mediaSource), handler, runnable);
    }

    public synchronized void addMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        addMediaSource(this.mediaSourcesPublic.size(), mediaSource);
    }

    public synchronized void addMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, android.os.Handler handler, java.lang.Runnable runnable) {
        addMediaSource(this.mediaSourcesPublic.size(), mediaSource, handler, runnable);
    }

    public synchronized void addMediaSources(int i, java.util.Collection<com.google.android.exoplayer2.source.MediaSource> collection) {
        addPublicMediaSources(i, collection, null, null);
    }

    public synchronized void addMediaSources(int i, java.util.Collection<com.google.android.exoplayer2.source.MediaSource> collection, android.os.Handler handler, java.lang.Runnable runnable) {
        addPublicMediaSources(i, collection, handler, runnable);
    }

    public synchronized void addMediaSources(java.util.Collection<com.google.android.exoplayer2.source.MediaSource> collection) {
        addPublicMediaSources(this.mediaSourcesPublic.size(), collection, null, null);
    }

    public synchronized void addMediaSources(java.util.Collection<com.google.android.exoplayer2.source.MediaSource> collection, android.os.Handler handler, java.lang.Runnable runnable) {
        addPublicMediaSources(this.mediaSourcesPublic.size(), collection, handler, runnable);
    }

    public synchronized void clear() {
        removeMediaSourceRange(0, getSize());
    }

    public synchronized void clear(android.os.Handler handler, java.lang.Runnable runnable) {
        removeMediaSourceRange(0, getSize(), handler, runnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        java.lang.Object mediaSourceHolderUid = getMediaSourceHolderUid(mediaPeriodId.periodUid);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdCopyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaPeriodId.periodUid));
        com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder = this.mediaSourceByUid.get(mediaSourceHolderUid);
        if (mediaSourceHolder == null) {
            mediaSourceHolder = new com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder(new com.google.android.exoplayer2.source.ConcatenatingMediaSource.FakeMediaSource(), this.useLazyPreparation);
            mediaSourceHolder.isRemoved = true;
            prepareChildSource(mediaSourceHolder, mediaSourceHolder.mediaSource);
        }
        enableMediaSource(mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriodIds.add(mediaPeriodIdCopyWithPeriodUid);
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriodCreatePeriod = mediaSourceHolder.mediaSource.createPeriod(mediaPeriodIdCopyWithPeriodUid, allocator, j);
        this.mediaSourceByMediaPeriod.put(maskingMediaPeriodCreatePeriod, mediaSourceHolder);
        disableUnusedMediaSources();
        return maskingMediaPeriodCreatePeriod;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void disableInternal() {
        super.disableInternal();
        this.enabledMediaSourceHolders.clear();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void enableInternal() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public synchronized com.google.android.exoplayer2.Timeline getInitialTimeline() {
        return new com.google.android.exoplayer2.source.ConcatenatingMediaSource.ConcatenatedTimeline(this.mediaSourcesPublic, this.shuffleOrder.getLength() != this.mediaSourcesPublic.size() ? this.shuffleOrder.cloneAndClear().cloneAndInsert(0, this.mediaSourcesPublic.size()) : this.shuffleOrder, this.isAtomic);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return EMPTY_MEDIA_ITEM;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < mediaSourceHolder.activeMediaPeriodIds.size(); i++) {
            if (mediaSourceHolder.activeMediaPeriodIds.get(i).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(getPeriodUid(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    public synchronized com.google.android.exoplayer2.source.MediaSource getMediaSource(int i) {
        return this.mediaSourcesPublic.get(i).mediaSource;
    }

    public synchronized int getSize() {
        return this.mediaSourcesPublic.size();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public int getWindowIndexForChildWindowIndex(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder, int i) {
        return i + mediaSourceHolder.firstWindowIndexInChild;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return false;
    }

    public synchronized void moveMediaSource(int i, int i2) {
        movePublicMediaSource(i, i2, null, null);
    }

    public synchronized void moveMediaSource(int i, int i2, android.os.Handler handler, java.lang.Runnable runnable) {
        movePublicMediaSource(i, i2, handler, runnable);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        updateMediaSourceInternal(mediaSourceHolder, timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public synchronized void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        this.playbackThreadHandler = new android.os.Handler(new android.os.Handler.Callback() { // from class: e.c.a.a.n2.b
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.a.handleMessage(message);
            }
        });
        if (this.mediaSourcesPublic.isEmpty()) {
            updateTimelineAndScheduleOnCompletionActions();
        } else {
            this.shuffleOrder = this.shuffleOrder.cloneAndInsert(0, this.mediaSourcesPublic.size());
            addMediaSourcesInternal(0, this.mediaSourcesPublic);
            scheduleTimelineUpdate();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder mediaSourceHolder = (com.google.android.exoplayer2.source.ConcatenatingMediaSource.MediaSourceHolder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.releasePeriod(mediaPeriod);
        mediaSourceHolder.activeMediaPeriodIds.remove(((com.google.android.exoplayer2.source.MaskingMediaPeriod) mediaPeriod).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            disableUnusedMediaSources();
        }
        maybeReleaseChildSource(mediaSourceHolder);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public synchronized void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.mediaSourceHolders.clear();
        this.enabledMediaSourceHolders.clear();
        this.mediaSourceByUid.clear();
        this.shuffleOrder = this.shuffleOrder.cloneAndClear();
        if (this.playbackThreadHandler != null) {
            this.playbackThreadHandler.removeCallbacksAndMessages(null);
            this.playbackThreadHandler = null;
        }
        this.timelineUpdateScheduled = false;
        this.nextTimelineUpdateOnCompletionActions.clear();
        dispatchOnCompletionActions(this.pendingOnCompletionActions);
    }

    public synchronized com.google.android.exoplayer2.source.MediaSource removeMediaSource(int i) {
        com.google.android.exoplayer2.source.MediaSource mediaSource;
        mediaSource = getMediaSource(i);
        removePublicMediaSources(i, i + 1, null, null);
        return mediaSource;
    }

    public synchronized com.google.android.exoplayer2.source.MediaSource removeMediaSource(int i, android.os.Handler handler, java.lang.Runnable runnable) {
        com.google.android.exoplayer2.source.MediaSource mediaSource;
        mediaSource = getMediaSource(i);
        removePublicMediaSources(i, i + 1, handler, runnable);
        return mediaSource;
    }

    public synchronized void removeMediaSourceRange(int i, int i2) {
        removePublicMediaSources(i, i2, null, null);
    }

    public synchronized void removeMediaSourceRange(int i, int i2, android.os.Handler handler, java.lang.Runnable runnable) {
        removePublicMediaSources(i, i2, handler, runnable);
    }

    public synchronized void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        setPublicShuffleOrder(shuffleOrder, null, null);
    }

    public synchronized void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, android.os.Handler handler, java.lang.Runnable runnable) {
        setPublicShuffleOrder(shuffleOrder, handler, runnable);
    }
}
