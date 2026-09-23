package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class IcyDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public int bytesUntilMetadata;
    public final com.google.android.exoplayer2.source.IcyDataSource.Listener listener;
    public final int metadataIntervalBytes;
    public final byte[] metadataLengthByteHolder;
    public final com.google.android.exoplayer2.upstream.DataSource upstream;

    public interface Listener {
        void onIcyMetadata(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray);
    }

    public IcyDataSource(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.source.IcyDataSource.Listener listener) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0);
        this.upstream = dataSource;
        this.metadataIntervalBytes = i;
        this.listener = listener;
        this.metadataLengthByteHolder = new byte[1];
        this.bytesUntilMetadata = i;
    }

    private boolean readMetadata() {
        if (this.upstream.read(this.metadataLengthByteHolder, 0, 1) == -1) {
            return false;
        }
        int i = (this.metadataLengthByteHolder[0] & 255) << 4;
        if (i == 0) {
            return true;
        }
        byte[] bArr = new byte[i];
        int i2 = i;
        int i3 = 0;
        while (i2 > 0) {
            int i4 = this.upstream.read(bArr, i3, i2);
            if (i4 == -1) {
                return false;
            }
            i3 += i4;
            i2 -= i4;
        }
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        if (i > 0) {
            this.listener.onIcyMetadata(new com.google.android.exoplayer2.util.ParsableByteArray(bArr, i));
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        this.upstream.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (this.bytesUntilMetadata == 0) {
            if (!readMetadata()) {
                return -1;
            }
            this.bytesUntilMetadata = this.metadataIntervalBytes;
        }
        int i3 = this.upstream.read(bArr, i, java.lang.Math.min(this.bytesUntilMetadata, i2));
        if (i3 != -1) {
            this.bytesUntilMetadata -= i3;
        }
        return i3;
    }
}
