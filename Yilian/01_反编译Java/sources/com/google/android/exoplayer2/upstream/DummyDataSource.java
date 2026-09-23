package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DummyDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public static final com.google.android.exoplayer2.upstream.DummyDataSource INSTANCE = new com.google.android.exoplayer2.upstream.DummyDataSource();
    public static final com.google.android.exoplayer2.upstream.DataSource.Factory FACTORY = new com.google.android.exoplayer2.upstream.DataSource.Factory() { // from class: e.c.a.a.r2.a
        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public final com.google.android.exoplayer2.upstream.DataSource createDataSource() {
            return new com.google.android.exoplayer2.upstream.DummyDataSource();
        }
    };

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public /* synthetic */ java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return java.util.Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        throw new java.io.IOException("DummyDataSource cannot be opened");
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        throw new java.lang.UnsupportedOperationException();
    }
}
