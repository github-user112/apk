package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public final class Id3Decoder extends com.google.android.exoplayer2.metadata.SimpleMetadataDecoder {
    public static final int FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER = 32;
    public static final int FRAME_FLAG_V3_IS_COMPRESSED = 128;
    public static final int FRAME_FLAG_V3_IS_ENCRYPTED = 64;
    public static final int FRAME_FLAG_V4_HAS_DATA_LENGTH = 1;
    public static final int FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER = 64;
    public static final int FRAME_FLAG_V4_IS_COMPRESSED = 8;
    public static final int FRAME_FLAG_V4_IS_ENCRYPTED = 4;
    public static final int FRAME_FLAG_V4_IS_UNSYNCHRONIZED = 2;
    public static final int ID3_HEADER_LENGTH = 10;
    public static final int ID3_TAG = 4801587;
    public static final int ID3_TEXT_ENCODING_ISO_8859_1 = 0;
    public static final int ID3_TEXT_ENCODING_UTF_16 = 1;
    public static final int ID3_TEXT_ENCODING_UTF_16BE = 2;
    public static final int ID3_TEXT_ENCODING_UTF_8 = 3;
    public static final com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate NO_FRAMES_PREDICATE = new com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate() { // from class: e.c.a.a.k2.b.a
        @Override // com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return com.google.android.exoplayer2.metadata.id3.Id3Decoder.a(i, i2, i3, i4, i5);
        }
    };
    public static final java.lang.String TAG = "Id3Decoder";
    public final com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate framePredicate;

    public interface FramePredicate {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    public static final class Id3Header {
        public final int framesSize;
        public final boolean isUnsynchronized;
        public final int majorVersion;

        public Id3Header(int i, boolean z, int i2) {
            this.majorVersion = i;
            this.isUnsynchronized = z;
            this.framesSize = i2;
        }
    }

    public Id3Decoder() {
        this(null);
    }

    public Id3Decoder(com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate framePredicate) {
        this.framePredicate = framePredicate;
    }

    public static /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public static byte[] copyOfRangeIfValid(byte[] bArr, int i, int i2) {
        return i2 <= i ? com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY : java.util.Arrays.copyOfRange(bArr, i, i2);
    }

    public static com.google.android.exoplayer2.metadata.id3.ApicFrame decodeApicFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) {
        int iIndexOfZeroByte;
        java.lang.String strConcat;
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.readBytes(bArr, 0, i3);
        if (i2 == 2) {
            java.lang.String strValueOf = java.lang.String.valueOf(d.s.y.b0(new java.lang.String(bArr, 0, 3, com.google.android.exoplayer2.C.ISO88591_NAME)));
            strConcat = strValueOf.length() != 0 ? "image/".concat(strValueOf) : new java.lang.String("image/");
            if ("image/jpg".equals(strConcat)) {
                strConcat = com.google.android.exoplayer2.util.MimeTypes.IMAGE_JPEG;
            }
            iIndexOfZeroByte = 2;
        } else {
            iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
            java.lang.String strB0 = d.s.y.b0(new java.lang.String(bArr, 0, iIndexOfZeroByte, com.google.android.exoplayer2.C.ISO88591_NAME));
            if (strB0.indexOf(47) != -1) {
                strConcat = strB0;
            } else if (strB0.length() != 0) {
                strConcat = "image/".concat(strB0);
            } else {
                strB0 = new java.lang.String("image/");
                strConcat = strB0;
            }
        }
        int i4 = bArr[iIndexOfZeroByte + 1] & 255;
        int i5 = iIndexOfZeroByte + 2;
        int iIndexOfEos = indexOfEos(bArr, i5, unsignedByte);
        return new com.google.android.exoplayer2.metadata.id3.ApicFrame(strConcat, new java.lang.String(bArr, i5, iIndexOfEos - i5, charsetName), i4, copyOfRangeIfValid(bArr, delimiterLength(unsignedByte) + iIndexOfEos, i3));
    }

    public static com.google.android.exoplayer2.metadata.id3.BinaryFrame decodeBinaryFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, java.lang.String str) {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new com.google.android.exoplayer2.metadata.id3.BinaryFrame(str, bArr);
    }

    public static com.google.android.exoplayer2.metadata.id3.ChapterFrame decodeChapterFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate framePredicate) {
        int position = parsableByteArray.getPosition();
        int iIndexOfZeroByte = indexOfZeroByte(parsableByteArray.getData(), position);
        java.lang.String str = new java.lang.String(parsableByteArray.getData(), position, iIndexOfZeroByte - position, com.google.android.exoplayer2.C.ISO88591_NAME);
        parsableByteArray.setPosition(iIndexOfZeroByte + 1);
        int i4 = parsableByteArray.readInt();
        int i5 = parsableByteArray.readInt();
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long j = unsignedInt == 4294967295L ? -1L : unsignedInt;
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        long j2 = unsignedInt2 == 4294967295L ? -1L : unsignedInt2;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i6 = position + i;
        while (parsableByteArray.getPosition() < i6) {
            com.google.android.exoplayer2.metadata.id3.Id3Frame id3FrameDecodeFrame = decodeFrame(i2, parsableByteArray, z, i3, framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        return new com.google.android.exoplayer2.metadata.id3.ChapterFrame(str, i4, i5, j, j2, (com.google.android.exoplayer2.metadata.id3.Id3Frame[]) arrayList.toArray(new com.google.android.exoplayer2.metadata.id3.Id3Frame[0]));
    }

    public static com.google.android.exoplayer2.metadata.id3.ChapterTocFrame decodeChapterTOCFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate framePredicate) {
        int position = parsableByteArray.getPosition();
        int iIndexOfZeroByte = indexOfZeroByte(parsableByteArray.getData(), position);
        java.lang.String str = new java.lang.String(parsableByteArray.getData(), position, iIndexOfZeroByte - position, com.google.android.exoplayer2.C.ISO88591_NAME);
        parsableByteArray.setPosition(iIndexOfZeroByte + 1);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        boolean z2 = (unsignedByte & 2) != 0;
        boolean z3 = (unsignedByte & 1) != 0;
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        java.lang.String[] strArr = new java.lang.String[unsignedByte2];
        for (int i4 = 0; i4 < unsignedByte2; i4++) {
            int position2 = parsableByteArray.getPosition();
            int iIndexOfZeroByte2 = indexOfZeroByte(parsableByteArray.getData(), position2);
            strArr[i4] = new java.lang.String(parsableByteArray.getData(), position2, iIndexOfZeroByte2 - position2, com.google.android.exoplayer2.C.ISO88591_NAME);
            parsableByteArray.setPosition(iIndexOfZeroByte2 + 1);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i5 = position + i;
        while (parsableByteArray.getPosition() < i5) {
            com.google.android.exoplayer2.metadata.id3.Id3Frame id3FrameDecodeFrame = decodeFrame(i2, parsableByteArray, z, i3, framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        return new com.google.android.exoplayer2.metadata.id3.ChapterTocFrame(str, z2, z3, strArr, (com.google.android.exoplayer2.metadata.id3.Id3Frame[]) arrayList.toArray(new com.google.android.exoplayer2.metadata.id3.Id3Frame[0]));
    }

    public static com.google.android.exoplayer2.metadata.id3.CommentFrame decodeCommentFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        if (i < 4) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        byte[] bArr = new byte[3];
        parsableByteArray.readBytes(bArr, 0, 3);
        java.lang.String str = new java.lang.String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        parsableByteArray.readBytes(bArr2, 0, i2);
        int iIndexOfEos = indexOfEos(bArr2, 0, unsignedByte);
        java.lang.String str2 = new java.lang.String(bArr2, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = delimiterLength(unsignedByte) + iIndexOfEos;
        return new com.google.android.exoplayer2.metadata.id3.CommentFrame(str, str2, decodeStringIfValid(bArr2, iDelimiterLength, indexOfEos(bArr2, iDelimiterLength, unsignedByte), charsetName));
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01ea A[Catch: all -> 0x012e, UnsupportedEncodingException -> 0x0222, TryCatch #0 {UnsupportedEncodingException -> 0x0222, blocks: (B:91:0x011c, B:159:0x01f4, B:93:0x0124, B:102:0x013d, B:104:0x0145, B:112:0x015f, B:121:0x0177, B:132:0x0192, B:139:0x01a4, B:145:0x01b3, B:150:0x01cb, B:156:0x01e5, B:157:0x01ea), top: B:169:0x0112, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.id3.Id3Frame decodeFrame(int r19, com.google.android.exoplayer2.util.ParsableByteArray r20, boolean r21, int r22, com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate r23) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.Id3Decoder.decodeFrame(int, com.google.android.exoplayer2.util.ParsableByteArray, boolean, int, com.google.android.exoplayer2.metadata.id3.Id3Decoder$FramePredicate):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    public static com.google.android.exoplayer2.metadata.id3.GeobFrame decodeGeobFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
        java.lang.String str = new java.lang.String(bArr, 0, iIndexOfZeroByte, com.google.android.exoplayer2.C.ISO88591_NAME);
        int i3 = iIndexOfZeroByte + 1;
        int iIndexOfEos = indexOfEos(bArr, i3, unsignedByte);
        java.lang.String strDecodeStringIfValid = decodeStringIfValid(bArr, i3, iIndexOfEos, charsetName);
        int iDelimiterLength = delimiterLength(unsignedByte) + iIndexOfEos;
        int iIndexOfEos2 = indexOfEos(bArr, iDelimiterLength, unsignedByte);
        return new com.google.android.exoplayer2.metadata.id3.GeobFrame(str, strDecodeStringIfValid, decodeStringIfValid(bArr, iDelimiterLength, iIndexOfEos2, charsetName), copyOfRangeIfValid(bArr, delimiterLength(unsignedByte) + iIndexOfEos2, i2));
    }

    public static com.google.android.exoplayer2.metadata.id3.Id3Decoder.Id3Header decodeHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.lang.String strF;
        if (parsableByteArray.bytesLeft() >= 10) {
            int unsignedInt24 = parsableByteArray.readUnsignedInt24();
            boolean z = false;
            if (unsignedInt24 != 4801587) {
                java.lang.String strValueOf = java.lang.String.valueOf(java.lang.String.format("%06X", java.lang.Integer.valueOf(unsignedInt24)));
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Unexpected first three bytes of ID3 tag header: 0x".concat(strValueOf) : new java.lang.String("Unexpected first three bytes of ID3 tag header: 0x"));
                return null;
            }
            int unsignedByte = parsableByteArray.readUnsignedByte();
            parsableByteArray.skipBytes(1);
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int synchSafeInt = parsableByteArray.readSynchSafeInt();
            if (unsignedByte == 2) {
                if ((unsignedByte2 & 64) != 0) {
                    strF = "Skipped ID3 tag with majorVersion=2 and undefined compression scheme";
                }
                if (unsignedByte < 4 && (unsignedByte2 & 128) != 0) {
                    z = true;
                }
                return new com.google.android.exoplayer2.metadata.id3.Id3Decoder.Id3Header(unsignedByte, z, synchSafeInt);
            }
            if (unsignedByte == 3) {
                if ((unsignedByte2 & 64) != 0) {
                    int i = parsableByteArray.readInt();
                    parsableByteArray.skipBytes(i);
                    synchSafeInt -= i + 4;
                }
            } else if (unsignedByte == 4) {
                if ((unsignedByte2 & 64) != 0) {
                    int synchSafeInt2 = parsableByteArray.readSynchSafeInt();
                    parsableByteArray.skipBytes(synchSafeInt2 - 4);
                    synchSafeInt -= synchSafeInt2;
                }
                if ((unsignedByte2 & 16) != 0) {
                    synchSafeInt -= 10;
                }
            } else {
                strF = e.a.c.a.a.F(57, "Skipped ID3 tag with unsupported majorVersion=", unsignedByte);
            }
            if (unsignedByte < 4) {
                z = true;
            }
            return new com.google.android.exoplayer2.metadata.id3.Id3Decoder.Id3Header(unsignedByte, z, synchSafeInt);
        }
        strF = "Data too short to be an ID3 tag";
        com.google.android.exoplayer2.util.Log.w(TAG, strF);
        return null;
    }

    public static com.google.android.exoplayer2.metadata.id3.MlltFrame decodeMlltFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedInt24 = parsableByteArray.readUnsignedInt24();
        int unsignedInt242 = parsableByteArray.readUnsignedInt24();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray();
        parsableBitArray.reset(parsableByteArray);
        int i2 = ((i - 10) * 8) / (unsignedByte + unsignedByte2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int bits = parsableBitArray.readBits(unsignedByte);
            int bits2 = parsableBitArray.readBits(unsignedByte2);
            iArr[i3] = bits;
            iArr2[i3] = bits2;
        }
        return new com.google.android.exoplayer2.metadata.id3.MlltFrame(unsignedShort, unsignedInt24, unsignedInt242, iArr, iArr2);
    }

    public static com.google.android.exoplayer2.metadata.id3.PrivFrame decodePrivFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        int iIndexOfZeroByte = indexOfZeroByte(bArr, 0);
        return new com.google.android.exoplayer2.metadata.id3.PrivFrame(new java.lang.String(bArr, 0, iIndexOfZeroByte, com.google.android.exoplayer2.C.ISO88591_NAME), copyOfRangeIfValid(bArr, iIndexOfZeroByte + 1, i));
    }

    public static java.lang.String decodeStringIfValid(byte[] bArr, int i, int i2, java.lang.String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new java.lang.String(bArr, i, i2 - i, str);
    }

    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame decodeTextInformationFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, java.lang.String str) {
        if (i < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame(str, null, new java.lang.String(bArr, 0, indexOfEos(bArr, 0, unsignedByte), charsetName));
    }

    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame decodeTxxxFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        if (i < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int iIndexOfEos = indexOfEos(bArr, 0, unsignedByte);
        java.lang.String str = new java.lang.String(bArr, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = delimiterLength(unsignedByte) + iIndexOfEos;
        return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame("TXXX", str, decodeStringIfValid(bArr, iDelimiterLength, indexOfEos(bArr, iDelimiterLength, unsignedByte), charsetName));
    }

    public static com.google.android.exoplayer2.metadata.id3.UrlLinkFrame decodeUrlLinkFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, java.lang.String str) {
        byte[] bArr = new byte[i];
        parsableByteArray.readBytes(bArr, 0, i);
        return new com.google.android.exoplayer2.metadata.id3.UrlLinkFrame(str, null, new java.lang.String(bArr, 0, indexOfZeroByte(bArr, 0), com.google.android.exoplayer2.C.ISO88591_NAME));
    }

    public static com.google.android.exoplayer2.metadata.id3.UrlLinkFrame decodeWxxxFrame(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        if (i < 1) {
            return null;
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        java.lang.String charsetName = getCharsetName(unsignedByte);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        int iIndexOfEos = indexOfEos(bArr, 0, unsignedByte);
        java.lang.String str = new java.lang.String(bArr, 0, iIndexOfEos, charsetName);
        int iDelimiterLength = delimiterLength(unsignedByte) + iIndexOfEos;
        return new com.google.android.exoplayer2.metadata.id3.UrlLinkFrame("WXXX", str, decodeStringIfValid(bArr, iDelimiterLength, indexOfZeroByte(bArr, iDelimiterLength), com.google.android.exoplayer2.C.ISO88591_NAME));
    }

    public static int delimiterLength(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static java.lang.String getCharsetName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? com.google.android.exoplayer2.C.ISO88591_NAME : com.google.android.exoplayer2.C.UTF8_NAME : "UTF-16BE" : com.google.android.exoplayer2.C.UTF16_NAME;
    }

    public static java.lang.String getFrameId(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? java.lang.String.format(java.util.Locale.US, "%c%c%c", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf(i4)) : java.lang.String.format(java.util.Locale.US, "%c%c%c%c", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf(i4), java.lang.Integer.valueOf(i5));
    }

    public static int indexOfEos(byte[] bArr, int i, int i2) {
        int iIndexOfZeroByte = indexOfZeroByte(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iIndexOfZeroByte;
        }
        while (iIndexOfZeroByte < bArr.length - 1) {
            if ((iIndexOfZeroByte - i) % 2 == 0 && bArr[iIndexOfZeroByte + 1] == 0) {
                return iIndexOfZeroByte;
            }
            iIndexOfZeroByte = indexOfZeroByte(bArr, iIndexOfZeroByte + 1);
        }
        return bArr.length;
    }

    public static int indexOfZeroByte(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static int removeUnsynchronization(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        byte[] data = parsableByteArray.getData();
        int position = parsableByteArray.getPosition();
        int i2 = position;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= position + i) {
                return i;
            }
            if ((data[i2] & 255) == 255 && data[i3] == 0) {
                java.lang.System.arraycopy(data, i2 + 2, data, i3, (i - (i2 - position)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0078 A[PHI: r3
  0x0078: PHI (r3v13 boolean) = (r3v5 boolean), (r3v16 boolean) binds: [B:39:0x0085, B:31:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean validateFrames(com.google.android.exoplayer2.util.ParsableByteArray r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.Id3Decoder.validateFrames(com.google.android.exoplayer2.util.ParsableByteArray, int, int, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public com.google.android.exoplayer2.metadata.Metadata decode(com.google.android.exoplayer2.metadata.MetadataInputBuffer metadataInputBuffer, java.nio.ByteBuffer byteBuffer) {
        return decode(byteBuffer.array(), byteBuffer.limit());
    }

    public com.google.android.exoplayer2.metadata.Metadata decode(byte[] bArr, int i) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr, i);
        com.google.android.exoplayer2.metadata.id3.Id3Decoder.Id3Header id3HeaderDecodeHeader = decodeHeader(parsableByteArray);
        if (id3HeaderDecodeHeader == null) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        int i2 = id3HeaderDecodeHeader.majorVersion == 2 ? 6 : 10;
        int iRemoveUnsynchronization = id3HeaderDecodeHeader.framesSize;
        if (id3HeaderDecodeHeader.isUnsynchronized) {
            iRemoveUnsynchronization = removeUnsynchronization(parsableByteArray, id3HeaderDecodeHeader.framesSize);
        }
        parsableByteArray.setLimit(position + iRemoveUnsynchronization);
        boolean z = false;
        if (!validateFrames(parsableByteArray, id3HeaderDecodeHeader.majorVersion, i2, false)) {
            if (id3HeaderDecodeHeader.majorVersion != 4 || !validateFrames(parsableByteArray, 4, i2, true)) {
                e.a.c.a.a.t(56, "Failed to validate ID3 tag with majorVersion=", id3HeaderDecodeHeader.majorVersion, TAG);
                return null;
            }
            z = true;
        }
        while (parsableByteArray.bytesLeft() >= i2) {
            com.google.android.exoplayer2.metadata.id3.Id3Frame id3FrameDecodeFrame = decodeFrame(id3HeaderDecodeHeader.majorVersion, parsableByteArray, z, i2, this.framePredicate);
            if (id3FrameDecodeFrame != null) {
                arrayList.add(id3FrameDecodeFrame);
            }
        }
        return new com.google.android.exoplayer2.metadata.Metadata(arrayList);
    }
}
