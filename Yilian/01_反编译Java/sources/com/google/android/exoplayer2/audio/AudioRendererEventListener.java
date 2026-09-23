package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public interface AudioRendererEventListener {

    public static final class EventDispatcher {
        public final android.os.Handler handler;
        public final com.google.android.exoplayer2.audio.AudioRendererEventListener listener;

        public EventDispatcher(android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public /* synthetic */ void a(java.lang.Exception exc) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioCodecError(exc);
        }

        public void audioCodecError(final java.lang.Exception exc) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(exc);
                    }
                });
            }
        }

        public void audioSinkError(final java.lang.Exception exc) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(exc);
                    }
                });
            }
        }

        public /* synthetic */ void b(java.lang.Exception exc) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioSinkError(exc);
        }

        public /* synthetic */ void c(java.lang.String str, long j, long j2) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioDecoderInitialized(str, j, j2);
        }

        public /* synthetic */ void d(java.lang.String str) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioDecoderReleased(str);
        }

        public void decoderInitialized(final java.lang.String str, final long j, final long j2) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(str, j, j2);
                    }
                });
            }
        }

        public void decoderReleased(final java.lang.String str) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(str);
                    }
                });
            }
        }

        public void disabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(decoderCounters);
                    }
                });
            }
        }

        public /* synthetic */ void e(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioDisabled(decoderCounters);
        }

        public void enabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(decoderCounters);
                    }
                });
            }
        }

        public /* synthetic */ void f(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        public /* synthetic */ void g(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioInputFormatChanged(format);
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        public /* synthetic */ void h(long j) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioPositionAdvancing(j);
        }

        public /* synthetic */ void i(boolean z) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(z);
        }

        public void inputFormatChanged(final com.google.android.exoplayer2.Format format, final com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.g(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public /* synthetic */ void j(int i, long j, long j2) {
            ((com.google.android.exoplayer2.audio.AudioRendererEventListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onAudioUnderrun(i, j, j2);
        }

        public void positionAdvancing(final long j) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.h(j);
                    }
                });
            }
        }

        public void skipSilenceEnabledChanged(final boolean z) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.i(z);
                    }
                });
            }
        }

        public void underrun(final int i, final long j, final long j2) {
            android.os.Handler handler = this.handler;
            if (handler != null) {
                handler.post(new java.lang.Runnable() { // from class: e.c.a.a.g2.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.j(i, j, j2);
                    }
                });
            }
        }
    }

    void onAudioCodecError(java.lang.Exception exc);

    void onAudioDecoderInitialized(java.lang.String str, long j, long j2);

    void onAudioDecoderReleased(java.lang.String str);

    void onAudioDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters);

    void onAudioEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters);

    @java.lang.Deprecated
    void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format);

    void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(java.lang.Exception exc);

    void onAudioUnderrun(int i, long j, long j2);

    void onSkipSilenceEnabledChanged(boolean z);
}
