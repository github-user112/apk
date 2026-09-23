package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public interface BandwidthMeter {

    public interface EventListener {

        public static final class EventDispatcher {
            public final java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener> listeners = new java.util.concurrent.CopyOnWriteArrayList<>();

            public static final class HandlerAndListener {
                public final android.os.Handler handler;
                public final com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener listener;
                public boolean released;

                public HandlerAndListener(android.os.Handler handler, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
                    this.handler = handler;
                    this.listener = eventListener;
                }

                public void release() {
                    this.released = true;
                }
            }

            public void addListener(android.os.Handler handler, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
                com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
                com.google.android.exoplayer2.util.Assertions.checkNotNull(eventListener);
                removeListener(eventListener);
                this.listeners.add(new com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener(handler, eventListener));
            }

            public void bandwidthSample(final int i, final long j, final long j2) {
                java.util.Iterator<com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    final com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener next = it.next();
                    if (!next.released) {
                        next.handler.post(new java.lang.Runnable() { // from class: e.c.a.a.r2.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                next.listener.onBandwidthSample(i, j, j2);
                            }
                        });
                    }
                }
            }

            public void removeListener(com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
                java.util.Iterator<com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener next = it.next();
                    if (next.listener == eventListener) {
                        next.release();
                        this.listeners.remove(next);
                    }
                }
            }
        }

        void onBandwidthSample(int i, long j, long j2);
    }

    void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener);

    long getBitrateEstimate();

    long getTimeToFirstByteEstimateUs();

    com.google.android.exoplayer2.upstream.TransferListener getTransferListener();

    void removeEventListener(com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener);
}
