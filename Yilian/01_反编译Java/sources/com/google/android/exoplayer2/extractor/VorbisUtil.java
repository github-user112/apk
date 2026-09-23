package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class VorbisUtil {
    public static final java.lang.String TAG = "VorbisUtil";

    public static final class CodeBook {
        public final int dimensions;
        public final int entries;
        public final boolean isOrdered;
        public final long[] lengthMap;
        public final int lookupType;

        public CodeBook(int i, int i2, long[] jArr, int i3, boolean z) {
            this.dimensions = i;
            this.entries = i2;
            this.lengthMap = jArr;
            this.lookupType = i3;
            this.isOrdered = z;
        }
    }

    public static final class CommentHeader {
        public final java.lang.String[] comments;
        public final int length;
        public final java.lang.String vendor;

        public CommentHeader(java.lang.String str, java.lang.String[] strArr, int i) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i;
        }
    }

    public static final class Mode {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public Mode(boolean z, int i, int i2, int i3) {
            this.blockFlag = z;
            this.windowType = i;
            this.transformType = i2;
            this.mapping = i3;
        }
    }

    public static final class VorbisIdHeader {
        public final int bitrateMaximum;
        public final int bitrateMinimum;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final int sampleRate;
        public final int version;

        public VorbisIdHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.version = i;
            this.channels = i2;
            this.sampleRate = i3;
            this.bitrateMaximum = i4;
            this.bitrateNominal = i5;
            this.bitrateMinimum = i6;
            this.blockSize0 = i7;
            this.blockSize1 = i8;
            this.framingFlag = z;
            this.data = bArr;
        }
    }

    public static int iLog(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static long mapType1QuantValues(long j, long j2) {
        double d2 = j2;
        java.lang.Double.isNaN(d2);
        return (long) java.lang.Math.floor(java.lang.Math.pow(j, 1.0d / d2));
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.CodeBook readBook(com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray) throws com.google.android.exoplayer2.ParserException {
        if (vorbisBitArray.readBits(24) != 5653314) {
            int position = vorbisBitArray.getPosition();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(66);
            sb.append("expected code book to start with [0x56, 0x43, 0x42] at ");
            sb.append(position);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
        int bits = vorbisBitArray.readBits(16);
        int bits2 = vorbisBitArray.readBits(24);
        long[] jArr = new long[bits2];
        boolean bit = vorbisBitArray.readBit();
        long jMapType1QuantValues = 0;
        if (bit) {
            int bits3 = vorbisBitArray.readBits(5) + 1;
            int i = 0;
            while (i < bits2) {
                int bits4 = vorbisBitArray.readBits(iLog(bits2 - i));
                for (int i2 = 0; i2 < bits4 && i < bits2; i2++) {
                    jArr[i] = bits3;
                    i++;
                }
                bits3++;
            }
        } else {
            boolean bit2 = vorbisBitArray.readBit();
            for (int i3 = 0; i3 < bits2; i3++) {
                if (!bit2) {
                    jArr[i3] = vorbisBitArray.readBits(5) + 1;
                } else if (vorbisBitArray.readBit()) {
                    jArr[i3] = vorbisBitArray.readBits(5) + 1;
                } else {
                    jArr[i3] = 0;
                }
            }
        }
        int bits5 = vorbisBitArray.readBits(4);
        if (bits5 > 2) {
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(53);
            sb2.append("lookup type greater than 2 not decodable: ");
            sb2.append(bits5);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb2.toString(), null);
        }
        if (bits5 == 1 || bits5 == 2) {
            vorbisBitArray.skipBits(32);
            vorbisBitArray.skipBits(32);
            int bits6 = vorbisBitArray.readBits(4) + 1;
            vorbisBitArray.skipBits(1);
            if (bits5 != 1) {
                jMapType1QuantValues = bits2 * bits;
            } else if (bits != 0) {
                jMapType1QuantValues = mapType1QuantValues(bits2, bits);
            }
            vorbisBitArray.skipBits((int) (jMapType1QuantValues * bits6));
        }
        return new com.google.android.exoplayer2.extractor.VorbisUtil.CodeBook(bits, bits2, jArr, bits5, bit);
    }

    public static void readFloors(com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray) throws com.google.android.exoplayer2.ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i = 0; i < bits; i++) {
            int bits2 = vorbisBitArray.readBits(16);
            if (bits2 == 0) {
                vorbisBitArray.skipBits(8);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(6);
                vorbisBitArray.skipBits(8);
                int bits3 = vorbisBitArray.readBits(4) + 1;
                for (int i2 = 0; i2 < bits3; i2++) {
                    vorbisBitArray.skipBits(8);
                }
            } else {
                if (bits2 != 1) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(52);
                    sb.append("floor type greater than 1 not decodable: ");
                    sb.append(bits2);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
                }
                int bits4 = vorbisBitArray.readBits(5);
                int i3 = -1;
                int[] iArr = new int[bits4];
                for (int i4 = 0; i4 < bits4; i4++) {
                    iArr[i4] = vorbisBitArray.readBits(4);
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = vorbisBitArray.readBits(3) + 1;
                    int bits5 = vorbisBitArray.readBits(2);
                    if (bits5 > 0) {
                        vorbisBitArray.skipBits(8);
                    }
                    for (int i7 = 0; i7 < (1 << bits5); i7++) {
                        vorbisBitArray.skipBits(8);
                    }
                }
                vorbisBitArray.skipBits(2);
                int bits6 = vorbisBitArray.readBits(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < bits4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        vorbisBitArray.skipBits(bits6);
                        i9++;
                    }
                }
            }
        }
    }

    public static void readMappings(int i, com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray) throws com.google.android.exoplayer2.ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i2 = 0; i2 < bits; i2++) {
            int bits2 = vorbisBitArray.readBits(16);
            if (bits2 != 0) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(52);
                sb.append("mapping type other than 0 not supported: ");
                sb.append(bits2);
                com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
            } else {
                int bits3 = vorbisBitArray.readBit() ? vorbisBitArray.readBits(4) + 1 : 1;
                if (vorbisBitArray.readBit()) {
                    int bits4 = vorbisBitArray.readBits(8) + 1;
                    for (int i3 = 0; i3 < bits4; i3++) {
                        int i4 = i - 1;
                        vorbisBitArray.skipBits(iLog(i4));
                        vorbisBitArray.skipBits(iLog(i4));
                    }
                }
                if (vorbisBitArray.readBits(2) != 0) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (bits3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        vorbisBitArray.skipBits(4);
                    }
                }
                for (int i6 = 0; i6 < bits3; i6++) {
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                }
            }
        }
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.Mode[] readModes(com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray) {
        int bits = vorbisBitArray.readBits(6) + 1;
        com.google.android.exoplayer2.extractor.VorbisUtil.Mode[] modeArr = new com.google.android.exoplayer2.extractor.VorbisUtil.Mode[bits];
        for (int i = 0; i < bits; i++) {
            modeArr[i] = new com.google.android.exoplayer2.extractor.VorbisUtil.Mode(vorbisBitArray.readBit(), vorbisBitArray.readBits(16), vorbisBitArray.readBits(16), vorbisBitArray.readBits(8));
        }
        return modeArr;
    }

    public static void readResidues(com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray) throws com.google.android.exoplayer2.ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i = 0; i < bits; i++) {
            if (vorbisBitArray.readBits(16) > 2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            int bits2 = vorbisBitArray.readBits(6) + 1;
            vorbisBitArray.skipBits(8);
            int[] iArr = new int[bits2];
            for (int i2 = 0; i2 < bits2; i2++) {
                iArr[i2] = ((vorbisBitArray.readBit() ? vorbisBitArray.readBits(5) : 0) * 8) + vorbisBitArray.readBits(3);
            }
            for (int i3 = 0; i3 < bits2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        vorbisBitArray.skipBits(8);
                    }
                }
            }
        }
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.CommentHeader readVorbisCommentHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return readVorbisCommentHeader(parsableByteArray, true, true);
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.CommentHeader readVorbisCommentHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, boolean z, boolean z2) throws com.google.android.exoplayer2.ParserException {
        if (z) {
            verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
        }
        java.lang.String string = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
        int length = string.length() + 11;
        long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        java.lang.String[] strArr = new java.lang.String[(int) littleEndianUnsignedInt];
        int length2 = length + 4;
        for (int i = 0; i < littleEndianUnsignedInt; i++) {
            strArr[i] = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
            length2 = length2 + 4 + strArr[i].length();
        }
        if (z2 && (parsableByteArray.readUnsignedByte() & 1) == 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new com.google.android.exoplayer2.extractor.VorbisUtil.CommentHeader(string, strArr, length2 + 1);
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.VorbisIdHeader readVorbisIdentificationHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
        verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
        int littleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int littleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int littleEndianInt = parsableByteArray.readLittleEndianInt();
        if (littleEndianInt <= 0) {
            littleEndianInt = -1;
        }
        int littleEndianInt2 = parsableByteArray.readLittleEndianInt();
        if (littleEndianInt2 <= 0) {
            littleEndianInt2 = -1;
        }
        int littleEndianInt3 = parsableByteArray.readLittleEndianInt();
        if (littleEndianInt3 <= 0) {
            littleEndianInt3 = -1;
        }
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        return new com.google.android.exoplayer2.extractor.VorbisUtil.VorbisIdHeader(littleEndianUnsignedIntToInt, unsignedByte, littleEndianUnsignedIntToInt2, littleEndianInt, littleEndianInt2, littleEndianInt3, (int) java.lang.Math.pow(2.0d, unsignedByte2 & 15), (int) java.lang.Math.pow(2.0d, (unsignedByte2 & 240) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, java.util.Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit()));
    }

    public static com.google.android.exoplayer2.extractor.VorbisUtil.Mode[] readVorbisModes(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) throws com.google.android.exoplayer2.ParserException {
        verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
        int unsignedByte = parsableByteArray.readUnsignedByte() + 1;
        com.google.android.exoplayer2.extractor.VorbisBitArray vorbisBitArray = new com.google.android.exoplayer2.extractor.VorbisBitArray(parsableByteArray.getData());
        vorbisBitArray.skipBits(parsableByteArray.getPosition() * 8);
        for (int i2 = 0; i2 < unsignedByte; i2++) {
            readBook(vorbisBitArray);
        }
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i3 = 0; i3 < bits; i3++) {
            if (vorbisBitArray.readBits(16) != 0) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        readFloors(vorbisBitArray);
        readResidues(vorbisBitArray);
        readMappings(i, vorbisBitArray);
        com.google.android.exoplayer2.extractor.VorbisUtil.Mode[] modes = readModes(vorbisBitArray);
        if (vorbisBitArray.readBit()) {
            return modes;
        }
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    public static boolean verifyVorbisHeaderCapturePattern(int i, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, boolean z) throws com.google.android.exoplayer2.ParserException {
        if (parsableByteArray.bytesLeft() < 7) {
            if (z) {
                return false;
            }
            int iBytesLeft = parsableByteArray.bytesLeft();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(29);
            sb.append("too short header: ");
            sb.append(iBytesLeft);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
        if (parsableByteArray.readUnsignedByte() != i) {
            if (z) {
                return false;
            }
            java.lang.String strValueOf = java.lang.String.valueOf(java.lang.Integer.toHexString(i));
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(strValueOf.length() != 0 ? "expected header type ".concat(strValueOf) : new java.lang.String("expected header type "), null);
        }
        if (parsableByteArray.readUnsignedByte() == 118 && parsableByteArray.readUnsignedByte() == 111 && parsableByteArray.readUnsignedByte() == 114 && parsableByteArray.readUnsignedByte() == 98 && parsableByteArray.readUnsignedByte() == 105 && parsableByteArray.readUnsignedByte() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
