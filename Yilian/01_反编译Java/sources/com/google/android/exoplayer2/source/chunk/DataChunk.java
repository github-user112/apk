package com.google.android.exoplayer2.source.chunk;

/* loaded from: classes.dex */
public abstract class DataChunk extends com.google.android.exoplayer2.source.chunk.Chunk {
    public static final int READ_GRANULARITY = 16384;
    public byte[] data;
    public volatile boolean loadCanceled;

    public DataChunk(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i, com.google.android.exoplayer2.Format format, int i2, java.lang.Object obj, byte[] bArr) {
        com.google.android.exoplayer2.source.chunk.DataChunk dataChunk;
        byte[] bArr2;
        super(dataSource, dataSpec, i, format, i2, obj, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        if (bArr == null) {
            bArr2 = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
            dataChunk = this;
        } else {
            dataChunk = this;
            bArr2 = bArr;
        }
        dataChunk.data = bArr2;
    }

    private void maybeExpandData(int i) {
        byte[] bArr = this.data;
        if (bArr.length < i + 16384) {
            this.data = java.util.Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    public abstract void consume(byte[] bArr, int i);

    public byte[] getDataHolder() {
        return this.data;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        try {
            this.dataSource.open(this.dataSpec);
            int i = 0;
            int i2 = 0;
            while (i != -1 && !this.loadCanceled) {
                maybeExpandData(i2);
                i = this.dataSource.read(this.data, i2, 16384);
                if (i != -1) {
                    i2 += i;
                }
            }
            if (!this.loadCanceled) {
                consume(this.data, i2);
            }
        } finally {
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
        }
    }
}
