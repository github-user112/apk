package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public abstract class BaseRenderer implements com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities {
    public com.google.android.exoplayer2.RendererConfiguration configuration;
    public int index;
    public long lastResetPositionUs;
    public int state;
    public com.google.android.exoplayer2.source.SampleStream stream;
    public com.google.android.exoplayer2.Format[] streamFormats;
    public boolean streamIsFinal;
    public long streamOffsetUs;
    public boolean throwRendererExceptionIsExecuting;
    public final int trackType;
    public final com.google.android.exoplayer2.FormatHolder formatHolder = new com.google.android.exoplayer2.FormatHolder();
    public long readingPositionUs = Long.MIN_VALUE;

    public BaseRenderer(int i) {
        this.trackType = i;
    }

    public final com.google.android.exoplayer2.ExoPlaybackException createRendererException(java.lang.Throwable th, com.google.android.exoplayer2.Format format, int i) {
        return createRendererException(th, format, false, i);
    }

    public final com.google.android.exoplayer2.ExoPlaybackException createRendererException(java.lang.Throwable th, com.google.android.exoplayer2.Format format, boolean z, int i) {
        int i2;
        if (format == null || this.throwRendererExceptionIsExecuting) {
            i2 = 4;
        } else {
            this.throwRendererExceptionIsExecuting = true;
            try {
                int iSupportsFormat = supportsFormat(format) & 7;
                this.throwRendererExceptionIsExecuting = false;
                i2 = iSupportsFormat;
            } catch (com.google.android.exoplayer2.ExoPlaybackException unused) {
                this.throwRendererExceptionIsExecuting = false;
            } catch (java.lang.Throwable th2) {
                this.throwRendererExceptionIsExecuting = false;
                throw th2;
            }
        }
        return com.google.android.exoplayer2.ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, i2, z, i);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void disable() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 1);
        this.formatHolder.clear();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void enable(com.google.android.exoplayer2.RendererConfiguration rendererConfiguration, com.google.android.exoplayer2.Format[] formatArr, com.google.android.exoplayer2.source.SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        this.lastResetPositionUs = j;
        onEnabled(z, z2);
        replaceStream(formatArr, sampleStream, j2, j3);
        onPositionReset(j, z);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final com.google.android.exoplayer2.RendererCapabilities getCapabilities() {
        return this;
    }

    public final com.google.android.exoplayer2.RendererConfiguration getConfiguration() {
        return (com.google.android.exoplayer2.RendererConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.configuration);
    }

    public final com.google.android.exoplayer2.FormatHolder getFormatHolder() {
        this.formatHolder.clear();
        return this.formatHolder;
    }

    public final int getIndex() {
        return this.index;
    }

    public final long getLastResetPositionUs() {
        return this.lastResetPositionUs;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public com.google.android.exoplayer2.util.MediaClock getMediaClock() {
        return null;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final com.google.android.exoplayer2.source.SampleStream getStream() {
        return this.stream;
    }

    public final com.google.android.exoplayer2.Format[] getStreamFormats() {
        return (com.google.android.exoplayer2.Format[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.streamFormats);
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) {
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    public final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.streamIsFinal : ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.stream)).isReady();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void maybeThrowStreamError() {
        ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.stream)).maybeThrowError();
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z, boolean z2) {
    }

    public void onPositionReset(long j, boolean z) {
    }

    public void onReset() {
    }

    public void onStarted() {
    }

    public void onStopped() {
    }

    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
    }

    public final int readSource(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
        int data = ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.stream)).readData(formatHolder, decoderInputBuffer, i);
        if (data == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.readingPositionUs = Long.MIN_VALUE;
                return this.streamIsFinal ? -4 : -3;
            }
            long j = decoderInputBuffer.timeUs + this.streamOffsetUs;
            decoderInputBuffer.timeUs = j;
            this.readingPositionUs = java.lang.Math.max(this.readingPositionUs, j);
        } else if (data == -5) {
            com.google.android.exoplayer2.Format format = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(formatHolder.format);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                formatHolder.format = format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.streamOffsetUs).build();
            }
        }
        return data;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void replaceStream(com.google.android.exoplayer2.Format[] formatArr, com.google.android.exoplayer2.source.SampleStream sampleStream, long j, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j;
        }
        this.streamFormats = formatArr;
        this.streamOffsetUs = j2;
        onStreamChanged(formatArr, j, j2);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void reset() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 0);
        this.formatHolder.clear();
        onReset();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void resetPosition(long j) {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j;
        this.readingPositionUs = j;
        onPositionReset(j, false);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void setIndex(int i) {
        this.index = i;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public /* synthetic */ void setPlaybackSpeed(float f2, float f3) {
        e.c.a.a.e2.$default$setPlaybackSpeed(this, f2, f3);
    }

    public int skipSource(long j) {
        return ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.stream)).skipData(j - this.streamOffsetUs);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void start() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void stop() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }
}
