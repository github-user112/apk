package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public interface ExoPlayer extends com.google.android.exoplayer2.Player {
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @java.lang.Deprecated
    public interface AudioComponent {
        @java.lang.Deprecated
        void clearAuxEffectInfo();

        @java.lang.Deprecated
        com.google.android.exoplayer2.audio.AudioAttributes getAudioAttributes();

        @java.lang.Deprecated
        int getAudioSessionId();

        @java.lang.Deprecated
        boolean getSkipSilenceEnabled();

        @java.lang.Deprecated
        float getVolume();

        @java.lang.Deprecated
        void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z);

        @java.lang.Deprecated
        void setAudioSessionId(int i);

        @java.lang.Deprecated
        void setAuxEffectInfo(com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo);

        @java.lang.Deprecated
        void setSkipSilenceEnabled(boolean z);

        @java.lang.Deprecated
        void setVolume(float f2);
    }

    public interface AudioOffloadListener {
        void onExperimentalOffloadSchedulingEnabledChanged(boolean z);

        void onExperimentalSleepingForOffloadChanged(boolean z);
    }

    public static final class Builder {
        public e.c.b.a.k<com.google.android.exoplayer2.analytics.AnalyticsCollector> analyticsCollectorSupplier;
        public com.google.android.exoplayer2.audio.AudioAttributes audioAttributes;
        public e.c.b.a.k<com.google.android.exoplayer2.upstream.BandwidthMeter> bandwidthMeterSupplier;
        public boolean buildCalled;
        public com.google.android.exoplayer2.util.Clock clock;
        public final android.content.Context context;
        public long detachSurfaceTimeoutMs;
        public long foregroundModeTimeoutMs;
        public boolean handleAudioBecomingNoisy;
        public boolean handleAudioFocus;
        public com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl;
        public e.c.b.a.k<com.google.android.exoplayer2.LoadControl> loadControlSupplier;
        public android.os.Looper looper;
        public e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory> mediaSourceFactorySupplier;
        public boolean pauseAtEndOfMediaItems;
        public com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager;
        public long releaseTimeoutMs;
        public e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory> renderersFactorySupplier;
        public long seekBackIncrementMs;
        public long seekForwardIncrementMs;
        public com.google.android.exoplayer2.SeekParameters seekParameters;
        public boolean skipSilenceEnabled;
        public e.c.b.a.k<com.google.android.exoplayer2.trackselection.TrackSelector> trackSelectorSupplier;
        public boolean useLazyPreparation;
        public int videoChangeFrameRateStrategy;
        public int videoScalingMode;
        public int wakeMode;

        public Builder(final android.content.Context context) {
            this(context, (e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory>) new e.c.b.a.k() { // from class: e.c.a.a.g
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.a(context);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>) new e.c.b.a.k() { // from class: e.c.a.a.n
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.b(context);
                }
            });
        }

        public Builder(final android.content.Context context, final com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            this(context, (e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory>) new e.c.b.a.k() { // from class: e.c.a.a.m
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.j(renderersFactory);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>) new e.c.b.a.k() { // from class: e.c.a.a.k
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.k(context);
                }
            });
        }

        public Builder(android.content.Context context, final com.google.android.exoplayer2.RenderersFactory renderersFactory, final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            this(context, (e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory>) new e.c.b.a.k() { // from class: e.c.a.a.w
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.n(renderersFactory);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>) new e.c.b.a.k() { // from class: e.c.a.a.c0
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.o(mediaSourceFactory);
                }
            });
        }

        public Builder(android.content.Context context, final com.google.android.exoplayer2.RenderersFactory renderersFactory, final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, final com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, final com.google.android.exoplayer2.LoadControl loadControl, final com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, final com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            this(context, (e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory>) new e.c.b.a.k() { // from class: e.c.a.a.y
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.p(renderersFactory);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>) new e.c.b.a.k() { // from class: e.c.a.a.z
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.q(mediaSourceFactory);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.trackselection.TrackSelector>) new e.c.b.a.k() { // from class: e.c.a.a.h
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.c(trackSelector);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.LoadControl>) new e.c.b.a.k() { // from class: e.c.a.a.u
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.d(loadControl);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.upstream.BandwidthMeter>) new e.c.b.a.k() { // from class: e.c.a.a.q
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.e(bandwidthMeter);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.analytics.AnalyticsCollector>) new e.c.b.a.k() { // from class: e.c.a.a.j
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.f(analyticsCollector);
                }
            });
        }

        public Builder(final android.content.Context context, final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            this(context, (e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory>) new e.c.b.a.k() { // from class: e.c.a.a.b0
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.l(context);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>) new e.c.b.a.k() { // from class: e.c.a.a.l
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.m(mediaSourceFactory);
                }
            });
        }

        public Builder(final android.content.Context context, e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory> kVar, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory> kVar2) {
            this(context, kVar, kVar2, (e.c.b.a.k<com.google.android.exoplayer2.trackselection.TrackSelector>) new e.c.b.a.k() { // from class: e.c.a.a.t
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.g(context);
                }
            }, new e.c.b.a.k() { // from class: e.c.a.a.v1
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return new com.google.android.exoplayer2.DefaultLoadControl();
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.upstream.BandwidthMeter>) new e.c.b.a.k() { // from class: e.c.a.a.p
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, (e.c.b.a.k<com.google.android.exoplayer2.analytics.AnalyticsCollector>) null);
        }

        public Builder(android.content.Context context, e.c.b.a.k<com.google.android.exoplayer2.RenderersFactory> kVar, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory> kVar2, e.c.b.a.k<com.google.android.exoplayer2.trackselection.TrackSelector> kVar3, e.c.b.a.k<com.google.android.exoplayer2.LoadControl> kVar4, e.c.b.a.k<com.google.android.exoplayer2.upstream.BandwidthMeter> kVar5, e.c.b.a.k<com.google.android.exoplayer2.analytics.AnalyticsCollector> kVar6) {
            this.context = context;
            this.renderersFactorySupplier = kVar;
            this.mediaSourceFactorySupplier = kVar2;
            this.trackSelectorSupplier = kVar3;
            this.loadControlSupplier = kVar4;
            this.bandwidthMeterSupplier = kVar5;
            this.analyticsCollectorSupplier = kVar6 == null ? new e.c.b.a.k() { // from class: e.c.a.a.v
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return this.a.i();
                }
            } : kVar6;
            this.looper = com.google.android.exoplayer2.util.Util.getCurrentOrMainLooper();
            this.audioAttributes = com.google.android.exoplayer2.audio.AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = com.google.android.exoplayer2.SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = com.google.android.exoplayer2.C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
            this.livePlaybackSpeedControl = new com.google.android.exoplayer2.DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = com.google.android.exoplayer2.util.Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory a(android.content.Context context) {
            return new com.google.android.exoplayer2.DefaultRenderersFactory(context);
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory b(android.content.Context context) {
            return new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(context, new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory());
        }

        public static /* synthetic */ com.google.android.exoplayer2.trackselection.TrackSelector c(com.google.android.exoplayer2.trackselection.TrackSelector trackSelector) {
            return trackSelector;
        }

        public static /* synthetic */ com.google.android.exoplayer2.LoadControl d(com.google.android.exoplayer2.LoadControl loadControl) {
            return loadControl;
        }

        public static /* synthetic */ com.google.android.exoplayer2.upstream.BandwidthMeter e(com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public static /* synthetic */ com.google.android.exoplayer2.analytics.AnalyticsCollector f(com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            return analyticsCollector;
        }

        public static /* synthetic */ com.google.android.exoplayer2.trackselection.TrackSelector g(android.content.Context context) {
            return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector(context);
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory j(com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory k(android.content.Context context) {
            return new com.google.android.exoplayer2.source.DefaultMediaSourceFactory(context, new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory());
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory l(android.content.Context context) {
            return new com.google.android.exoplayer2.DefaultRenderersFactory(context);
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory m(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory n(com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory o(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory p(com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory q(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.analytics.AnalyticsCollector r(com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            return analyticsCollector;
        }

        public static /* synthetic */ com.google.android.exoplayer2.upstream.BandwidthMeter s(com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public static /* synthetic */ com.google.android.exoplayer2.LoadControl t(com.google.android.exoplayer2.LoadControl loadControl) {
            return loadControl;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory u(com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.RenderersFactory v(com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ com.google.android.exoplayer2.trackselection.TrackSelector w(com.google.android.exoplayer2.trackselection.TrackSelector trackSelector) {
            return trackSelector;
        }

        public com.google.android.exoplayer2.ExoPlayer build() {
            return buildSimpleExoPlayer();
        }

        public com.google.android.exoplayer2.SimpleExoPlayer buildSimpleExoPlayer() {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new com.google.android.exoplayer2.SimpleExoPlayer(this);
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder experimentalSetForegroundModeTimeoutMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.foregroundModeTimeoutMs = j;
            return this;
        }

        public /* synthetic */ com.google.android.exoplayer2.analytics.AnalyticsCollector i() {
            return new com.google.android.exoplayer2.analytics.AnalyticsCollector((com.google.android.exoplayer2.util.Clock) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.clock));
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setAnalyticsCollector(final com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.analyticsCollectorSupplier = new e.c.b.a.k() { // from class: e.c.a.a.i
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.r(analyticsCollector);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.audioAttributes = audioAttributes;
            this.handleAudioFocus = z;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setBandwidthMeter(final com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.bandwidthMeterSupplier = new e.c.b.a.k() { // from class: e.c.a.a.a0
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.s(bandwidthMeter);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setClock(com.google.android.exoplayer2.util.Clock clock) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setDetachSurfaceTimeoutMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.detachSurfaceTimeoutMs = j;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setHandleAudioBecomingNoisy(boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.handleAudioBecomingNoisy = z;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setLivePlaybackSpeedControl(com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.livePlaybackSpeedControl = livePlaybackSpeedControl;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setLoadControl(final com.google.android.exoplayer2.LoadControl loadControl) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.loadControlSupplier = new e.c.b.a.k() { // from class: e.c.a.a.x
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.t(loadControl);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setLooper(android.os.Looper looper) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.looper = looper;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setMediaSourceFactory(final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.mediaSourceFactorySupplier = new e.c.b.a.k() { // from class: e.c.a.a.o
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.u(mediaSourceFactory);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setPauseAtEndOfMediaItems(boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setPriorityTaskManager(com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setReleaseTimeoutMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.releaseTimeoutMs = j;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setRenderersFactory(final com.google.android.exoplayer2.RenderersFactory renderersFactory) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.renderersFactorySupplier = new e.c.b.a.k() { // from class: e.c.a.a.s
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.v(renderersFactory);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setSeekBackIncrementMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j > 0);
            com.google.android.exoplayer2.util.Assertions.checkState(true ^ this.buildCalled);
            this.seekBackIncrementMs = j;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setSeekForwardIncrementMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j > 0);
            com.google.android.exoplayer2.util.Assertions.checkState(true ^ this.buildCalled);
            this.seekForwardIncrementMs = j;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.seekParameters = seekParameters;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setSkipSilenceEnabled(boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.skipSilenceEnabled = z;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setTrackSelector(final com.google.android.exoplayer2.trackselection.TrackSelector trackSelector) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.trackSelectorSupplier = new e.c.b.a.k() { // from class: e.c.a.a.r
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.ExoPlayer.Builder.w(trackSelector);
                }
            };
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setUseLazyPreparation(boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.useLazyPreparation = z;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setVideoChangeFrameRateStrategy(int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.videoChangeFrameRateStrategy = i;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setVideoScalingMode(int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.videoScalingMode = i;
            return this;
        }

        public com.google.android.exoplayer2.ExoPlayer.Builder setWakeMode(int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.wakeMode = i;
            return this;
        }
    }

    @java.lang.Deprecated
    public interface DeviceComponent {
        @java.lang.Deprecated
        void decreaseDeviceVolume();

        @java.lang.Deprecated
        com.google.android.exoplayer2.DeviceInfo getDeviceInfo();

        @java.lang.Deprecated
        int getDeviceVolume();

        @java.lang.Deprecated
        void increaseDeviceVolume();

        @java.lang.Deprecated
        boolean isDeviceMuted();

        @java.lang.Deprecated
        void setDeviceMuted(boolean z);

        @java.lang.Deprecated
        void setDeviceVolume(int i);
    }

    @java.lang.Deprecated
    public interface TextComponent {
        @java.lang.Deprecated
        java.util.List<com.google.android.exoplayer2.text.Cue> getCurrentCues();
    }

    @java.lang.Deprecated
    public interface VideoComponent {
        @java.lang.Deprecated
        void clearCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener);

        @java.lang.Deprecated
        void clearVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener);

        @java.lang.Deprecated
        void clearVideoSurface();

        @java.lang.Deprecated
        void clearVideoSurface(android.view.Surface surface);

        @java.lang.Deprecated
        void clearVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder);

        @java.lang.Deprecated
        void clearVideoSurfaceView(android.view.SurfaceView surfaceView);

        @java.lang.Deprecated
        void clearVideoTextureView(android.view.TextureView textureView);

        @java.lang.Deprecated
        int getVideoChangeFrameRateStrategy();

        @java.lang.Deprecated
        int getVideoScalingMode();

        @java.lang.Deprecated
        com.google.android.exoplayer2.video.VideoSize getVideoSize();

        @java.lang.Deprecated
        void setCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener);

        @java.lang.Deprecated
        void setVideoChangeFrameRateStrategy(int i);

        @java.lang.Deprecated
        void setVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener);

        @java.lang.Deprecated
        void setVideoScalingMode(int i);

        @java.lang.Deprecated
        void setVideoSurface(android.view.Surface surface);

        @java.lang.Deprecated
        void setVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder);

        @java.lang.Deprecated
        void setVideoSurfaceView(android.view.SurfaceView surfaceView);

        @java.lang.Deprecated
        void setVideoTextureView(android.view.TextureView textureView);
    }

    void addAnalyticsListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener);

    void addAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener);

    @java.lang.Deprecated
    void addListener(com.google.android.exoplayer2.Player.EventListener eventListener);

    void addMediaSource(int i, com.google.android.exoplayer2.source.MediaSource mediaSource);

    void addMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource);

    void addMediaSources(int i, java.util.List<com.google.android.exoplayer2.source.MediaSource> list);

    void addMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list);

    void clearAuxEffectInfo();

    void clearCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener);

    void clearVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener);

    com.google.android.exoplayer2.PlayerMessage createMessage(com.google.android.exoplayer2.PlayerMessage.Target target);

    boolean experimentalIsSleepingForOffload();

    void experimentalSetOffloadSchedulingEnabled(boolean z);

    com.google.android.exoplayer2.analytics.AnalyticsCollector getAnalyticsCollector();

    @java.lang.Deprecated
    com.google.android.exoplayer2.ExoPlayer.AudioComponent getAudioComponent();

    com.google.android.exoplayer2.decoder.DecoderCounters getAudioDecoderCounters();

    com.google.android.exoplayer2.Format getAudioFormat();

    int getAudioSessionId();

    com.google.android.exoplayer2.util.Clock getClock();

    @java.lang.Deprecated
    com.google.android.exoplayer2.ExoPlayer.DeviceComponent getDeviceComponent();

    boolean getPauseAtEndOfMediaItems();

    android.os.Looper getPlaybackLooper();

    @Override // com.google.android.exoplayer2.Player
    com.google.android.exoplayer2.ExoPlaybackException getPlayerError();

    @Override // com.google.android.exoplayer2.Player
    /* bridge */ /* synthetic */ com.google.android.exoplayer2.PlaybackException getPlayerError();

    int getRendererCount();

    int getRendererType(int i);

    com.google.android.exoplayer2.SeekParameters getSeekParameters();

    boolean getSkipSilenceEnabled();

    @java.lang.Deprecated
    com.google.android.exoplayer2.ExoPlayer.TextComponent getTextComponent();

    com.google.android.exoplayer2.trackselection.TrackSelector getTrackSelector();

    int getVideoChangeFrameRateStrategy();

    @java.lang.Deprecated
    com.google.android.exoplayer2.ExoPlayer.VideoComponent getVideoComponent();

    com.google.android.exoplayer2.decoder.DecoderCounters getVideoDecoderCounters();

    com.google.android.exoplayer2.Format getVideoFormat();

    int getVideoScalingMode();

    @java.lang.Deprecated
    void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource);

    @java.lang.Deprecated
    void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z, boolean z2);

    void removeAnalyticsListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener);

    void removeAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener);

    @java.lang.Deprecated
    void removeListener(com.google.android.exoplayer2.Player.EventListener eventListener);

    @java.lang.Deprecated
    void retry();

    void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo);

    void setCameraMotionListener(com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener);

    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    @java.lang.Deprecated
    void setHandleWakeLock(boolean z);

    void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource);

    void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j);

    void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z);

    void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list);

    void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, int i, long j);

    void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, boolean z);

    void setPauseAtEndOfMediaItems(boolean z);

    void setPriorityTaskManager(com.google.android.exoplayer2.util.PriorityTaskManager priorityTaskManager);

    void setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters);

    void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder);

    void setSkipSilenceEnabled(boolean z);

    @java.lang.Deprecated
    void setThrowsWhenUsingWrongThread(boolean z);

    void setVideoChangeFrameRateStrategy(int i);

    void setVideoFrameMetadataListener(com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener);

    void setVideoScalingMode(int i);

    void setWakeMode(int i);
}
