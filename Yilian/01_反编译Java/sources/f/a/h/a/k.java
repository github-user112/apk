package f.a.h.a;

/* loaded from: classes.dex */
public class k implements com.google.android.exoplayer2.Player.Listener {
    public final /* synthetic */ net.easyconn.dlna.ecsdk.EcExoPlayer a;

    public k(net.easyconn.dlna.ecsdk.EcExoPlayer ecExoPlayer) {
        this.a = ecExoPlayer;
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
    public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
        e.c.a.a.d2.$default$onPlayWhenReadyChanged(this, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackParametersChanged(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        e.c.a.a.d2.$default$onPlaybackParametersChanged(this, playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackStateChanged(int i) {
        e.c.a.a.d2.$default$onPlaybackStateChanged(this, i);
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
    public /* synthetic */ void onPositionDiscontinuity(com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, int i) {
        e.c.a.a.d2.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onRenderedFirstFrame() {
        android.util.Log.d("[EcDlna]EcExoPlayer", "onRenderedFirstFrame ");
        net.easyconn.dlna.ecsdk.EcExoPlayer.h(this.a);
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
    public void onSurfaceSizeChanged(int i, int i2) {
        android.util.Log.d("[EcDlna]EcExoPlayer", "onSurfaceSizeChanged width*height:" + i + "*" + i2);
        net.easyconn.dlna.ecsdk.EcExoPlayer.h(this.a);
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
    public void onVideoSizeChanged(com.google.android.exoplayer2.video.VideoSize videoSize) {
        android.util.Log.d("[EcDlna]EcExoPlayer", "onVideoSizeChanged width*height:" + videoSize.width + "*" + videoSize.height);
        net.easyconn.dlna.ecsdk.EcExoPlayer.h(this.a);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVolumeChanged(float f2) {
        e.c.a.a.d2.$default$onVolumeChanged(this, f2);
    }
}
