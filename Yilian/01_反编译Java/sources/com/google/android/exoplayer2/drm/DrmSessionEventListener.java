package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public interface DrmSessionEventListener {

    public static class EventDispatcher {
        public final java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> listenerAndHandlers;
        public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public static final class ListenerAndHandler {
            public android.os.Handler handler;
            public com.google.android.exoplayer2.drm.DrmSessionEventListener listener;

            public ListenerAndHandler(android.os.Handler handler, com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
                this.handler = handler;
                this.listener = drmSessionEventListener;
            }
        }

        public EventDispatcher() {
            this(new java.util.concurrent.CopyOnWriteArrayList(), 0, null);
        }

        public EventDispatcher(java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> copyOnWriteArrayList, int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysLoaded(this.windowIndex, this.mediaPeriodId);
        }

        public void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(drmSessionEventListener);
            this.listenerAndHandlers.add(new com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler(handler, drmSessionEventListener));
        }

        public /* synthetic */ void b(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysRemoved(this.windowIndex, this.mediaPeriodId);
        }

        public /* synthetic */ void c(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmKeysRestored(this.windowIndex, this.mediaPeriodId);
        }

        public /* synthetic */ void d(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener, int i) {
            drmSessionEventListener.onDrmSessionAcquired(this.windowIndex, this.mediaPeriodId);
            drmSessionEventListener.onDrmSessionAcquired(this.windowIndex, this.mediaPeriodId, i);
        }

        public void drmKeysLoaded() {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmKeysRemoved() {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmKeysRestored() {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(drmSessionEventListener);
                    }
                });
            }
        }

        public void drmSessionAcquired(final int i) {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(drmSessionEventListener, i);
                    }
                });
            }
        }

        public void drmSessionManagerError(final java.lang.Exception exc) {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(drmSessionEventListener, exc);
                    }
                });
            }
        }

        public void drmSessionReleased() {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                final com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener = next.listener;
                com.google.android.exoplayer2.util.Util.postOrRun(next.handler, new java.lang.Runnable() { // from class: e.c.a.a.h2.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(drmSessionEventListener);
                    }
                });
            }
        }

        public /* synthetic */ void e(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener, java.lang.Exception exc) {
            drmSessionEventListener.onDrmSessionManagerError(this.windowIndex, this.mediaPeriodId, exc);
        }

        public /* synthetic */ void f(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.onDrmSessionReleased(this.windowIndex, this.mediaPeriodId);
        }

        public void removeEventListener(com.google.android.exoplayer2.drm.DrmSessionEventListener drmSessionEventListener) {
            java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher.ListenerAndHandler next = it.next();
                if (next.listener == drmSessionEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher withParameters(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            return new com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId);
        }
    }

    void onDrmKeysLoaded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);

    void onDrmKeysRemoved(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);

    void onDrmKeysRestored(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);

    @java.lang.Deprecated
    void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);

    void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, int i2);

    void onDrmSessionManagerError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.lang.Exception exc);

    void onDrmSessionReleased(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);
}
