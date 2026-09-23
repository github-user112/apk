package com.google.android.exoplayer2.extractor.flv;

/* loaded from: classes.dex */
public abstract class TagPayloadReader {
    public final com.google.android.exoplayer2.extractor.TrackOutput output;

    public static final class UnsupportedFormatException extends com.google.android.exoplayer2.ParserException {
        public UnsupportedFormatException(java.lang.String str) {
            super(str, null, false, 1);
        }
    }

    public TagPayloadReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final boolean consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j) {
        return parseHeader(parsableByteArray) && parsePayload(parsableByteArray, j);
    }

    public abstract boolean parseHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray);

    public abstract boolean parsePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j);

    public abstract void seek();
}
