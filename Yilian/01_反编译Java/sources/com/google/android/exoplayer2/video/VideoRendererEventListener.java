package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public interface VideoRendererEventListener {

    public static final class EventDispatcher {
        public final android.os.Handler handler;
        public final com.google.android.exoplayer2.video.VideoRendererEventListener listener;

        public EventDispatcher(android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public /* synthetic */ void a(java.lang.String str, long j, long j2) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoDecoderInitialized(str, j, j2);
        }

        public /* synthetic */ void b(java.lang.String str) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoDecoderReleased(str);
        }

        public /* synthetic */ void c(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoDisabled(decoderCounters);
        }

        public /* synthetic */ void d(int i, long j) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onDroppedFrames(i, j);
        }

        public void decoderInitialized(final java.lang.String str, final long j, final long j2) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(str, j, j2);
                    }
                });
            }
        }

        public void decoderReleased(final java.lang.String str) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(str);
                    }
                });
            }
        }

        public void disabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(decoderCounters);
                    }
                });
            }
        }

        public void droppedFrames(final int i, final long j) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(i, j);
                    }
                });
            }
        }

        public /* synthetic */ void e(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoEnabled(decoderCounters);
        }

        public void enabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(decoderCounters);
                    }
                });
            }
        }

        public /* synthetic */ void f(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoInputFormatChanged(format);
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        public /* synthetic */ void g(java.lang.Object obj, long j) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onRenderedFirstFrame(obj, j);
        }

        public /* synthetic */ void h(long j, int i) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoFrameProcessingOffset(j, i);
        }

        public /* synthetic */ void i(java.lang.Exception exc) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoCodecError(exc);
        }

        public void inputFormatChanged(final com.google.android.exoplayer2.Format format, final com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public /* synthetic */ void j(com.google.android.exoplayer2.video.VideoSize videoSize) {
            ((com.google.android.exoplayer2.video.VideoRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onVideoSizeChanged(videoSize);
        }

        public void renderedFirstFrame(final java.lang.Object obj) {
            if (this.handler != null) {
                final long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
                this.handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.g(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void reportVideoFrameProcessingOffset(final long j, final int i) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.h(j, i);
                    }
                });
            }
        }

        public void videoCodecError(final java.lang.Exception exc) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.i(exc);
                    }
                });
            }
        }

        public void videoSizeChanged(final com.google.android.exoplayer2.video.VideoSize videoSize) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.j(videoSize);
                    }
                });
            }
        }
    }

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(java.lang.Object obj, long j);

    void onVideoCodecError(java.lang.Exception exc);

    void onVideoDecoderInitialized(java.lang.String str, long j, long j2);

    void onVideoDecoderReleased(java.lang.String str);

    void onVideoDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters);

    void onVideoEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters);

    void onVideoFrameProcessingOffset(long j, int i);

    @java.lang.Deprecated
    void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format);

    void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation);

    void onVideoSizeChanged(com.google.android.exoplayer2.video.VideoSize videoSize);
}
