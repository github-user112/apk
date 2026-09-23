package com.google.android.exoplayer2.extractor.flv;

/* loaded from: classes.dex */
public final class AudioTagPayloadReader extends com.google.android.exoplayer2.extractor.flv.TagPayloadReader {
    public static final int AAC_PACKET_TYPE_AAC_RAW = 1;
    public static final int AAC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    public static final int AUDIO_FORMAT_AAC = 10;
    public static final int AUDIO_FORMAT_ALAW = 7;
    public static final int AUDIO_FORMAT_MP3 = 2;
    public static final int AUDIO_FORMAT_ULAW = 8;
    public static final int[] AUDIO_SAMPLING_RATE_TABLE = {5512, 11025, 22050, com.google.android.exoplayer2.source.SilenceMediaSource.SAMPLE_RATE_HZ};
    public int audioFormat;
    public boolean hasOutputFormat;
    public boolean hasParsedAudioDataHeader;

    public AudioTagPayloadReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        super(trackOutput);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parseHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.extractor.flv.TagPayloadReader.UnsupportedFormatException {
        com.google.android.exoplayer2.Format.Builder sampleRate;
        if (this.hasParsedAudioDataHeader) {
            parsableByteArray.skipBytes(1);
        } else {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int i = (unsignedByte >> 4) & 15;
            this.audioFormat = i;
            if (i == 2) {
                sampleRate = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_MPEG).setChannelCount(1).setSampleRate(AUDIO_SAMPLING_RATE_TABLE[(unsignedByte >> 2) & 3]);
            } else if (i == 7 || i == 8) {
                sampleRate = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(this.audioFormat == 7 ? com.google.android.exoplayer2.util.MimeTypes.AUDIO_ALAW : com.google.android.exoplayer2.util.MimeTypes.AUDIO_MLAW).setChannelCount(1).setSampleRate(8000);
            } else {
                if (i != 10) {
                    throw new com.google.android.exoplayer2.extractor.flv.TagPayloadReader.UnsupportedFormatException(e.a.c.a.a.F(39, "Audio format not supported: ", this.audioFormat));
                }
                this.hasParsedAudioDataHeader = true;
            }
            this.output.format(sampleRate.build());
            this.hasOutputFormat = true;
            this.hasParsedAudioDataHeader = true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parsePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j) {
        if (this.audioFormat == 2) {
            int iBytesLeft = parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, iBytesLeft);
            this.output.sampleMetadata(j, 1, iBytesLeft, 0, null);
            return true;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if (unsignedByte != 0 || this.hasOutputFormat) {
            if (this.audioFormat == 10 && unsignedByte != 1) {
                return false;
            }
            int iBytesLeft2 = parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, iBytesLeft2);
            this.output.sampleMetadata(j, 1, iBytesLeft2, 0, null);
            return true;
        }
        int iBytesLeft3 = parsableByteArray.bytesLeft();
        byte[] bArr = new byte[iBytesLeft3];
        parsableByteArray.readBytes(bArr, 0, iBytesLeft3);
        com.google.android.exoplayer2.audio.AacUtil.Config audioSpecificConfig = com.google.android.exoplayer2.audio.AacUtil.parseAudioSpecificConfig(bArr);
        this.output.format(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC).setCodecs(audioSpecificConfig.codecs).setChannelCount(audioSpecificConfig.channelCount).setSampleRate(audioSpecificConfig.sampleRateHz).setInitializationData(java.util.Collections.singletonList(bArr)).build());
        this.hasOutputFormat = true;
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void seek() {
    }
}
