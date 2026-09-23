package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public abstract class BaseDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public final boolean isNetwork;
    public int listenerCount;
    public final java.util.ArrayList<com.google.android.exoplayer2.upstream.TransferListener> listeners = new java.util.ArrayList<>(1);

    public BaseDataSource(boolean z) {
        this.isNetwork = z;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        if (this.listeners.contains(transferListener)) {
            return;
        }
        this.listeners.add(transferListener);
        this.listenerCount++;
    }

    public final void bytesTransferred(int i) {
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Util.castNonNull(this.dataSpec);
        for (int i2 = 0; i2 < this.listenerCount; i2++) {
            this.listeners.get(i2).onBytesTransferred(this, dataSpec, this.isNetwork, i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public /* synthetic */ java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return java.util.Collections.emptyMap();
    }

    public final void transferEnded() {
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Util.castNonNull(this.dataSpec);
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferEnd(this, dataSpec, this.isNetwork);
        }
        this.dataSpec = null;
    }

    public final void transferInitializing(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferInitializing(this, dataSpec, this.isNetwork);
        }
    }

    public final void transferStarted(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        this.dataSpec = dataSpec;
        for (int i = 0; i < this.listenerCount; i++) {
            this.listeners.get(i).onTransferStart(this, dataSpec, this.isNetwork);
        }
    }
}
