package com.google.android.exoplayer2.source.mediaparser;

@android.annotation.SuppressLint({"Override"})
/* loaded from: classes.dex */
public final class OutputConsumerAdapterV30 implements android.media.MediaParser.OutputConsumer {
    public static final java.lang.String MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS = "chunk-index-long-us-durations";
    public static final java.lang.String MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS = "chunk-index-long-offsets";
    public static final java.lang.String MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES = "chunk-index-int-sizes";
    public static final java.lang.String MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES = "chunk-index-long-us-times";
    public static final java.lang.String MEDIA_FORMAT_KEY_TRACK_TYPE = "track-type-string";
    public static final java.lang.String TAG = "OutputConsumerAdapterV30";
    public java.lang.String containerMimeType;
    public android.media.MediaParser.SeekMap dummySeekMap;
    public final boolean expectDummySeekMap;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public com.google.android.exoplayer2.extractor.ChunkIndex lastChunkIndex;
    public final java.util.ArrayList<com.google.android.exoplayer2.extractor.TrackOutput.CryptoData> lastOutputCryptoDatas;
    public final java.util.ArrayList<android.media.MediaCodec.CryptoInfo> lastReceivedCryptoInfos;
    public android.media.MediaParser.SeekMap lastSeekMap;
    public java.util.List<com.google.android.exoplayer2.Format> muxedCaptionFormats;
    public int primaryTrackIndex;
    public final com.google.android.exoplayer2.Format primaryTrackManifestFormat;
    public final int primaryTrackType;
    public long sampleTimestampUpperLimitFilterUs;
    public final com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30.DataReaderAdapter scratchDataReaderAdapter;
    public boolean seekingDisabled;
    public com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
    public final java.util.ArrayList<com.google.android.exoplayer2.Format> trackFormats;
    public final java.util.ArrayList<com.google.android.exoplayer2.extractor.TrackOutput> trackOutputs;
    public boolean tracksEnded;
    public boolean tracksFoundCalled;
    public static final android.util.Pair<android.media.MediaParser.SeekPoint, android.media.MediaParser.SeekPoint> SEEK_POINT_PAIR_START = android.util.Pair.create(android.media.MediaParser.SeekPoint.START, android.media.MediaParser.SeekPoint.START);
    public static final java.util.regex.Pattern REGEX_CRYPTO_INFO_PATTERN = java.util.regex.Pattern.compile("pattern \\(encrypt: (\\d+), skip: (\\d+)\\)");

    public static final class DataReaderAdapter implements com.google.android.exoplayer2.upstream.DataReader {
        public android.media.MediaParser.InputReader input;

        public DataReaderAdapter() {
        }

        @Override // com.google.android.exoplayer2.upstream.DataReader
        public int read(byte[] bArr, int i, int i2) {
            return ((android.media.MediaParser.InputReader) com.google.android.exoplayer2.util.Util.castNonNull(this.input)).read(bArr, i, i2);
        }
    }

    public static final class SeekMapAdapter implements com.google.android.exoplayer2.extractor.SeekMap {
        public final android.media.MediaParser.SeekMap adaptedSeekMap;

        public SeekMapAdapter(android.media.MediaParser.SeekMap seekMap) {
            this.adaptedSeekMap = seekMap;
        }

        public static com.google.android.exoplayer2.extractor.SeekPoint asExoPlayerSeekPoint(android.media.MediaParser.SeekPoint seekPoint) {
            return new com.google.android.exoplayer2.extractor.SeekPoint(seekPoint.timeMicros, seekPoint.position);
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            long durationMicros = this.adaptedSeekMap.getDurationMicros();
            return durationMicros != -2147483648L ? durationMicros : com.google.android.exoplayer2.C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
            android.util.Pair<android.media.MediaParser.SeekPoint, android.media.MediaParser.SeekPoint> seekPoints = this.adaptedSeekMap.getSeekPoints(j);
            java.lang.Object obj = seekPoints.first;
            return obj == seekPoints.second ? new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(asExoPlayerSeekPoint((android.media.MediaParser.SeekPoint) obj)) : new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(asExoPlayerSeekPoint((android.media.MediaParser.SeekPoint) obj), asExoPlayerSeekPoint((android.media.MediaParser.SeekPoint) seekPoints.second));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return this.adaptedSeekMap.isSeekable();
        }
    }

