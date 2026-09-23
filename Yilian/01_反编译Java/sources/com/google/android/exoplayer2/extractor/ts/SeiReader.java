package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class SeiReader {
    public final java.util.List<com.google.android.exoplayer2.Format> closedCaptionFormats;
    public final com.google.android.exoplayer2.extractor.TrackOutput[] outputs;

    public SeiReader(java.util.List<com.google.android.exoplayer2.Format> list) {
        this.closedCaptionFormats = list;
        this.outputs = new com.google.android.exoplayer2.extractor.TrackOutput[list.size()];
    }

    public void consume(long j, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        com.google.android.exoplayer2.extractor.CeaUtil.consume(j, parsableByteArray, this.outputs);
    }

    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i = 0; i < this.outputs.length; i++) {
            trackIdGenerator.generateNewId();
            com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 3);
            com.google.android.exoplayer2.Format format = this.closedCaptionFormats.get(i);
            java.lang.String str = format.sampleMimeType;
            boolean z = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA708.equals(str);
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Assertions.checkArgument(z, strValueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(strValueOf) : new java.lang.String("Invalid closed caption mime type provided: "));
            java.lang.String formatId = format.id;
            if (formatId == null) {
                formatId = trackIdGenerator.getFormatId();
            }
            trackOutputTrack.format(new com.google.android.exoplayer2.Format.Builder().setId(formatId).setSampleMimeType(str).setSelectionFlags(format.selectionFlags).setLanguage(format.language).setAccessibilityChannel(format.accessibilityChannel).setInitializationData(format.initializationData).build());
            this.outputs[i] = trackOutputTrack;
        }
    }
}
