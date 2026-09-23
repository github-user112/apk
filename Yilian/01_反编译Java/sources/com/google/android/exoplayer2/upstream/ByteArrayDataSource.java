package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class ByteArrayDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public int bytesRemaining;
    public final byte[] data;
    public boolean opened;
    public int readPosition;
    public android.net.Uri uri;

    public ByteArrayDataSource(byte[] bArr) {
        super(false);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        com.google.android.exoplayer2.util.Assertions.checkArgument(bArr.length > 0);
        this.data = bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        this.uri = null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws com.google.android.exoplayer2.upstream.DataSourceException {
        this.uri = dataSpec.uri;
        transferInitializing(dataSpec);
        long j = dataSpec.position;
        byte[] bArr = this.data;
        if (j > bArr.length) {
            throw new com.google.android.exoplayer2.upstream.DataSourceException(2008);
        }
        this.readPosition = (int) j;
        int length = bArr.length - ((int) j);
        this.bytesRemaining = length;
        long j2 = dataSpec.length;
        if (j2 != -1) {
            this.bytesRemaining = (int) java.lang.Math.min(length, j2);
        }
        this.opened = true;
        transferStarted(dataSpec);
        long j3 = dataSpec.length;
        return j3 != -1 ? j3 : this.bytesRemaining;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bytesRemaining;
        if (i3 == 0) {
            return -1;
        }
        int iMin = java.lang.Math.min(i2, i3);
        java.lang.System.arraycopy(this.data, this.readPosition, bArr, i, iMin);
        this.readPosition += iMin;
        this.bytesRemaining -= iMin;
        bytesTransferred(iMin);
        return iMin;
    }
}
