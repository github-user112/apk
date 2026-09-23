package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public final class AtomParsers {
    public static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    public static final java.lang.String TAG = "AtomParsers";
    public static final int TYPE_clcp = 1668047728;
    public static final int TYPE_mdta = 1835299937;
    public static final int TYPE_meta = 1835365473;
    public static final int TYPE_nclc = 1852009571;
    public static final int TYPE_nclx = 1852009592;
    public static final int TYPE_sbtl = 1935832172;
    public static final int TYPE_soun = 1936684398;
    public static final int TYPE_subt = 1937072756;
    public static final int TYPE_text = 1952807028;
    public static final int TYPE_vide = 1986618469;
    public static final byte[] opusMagic = com.google.android.exoplayer2.util.Util.getUtf8Bytes("OpusHead");

    public static final class ChunkIterator {
        public final com.google.android.exoplayer2.util.ParsableByteArray chunkOffsets;
        public final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        public int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        public int remainingSamplesPerChunkChanges;
        public final com.google.android.exoplayer2.util.ParsableByteArray stsc;

        public ChunkIterator(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2, boolean z) throws com.google.android.exoplayer2.ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    public interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public com.google.android.exoplayer2.Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox[i];
        }
    }

    public static final class StszSampleSizeBox implements com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox {
        public final com.google.android.exoplayer2.util.ParsableByteArray data;
        public final int fixedSampleSize;
        public final int sampleCount;

        public StszSampleSizeBox(com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom, com.google.android.exoplayer2.Format format) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = this.data.readUnsignedIntToInt();
            if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
                int pcmFrameSize = com.google.android.exoplayer2.util.Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt == 0 || unsignedIntToInt % pcmFrameSize != 0) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(88);
                    sb.append("Audio sample size mismatch. stsd sample size: ");
                    sb.append(pcmFrameSize);
                    sb.append(", stsz sample size: ");
                    sb.append(unsignedIntToInt);
                    com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.extractor.mp4.AtomParsers.TAG, sb.toString());
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    public static final class Stz2SampleSizeBox implements com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox {
        public int currentByte;
        public final com.google.android.exoplayer2.util.ParsableByteArray data;
        public final int fieldSize;
        public final int sampleCount;
        public int sampleIndex;

        public Stz2SampleSizeBox(com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            int unsignedByte = this.data.readUnsignedByte();
            this.currentByte = unsignedByte;
            return (unsignedByte & 240) >> 4;
        }
    }

    public static final class TkhdData {
        public final long duration;
        public final int id;
        public final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    public static java.nio.ByteBuffer allocateHdrStaticInfo() {
        return java.nio.ByteBuffer.allocate(25).order(java.nio.ByteOrder.LITTLE_ENDIAN);
    }

    public static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[com.google.android.exoplayer2.util.Util.constrainValue(4, 0, length)] && jArr[com.google.android.exoplayer2.util.Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    public static int findBoxPosition(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, int i3) throws com.google.android.exoplayer2.ParserException {
        int position = parsableByteArray.getPosition();
        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(position >= i2, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(i4 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += i4;
        }
        return -1;
    }

    public static int getTrackTypeForHdlr(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseAudioSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray r22, int r23, int r24, int r25, int r26, java.lang.String r27, boolean r28, com.google.android.exoplayer2.drm.DrmInitData r29, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData r30, int r31) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseAudioSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.AtomParsers$StsdData, int):void");
    }

    public static android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox> parseCommonEncryptionSinfFromParent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) throws com.google.android.exoplayer2.ParserException {
        int i3 = i + 8;
        java.lang.String string = null;
        java.lang.Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == 1718775137) {
                numValueOf = java.lang.Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == 1935894637) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == 1935894633) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!"cenc".equals(string) && !com.google.android.exoplayer2.C.CENC_TYPE_cbc1.equals(string) && !com.google.android.exoplayer2.C.CENC_TYPE_cens.equals(string) && !com.google.android.exoplayer2.C.CENC_TYPE_cbcs.equals(string)) {
            return null;
        }
        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(numValueOf != null, "frma atom is mandatory");
        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, string);
        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(schiFromParent != null, "tenc atom is mandatory");
        return android.util.Pair.create(numValueOf, (com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox) com.google.android.exoplayer2.util.Util.castNonNull(schiFromParent));
    }

    public static android.util.Pair<long[], long[]> parseEdts(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) {
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_elst);
        if (leafAtomOfType == null) {
            return null;
        }
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new java.lang.IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return android.util.Pair.create(jArr, jArr2);
    }

    public static android.util.Pair<java.lang.String, byte[]> parseEsdsFromParent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        java.lang.String mimeTypeFromMp4ObjectType = com.google.android.exoplayer2.util.MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return android.util.Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return android.util.Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    public static int parseExpandableClassSize(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    public static int parseHdlr(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    public static com.google.android.exoplayer2.metadata.Metadata parseIlst(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (parsableByteArray.getPosition() < i) {
            com.google.android.exoplayer2.metadata.Metadata.Entry ilstElement = com.google.android.exoplayer2.extractor.mp4.MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.google.android.exoplayer2.metadata.Metadata(arrayList);
    }

    public static android.util.Pair<java.lang.Long, java.lang.String> parseMdhd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(3);
        sb.append((char) (((unsignedShort >> 10) & 31) + 96));
        sb.append((char) (((unsignedShort >> 5) & 31) + 96));
        sb.append((char) ((unsignedShort & 31) + 96));
        return android.util.Pair.create(java.lang.Long.valueOf(unsignedInt), sb.toString());
    }

    public static com.google.android.exoplayer2.metadata.Metadata parseMdtaFromMeta(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) {
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_hdlr);
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_keys);
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_ilst);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != 1835299937) {
            return null;
        }
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        java.lang.String[] strArr = new java.lang.String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i4 = parsableByteArray2.readInt();
            int i5 = parsableByteArray2.readInt() - 1;
            if (i5 < 0 || i5 >= i) {
                e.a.c.a.a.t(52, "Skipped metadata with unknown key index: ", i5, TAG);
            } else {
                com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry mdtaMetadataEntryFromIlst = com.google.android.exoplayer2.extractor.mp4.MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i4, strArr[i5]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.google.android.exoplayer2.metadata.Metadata(arrayList);
    }

    public static void parseMetaDataSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, int i3, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            java.lang.String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (nullTerminatedString != null) {
                stsdData.format = new com.google.android.exoplayer2.Format.Builder().setId(i3).setSampleMimeType(nullTerminatedString).build();
            }
        }
    }

    public static long parseMvhd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    public static float parsePaspFromParent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    public static byte[] parseProjFromParent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return java.util.Arrays.copyOfRange(parsableByteArray.getData(), i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    public static android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox> parseSampleEntryEncryptionData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) throws com.google.android.exoplayer2.ParserException {
        android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    public static com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox parseSchiFromParent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, java.lang.String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
    }

    public static com.google.android.exoplayer2.metadata.Metadata parseSmta(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i2 < 14) {
                    return null;
                }
                parsableByteArray.skipBytes(5);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                if (unsignedByte != 12 && unsignedByte != 13) {
                    return null;
                }
                float f2 = unsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new com.google.android.exoplayer2.metadata.Metadata(new com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry(f2, parsableByteArray.readUnsignedByte()));
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x043e A[EDGE_INSN: B:209:0x043e->B:170:0x043e BREAK  A[LOOP:2: B:153:0x03d6->B:169:0x0436], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.extractor.mp4.TrackSampleTable parseStbl(com.google.android.exoplayer2.extractor.mp4.Track r37, com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom r38, com.google.android.exoplayer2.extractor.GaplessInfoHolder r39) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseStbl(com.google.android.exoplayer2.extractor.mp4.Track, com.google.android.exoplayer2.extractor.mp4.Atom$ContainerAtom, com.google.android.exoplayer2.extractor.GaplessInfoHolder):com.google.android.exoplayer2.extractor.mp4.TrackSampleTable");
    }

    public static com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData parseStsd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, java.lang.String str, com.google.android.exoplayer2.drm.DrmInitData drmInitData, boolean z) throws com.google.android.exoplayer2.ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int i4 = parsableByteArray.readInt();
        com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsdData = new com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int position = parsableByteArray.getPosition();
            int i6 = parsableByteArray.readInt();
            com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(i6 > 0, "childAtomSize must be positive");
            int i7 = parsableByteArray.readInt();
            if (i7 == 1635148593 || i7 == 1635148595 || i7 == 1701733238 || i7 == 1831958048 || i7 == 1836070006 || i7 == 1752589105 || i7 == 1751479857 || i7 == 1932670515 || i7 == 1211250227 || i7 == 1987063864 || i7 == 1987063865 || i7 == 1635135537 || i7 == 1685479798 || i7 == 1685479729 || i7 == 1685481573 || i7 == 1685481521) {
                i3 = position;
                parseVideoSampleEntry(parsableByteArray, i7, i3, i6, i, i2, drmInitData, stsdData, i5);
            } else if (i7 == 1836069985 || i7 == 1701733217 || i7 == 1633889587 || i7 == 1700998451 || i7 == 1633889588 || i7 == 1835823201 || i7 == 1685353315 || i7 == 1685353317 || i7 == 1685353320 || i7 == 1685353324 || i7 == 1685353336 || i7 == 1935764850 || i7 == 1935767394 || i7 == 1819304813 || i7 == 1936684916 || i7 == 1953984371 || i7 == 778924082 || i7 == 778924083 || i7 == 1835557169 || i7 == 1835560241 || i7 == 1634492771 || i7 == 1634492791 || i7 == 1970037111 || i7 == 1332770163 || i7 == 1716281667) {
                i3 = position;
                parseAudioSampleEntry(parsableByteArray, i7, position, i6, i, str, z, drmInitData, stsdData, i5);
            } else {
                if (i7 == 1414810956 || i7 == 1954034535 || i7 == 2004251764 || i7 == 1937010800 || i7 == 1664495672) {
                    parseTextSampleEntry(parsableByteArray, i7, position, i6, i, str, stsdData);
                } else if (i7 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, i7, position, i, stsdData);
                } else if (i7 == 1667329389) {
                    stsdData.format = new com.google.android.exoplayer2.Format.Builder().setId(i).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + i6);
        }
        return stsdData;
    }

    public static void parseTextSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, java.lang.String str, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        java.lang.String str2 = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_TTML;
        e.c.b.b.s sVarQ = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = (i3 - 8) - 8;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                sVarQ = e.c.b.b.s.q(bArr);
                str2 = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new java.lang.IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        stsdData.format = new com.google.android.exoplayer2.Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(sVarQ).build();
    }

    public static com.google.android.exoplayer2.extractor.mp4.AtomParsers.TkhdData parseTkhd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        boolean z;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                z = true;
                break;
            }
            if (parsableByteArray.getData()[position + i4] != -1) {
                z = false;
                break;
            }
            i4++;
        }
        long j = com.google.android.exoplayer2.C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i2);
        } else {
            long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (unsignedInt != 0) {
                j = unsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i3 = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i3 = 270;
        } else if (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) {
            i3 = 180;
        }
        return new com.google.android.exoplayer2.extractor.mp4.AtomParsers.TkhdData(i, j, i3);
    }

    public static com.google.android.exoplayer2.extractor.mp4.Track parseTrak(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom, long j, com.google.android.exoplayer2.drm.DrmInitData drmInitData, boolean z, boolean z2) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom2;
        long j2;
        long[] jArr;
        long[] jArr2;
        com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtomOfType;
        android.util.Pair<long[], long[]> edts;
        com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom2 = (com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom.getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_mdia));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_hdlr))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        com.google.android.exoplayer2.extractor.mp4.AtomParsers.TkhdData tkhd = parseTkhd(((com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_tkhd))).data);
        long jScaleLargeTimestamp = com.google.android.exoplayer2.C.TIME_UNSET;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            leafAtom2 = leafAtom;
            j2 = tkhd.duration;
        } else {
            leafAtom2 = leafAtom;
            j2 = j;
        }
        long mvhd = parseMvhd(leafAtom2.data);
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
            jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j2, 1000000L, mvhd);
        }
        long j3 = jScaleLargeTimestamp;
        com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom3 = (com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(((com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_minf))).getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_stbl));
        android.util.Pair<java.lang.Long, java.lang.String> mdhd = parseMdhd(((com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_mdhd))).data);
        com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsd = parseStsd(((com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom3.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_stsd))).data, tkhd.id, tkhd.rotationDegrees, (java.lang.String) mdhd.second, drmInitData, z2);
        if (z || (containerAtomOfType = containerAtom.getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_edts)) == null || (edts = parseEdts(containerAtomOfType)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new com.google.android.exoplayer2.extractor.mp4.Track(tkhd.id, trackTypeForHdlr, ((java.lang.Long) mdhd.first).longValue(), mvhd, j3, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static java.util.List<com.google.android.exoplayer2.extractor.mp4.TrackSampleTable> parseTraks(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, com.google.android.exoplayer2.extractor.GaplessInfoHolder gaplessInfoHolder, long j, com.google.android.exoplayer2.drm.DrmInitData drmInitData, boolean z, boolean z2, e.c.b.a.d<com.google.android.exoplayer2.extractor.mp4.Track, com.google.android.exoplayer2.extractor.mp4.Track> dVar) {
        com.google.android.exoplayer2.extractor.mp4.Track trackApply;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (trackApply = dVar.apply(parseTrak(containerAtom2, (com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(trackApply, (com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(((com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(((com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_mdia))).getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_minf))).getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_stbl)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static android.util.Pair<com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata> parseUdta(com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        com.google.android.exoplayer2.metadata.Metadata udtaMeta = null;
        com.google.android.exoplayer2.metadata.Metadata smta = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                udtaMeta = parseUdtaMeta(parsableByteArray, position + i);
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                smta = parseSmta(parsableByteArray, position + i);
            }
            parsableByteArray.setPosition(position + i);
        }
        return android.util.Pair.create(udtaMeta, smta);
    }

    public static com.google.android.exoplayer2.metadata.Metadata parseUdtaMeta(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    public static void parseVideoSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, com.google.android.exoplayer2.drm.DrmInitData drmInitData, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsdData, int i6) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.drm.DrmInitData drmInitData2;
        int i7;
        int i8;
        byte[] bArr;
        float f2;
        java.util.List<byte[]> list;
        java.lang.String str;
        int i9 = i2;
        int i10 = i3;
        com.google.android.exoplayer2.drm.DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i9 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i9, i10);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((java.lang.Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        java.lang.String str2 = com.google.android.exoplayer2.util.MimeTypes.VIDEO_H263;
        java.lang.String str3 = iIntValue == 1831958048 ? com.google.android.exoplayer2.util.MimeTypes.VIDEO_MPEG : iIntValue == 1211250227 ? com.google.android.exoplayer2.util.MimeTypes.VIDEO_H263 : null;
        float paspFromParent = 1.0f;
        byte[] projFromParent = null;
        java.lang.String str4 = null;
        java.util.List<byte[]> listQ = null;
        int i11 = -1;
        int iIsoColorPrimariesToColorSpace = -1;
        int i12 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        java.nio.ByteBuffer byteBuffer = null;
        boolean z = false;
        while (true) {
            if (position - i9 >= i10) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                break;
            }
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            java.lang.String str5 = str2;
            int i13 = parsableByteArray.readInt();
            if (i13 == 0) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                if (parsableByteArray.getPosition() - i9 == i10) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataCopyWithSchemeType;
            }
            com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(i13 > 0, "childAtomSize must be positive");
            int i14 = parsableByteArray.readInt();
            if (i14 == 1635148611) {
                com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                com.google.android.exoplayer2.video.AvcConfig avcConfig = com.google.android.exoplayer2.video.AvcConfig.parse(parsableByteArray);
                listQ = avcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthHeightRatio;
                }
                str4 = avcConfig.codecs;
                str = com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264;
            } else if (i14 == 1752589123) {
                com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                com.google.android.exoplayer2.video.HevcConfig hevcConfig = com.google.android.exoplayer2.video.HevcConfig.parse(parsableByteArray);
                listQ = hevcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = hevcConfig.pixelWidthHeightRatio;
                }
                str4 = hevcConfig.codecs;
                str = com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265;
            } else {
                if (i14 == 1685480259 || i14 == 1685485123) {
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    bArr = projFromParent;
                    f2 = paspFromParent;
                    list = listQ;
                    com.google.android.exoplayer2.video.DolbyVisionConfig dolbyVisionConfig = com.google.android.exoplayer2.video.DolbyVisionConfig.parse(parsableByteArray);
                    if (dolbyVisionConfig != null) {
                        str4 = dolbyVisionConfig.codecs;
                        str3 = com.google.android.exoplayer2.util.MimeTypes.VIDEO_DOLBY_VISION;
                    }
                } else if (i14 == 1987076931) {
                    com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = iIntValue == 1987063864 ? com.google.android.exoplayer2.util.MimeTypes.VIDEO_VP8 : com.google.android.exoplayer2.util.MimeTypes.VIDEO_VP9;
                } else if (i14 == 1635135811) {
                    com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = com.google.android.exoplayer2.util.MimeTypes.VIDEO_AV1;
                } else if (i14 == 1668050025) {
                    java.nio.ByteBuffer byteBufferAllocateHdrStaticInfo = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                    byteBufferAllocateHdrStaticInfo.position(21);
                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                    byteBuffer = byteBufferAllocateHdrStaticInfo;
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    position += i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    str2 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = i8;
                    unsignedShort2 = i7;
                } else if (i14 == 1835295606) {
                    java.nio.ByteBuffer byteBufferAllocateHdrStaticInfo2 = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                    short s = parsableByteArray.readShort();
                    short s2 = parsableByteArray.readShort();
                    short s3 = parsableByteArray.readShort();
                    i8 = iIntValue;
                    short s4 = parsableByteArray.readShort();
                    short s5 = parsableByteArray.readShort();
                    java.util.List<byte[]> list2 = listQ;
                    short s6 = parsableByteArray.readShort();
                    byte[] bArr2 = projFromParent;
                    short s7 = parsableByteArray.readShort();
                    float f3 = paspFromParent;
                    short s8 = parsableByteArray.readShort();
                    long unsignedInt = parsableByteArray.readUnsignedInt();
                    long unsignedInt2 = parsableByteArray.readUnsignedInt();
                    i7 = unsignedShort2;
                    byteBufferAllocateHdrStaticInfo2.position(1);
                    byteBufferAllocateHdrStaticInfo2.putShort(s5);
                    byteBufferAllocateHdrStaticInfo2.putShort(s6);
                    byteBufferAllocateHdrStaticInfo2.putShort(s);
                    byteBufferAllocateHdrStaticInfo2.putShort(s2);
                    byteBufferAllocateHdrStaticInfo2.putShort(s3);
                    byteBufferAllocateHdrStaticInfo2.putShort(s4);
                    byteBufferAllocateHdrStaticInfo2.putShort(s7);
                    byteBufferAllocateHdrStaticInfo2.putShort(s8);
                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt / 10000));
                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt2 / 10000));
                    byteBuffer = byteBufferAllocateHdrStaticInfo2;
                    listQ = list2;
                    projFromParent = bArr2;
                    paspFromParent = f3;
                    position += i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    str2 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = i8;
                    unsignedShort2 = i7;
                } else {
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    bArr = projFromParent;
                    f2 = paspFromParent;
                    list = listQ;
                    if (i14 == 1681012275) {
                        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                        str3 = str5;
                    } else if (i14 == 1702061171) {
                        com.google.android.exoplayer2.extractor.ExtractorUtil.checkContainerInput(str3 == null, null);
                        android.util.Pair<java.lang.String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                        java.lang.String str6 = (java.lang.String) esdsFromParent.first;
                        byte[] bArr3 = (byte[]) esdsFromParent.second;
                        listQ = bArr3 != null ? e.c.b.b.s.q(bArr3) : list;
                        str3 = str6;
                        projFromParent = bArr;
                        paspFromParent = f2;
                        position += i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        str2 = str5;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                        iIntValue = i8;
                        unsignedShort2 = i7;
                    } else if (i14 == 1885434736) {
                        paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                        listQ = list;
                        projFromParent = bArr;
                        z = true;
                        position += i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        str2 = str5;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                        iIntValue = i8;
                        unsignedShort2 = i7;
                    } else if (i14 == 1937126244) {
                        projFromParent = parseProjFromParent(parsableByteArray, position2, i13);
                        listQ = list;
                        paspFromParent = f2;
                        position += i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        str2 = str5;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                        iIntValue = i8;
                        unsignedShort2 = i7;
                    } else if (i14 == 1936995172) {
                        int unsignedByte = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(3);
                        if (unsignedByte == 0) {
                            int unsignedByte2 = parsableByteArray.readUnsignedByte();
                            if (unsignedByte2 == 0) {
                                i11 = 0;
                            } else if (unsignedByte2 == 1) {
                                i11 = 1;
                            } else if (unsignedByte2 == 2) {
                                i11 = 2;
                            } else if (unsignedByte2 == 3) {
                                i11 = 3;
                            }
                        }
                    } else if (i14 == 1668246642) {
                        int i15 = parsableByteArray.readInt();
                        if (i15 == 1852009592 || i15 == 1852009571) {
                            int unsignedShort3 = parsableByteArray.readUnsignedShort();
                            int unsignedShort4 = parsableByteArray.readUnsignedShort();
                            parsableByteArray.skipBytes(2);
                            boolean z2 = i13 == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                            iIsoColorPrimariesToColorSpace = com.google.android.exoplayer2.video.ColorInfo.isoColorPrimariesToColorSpace(unsignedShort3);
                            i12 = z2 ? 1 : 2;
                            iIsoTransferCharacteristicsToColorTransfer = com.google.android.exoplayer2.video.ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedShort4);
                        } else {
                            java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i15));
                            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Unsupported color type: ".concat(strValueOf) : new java.lang.String("Unsupported color type: "));
                        }
                    }
                }
                listQ = list;
                projFromParent = bArr;
                paspFromParent = f2;
                position += i13;
                i9 = i2;
                i10 = i3;
                stsdData2 = stsdData;
                str2 = str5;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iIntValue = i8;
                unsignedShort2 = i7;
            }
            str3 = str;
            i7 = unsignedShort2;
            i8 = iIntValue;
            position += i13;
            i9 = i2;
            i10 = i3;
            stsdData2 = stsdData;
            str2 = str5;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iIntValue = i8;
            unsignedShort2 = i7;
        }
        int i16 = unsignedShort2;
        byte[] bArr4 = projFromParent;
        float f4 = paspFromParent;
        java.util.List<byte[]> list3 = listQ;
        if (str3 == null) {
            return;
        }
        com.google.android.exoplayer2.Format.Builder drmInitData3 = new com.google.android.exoplayer2.Format.Builder().setId(i4).setSampleMimeType(str3).setCodecs(str4).setWidth(unsignedShort).setHeight(i16).setPixelWidthHeightRatio(f4).setRotationDegrees(i5).setProjectionData(bArr4).setStereoMode(i11).setInitializationData(list3).setDrmInitData(drmInitData2);
        int i17 = iIsoColorPrimariesToColorSpace;
        int i18 = i12;
        int i19 = iIsoTransferCharacteristicsToColorTransfer;
        if (i17 != -1 || i18 != -1 || i19 != -1 || byteBuffer != null) {
            drmInitData3.setColorInfo(new com.google.android.exoplayer2.video.ColorInfo(i17, i18, i19, byteBuffer != null ? byteBuffer.array() : null));
        }
        stsdData.format = drmInitData3.build();
    }
}
