package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public class DebugTextViewHelper implements com.google.android.exoplayer2.Player.Listener, java.lang.Runnable {
    public static final int REFRESH_INTERVAL_MS = 1000;
    public final com.google.android.exoplayer2.ExoPlayer player;
    public boolean started;
    public final android.widget.TextView textView;

    public DebugTextViewHelper(com.google.android.exoplayer2.ExoPlayer exoPlayer, android.widget.TextView textView) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(exoPlayer.getApplicationLooper() == android.os.Looper.getMainLooper());
        this.player = exoPlayer;
        this.textView = textView;
    }

    public static java.lang.String getDecoderCountersBufferCountString(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        if (decoderCounters == null) {
            return "";
        }
        decoderCounters.ensureUpdated();
        int i = decoderCounters.skippedInputBufferCount;
        int i2 = decoderCounters.skippedOutputBufferCount;
        int i3 = decoderCounters.renderedOutputBufferCount;
        int i4 = decoderCounters.droppedBufferCount;
        int i5 = decoderCounters.maxConsecutiveDroppedBufferCount;
        int i6 = decoderCounters.droppedToKeyframeCount;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(93);
        sb.append(" sib:");
        sb.append(i);
        sb.append(" sb:");
        sb.append(i2);
        sb.append(" rb:");
        sb.append(i3);
        sb.append(" db:");
        sb.append(i4);
        sb.append(" mcdb:");
        sb.append(i5);
        sb.append(" dk:");
        sb.append(i6);
        return sb.toString();
    }

    public static java.lang.String getPixelAspectRatioString(float f2) {
        if (f2 == -1.0f || f2 == 1.0f) {
            return "";
        }
        java.lang.String strValueOf = java.lang.String.valueOf(java.lang.String.format(java.util.Locale.US, "%.02f", java.lang.Float.valueOf(f2)));
        return strValueOf.length() != 0 ? " par:".concat(strValueOf) : new java.lang.String(" par:");
    }

    public static java.lang.String getVideoFrameProcessingOffsetAverageString(long j, int i) {
        if (i == 0) {
            return "N/A";
        }
        double d2 = j;
        double d3 = i;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        return java.lang.String.valueOf((long) (d2 / d3));
    }

    public java.lang.String getAudioString() {
        com.google.android.exoplayer2.Format audioFormat = this.player.getAudioFormat();
        com.google.android.exoplayer2.decoder.DecoderCounters audioDecoderCounters = this.player.getAudioDecoderCounters();
        if (audioFormat == null || audioDecoderCounters == null) {
            return "";
        }
        java.lang.String str = audioFormat.sampleMimeType;
        java.lang.String str2 = audioFormat.id;
        int i = audioFormat.sampleRate;
        int i2 = audioFormat.channelCount;
        java.lang.String decoderCountersBufferCountString = getDecoderCountersBufferCountString(audioDecoderCounters);
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(decoderCountersBufferCountString, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 36))), "\n", str, "(id:", str2);
        sbL.append(" hz:");
        sbL.append(i);
        sbL.append(" ch:");
        sbL.append(i2);
        return e.a.c.a.a.j(sbL, decoderCountersBufferCountString, ")");
    }

    public java.lang.String getDebugString() {
        java.lang.String playerStateString = getPlayerStateString();
        java.lang.String videoString = getVideoString();
        java.lang.String audioString = getAudioString();
        return e.a.c.a.a.G(e.a.c.a.a.m(audioString, e.a.c.a.a.m(videoString, java.lang.String.valueOf(playerStateString).length())), playerStateString, videoString, audioString);
    }

    public java.lang.String getPlayerStateString() {
        int playbackState = this.player.getPlaybackState();
        return java.lang.String.format("playWhenReady:%s playbackState:%s item:%s", java.lang.Boolean.valueOf(this.player.getPlayWhenReady()), playbackState != 1 ? playbackState != 2 ? playbackState != 3 ? playbackState != 4 ? "unknown" : "ended" : "ready" : "buffering" : "idle", java.lang.Integer.valueOf(this.player.getCurrentMediaItemIndex()));
    }

    public java.lang.String getVideoString() {
        com.google.android.exoplayer2.Format videoFormat = this.player.getVideoFormat();
        com.google.android.exoplayer2.decoder.DecoderCounters videoDecoderCounters = this.player.getVideoDecoderCounters();
        if (videoFormat == null || videoDecoderCounters == null) {
            return "";
        }
        java.lang.String str = videoFormat.sampleMimeType;
        java.lang.String str2 = videoFormat.id;
        int i = videoFormat.width;
        int i2 = videoFormat.height;
        java.lang.String pixelAspectRatioString = getPixelAspectRatioString(videoFormat.pixelWidthHeightRatio);
        java.lang.String decoderCountersBufferCountString = getDecoderCountersBufferCountString(videoDecoderCounters);
        java.lang.String videoFrameProcessingOffsetAverageString = getVideoFrameProcessingOffsetAverageString(videoDecoderCounters.totalVideoFrameProcessingOffsetUs, videoDecoderCounters.videoFrameProcessingOffsetCount);
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(videoFrameProcessingOffsetAverageString, e.a.c.a.a.m(decoderCountersBufferCountString, e.a.c.a.a.m(pixelAspectRatioString, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 39))))), "\n", str, "(id:", str2);
        sbL.append(" r:");
        sbL.append(i);
        sbL.append("x");
        sbL.append(i2);
        e.a.c.a.a.B(sbL, pixelAspectRatioString, decoderCountersBufferCountString, " vfpo: ", videoFrameProcessingOffsetAverageString);
        sbL.append(")");
        return sbL.toString();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAudioAttributesChanged(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        e.c.a.a.d2.$default$onAudioAttributesChanged(this, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAudioSessionIdChanged(int i) {
        e.c.a.a.d2.$default$onAudioSessionIdChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onAvailableCommandsChanged(com.google.android.exoplayer2.Player.Commands commands) {
        e.c.a.a.d2.$default$onAvailableCommandsChanged(this, commands);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onCues(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        e.c.a.a.d2.$default$onCues(this, list);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.DeviceInfo deviceInfo) {
        e.c.a.a.d2.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        e.c.a.a.d2.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onEvents(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.Player.Events events) {
        e.c.a.a.d2.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onIsLoadingChanged(boolean z) {
        e.c.a.a.d2.$default$onIsLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onIsPlayingChanged(boolean z) {
        e.c.a.a.d2.$default$onIsPlayingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onLoadingChanged(boolean z) {
        e.c.a.a.c2.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
        e.c.a.a.c2.$default$onMaxSeekToPreviousPositionChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onMediaItemTransition(com.google.android.exoplayer2.MediaItem mediaItem, int i) {
        e.c.a.a.d2.$default$onMediaItemTransition(this, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onMediaMetadataChanged(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        e.c.a.a.d2.$default$onMediaMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
        e.c.a.a.d2.$default$onMetadata(this, metadata);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackParametersChanged(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        e.c.a.a.d2.$default$onPlaybackParametersChanged(this, playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackStateChanged(int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        e.c.a.a.d2.$default$onPlaybackSuppressionReasonChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlayerError(com.google.android.exoplayer2.PlaybackException playbackException) {
        e.c.a.a.d2.$default$onPlayerError(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlayerErrorChanged(com.google.android.exoplayer2.PlaybackException playbackException) {
        e.c.a.a.d2.$default$onPlayerErrorChanged(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        e.c.a.a.c2.$default$onPlayerStateChanged(this, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaylistMetadataChanged(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        e.c.a.a.d2.$default$onPlaylistMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        e.c.a.a.c2.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPositionDiscontinuity(com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onRenderedFirstFrame() {
        e.c.a.a.d2.$default$onRenderedFirstFrame(this);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onRepeatModeChanged(int i) {
        e.c.a.a.d2.$default$onRepeatModeChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onSeekBackIncrementChanged(long j) {
        e.c.a.a.d2.$default$onSeekBackIncrementChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
        e.c.a.a.d2.$default$onSeekForwardIncrementChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onSeekProcessed() {
        e.c.a.a.c2.$default$onSeekProcessed(this);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        e.c.a.a.d2.$default$onShuffleModeEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        e.c.a.a.d2.$default$onSkipSilenceEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        e.c.a.a.d2.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTimelineChanged(com.google.android.exoplayer2.Timeline timeline, int i) {
        e.c.a.a.d2.$default$onTimelineChanged(this, timeline, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTrackSelectionParametersChanged(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
        e.c.a.a.c2.$default$onTrackSelectionParametersChanged(this, trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onTracksChanged(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.TrackSelectionArray trackSelectionArray) {
        e.c.a.a.c2.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTracksInfoChanged(com.google.android.exoplayer2.TracksInfo tracksInfo) {
        e.c.a.a.d2.$default$onTracksInfoChanged(this, tracksInfo);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.video.VideoSize videoSize) {
        e.c.a.a.d2.$default$onVideoSizeChanged(this, videoSize);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVolumeChanged(float f2) {
        e.c.a.a.d2.$default$onVolumeChanged(this, f2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        updateAndPost();
    }

    public final void start() {
        if (this.started) {
            return;
        }
        this.started = true;
        this.player.addListener((com.google.android.exoplayer2.Player.Listener) this);
        updateAndPost();
    }

    public final void stop() {
        if (this.started) {
            this.started = false;
            this.player.removeListener((com.google.android.exoplayer2.Player.Listener) this);
            this.textView.removeCallbacks(this);
        }
    }

    @android.annotation.SuppressLint({"SetTextI18n"})
    public final void updateAndPost() {
        this.textView.setText(getDebugString());
        this.textView.removeCallbacks(this);
        this.textView.postDelayed(this, 1000L);
    }
}