    public OutputConsumerAdapterV30() {
        this(null, -2, false);
    }

    public OutputConsumerAdapterV30(com.google.android.exoplayer2.Format format, int i, boolean z) {
        this.expectDummySeekMap = z;
        this.primaryTrackManifestFormat = format;
        this.primaryTrackType = i;
        this.trackOutputs = new java.util.ArrayList<>();
        this.trackFormats = new java.util.ArrayList<>();
        this.lastReceivedCryptoInfos = new java.util.ArrayList<>();
        this.lastOutputCryptoDatas = new java.util.ArrayList<>();
        this.scratchDataReaderAdapter = new com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30.DataReaderAdapter();
        this.extractorOutput = new com.google.android.exoplayer2.extractor.DummyExtractorOutput();
        this.sampleTimestampUpperLimitFilterUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.muxedCaptionFormats = e.c.b.b.s.p();
    }

    private void ensureSpaceForTrackIndex(int i) {
        for (int size = this.trackOutputs.size(); size <= i; size++) {
            this.trackOutputs.add(null);
            this.trackFormats.add(null);
            this.lastReceivedCryptoInfos.add(null);
            this.lastOutputCryptoDatas.add(null);
        }
    }

    public static byte[] getArray(java.nio.ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static com.google.android.exoplayer2.video.ColorInfo getColorInfo(android.media.MediaFormat mediaFormat) {
        java.nio.ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] array = byteBuffer != null ? getArray(byteBuffer) : null;
        int integer = mediaFormat.getInteger("color-transfer", -1);
        int integer2 = mediaFormat.getInteger("color-range", -1);
        int integer3 = mediaFormat.getInteger("color-standard", -1);
        if (array == null && integer == -1 && integer2 == -1 && integer3 == -1) {
            return null;
        }
        return new com.google.android.exoplayer2.video.ColorInfo(integer3, integer2, integer, array);
    }

    public static int getFlag(android.media.MediaFormat mediaFormat, java.lang.String str, int i) {
        if (mediaFormat.getInteger(str, 0) != 0) {
            return i;
        }
        return 0;
    }

    public static java.util.List<byte[]> getInitializationData(android.media.MediaFormat mediaFormat) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            java.nio.ByteBuffer byteBuffer = mediaFormat.getByteBuffer(sb.toString());
            if (byteBuffer == null) {
                return arrayList;
            }
            arrayList.add(getArray(byteBuffer));
            i = i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMimeType(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30.getMimeType(java.lang.String):java.lang.String");
    }

    public static int getSelectionFlags(android.media.MediaFormat mediaFormat) {
        return getFlag(mediaFormat, "is-forced-subtitle", 2) | getFlag(mediaFormat, "is-autoselect", 4) | 0 | getFlag(mediaFormat, "is-default", 1);
    }

    private void maybeEndTracks() {
        if (!this.tracksFoundCalled || this.tracksEnded) {
            return;
        }
        int size = this.trackOutputs.size();
        for (int i = 0; i < size; i++) {
            if (this.trackOutputs.get(i) == null) {
                return;
            }
        }
        this.extractorOutput.endTracks();
        this.tracksEnded = true;
    }

