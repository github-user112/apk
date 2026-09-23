package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class DefaultMediaCodecAdapterFactory implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory {
    public static final int MODE_DEFAULT = 0;
    public static final int MODE_DISABLED = 2;
    public static final int MODE_ENABLED = 1;
    public static final java.lang.String TAG = "DefaultMediaCodecAdapterFactory";
    public int asynchronousMode = 0;
    public boolean enableSynchronizeCodecInteractionsWithQueueing;

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
    public com.google.android.exoplayer2.mediacodec.MediaCodecAdapter createAdapter(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration configuration) {
        if ((this.asynchronousMode != 1 || com.google.android.exoplayer2.util.Util.SDK_INT < 23) && (this.asynchronousMode != 0 || com.google.android.exoplayer2.util.Util.SDK_INT < 31)) {
            return new com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
        }
        int trackType = com.google.android.exoplayer2.util.MimeTypes.getTrackType(configuration.format.sampleMimeType);
        java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.util.Util.getTrackTypeString(trackType));
        com.google.android.exoplayer2.util.Log.i(TAG, strValueOf.length() != 0 ? "Creating an asynchronous MediaCodec adapter for track type ".concat(strValueOf) : new java.lang.String("Creating an asynchronous MediaCodec adapter for track type "));
        return new com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter.Factory(trackType, this.enableSynchronizeCodecInteractionsWithQueueing).createAdapter(configuration);
    }

    public void experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(boolean z) {
        this.enableSynchronizeCodecInteractionsWithQueueing = z;
    }

    public com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory forceDisableAsynchronous() {
        this.asynchronousMode = 2;
        return this;
    }

    public com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory forceEnableAsynchronous() {
        this.asynchronousMode = 1;
        return this;
    }
}
