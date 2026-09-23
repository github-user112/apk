package com.google.android.exoplayer2.extractor.flv;

/* loaded from: classes.dex */
public final class VideoTagPayloadReader extends com.google.android.exoplayer2.extractor.flv.TagPayloadReader {
    public static final int AVC_PACKET_TYPE_AVC_NALU = 1;
    public static final int AVC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    public static final int VIDEO_CODEC_AVC = 7;
    public static final int VIDEO_FRAME_KEYFRAME = 1;
    public static final int VIDEO_FRAME_VIDEO_INFO = 5;
    public int frameType;
    public boolean hasOutputFormat;
    public boolean hasOutputKeyframe;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalLength;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalStartCode;
    public int nalUnitLengthFieldLength;

    public VideoTagPayloadReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        super(trackOutput);
        this.nalStartCode = new com.google.android.exoplayer2.util.ParsableByteArray(com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE);
        this.nalLength = new com.google.android.exoplayer2.util.ParsableByteArray(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parseHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.extractor.flv.TagPayloadReader.UnsupportedFormatException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = (unsignedByte >> 4) & 15;
        int i2 = unsignedByte & 15;
        if (i2 != 7) {
            throw new com.google.android.exoplayer2.extractor.flv.TagPayloadReader.UnsupportedFormatException(e.a.c.a.a.F(39, "Video format not supported: ", i2));
        }
        this.frameType = i;
        return i != 5;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parsePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j) throws com.google.android.exoplayer2.ParserException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        long int24 = (parsableByteArray.readInt24() * 1000) + j;
        if (unsignedByte == 0 && !this.hasOutputFormat) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = new com.google.android.exoplayer2.util.ParsableByteArray(new byte[parsableByteArray.bytesLeft()]);
            parsableByteArray.readBytes(parsableByteArray2.getData(), 0, parsableByteArray.bytesLeft());
            com.google.android.exoplayer2.video.AvcConfig avcConfig = com.google.android.exoplayer2.video.AvcConfig.parse(parsableByteArray2);
            this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
            this.output.format(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264).setCodecs(avcConfig.codecs).setWidth(avcConfig.width).setHeight(avcConfig.height).setPixelWidthHeightRatio(avcConfig.pixelWidthHeightRatio).setInitializationData(avcConfig.initializationData).build());
            this.hasOutputFormat = true;
            return false;
        }
        if (unsignedByte != 1 || !this.hasOutputFormat) {
            return false;
        }
        int i = this.frameType == 1 ? 1 : 0;
        if (!this.hasOutputKeyframe && i == 0) {
            return false;
        }
        byte[] data = this.nalLength.getData();
        data[0] = 0;
        data[1] = 0;
        data[2] = 0;
        int i2 = 4 - this.nalUnitLengthFieldLength;
        int i3 = 0;
        while (parsableByteArray.bytesLeft() > 0) {
            parsableByteArray.readBytes(this.nalLength.getData(), i2, this.nalUnitLengthFieldLength);
            this.nalLength.setPosition(0);
            int unsignedIntToInt = this.nalLength.readUnsignedIntToInt();
            this.nalStartCode.setPosition(0);
            this.output.sampleData(this.nalStartCode, 4);
            this.output.sampleData(parsableByteArray, unsignedIntToInt);
            i3 = i3 + 4 + unsignedIntToInt;
        }
        this.output.sampleMetadata(int24, i, i3, 0, null);
        this.hasOutputKeyframe = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void seek() {
        this.hasOutputKeyframe = false;
    }
}
