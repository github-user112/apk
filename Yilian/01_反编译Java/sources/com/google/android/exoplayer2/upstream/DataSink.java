package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public interface DataSink {

    public interface Factory {
        com.google.android.exoplayer2.upstream.DataSink createDataSink();
    }

    void close();

    void open(com.google.android.exoplayer2.upstream.DataSpec dataSpec);

    void write(byte[] bArr, int i, int i2);
}
