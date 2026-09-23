package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class Id3Reader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final java.lang.String TAG = "Id3Reader";
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public int sampleBytesRead;
    public int sampleSize;
    public boolean writingSample;
    public final com.google.android.exoplayer2.util.ParsableByteArray id3Header = new com.google.android.exoplayer2.util.ParsableByteArray(10);
    public long sampleTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        if (this.writingSample) {
            int iBytesLeft = parsableByteArray.bytesLeft();
            int i = this.sampleBytesRead;
            if (i < 10) {
                int iMin = java.lang.Math.min(iBytesLeft, 10 - i);
                java.lang.System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), this.id3Header.getData(), this.sampleBytesRead, iMin);
                if (this.sampleBytesRead + iMin == 10) {
                    this.id3Header.setPosition(0);
                    if (73 != this.id3Header.readUnsignedByte() || 68 != this.id3Header.readUnsignedByte() || 51 != this.id3Header.readUnsignedByte()) {
                        com.google.android.exoplayer2.util.Log.w(TAG, "Discarding invalid ID3 tag");
                        this.writingSample = false;
                        return;
                    } else {
                        this.id3Header.skipBytes(3);
                        this.sampleSize = this.id3Header.readSynchSafeInt() + 10;
                    }
                }
            }
            int iMin2 = java.lang.Math.min(iBytesLeft, this.sampleSize - this.sampleBytesRead);
            this.output.sampleData(parsableByteArray, iMin2);
            this.sampleBytesRead += iMin2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.output = trackOutputTrack;
        trackOutputTrack.format(new com.google.android.exoplayer2.Format.Builder().setId(trackIdGenerator.getFormatId()).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3).build());
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
        int i;
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        if (this.writingSample && (i = this.sampleSize) != 0 && this.sampleBytesRead == i) {
            long j = this.sampleTimeUs;
            if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                this.output.sampleMetadata(j, 1, i, 0, null);
            }
            this.writingSample = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.writingSample = true;
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.sampleTimeUs = j;
        }
        this.sampleSize = 0;
        this.sampleBytesRead = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.writingSample = false;
        this.sampleTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }
}
