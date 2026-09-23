package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public interface ElementaryStreamReader {
    void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray);

    void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void packetFinished();

    void packetStarted(long j, int i);

    void seek();
}
