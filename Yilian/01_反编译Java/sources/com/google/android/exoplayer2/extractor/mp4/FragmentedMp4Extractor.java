package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public class FragmentedMp4Extractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int EXTRA_TRACKS_BASE_ID = 100;
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    public static final int SAMPLE_GROUP_TYPE_seig = 1936025959;
    public static final int STATE_READING_ATOM_HEADER = 0;
    public static final int STATE_READING_ATOM_PAYLOAD = 1;
    public static final int STATE_READING_ENCRYPTION_DATA = 2;
    public static final int STATE_READING_SAMPLE_CONTINUE = 4;
    public static final int STATE_READING_SAMPLE_START = 3;
    public static final java.lang.String TAG = "FragmentedMp4Extractor";
    public final com.google.android.exoplayer2.extractor.TrackOutput additionalEmsgTrackOutput;
    public com.google.android.exoplayer2.util.ParsableByteArray atomData;
    public final com.google.android.exoplayer2.util.ParsableByteArray atomHeader;
    public int atomHeaderBytesRead;
    public long atomSize;
    public int atomType;
    public com.google.android.exoplayer2.extractor.TrackOutput[] ceaTrackOutputs;
    public final java.util.List<com.google.android.exoplayer2.Format> closedCaptionFormats;
    public final java.util.ArrayDeque<com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom> containerAtoms;
    public com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle currentTrackBundle;
    public long durationUs;
    public com.google.android.exoplayer2.extractor.TrackOutput[] emsgTrackOutputs;
    public long endOfMdatPosition;
    public final com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder eventMessageEncoder;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public final int flags;
    public boolean haveOutputSeekMap;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalBuffer;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalPrefix;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalStartCode;
    public int parserState;
    public int pendingMetadataSampleBytes;
    public final java.util.ArrayDeque<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo> pendingMetadataSampleInfos;
    public long pendingSeekTimeUs;
    public boolean processSeiNalUnitPayload;
    public int sampleBytesWritten;
    public int sampleCurrentNalBytesRemaining;
    public int sampleSize;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch;
    public final byte[] scratchBytes;
    public long segmentIndexEarliestPresentationTimeUs;
    public final com.google.android.exoplayer2.extractor.mp4.Track sideloadedTrack;
    public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
    public final android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle> trackBundles;
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.j.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final com.google.android.exoplayer2.Format EMSG_FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG).build();

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class MetadataSampleInfo {
        public final long presentationTimeDeltaUs;
        public final int size;

        public MetadataSampleInfo(long j, int i) {
            this.presentationTimeDeltaUs = j;
            this.size = i;
        }
    }

    public static final class TrackBundle {
        public static final int SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH = 8;
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        public boolean currentlyInFragment;
        public com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues defaultSampleValues;
        public int firstSampleToOutputIndex;
        public com.google.android.exoplayer2.extractor.mp4.TrackSampleTable moovSampleTable;
        public final com.google.android.exoplayer2.extractor.TrackOutput output;
        public final com.google.android.exoplayer2.extractor.mp4.TrackFragment fragment = new com.google.android.exoplayer2.extractor.mp4.TrackFragment();
        public final com.google.android.exoplayer2.util.ParsableByteArray scratch = new com.google.android.exoplayer2.util.ParsableByteArray();
        public final com.google.android.exoplayer2.util.ParsableByteArray encryptionSignalByte = new com.google.android.exoplayer2.util.ParsableByteArray(1);
        public final com.google.android.exoplayer2.util.ParsableByteArray defaultInitializationVector = new com.google.android.exoplayer2.util.ParsableByteArray();

        public TrackBundle(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable, com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues defaultSampleValues) {
            this.output = trackOutput;
            this.moovSampleTable = trackSampleTable;
            this.defaultSampleValues = defaultSampleValues;
            reset(trackSampleTable, defaultSampleValues);
        }

        public int getCurrentSampleFlags() {
            int i = !this.currentlyInFragment ? this.moovSampleTable.flags[this.currentSampleIndex] : this.fragment.sampleIsSyncFrameTable[this.currentSampleIndex] ? 1 : 0;
            return getEncryptionBoxIfEncrypted() != null ? i | 1073741824 : i;
        }

        public long getCurrentSampleOffset() {
            return !this.currentlyInFragment ? this.moovSampleTable.offsets[this.currentSampleIndex] : this.fragment.trunDataPosition[this.currentTrackRunIndex];
        }

        public long getCurrentSamplePresentationTimeUs() {
            return !this.currentlyInFragment ? this.moovSampleTable.timestampsUs[this.currentSampleIndex] : this.fragment.getSamplePresentationTimeUs(this.currentSampleIndex);
        }

        public int getCurrentSampleSize() {
            return !this.currentlyInFragment ? this.moovSampleTable.sizes[this.currentSampleIndex] : this.fragment.sampleSizeTable[this.currentSampleIndex];
        }

        public com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox getEncryptionBoxIfEncrypted() {
            if (!this.currentlyInFragment) {
                return null;
            }
            int i = ((com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues) com.google.android.exoplayer2.util.Util.castNonNull(this.fragment.header)).sampleDescriptionIndex;
            com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox sampleDescriptionEncryptionBox = this.fragment.trackEncryptionBox;
            if (sampleDescriptionEncryptionBox == null) {
                sampleDescriptionEncryptionBox = this.moovSampleTable.track.getSampleDescriptionEncryptionBox(i);
            }
            if (sampleDescriptionEncryptionBox == null || !sampleDescriptionEncryptionBox.isEncrypted) {
                return null;
            }
            return sampleDescriptionEncryptionBox;
        }

        public boolean next() {
            this.currentSampleIndex++;
            if (!this.currentlyInFragment) {
                return false;
            }
            int i = this.currentSampleInTrackRun + 1;
            this.currentSampleInTrackRun = i;
            int[] iArr = this.fragment.trunLength;
            int i2 = this.currentTrackRunIndex;
            if (i != iArr[i2]) {
                return true;
            }
            this.currentTrackRunIndex = i2 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }

        public int outputSampleEncryptionData(int i, int i2) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray;
            com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
            if (encryptionBoxIfEncrypted == null) {
                return 0;
            }
            int length = encryptionBoxIfEncrypted.perSampleIvSize;
            if (length != 0) {
                parsableByteArray = this.fragment.sampleEncryptionData;
            } else {
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(encryptionBoxIfEncrypted.defaultInitializationVector);
                this.defaultInitializationVector.reset(bArr, bArr.length);
                com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = this.defaultInitializationVector;
                length = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            boolean zSampleHasSubsampleEncryptionTable = this.fragment.sampleHasSubsampleEncryptionTable(this.currentSampleIndex);
            boolean z = zSampleHasSubsampleEncryptionTable || i2 != 0;
            this.encryptionSignalByte.getData()[0] = (byte) ((z ? 128 : 0) | length);
            this.encryptionSignalByte.setPosition(0);
            this.output.sampleData(this.encryptionSignalByte, 1, 1);
            this.output.sampleData(parsableByteArray, length, 1);
            if (!z) {
                return length + 1;
            }
            if (!zSampleHasSubsampleEncryptionTable) {
                this.scratch.reset(8);
                byte[] data = this.scratch.getData();
                data[0] = 0;
                data[1] = 1;
                data[2] = (byte) ((i2 >> 8) & 255);
                data[3] = (byte) (i2 & 255);
                data[4] = (byte) ((i >> 24) & 255);
                data[5] = (byte) ((i >> 16) & 255);
                data[6] = (byte) ((i >> 8) & 255);
                data[7] = (byte) (i & 255);
                this.output.sampleData(this.scratch, 8, 1);
                return length + 1 + 8;
            }
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray3 = this.fragment.sampleEncryptionData;
            int unsignedShort = parsableByteArray3.readUnsignedShort();
            parsableByteArray3.skipBytes(-2);
            int i3 = (unsignedShort * 6) + 2;
            if (i2 != 0) {
                this.scratch.reset(i3);
                byte[] data2 = this.scratch.getData();
                parsableByteArray3.readBytes(data2, 0, i3);
                int i4 = (((data2[2] & 255) << 8) | (data2[3] & 255)) + i2;
                data2[2] = (byte) ((i4 >> 8) & 255);
                data2[3] = (byte) (i4 & 255);
                parsableByteArray3 = this.scratch;
            }
            this.output.sampleData(parsableByteArray3, i3, 1);
            return length + 1 + i3;
        }

        public void reset(com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable, com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues defaultSampleValues) {
            this.moovSampleTable = trackSampleTable;
            this.defaultSampleValues = defaultSampleValues;
            this.output.format(trackSampleTable.track.format);
            resetFragmentInfo();
        }

        public void resetFragmentInfo() {
            this.fragment.reset();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
            this.firstSampleToOutputIndex = 0;
            this.currentlyInFragment = false;
        }

        public void seek(long j) {
            int i = this.currentSampleIndex;
            while (true) {
                com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment = this.fragment;
                if (i >= trackFragment.sampleCount || trackFragment.getSamplePresentationTimeUs(i) >= j) {
                    return;
                }
                if (this.fragment.sampleIsSyncFrameTable[i]) {
                    this.firstSampleToOutputIndex = i;
                }
                i++;
            }
        }

        public void skipSampleEncryptionData() {
            com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox encryptionBoxIfEncrypted = getEncryptionBoxIfEncrypted();
            if (encryptionBoxIfEncrypted == null) {
                return;
            }
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.fragment.sampleEncryptionData;
            int i = encryptionBoxIfEncrypted.perSampleIvSize;
            if (i != 0) {
                parsableByteArray.skipBytes(i);
            }
            if (this.fragment.sampleHasSubsampleEncryptionTable(this.currentSampleIndex)) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
            }
        }

        public void updateDrmInitData(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
            com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox sampleDescriptionEncryptionBox = this.moovSampleTable.track.getSampleDescriptionEncryptionBox(((com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues) com.google.android.exoplayer2.util.Util.castNonNull(this.fragment.header)).sampleDescriptionIndex);
            this.output.format(this.moovSampleTable.track.format.buildUpon().setDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null)).build());
        }
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int i) {
        this(i, null);
    }

    public FragmentedMp4Extractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        this(i, timestampAdjuster, null, java.util.Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.mp4.Track track) {
        this(i, timestampAdjuster, track, java.util.Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.mp4.Track track, java.util.List<com.google.android.exoplayer2.Format> list) {
        this(i, timestampAdjuster, track, list, null);
    }

    public FragmentedMp4Extractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.mp4.Track track, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        this.flags = i;
        this.timestampAdjuster = timestampAdjuster;
        this.sideloadedTrack = track;
        this.closedCaptionFormats = java.util.Collections.unmodifiableList(list);
        this.additionalEmsgTrackOutput = trackOutput;
        this.eventMessageEncoder = new com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder();
        this.atomHeader = new com.google.android.exoplayer2.util.ParsableByteArray(16);
        this.nalStartCode = new com.google.android.exoplayer2.util.ParsableByteArray(com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new com.google.android.exoplayer2.util.ParsableByteArray(5);
        this.nalBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();
        byte[] bArr = new byte[16];
        this.scratchBytes = bArr;
        this.scratch = new com.google.android.exoplayer2.util.ParsableByteArray(bArr);
        this.containerAtoms = new java.util.ArrayDeque<>();
        this.pendingMetadataSampleInfos = new java.util.ArrayDeque<>();
        this.trackBundles = new android.util.SparseArray<>();
        this.durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.pendingSeekTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.segmentIndexEarliestPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.extractorOutput = com.google.android.exoplayer2.extractor.ExtractorOutput.PLACEHOLDER;
        this.emsgTrackOutputs = new com.google.android.exoplayer2.extractor.TrackOutput[0];
        this.ceaTrackOutputs = new com.google.android.exoplayer2.extractor.TrackOutput[0];
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor()};
    }

    public static int checkNonNegative(int i) throws com.google.android.exoplayer2.ParserException {
        if (i >= 0) {
            return i;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues getDefaultSampleValues(android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues> sparseArray, int i) {
        return (com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues) (sparseArray.size() == 1 ? sparseArray.valueAt(0) : com.google.android.exoplayer2.util.Assertions.checkNotNull(sparseArray.get(i)));
    }

    public static com.google.android.exoplayer2.drm.DrmInitData getDrmInitDataFromAtoms(java.util.List<com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom> list) {
        int size = list.size();
        java.util.ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom = list.get(i);
            if (leafAtom.type == 1886614376) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList();
                }
                byte[] data = leafAtom.data.getData();
                java.util.UUID uuid = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.parseUuid(data);
                if (uuid == null) {
                    com.google.android.exoplayer2.util.Log.w(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(uuid, com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, data));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new com.google.android.exoplayer2.drm.DrmInitData(arrayList);
    }

    public static com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle getNextTrackBundle(android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle> sparseArray) {
        int size = sparseArray.size();
        com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle trackBundle = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle trackBundleValueAt = sparseArray.valueAt(i);
            if ((trackBundleValueAt.currentlyInFragment || trackBundleValueAt.currentSampleIndex != trackBundleValueAt.moovSampleTable.sampleCount) && (!trackBundleValueAt.currentlyInFragment || trackBundleValueAt.currentTrackRunIndex != trackBundleValueAt.fragment.trunCount)) {
                long currentSampleOffset = trackBundleValueAt.getCurrentSampleOffset();
                if (currentSampleOffset < j) {
                    trackBundle = trackBundleValueAt;
                    j = currentSampleOffset;
                }
            }
        }
        return trackBundle;
    }

    private void initExtraTracks() {
        int i;
        com.google.android.exoplayer2.extractor.TrackOutput[] trackOutputArr = new com.google.android.exoplayer2.extractor.TrackOutput[2];
        this.emsgTrackOutputs = trackOutputArr;
        com.google.android.exoplayer2.extractor.TrackOutput trackOutput = this.additionalEmsgTrackOutput;
        int i2 = 0;
        if (trackOutput != null) {
            trackOutputArr[0] = trackOutput;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.flags & 4) != 0) {
            this.emsgTrackOutputs[i] = this.extractorOutput.track(100, 5);
            i++;
            i3 = 101;
        }
        com.google.android.exoplayer2.extractor.TrackOutput[] trackOutputArr2 = (com.google.android.exoplayer2.extractor.TrackOutput[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(this.emsgTrackOutputs, i);
        this.emsgTrackOutputs = trackOutputArr2;
        for (com.google.android.exoplayer2.extractor.TrackOutput trackOutput2 : trackOutputArr2) {
            trackOutput2.format(EMSG_FORMAT);
        }
        this.ceaTrackOutputs = new com.google.android.exoplayer2.extractor.TrackOutput[this.closedCaptionFormats.size()];
        while (i2 < this.ceaTrackOutputs.length) {
            com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = this.extractorOutput.track(i3, 3);
            trackOutputTrack.format(this.closedCaptionFormats.get(i2));
            this.ceaTrackOutputs[i2] = trackOutputTrack;
            i2++;
            i3++;
        }
    }

    private void onContainerAtomRead(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) throws com.google.android.exoplayer2.ParserException {
        int i = containerAtom.type;
        if (i == 1836019574) {
            onMoovContainerAtomRead(containerAtom);
        } else if (i == 1836019558) {
            onMoofContainerAtomRead(containerAtom);
        } else {
            if (this.containerAtoms.isEmpty()) {
                return;
            }
            this.containerAtoms.peek().add(containerAtom);
        }
    }

    private void onEmsgLeafAtomRead(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        long jScaleLargeTimestamp;
        java.lang.String str;
        long jScaleLargeTimestamp2;
        java.lang.String str2;
        long unsignedInt;
        long jAdjustSampleTimestamp;
        if (this.emsgTrackOutputs.length == 0) {
            return;
        }
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        if (fullAtomVersion == 0) {
            java.lang.String str3 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            java.lang.String str4 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000000L, unsignedInt2);
            long j = this.segmentIndexEarliestPresentationTimeUs;
            long j2 = j != com.google.android.exoplayer2.C.TIME_UNSET ? j + jScaleLargeTimestamp : -9223372036854775807L;
            str = str3;
            jScaleLargeTimestamp2 = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000L, unsignedInt2);
            str2 = str4;
            unsignedInt = parsableByteArray.readUnsignedInt();
            jAdjustSampleTimestamp = j2;
        } else {
            if (fullAtomVersion != 1) {
                e.a.c.a.a.t(46, "Skipping unsupported emsg version: ", fullAtomVersion, TAG);
                return;
            }
            long unsignedInt3 = parsableByteArray.readUnsignedInt();
            jAdjustSampleTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(parsableByteArray.readUnsignedLongToLong(), 1000000L, unsignedInt3);
            long jScaleLargeTimestamp3 = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000L, unsignedInt3);
            long unsignedInt4 = parsableByteArray.readUnsignedInt();
            str = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            jScaleLargeTimestamp2 = jScaleLargeTimestamp3;
            unsignedInt = unsignedInt4;
            str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(parsableByteArray.readNullTerminatedString());
            jScaleLargeTimestamp = -9223372036854775807L;
        }
        byte[] bArr = new byte[parsableByteArray.bytesLeft()];
        parsableByteArray.readBytes(bArr, 0, parsableByteArray.bytesLeft());
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = new com.google.android.exoplayer2.util.ParsableByteArray(this.eventMessageEncoder.encode(new com.google.android.exoplayer2.metadata.emsg.EventMessage(str, str2, jScaleLargeTimestamp2, unsignedInt, bArr)));
        int iBytesLeft = parsableByteArray2.bytesLeft();
        for (com.google.android.exoplayer2.extractor.TrackOutput trackOutput : this.emsgTrackOutputs) {
            parsableByteArray2.setPosition(0);
            trackOutput.sampleData(parsableByteArray2, iBytesLeft);
        }
        if (jAdjustSampleTimestamp == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.pendingMetadataSampleInfos.addLast(new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo(jScaleLargeTimestamp, iBytesLeft));
            this.pendingMetadataSampleBytes += iBytesLeft;
            return;
        }
        com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster != null) {
            jAdjustSampleTimestamp = timestampAdjuster.adjustSampleTimestamp(jAdjustSampleTimestamp);
        }
        for (com.google.android.exoplayer2.extractor.TrackOutput trackOutput2 : this.emsgTrackOutputs) {
            trackOutput2.sampleMetadata(jAdjustSampleTimestamp, 1, iBytesLeft, 0, null);
        }
    }

    private void onLeafAtomRead(com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom, long j) throws com.google.android.exoplayer2.ParserException {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
            return;
        }
        int i = leafAtom.type;
        if (i != 1936286840) {
            if (i == 1701671783) {
                onEmsgLeafAtomRead(leafAtom.data);
            }
        } else {
            android.util.Pair<java.lang.Long, com.google.android.exoplayer2.extractor.ChunkIndex> sidx = parseSidx(leafAtom.data, j);
            this.segmentIndexEarliestPresentationTimeUs = ((java.lang.Long) sidx.first).longValue();
            this.extractorOutput.seekMap((com.google.android.exoplayer2.extractor.SeekMap) sidx.second);
            this.haveOutputSeekMap = true;
        }
    }

    private void onMoofContainerAtomRead(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) throws com.google.android.exoplayer2.ParserException {
        parseMoof(containerAtom, this.trackBundles, this.sideloadedTrack != null, this.flags, this.scratchBytes);
        com.google.android.exoplayer2.drm.DrmInitData drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        if (drmInitDataFromAtoms != null) {
            int size = this.trackBundles.size();
            for (int i = 0; i < size; i++) {
                this.trackBundles.valueAt(i).updateDrmInitData(drmInitDataFromAtoms);
            }
        }
        if (this.pendingSeekTimeUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            int size2 = this.trackBundles.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.trackBundles.valueAt(i2).seek(this.pendingSeekTimeUs);
            }
            this.pendingSeekTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
    }

    private void onMoovContainerAtomRead(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) {
        int i = 0;
        com.google.android.exoplayer2.util.Assertions.checkState(this.sideloadedTrack == null, "Unexpected moov box.");
        com.google.android.exoplayer2.drm.DrmInitData drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom2 = (com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom.getContainerAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_mvex));
        android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues> sparseArray = new android.util.SparseArray<>();
        int size = containerAtom2.leafChildren.size();
        long mehd = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom = containerAtom2.leafChildren.get(i2);
            int i3 = leafAtom.type;
            if (i3 == 1953654136) {
                android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues> trex = parseTrex(leafAtom.data);
                sparseArray.put(((java.lang.Integer) trex.first).intValue(), (com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues) trex.second);
            } else if (i3 == 1835362404) {
                mehd = parseMehd(leafAtom.data);
            }
        }
        java.util.List<com.google.android.exoplayer2.extractor.mp4.TrackSampleTable> traks = com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseTraks(containerAtom, new com.google.android.exoplayer2.extractor.GaplessInfoHolder(), mehd, drmInitDataFromAtoms, (this.flags & 16) != 0, false, new e.c.b.a.d() { // from class: e.c.a.a.i2.j.d
            @Override // e.c.b.a.d
            public final java.lang.Object apply(java.lang.Object obj) {
                return this.a.modifyTrack((com.google.android.exoplayer2.extractor.mp4.Track) obj);
            }
        });
        int size2 = traks.size();
        if (this.trackBundles.size() != 0) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.trackBundles.size() == size2);
            while (i < size2) {
                com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = traks.get(i);
                com.google.android.exoplayer2.extractor.mp4.Track track = trackSampleTable.track;
                this.trackBundles.get(track.id).reset(trackSampleTable, getDefaultSampleValues(sparseArray, track.id));
                i++;
            }
            return;
        }
        while (i < size2) {
            com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable2 = traks.get(i);
            com.google.android.exoplayer2.extractor.mp4.Track track2 = trackSampleTable2.track;
            this.trackBundles.put(track2.id, new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle(this.extractorOutput.track(i, track2.type), trackSampleTable2, getDefaultSampleValues(sparseArray, track2.id)));
            this.durationUs = java.lang.Math.max(this.durationUs, track2.durationUs);
            i++;
        }
        this.extractorOutput.endTracks();
    }

    private void outputPendingMetadataSamples(long j) {
        while (!this.pendingMetadataSampleInfos.isEmpty()) {
            com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo metadataSampleInfoRemoveFirst = this.pendingMetadataSampleInfos.removeFirst();
            this.pendingMetadataSampleBytes -= metadataSampleInfoRemoveFirst.size;
            long jAdjustSampleTimestamp = metadataSampleInfoRemoveFirst.presentationTimeDeltaUs + j;
            com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                jAdjustSampleTimestamp = timestampAdjuster.adjustSampleTimestamp(jAdjustSampleTimestamp);
            }
            for (com.google.android.exoplayer2.extractor.TrackOutput trackOutput : this.emsgTrackOutputs) {
                trackOutput.sampleMetadata(jAdjustSampleTimestamp, 1, metadataSampleInfoRemoveFirst.size, this.pendingMetadataSampleBytes, null);
            }
        }
    }

    public static long parseMehd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
    }

    public static void parseMoof(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle> sparseArray, boolean z, int i, byte[] bArr) throws com.google.android.exoplayer2.ParserException {
        int size = containerAtom.containerChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == 1953653094) {
                parseTraf(containerAtom2, sparseArray, z, i, bArr);
            }
        }
    }

    public static void parseSaio(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment) throws com.google.android.exoplayer2.ParserException {
        parsableByteArray.setPosition(8);
        int i = parsableByteArray.readInt();
        if ((com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomFlags(i) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (unsignedIntToInt == 1) {
            trackFragment.auxiliaryDataPosition += com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(i) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
        } else {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(40);
            sb.append("Unexpected saio entry count: ");
            sb.append(unsignedIntToInt);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    public static void parseSaiz(com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox trackEncryptionBox, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment) throws com.google.android.exoplayer2.ParserException {
        int i;
        int i2 = trackEncryptionBox.perSampleIvSize;
        parsableByteArray.setPosition(8);
        if ((com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        int i3 = trackFragment.sampleCount;
        if (unsignedIntToInt > i3) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(78);
            sb.append("Saiz sample count ");
            sb.append(unsignedIntToInt);
            sb.append(" is greater than fragment sample count");
            sb.append(i3);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
        if (unsignedByte == 0) {
            boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
            i = 0;
            for (int i4 = 0; i4 < unsignedIntToInt; i4++) {
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                i += unsignedByte2;
                zArr[i4] = unsignedByte2 > i2;
            }
        } else {
            i = (unsignedByte * unsignedIntToInt) + 0;
            java.util.Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, unsignedIntToInt, unsignedByte > i2);
        }
        java.util.Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, unsignedIntToInt, trackFragment.sampleCount, false);
        if (i > 0) {
            trackFragment.initEncryptionData(i);
        }
    }

    public static void parseSampleGroups(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, java.lang.String str, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment) throws com.google.android.exoplayer2.ParserException {
        byte[] bArr = null;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = null;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = null;
        for (int i = 0; i < containerAtom.leafChildren.size(); i++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i);
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray3 = leafAtom.data;
            int i2 = leafAtom.type;
            if (i2 == 1935828848) {
                parsableByteArray3.setPosition(12);
                if (parsableByteArray3.readInt() == 1936025959) {
                    parsableByteArray = parsableByteArray3;
                }
            } else if (i2 == 1936158820) {
                parsableByteArray3.setPosition(12);
                if (parsableByteArray3.readInt() == 1936025959) {
                    parsableByteArray2 = parsableByteArray3;
                }
            }
        }
        if (parsableByteArray == null || parsableByteArray2 == null) {
            return;
        }
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        if (fullAtomVersion == 1) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.readInt() != 1) {
            throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        parsableByteArray2.setPosition(8);
        int fullAtomVersion2 = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray2.readInt());
        parsableByteArray2.skipBytes(4);
        if (fullAtomVersion2 == 1) {
            if (parsableByteArray2.readUnsignedInt() == 0) {
                throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (fullAtomVersion2 >= 2) {
            parsableByteArray2.skipBytes(4);
        }
        if (parsableByteArray2.readUnsignedInt() != 1) {
            throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        parsableByteArray2.skipBytes(1);
        int unsignedByte = parsableByteArray2.readUnsignedByte();
        int i3 = (unsignedByte & 240) >> 4;
        int i4 = unsignedByte & 15;
        boolean z = parsableByteArray2.readUnsignedByte() == 1;
        if (z) {
            int unsignedByte2 = parsableByteArray2.readUnsignedByte();
            byte[] bArr2 = new byte[16];
            parsableByteArray2.readBytes(bArr2, 0, 16);
            if (unsignedByte2 == 0) {
                int unsignedByte3 = parsableByteArray2.readUnsignedByte();
                bArr = new byte[unsignedByte3];
                parsableByteArray2.readBytes(bArr, 0, unsignedByte3);
            }
            trackFragment.definesEncryptionData = true;
            trackFragment.trackEncryptionBox = new com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox(z, str, unsignedByte2, bArr2, i3, i4, bArr);
        }
    }

    public static void parseSenc(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment) throws com.google.android.exoplayer2.ParserException {
        parsableByteArray.setPosition(i + 8);
        int fullAtomFlags = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if ((fullAtomFlags & 1) != 0) {
            throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (fullAtomFlags & 2) != 0;
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (unsignedIntToInt == 0) {
            java.util.Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, trackFragment.sampleCount, false);
            return;
        }
        int i2 = trackFragment.sampleCount;
        if (unsignedIntToInt == i2) {
            java.util.Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, unsignedIntToInt, z);
            trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
            trackFragment.fillEncryptionData(parsableByteArray);
        } else {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(80);
            sb.append("Senc sample count ");
            sb.append(unsignedIntToInt);
            sb.append(" is different from fragment sample count");
            sb.append(i2);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    public static void parseSenc(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment) throws com.google.android.exoplayer2.ParserException {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    public static android.util.Pair<java.lang.Long, com.google.android.exoplayer2.extractor.ChunkIndex> parseSidx(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j) throws com.google.android.exoplayer2.ParserException {
        long unsignedLongToLong;
        long unsignedLongToLong2;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        if (fullAtomVersion == 0) {
            unsignedLongToLong = parsableByteArray.readUnsignedInt();
            unsignedLongToLong2 = parsableByteArray.readUnsignedInt();
        } else {
            unsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            unsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong();
        }
        long j2 = unsignedLongToLong;
        long j3 = unsignedLongToLong2 + j;
        long jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j2, 1000000L, unsignedInt);
        parsableByteArray.skipBytes(2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[unsignedShort];
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        long[] jArr3 = new long[unsignedShort];
        long j4 = j2;
        long j5 = jScaleLargeTimestamp;
        int i = 0;
        while (i < unsignedShort) {
            int i2 = parsableByteArray.readInt();
            if ((i2 & Integer.MIN_VALUE) != 0) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long unsignedInt2 = parsableByteArray.readUnsignedInt();
            iArr[i] = i2 & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j5;
            long j6 = j4 + unsignedInt2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i3 = unsignedShort;
            long jScaleLargeTimestamp2 = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j6, 1000000L, unsignedInt);
            jArr4[i] = jScaleLargeTimestamp2 - jArr5[i];
            parsableByteArray.skipBytes(4);
            j3 += r1[i];
            i++;
            iArr = iArr;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            unsignedShort = i3;
            j4 = j6;
            j5 = jScaleLargeTimestamp2;
        }
        return android.util.Pair.create(java.lang.Long.valueOf(jScaleLargeTimestamp), new com.google.android.exoplayer2.extractor.ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    public static long parseTfdt(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    public static com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle parseTfhd(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle> sparseArray, boolean z) {
        parsableByteArray.setPosition(8);
        int fullAtomFlags = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomFlags(parsableByteArray.readInt());
        com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle trackBundleValueAt = z ? sparseArray.valueAt(0) : sparseArray.get(parsableByteArray.readInt());
        if (trackBundleValueAt == null) {
            return null;
        }
        if ((fullAtomFlags & 1) != 0) {
            long unsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment = trackBundleValueAt.fragment;
            trackFragment.dataPosition = unsignedLongToLong;
            trackFragment.auxiliaryDataPosition = unsignedLongToLong;
        }
        com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues defaultSampleValues = trackBundleValueAt.defaultSampleValues;
        trackBundleValueAt.fragment.header = new com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues((fullAtomFlags & 2) != 0 ? parsableByteArray.readInt() - 1 : defaultSampleValues.sampleDescriptionIndex, (fullAtomFlags & 8) != 0 ? parsableByteArray.readInt() : defaultSampleValues.duration, (fullAtomFlags & 16) != 0 ? parsableByteArray.readInt() : defaultSampleValues.size, (fullAtomFlags & 32) != 0 ? parsableByteArray.readInt() : defaultSampleValues.flags);
        return trackBundleValueAt;
    }

    public static void parseTraf(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, android.util.SparseArray<com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle> sparseArray, boolean z, int i, byte[] bArr) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle tfhd = parseTfhd(((com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom) com.google.android.exoplayer2.util.Assertions.checkNotNull(containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_tfhd))).data, sparseArray, z);
        if (tfhd == null) {
            return;
        }
        com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment = tfhd.fragment;
        long j = trackFragment.nextFragmentDecodeTime;
        boolean z2 = trackFragment.nextFragmentDecodeTimeIncludesMoov;
        tfhd.resetFragmentInfo();
        tfhd.currentlyInFragment = true;
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_tfdt);
        if (leafAtomOfType == null || (i & 2) != 0) {
            trackFragment.nextFragmentDecodeTime = j;
            trackFragment.nextFragmentDecodeTimeIncludesMoov = z2;
        } else {
            trackFragment.nextFragmentDecodeTime = parseTfdt(leafAtomOfType.data);
            trackFragment.nextFragmentDecodeTimeIncludesMoov = true;
        }
        parseTruns(containerAtom, tfhd, i);
        com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox sampleDescriptionEncryptionBox = tfhd.moovSampleTable.track.getSampleDescriptionEncryptionBox(((com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues) com.google.android.exoplayer2.util.Assertions.checkNotNull(trackFragment.header)).sampleDescriptionIndex);
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_saiz);
        if (leafAtomOfType2 != null) {
            parseSaiz((com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox) com.google.android.exoplayer2.util.Assertions.checkNotNull(sampleDescriptionEncryptionBox), leafAtomOfType2.data, trackFragment);
        }
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_saio);
        if (leafAtomOfType3 != null) {
            parseSaio(leafAtomOfType3.data, trackFragment);
        }
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_senc);
        if (leafAtomOfType4 != null) {
            parseSenc(leafAtomOfType4.data, trackFragment);
        }
        parseSampleGroups(containerAtom, sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null, trackFragment);
        int size = containerAtom.leafChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i2);
            if (leafAtom.type == 1970628964) {
                parseUuid(leafAtom.data, trackFragment, bArr);
            }
        }
    }

    public static android.util.Pair<java.lang.Integer, com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues> parseTrex(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return android.util.Pair.create(java.lang.Integer.valueOf(parsableByteArray.readInt()), new com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues(parsableByteArray.readInt() - 1, parsableByteArray.readInt(), parsableByteArray.readInt(), parsableByteArray.readInt()));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseTrun(com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle r34, int r35, int r36, com.google.android.exoplayer2.util.ParsableByteArray r37, int r38) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.parseTrun(com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor$TrackBundle, int, int, com.google.android.exoplayer2.util.ParsableByteArray, int):int");
    }

    public static void parseTruns(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom, com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle trackBundle, int i) throws com.google.android.exoplayer2.ParserException {
        java.util.List<com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom = list.get(i4);
            if (leafAtom.type == 1953658222) {
                com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.setPosition(12);
                int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                if (unsignedIntToInt > 0) {
                    i3 += unsignedIntToInt;
                    i2++;
                }
            }
        }
        trackBundle.currentTrackRunIndex = 0;
        trackBundle.currentSampleInTrackRun = 0;
        trackBundle.currentSampleIndex = 0;
        trackBundle.fragment.initTables(i2, i3);
        int i5 = 0;
        int trun = 0;
        for (int i6 = 0; i6 < size; i6++) {
            com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtom2 = list.get(i6);
            if (leafAtom2.type == 1953658222) {
                trun = parseTrun(trackBundle, i5, i, leafAtom2.data, trun);
                i5++;
            }
        }
    }

    public static void parseUuid(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment, byte[] bArr) throws com.google.android.exoplayer2.ParserException {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (java.util.Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(parsableByteArray, 16, trackFragment);
        }
    }

    private void processAtomEnded(long j) throws com.google.android.exoplayer2.ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput r12) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    private void readAtomPayload(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        int i = ((int) this.atomSize) - this.atomHeaderBytesRead;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.getData(), 8, i);
            onLeafAtomRead(new com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom(this.atomType, parsableByteArray), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i);
        }
        processAtomEnded(extractorInput.getPosition());
    }

    private void readEncryptionData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        int size = this.trackBundles.size();
        long j = Long.MAX_VALUE;
        com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle trackBundleValueAt = null;
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.extractor.mp4.TrackFragment trackFragment = this.trackBundles.valueAt(i).fragment;
            if (trackFragment.sampleEncryptionDataNeedsFill) {
                long j2 = trackFragment.auxiliaryDataPosition;
                if (j2 < j) {
                    trackBundleValueAt = this.trackBundles.valueAt(i);
                    j = j2;
                }
            }
        }
        if (trackBundleValueAt == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j - extractorInput.getPosition());
        if (position < 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        extractorInput.skipFully(position);
        trackBundleValueAt.fragment.fillEncryptionData(extractorInput);
    }

    private boolean readSample(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        int iSampleData;
        int iOutputSampleEncryptionData;
        com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle nextTrackBundle = this.currentTrackBundle;
        java.lang.Throwable th = null;
        if (nextTrackBundle == null) {
            nextTrackBundle = getNextTrackBundle(this.trackBundles);
            if (nextTrackBundle == null) {
                int position = (int) (this.endOfMdatPosition - extractorInput.getPosition());
                if (position < 0) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                extractorInput.skipFully(position);
                enterReadingAtomHeaderState();
                return false;
            }
            int currentSampleOffset = (int) (nextTrackBundle.getCurrentSampleOffset() - extractorInput.getPosition());
            if (currentSampleOffset < 0) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Ignoring negative offset to sample data.");
                currentSampleOffset = 0;
            }
            extractorInput.skipFully(currentSampleOffset);
            this.currentTrackBundle = nextTrackBundle;
        }
        int i = 4;
        int i2 = 1;
        if (this.parserState == 3) {
            int currentSampleSize = nextTrackBundle.getCurrentSampleSize();
            this.sampleSize = currentSampleSize;
            if (nextTrackBundle.currentSampleIndex < nextTrackBundle.firstSampleToOutputIndex) {
                extractorInput.skipFully(currentSampleSize);
                nextTrackBundle.skipSampleEncryptionData();
                if (!nextTrackBundle.next()) {
                    this.currentTrackBundle = null;
                }
                this.parserState = 3;
                return true;
            }
            if (nextTrackBundle.moovSampleTable.track.sampleTransformation == 1) {
                this.sampleSize = currentSampleSize - 8;
                extractorInput.skipFully(8);
            }
            if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC4.equals(nextTrackBundle.moovSampleTable.track.format.sampleMimeType)) {
                this.sampleBytesWritten = nextTrackBundle.outputSampleEncryptionData(this.sampleSize, 7);
                com.google.android.exoplayer2.audio.Ac4Util.getAc4SampleHeader(this.sampleSize, this.scratch);
                nextTrackBundle.output.sampleData(this.scratch, 7);
                iOutputSampleEncryptionData = this.sampleBytesWritten + 7;
            } else {
                iOutputSampleEncryptionData = nextTrackBundle.outputSampleEncryptionData(this.sampleSize, 0);
            }
            this.sampleBytesWritten = iOutputSampleEncryptionData;
            this.sampleSize += this.sampleBytesWritten;
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        com.google.android.exoplayer2.extractor.mp4.Track track = nextTrackBundle.moovSampleTable.track;
        com.google.android.exoplayer2.extractor.TrackOutput trackOutput = nextTrackBundle.output;
        long currentSamplePresentationTimeUs = nextTrackBundle.getCurrentSamplePresentationTimeUs();
        com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster != null) {
            currentSamplePresentationTimeUs = timestampAdjuster.adjustSampleTimestamp(currentSamplePresentationTimeUs);
        }
        long j = currentSamplePresentationTimeUs;
        if (track.nalUnitLengthFieldLength == 0) {
            while (true) {
                int i3 = this.sampleBytesWritten;
                int i4 = this.sampleSize;
                if (i3 >= i4) {
                    break;
                }
                this.sampleBytesWritten += trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, i4 - i3, false);
            }
        } else {
            byte[] data = this.nalPrefix.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i5 = track.nalUnitLengthFieldLength;
            int i6 = i5 + 1;
            int i7 = 4 - i5;
            while (this.sampleBytesWritten < this.sampleSize) {
                int i8 = this.sampleCurrentNalBytesRemaining;
                if (i8 == 0) {
                    extractorInput.readFully(data, i7, i6);
                    this.nalPrefix.setPosition(0);
                    int i9 = this.nalPrefix.readInt();
                    if (i9 < i2) {
                        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Invalid NAL length", th);
                    }
                    this.sampleCurrentNalBytesRemaining = i9 - 1;
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, i);
                    trackOutput.sampleData(this.nalPrefix, i2);
                    this.processSeiNalUnitPayload = this.ceaTrackOutputs.length > 0 && com.google.android.exoplayer2.util.NalUnitUtil.isNalUnitSei(track.format.sampleMimeType, data[i]);
                    this.sampleBytesWritten += 5;
                    this.sampleSize += i7;
                } else {
                    if (this.processSeiNalUnitPayload) {
                        this.nalBuffer.reset(i8);
                        extractorInput.readFully(this.nalBuffer.getData(), 0, this.sampleCurrentNalBytesRemaining);
                        trackOutput.sampleData(this.nalBuffer, this.sampleCurrentNalBytesRemaining);
                        iSampleData = this.sampleCurrentNalBytesRemaining;
                        int iUnescapeStream = com.google.android.exoplayer2.util.NalUnitUtil.unescapeStream(this.nalBuffer.getData(), this.nalBuffer.limit());
                        this.nalBuffer.setPosition(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265.equals(track.format.sampleMimeType) ? 1 : 0);
                        this.nalBuffer.setLimit(iUnescapeStream);
                        com.google.android.exoplayer2.extractor.CeaUtil.consume(j, this.nalBuffer, this.ceaTrackOutputs);
                    } else {
                        iSampleData = trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, i8, false);
                    }
                    this.sampleBytesWritten += iSampleData;
                    this.sampleCurrentNalBytesRemaining -= iSampleData;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int currentSampleFlags = nextTrackBundle.getCurrentSampleFlags();
        com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox encryptionBoxIfEncrypted = nextTrackBundle.getEncryptionBoxIfEncrypted();
        trackOutput.sampleMetadata(j, currentSampleFlags, this.sampleSize, 0, encryptionBoxIfEncrypted != null ? encryptionBoxIfEncrypted.cryptoData : null);
        outputPendingMetadataSamples(j);
        if (!nextTrackBundle.next()) {
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    public static boolean shouldParseContainerAtom(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean shouldParseLeafAtom(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        enterReadingAtomHeaderState();
        initExtraTracks();
        com.google.android.exoplayer2.extractor.mp4.Track track = this.sideloadedTrack;
        if (track != null) {
            this.trackBundles.put(0, new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.TrackBundle(extractorOutput.track(0, track.type), new com.google.android.exoplayer2.extractor.mp4.TrackSampleTable(this.sideloadedTrack, new long[0], new int[0], 0, new long[0], new int[0], 0L), new com.google.android.exoplayer2.extractor.mp4.DefaultSampleValues(0, 0, 0, 0)));
            this.extractorOutput.endTracks();
        }
    }

    public com.google.android.exoplayer2.extractor.mp4.Track modifyTrack(com.google.android.exoplayer2.extractor.mp4.Track track) {
        return track;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i == 1) {
                    readAtomPayload(extractorInput);
                } else if (i == 2) {
                    readEncryptionData(extractorInput);
                } else if (readSample(extractorInput)) {
                    return 0;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int size = this.trackBundles.size();
        for (int i = 0; i < size; i++) {
            this.trackBundles.valueAt(i).resetFragmentInfo();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.pendingSeekTimeUs = j2;
        this.containerAtoms.clear();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return com.google.android.exoplayer2.extractor.mp4.Sniffer.sniffFragmented(extractorInput);
    }
}
