package com.google.android.exoplayer2;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class SimpleExoPlayer extends com.google.android.exoplayer2.BasePlayer implements com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent, com.google.android.exoplayer2.ExoPlayer.VideoComponent, com.google.android.exoplayer2.ExoPlayer.TextComponent, com.google.android.exoplayer2.ExoPlayer.DeviceComponent {
    public static final java.lang.String TAG = "SimpleExoPlayer";
    public final com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector;
    public final android.content.Context applicationContext;
    public com.google.android.exoplayer2.audio.AudioAttributes audioAttributes;
    public final com.google.android.exoplayer2.AudioBecomingNoisyManager audioBecomingNoisyManager;
    public com.google.android.exoplayer2.decoder.DecoderCounters audioDecoderCounters;
    public final com.google.android.exoplayer2.AudioFocusManager audioFocusManager;
    public com.google.android.exoplayer2.Format audioFormat;
    public int audioSessionId;
    public com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener;
    public final com.google.android.exoplayer2.SimpleExoPlayer.ComponentListener componentListener;
    public final com.google.android.exoplayer2.util.ConditionVariable constructorFinished;
    public java.util.List<com.google.android.exoplayer2.text.Cue> currentCues;
    public final long detachSurfaceTimeoutMs;
    public com.google.android.exoplayer2.DeviceInfo deviceInfo;
    public final com.google.android.exoplayer2.SimpleExoPlayer.FrameMetadataListener frameMetadataListener;
    public boolean hasNotifiedFullWrongThreadWarning;
    public boolean isPriorityTaskManagerRegistered;
    public android.media.AudioTrack keepSessionIdAudioTrack;
    public final java.util.concurrent.CopyOnWriteArraySet<com.google.android.exoplayer2.Player.Listener> listeners;
    public android.view.Surface ownedSurface;
    public final com.google.android.exoplayer2.ExoPlayerImpl player;
    public boolean playerReleased;
    public com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager;
    public final com.google.android.exoplayer2.Renderer[] renderers;
    public boolean skipSilenceEnabled;
    public com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView sphericalGLSurfaceView;
    public final com.google.android.exoplayer2.StreamVolumeManager streamVolumeManager;
    public int surfaceHeight;
    public android.view.SurfaceHolder surfaceHolder;
    public boolean surfaceHolderSurfaceIsVideoOutput;
    public int surfaceWidth;
    public android.view.TextureView textureView;
    public boolean throwsWhenUsingWrongThread;
    public int videoChangeFrameRateStrategy;
    public com.google.android.exoplayer2.decoder.DecoderCounters videoDecoderCounters;
    public com.google.android.exoplayer2.Format videoFormat;
    public com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener;
    public java.lang.Object videoOutput;
    public int videoScalingMode;
    public com.google.android.exoplayer2.video.VideoSize videoSize;
    public float volume;
    public final com.google.android.exoplayer2.WakeLockManager wakeLockManager;
    public final com.google.android.exoplayer2.WifiLockManager wifiLockManager;

    @java.lang.Deprecated
    public static final class Builder {
        public final com.google.android.exoplayer2.ExoPlayer.Builder wrappedBuilder;

        @java.lang.Deprecated
        public Builder(android.content.Context context) {
            this.wrappedBuilder = new com.google.android.exoplayer2.ExoPlayer.Builder(context);
        }

        @java.lang.Deprecated
        public Builder(android.content.Context context, com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            this.wrappedBuilder = new com.google.android.exoplayer2.ExoPlayer.Builder(context, renderersFactory);
        }

        @java.lang.Deprecated
        public Builder(android.content.Context context, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new com.google.android.exoplayer2.ExoPlayer.Builder(context, renderersFactory, new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @java.lang.Deprecated
        public Builder(android.content.Context context, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.LoadControl loadControl, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder = new com.google.android.exoplayer2.ExoPlayer.Builder(context, renderersFactory, mediaSourceFactory, trackSelector, loadControl, bandwidthMeter, analyticsCollector);
        }

        @java.lang.Deprecated
        public Builder(android.content.Context context, com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new com.google.android.exoplayer2.ExoPlayer.Builder(context, new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer build() {
            return this.wrappedBuilder.buildSimpleExoPlayer();
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder experimentalSetForegroundModeTimeoutMs(long j) {
            this.wrappedBuilder.experimentalSetForegroundModeTimeoutMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setAnalyticsCollector(com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder.setAnalyticsCollector(analyticsCollector);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z) {
            this.wrappedBuilder.setAudioAttributes(audioAttributes, z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setBandwidthMeter(com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
            this.wrappedBuilder.setBandwidthMeter(bandwidthMeter);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setClock(com.google.android.exoplayer2.util.Clock clock) {
            this.wrappedBuilder.setClock(clock);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setDetachSurfaceTimeoutMs(long j) {
            this.wrappedBuilder.setDetachSurfaceTimeoutMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setHandleAudioBecomingNoisy(boolean z) {
            this.wrappedBuilder.setHandleAudioBecomingNoisy(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setLivePlaybackSpeedControl(com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl) {
            this.wrappedBuilder.setLivePlaybackSpeedControl(livePlaybackSpeedControl);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setLoadControl(com.google.android.exoplayer2.LoadControl loadControl) {
            this.wrappedBuilder.setLoadControl(loadControl);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setLooper(android.os.Looper looper) {
            this.wrappedBuilder.setLooper(looper);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setMediaSourceFactory(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            this.wrappedBuilder.setMediaSourceFactory(mediaSourceFactory);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setPauseAtEndOfMediaItems(boolean z) {
            this.wrappedBuilder.setPauseAtEndOfMediaItems(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setPriorityTaskManager(com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager) {
            this.wrappedBuilder.setPriorityTaskManager(priorityTaskManager);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setReleaseTimeoutMs(long j) {
            this.wrappedBuilder.setReleaseTimeoutMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setSeekBackIncrementMs(long j) {
            this.wrappedBuilder.setSeekBackIncrementMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setSeekForwardIncrementMs(long j) {
            this.wrappedBuilder.setSeekForwardIncrementMs(j);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters) {
            this.wrappedBuilder.setSeekParameters(seekParameters);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setSkipSilenceEnabled(boolean z) {
            this.wrappedBuilder.setSkipSilenceEnabled(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setTrackSelector(com.google.android.exoplayer2.trackselection.TrackSelector trackSelector) {
            this.wrappedBuilder.setTrackSelector(trackSelector);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setUseLazyPreparation(boolean z) {
            this.wrappedBuilder.setUseLazyPreparation(z);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setVideoChangeFrameRateStrategy(int i) {
            this.wrappedBuilder.setVideoChangeFrameRateStrategy(i);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setVideoScalingMode(int i) {
            this.wrappedBuilder.setVideoScalingMode(i);
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.SimpleExoPlayer.Builder setWakeMode(int i) {
            this.wrappedBuilder.setWakeMode(i);
            return this;
        }
    }

    public final class ComponentListener implements com.google.android.exoplayer2.video.VideoRendererEventListener, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.text.TextOutput, com.google.android.exoplayer2.metadata.MetadataOutput, android.view.SurfaceHolder.Callback, android.view.TextureView.SurfaceTextureListener, com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener, com.google.android.exoplayer2.AudioFocusManager.PlayerControl, com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener, com.google.android.exoplayer2.StreamVolumeManager.Listener, com.google.android.exoplayer2.Player.EventListener, com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener {
        public ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void executePlayerCommand(int i) {
            boolean playWhenReady = com.google.android.exoplayer2.SimpleExoPlayer.this.getPlayWhenReady();
            com.google.android.exoplayer2.SimpleExoPlayer.this.updatePlayWhenReady(playWhenReady, i, com.google.android.exoplayer2.SimpleExoPlayer.getPlayWhenReadyChangeReason(playWhenReady, i));
        }

        @Override // com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener
        public void onAudioBecomingNoisy() {
            com.google.android.exoplayer2.SimpleExoPlayer.this.updatePlayWhenReady(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioCodecError(java.lang.Exception exc) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(java.lang.String str, long j, long j2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDecoderReleased(java.lang.String str) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioDisabled(decoderCounters);
            com.google.android.exoplayer2.SimpleExoPlayer.this.audioFormat = null;
            com.google.android.exoplayer2.SimpleExoPlayer.this.audioDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.audioDecoderCounters = decoderCounters;
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        @java.lang.Deprecated
        public /* synthetic */ void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format) {
            e.c.a.a.g2.m.$default$onAudioInputFormatChanged(this, format);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.audioFormat = format;
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioPositionAdvancing(long j) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioPositionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioSinkError(java.lang.Exception exc) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onAudioUnderrun(int i, long j, long j2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onAudioUnderrun(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onAvailableCommandsChanged(com.google.android.exoplayer2.Player.Commands commands) {
            e.c.a.a.c2.$default$onAvailableCommandsChanged(this, commands);
        }

        @Override // com.google.android.exoplayer2.text.TextOutput
        public void onCues(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.currentCues = list;
            java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.Player.Listener) it.next()).onCues(list);
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onDroppedFrames(i, j);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onEvents(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.Player.Events events) {
            e.c.a.a.c2.$default$onEvents(this, player, events);
        }

        @Override // com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener
        public /* synthetic */ void onExperimentalOffloadSchedulingEnabledChanged(boolean z) {
            e.c.a.a.b2.$default$onExperimentalOffloadSchedulingEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener
        public void onExperimentalSleepingForOffloadChanged(boolean z) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.updateWakeAndWifiLock();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onIsLoadingChanged(boolean z) {
            com.google.android.exoplayer2.SimpleExoPlayer simpleExoPlayer;
            if (com.google.android.exoplayer2.SimpleExoPlayer.this.priorityTaskManager != null) {
                boolean z2 = false;
                if (z && !com.google.android.exoplayer2.SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                    com.google.android.exoplayer2.SimpleExoPlayer.this.priorityTaskManager.add(0);
                    simpleExoPlayer = com.google.android.exoplayer2.SimpleExoPlayer.this;
                    z2 = true;
                } else {
                    if (z || !com.google.android.exoplayer2.SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                        return;
                    }
                    com.google.android.exoplayer2.SimpleExoPlayer.this.priorityTaskManager.remove(0);
                    simpleExoPlayer = com.google.android.exoplayer2.SimpleExoPlayer.this;
                }
                simpleExoPlayer.isPriorityTaskManagerRegistered = z2;
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onIsPlayingChanged(boolean z) {
            e.c.a.a.c2.$default$onIsPlayingChanged(this, z);
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

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaItemTransition(com.google.android.exoplayer2.MediaItem mediaItem, int i) {
            e.c.a.a.c2.$default$onMediaItemTransition(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onMediaMetadataChanged(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
            e.c.a.a.c2.$default$onMediaMetadataChanged(this, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.metadata.MetadataOutput
        public void onMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onMetadata(metadata);
            com.google.android.exoplayer2.SimpleExoPlayer.this.player.onMetadata(metadata);
            java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.Player.Listener) it.next()).onMetadata(metadata);
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlayWhenReadyChanged(boolean z, int i) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.updateWakeAndWifiLock();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackParametersChanged(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
            e.c.a.a.c2.$default$onPlaybackParametersChanged(this, playbackParameters);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public void onPlaybackStateChanged(int i) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.updateWakeAndWifiLock();
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            e.c.a.a.c2.$default$onPlaybackSuppressionReasonChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerError(com.google.android.exoplayer2.PlaybackException playbackException) {
            e.c.a.a.c2.$default$onPlayerError(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlayerErrorChanged(com.google.android.exoplayer2.PlaybackException playbackException) {
            e.c.a.a.c2.$default$onPlayerErrorChanged(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @java.lang.Deprecated
        public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
            e.c.a.a.c2.$default$onPlayerStateChanged(this, z, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPlaylistMetadataChanged(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
            e.c.a.a.c2.$default$onPlaylistMetadataChanged(this, mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @java.lang.Deprecated
        public /* synthetic */ void onPositionDiscontinuity(int i) {
            e.c.a.a.c2.$default$onPositionDiscontinuity(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onPositionDiscontinuity(com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, int i) {
            e.c.a.a.c2.$default$onPositionDiscontinuity(this, positionInfo, positionInfo2, i);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onRenderedFirstFrame(java.lang.Object obj, long j) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onRenderedFirstFrame(obj, j);
            if (com.google.android.exoplayer2.SimpleExoPlayer.this.videoOutput == obj) {
                java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
                while (it.hasNext()) {
                    ((com.google.android.exoplayer2.Player.Listener) it.next()).onRenderedFirstFrame();
                }
            }
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onRepeatModeChanged(int i) {
            e.c.a.a.c2.$default$onRepeatModeChanged(this, i);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekBackIncrementChanged(long j) {
            e.c.a.a.c2.$default$onSeekBackIncrementChanged(this, j);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
            e.c.a.a.c2.$default$onSeekForwardIncrementChanged(this, j);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        @java.lang.Deprecated
        public /* synthetic */ void onSeekProcessed() {
            e.c.a.a.c2.$default$onSeekProcessed(this);
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            e.c.a.a.c2.$default$onShuffleModeEnabledChanged(this, z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(boolean z) {
            if (com.google.android.exoplayer2.SimpleExoPlayer.this.skipSilenceEnabled == z) {
                return;
            }
            com.google.android.exoplayer2.SimpleExoPlayer.this.skipSilenceEnabled = z;
            com.google.android.exoplayer2.SimpleExoPlayer.this.notifySkipSilenceEnabledChanged();
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamTypeChanged(int i) {
            com.google.android.exoplayer2.DeviceInfo deviceInfoCreateDeviceInfo = com.google.android.exoplayer2.SimpleExoPlayer.createDeviceInfo(com.google.android.exoplayer2.SimpleExoPlayer.this.streamVolumeManager);
            if (deviceInfoCreateDeviceInfo.equals(com.google.android.exoplayer2.SimpleExoPlayer.this.deviceInfo)) {
                return;
            }
            com.google.android.exoplayer2.SimpleExoPlayer.this.deviceInfo = deviceInfoCreateDeviceInfo;
            java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.Player.Listener) it.next()).onDeviceInfoChanged(deviceInfoCreateDeviceInfo);
            }
        }

        @Override // com.google.android.exoplayer2.StreamVolumeManager.Listener
        public void onStreamVolumeChanged(int i, boolean z) {
            java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.Player.Listener) it.next()).onDeviceVolumeChanged(i, z);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(android.graphics.SurfaceTexture surfaceTexture, int i, int i2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.setSurfaceTextureInternal(surfaceTexture);
            com.google.android.exoplayer2.SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(android.graphics.SurfaceTexture surfaceTexture) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.setVideoOutputInternal(null);
            com.google.android.exoplayer2.SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(android.graphics.SurfaceTexture surfaceTexture, int i, int i2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(android.graphics.SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTimelineChanged(com.google.android.exoplayer2.Timeline timeline, int i) {
            e.c.a.a.c2.$default$onTimelineChanged(this, timeline, i);
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

        @Override // com.google.android.exoplayer2.Player.EventListener
        public /* synthetic */ void onTracksInfoChanged(com.google.android.exoplayer2.TracksInfo tracksInfo) {
            e.c.a.a.c2.$default$onTracksInfoChanged(this, tracksInfo);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoCodecError(java.lang.Exception exc) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoCodecError(exc);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(java.lang.String str, long j, long j2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoDecoderInitialized(str, j, j2);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDecoderReleased(java.lang.String str) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoDecoderReleased(str);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoDisabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoDisabled(decoderCounters);
            com.google.android.exoplayer2.SimpleExoPlayer.this.videoFormat = null;
            com.google.android.exoplayer2.SimpleExoPlayer.this.videoDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoEnabled(com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.videoDecoderCounters = decoderCounters;
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoEnabled(decoderCounters);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoFrameProcessingOffset(long j, int i) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoFrameProcessingOffset(j, i);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        @java.lang.Deprecated
        public /* synthetic */ void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format) {
            e.c.a.a.t2.n.$default$onVideoInputFormatChanged(this, format);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.videoFormat = format;
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.VideoSize videoSize) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.videoSize = videoSize;
            com.google.android.exoplayer2.SimpleExoPlayer.this.analyticsCollector.onVideoSizeChanged(videoSize);
            java.util.Iterator it = com.google.android.exoplayer2.SimpleExoPlayer.this.listeners.iterator();
            while (it.hasNext()) {
                ((com.google.android.exoplayer2.Player.Listener) it.next()).onVideoSizeChanged(videoSize);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceCreated(android.view.Surface surface) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.setVideoOutputInternal(surface);
        }

        @Override // com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceDestroyed(android.view.Surface surface) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.setVideoOutputInternal(null);
        }

        @Override // com.google.android.exoplayer2.AudioFocusManager.PlayerControl
        public void setVolumeMultiplier(float f2) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.sendVolumeToRenderers();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(android.view.SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            com.google.android.exoplayer2.SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(android.view.SurfaceHolder surfaceHolder) {
            if (com.google.android.exoplayer2.SimpleExoPlayer.this.surfaceHolderSurfaceIsVideoOutput) {
                com.google.android.exoplayer2.SimpleExoPlayer.this.setVideoOutputInternal(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(android.view.SurfaceHolder surfaceHolder) {
            if (com.google.android.exoplayer2.SimpleExoPlayer.this.surfaceHolderSurfaceIsVideoOutput) {
                com.google.android.exoplayer2.SimpleExoPlayer.this.setVideoOutputInternal(null);
            }
            com.google.android.exoplayer2.SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    public static final class FrameMetadataListener implements com.google.android.exoplayer2.video.VideoFrameMetadataListener, com.google.android.exoplayer2.video.spherical.CameraMotionListener, com.google.android.exoplayer2.PlayerMessage.Target {
        public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
        public static final int MSG_SET_SPHERICAL_SURFACE_VIEW = 10000;
        public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;
        public com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener;
        public com.google.android.exoplayer2.video.spherical.CameraMotionListener internalCameraMotionListener;
        public com.google.android.exoplayer2.video.VideoFrameMetadataListener internalVideoFrameMetadataListener;
        public com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener;

        public FrameMetadataListener() {
        }

        @Override // com.google.android.exoplayer2.PlayerMessage.Target
        public void handleMessage(int i, java.lang.Object obj) {
            com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener;
            if (i == 7) {
                this.videoFrameMetadataListener = (com.google.android.exoplayer2.video.VideoFrameMetadataListener) obj;
                return;
            }
            if (i == 8) {
                this.cameraMotionListener = (com.google.android.exoplayer2.video.spherical.CameraMotionListener) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView sphericalGLSurfaceView = (com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                cameraMotionListener = null;
                this.internalVideoFrameMetadataListener = null;
            } else {
                this.internalVideoFrameMetadataListener = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                cameraMotionListener = sphericalGLSurfaceView.getCameraMotionListener();
            }
            this.internalCameraMotionListener = cameraMotionListener;
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotion(long j, float[] fArr) {
            com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotion(j, fArr);
            }
            com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotion(j, fArr);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
        public void onCameraMotionReset() {
            com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.onCameraMotionReset();
            }
            com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.onCameraMotionReset();
            }
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameMetadataListener
        public void onVideoFrameAboutToBeRendered(long j, long j2, com.google.android.exoplayer2.Format format, android.media.MediaFormat mediaFormat) {
            com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener = this.internalVideoFrameMetadataListener;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
            com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener2 = this.videoFrameMetadataListener;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.onVideoFrameAboutToBeRendered(j, j2, format, mediaFormat);
            }
        }
    }

    @java.lang.Deprecated
    public SimpleExoPlayer(android.content.Context context, com.google.android.exoplayer2.RenderersFactory renderersFactory, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.LoadControl loadControl, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector, boolean z, com.google.android.exoplayer2.util.Clock clock, android.os.Looper looper) {
        this(new com.google.android.exoplayer2.ExoPlayer.Builder(context, renderersFactory, mediaSourceFactory, trackSelector, loadControl, bandwidthMeter, analyticsCollector).setUseLazyPreparation(z).setClock(clock).setLooper(looper));
    }

    public SimpleExoPlayer(com.google.android.exoplayer2.ExoPlayer.Builder builder) throws java.lang.Throwable {
        com.google.android.exoplayer2.SimpleExoPlayer simpleExoPlayer;
        this.constructorFinished = new com.google.android.exoplayer2.util.ConditionVariable();
        try {
            this.applicationContext = builder.context.getApplicationContext();
            this.analyticsCollector = builder.analyticsCollectorSupplier.get();
            this.priorityTaskManager = builder.priorityTaskManager;
            this.audioAttributes = builder.audioAttributes;
            this.videoScalingMode = builder.videoScalingMode;
            this.videoChangeFrameRateStrategy = builder.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = builder.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = builder.detachSurfaceTimeoutMs;
            this.componentListener = new com.google.android.exoplayer2.SimpleExoPlayer.ComponentListener();
            this.frameMetadataListener = new com.google.android.exoplayer2.SimpleExoPlayer.FrameMetadataListener();
            this.listeners = new java.util.concurrent.CopyOnWriteArraySet<>();
            android.os.Handler handler = new android.os.Handler(builder.looper);
            this.renderers = builder.renderersFactorySupplier.get().createRenderers(handler, this.componentListener, this.componentListener, this.componentListener, this.componentListener);
            this.volume = 1.0f;
            this.audioSessionId = com.google.android.exoplayer2.util.Util.SDK_INT < 21 ? initializeKeepSessionIdAudioTrack(0) : com.google.android.exoplayer2.util.Util.generateAudioSessionIdV21(this.applicationContext);
            this.currentCues = java.util.Collections.emptyList();
            this.throwsWhenUsingWrongThread = true;
            try {
                com.google.android.exoplayer2.ExoPlayerImpl exoPlayerImpl = new com.google.android.exoplayer2.ExoPlayerImpl(this.renderers, builder.trackSelectorSupplier.get(), builder.mediaSourceFactorySupplier.get(), builder.loadControlSupplier.get(), builder.bandwidthMeterSupplier.get(), this.analyticsCollector, builder.useLazyPreparation, builder.seekParameters, builder.seekBackIncrementMs, builder.seekForwardIncrementMs, builder.livePlaybackSpeedControl, builder.releaseTimeoutMs, builder.pauseAtEndOfMediaItems, builder.clock, builder.looper, this, new com.google.android.exoplayer2.Player.Commands.Builder().addAll(21, 22, 23, 24, 25, 26, 27, 28).build());
                simpleExoPlayer = this;
                try {
                    simpleExoPlayer.player = exoPlayerImpl;
                    exoPlayerImpl.addEventListener(simpleExoPlayer.componentListener);
                    simpleExoPlayer.player.addAudioOffloadListener(simpleExoPlayer.componentListener);
                    if (builder.foregroundModeTimeoutMs > 0) {
                        simpleExoPlayer.player.experimentalSetForegroundModeTimeoutMs(builder.foregroundModeTimeoutMs);
                    }
                    com.google.android.exoplayer2.AudioBecomingNoisyManager audioBecomingNoisyManager = new com.google.android.exoplayer2.AudioBecomingNoisyManager(builder.context, handler, simpleExoPlayer.componentListener);
                    simpleExoPlayer.audioBecomingNoisyManager = audioBecomingNoisyManager;
                    audioBecomingNoisyManager.setEnabled(builder.handleAudioBecomingNoisy);
                    com.google.android.exoplayer2.AudioFocusManager audioFocusManager = new com.google.android.exoplayer2.AudioFocusManager(builder.context, handler, simpleExoPlayer.componentListener);
                    simpleExoPlayer.audioFocusManager = audioFocusManager;
                    audioFocusManager.setAudioAttributes(builder.handleAudioFocus ? simpleExoPlayer.audioAttributes : null);
                    com.google.android.exoplayer2.StreamVolumeManager streamVolumeManager = new com.google.android.exoplayer2.StreamVolumeManager(builder.context, handler, simpleExoPlayer.componentListener);
                    simpleExoPlayer.streamVolumeManager = streamVolumeManager;
                    streamVolumeManager.setStreamType(com.google.android.exoplayer2.util.Util.getStreamTypeForAudioUsage(simpleExoPlayer.audioAttributes.usage));
                    com.google.android.exoplayer2.WakeLockManager wakeLockManager = new com.google.android.exoplayer2.WakeLockManager(builder.context);
                    simpleExoPlayer.wakeLockManager = wakeLockManager;
                    wakeLockManager.setEnabled(builder.wakeMode != 0);
                    com.google.android.exoplayer2.WifiLockManager wifiLockManager = new com.google.android.exoplayer2.WifiLockManager(builder.context);
                    simpleExoPlayer.wifiLockManager = wifiLockManager;
                    wifiLockManager.setEnabled(builder.wakeMode == 2);
                    simpleExoPlayer.deviceInfo = createDeviceInfo(simpleExoPlayer.streamVolumeManager);
                    simpleExoPlayer.videoSize = com.google.android.exoplayer2.video.VideoSize.UNKNOWN;
                    simpleExoPlayer.sendRendererMessage(1, 10, java.lang.Integer.valueOf(simpleExoPlayer.audioSessionId));
                    simpleExoPlayer.sendRendererMessage(2, 10, java.lang.Integer.valueOf(simpleExoPlayer.audioSessionId));
                    simpleExoPlayer.sendRendererMessage(1, 3, simpleExoPlayer.audioAttributes);
                    simpleExoPlayer.sendRendererMessage(2, 4, java.lang.Integer.valueOf(simpleExoPlayer.videoScalingMode));
                    simpleExoPlayer.sendRendererMessage(2, 5, java.lang.Integer.valueOf(simpleExoPlayer.videoChangeFrameRateStrategy));
                    simpleExoPlayer.sendRendererMessage(1, 9, java.lang.Boolean.valueOf(simpleExoPlayer.skipSilenceEnabled));
                    simpleExoPlayer.sendRendererMessage(2, 7, simpleExoPlayer.frameMetadataListener);
                    simpleExoPlayer.sendRendererMessage(6, 8, simpleExoPlayer.frameMetadataListener);
                    simpleExoPlayer.constructorFinished.open();
                } catch (java.lang.Throwable th) {
                    th = th;
                    simpleExoPlayer.constructorFinished.open();
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                simpleExoPlayer = this;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            simpleExoPlayer = this;
        }
    }

    public SimpleExoPlayer(com.google.android.exoplayer2.SimpleExoPlayer.Builder builder) {
        this(builder.wrappedBuilder);
    }

    public static com.google.android.exoplayer2.DeviceInfo createDeviceInfo(com.google.android.exoplayer2.StreamVolumeManager streamVolumeManager) {
        return new com.google.android.exoplayer2.DeviceInfo(0, streamVolumeManager.getMinVolume(), streamVolumeManager.getMaxVolume());
    }

    public static int getPlayWhenReadyChangeReason(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    private int initializeKeepSessionIdAudioTrack(int i) {
        android.media.AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.keepSessionIdAudioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        if (this.keepSessionIdAudioTrack == null) {
            this.keepSessionIdAudioTrack = new android.media.AudioTrack(3, com.google.android.exoplayer2.audio.Sonic.AMDF_FREQUENCY, 4, 2, 2, 0, i);
        }
        return this.keepSessionIdAudioTrack.getAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifySurfaceSizeChanged(int i, int i2) {
        if (i == this.surfaceWidth && i2 == this.surfaceHeight) {
            return;
        }
        this.surfaceWidth = i;
        this.surfaceHeight = i2;
        this.analyticsCollector.onSurfaceSizeChanged(i, i2);
        java.util.Iterator<com.google.android.exoplayer2.Player.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onSurfaceSizeChanged(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySkipSilenceEnabledChanged() {
        this.analyticsCollector.onSkipSilenceEnabledChanged(this.skipSilenceEnabled);
        java.util.Iterator<com.google.android.exoplayer2.Player.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onSkipSilenceEnabledChanged(this.skipSilenceEnabled);
        }
    }

    private void removeSurfaceCallbacks() {
        if (this.sphericalGLSurfaceView != null) {
            this.player.createMessage(this.frameMetadataListener).setType(10000).setPayload(null).send();
            this.sphericalGLSurfaceView.removeVideoSurfaceListener(this.componentListener);
            this.sphericalGLSurfaceView = null;
        }
        android.view.TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                com.google.android.exoplayer2.util.Log.w(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        android.view.SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    private void sendRendererMessage(int i, int i2, java.lang.Object obj) {
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == i) {
                this.player.createMessage(renderer).setType(i2).setPayload(obj).send();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVolumeToRenderers() {
        sendRendererMessage(1, 2, java.lang.Float.valueOf(this.audioFocusManager.getVolumeMultiplier() * this.volume));
    }

    private void setNonVideoOutputSurfaceHolderInternal(android.view.SurfaceHolder surfaceHolder) {
        this.surfaceHolderSurfaceIsVideoOutput = false;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        android.view.Surface surface = this.surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            android.graphics.Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSurfaceTextureInternal(android.graphics.SurfaceTexture surfaceTexture) {
        android.view.Surface surface = new android.view.Surface(surfaceTexture);
        setVideoOutputInternal(surface);
        this.ownedSurface = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoOutputInternal(java.lang.Object obj) {
        boolean z;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
        int length = rendererArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            com.google.android.exoplayer2.Renderer renderer = rendererArr[i];
            if (renderer.getTrackType() == 2) {
                arrayList.add(this.player.createMessage(renderer).setType(1).setPayload(obj).send());
            }
            i++;
        }
        java.lang.Object obj2 = this.videoOutput;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                java.util.Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((com.google.android.exoplayer2.PlayerMessage) it.next()).blockUntilDelivered(this.detachSurfaceTimeoutMs);
                }
            } catch (java.lang.InterruptedException unused) {
                java.lang.Thread.currentThread().interrupt();
            } catch (java.util.concurrent.TimeoutException unused2) {
            }
            z = false;
            java.lang.Object obj3 = this.videoOutput;
            android.view.Surface surface = this.ownedSurface;
            if (obj3 == surface) {
                surface.release();
                this.ownedSurface = null;
            }
        }
        this.videoOutput = obj;
        if (z) {
            this.player.stop(false, com.google.android.exoplayer2.ExoPlaybackException.createForUnexpected(new com.google.android.exoplayer2.ExoTimeoutException(3), 1003));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayWhenReady(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        this.player.setPlayWhenReady(z2, i3, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWakeAndWifiLock() {
        int playbackState = getPlaybackState();
        if (playbackState != 1) {
            if (playbackState == 2 || playbackState == 3) {
                this.wakeLockManager.setStayAwake(getPlayWhenReady() && !experimentalIsSleepingForOffload());
                this.wifiLockManager.setStayAwake(getPlayWhenReady());
                return;
            } else if (playbackState != 4) {
                throw new java.lang.IllegalStateException();
            }
        }
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
    }

    private void verifyApplicationThread() {
        this.constructorFinished.blockUninterruptible();
        if (java.lang.Thread.currentThread() != getApplicationLooper().getThread()) {
            java.lang.String invariant = com.google.android.exoplayer2.util.Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", java.lang.Thread.currentThread().getName(), getApplicationLooper().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                throw new java.lang.IllegalStateException(invariant);
            }
            com.google.android.exoplayer2.util.Log.w(TAG, invariant, this.hasNotifiedFullWrongThreadWarning ? null : new java.lang.IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAnalyticsListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(analyticsListener);
        this.analyticsCollector.addListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.player.addAudioOffloadListener(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void addListener(com.google.android.exoplayer2.Player.EventListener eventListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(eventListener);
        this.player.addEventListener(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(com.google.android.exoplayer2.Player.Listener listener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(listener);
        this.listeners.add(listener);
        addListener((com.google.android.exoplayer2.Player.EventListener) listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, java.util.List<com.google.android.exoplayer2.MediaItem> list) {
        verifyApplicationThread();
        this.player.addMediaItems(i, list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(int i, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        verifyApplicationThread();
        this.player.addMediaSource(i, mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        verifyApplicationThread();
        this.player.addMediaSource(mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(int i, java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        verifyApplicationThread();
        this.player.addMediaSources(i, list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void addMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        verifyApplicationThread();
        this.player.addMediaSources(list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void clearAuxEffectInfo() {
        setAuxEffectInfo(new com.google.android.exoplayer2.audio.AuxEffectInfo(0, 0.0f));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener) {
        verifyApplicationThread();
        if (this.cameraMotionListener != cameraMotionListener) {
            return;
        }
        this.player.createMessage(this.frameMetadataListener).setType(8).setPayload(null).send();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void clearVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener) {
        verifyApplicationThread();
        if (this.videoFrameMetadataListener != videoFrameMetadataListener) {
            return;
        }
        this.player.createMessage(this.frameMetadataListener).setType(7).setPayload(null).send();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface() {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(null);
        maybeNotifySurfaceSizeChanged(0, 0);
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface(android.view.Surface surface) {
        verifyApplicationThread();
        if (surface == null || surface != this.videoOutput) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null || surfaceHolder != this.surfaceHolder) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceView(android.view.SurfaceView surfaceView) {
        verifyApplicationThread();
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoTextureView(android.view.TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null || textureView != this.textureView) {
            return;
        }
        clearVideoSurface();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.PlayerMessage createMessage(com.google.android.exoplayer2.PlayerMessage.Target target) {
        verifyApplicationThread();
        return this.player.createMessage(target);
    }

    @Override // com.google.android.exoplayer2.Player
    public void decreaseDeviceVolume() {
        verifyApplicationThread();
        this.streamVolumeManager.decreaseVolume();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean experimentalIsSleepingForOffload() {
        verifyApplicationThread();
        return this.player.experimentalIsSleepingForOffload();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        verifyApplicationThread();
        this.player.experimentalSetOffloadSchedulingEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.analytics.AnalyticsCollector getAnalyticsCollector() {
        return this.analyticsCollector;
    }

    @Override // com.google.android.exoplayer2.Player
    public android.os.Looper getApplicationLooper() {
        return this.player.getApplicationLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.audio.AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.ExoPlayer.AudioComponent getAudioComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.decoder.DecoderCounters getAudioDecoderCounters() {
        return this.audioDecoderCounters;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.Format getAudioFormat() {
        return this.audioFormat;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public int getAudioSessionId() {
        return this.audioSessionId;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.Player.Commands getAvailableCommands() {
        verifyApplicationThread();
        return this.player.getAvailableCommands();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        return this.player.getBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.util.Clock getClock() {
        return this.player.getClock();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        return this.player.getContentBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        verifyApplicationThread();
        return this.player.getContentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // com.google.android.exoplayer2.Player
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCurrentCues() {
        verifyApplicationThread();
        return this.currentCues;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentMediaItemIndex() {
        verifyApplicationThread();
        return this.player.getCurrentMediaItemIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        return this.player.getCurrentPeriodIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return this.player.getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return this.player.getCurrentTimeline();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.source.TrackGroupArray getCurrentTrackGroups() {
        verifyApplicationThread();
        return this.player.getCurrentTrackGroups();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.trackselection.TrackSelectionArray getCurrentTrackSelections() {
        verifyApplicationThread();
        return this.player.getCurrentTrackSelections();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.TracksInfo getCurrentTracksInfo() {
        verifyApplicationThread();
        return this.player.getCurrentTracksInfo();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.ExoPlayer.DeviceComponent getDeviceComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.DeviceInfo getDeviceInfo() {
        verifyApplicationThread();
        return this.deviceInfo;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getDeviceVolume() {
        verifyApplicationThread();
        return this.streamVolumeManager.getVolume();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        verifyApplicationThread();
        return this.player.getDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getMaxSeekToPreviousPosition() {
        verifyApplicationThread();
        return this.player.getMaxSeekToPreviousPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.MediaMetadata getMediaMetadata() {
        return this.player.getMediaMetadata();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        verifyApplicationThread();
        return this.player.getPauseAtEndOfMediaItems();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.player.getPlayWhenReady();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public android.os.Looper getPlaybackLooper() {
        return this.player.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return this.player.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.player.getPlaybackState();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return this.player.getPlaybackSuppressionReason();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.ExoPlaybackException getPlayerError() {
        verifyApplicationThread();
        return this.player.getPlayerError();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.MediaMetadata getPlaylistMetadata() {
        return this.player.getPlaylistMetadata();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererCount() {
        verifyApplicationThread();
        return this.player.getRendererCount();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public int getRendererType(int i) {
        verifyApplicationThread();
        return this.player.getRendererType(i);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.player.getRepeatMode();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        verifyApplicationThread();
        return this.player.getSeekBackIncrement();
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        verifyApplicationThread();
        return this.player.getSeekForwardIncrement();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.SeekParameters getSeekParameters() {
        verifyApplicationThread();
        return this.player.getSeekParameters();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.player.getShuffleModeEnabled();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public boolean getSkipSilenceEnabled() {
        return this.skipSilenceEnabled;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.ExoPlayer.TextComponent getTextComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return this.player.getTotalBufferedDuration();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.trackselection.TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThread();
        return this.player.getTrackSelectionParameters();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.trackselection.TrackSelector getTrackSelector() {
        verifyApplicationThread();
        return this.player.getTrackSelector();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoChangeFrameRateStrategy() {
        return this.videoChangeFrameRateStrategy;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.ExoPlayer.VideoComponent getVideoComponent() {
        return this;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.decoder.DecoderCounters getVideoDecoderCounters() {
        return this.videoDecoderCounters;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public com.google.android.exoplayer2.Format getVideoFormat() {
        return this.videoFormat;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public int getVideoScalingMode() {
        return this.videoScalingMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.video.VideoSize getVideoSize() {
        return this.videoSize;
    }

    @Override // com.google.android.exoplayer2.Player
    public float getVolume() {
        return this.volume;
    }

    @Override // com.google.android.exoplayer2.Player
    public void increaseDeviceVolume() {
        verifyApplicationThread();
        this.streamVolumeManager.increaseVolume();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isDeviceMuted() {
        verifyApplicationThread();
        return this.streamVolumeManager.isMuted();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        verifyApplicationThread();
        return this.player.isLoading();
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.player.isPlayingAd();
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        verifyApplicationThread();
        this.player.moveMediaItems(i, i2, i3);
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        verifyApplicationThread();
        boolean playWhenReady = getPlayWhenReady();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, 2);
        updatePlayWhenReady(playWhenReady, iUpdateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, iUpdateAudioFocus));
        this.player.prepare();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z, boolean z2) {
        verifyApplicationThread();
        setMediaSources(java.util.Collections.singletonList(mediaSource), z);
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        android.media.AudioTrack audioTrack;
        verifyApplicationThread();
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 && (audioTrack = this.keepSessionIdAudioTrack) != null) {
            audioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        this.audioBecomingNoisyManager.setEnabled(false);
        this.streamVolumeManager.release();
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
        this.audioFocusManager.release();
        this.player.release();
        this.analyticsCollector.release();
        removeSurfaceCallbacks();
        android.view.Surface surface = this.ownedSurface;
        if (surface != null) {
            surface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((com.google.android.exoplayer2.util.PriorityTaskManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.currentCues = java.util.Collections.emptyList();
        this.playerReleased = true;
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAnalyticsListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        this.analyticsCollector.removeListener(analyticsListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void removeAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.player.removeAudioOffloadListener(audioOffloadListener);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void removeListener(com.google.android.exoplayer2.Player.EventListener eventListener) {
        this.player.removeEventListener(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(com.google.android.exoplayer2.Player.Listener listener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(listener);
        this.listeners.remove(listener);
        removeListener((com.google.android.exoplayer2.Player.EventListener) listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        verifyApplicationThread();
        this.player.removeMediaItems(i, i2);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void retry() {
        verifyApplicationThread();
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(int i, long j) {
        verifyApplicationThread();
        this.analyticsCollector.notifySeekStarted();
        this.player.seekTo(i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        if (!com.google.android.exoplayer2.util.Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            sendRendererMessage(1, 3, audioAttributes);
            this.streamVolumeManager.setStreamType(com.google.android.exoplayer2.util.Util.getStreamTypeForAudioUsage(audioAttributes.usage));
            this.analyticsCollector.onAudioAttributesChanged(audioAttributes);
            java.util.Iterator<com.google.android.exoplayer2.Player.Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onAudioAttributesChanged(audioAttributes);
            }
        }
        com.google.android.exoplayer2.AudioFocusManager audioFocusManager = this.audioFocusManager;
        if (!z) {
            audioAttributes = null;
        }
        audioFocusManager.setAudioAttributes(audioAttributes);
        boolean playWhenReady = getPlayWhenReady();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(playWhenReady, getPlaybackState());
        updatePlayWhenReady(playWhenReady, iUpdateAudioFocus, getPlayWhenReadyChangeReason(playWhenReady, iUpdateAudioFocus));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAudioSessionId(int i) {
        verifyApplicationThread();
        if (this.audioSessionId == i) {
            return;
        }
        if (i == 0) {
            i = com.google.android.exoplayer2.util.Util.SDK_INT < 21 ? initializeKeepSessionIdAudioTrack(0) : com.google.android.exoplayer2.util.Util.generateAudioSessionIdV21(this.applicationContext);
        } else if (com.google.android.exoplayer2.util.Util.SDK_INT < 21) {
            initializeKeepSessionIdAudioTrack(i);
        }
        this.audioSessionId = i;
        sendRendererMessage(1, 10, java.lang.Integer.valueOf(i));
        sendRendererMessage(2, 10, java.lang.Integer.valueOf(i));
        this.analyticsCollector.onAudioSessionIdChanged(i);
        java.util.Iterator<com.google.android.exoplayer2.Player.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionIdChanged(i);
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setAuxEffectInfo(com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo) {
        verifyApplicationThread();
        sendRendererMessage(1, 6, auxEffectInfo);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener) {
        verifyApplicationThread();
        this.cameraMotionListener = cameraMotionListener;
        this.player.createMessage(this.frameMetadataListener).setType(8).setPayload(cameraMotionListener).send();
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceMuted(boolean z) {
        verifyApplicationThread();
        this.streamVolumeManager.setMuted(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceVolume(int i) {
        verifyApplicationThread();
        this.streamVolumeManager.setVolume(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setForegroundMode(boolean z) {
        verifyApplicationThread();
        this.player.setForegroundMode(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setHandleAudioBecomingNoisy(boolean z) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        this.audioBecomingNoisyManager.setEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void setHandleWakeLock(boolean z) {
        setWakeMode(z ? 1 : 0);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list, int i, long j) {
        verifyApplicationThread();
        this.player.setMediaItems(list, i, j);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list, boolean z) {
        verifyApplicationThread();
        this.player.setMediaItems(list, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        verifyApplicationThread();
        this.player.setMediaSource(mediaSource);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j) {
        verifyApplicationThread();
        this.player.setMediaSource(mediaSource, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z) {
        verifyApplicationThread();
        this.player.setMediaSource(mediaSource, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        verifyApplicationThread();
        this.player.setMediaSources(list);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, int i, long j) {
        verifyApplicationThread();
        this.player.setMediaSources(list, i, j);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, boolean z) {
        verifyApplicationThread();
        this.player.setMediaSources(list, z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean z) {
        verifyApplicationThread();
        this.player.setPauseAtEndOfMediaItems(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        int iUpdateAudioFocus = this.audioFocusManager.updateAudioFocus(z, getPlaybackState());
        updatePlayWhenReady(z, iUpdateAudioFocus, getPlayWhenReadyChangeReason(z, iUpdateAudioFocus));
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        this.player.setPlaybackParameters(playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaylistMetadata(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        this.player.setPlaylistMetadata(mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setPriorityTaskManager(com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager) {
        verifyApplicationThread();
        if (com.google.android.exoplayer2.util.Util.areEqual(this.priorityTaskManager, priorityTaskManager)) {
            return;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((com.google.android.exoplayer2.util.PriorityTaskManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
        }
        if (priorityTaskManager == null || !isLoading()) {
            this.isPriorityTaskManagerRegistered = false;
        } else {
            priorityTaskManager.add(0);
            this.isPriorityTaskManagerRegistered = true;
        }
        this.priorityTaskManager = priorityTaskManager;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(int i) {
        verifyApplicationThread();
        this.player.setRepeatMode(i);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters) {
        verifyApplicationThread();
        this.player.setSeekParameters(seekParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(boolean z) {
        verifyApplicationThread();
        this.player.setShuffleModeEnabled(z);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        verifyApplicationThread();
        this.player.setShuffleOrder(shuffleOrder);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public void setSkipSilenceEnabled(boolean z) {
        verifyApplicationThread();
        if (this.skipSilenceEnabled == z) {
            return;
        }
        this.skipSilenceEnabled = z;
        sendRendererMessage(1, 9, java.lang.Boolean.valueOf(z));
        notifySkipSilenceEnabledChanged();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    @java.lang.Deprecated
    public void setThrowsWhenUsingWrongThread(boolean z) {
        this.throwsWhenUsingWrongThread = z;
    }

    @Override // com.google.android.exoplayer2.Player
    public void setTrackSelectionParameters(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThread();
        this.player.setTrackSelectionParameters(trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoChangeFrameRateStrategy(int i) {
        verifyApplicationThread();
        if (this.videoChangeFrameRateStrategy == i) {
            return;
        }
        this.videoChangeFrameRateStrategy = i;
        sendRendererMessage(2, 5, java.lang.Integer.valueOf(i));
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener) {
        verifyApplicationThread();
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        this.player.createMessage(this.frameMetadataListener).setType(7).setPayload(videoFrameMetadataListener).send();
    }

    @Override // com.google.android.exoplayer2.ExoPlayer, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public void setVideoScalingMode(int i) {
        verifyApplicationThread();
        this.videoScalingMode = i;
        sendRendererMessage(2, 4, java.lang.Integer.valueOf(i));
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurface(android.view.Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(surface);
        int i = surface == null ? 0 : -1;
        maybeNotifySurfaceSizeChanged(i, i);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        android.view.Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            setVideoOutputInternal(surface);
            android.graphics.Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceView(android.view.SurfaceView surfaceView) {
        verifyApplicationThread();
        if (surfaceView instanceof com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer) {
            removeSurfaceCallbacks();
            setVideoOutputInternal(surfaceView);
        } else {
            if (!(surfaceView instanceof com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView)) {
                setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
                return;
            }
            removeSurfaceCallbacks();
            this.sphericalGLSurfaceView = (com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView) surfaceView;
            this.player.createMessage(this.frameMetadataListener).setType(10000).setPayload(this.sphericalGLSurfaceView).send();
            this.sphericalGLSurfaceView.addVideoSurfaceListener(this.componentListener);
            setVideoOutputInternal(this.sphericalGLSurfaceView.getVideoSurface());
        }
        setNonVideoOutputSurfaceHolderInternal(surfaceView.getHolder());
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoTextureView(android.view.TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        android.graphics.SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            setSurfaceTextureInternal(surfaceTexture);
            maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVolume(float f2) {
        verifyApplicationThread();
        float fConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(f2, 0.0f, 1.0f);
        if (this.volume == fConstrainValue) {
            return;
        }
        this.volume = fConstrainValue;
        sendVolumeToRenderers();
        this.analyticsCollector.onVolumeChanged(fConstrainValue);
        java.util.Iterator<com.google.android.exoplayer2.Player.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onVolumeChanged(fConstrainValue);
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayer
    public void setWakeMode(int i) {
        verifyApplicationThread();
        if (i == 0) {
            this.wakeLockManager.setEnabled(false);
        } else {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                this.wakeLockManager.setEnabled(true);
                this.wifiLockManager.setEnabled(true);
                return;
            }
            this.wakeLockManager.setEnabled(true);
        }
        this.wifiLockManager.setEnabled(false);
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        stop(false);
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public void stop(boolean z) {
        verifyApplicationThread();
        this.audioFocusManager.updateAudioFocus(getPlayWhenReady(), 1);
        this.player.stop(z);
        this.currentCues = java.util.Collections.emptyList();
    }
}
