package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class DefaultAudioSink implements com.google.android.exoplayer2.audio.AudioSink {
    public static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    public static final int AUDIO_TRACK_RETRY_DURATION_MS = 100;
    public static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    public static final boolean DEFAULT_SKIP_SILENCE = false;
    public static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    public static final long MAX_BUFFER_DURATION_US = 750000;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    public static final long MIN_BUFFER_DURATION_US = 250000;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    public static final long OFFLOAD_BUFFER_DURATION_US = 50000000;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED = 3;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    public static final int OUTPUT_MODE_OFFLOAD = 1;
    public static final int OUTPUT_MODE_PASSTHROUGH = 2;
    public static final int OUTPUT_MODE_PCM = 0;
    public static final long PASSTHROUGH_BUFFER_DURATION_US = 250000;
    public static final java.lang.String TAG = "DefaultAudioSink";
    public static boolean failOnSpuriousAudioTimestamp = false;
    public com.google.android.exoplayer2.audio.AudioProcessor[] activeAudioProcessors;
    public com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters afterDrainParameters;
    public com.google.android.exoplayer2.audio.AudioAttributes audioAttributes;
    public final com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities;
    public final com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain audioProcessorChain;
    public int audioSessionId;
    public android.media.AudioTrack audioTrack;
    public com.google.android.exoplayer2.PlaybackParameters audioTrackPlaybackParameters;
    public final com.google.android.exoplayer2.audio.AudioTrackPositionTracker audioTrackPositionTracker;
    public com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo;
    public java.nio.ByteBuffer avSyncHeader;
    public int bytesUntilNextAvSync;
    public final com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor channelMappingAudioProcessor;
    public com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration;
    public int drainingAudioProcessorIndex;
    public final boolean enableAudioTrackPlaybackParams;
    public final boolean enableFloatOutput;
    public boolean externalAudioSessionIdProvided;
    public int framesPerEncodedSample;
    public boolean handledEndOfStream;
    public final com.google.android.exoplayer2.audio.DefaultAudioSink.PendingExceptionHolder<com.google.android.exoplayer2.audio.AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    public java.nio.ByteBuffer inputBuffer;
    public int inputBufferAccessUnitCount;
    public boolean isWaitingForOffloadEndOfStreamHandled;
    public long lastFeedElapsedRealtimeMs;
    public com.google.android.exoplayer2.audio.AudioSink.Listener listener;
    public com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters mediaPositionParameters;
    public final java.util.ArrayDeque<com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters> mediaPositionParametersCheckpoints;
    public boolean offloadDisabledUntilNextConfiguration;
    public final int offloadMode;
    public com.google.android.exoplayer2.audio.DefaultAudioSink.StreamEventCallbackV29 offloadStreamEventCallbackV29;
    public java.nio.ByteBuffer outputBuffer;
    public java.nio.ByteBuffer[] outputBuffers;
    public com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration pendingConfiguration;
    public boolean playing;
    public byte[] preV21OutputBuffer;
    public int preV21OutputBufferOffset;
    public final android.os.ConditionVariable releasingConditionVariable;
    public long startMediaTimeUs;
    public boolean startMediaTimeUsNeedsInit;
    public boolean startMediaTimeUsNeedsSync;
    public boolean stoppedAudioTrack;
    public long submittedEncodedFrames;
    public long submittedPcmBytes;
    public final com.google.android.exoplayer2.audio.AudioProcessor[] toFloatPcmAvailableAudioProcessors;
    public final com.google.android.exoplayer2.audio.AudioProcessor[] toIntPcmAvailableAudioProcessors;
    public final com.google.android.exoplayer2.audio.TrimmingAudioProcessor trimmingAudioProcessor;
    public boolean tunneling;
    public float volume;
    public final com.google.android.exoplayer2.audio.DefaultAudioSink.PendingExceptionHolder<com.google.android.exoplayer2.audio.AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    public long writtenEncodedFrames;
    public long writtenPcmBytes;

    public interface AudioProcessorChain {
        com.google.android.exoplayer2.PlaybackParameters applyPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters);

        boolean applySkipSilenceEnabled(boolean z);

        com.google.android.exoplayer2.audio.AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long j);

        long getSkippedOutputFrameCount();
    }

    public static final class Configuration {
        public final com.google.android.exoplayer2.audio.AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final com.google.android.exoplayer2.Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public Configuration(com.google.android.exoplayer2.Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i;
            this.outputMode = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.availableAudioProcessors = audioProcessorArr;
            this.bufferSize = computeBufferSize(i7, z);
        }

        private int computeBufferSize(int i, boolean z) {
            long j;
            if (i != 0) {
                return i;
            }
            int i2 = this.outputMode;
            if (i2 == 0) {
                return getPcmDefaultBufferSize(z ? 8.0f : 1.0f);
            }
            if (i2 == 1) {
                j = com.google.android.exoplayer2.audio.DefaultAudioSink.OFFLOAD_BUFFER_DURATION_US;
            } else {
                if (i2 != 2) {
                    throw new java.lang.IllegalStateException();
                }
                j = 250000;
            }
            return getEncodedDefaultBufferSize(j);
        }

        private android.media.AudioTrack createAudioTrack(boolean z, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, int i) {
            int i2 = com.google.android.exoplayer2.util.Util.SDK_INT;
            return i2 >= 29 ? createAudioTrackV29(z, audioAttributes, i) : i2 >= 21 ? createAudioTrackV21(z, audioAttributes, i) : createAudioTrackV9(audioAttributes, i);
        }

        private android.media.AudioTrack createAudioTrackV21(boolean z, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, int i) {
            return new android.media.AudioTrack(getAudioTrackAttributesV21(audioAttributes, z), com.google.android.exoplayer2.audio.DefaultAudioSink.getAudioFormat(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i);
        }

        private android.media.AudioTrack createAudioTrackV29(boolean z, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, int i) {
            return new android.media.AudioTrack.Builder().setAudioAttributes(getAudioTrackAttributesV21(audioAttributes, z)).setAudioFormat(com.google.android.exoplayer2.audio.DefaultAudioSink.getAudioFormat(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding)).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i).setOffloadedPlayback(this.outputMode == 1).build();
        }

        private android.media.AudioTrack createAudioTrackV9(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, int i) {
            int streamTypeForAudioUsage = com.google.android.exoplayer2.util.Util.getStreamTypeForAudioUsage(audioAttributes.usage);
            int i2 = this.outputSampleRate;
            int i3 = this.outputChannelConfig;
            int i4 = this.outputEncoding;
            int i5 = this.bufferSize;
            return i == 0 ? new android.media.AudioTrack(streamTypeForAudioUsage, i2, i3, i4, i5, 1) : new android.media.AudioTrack(streamTypeForAudioUsage, i2, i3, i4, i5, 1, i);
        }

        public static android.media.AudioAttributes getAudioTrackAttributesV21(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, boolean z) {
            return z ? getAudioTrackTunnelingAttributesV21() : audioAttributes.getAudioAttributesV21();
        }

        public static android.media.AudioAttributes getAudioTrackTunnelingAttributesV21() {
            return new android.media.AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int getEncodedDefaultBufferSize(long j) {
            int maximumEncodedRateBytesPerSecond = com.google.android.exoplayer2.audio.DefaultAudioSink.getMaximumEncodedRateBytesPerSecond(this.outputEncoding);
            if (this.outputEncoding == 5) {
                maximumEncodedRateBytesPerSecond *= 2;
            }
            return (int) ((j * maximumEncodedRateBytesPerSecond) / 1000000);
        }

        private int getPcmDefaultBufferSize(float f2) {
            int minBufferSize = android.media.AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            com.google.android.exoplayer2.util.Assertions.checkState(minBufferSize != -2);
            int iConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, java.lang.Math.max(minBufferSize, ((int) durationUsToFrames(com.google.android.exoplayer2.audio.DefaultAudioSink.MAX_BUFFER_DURATION_US)) * this.outputPcmFrameSize));
            return f2 != 1.0f ? java.lang.Math.round(iConstrainValue * f2) : iConstrainValue;
        }

        public android.media.AudioTrack buildAudioTrack(boolean z, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes, int i) throws com.google.android.exoplayer2.audio.AudioSink.InitializationException {
            try {
                android.media.AudioTrack audioTrackCreateAudioTrack = createAudioTrack(z, audioAttributes, i);
                int state = audioTrackCreateAudioTrack.getState();
                if (state == 1) {
                    return audioTrackCreateAudioTrack;
                }
                try {
                    audioTrackCreateAudioTrack.release();
                } catch (java.lang.Exception unused) {
                }
                throw new com.google.android.exoplayer2.audio.AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), null);
            } catch (java.lang.IllegalArgumentException | java.lang.UnsupportedOperationException e2) {
                throw new com.google.android.exoplayer2.audio.AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), e2);
            }
        }

        public boolean canReuseAudioTrack(com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize;
        }

        public long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputFormat.sampleRate;
        }

        public boolean outputModeIsOffload() {
            return this.outputMode == 1;
        }
    }

    public static class DefaultAudioProcessorChain implements com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain {
        public final com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessors;
        public final com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        public final com.google.android.exoplayer2.audio.SonicAudioProcessor sonicAudioProcessor;

        public DefaultAudioProcessorChain(com.google.android.exoplayer2.audio.AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor(), new com.google.android.exoplayer2.audio.SonicAudioProcessor());
        }

        public DefaultAudioProcessorChain(com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr, com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, com.google.android.exoplayer2.audio.SonicAudioProcessor sonicAudioProcessor) {
            com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr2 = new com.google.android.exoplayer2.audio.AudioProcessor[audioProcessorArr.length + 2];
            this.audioProcessors = audioProcessorArr2;
            java.lang.System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.silenceSkippingAudioProcessor = silenceSkippingAudioProcessor;
            this.sonicAudioProcessor = sonicAudioProcessor;
            com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr3 = this.audioProcessors;
            audioProcessorArr3[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr3[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public com.google.android.exoplayer2.PlaybackParameters applyPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
            this.sonicAudioProcessor.setSpeed(playbackParameters.speed);
            this.sonicAudioProcessor.setPitch(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean z) {
            this.silenceSkippingAudioProcessor.setEnabled(z);
            return z;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public com.google.android.exoplayer2.audio.AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getMediaDuration(long j) {
            return this.sonicAudioProcessor.getMediaDuration(j);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }
    }

    public static final class InvalidAudioTrackTimestampException extends java.lang.RuntimeException {
        public InvalidAudioTrackTimestampException(java.lang.String str) {
            super(str);
        }
    }

    public static final class MediaPositionParameters {
        public final long audioTrackPositionUs;
        public final long mediaTimeUs;
        public final com.google.android.exoplayer2.PlaybackParameters playbackParameters;
        public final boolean skipSilence;

        public MediaPositionParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters, boolean z, long j, long j2) {
            this.playbackParameters = playbackParameters;
            this.skipSilence = z;
            this.mediaTimeUs = j;
            this.audioTrackPositionUs = j2;
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface OffloadMode {
    }

    public static final class PendingExceptionHolder<T extends java.lang.Exception> {
        public T pendingException;
        public long throwDeadlineMs;
        public final long throwDelayMs;

        public PendingExceptionHolder(long j) {
            this.throwDelayMs = j;
        }

        public void clear() {
            this.pendingException = null;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public void throwExceptionIfDeadlineIsReached(T t) throws T {
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (this.pendingException == null) {
                this.pendingException = t;
                this.throwDeadlineMs = this.throwDelayMs + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.throwDeadlineMs) {
                T t2 = this.pendingException;
                T t3 = this.pendingException;
                clear();
                throw t3;
            }
        }
    }

    public final class PositionTrackerListener implements com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener {
        public PositionTrackerListener() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.audio.DefaultAudioSink.TAG, sb.toString());
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(long j) {
            if (com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener != null) {
                com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener.onPositionAdvancing(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            long submittedFrames = com.google.android.exoplayer2.audio.DefaultAudioSink.this.getSubmittedFrames();
            long writtenFrames = com.google.android.exoplayer2.audio.DefaultAudioSink.this.getWrittenFrames();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(submittedFrames);
            sb.append(", ");
            sb.append(writtenFrames);
            java.lang.String string = sb.toString();
            if (com.google.android.exoplayer2.audio.DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new com.google.android.exoplayer2.audio.DefaultAudioSink.InvalidAudioTrackTimestampException(string);
            }
            com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.audio.DefaultAudioSink.TAG, string);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            long submittedFrames = com.google.android.exoplayer2.audio.DefaultAudioSink.this.getSubmittedFrames();
            long writtenFrames = com.google.android.exoplayer2.audio.DefaultAudioSink.this.getWrittenFrames();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(submittedFrames);
            sb.append(", ");
            sb.append(writtenFrames);
            java.lang.String string = sb.toString();
            if (com.google.android.exoplayer2.audio.DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new com.google.android.exoplayer2.audio.DefaultAudioSink.InvalidAudioTrackTimestampException(string);
            }
            com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.audio.DefaultAudioSink.TAG, string);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i, long j) {
            if (com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener != null) {
                com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener.onUnderrun(i, j, android.os.SystemClock.elapsedRealtime() - com.google.android.exoplayer2.audio.DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    public final class StreamEventCallbackV29 {
        public final android.media.AudioTrack.StreamEventCallback callback;
        public final android.os.Handler handler = new android.os.Handler();

        public StreamEventCallbackV29() {
            this.callback = new android.media.AudioTrack.StreamEventCallback() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.StreamEventCallbackV29.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public void onDataRequest(android.media.AudioTrack audioTrack, int i) {
                    com.google.android.exoplayer2.util.Assertions.checkState(audioTrack == com.google.android.exoplayer2.audio.DefaultAudioSink.this.audioTrack);
                    if (com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener == null || !com.google.android.exoplayer2.audio.DefaultAudioSink.this.playing) {
                        return;
                    }
                    com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onTearDown(android.media.AudioTrack audioTrack) {
                    com.google.android.exoplayer2.util.Assertions.checkState(audioTrack == com.google.android.exoplayer2.audio.DefaultAudioSink.this.audioTrack);
                    if (com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener == null || !com.google.android.exoplayer2.audio.DefaultAudioSink.this.playing) {
                        return;
                    }
                    com.google.android.exoplayer2.audio.DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                }
            };
        }

        public void register(android.media.AudioTrack audioTrack) {
            final android.os.Handler handler = this.handler;
            handler.getClass();
            audioTrack.registerStreamEventCallback(new java.util.concurrent.Executor() { // from class: e.c.a.a.g2.l
                @Override // java.util.concurrent.Executor
                public final void execute(java.lang.Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.callback);
        }

        public void unregister(android.media.AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities, com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain audioProcessorChain, boolean z, boolean z2, int i) {
        this.audioCapabilities = audioCapabilities;
        this.audioProcessorChain = (com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain) com.google.android.exoplayer2.util.Assertions.checkNotNull(audioProcessorChain);
        this.enableFloatOutput = com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && z;
        this.enableAudioTrackPlaybackParams = com.google.android.exoplayer2.util.Util.SDK_INT >= 23 && z2;
        this.offloadMode = com.google.android.exoplayer2.util.Util.SDK_INT < 29 ? 0 : i;
        this.releasingConditionVariable = new android.os.ConditionVariable(true);
        this.audioTrackPositionTracker = new com.google.android.exoplayer2.audio.AudioTrackPositionTracker(new com.google.android.exoplayer2.audio.DefaultAudioSink.PositionTrackerListener());
        this.channelMappingAudioProcessor = new com.google.android.exoplayer2.audio.ChannelMappingAudioProcessor();
        this.trimmingAudioProcessor = new com.google.android.exoplayer2.audio.TrimmingAudioProcessor();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Collections.addAll(arrayList, new com.google.android.exoplayer2.audio.ResamplingAudioProcessor(), this.channelMappingAudioProcessor, this.trimmingAudioProcessor);
        java.util.Collections.addAll(arrayList, audioProcessorChain.getAudioProcessors());
        this.toIntPcmAvailableAudioProcessors = (com.google.android.exoplayer2.audio.AudioProcessor[]) arrayList.toArray(new com.google.android.exoplayer2.audio.AudioProcessor[0]);
        this.toFloatPcmAvailableAudioProcessors = new com.google.android.exoplayer2.audio.AudioProcessor[]{new com.google.android.exoplayer2.audio.FloatResamplingAudioProcessor()};
        this.volume = 1.0f;
        this.audioAttributes = com.google.android.exoplayer2.audio.AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new com.google.android.exoplayer2.audio.AuxEffectInfo(0, 0.0f);
        this.mediaPositionParameters = new com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters(com.google.android.exoplayer2.PlaybackParameters.DEFAULT, false, 0L, 0L);
        this.audioTrackPlaybackParameters = com.google.android.exoplayer2.PlaybackParameters.DEFAULT;
        this.drainingAudioProcessorIndex = -1;
        this.activeAudioProcessors = new com.google.android.exoplayer2.audio.AudioProcessor[0];
        this.outputBuffers = new java.nio.ByteBuffer[0];
        this.mediaPositionParametersCheckpoints = new java.util.ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new com.google.android.exoplayer2.audio.DefaultAudioSink.PendingExceptionHolder<>(100L);
        this.writeExceptionPendingExceptionHolder = new com.google.android.exoplayer2.audio.DefaultAudioSink.PendingExceptionHolder<>(100L);
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities, com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr) {
        this(audioCapabilities, audioProcessorArr, false);
    }

    public DefaultAudioSink(com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities, com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr, boolean z) {
        this(audioCapabilities, new com.google.android.exoplayer2.audio.DefaultAudioSink.DefaultAudioProcessorChain(audioProcessorArr), z, false, 0);
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long j) {
        com.google.android.exoplayer2.PlaybackParameters playbackParametersApplyPlaybackParameters = shouldApplyAudioProcessorPlaybackParameters() ? this.audioProcessorChain.applyPlaybackParameters(getAudioProcessorPlaybackParameters()) : com.google.android.exoplayer2.PlaybackParameters.DEFAULT;
        boolean zApplySkipSilenceEnabled = shouldApplyAudioProcessorPlaybackParameters() ? this.audioProcessorChain.applySkipSilenceEnabled(getSkipSilenceEnabled()) : false;
        this.mediaPositionParametersCheckpoints.add(new com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters(playbackParametersApplyPlaybackParameters, zApplySkipSilenceEnabled, java.lang.Math.max(0L, j), this.configuration.framesToDurationUs(getWrittenFrames())));
        setupAudioProcessors();
        com.google.android.exoplayer2.audio.AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onSkipSilenceEnabledChanged(zApplySkipSilenceEnabled);
        }
    }

    private long applyMediaPositionParameters(long j) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j >= this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters mediaPositionParameters = this.mediaPositionParameters;
        long j2 = j - mediaPositionParameters.audioTrackPositionUs;
        if (mediaPositionParameters.playbackParameters.equals(com.google.android.exoplayer2.PlaybackParameters.DEFAULT)) {
            return this.mediaPositionParameters.mediaTimeUs + j2;
        }
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            return this.mediaPositionParameters.mediaTimeUs + this.audioProcessorChain.getMediaDuration(j2);
        }
        com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters first = this.mediaPositionParametersCheckpoints.getFirst();
        return first.mediaTimeUs - com.google.android.exoplayer2.util.Util.getMediaDurationForPlayoutDuration(first.audioTrackPositionUs - j, this.mediaPositionParameters.playbackParameters.speed);
    }

    private long applySkipping(long j) {
        return this.configuration.framesToDurationUs(this.audioProcessorChain.getSkippedOutputFrameCount()) + j;
    }

    private android.media.AudioTrack buildAudioTrack() throws com.google.android.exoplayer2.audio.AudioSink.InitializationException {
        try {
            return ((com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.configuration)).buildAudioTrack(this.tunneling, this.audioAttributes, this.audioSessionId);
        } catch (com.google.android.exoplayer2.audio.AudioSink.InitializationException e2) {
            maybeDisableOffload();
            com.google.android.exoplayer2.audio.AudioSink.Listener listener = this.listener;
            if (listener != null) {
                listener.onAudioSinkError(e2);
            }
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean drainToEndOfStream() throws com.google.android.exoplayer2.audio.AudioSink.WriteException, T {
        /*
            r9 = this;
            int r0 = r9.drainingAudioProcessorIndex
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.drainingAudioProcessorIndex = r3
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.drainingAudioProcessorIndex
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.activeAudioProcessors
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.processBuffers(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.drainingAudioProcessorIndex
            int r0 = r0 + r2
            r9.drainingAudioProcessorIndex = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            r9.writeBuffer(r0, r7)
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.drainingAudioProcessorIndex = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.drainToEndOfStream():boolean");
    }

    private void flushAudioProcessors() {
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr = this.activeAudioProcessors;
            if (i >= audioProcessorArr.length) {
                return;
            }
            com.google.android.exoplayer2.audio.AudioProcessor audioProcessor = audioProcessorArr[i];
            audioProcessor.flush();
            this.outputBuffers[i] = audioProcessor.getOutput();
            i++;
        }
    }

    public static android.media.AudioFormat getAudioFormat(int i, int i2, int i3) {
        return new android.media.AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private com.google.android.exoplayer2.PlaybackParameters getAudioProcessorPlaybackParameters() {
        return getMediaPositionParameters().playbackParameters;
    }

    public static int getChannelConfigForPassthrough(int i) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 26 && "fugu".equals(com.google.android.exoplayer2.util.Util.DEVICE) && i == 1) {
            i = 2;
        }
        return com.google.android.exoplayer2.util.Util.getAudioTrackChannelConfig(i);
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getEncodingAndChannelConfigForPassthrough(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities) {
        if (audioCapabilities == null) {
            return null;
        }
        int encoding = com.google.android.exoplayer2.util.MimeTypes.getEncoding((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(format.sampleMimeType), format.codecs);
        int maxSupportedChannelCountForPassthroughV29 = 6;
        if (!(encoding == 5 || encoding == 6 || encoding == 18 || encoding == 17 || encoding == 7 || encoding == 8 || encoding == 14)) {
            return null;
        }
        if (encoding == 18 && !audioCapabilities.supportsEncoding(18)) {
            encoding = 6;
        } else if (encoding == 8 && !audioCapabilities.supportsEncoding(8)) {
            encoding = 7;
        }
        if (!audioCapabilities.supportsEncoding(encoding)) {
            return null;
        }
        if (encoding != 18) {
            maxSupportedChannelCountForPassthroughV29 = format.channelCount;
            if (maxSupportedChannelCountForPassthroughV29 > audioCapabilities.getMaxChannelCount()) {
                return null;
            }
        } else if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29 && (maxSupportedChannelCountForPassthroughV29 = getMaxSupportedChannelCountForPassthroughV29(18, format.sampleRate)) == 0) {
            com.google.android.exoplayer2.util.Log.w(TAG, "E-AC3 JOC encoding supported but no channel count supported");
            return null;
        }
        int channelConfigForPassthrough = getChannelConfigForPassthrough(maxSupportedChannelCountForPassthroughV29);
        if (channelConfigForPassthrough == 0) {
            return null;
        }
        return android.util.Pair.create(java.lang.Integer.valueOf(encoding), java.lang.Integer.valueOf(channelConfigForPassthrough));
    }

    public static int getFramesPerEncodedSample(int i, java.nio.ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.Ac3Util.parseAc3SyncframeAudioSampleCount(byteBuffer);
            case 7:
            case 8:
                return com.google.android.exoplayer2.audio.DtsUtil.parseDtsAudioSampleCount(byteBuffer);
            case 9:
                int mpegAudioFrameSampleCount = com.google.android.exoplayer2.audio.MpegAudioUtil.parseMpegAudioFrameSampleCount(com.google.android.exoplayer2.util.Util.getBigEndianInt(byteBuffer, byteBuffer.position()));
                if (mpegAudioFrameSampleCount != -1) {
                    return mpegAudioFrameSampleCount;
                }
                throw new java.lang.IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new java.lang.IllegalStateException(e.a.c.a.a.F(38, "Unexpected audio encoding: ", i));
            case 14:
                int iFindTrueHdSyncframeOffset = com.google.android.exoplayer2.audio.Ac3Util.findTrueHdSyncframeOffset(byteBuffer);
                if (iFindTrueHdSyncframeOffset == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.Ac3Util.parseTrueHdSyncframeAudioSampleCount(byteBuffer, iFindTrueHdSyncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.Ac4Util.parseAc4SyncframeAudioSampleCount(byteBuffer);
        }
    }

    public static int getMaxSupportedChannelCountForPassthroughV29(int i, int i2) {
        android.media.AudioAttributes audioAttributesBuild = new android.media.AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i3 = 8; i3 > 0; i3--) {
            if (android.media.AudioTrack.isDirectPlaybackSupported(new android.media.AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(com.google.android.exoplayer2.util.Util.getAudioTrackChannelConfig(i3)).build(), audioAttributesBuild)) {
                return i3;
            }
        }
        return 0;
    }

    public static int getMaximumEncodedRateBytesPerSecond(int i) {
        switch (i) {
            case 5:
                return com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.Ac3Util.E_AC3_MAX_RATE_BYTES_PER_SECOND;
            case 7:
                return com.google.android.exoplayer2.audio.DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
                return com.google.android.exoplayer2.audio.DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return com.google.android.exoplayer2.audio.MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return com.google.android.exoplayer2.audio.AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND;
            case 13:
            default:
                throw new java.lang.IllegalArgumentException();
            case 14:
                return com.google.android.exoplayer2.audio.Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
            case 15:
                return 8000;
            case 16:
                return com.google.android.exoplayer2.audio.AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
            case 17:
                return com.google.android.exoplayer2.audio.Ac4Util.MAX_RATE_BYTES_PER_SECOND;
        }
    }

    private com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters getMediaPositionParameters() {
        com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters mediaPositionParameters = this.afterDrainParameters;
        return mediaPositionParameters != null ? mediaPositionParameters : !this.mediaPositionParametersCheckpoints.isEmpty() ? this.mediaPositionParametersCheckpoints.getLast() : this.mediaPositionParameters;
    }

    @android.annotation.SuppressLint({"WrongConstant"})
    private int getOffloadedPlaybackSupport(android.media.AudioFormat audioFormat, android.media.AudioAttributes audioAttributes) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 31) {
            return android.media.AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (android.media.AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (com.google.android.exoplayer2.util.Util.SDK_INT == 30 && com.google.android.exoplayer2.util.Util.MODEL.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getSubmittedFrames() {
        return this.configuration.outputMode == 0 ? this.submittedPcmBytes / r0.inputPcmFrameSize : this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        return this.configuration.outputMode == 0 ? this.writtenPcmBytes / r0.outputPcmFrameSize : this.writtenEncodedFrames;
    }

    private void initializeAudioTrack() throws com.google.android.exoplayer2.audio.AudioSink.InitializationException {
        this.releasingConditionVariable.block();
        android.media.AudioTrack audioTrackBuildAudioTrack = buildAudioTrack();
        this.audioTrack = audioTrackBuildAudioTrack;
        if (isOffloadedPlayback(audioTrackBuildAudioTrack)) {
            registerStreamEventCallbackV29(this.audioTrack);
            if (this.offloadMode != 3) {
                android.media.AudioTrack audioTrack = this.audioTrack;
                com.google.android.exoplayer2.Format format = this.configuration.inputFormat;
                audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
            }
        }
        this.audioSessionId = this.audioTrack.getAudioSessionId();
        com.google.android.exoplayer2.audio.AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        android.media.AudioTrack audioTrack2 = this.audioTrack;
        boolean z = this.configuration.outputMode == 2;
        com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration = this.configuration;
        audioTrackPositionTracker.setAudioTrack(audioTrack2, z, configuration.outputEncoding, configuration.outputPcmFrameSize, configuration.bufferSize);
        setVolumeInternal();
        int i = this.auxEffectInfo.effectId;
        if (i != 0) {
            this.audioTrack.attachAuxEffect(i);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        this.startMediaTimeUsNeedsInit = true;
    }

    public static boolean isAudioTrackDeadObject(int i) {
        return (com.google.android.exoplayer2.util.Util.SDK_INT >= 24 && i == -6) || i == -32;
    }

    private boolean isAudioTrackInitialized() {
        return this.audioTrack != null;
    }

    public static boolean isOffloadedPlayback(android.media.AudioTrack audioTrack) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    public static boolean isPassthroughPlaybackSupported(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities) {
        return getEncodingAndChannelConfigForPassthrough(format, audioCapabilities) != null;
    }

    private void maybeDisableOffload() {
        if (this.configuration.outputModeIsOffload()) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    private void playPendingData() throws java.lang.IllegalStateException {
        if (this.stoppedAudioTrack) {
            return;
        }
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    private void processBuffers(long j) throws com.google.android.exoplayer2.audio.AudioSink.WriteException, T {
        java.nio.ByteBuffer byteBuffer;
        int length = this.activeAudioProcessors.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.outputBuffers[i - 1];
            } else {
                byteBuffer = this.inputBuffer;
                if (byteBuffer == null) {
                    byteBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
                }
            }
            if (i == length) {
                writeBuffer(byteBuffer, j);
            } else {
                com.google.android.exoplayer2.audio.AudioProcessor audioProcessor = this.activeAudioProcessors[i];
                if (i > this.drainingAudioProcessorIndex) {
                    audioProcessor.queueInput(byteBuffer);
                }
                java.nio.ByteBuffer output = audioProcessor.getOutput();
                this.outputBuffers[i] = output;
                if (output.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void registerStreamEventCallbackV29(android.media.AudioTrack audioTrack) {
        if (this.offloadStreamEventCallbackV29 == null) {
            this.offloadStreamEventCallbackV29 = new com.google.android.exoplayer2.audio.DefaultAudioSink.StreamEventCallbackV29();
        }
        this.offloadStreamEventCallbackV29.register(audioTrack);
    }

    private void resetSinkStateForFlush() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters(getAudioProcessorPlaybackParameters(), getSkipSilenceEnabled(), 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.drainingAudioProcessorIndex = -1;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        flushAudioProcessors();
    }

    private void setAudioProcessorPlaybackParametersAndSkipSilence(com.google.android.exoplayer2.PlaybackParameters playbackParameters, boolean z) {
        com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters mediaPositionParameters = getMediaPositionParameters();
        if (playbackParameters.equals(mediaPositionParameters.playbackParameters) && z == mediaPositionParameters.skipSilence) {
            return;
        }
        com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters mediaPositionParameters2 = new com.google.android.exoplayer2.audio.DefaultAudioSink.MediaPositionParameters(playbackParameters, z, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        if (isAudioTrackInitialized()) {
            this.afterDrainParameters = mediaPositionParameters2;
        } else {
            this.mediaPositionParameters = mediaPositionParameters2;
        }
    }

    private void setAudioTrackPlaybackParametersV23(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        if (isAudioTrackInitialized()) {
            try {
                this.audioTrack.setPlaybackParams(new android.media.PlaybackParams().allowDefaults().setSpeed(playbackParameters.speed).setPitch(playbackParameters.pitch).setAudioFallbackMode(2));
            } catch (java.lang.IllegalArgumentException e2) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Failed to set playback params", e2);
            }
            playbackParameters = new com.google.android.exoplayer2.PlaybackParameters(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
            this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(playbackParameters.speed);
        }
        this.audioTrackPlaybackParameters = playbackParameters;
    }

    private void setVolumeInternal() {
        if (isAudioTrackInitialized()) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
                setVolumeInternalV21(this.audioTrack, this.volume);
            } else {
                setVolumeInternalV3(this.audioTrack, this.volume);
            }
        }
    }

    public static void setVolumeInternalV21(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    public static void setVolumeInternalV3(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    private void setupAudioProcessors() {
        com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr = this.configuration.availableAudioProcessors;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.google.android.exoplayer2.audio.AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.activeAudioProcessors = (com.google.android.exoplayer2.audio.AudioProcessor[]) arrayList.toArray(new com.google.android.exoplayer2.audio.AudioProcessor[size]);
        this.outputBuffers = new java.nio.ByteBuffer[size];
        flushAudioProcessors();
    }

    private boolean shouldApplyAudioProcessorPlaybackParameters() {
        return (this.tunneling || !com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(this.configuration.inputFormat.sampleMimeType) || shouldUseFloatOutput(this.configuration.inputFormat.pcmEncoding)) ? false : true;
    }

    private boolean shouldUseFloatOutput(int i) {
        return this.enableFloatOutput && com.google.android.exoplayer2.util.Util.isEncodingHighResolutionPcm(i);
    }

    private boolean useOffloadedPlayback(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        int encoding;
        int audioTrackChannelConfig;
        int offloadedPlaybackSupport;
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 29 || this.offloadMode == 0 || (encoding = com.google.android.exoplayer2.util.MimeTypes.getEncoding((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(format.sampleMimeType), format.codecs)) == 0 || (audioTrackChannelConfig = com.google.android.exoplayer2.util.Util.getAudioTrackChannelConfig(format.channelCount)) == 0 || (offloadedPlaybackSupport = getOffloadedPlaybackSupport(getAudioFormat(format.sampleRate, audioTrackChannelConfig, encoding), audioAttributes.getAudioAttributesV21())) == 0) {
            return false;
        }
        if (offloadedPlaybackSupport == 1) {
            return ((format.encoderDelay != 0 || format.encoderPadding != 0) && (this.offloadMode == 1)) ? false : true;
        }
        if (offloadedPlaybackSupport == 2) {
            return true;
        }
        throw new java.lang.IllegalStateException();
    }

    private void writeBuffer(java.nio.ByteBuffer byteBuffer, long j) throws com.google.android.exoplayer2.audio.AudioSink.WriteException, T {
        int iWriteNonBlockingV21;
        if (byteBuffer.hasRemaining()) {
            java.nio.ByteBuffer byteBuffer2 = this.outputBuffer;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(byteBuffer2 == byteBuffer);
            } else {
                this.outputBuffer = byteBuffer;
                if (com.google.android.exoplayer2.util.Util.SDK_INT < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.preV21OutputBuffer;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.preV21OutputBuffer = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.preV21OutputBuffer, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.preV21OutputBufferOffset = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 21) {
                int availableBufferSize = this.audioTrackPositionTracker.getAvailableBufferSize(this.writtenPcmBytes);
                if (availableBufferSize > 0) {
                    iWriteNonBlockingV21 = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, java.lang.Math.min(iRemaining2, availableBufferSize));
                    if (iWriteNonBlockingV21 > 0) {
                        this.preV21OutputBufferOffset += iWriteNonBlockingV21;
                        byteBuffer.position(byteBuffer.position() + iWriteNonBlockingV21);
                    }
                } else {
                    iWriteNonBlockingV21 = 0;
                }
            } else if (this.tunneling) {
                com.google.android.exoplayer2.util.Assertions.checkState(j != com.google.android.exoplayer2.C.TIME_UNSET);
                iWriteNonBlockingV21 = writeNonBlockingWithAvSyncV21(this.audioTrack, byteBuffer, iRemaining2, j);
            } else {
                iWriteNonBlockingV21 = writeNonBlockingV21(this.audioTrack, byteBuffer, iRemaining2);
            }
            this.lastFeedElapsedRealtimeMs = android.os.SystemClock.elapsedRealtime();
            if (iWriteNonBlockingV21 < 0) {
                boolean zIsAudioTrackDeadObject = isAudioTrackDeadObject(iWriteNonBlockingV21);
                if (zIsAudioTrackDeadObject) {
                    maybeDisableOffload();
                }
                com.google.android.exoplayer2.audio.AudioSink.WriteException writeException = new com.google.android.exoplayer2.audio.AudioSink.WriteException(iWriteNonBlockingV21, this.configuration.inputFormat, zIsAudioTrackDeadObject);
                com.google.android.exoplayer2.audio.AudioSink.Listener listener = this.listener;
                if (listener != null) {
                    listener.onAudioSinkError(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(writeException);
                return;
            }
            this.writeExceptionPendingExceptionHolder.clear();
            if (isOffloadedPlayback(this.audioTrack)) {
                if (this.writtenEncodedFrames > 0) {
                    this.isWaitingForOffloadEndOfStreamHandled = false;
                }
                if (this.playing && this.listener != null && iWriteNonBlockingV21 < iRemaining2 && !this.isWaitingForOffloadEndOfStreamHandled) {
                    this.listener.onOffloadBufferFull(this.audioTrackPositionTracker.getPendingBufferDurationMs(this.writtenEncodedFrames));
                }
            }
            if (this.configuration.outputMode == 0) {
                this.writtenPcmBytes += iWriteNonBlockingV21;
            }
            if (iWriteNonBlockingV21 == iRemaining2) {
                if (this.configuration.outputMode != 0) {
                    com.google.android.exoplayer2.util.Assertions.checkState(byteBuffer == this.inputBuffer);
                    this.writtenEncodedFrames += this.framesPerEncodedSample * this.inputBufferAccessUnitCount;
                }
                this.outputBuffer = null;
            }
        }
    }

    public static int writeNonBlockingV21(android.media.AudioTrack audioTrack, java.nio.ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int writeNonBlockingWithAvSyncV21(android.media.AudioTrack audioTrack, java.nio.ByteBuffer byteBuffer, int i, long j) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.avSyncHeader == null) {
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(16);
            this.avSyncHeader = byteBufferAllocate;
            byteBufferAllocate.order(java.nio.ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i;
        }
        int iRemaining = this.avSyncHeader.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.avSyncHeader, iRemaining, 1);
            if (iWrite < 0) {
                this.bytesUntilNextAvSync = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iWriteNonBlockingV21 = writeNonBlockingV21(audioTrack, byteBuffer, i);
        if (iWriteNonBlockingV21 < 0) {
            this.bytesUntilNextAvSync = 0;
            return iWriteNonBlockingV21;
        }
        this.bytesUntilNextAvSync -= iWriteNonBlockingV21;
        return iWriteNonBlockingV21;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void configure(com.google.android.exoplayer2.Format format, int i, int[] iArr) throws com.google.android.exoplayer2.audio.AudioSink.ConfigurationException {
        com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr;
        int iIntValue;
        int pcmFrameSize;
        int pcmFrameSize2;
        int iIntValue2;
        int i2;
        int i3;
        int[] iArr2;
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(com.google.android.exoplayer2.util.Util.isEncodingLinearPcm(format.pcmEncoding));
            pcmFrameSize = com.google.android.exoplayer2.util.Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr2 = shouldUseFloatOutput(format.pcmEncoding) ? this.toFloatPcmAvailableAudioProcessors : this.toIntPcmAvailableAudioProcessors;
            this.trimmingAudioProcessor.setTrimFrameCount(format.encoderDelay, format.encoderPadding);
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 && format.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i4 = 0; i4 < 6; i4++) {
                    iArr2[i4] = i4;
                }
            } else {
                iArr2 = iArr;
            }
            this.channelMappingAudioProcessor.setChannelMap(iArr2);
            com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = new com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (com.google.android.exoplayer2.audio.AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormatConfigure = audioProcessor.configure(audioFormat);
                    if (audioProcessor.isActive()) {
                        audioFormat = audioFormatConfigure;
                    }
                } catch (com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException e2) {
                    throw new com.google.android.exoplayer2.audio.AudioSink.ConfigurationException(e2, format);
                }
            }
            int i5 = audioFormat.encoding;
            i2 = audioFormat.sampleRate;
            iIntValue2 = com.google.android.exoplayer2.util.Util.getAudioTrackChannelConfig(audioFormat.channelCount);
            audioProcessorArr = audioProcessorArr2;
            iIntValue = i5;
            pcmFrameSize2 = com.google.android.exoplayer2.util.Util.getPcmFrameSize(i5, audioFormat.channelCount);
            i3 = 0;
        } else {
            com.google.android.exoplayer2.audio.AudioProcessor[] audioProcessorArr3 = new com.google.android.exoplayer2.audio.AudioProcessor[0];
            int i6 = format.sampleRate;
            if (useOffloadedPlayback(format, this.audioAttributes)) {
                audioProcessorArr = audioProcessorArr3;
                iIntValue = com.google.android.exoplayer2.util.MimeTypes.getEncoding((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(format.sampleMimeType), format.codecs);
                iIntValue2 = com.google.android.exoplayer2.util.Util.getAudioTrackChannelConfig(format.channelCount);
                pcmFrameSize = -1;
                pcmFrameSize2 = -1;
                i2 = i6;
                i3 = 1;
            } else {
                android.util.Pair<java.lang.Integer, java.lang.Integer> encodingAndChannelConfigForPassthrough = getEncodingAndChannelConfigForPassthrough(format, this.audioCapabilities);
                if (encodingAndChannelConfigForPassthrough == null) {
                    java.lang.String strValueOf = java.lang.String.valueOf(format);
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 37);
                    sb.append("Unable to configure passthrough for: ");
                    sb.append(strValueOf);
                    throw new com.google.android.exoplayer2.audio.AudioSink.ConfigurationException(sb.toString(), format);
                }
                audioProcessorArr = audioProcessorArr3;
                iIntValue = ((java.lang.Integer) encodingAndChannelConfigForPassthrough.first).intValue();
                pcmFrameSize = -1;
                pcmFrameSize2 = -1;
                iIntValue2 = ((java.lang.Integer) encodingAndChannelConfigForPassthrough.second).intValue();
                i2 = i6;
                i3 = 2;
            }
        }
        if (iIntValue == 0) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(format);
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(strValueOf2.length() + 48);
            sb2.append("Invalid output encoding (mode=");
            sb2.append(i3);
            sb2.append(") for: ");
            sb2.append(strValueOf2);
            throw new com.google.android.exoplayer2.audio.AudioSink.ConfigurationException(sb2.toString(), format);
        }
        if (iIntValue2 != 0) {
            this.offloadDisabledUntilNextConfiguration = false;
            com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration = new com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration(format, pcmFrameSize, i3, pcmFrameSize2, i2, iIntValue2, iIntValue, i, this.enableAudioTrackPlaybackParams, audioProcessorArr);
            if (isAudioTrackInitialized()) {
                this.pendingConfiguration = configuration;
                return;
            } else {
                this.configuration = configuration;
                return;
            }
        }
        java.lang.String strValueOf3 = java.lang.String.valueOf(format);
        java.lang.StringBuilder sb3 = new java.lang.StringBuilder(strValueOf3.length() + 54);
        sb3.append("Invalid output channel config (mode=");
        sb3.append(i3);
        sb3.append(") for: ");
        sb3.append(strValueOf3);
        throw new com.google.android.exoplayer2.audio.AudioSink.ConfigurationException(sb3.toString(), format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() throws java.lang.IllegalStateException {
        if (this.tunneling) {
            this.tunneling = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void enableTunnelingV21() throws java.lang.IllegalStateException {
        com.google.android.exoplayer2.util.Assertions.checkState(com.google.android.exoplayer2.util.Util.SDK_INT >= 21);
        com.google.android.exoplayer2.util.Assertions.checkState(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void experimentalFlushWithoutAudioTrackRelease() throws java.lang.IllegalStateException {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 25) {
            flush();
            return;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        if (isAudioTrackInitialized()) {
            resetSinkStateForFlush();
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            this.audioTrack.flush();
            this.audioTrackPositionTracker.reset();
            com.google.android.exoplayer2.audio.AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            android.media.AudioTrack audioTrack = this.audioTrack;
            boolean z = this.configuration.outputMode == 2;
            com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration = this.configuration;
            audioTrackPositionTracker.setAudioTrack(audioTrack, z, configuration.outputEncoding, configuration.outputPcmFrameSize, configuration.bufferSize);
            this.startMediaTimeUsNeedsInit = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() throws java.lang.IllegalStateException {
        if (isAudioTrackInitialized()) {
            resetSinkStateForFlush();
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            if (isOffloadedPlayback(this.audioTrack)) {
                ((com.google.android.exoplayer2.audio.DefaultAudioSink.StreamEventCallbackV29) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister(this.audioTrack);
            }
            final android.media.AudioTrack audioTrack = this.audioTrack;
            this.audioTrack = null;
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 && !this.externalAudioSessionIdProvided) {
                this.audioSessionId = 0;
            }
            com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.reset();
            this.releasingConditionVariable.close();
            new java.lang.Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        com.google.android.exoplayer2.audio.DefaultAudioSink.this.releasingConditionVariable.open();
                    }
                }
            }.start();
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!isAudioTrackInitialized() || this.startMediaTimeUsNeedsInit) {
            return Long.MIN_VALUE;
        }
        return applySkipping(applyMediaPositionParameters(java.lang.Math.min(this.audioTrackPositionTracker.getCurrentPositionUs(z), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int getFormatSupport(com.google.android.exoplayer2.Format format) {
        if (!com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
            return ((this.offloadDisabledUntilNextConfiguration || !useOffloadedPlayback(format, this.audioAttributes)) && !isPassthroughPlaybackSupported(format, this.audioCapabilities)) ? 0 : 2;
        }
        boolean zIsEncodingLinearPcm = com.google.android.exoplayer2.util.Util.isEncodingLinearPcm(format.pcmEncoding);
        int i = format.pcmEncoding;
        if (zIsEncodingLinearPcm) {
            return (i == 2 || (this.enableFloatOutput && i == 4)) ? 2 : 1;
        }
        e.a.c.a.a.t(33, "Invalid PCM encoding: ", i, TAG);
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters() {
        return this.enableAudioTrackPlaybackParams ? this.audioTrackPlaybackParameters : getAudioProcessorPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean getSkipSilenceEnabled() {
        return getMediaPositionParameters().skipSilence;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean handleBuffer(java.nio.ByteBuffer byteBuffer, long j, int i) throws java.lang.IllegalStateException, com.google.android.exoplayer2.audio.AudioSink.WriteException, T, com.google.android.exoplayer2.audio.AudioSink.InitializationException {
        java.nio.ByteBuffer byteBuffer2 = this.inputBuffer;
        com.google.android.exoplayer2.util.Assertions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!drainToEndOfStream()) {
                return false;
            }
            if (this.pendingConfiguration.canReuseAudioTrack(this.configuration)) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                if (isOffloadedPlayback(this.audioTrack) && this.offloadMode != 3) {
                    this.audioTrack.setOffloadEndOfStream();
                    android.media.AudioTrack audioTrack = this.audioTrack;
                    com.google.android.exoplayer2.Format format = this.configuration.inputFormat;
                    audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            } else {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
        }
        if (!isAudioTrackInitialized()) {
            try {
                initializeAudioTrack();
            } catch (com.google.android.exoplayer2.audio.AudioSink.InitializationException e2) {
                if (e2.isRecoverable) {
                    throw e2;
                }
                this.initializationExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(e2);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.clear();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = java.lang.Math.max(0L, j);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (this.enableAudioTrackPlaybackParams && com.google.android.exoplayer2.util.Util.SDK_INT >= 23) {
                setAudioTrackPlaybackParametersV23(this.audioTrackPlaybackParameters);
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.mayHandleBuffer(getWrittenFrames())) {
            return false;
        }
        if (this.inputBuffer == null) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(byteBuffer.order() == java.nio.ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            com.google.android.exoplayer2.audio.DefaultAudioSink.Configuration configuration = this.configuration;
            if (configuration.outputMode != 0 && this.framesPerEncodedSample == 0) {
                int framesPerEncodedSample = getFramesPerEncodedSample(configuration.outputEncoding, byteBuffer);
                this.framesPerEncodedSample = framesPerEncodedSample;
                if (framesPerEncodedSample == 0) {
                    return true;
                }
            }
            if (this.afterDrainParameters != null) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                this.afterDrainParameters = null;
            }
            long jInputFramesToDurationUs = this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount()) + this.startMediaTimeUs;
            if (!this.startMediaTimeUsNeedsSync && java.lang.Math.abs(jInputFramesToDurationUs - j) > 200000) {
                this.listener.onAudioSinkError(new com.google.android.exoplayer2.audio.AudioSink.UnexpectedDiscontinuityException(j, jInputFramesToDurationUs));
                this.startMediaTimeUsNeedsSync = true;
            }
            if (this.startMediaTimeUsNeedsSync) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                long j2 = j - jInputFramesToDurationUs;
                this.startMediaTimeUs += j2;
                this.startMediaTimeUsNeedsSync = false;
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                com.google.android.exoplayer2.audio.AudioSink.Listener listener = this.listener;
                if (listener != null && j2 != 0) {
                    listener.onPositionDiscontinuity();
                }
            }
            if (this.configuration.outputMode == 0) {
                this.submittedPcmBytes += byteBuffer.remaining();
            } else {
                this.submittedEncodedFrames += this.framesPerEncodedSample * i;
            }
            this.inputBuffer = byteBuffer;
            this.inputBufferAccessUnitCount = i;
        }
        processBuffers(j);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return true;
        }
        if (!this.audioTrackPositionTracker.isStalled(getWrittenFrames())) {
            return false;
        }
        com.google.android.exoplayer2.util.Log.w(TAG, "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        return isAudioTrackInitialized() && this.audioTrackPositionTracker.hasPendingData(getWrittenFrames());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        return !isAudioTrackInitialized() || (this.handledEndOfStream && !hasPendingData());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() throws java.lang.IllegalStateException {
        this.playing = false;
        if (isAudioTrackInitialized() && this.audioTrackPositionTracker.pause()) {
            this.audioTrack.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() throws java.lang.IllegalStateException {
        this.playing = true;
        if (isAudioTrackInitialized()) {
            this.audioTrackPositionTracker.start();
            this.audioTrack.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() throws java.lang.IllegalStateException {
        if (!this.handledEndOfStream && isAudioTrackInitialized() && drainToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() throws java.lang.IllegalStateException {
        flush();
        for (com.google.android.exoplayer2.audio.AudioProcessor audioProcessor : this.toIntPcmAvailableAudioProcessors) {
            audioProcessor.reset();
        }
        for (com.google.android.exoplayer2.audio.AudioProcessor audioProcessor2 : this.toFloatPcmAvailableAudioProcessors) {
            audioProcessor2.reset();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) throws java.lang.IllegalStateException {
        if (this.audioAttributes.equals(audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        if (this.tunneling) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int i) throws java.lang.IllegalStateException {
        if (this.audioSessionId != i) {
            this.audioSessionId = i;
            this.externalAudioSessionIdProvided = i != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAuxEffectInfo(com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int i = auxEffectInfo.effectId;
        float f2 = auxEffectInfo.sendLevel;
        android.media.AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            if (this.auxEffectInfo.effectId != i) {
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.audioTrack.setAuxEffectSendLevel(f2);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setListener(com.google.android.exoplayer2.audio.AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        com.google.android.exoplayer2.PlaybackParameters playbackParameters2 = new com.google.android.exoplayer2.PlaybackParameters(com.google.android.exoplayer2.util.Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), com.google.android.exoplayer2.util.Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
        if (!this.enableAudioTrackPlaybackParams || com.google.android.exoplayer2.util.Util.SDK_INT < 23) {
            setAudioProcessorPlaybackParametersAndSkipSilence(playbackParameters2, getSkipSilenceEnabled());
        } else {
            setAudioTrackPlaybackParametersV23(playbackParameters2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setSkipSilenceEnabled(boolean z) {
        setAudioProcessorPlaybackParametersAndSkipSilence(getAudioProcessorPlaybackParameters(), z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f2) {
        if (this.volume != f2) {
            this.volume = f2;
            setVolumeInternal();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean supportsFormat(com.google.android.exoplayer2.Format format) {
        return getFormatSupport(format) != 0;
    }
}
