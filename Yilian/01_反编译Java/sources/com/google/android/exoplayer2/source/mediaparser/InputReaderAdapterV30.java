package com.google.android.exoplayer2.source.mediaparser;

@android.annotation.SuppressLint({"Override"})
/* loaded from: classes.dex */
public final class InputReaderAdapterV30 implements android.media.MediaParser.SeekableInputReader {
    public long currentPosition;
    public com.google.android.exoplayer2.upstream.DataReader dataReader;
    public long lastSeekPosition;
    public long resourceLength;

    public long getAndResetSeekPosition() {
        long j = this.lastSeekPosition;
        this.lastSeekPosition = -1L;
        return j;
    }

    @Override // android.media.MediaParser.InputReader
    public long getLength() {
        return this.resourceLength;
    }

    @Override // android.media.MediaParser.InputReader
    public long getPosition() {
        return this.currentPosition;
    }

    @Override // android.media.MediaParser.InputReader
    public int read(byte[] bArr, int i, int i2) {
        int i3 = ((com.google.android.exoplayer2.upstream.DataReader) com.google.android.exoplayer2.util.Util.castNonNull(this.dataReader)).read(bArr, i, i2);
        this.currentPosition += i3;
        return i3;
    }

    @Override // android.media.MediaParser.SeekableInputReader
    public void seekToPosition(long j) {
        this.lastSeekPosition = j;
    }

    public void setCurrentPosition(long j) {
        this.currentPosition = j;
    }

    public void setDataReader(com.google.android.exoplayer2.upstream.DataReader dataReader, long j) {
        this.dataReader = dataReader;
        this.resourceLength = j;
        this.lastSeekPosition = -1L;
    }
}
