package com.google.android.exoplayer2.extractor.wav;

/* loaded from: classes.dex */
public final class WavHeaderReader {
    public static final java.lang.String TAG = "WavHeaderReader";

    public static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        public ChunkHeader(int i, long j) {
            this.id = i;
            this.size = j;
        }

        public static com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader peek(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
            parsableByteArray.setPosition(0);
            return new com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    public static boolean checkFileType(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(8);
        if (com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(extractorInput, parsableByteArray).id != 1380533830) {
            return false;
        }
        extractorInput.peekFully(parsableByteArray.getData(), 0, 4);
        parsableByteArray.setPosition(0);
        int i = parsableByteArray.readInt();
        if (i == 1463899717) {
            return true;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(34);
        sb.append("Unsupported form type: ");
        sb.append(i);
        com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
        return false;
    }

    public static com.google.android.exoplayer2.extractor.wav.WavFormat readFormat(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader chunkHeaderPeek;
        byte[] bArr;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(16);
        while (true) {
            chunkHeaderPeek = com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(extractorInput, parsableByteArray);
            if (chunkHeaderPeek.id == 1718449184) {
                break;
            }
            extractorInput.skipFully(((int) chunkHeaderPeek.size) + 8);
        }
        com.google.android.exoplayer2.util.Assertions.checkState(chunkHeaderPeek.size >= 16);
        extractorInput.peekFully(parsableByteArray.getData(), 0, 16);
        parsableByteArray.setPosition(0);
        int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int littleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int littleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianUnsignedShort4 = parsableByteArray.readLittleEndianUnsignedShort();
        int i = ((int) chunkHeaderPeek.size) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            extractorInput.peekFully(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
        }
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
        return new com.google.android.exoplayer2.extractor.wav.WavFormat(littleEndianUnsignedShort, littleEndianUnsignedShort2, littleEndianUnsignedIntToInt, littleEndianUnsignedIntToInt2, littleEndianUnsignedShort3, littleEndianUnsignedShort4, bArr);
    }

    public static android.util.Pair<java.lang.Long, java.lang.Long> skipToSampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        extractorInput.resetPeekPosition();
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(8);
        while (true) {
            com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader chunkHeaderPeek = com.google.android.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(extractorInput, parsableByteArray);
            int i = chunkHeaderPeek.id;
            if (i == 1684108385) {
                extractorInput.skipFully(8);
                long position = extractorInput.getPosition();
                long j = chunkHeaderPeek.size + position;
                long length = extractorInput.getLength();
                if (length != -1 && j > length) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(69);
                    sb.append("Data exceeds input length: ");
                    sb.append(j);
                    sb.append(", ");
                    sb.append(length);
                    com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                    j = length;
                }
                return android.util.Pair.create(java.lang.Long.valueOf(position), java.lang.Long.valueOf(j));
            }
            e.a.c.a.a.t(39, "Ignoring unknown WAV chunk: ", i, TAG);
            long j2 = chunkHeaderPeek.size + 8;
            if (j2 > 2147483647L) {
                int i2 = chunkHeaderPeek.id;
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(51);
                sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                sb2.append(i2);
                throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature(sb2.toString());
            }
            extractorInput.skipFully((int) j2);
        }
    }
}
