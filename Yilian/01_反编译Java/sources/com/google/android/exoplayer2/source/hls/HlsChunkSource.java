package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public class HlsChunkSource {
    public static final int CHUNK_PUBLICATION_STATE_PRELOAD = 0;
    public static final int CHUNK_PUBLICATION_STATE_PUBLISHED = 1;
    public static final int CHUNK_PUBLICATION_STATE_REMOVED = 2;
    public static final int KEY_CACHE_SIZE = 4;
    public final com.google.android.exoplayer2.upstream.DataSource encryptionDataSource;
    public android.net.Uri expectedPlaylistUrl;
    public final com.google.android.exoplayer2.source.hls.HlsExtractorFactory extractorFactory;
    public java.io.IOException fatalError;
    public boolean independentSegments;
    public boolean isTimestampMaster;
    public final com.google.android.exoplayer2.upstream.DataSource mediaDataSource;
    public final java.util.List<com.google.android.exoplayer2.Format> muxedCaptionFormats;
    public final com.google.android.exoplayer2.Format[] playlistFormats;
    public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker playlistTracker;
    public final android.net.Uri[] playlistUrls;
    public boolean seenExpectedPlaylistError;
    public final com.google.android.exoplayer2.source.hls.TimestampAdjusterProvider timestampAdjusterProvider;
    public final com.google.android.exoplayer2.source.TrackGroup trackGroup;
    public com.google.android.exoplayer2.trackselection.ExoTrackSelection trackSelection;
    public final com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache keyCache = new com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache(4);
    public byte[] scratchSpace = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
    public long liveEdgeInPeriodTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;

    public static final class EncryptionKeyChunk extends com.google.android.exoplayer2.source.chunk.DataChunk {
        public byte[] result;

        public EncryptionKeyChunk(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.Format format, int i, java.lang.Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
        }

        @Override // com.google.android.exoplayer2.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) {
            this.result = java.util.Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    public static final class HlsChunkHolder {
        public com.google.android.exoplayer2.source.chunk.Chunk chunk;
        public boolean endOfStream;
        public android.net.Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    public static final class HlsMediaPlaylistSegmentIterator extends com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator {
        public final java.lang.String playlistBaseUri;
        public final java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase> segmentBases;
        public final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(java.lang.String str, long j, java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.playlistBaseUri = str;
            this.startOfPlaylistInPeriodUs = j;
            this.segmentBases = list;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.segmentBases.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public com.google.android.exoplayer2.upstream.DataSpec getDataSpec() {
            checkInBounds();
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return new com.google.android.exoplayer2.upstream.DataSpec(com.google.android.exoplayer2.util.UriUtil.resolveToUri(this.playlistBaseUri, segmentBase.url), segmentBase.byteRangeOffset, segmentBase.byteRangeLength);
        }
    }

    public static final class InitializationTrackSelection extends com.google.android.exoplayer2.trackselection.BaseTrackSelection {
        public int selectedIndex;

        public InitializationTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(iArr[0]));
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public java.lang.Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr) {
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (isBlacklisted(this.selectedIndex, jElapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isBlacklisted(i, jElapsedRealtime)) {
                        this.selectedIndex = i;
                        return;
                    }
                }
                throw new java.lang.IllegalStateException();
            }
        }
    }

    public static final class SegmentBaseHolder {
        public final boolean isPreload;
        public final long mediaSequence;
        public final int partIndex;
        public final com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase;

        public SegmentBaseHolder(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase, long j, int i) {
            this.segmentBase = segmentBase;
            this.mediaSequence = j;
            this.partIndex = i;
            this.isPreload = (segmentBase instanceof com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part) && ((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part) segmentBase).isPreload;
        }
    }

    public HlsChunkSource(com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker hlsPlaylistTracker, android.net.Uri[] uriArr, com.google.android.exoplayer2.Format[] formatArr, com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.upstream.TransferListener transferListener, com.google.android.exoplayer2.source.hls.TimestampAdjusterProvider timestampAdjusterProvider, java.util.List<com.google.android.exoplayer2.Format> list) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.muxedCaptionFormats = list;
        com.google.android.exoplayer2.upstream.DataSource dataSourceCreateDataSource = hlsDataSourceFactory.createDataSource(1);
        this.mediaDataSource = dataSourceCreateDataSource;
        if (transferListener != null) {
            dataSourceCreateDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new com.google.android.exoplayer2.source.TrackGroup(formatArr);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < uriArr.length; i++) {
            if ((formatArr[i].roleFlags & 16384) == 0) {
                arrayList.add(java.lang.Integer.valueOf(i));
            }
        }
        this.trackSelection = new com.google.android.exoplayer2.source.hls.HlsChunkSource.InitializationTrackSelection(this.trackGroup, d.s.y.a0(arrayList));
    }

    public static android.net.Uri getFullEncryptionKeyUri(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase) {
        java.lang.String str;
        if (segmentBase == null || (str = segmentBase.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return com.google.android.exoplayer2.util.UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
    }

    private android.util.Pair<java.lang.Long, java.lang.Integer> getNextMediaSequenceAndPartIndex(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk, boolean z, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j, long j2) {
        if (hlsMediaChunk != null && !z) {
            if (!hlsMediaChunk.isLoadCompleted()) {
                return new android.util.Pair<>(java.lang.Long.valueOf(hlsMediaChunk.chunkIndex), java.lang.Integer.valueOf(hlsMediaChunk.partIndex));
            }
            java.lang.Long lValueOf = java.lang.Long.valueOf(hlsMediaChunk.partIndex == -1 ? hlsMediaChunk.getNextChunkIndex() : hlsMediaChunk.chunkIndex);
            int i = hlsMediaChunk.partIndex;
            return new android.util.Pair<>(lValueOf, java.lang.Integer.valueOf(i != -1 ? i + 1 : -1));
        }
        long j3 = hlsMediaPlaylist.durationUs + j;
        if (hlsMediaChunk != null && !this.independentSegments) {
            j2 = hlsMediaChunk.startTimeUs;
        }
        if (!hlsMediaPlaylist.hasEndTag && j2 >= j3) {
            return new android.util.Pair<>(java.lang.Long.valueOf(hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()), -1);
        }
        long j4 = j2 - j;
        int i2 = 0;
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor((java.util.List<? extends java.lang.Comparable<? super java.lang.Long>>) hlsMediaPlaylist.segments, java.lang.Long.valueOf(j4), true, !this.playlistTracker.isLive() || hlsMediaChunk == null);
        long j5 = iBinarySearchFloor + hlsMediaPlaylist.mediaSequence;
        if (iBinarySearchFloor >= 0) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(iBinarySearchFloor);
            java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list = j4 < segment.relativeStartTimeUs + segment.durationUs ? segment.parts : hlsMediaPlaylist.trailingParts;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part part = list.get(i2);
                if (j4 >= part.relativeStartTimeUs + part.durationUs) {
                    i2++;
                } else if (part.isIndependent) {
                    j5 += list == hlsMediaPlaylist.trailingParts ? 1L : 0L;
                    i = i2;
                }
            }
        }
        return new android.util.Pair<>(java.lang.Long.valueOf(j5), java.lang.Integer.valueOf(i));
    }

    public static com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder getNextSegmentHolder(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 == hlsMediaPlaylist.segments.size()) {
            if (i == -1) {
                i = 0;
            }
            if (i < hlsMediaPlaylist.trailingParts.size()) {
                return new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(i), j, i);
            }
            return null;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
        if (i == -1) {
            return new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder(segment, j, -1);
        }
        if (i < segment.parts.size()) {
            return new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder(segment.parts.get(i), j, i);
        }
        int i3 = i2 + 1;
        if (i3 < hlsMediaPlaylist.segments.size()) {
            return new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder(hlsMediaPlaylist.segments.get(i3), j + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(0), j + 1, 0);
    }

    public static java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase> getSegmentBaseList(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
        int i2 = (int) (j - hlsMediaPlaylist.mediaSequence);
        if (i2 < 0 || hlsMediaPlaylist.segments.size() < i2) {
            return e.c.b.b.s.p();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (i2 < hlsMediaPlaylist.segments.size()) {
            if (i != -1) {
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i2);
                if (i == 0) {
                    arrayList.add(segment);
                } else if (i < segment.parts.size()) {
                    java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list = segment.parts;
                    arrayList.addAll(list.subList(i, list.size()));
                }
                i2++;
            }
            java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
            arrayList.addAll(list2.subList(i2, list2.size()));
            i = 0;
        }
        if (hlsMediaPlaylist.partTargetDurationUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            int i3 = i != -1 ? i : 0;
            if (i3 < hlsMediaPlaylist.trailingParts.size()) {
                java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                arrayList.addAll(list3.subList(i3, list3.size()));
            }
        }
        return java.util.Collections.unmodifiableList(arrayList);
    }

    private com.google.android.exoplayer2.source.chunk.Chunk maybeCreateEncryptionChunkFor(android.net.Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        byte[] bArrRemove = this.keyCache.remove(uri);
        if (bArrRemove != null) {
            this.keyCache.put(uri, bArrRemove);
            return null;
        }
        return new com.google.android.exoplayer2.source.hls.HlsChunkSource.EncryptionKeyChunk(this.encryptionDataSource, new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(uri).setFlags(1).build(), this.playlistFormats[i], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        return (this.liveEdgeInPeriodTimeUs > com.google.android.exoplayer2.C.TIME_UNSET ? 1 : (this.liveEdgeInPeriodTimeUs == com.google.android.exoplayer2.C.TIME_UNSET ? 0 : -1)) != 0 ? this.liveEdgeInPeriodTimeUs - j : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void updateLiveEdgeTimeUs(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? com.google.android.exoplayer2.C.TIME_UNSET : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    public com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] createMediaChunkIterators(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk, long j) {
        int i;
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        int length = this.trackSelection.length();
        com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr = new com.google.android.exoplayer2.source.chunk.MediaChunkIterator[length];
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i2);
            android.net.Uri uri = this.playlistUrls[indexInTrackGroup];
            if (this.playlistTracker.isSnapshotValid(uri)) {
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, z);
                com.google.android.exoplayer2.util.Assertions.checkNotNull(playlistSnapshot);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                i = i2;
                android.util.Pair<java.lang.Long, java.lang.Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, indexInTrackGroup != iIndexOf, playlistSnapshot, initialStartTimeUs, j);
                mediaChunkIteratorArr[i] = new com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsMediaPlaylistSegmentIterator(playlistSnapshot.baseUri, initialStartTimeUs, getSegmentBaseList(playlistSnapshot, ((java.lang.Long) nextMediaSequenceAndPartIndex.first).longValue(), ((java.lang.Integer) nextMediaSequenceAndPartIndex.second).intValue()));
            } else {
                mediaChunkIteratorArr[i2] = com.google.android.exoplayer2.source.chunk.MediaChunkIterator.EMPTY;
                i = i2;
            }
            i2 = i + 1;
            z = false;
        }
        return mediaChunkIteratorArr;
    }

    public int getChunkPublicationState(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk) {
        if (hlsMediaChunk.partIndex == -1) {
            return 1;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = (com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i < 0) {
            return 1;
        }
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list = i < hlsMediaPlaylist.segments.size() ? hlsMediaPlaylist.segments.get(i).parts : hlsMediaPlaylist.trailingParts;
        if (hlsMediaChunk.partIndex >= list.size()) {
            return 2;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part part = list.get(hlsMediaChunk.partIndex);
        if (part.isPreload) {
            return 0;
        }
        return com.google.android.exoplayer2.util.Util.areEqual(android.net.Uri.parse(com.google.android.exoplayer2.util.UriUtil.resolve(hlsMediaPlaylist.baseUri, part.url)), hlsMediaChunk.dataSpec.uri) ? 1 : 2;
    }

    public void getNextChunk(long j, long j2, java.util.List<com.google.android.exoplayer2.source.hls.HlsMediaChunk> list, boolean z, com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder hlsChunkHolder) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist;
        long initialStartTimeUs;
        android.net.Uri uri;
        int i;
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = list.isEmpty() ? null : (com.google.android.exoplayer2.source.hls.HlsMediaChunk) e.c.b.a.f.l(list);
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        long jMax = j2 - j;
        long jResolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j);
        if (hlsMediaChunk != null && !this.independentSegments) {
            long durationUs = hlsMediaChunk.getDurationUs();
            jMax = java.lang.Math.max(0L, jMax - durationUs);
            if (jResolveTimeToLiveEdgeUs != com.google.android.exoplayer2.C.TIME_UNSET) {
                jResolveTimeToLiveEdgeUs = java.lang.Math.max(0L, jResolveTimeToLiveEdgeUs - durationUs);
            }
        }
        this.trackSelection.updateSelectedTrack(j, jMax, jResolveTimeToLiveEdgeUs, list, createMediaChunkIterators(hlsMediaChunk, j2));
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z2 = iIndexOf != selectedIndexInTrackGroup;
        android.net.Uri uri2 = this.playlistUrls[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(uri2)) {
            hlsChunkHolder.playlistUrl = uri2;
            this.seenExpectedPlaylistError &= uri2.equals(this.expectedPlaylistUrl);
            this.expectedPlaylistUrl = uri2;
            return;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri2, true);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(playlistSnapshot);
        this.independentSegments = playlistSnapshot.hasIndependentSegments;
        updateLiveEdgeTimeUs(playlistSnapshot);
        long initialStartTimeUs2 = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        android.util.Pair<java.lang.Long, java.lang.Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, z2, playlistSnapshot, initialStartTimeUs2, j2);
        long jLongValue = ((java.lang.Long) nextMediaSequenceAndPartIndex.first).longValue();
        int iIntValue = ((java.lang.Integer) nextMediaSequenceAndPartIndex.second).intValue();
        if (jLongValue >= playlistSnapshot.mediaSequence || hlsMediaChunk == null || !z2) {
            hlsMediaPlaylist = playlistSnapshot;
            initialStartTimeUs = initialStartTimeUs2;
            uri = uri2;
            i = selectedIndexInTrackGroup;
        } else {
            android.net.Uri uri3 = this.playlistUrls[iIndexOf];
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist playlistSnapshot2 = this.playlistTracker.getPlaylistSnapshot(uri3, true);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(playlistSnapshot2);
            initialStartTimeUs = playlistSnapshot2.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
            android.util.Pair<java.lang.Long, java.lang.Integer> nextMediaSequenceAndPartIndex2 = getNextMediaSequenceAndPartIndex(hlsMediaChunk, false, playlistSnapshot2, initialStartTimeUs, j2);
            jLongValue = ((java.lang.Long) nextMediaSequenceAndPartIndex2.first).longValue();
            iIntValue = ((java.lang.Integer) nextMediaSequenceAndPartIndex2.second).intValue();
            i = iIndexOf;
            uri = uri3;
            hlsMediaPlaylist = playlistSnapshot2;
        }
        if (jLongValue < hlsMediaPlaylist.mediaSequence) {
            this.fatalError = new com.google.android.exoplayer2.source.BehindLiveWindowException();
            return;
        }
        com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist, jLongValue, iIntValue);
        if (nextSegmentHolder == null) {
            if (!hlsMediaPlaylist.hasEndTag) {
                hlsChunkHolder.playlistUrl = uri;
                this.seenExpectedPlaylistError &= uri.equals(this.expectedPlaylistUrl);
                this.expectedPlaylistUrl = uri;
                return;
            } else {
                if (z || hlsMediaPlaylist.segments.isEmpty()) {
                    hlsChunkHolder.endOfStream = true;
                    return;
                }
                nextSegmentHolder = new com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase) e.c.b.a.f.l(hlsMediaPlaylist.segments), (hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()) - 1, -1);
            }
        }
        this.seenExpectedPlaylistError = false;
        this.expectedPlaylistUrl = null;
        android.net.Uri fullEncryptionKeyUri = getFullEncryptionKeyUri(hlsMediaPlaylist, nextSegmentHolder.segmentBase.initializationSegment);
        com.google.android.exoplayer2.source.chunk.Chunk chunkMaybeCreateEncryptionChunkFor = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri, i);
        hlsChunkHolder.chunk = chunkMaybeCreateEncryptionChunkFor;
        if (chunkMaybeCreateEncryptionChunkFor != null) {
            return;
        }
        android.net.Uri fullEncryptionKeyUri2 = getFullEncryptionKeyUri(hlsMediaPlaylist, nextSegmentHolder.segmentBase);
        com.google.android.exoplayer2.source.chunk.Chunk chunkMaybeCreateEncryptionChunkFor2 = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri2, i);
        hlsChunkHolder.chunk = chunkMaybeCreateEncryptionChunkFor2;
        if (chunkMaybeCreateEncryptionChunkFor2 != null) {
            return;
        }
        boolean zShouldSpliceIn = com.google.android.exoplayer2.source.hls.HlsMediaChunk.shouldSpliceIn(hlsMediaChunk, uri, hlsMediaPlaylist, nextSegmentHolder, initialStartTimeUs);
        if (zShouldSpliceIn && nextSegmentHolder.isPreload) {
            return;
        }
        hlsChunkHolder.chunk = com.google.android.exoplayer2.source.hls.HlsMediaChunk.createInstance(this.extractorFactory, this.mediaDataSource, this.playlistFormats[i], initialStartTimeUs, hlsMediaPlaylist, nextSegmentHolder, uri, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.isTimestampMaster, this.timestampAdjusterProvider, hlsMediaChunk, this.keyCache.get(fullEncryptionKeyUri2), this.keyCache.get(fullEncryptionKeyUri), zShouldSpliceIn);
    }

    public int getPreferredQueueSize(long j, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j, list);
    }

    public com.google.android.exoplayer2.source.TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public com.google.android.exoplayer2.trackselection.ExoTrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public boolean maybeExcludeTrack(com.google.android.exoplayer2.source.chunk.Chunk chunk, long j) {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.blacklist(exoTrackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j);
    }

    public void maybeThrowError() throws java.io.IOException {
        java.io.IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        android.net.Uri uri = this.expectedPlaylistUrl;
        if (uri == null || !this.seenExpectedPlaylistError) {
            return;
        }
        this.playlistTracker.maybeThrowPlaylistRefreshError(uri);
    }

    public boolean obtainsChunksForPlaylist(android.net.Uri uri) {
        return com.google.android.exoplayer2.util.Util.contains(this.playlistUrls, uri);
    }

    public void onChunkLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
        if (chunk instanceof com.google.android.exoplayer2.source.hls.HlsChunkSource.EncryptionKeyChunk) {
            com.google.android.exoplayer2.source.hls.HlsChunkSource.EncryptionKeyChunk encryptionKeyChunk = (com.google.android.exoplayer2.source.hls.HlsChunkSource.EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            this.keyCache.put(encryptionKeyChunk.dataSpec.uri, (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(encryptionKeyChunk.getResult()));
        }
    }

    public boolean onPlaylistError(android.net.Uri uri, long j) {
        int iIndexOf;
        int i = 0;
        while (true) {
            android.net.Uri[] uriArr = this.playlistUrls;
            if (i >= uriArr.length) {
                i = -1;
                break;
            }
            if (uriArr[i].equals(uri)) {
                break;
            }
            i++;
        }
        if (i == -1 || (iIndexOf = this.trackSelection.indexOf(i)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError |= uri.equals(this.expectedPlaylistUrl);
        return j == com.google.android.exoplayer2.C.TIME_UNSET || (this.trackSelection.blacklist(iIndexOf, j) && this.playlistTracker.excludeMediaPlaylist(uri, j));
    }

    public void reset() {
        this.fatalError = null;
    }

    public void setIsTimestampMaster(boolean z) {
        this.isTimestampMaster = z;
    }

    public void setTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    public boolean shouldCancelLoad(long j, com.google.android.exoplayer2.source.chunk.Chunk chunk, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }
}
