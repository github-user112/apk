package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public interface MediaSourceEventListener {

    public static class EventDispatcher {
        public final java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> listenerAndHandlers;
        public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId;
        public final long mediaTimeOffsetMs;
        public final int windowIndex;

        public static final class ListenerAndHandler {
            public android.os.Handler handler;
            public com.google.android.exoplayer2.source.MediaSourceEventListener listener;

            public ListenerAndHandler(android.os.Handler handler, com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new java.util.concurrent.CopyOnWriteArrayList(), 0, null, 0L);
        }

        public EventDispatcher(java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> copyOnWriteArrayList, int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaTimeOffsetMs = j;
        }

        private long adjustMediaTime(long j) {
            long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(j);
            return jUsToMs == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.C.TIME_UNSET : this.mediaTimeOffsetMs + jUsToMs;
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        public void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaSourceEventListener);
            this.listenerAndHandlers.add(new com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public /* synthetic */ void b(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public /* synthetic */ void c(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public /* synthetic */ void d(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z);
        }

        public void downstreamFormatChanged(int i, com.google.android.exoplayer2.Format format, int i2, java.lang.Object obj, long j) {
            downstreamFormatChanged(new com.google.android.exoplayer2.source.MediaLoadData(1, i, format, i2, obj, adjustMediaTime(j), com.google.android.exoplayer2.C.TIME_UNSET));
        }

        public void downstreamFormatChanged(final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(mediaSourceEventListener, mediaLoadData);
                    }
                });
            }
        }

        public /* synthetic */ void e(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public /* synthetic */ void f(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void loadCanceled(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i) {
            loadCanceled(loadEventInfo, i, -1, null, 0, null, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        }

        public void loadCanceled(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i, int i2, com.google.android.exoplayer2.Format format, int i3, java.lang.Object obj, long j, long j2) {
            loadCanceled(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadCanceled(final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadCompleted(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i) {
            loadCompleted(loadEventInfo, i, -1, null, 0, null, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        }

        public void loadCompleted(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i, int i2, com.google.android.exoplayer2.Format format, int i3, java.lang.Object obj, long j, long j2) {
            loadCompleted(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadCompleted(final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadError(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i, int i2, com.google.android.exoplayer2.Format format, int i3, java.lang.Object obj, long j, long j2, java.io.IOException iOException, boolean z) {
            loadError(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)), iOException, z);
        }

        public void loadError(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i, java.io.IOException iOException, boolean z) {
            loadError(loadEventInfo, i, -1, null, 0, null, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET, iOException, z);
        }

        public void loadError(final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, final java.io.IOException iOException, final boolean z) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        public void loadStarted(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i) {
            loadStarted(loadEventInfo, i, -1, null, 0, null, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        }

        public void loadStarted(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, int i, int i2, com.google.android.exoplayer2.Format format, int i3, java.lang.Object obj, long j, long j2) {
            loadStarted(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadStarted(final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void removeEventListener(com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener) {
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                if (next.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public void upstreamDiscarded(int i, long j, long j2) {
            upstreamDiscarded(new com.google.android.exoplayer2.source.MediaLoadData(1, i, null, 3, null, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void upstreamDiscarded(final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = (com.google.android.exoplayer2.source.MediaSource.MediaPeriodId) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaPeriodId);
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.source.MediaSourceEventListener mediaSourceEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.n2.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(mediaSourceEventListener, mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        public com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher withParameters(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
            return new com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId, j);
        }
    }

    void onDownstreamFormatChanged(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData);

    void onLoadCanceled(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData);

    void onLoadCompleted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData);

    void onLoadError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z);

    void onLoadStarted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData);

    void onUpstreamDiscarded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData);
}
