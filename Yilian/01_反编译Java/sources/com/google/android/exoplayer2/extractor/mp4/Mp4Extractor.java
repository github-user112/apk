package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public final class Mp4Extractor implements com.google.android.exoplayer2.extractor.Extractor, com.google.android.exoplayer2.extractor.SeekMap {
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.j.c
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.b();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int FILE_TYPE_HEIC = 2;
    public static final int FILE_TYPE_MP4 = 0;
    public static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    public static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    public static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    public static final int STATE_READING_ATOM_HEADER = 0;
    public static final int STATE_READING_ATOM_PAYLOAD = 1;
    public static final int STATE_READING_SAMPLE = 2;
    public static final int STATE_READING_SEF = 3;
    public long[][] accumulatedSampleSizes;
    public com.google.android.exoplayer2.util.ParsableByteArray atomData;
    public final com.google.android.exoplayer2.util.ParsableByteArray atomHeader;
    public int atomHeaderBytesRead;
    public long atomSize;
    public int atomType;
    public final java.util.ArrayDeque<com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom> containerAtoms;
    public long durationUs;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public int fileType;
    public int firstVideoTrackIndex;
    public final int flags;
    public com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata motionPhotoMetadata;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalLength;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalStartCode;
    public int parserState;
    public int sampleBytesRead;
    public int sampleBytesWritten;
    public int sampleCurrentNalBytesRemaining;
    public int sampleTrackIndex;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch;
    public final com.google.android.exoplayer2.extractor.mp4.SefReader sefReader;
    public final java.util.List<com.google.android.exoplayer2.metadata.Metadata.Entry> slowMotionMetadataEntries;
    public com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[] tracks;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class Mp4Track {
        public int sampleIndex;
        public final com.google.android.exoplayer2.extractor.mp4.TrackSampleTable sampleTable;
        public final com.google.android.exoplayer2.extractor.mp4.Track track;
        public final com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
        public final com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker;

        public Mp4Track(com.google.android.exoplayer2.extractor.mp4.Track track, com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable, com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
            this.trueHdSampleRechunker = com.google.android.exoplayer2.util.MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? new com.google.android.exoplayer2.extractor.TrueHdSampleRechunker() : null;
        }
    }

    public Mp4Extractor() {
        this(0);
    }

    public Mp4Extractor(int i) {
        this.flags = i;
        this.parserState = (i & 4) != 0 ? 3 : 0;
        this.sefReader = new com.google.android.exoplayer2.extractor.mp4.SefReader();
        this.slowMotionMetadataEntries = new java.util.ArrayList();
        this.atomHeader = new com.google.android.exoplayer2.util.ParsableByteArray(16);
        this.containerAtoms = new java.util.ArrayDeque<>();
        this.nalStartCode = new com.google.android.exoplayer2.util.ParsableByteArray(com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE);
        this.nalLength = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        this.scratch = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.sampleTrackIndex = -1;
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.mp4.Track a(com.google.android.exoplayer2.extractor.mp4.Track track) {
        return track;
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] b() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.mp4.Mp4Extractor()};
    }

    public static int brandToFileType(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    public static long[][] calculateAccumulatedSampleSizes(com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i = 0; i < mp4TrackArr.length; i++) {
            jArr[i] = new long[mp4TrackArr[i].sampleTable.sampleCount];
            jArr2[i] = mp4TrackArr[i].sampleTable.timestampsUs[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < mp4TrackArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int i4 = 0; i4 < mp4TrackArr.length; i4++) {
                if (!zArr[i4] && jArr2[i4] <= j2) {
                    j2 = jArr2[i4];
                    i3 = i4;
                }
            }
            int i5 = iArr[i3];
            jArr[i3][i5] = j;
            j += mp4TrackArr[i3].sampleTable.sizes[i5];
            int i6 = i5 + 1;
            iArr[i3] = i6;
            if (i6 < jArr[i3].length) {
                jArr2[i3] = mp4TrackArr[i3].sampleTable.timestampsUs[i6];
            } else {
                zArr[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    public static int getSynchronizationSampleIndex(com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable, long j) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
        return indexOfEarlierOrEqualSynchronizationSample == -1 ? trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j) : indexOfEarlierOrEqualSynchronizationSample;
    }

    private int getTrackIndexOfNextReadSample(long j) {
        int i = -1;
        int i2 = -1;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        long j3 = Long.MAX_VALUE;
        boolean z2 = true;
        long j4 = Long.MAX_VALUE;
        for (int i3 = 0; i3 < ((com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[]) com.google.android.exoplayer2.util.Util.castNonNull(this.tracks)).length; i3++) {
            com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track mp4Track = this.tracks[i3];
            int i4 = mp4Track.sampleIndex;
            com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i4 != trackSampleTable.sampleCount) {
                long j5 = trackSampleTable.offsets[i4];
                long j6 = ((long[][]) com.google.android.exoplayer2.util.Util.castNonNull(this.accumulatedSampleSizes))[i3][i4];
                long j7 = j5 - j;
                boolean z3 = j7 < 0 || j7 >= 262144;
                if ((!z3 && z2) || (z3 == z2 && j7 < j4)) {
                    z2 = z3;
                    j4 = j7;
                    i2 = i3;
                    j3 = j6;
                }
                if (j6 < j2) {
                    z = z3;
                    i = i3;
                    j2 = j6;
                }
            }
        }
        return (j2 == Long.MAX_VALUE || !z || j3 < j2 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i2 : i;
    }

    public static long maybeAdjustSeekOffset(com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable, long j, long j2) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j);
        return synchronizationSampleIndex == -1 ? j2 : java.lang.Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j2);
    }

    private void maybeSkipRemainingMetaAtomHeaderBytes(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.scratch.reset(8);
        extractorInput.peekFully(this.scratch.getData(), 0, 8);
        com.google.android.exoplayer2.extractor.mp4.AtomParsers.maybeSkipRemainingMetaAtomHeaderBytes(this.scratch);
        extractorInput.skipFully(this.scratch.getPosition());
        extractorInput.resetPeekPosition();
    }

    private void processAtomEnded(long j) {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtomPop = this.containerAtoms.pop();
            if (containerAtomPop.type == 1836019574) {
                processMoovAtom(containerAtomPop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerAtomPop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    private void processEndOfStreamReadingAtomHeader() {
        if (this.fileType != 2 || (this.flags & 2) == 0) {
            return;
        }
        com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput = (com.google.android.exoplayer2.extractor.ExtractorOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorOutput);
        extractorOutput.track(0, 4).format(new com.google.android.exoplayer2.Format.Builder().setMetadata(this.motionPhotoMetadata == null ? null : new com.google.android.exoplayer2.metadata.Metadata(this.motionPhotoMetadata)).build());
        extractorOutput.endTracks();
        extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
    }

    public static int processFtypAtom(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int iBrandToFileType = brandToFileType(parsableByteArray.readInt());
        if (iBrandToFileType != 0) {
            return iBrandToFileType;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            int iBrandToFileType2 = brandToFileType(parsableByteArray.readInt());
            if (iBrandToFileType2 != 0) {
                return iBrandToFileType2;
            }
        }
        return 0;
    }

    private void processMoovAtom(com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtom) {
        com.google.android.exoplayer2.metadata.Metadata metadata;
        com.google.android.exoplayer2.metadata.Metadata metadata2;
        java.util.ArrayList arrayList;
        java.util.List<com.google.android.exoplayer2.extractor.mp4.TrackSampleTable> list;
        int i;
        int i2;
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        boolean z = this.fileType == 1;
        com.google.android.exoplayer2.extractor.GaplessInfoHolder gaplessInfoHolder = new com.google.android.exoplayer2.extractor.GaplessInfoHolder();
        com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_udta);
        if (leafAtomOfType != null) {
            android.util.Pair<com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata> udta = com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseUdta(leafAtomOfType);
            com.google.android.exoplayer2.metadata.Metadata metadata3 = (com.google.android.exoplayer2.metadata.Metadata) udta.first;
            com.google.android.exoplayer2.metadata.Metadata metadata4 = (com.google.android.exoplayer2.metadata.Metadata) udta.second;
            if (metadata3 != null) {
                gaplessInfoHolder.setFromMetadata(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        com.google.android.exoplayer2.extractor.mp4.Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(1835365473);
        com.google.android.exoplayer2.metadata.Metadata mdtaFromMeta = containerAtomOfType != null ? com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseMdtaFromMeta(containerAtomOfType) : null;
        java.util.List<com.google.android.exoplayer2.extractor.mp4.TrackSampleTable> traks = com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseTraks(containerAtom, gaplessInfoHolder, com.google.android.exoplayer2.C.TIME_UNSET, null, (this.flags & 1) != 0, z, new e.c.b.a.d() { // from class: e.c.a.a.i2.j.b
            @Override // e.c.b.a.d
            public final java.lang.Object apply(java.lang.Object obj) {
                com.google.android.exoplayer2.extractor.mp4.Track track = (com.google.android.exoplayer2.extractor.mp4.Track) obj;
                com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.a(track);
                return track;
            }
        });
        com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput = (com.google.android.exoplayer2.extractor.ExtractorOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorOutput);
        int size = traks.size();
        int i3 = 0;
        int size2 = -1;
        long j = com.google.android.exoplayer2.C.TIME_UNSET;
        while (i3 < size) {
            com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = traks.get(i3);
            if (trackSampleTable.sampleCount == 0) {
                list = traks;
                i = size;
                arrayList = arrayList2;
            } else {
                com.google.android.exoplayer2.extractor.mp4.Track track = trackSampleTable.track;
                int i4 = size2;
                arrayList = arrayList2;
                long j2 = track.durationUs;
                if (j2 == com.google.android.exoplayer2.C.TIME_UNSET) {
                    j2 = trackSampleTable.durationUs;
                }
                long jMax = java.lang.Math.max(j, j2);
                list = traks;
                i = size;
                com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track mp4Track = new com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track(track, trackSampleTable, extractorOutput.track(i3, track.type));
                int i5 = com.google.android.exoplayer2.util.MimeTypes.AUDIO_TRUEHD.equals(track.format.sampleMimeType) ? trackSampleTable.maximumSize * 16 : trackSampleTable.maximumSize + 30;
                com.google.android.exoplayer2.Format.Builder builderBuildUpon = track.format.buildUpon();
                builderBuildUpon.setMaxInputSize(i5);
                if (track.type == 2 && j2 > 0 && (i2 = trackSampleTable.sampleCount) > 1) {
                    builderBuildUpon.setFrameRate(i2 / (j2 / 1000000.0f));
                }
                com.google.android.exoplayer2.extractor.mp4.MetadataUtil.setFormatGaplessInfo(track.type, gaplessInfoHolder, builderBuildUpon);
                int i6 = track.type;
                com.google.android.exoplayer2.metadata.Metadata[] metadataArr = new com.google.android.exoplayer2.metadata.Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.slowMotionMetadataEntries.isEmpty() ? null : new com.google.android.exoplayer2.metadata.Metadata(this.slowMotionMetadataEntries);
                com.google.android.exoplayer2.extractor.mp4.MetadataUtil.setFormatMetadata(i6, metadata2, mdtaFromMeta, builderBuildUpon, metadataArr);
                mp4Track.trackOutput.format(builderBuildUpon.build());
                size2 = (track.type == 2 && i4 == -1) ? arrayList.size() : i4;
                arrayList.add(mp4Track);
                j = jMax;
            }
            i3++;
            arrayList2 = arrayList;
            traks = list;
            size = i;
        }
        this.firstVideoTrackIndex = size2;
        this.durationUs = j;
        com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[] mp4TrackArr = (com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[]) arrayList2.toArray(new com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[0]);
        this.tracks = mp4TrackArr;
        this.accumulatedSampleSizes = calculateAccumulatedSampleSizes(mp4TrackArr);
        extractorOutput.endTracks();
        extractorOutput.seekMap(this);
    }

    private void processUnparsedAtom(long j) {
        if (this.atomType == 1836086884) {
            int i = this.atomHeaderBytesRead;
            this.motionPhotoMetadata = new com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata(0L, j, com.google.android.exoplayer2.C.TIME_UNSET, j + i, this.atomSize - i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput r9) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.readAtomHeader(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    private boolean readAtomPayload(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        boolean z;
        long j = this.atomSize - this.atomHeaderBytesRead;
        long position = extractorInput.getPosition() + j;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.getData(), this.atomHeaderBytesRead, (int) j);
            if (this.atomType == 1718909296) {
                this.fileType = processFtypAtom(parsableByteArray);
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(new com.google.android.exoplayer2.extractor.mp4.Atom.LeafAtom(this.atomType, parsableByteArray));
            }
        } else {
            if (j >= 262144) {
                positionHolder.position = extractorInput.getPosition() + j;
                z = true;
                processAtomEnded(position);
                return (z || this.parserState == 2) ? false : true;
            }
            extractorInput.skipFully((int) j);
        }
        z = false;
        processAtomEnded(position);
        if (z) {
        }
    }

    private int readSample(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        int i;
        com.google.android.exoplayer2.extractor.PositionHolder positionHolder2;
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            int trackIndexOfNextReadSample = getTrackIndexOfNextReadSample(position);
            this.sampleTrackIndex = trackIndexOfNextReadSample;
            if (trackIndexOfNextReadSample == -1) {
                return -1;
            }
        }
        com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track mp4Track = ((com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[]) com.google.android.exoplayer2.util.Util.castNonNull(this.tracks))[this.sampleTrackIndex];
        com.google.android.exoplayer2.extractor.TrackOutput trackOutput = mp4Track.trackOutput;
        int i2 = mp4Track.sampleIndex;
        com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j = trackSampleTable.offsets[i2];
        int i3 = trackSampleTable.sizes[i2];
        com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
        long j2 = (j - position) + this.sampleBytesRead;
        if (j2 < 0) {
            i = 1;
            positionHolder2 = positionHolder;
        } else {
            if (j2 < 262144) {
                if (mp4Track.track.sampleTransformation == 1) {
                    j2 += 8;
                    i3 -= 8;
                }
                extractorInput.skipFully((int) j2);
                com.google.android.exoplayer2.extractor.mp4.Track track = mp4Track.track;
                if (track.nalUnitLengthFieldLength == 0) {
                    if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC4.equals(track.format.sampleMimeType)) {
                        if (this.sampleBytesWritten == 0) {
                            com.google.android.exoplayer2.audio.Ac4Util.getAc4SampleHeader(i3, this.scratch);
                            trackOutput.sampleData(this.scratch, 7);
                            this.sampleBytesWritten += 7;
                        }
                        i3 += 7;
                    } else if (trueHdSampleRechunker != null) {
                        trueHdSampleRechunker.startSample(extractorInput);
                    }
                    while (true) {
                        int i4 = this.sampleBytesWritten;
                        if (i4 >= i3) {
                            break;
                        }
                        int iSampleData = trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, i3 - i4, false);
                        this.sampleBytesRead += iSampleData;
                        this.sampleBytesWritten += iSampleData;
                        this.sampleCurrentNalBytesRemaining -= iSampleData;
                    }
                } else {
                    byte[] data = this.nalLength.getData();
                    data[0] = 0;
                    data[1] = 0;
                    data[2] = 0;
                    int i5 = mp4Track.track.nalUnitLengthFieldLength;
                    int i6 = 4 - i5;
                    while (this.sampleBytesWritten < i3) {
                        int i7 = this.sampleCurrentNalBytesRemaining;
                        if (i7 == 0) {
                            extractorInput.readFully(data, i6, i5);
                            this.sampleBytesRead += i5;
                            this.nalLength.setPosition(0);
                            int i8 = this.nalLength.readInt();
                            if (i8 < 0) {
                                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Invalid NAL length", null);
                            }
                            this.sampleCurrentNalBytesRemaining = i8;
                            this.nalStartCode.setPosition(0);
                            trackOutput.sampleData(this.nalStartCode, 4);
                            this.sampleBytesWritten += 4;
                            i3 += i6;
                        } else {
                            int iSampleData2 = trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, i7, false);
                            this.sampleBytesRead += iSampleData2;
                            this.sampleBytesWritten += iSampleData2;
                            this.sampleCurrentNalBytesRemaining -= iSampleData2;
                        }
                    }
                }
                int i9 = i3;
                com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
                long j3 = trackSampleTable2.timestampsUs[i2];
                int i10 = trackSampleTable2.flags[i2];
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.sampleMetadata(trackOutput, j3, i10, i9, 0, null);
                    if (i2 + 1 == mp4Track.sampleTable.sampleCount) {
                        trueHdSampleRechunker.outputPendingSampleMetadata(trackOutput, null);
                    }
                } else {
                    trackOutput.sampleMetadata(j3, i10, i9, 0, null);
                }
                mp4Track.sampleIndex++;
                this.sampleTrackIndex = -1;
                this.sampleBytesRead = 0;
                this.sampleBytesWritten = 0;
                this.sampleCurrentNalBytesRemaining = 0;
                return 0;
            }
            positionHolder2 = positionHolder;
            i = 1;
        }
        positionHolder2.position = j;
        return i;
    }

    private int readSefData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        int i = this.sefReader.read(extractorInput, positionHolder, this.slowMotionMetadataEntries);
        if (i == 1 && positionHolder.position == 0) {
            enterReadingAtomHeaderState();
        }
        return i;
    }

    public static boolean shouldParseContainerAtom(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    public static boolean shouldParseLeafAtom(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    private void updateSampleIndex(com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track mp4Track, long j) {
        com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j);
        if (indexOfEarlierOrEqualSynchronizationSample == -1) {
            indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j);
        }
        mp4Track.sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        long j2;
        long jMaybeAdjustSeekOffset;
        long j3;
        long j4;
        int indexOfLaterOrEqualSynchronizationSample;
        if (((com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tracks)).length == 0) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(com.google.android.exoplayer2.extractor.SeekPoint.START);
        }
        int i = this.firstVideoTrackIndex;
        if (i != -1) {
            com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable = this.tracks[i].sampleTable;
            int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j);
            if (synchronizationSampleIndex == -1) {
                return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(com.google.android.exoplayer2.extractor.SeekPoint.START);
            }
            long j5 = trackSampleTable.timestampsUs[synchronizationSampleIndex];
            j2 = trackSampleTable.offsets[synchronizationSampleIndex];
            if (j5 >= j || synchronizationSampleIndex >= trackSampleTable.sampleCount - 1 || (indexOfLaterOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j)) == -1 || indexOfLaterOrEqualSynchronizationSample == synchronizationSampleIndex) {
                j4 = -1;
                j3 = -9223372036854775807L;
            } else {
                j3 = trackSampleTable.timestampsUs[indexOfLaterOrEqualSynchronizationSample];
                j4 = trackSampleTable.offsets[indexOfLaterOrEqualSynchronizationSample];
            }
            jMaybeAdjustSeekOffset = j4;
            j = j5;
        } else {
            j2 = Long.MAX_VALUE;
            jMaybeAdjustSeekOffset = -1;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[] mp4TrackArr = this.tracks;
            if (i2 >= mp4TrackArr.length) {
                break;
            }
            if (i2 != this.firstVideoTrackIndex) {
                com.google.android.exoplayer2.extractor.mp4.TrackSampleTable trackSampleTable2 = mp4TrackArr[i2].sampleTable;
                long jMaybeAdjustSeekOffset2 = maybeAdjustSeekOffset(trackSampleTable2, j, j2);
                if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
                    jMaybeAdjustSeekOffset = maybeAdjustSeekOffset(trackSampleTable2, j3, jMaybeAdjustSeekOffset);
                }
                j2 = jMaybeAdjustSeekOffset2;
            }
            i2++;
        }
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(j, j2);
        return j3 == com.google.android.exoplayer2.C.TIME_UNSET ? new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint) : new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(j3, jMaybeAdjustSeekOffset));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    if (i == 3) {
                        return readSefData(extractorInput, positionHolder);
                    }
                    throw new java.lang.IllegalStateException();
                }
                if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
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
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        if (j == 0) {
            if (this.parserState != 3) {
                enterReadingAtomHeaderState();
                return;
            } else {
                this.sefReader.reset();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track[] mp4TrackArr = this.tracks;
        if (mp4TrackArr != null) {
            for (com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.Mp4Track mp4Track : mp4TrackArr) {
                updateSampleIndex(mp4Track, j2);
                com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.trueHdSampleRechunker;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.reset();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return com.google.android.exoplayer2.extractor.mp4.Sniffer.sniffUnfragmented(extractorInput, (this.flags & 2) != 0);
    }
}
