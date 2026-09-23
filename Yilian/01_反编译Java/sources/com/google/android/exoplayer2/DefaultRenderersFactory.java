package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public class DefaultRenderersFactory implements com.google.android.exoplayer2.RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    public static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    public static final java.lang.String TAG = "DefaultRenderersFactory";
    public long allowedVideoJoiningTimeMs;
    public final com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory codecAdapterFactory;
    public final android.content.Context context;
    public boolean enableAudioTrackPlaybackParams;
    public boolean enableDecoderFallback;
    public boolean enableFloatOutput;
    public boolean enableOffload;
    public int extensionRendererMode;
    public com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(android.content.Context context) {
        this.context = context;
        this.codecAdapterFactory = new com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory();
        this.extensionRendererMode = 0;
        this.allowedVideoJoiningTimeMs = 5000L;
        this.mediaCodecSelector = com.google.android.exoplayer2.mediacodec.MediaCodecSelector.DEFAULT;
    }

    @java.lang.Deprecated
    public DefaultRenderersFactory(android.content.Context context, int i) {
        this(context, i, 5000L);
    }

    @java.lang.Deprecated
    public DefaultRenderersFactory(android.content.Context context, int i, long j) {
        this.context = context;
        this.extensionRendererMode = i;
        this.allowedVideoJoiningTimeMs = j;
        this.mediaCodecSelector = com.google.android.exoplayer2.mediacodec.MediaCodecSelector.DEFAULT;
        this.codecAdapterFactory = new com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:43|11)|41|18|19|38|20|(3:44|27|32)) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
    
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a2, code lost:
    
        r5 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildAudioRenderers(android.content.Context r16, int r17, com.google.android.exoplayer2.mediacodec.MediaCodecSelector r18, boolean r19, com.google.android.exoplayer2.audio.AudioSink r20, android.os.Handler r21, com.google.android.exoplayer2.audio.AudioRendererEventListener r22, java.util.ArrayList<com.google.android.exoplayer2.Renderer> r23) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.DefaultRenderersFactory.buildAudioRenderers(android.content.Context, int, com.google.android.exoplayer2.mediacodec.MediaCodecSelector, boolean, com.google.android.exoplayer2.audio.AudioSink, android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, java.util.ArrayList):void");
    }

    public com.google.android.exoplayer2.audio.AudioSink buildAudioSink(android.content.Context context, boolean z, boolean z2, boolean z3) {
        return new com.google.android.exoplayer2.audio.DefaultAudioSink(com.google.android.exoplayer2.audio.AudioCapabilities.getCapabilities(context), new com.google.android.exoplayer2.audio.DefaultAudioSink.DefaultAudioProcessorChain(new com.google.android.exoplayer2.audio.AudioProcessor[0]), z, z2, z3 ? 1 : 0);
    }

    public void buildCameraMotionRenderers(android.content.Context context, int i, java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.video.spherical.CameraMotionRenderer());
    }

    public void buildMetadataRenderers(android.content.Context context, com.google.android.exoplayer2.metadata.MetadataOutput metadataOutput, android.os.Looper looper, int i, java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.MetadataRenderer(metadataOutput, looper));
    }

    public void buildMiscellaneousRenderers(android.content.Context context, android.os.Handler handler, int i, java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList) {
    }

    public void buildTextRenderers(android.content.Context context, com.google.android.exoplayer2.text.TextOutput textOutput, android.os.Looper looper, int i, java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.text.TextRenderer(textOutput, looper));
    }

    public void buildVideoRenderers(android.content.Context context, int i, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, boolean z, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, long j, java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList) {
        int i2;
        arrayList.add(new com.google.android.exoplayer2.video.MediaCodecVideoRenderer(context, this.codecAdapterFactory, mediaCodecSelector, j, z, handler, videoRendererEventListener, 50));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
                try {
                    arrayList.add(size, (com.google.android.exoplayer2.Renderer) java.lang.Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(java.lang.Long.TYPE, android.os.Handler.class, com.google.android.exoplayer2.video.VideoRendererEventListener.class, java.lang.Integer.TYPE).newInstance(java.lang.Long.valueOf(j), handler, videoRendererEventListener, 50));
                    com.google.android.exoplayer2.util.Log.i(TAG, "Loaded LibvpxVideoRenderer.");
                } catch (java.lang.ClassNotFoundException unused) {
                    size = i2;
                    i2 = size;
                    arrayList.add(i2, (com.google.android.exoplayer2.Renderer) java.lang.Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(java.lang.Long.TYPE, android.os.Handler.class, com.google.android.exoplayer2.video.VideoRendererEventListener.class, java.lang.Integer.TYPE).newInstance(java.lang.Long.valueOf(j), handler, videoRendererEventListener, 50));
                    com.google.android.exoplayer2.util.Log.i(TAG, "Loaded Libgav1VideoRenderer.");
                }
            } catch (java.lang.Exception e2) {
                throw new java.lang.RuntimeException("Error instantiating VP9 extension", e2);
            }
        } catch (java.lang.ClassNotFoundException unused2) {
        }
        try {
            arrayList.add(i2, (com.google.android.exoplayer2.Renderer) java.lang.Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(java.lang.Long.TYPE, android.os.Handler.class, com.google.android.exoplayer2.video.VideoRendererEventListener.class, java.lang.Integer.TYPE).newInstance(java.lang.Long.valueOf(j), handler, videoRendererEventListener, 50));
            com.google.android.exoplayer2.util.Log.i(TAG, "Loaded Libgav1VideoRenderer.");
        } catch (java.lang.ClassNotFoundException unused3) {
        } catch (java.lang.Exception e3) {
            throw new java.lang.RuntimeException("Error instantiating AV1 extension", e3);
        }
    }

    @Override // com.google.android.exoplayer2.RenderersFactory
    public com.google.android.exoplayer2.Renderer[] createRenderers(android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.text.TextOutput textOutput, com.google.android.exoplayer2.metadata.MetadataOutput metadataOutput) {
        java.util.ArrayList<com.google.android.exoplayer2.Renderer> arrayList = new java.util.ArrayList<>();
        buildVideoRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, arrayList);
        com.google.android.exoplayer2.audio.AudioSink audioSinkBuildAudioSink = buildAudioSink(this.context, this.enableFloatOutput, this.enableAudioTrackPlaybackParams, this.enableOffload);
        if (audioSinkBuildAudioSink != null) {
            buildAudioRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, audioSinkBuildAudioSink, handler, audioRendererEventListener, arrayList);
        }
        buildTextRenderers(this.context, textOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildCameraMotionRenderers(this.context, this.extensionRendererMode, arrayList);
        buildMiscellaneousRenderers(this.context, handler, this.extensionRendererMode, arrayList);
        return (com.google.android.exoplayer2.Renderer[]) arrayList.toArray(new com.google.android.exoplayer2.Renderer[0]);
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(boolean z) {
        this.codecAdapterFactory.experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(z);
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory forceDisableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceDisableAsynchronous();
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory forceEnableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceEnableAsynchronous();
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setAllowedVideoJoiningTimeMs(long j) {
        this.allowedVideoJoiningTimeMs = j;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setEnableAudioFloatOutput(boolean z) {
        this.enableFloatOutput = z;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setEnableAudioOffload(boolean z) {
        this.enableOffload = z;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setEnableAudioTrackPlaybackParams(boolean z) {
        this.enableAudioTrackPlaybackParams = z;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setEnableDecoderFallback(boolean z) {
        this.enableDecoderFallback = z;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setExtensionRendererMode(int i) {
        this.extensionRendererMode = i;
        return this;
    }

    public com.google.android.exoplayer2.DefaultRenderersFactory setMediaCodecSelector(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector) {
        this.mediaCodecSelector = mediaCodecSelector;
        return this;
    }
}
