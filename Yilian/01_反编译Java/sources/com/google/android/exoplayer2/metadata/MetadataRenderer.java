package com.google.android.exoplayer2.metadata;

/* loaded from: classes.dex */
public final class MetadataRenderer extends com.google.android.exoplayer2.BaseRenderer implements android.os.Handler.Callback {
    public static final int MSG_INVOKE_RENDERER = 0;
    public static final java.lang.String TAG = "MetadataRenderer";
    public final com.google.android.exoplayer2.metadata.MetadataInputBuffer buffer;
    public com.google.android.exoplayer2.metadata.MetadataDecoder decoder;
    public final com.google.android.exoplayer2.metadata.MetadataDecoderFactory decoderFactory;
    public boolean inputStreamEnded;
    public final com.google.android.exoplayer2.metadata.MetadataOutput output;
    public final android.os.Handler outputHandler;
    public boolean outputStreamEnded;
    public com.google.android.exoplayer2.metadata.Metadata pendingMetadata;
    public long pendingMetadataTimestampUs;
    public long subsampleOffsetUs;

    public MetadataRenderer(com.google.android.exoplayer2.metadata.MetadataOutput metadataOutput, android.os.Looper looper) {
        this(metadataOutput, looper, com.google.android.exoplayer2.metadata.MetadataDecoderFactory.DEFAULT);
    }

    public MetadataRenderer(com.google.android.exoplayer2.metadata.MetadataOutput metadataOutput, android.os.Looper looper, com.google.android.exoplayer2.metadata.MetadataDecoderFactory metadataDecoderFactory) {
        super(5);
        this.output = (com.google.android.exoplayer2.metadata.MetadataOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(metadataOutput);
        this.outputHandler = looper == null ? null : com.google.android.exoplayer2.util.Util.createHandler(looper, this);
        this.decoderFactory = (com.google.android.exoplayer2.metadata.MetadataDecoderFactory) com.google.android.exoplayer2.util.Assertions.checkNotNull(metadataDecoderFactory);
        this.buffer = new com.google.android.exoplayer2.metadata.MetadataInputBuffer();
        this.pendingMetadataTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void decodeWrappedMetadata(com.google.android.exoplayer2.metadata.Metadata metadata, java.util.List<com.google.android.exoplayer2.metadata.Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            com.google.android.exoplayer2.Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.decoderFactory.supportsFormat(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                com.google.android.exoplayer2.metadata.MetadataDecoder metadataDecoderCreateDecoder = this.decoderFactory.createDecoder(wrappedMetadataFormat);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(metadata.get(i).getWrappedMetadataBytes());
                this.buffer.clear();
                this.buffer.ensureSpaceForWrite(bArr.length);
                ((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.buffer.data)).put(bArr);
                this.buffer.flip();
                com.google.android.exoplayer2.metadata.Metadata metadataDecode = metadataDecoderCreateDecoder.decode(this.buffer);
                if (metadataDecode != null) {
                    decodeWrappedMetadata(metadataDecode, list);
                }
            }
        }
    }

    private void invokeRenderer(com.google.android.exoplayer2.metadata.Metadata metadata) {
        android.os.Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            invokeRendererInternal(metadata);
        }
    }

    private void invokeRendererInternal(com.google.android.exoplayer2.metadata.Metadata metadata) {
        this.output.onMetadata(metadata);
    }

    private boolean outputMetadata(long j) {
        boolean z;
        com.google.android.exoplayer2.metadata.Metadata metadata = this.pendingMetadata;
        if (metadata == null || this.pendingMetadataTimestampUs > j) {
            z = false;
        } else {
            invokeRenderer(metadata);
            this.pendingMetadata = null;
            this.pendingMetadataTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
            z = true;
        }
        if (this.inputStreamEnded && this.pendingMetadata == null) {
            this.outputStreamEnded = true;
        }
        return z;
    }

    private void readMetadata() {
        if (this.inputStreamEnded || this.pendingMetadata != null) {
            return;
        }
        this.buffer.clear();
        com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
        int source = readSource(formatHolder, this.buffer, 0);
        if (source != -4) {
            if (source == -5) {
                this.subsampleOffsetUs = ((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(formatHolder.format)).subsampleOffsetUs;
                return;
            }
            return;
        }
        if (this.buffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            return;
        }
        com.google.android.exoplayer2.metadata.MetadataInputBuffer metadataInputBuffer = this.buffer;
        metadataInputBuffer.subsampleOffsetUs = this.subsampleOffsetUs;
        metadataInputBuffer.flip();
        com.google.android.exoplayer2.metadata.Metadata metadataDecode = ((com.google.android.exoplayer2.metadata.MetadataDecoder) com.google.android.exoplayer2.util.Util.castNonNull(this.decoder)).decode(this.buffer);
        if (metadataDecode != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList(metadataDecode.length());
            decodeWrappedMetadata(metadataDecode, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            this.pendingMetadata = new com.google.android.exoplayer2.metadata.Metadata(arrayList);
            this.pendingMetadataTimestampUs = this.buffer.timeUs;
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public java.lang.String getName() {
        return TAG;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) {
        if (message.what != 0) {
            throw new java.lang.IllegalStateException();
        }
        invokeRendererInternal((com.google.android.exoplayer2.metadata.Metadata) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.pendingMetadata = null;
        this.pendingMetadataTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.decoder = null;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        this.pendingMetadata = null;
        this.pendingMetadataTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
        this.decoder = this.decoderFactory.createDecoder(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        boolean zOutputMetadata = true;
        while (zOutputMetadata) {
            readMetadata();
            zOutputMetadata = outputMetadata(j);
        }
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(com.google.android.exoplayer2.Format format) {
        if (this.decoderFactory.supportsFormat(format)) {
            return (format.cryptoType == 0 ? 4 : 2) | 0 | 0;
        }
        return 0;
    }
}