    private boolean maybeObtainChunkIndex(android.media.MediaFormat mediaFormat) {
        java.nio.ByteBuffer byteBuffer = mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES);
        if (byteBuffer == null) {
            return false;
        }
        java.nio.IntBuffer intBufferAsIntBuffer = byteBuffer.asIntBuffer();
        java.nio.LongBuffer longBufferAsLongBuffer = ((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS))).asLongBuffer();
        java.nio.LongBuffer longBufferAsLongBuffer2 = ((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS))).asLongBuffer();
        java.nio.LongBuffer longBufferAsLongBuffer3 = ((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES))).asLongBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        long[] jArr = new long[longBufferAsLongBuffer.remaining()];
        long[] jArr2 = new long[longBufferAsLongBuffer2.remaining()];
        long[] jArr3 = new long[longBufferAsLongBuffer3.remaining()];
        intBufferAsIntBuffer.get(iArr);
        longBufferAsLongBuffer.get(jArr);
        longBufferAsLongBuffer2.get(jArr2);
        longBufferAsLongBuffer3.get(jArr3);
        com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex = new com.google.android.exoplayer2.extractor.ChunkIndex(iArr, jArr, jArr2, jArr3);
        this.lastChunkIndex = chunkIndex;
        this.extractorOutput.seekMap(chunkIndex);
        return true;
    }

    private com.google.android.exoplayer2.extractor.TrackOutput.CryptoData toExoPlayerCryptoData(int i, android.media.MediaCodec.CryptoInfo cryptoInfo) throws java.lang.NumberFormatException {
        int i2;
        if (cryptoInfo == null) {
            return null;
        }
        if (this.lastReceivedCryptoInfos.get(i) == cryptoInfo) {
            return (com.google.android.exoplayer2.extractor.TrackOutput.CryptoData) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.lastOutputCryptoDatas.get(i));
        }
        int i3 = 0;
        try {
            java.util.regex.Matcher matcher = REGEX_CRYPTO_INFO_PATTERN.matcher(cryptoInfo.toString());
            matcher.find();
            int i4 = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(1)));
            i2 = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(2)));
            i3 = i4;
        } catch (java.lang.RuntimeException e2) {
            java.lang.String strValueOf = java.lang.String.valueOf(cryptoInfo);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 43);
            sb.append("Unexpected error while parsing CryptoInfo: ");
            sb.append(strValueOf);
            com.google.android.exoplayer2.util.Log.e(TAG, sb.toString(), e2);
            i2 = 0;
        }
        com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData = new com.google.android.exoplayer2.extractor.TrackOutput.CryptoData(cryptoInfo.mode, cryptoInfo.key, i3, i2);
        this.lastReceivedCryptoInfos.set(i, cryptoInfo);
        this.lastOutputCryptoDatas.set(i, cryptoData);
        return cryptoData;
    }

    public static com.google.android.exoplayer2.drm.DrmInitData toExoPlayerDrmInitData(java.lang.String str, android.media.DrmInitData drmInitData) {
        if (drmInitData == null) {
            return null;
        }
        int schemeInitDataCount = drmInitData.getSchemeInitDataCount();
        com.google.android.exoplayer2.drm.DrmInitData.SchemeData[] schemeDataArr = new com.google.android.exoplayer2.drm.DrmInitData.SchemeData[schemeInitDataCount];
        for (int i = 0; i < schemeInitDataCount; i++) {
            android.media.DrmInitData.SchemeInitData schemeInitDataAt = drmInitData.getSchemeInitDataAt(i);
            schemeDataArr[i] = new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(schemeInitDataAt.uuid, schemeInitDataAt.mimeType, schemeInitDataAt.data);
        }
        return new com.google.android.exoplayer2.drm.DrmInitData(str, schemeDataArr);
    }

    private com.google.android.exoplayer2.Format toExoPlayerFormat(android.media.MediaParser.TrackData trackData) {
        android.media.MediaFormat mediaFormat = trackData.mediaFormat;
        java.lang.String string = mediaFormat.getString("mime");
        int integer = mediaFormat.getInteger("caption-service-number", -1);
        int i = 0;
        com.google.android.exoplayer2.Format.Builder accessibilityChannel = new com.google.android.exoplayer2.Format.Builder().setDrmInitData(toExoPlayerDrmInitData(mediaFormat.getString("crypto-mode-fourcc"), trackData.drmInitData)).setContainerMimeType(this.containerMimeType).setPeakBitrate(mediaFormat.getInteger("bitrate", -1)).setChannelCount(mediaFormat.getInteger("channel-count", -1)).setColorInfo(getColorInfo(mediaFormat)).setSampleMimeType(string).setCodecs(mediaFormat.getString("codecs-string")).setFrameRate(mediaFormat.getFloat("frame-rate", -1.0f)).setWidth(mediaFormat.getInteger("width", -1)).setHeight(mediaFormat.getInteger("height", -1)).setInitializationData(getInitializationData(mediaFormat)).setLanguage(mediaFormat.getString(com.umeng.analytics.pro.ai.N)).setMaxInputSize(mediaFormat.getInteger("max-input-size", -1)).setPcmEncoding(mediaFormat.getInteger("exo-pcm-encoding", -1)).setRotationDegrees(mediaFormat.getInteger("rotation-degrees", 0)).setSampleRate(mediaFormat.getInteger("sample-rate", -1)).setSelectionFlags(getSelectionFlags(mediaFormat)).setEncoderDelay(mediaFormat.getInteger("encoder-delay", 0)).setEncoderPadding(mediaFormat.getInteger("encoder-padding", 0)).setPixelWidthHeightRatio(mediaFormat.getFloat("pixel-width-height-ratio-float", 1.0f)).setSubsampleOffsetUs(mediaFormat.getLong("subsample-offset-us-long", Long.MAX_VALUE)).setAccessibilityChannel(integer);
        while (true) {
            if (i >= this.muxedCaptionFormats.size()) {
                break;
            }
            com.google.android.exoplayer2.Format format = this.muxedCaptionFormats.get(i);
            if (com.google.android.exoplayer2.util.Util.areEqual(format.sampleMimeType, string) && format.accessibilityChannel == integer) {
                accessibilityChannel.setLanguage(format.language).setRoleFlags(format.roleFlags).setSelectionFlags(format.selectionFlags).setLabel(format.label).setMetadata(format.metadata);
                break;
            }
            i++;
        }
        return accessibilityChannel.build();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int toTrackTypeConstant(java.lang.String r6) {
        /*
            r0 = -1
            if (r6 != 0) goto L4
            return r0
        L4:
            int r1 = r6.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r1) {
                case -450004177: goto L38;
                case -284840886: goto L2e;
                case 3556653: goto L24;
                case 93166550: goto L1a;
                case 112202875: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L42
        L10:
            java.lang.String r1 = "video"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L42
            r1 = 1
            goto L43
        L1a:
            java.lang.String r1 = "audio"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L42
            r1 = 0
            goto L43
        L24:
            java.lang.String r1 = "text"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L42
            r1 = 2
            goto L43
        L2e:
            java.lang.String r1 = "unknown"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L42
            r1 = 4
            goto L43
        L38:
            java.lang.String r1 = "metadata"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L42
            r1 = 3
            goto L43
        L42:
            r1 = -1
        L43:
            if (r1 == 0) goto L57
            if (r1 == r5) goto L56
            if (r1 == r4) goto L55
            if (r1 == r3) goto L53
            if (r1 == r2) goto L52
            int r6 = com.google.android.exoplayer2.util.MimeTypes.getTrackType(r6)
            return r6
        L52:
            return r0
        L53:
            r6 = 5
            return r6
        L55:
            return r3
        L56:
            return r4
        L57:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30.toTrackTypeConstant(java.lang.String):int");
    }

    public void disableSeeking() {
        this.seekingDisabled = true;
    }

    public com.google.android.exoplayer2.extractor.ChunkIndex getChunkIndex() {
        return this.lastChunkIndex;
    }

    public android.media.MediaParser.SeekMap getDummySeekMap() {
        return this.dummySeekMap;
    }

    public com.google.android.exoplayer2.Format[] getSampleFormats() {
        if (!this.tracksFoundCalled) {
            return null;
        }
        com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[this.trackFormats.size()];
        for (int i = 0; i < this.trackFormats.size(); i++) {
            formatArr[i] = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackFormats.get(i));
        }
        return formatArr;
    }

    public android.util.Pair<android.media.MediaParser.SeekPoint, android.media.MediaParser.SeekPoint> getSeekPoints(long j) {
        android.media.MediaParser.SeekMap seekMap = this.lastSeekMap;
        return seekMap != null ? seekMap.getSeekPoints(j) : SEEK_POINT_PAIR_START;
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSampleCompleted(int i, long j, int i2, int i3, int i4, android.media.MediaCodec.CryptoInfo cryptoInfo) {
        long j2 = this.sampleTimestampUpperLimitFilterUs;
        if (j2 == com.google.android.exoplayer2.C.TIME_UNSET || j < j2) {
            com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                j = timestampAdjuster.adjustSampleTimestamp(j);
            }
            ((com.google.android.exoplayer2.extractor.TrackOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackOutputs.get(i))).sampleMetadata(j, i2, i3, i4, toExoPlayerCryptoData(i, cryptoInfo));
        }
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSampleDataFound(int i, android.media.MediaParser.InputReader inputReader) {
        ensureSpaceForTrackIndex(i);
        this.scratchDataReaderAdapter.input = inputReader;
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = this.trackOutputs.get(i);
        if (trackOutputTrack == null) {
            trackOutputTrack = this.extractorOutput.track(i, -1);
            this.trackOutputs.set(i, trackOutputTrack);
        }
        trackOutputTrack.sampleData((com.google.android.exoplayer2.upstream.DataReader) this.scratchDataReaderAdapter, (int) inputReader.getLength(), true);
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSeekMapFound(android.media.MediaParser.SeekMap seekMap) {
        com.google.android.exoplayer2.extractor.SeekMap seekMapAdapter;
        if (this.expectDummySeekMap && this.dummySeekMap == null) {
            this.dummySeekMap = seekMap;
            return;
        }
        this.lastSeekMap = seekMap;
        long durationMicros = seekMap.getDurationMicros();
        com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput = this.extractorOutput;
        if (this.seekingDisabled) {
            if (durationMicros == -2147483648L) {
                durationMicros = com.google.android.exoplayer2.C.TIME_UNSET;
            }
            seekMapAdapter = new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(durationMicros);
        } else {
            seekMapAdapter = new com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30.SeekMapAdapter(seekMap);
        }
        extractorOutput.seekMap(seekMapAdapter);
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onTrackCountFound(int i) {
        this.tracksFoundCalled = true;
        maybeEndTracks();
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onTrackDataFound(int i, android.media.MediaParser.TrackData trackData) {
        if (maybeObtainChunkIndex(trackData.mediaFormat)) {
            return;
        }
        ensureSpaceForTrackIndex(i);
        com.google.android.exoplayer2.extractor.TrackOutput trackOutput = this.trackOutputs.get(i);
        if (trackOutput == null) {
            java.lang.String string = trackData.mediaFormat.getString(MEDIA_FORMAT_KEY_TRACK_TYPE);
            int trackTypeConstant = toTrackTypeConstant(string != null ? string : trackData.mediaFormat.getString("mime"));
            if (trackTypeConstant == this.primaryTrackType) {
                this.primaryTrackIndex = i;
            }
            com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = this.extractorOutput.track(i, trackTypeConstant);
            this.trackOutputs.set(i, trackOutputTrack);
            if (string != null) {
                return;
            } else {
                trackOutput = trackOutputTrack;
            }
        }
        com.google.android.exoplayer2.Format exoPlayerFormat = toExoPlayerFormat(trackData);
        com.google.android.exoplayer2.Format format = this.primaryTrackManifestFormat;
        trackOutput.format((format == null || i != this.primaryTrackIndex) ? exoPlayerFormat : exoPlayerFormat.withManifestFormatInfo(format));
        this.trackFormats.set(i, exoPlayerFormat);
        maybeEndTracks();
    }

    public void setExtractorOutput(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    public void setMuxedCaptionFormats(java.util.List<com.google.android.exoplayer2.Format> list) {
        this.muxedCaptionFormats = list;
    }

    public void setSampleTimestampUpperLimitFilterUs(long j) {
        this.sampleTimestampUpperLimitFilterUs = j;
    }

    public void setSelectedParserName(java.lang.String str) {
        this.containerMimeType = getMimeType(str);
    }

    public void setTimestampAdjuster(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
    }
}
