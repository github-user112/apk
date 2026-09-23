package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class FlacMetadataReader {
    public static final int SEEK_POINT_SIZE = 18;
    public static final int STREAM_MARKER = 1716281667;
    public static final int SYNC_CODE = 16382;

    public static final class FlacStreamMetadataHolder {
        public com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata;

        public FlacStreamMetadataHolder(com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata) {
            this.flacStreamMetadata = flacStreamMetadata;
        }
    }

    public static boolean checkAndPeekStreamMarker(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        return parsableByteArray.readUnsignedInt() == 1716281667;
    }

    public static int getFrameStartMarker(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        extractorInput.resetPeekPosition();
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(2);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int i = unsignedShort >> 2;
        extractorInput.resetPeekPosition();
        if (i == 16382) {
            return unsignedShort;
        }
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    public static com.google.android.exoplayer2.metadata.Metadata peekId3Metadata(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, boolean z) {
        com.google.android.exoplayer2.metadata.Metadata metadataPeekId3Data = new com.google.android.exoplayer2.extractor.Id3Peeker().peekId3Data(extractorInput, z ? null : com.google.android.exoplayer2.metadata.id3.Id3Decoder.NO_FRAMES_PREDICATE);
        if (metadataPeekId3Data == null || metadataPeekId3Data.length() == 0) {
            return null;
        }
        return metadataPeekId3Data;
    }

    public static com.google.android.exoplayer2.metadata.Metadata readId3Metadata(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, boolean z) {
        extractorInput.resetPeekPosition();
        long peekPosition = extractorInput.getPeekPosition();
        com.google.android.exoplayer2.metadata.Metadata metadataPeekId3Metadata = peekId3Metadata(extractorInput, z);
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - peekPosition));
        return metadataPeekId3Metadata;
    }

    public static boolean readMetadataBlock(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.FlacMetadataReader.FlacStreamMetadataHolder flacStreamMetadataHolder) {
        com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadataCopyWithPictureFrames;
        extractorInput.resetPeekPosition();
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[4]);
        extractorInput.peekFully(parsableBitArray.data, 0, 4);
        boolean bit = parsableBitArray.readBit();
        int bits = parsableBitArray.readBits(7);
        int bits2 = parsableBitArray.readBits(24) + 4;
        if (bits == 0) {
            flacStreamMetadataCopyWithPictureFrames = readStreamInfoBlock(extractorInput);
        } else {
            com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata = flacStreamMetadataHolder.flacStreamMetadata;
            if (flacStreamMetadata == null) {
                throw new java.lang.IllegalArgumentException();
            }
            if (bits == 3) {
                flacStreamMetadataCopyWithPictureFrames = flacStreamMetadata.copyWithSeekTable(readSeekTableMetadataBlock(extractorInput, bits2));
            } else if (bits == 4) {
                flacStreamMetadataCopyWithPictureFrames = flacStreamMetadata.copyWithVorbisComments(readVorbisCommentMetadataBlock(extractorInput, bits2));
            } else {
                if (bits != 6) {
                    extractorInput.skipFully(bits2);
                    return bit;
                }
                flacStreamMetadataCopyWithPictureFrames = flacStreamMetadata.copyWithPictureFrames(java.util.Collections.singletonList(readPictureMetadataBlock(extractorInput, bits2)));
            }
        }
        flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadataCopyWithPictureFrames;
        return bit;
    }

    public static com.google.android.exoplayer2.metadata.flac.PictureFrame readPictureMetadataBlock(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        parsableByteArray.skipBytes(4);
        int i2 = parsableByteArray.readInt();
        java.lang.String string = parsableByteArray.readString(parsableByteArray.readInt(), e.c.b.a.c.a);
        java.lang.String string2 = parsableByteArray.readString(parsableByteArray.readInt());
        int i3 = parsableByteArray.readInt();
        int i4 = parsableByteArray.readInt();
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        int i7 = parsableByteArray.readInt();
        byte[] bArr = new byte[i7];
        parsableByteArray.readBytes(bArr, 0, i7);
        return new com.google.android.exoplayer2.metadata.flac.PictureFrame(i2, string, string2, i3, i4, i5, i6, bArr);
    }

    public static com.google.android.exoplayer2.extractor.FlacStreamMetadata.SeekTable readSeekTableMetadataBlock(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        return readSeekTableMetadataBlock(parsableByteArray);
    }

    public static com.google.android.exoplayer2.extractor.FlacStreamMetadata.SeekTable readSeekTableMetadataBlock(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(1);
        int unsignedInt24 = parsableByteArray.readUnsignedInt24();
        long position = parsableByteArray.getPosition() + unsignedInt24;
        int i = unsignedInt24 / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long j = parsableByteArray.readLong();
            if (j == -1) {
                jArrCopyOf = java.util.Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = java.util.Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = j;
            jArrCopyOf2[i2] = parsableByteArray.readLong();
            parsableByteArray.skipBytes(2);
            i2++;
        }
        parsableByteArray.skipBytes((int) (position - parsableByteArray.getPosition()));
        return new com.google.android.exoplayer2.extractor.FlacStreamMetadata.SeekTable(jArrCopyOf, jArrCopyOf2);
    }

    public static com.google.android.exoplayer2.extractor.FlacStreamMetadata readStreamInfoBlock(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        byte[] bArr = new byte[38];
        extractorInput.readFully(bArr, 0, 38);
        return new com.google.android.exoplayer2.extractor.FlacStreamMetadata(bArr, 4);
    }

    public static void readStreamMarker(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        extractorInput.readFully(parsableByteArray.getData(), 0, 4);
        if (parsableByteArray.readUnsignedInt() != 1716281667) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    public static java.util.List<java.lang.String> readVorbisCommentMetadataBlock(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        parsableByteArray.skipBytes(4);
        return java.util.Arrays.asList(com.google.android.exoplayer2.extractor.VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments);
    }
}
