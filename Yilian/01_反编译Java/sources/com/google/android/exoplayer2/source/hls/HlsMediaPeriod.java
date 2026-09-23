package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class HlsMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener {
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public final boolean allowChunklessPreparation;
    public int audioVideoSampleStreamWrapperCount;
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public com.google.android.exoplayer2.source.SequenceableLoader compositeSequenceableLoader;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.source.hls.HlsDataSourceFactory dataSourceFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher;
    public final com.google.android.exoplayer2.source.hls.HlsExtractorFactory extractorFactory;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public final com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;
    public final int metadataType;
    public int pendingPrepareCount;
    public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker playlistTracker;
    public com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final boolean useSessionKeys;
    public final java.util.IdentityHashMap<com.google.android.exoplayer2.source.SampleStream, java.lang.Integer> streamWrapperIndices = new java.util.IdentityHashMap<>();
    public final com.google.android.exoplayer2.source.hls.TimestampAdjusterProvider timestampAdjusterProvider = new com.google.android.exoplayer2.source.hls.TimestampAdjusterProvider();
    public com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] sampleStreamWrappers = new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[0];
    public com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[0];
    public int[][] manifestUrlIndicesPerWrapper = new int[0][];

    public HlsMediaPeriod(com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker hlsPlaylistTracker, com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.upstream.TransferListener transferListener, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher2, com.google.android.exoplayer2.upstream.Allocator allocator, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z, int i, boolean z2) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z;
        this.metadataType = i;
        this.useSessionKeys = z2;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new com.google.android.exoplayer2.source.SequenceableLoader[0]);
    }

    private void buildAndPrepareAudioSampleStreamWrappers(long j, java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Rendition> list, java.util.List<com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper> list2, java.util.List<int[]> list3, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> map) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        java.util.ArrayList arrayList2 = new java.util.ArrayList(list.size());
        java.util.ArrayList arrayList3 = new java.util.ArrayList(list.size());
        java.util.HashSet hashSet = new java.util.HashSet();
        for (int i = 0; i < list.size(); i++) {
            java.lang.String str = list.get(i).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (com.google.android.exoplayer2.util.Util.areEqual(str, list.get(i2).name)) {
                        com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Rendition rendition = list.get(i2);
                        arrayList3.add(java.lang.Integer.valueOf(i2));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                        z &= com.google.android.exoplayer2.util.Util.getCodecCountOfType(rendition.format.codecs, 1) == 1;
                    }
                }
                com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(1, (android.net.Uri[]) arrayList.toArray((android.net.Uri[]) com.google.android.exoplayer2.util.Util.castNonNullTypeArray(new android.net.Uri[0])), (com.google.android.exoplayer2.Format[]) arrayList2.toArray(new com.google.android.exoplayer2.Format[0]), null, java.util.Collections.emptyList(), map, j);
                list3.add(d.s.y.a0(arrayList3));
                list2.add(hlsSampleStreamWrapperBuildSampleStreamWrapper);
                if (this.allowChunklessPreparation && z) {
                    hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new com.google.android.exoplayer2.source.TrackGroup[]{new com.google.android.exoplayer2.source.TrackGroup((com.google.android.exoplayer2.Format[]) arrayList2.toArray(new com.google.android.exoplayer2.Format[0]))}, 0, new int[0]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void buildAndPrepareMainSampleStreamWrapper(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist r20, long r21, java.util.List<com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper> r23, java.util.List<int[]> r24, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> r25) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaPeriod.buildAndPrepareMainSampleStreamWrapper(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist, long, java.util.List, java.util.List, java.util.Map):void");
    }

    private void buildAndPrepareSampleStreamWrappers(long j) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylist = (com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playlistTracker.getMasterPlaylist());
        java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> mapDeriveOverridingDrmInitData = this.useSessionKeys ? deriveOverridingDrmInitData(hlsMasterPlaylist.sessionKeyDrmInitData) : java.util.Collections.emptyMap();
        boolean z = !hlsMasterPlaylist.variants.isEmpty();
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Rendition> list = hlsMasterPlaylist.audios;
        java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Rendition> list2 = hlsMasterPlaylist.subtitles;
        this.pendingPrepareCount = 0;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        if (z) {
            buildAndPrepareMainSampleStreamWrapper(hlsMasterPlaylist, j, arrayList, arrayList2, mapDeriveOverridingDrmInitData);
        }
        buildAndPrepareAudioSampleStreamWrappers(j, list, arrayList, arrayList2, mapDeriveOverridingDrmInitData);
        this.audioVideoSampleStreamWrapperCount = arrayList.size();
        int i = 0;
        while (i < list2.size()) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Rendition rendition = list2.get(i);
            int i2 = i;
            com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapperBuildSampleStreamWrapper = buildSampleStreamWrapper(3, new android.net.Uri[]{rendition.url}, new com.google.android.exoplayer2.Format[]{rendition.format}, null, java.util.Collections.emptyList(), mapDeriveOverridingDrmInitData, j);
            arrayList2.add(new int[]{i2});
            arrayList.add(hlsSampleStreamWrapperBuildSampleStreamWrapper);
            hlsSampleStreamWrapperBuildSampleStreamWrapper.prepareWithMasterPlaylistInfo(new com.google.android.exoplayer2.source.TrackGroup[]{new com.google.android.exoplayer2.source.TrackGroup(rendition.format)}, 0, new int[0]);
            i = i2 + 1;
        }
        this.sampleStreamWrappers = (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[]) arrayList.toArray(new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[0]);
        this.manifestUrlIndicesPerWrapper = (int[][]) arrayList2.toArray(new int[0][]);
        com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
        this.pendingPrepareCount = hlsSampleStreamWrapperArr.length;
        hlsSampleStreamWrapperArr[0].setIsTimestampMaster(true);
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper buildSampleStreamWrapper(int i, android.net.Uri[] uriArr, com.google.android.exoplayer2.Format[] formatArr, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> map, long j) {
        return new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper(i, this, new com.google.android.exoplayer2.source.hls.HlsChunkSource(this.extractorFactory, this.playlistTracker, uriArr, formatArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, list), map, this.allocator, j, format, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.eventDispatcher, this.metadataType);
    }

    public static com.google.android.exoplayer2.Format deriveAudioFormat(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2, boolean z) {
        java.lang.String str;
        com.google.android.exoplayer2.metadata.Metadata metadata;
        int i;
        int i2;
        int i3;
        java.lang.String str2;
        java.lang.String str3;
        if (format2 != null) {
            str2 = format2.codecs;
            metadata = format2.metadata;
            int i4 = format2.channelCount;
            i2 = format2.selectionFlags;
            int i5 = format2.roleFlags;
            java.lang.String str4 = format2.language;
            str3 = format2.label;
            i3 = i4;
            i = i5;
            str = str4;
        } else {
            java.lang.String codecsOfType = com.google.android.exoplayer2.util.Util.getCodecsOfType(format.codecs, 1);
            com.google.android.exoplayer2.metadata.Metadata metadata2 = format.metadata;
            if (z) {
                int i6 = format.channelCount;
                int i7 = format.selectionFlags;
                int i8 = format.roleFlags;
                str = format.language;
                str2 = codecsOfType;
                str3 = format.label;
                i3 = i6;
                i2 = i7;
                metadata = metadata2;
                i = i8;
            } else {
                str = null;
                metadata = metadata2;
                i = 0;
                i2 = 0;
                i3 = -1;
                str2 = codecsOfType;
                str3 = null;
            }
        }
        return new com.google.android.exoplayer2.Format.Builder().setId(format.id).setLabel(str3).setContainerMimeType(format.containerMimeType).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(str2)).setCodecs(str2).setMetadata(metadata).setAverageBitrate(z ? format.averageBitrate : -1).setPeakBitrate(z ? format.peakBitrate : -1).setChannelCount(i3).setSelectionFlags(i2).setRoleFlags(i).setLanguage(str).build();
    }

    public static java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> deriveOverridingDrmInitData(java.util.List<com.google.android.exoplayer2.drm.DrmInitData> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        java.util.HashMap map = new java.util.HashMap();
        int i = 0;
        while (i < arrayList.size()) {
            com.google.android.exoplayer2.drm.DrmInitData drmInitDataMerge = list.get(i);
            java.lang.String str = drmInitDataMerge.schemeType;
            i++;
            int i2 = i;
            while (i2 < arrayList.size()) {
                com.google.android.exoplayer2.drm.DrmInitData drmInitData = (com.google.android.exoplayer2.drm.DrmInitData) arrayList.get(i2);
                if (android.text.TextUtils.equals(drmInitData.schemeType, str)) {
                    drmInitDataMerge = drmInitDataMerge.merge(drmInitData);
                    arrayList.remove(i2);
                } else {
                    i2++;
                }
            }
            map.put(str, drmInitDataMerge);
        }
        return map;
    }

    public static com.google.android.exoplayer2.Format deriveVideoFormat(com.google.android.exoplayer2.Format format) {
        java.lang.String codecsOfType = com.google.android.exoplayer2.util.Util.getCodecsOfType(format.codecs, 2);
        return new com.google.android.exoplayer2.Format.Builder().setId(format.id).setLabel(format.label).setContainerMimeType(format.containerMimeType).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(codecsOfType)).setCodecs(codecsOfType).setMetadata(format.metadata).setAverageBitrate(format.averageBitrate).setPeakBitrate(format.peakBitrate).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).build();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.trackGroups != null) {
            return this.compositeSequenceableLoader.continueLoading(j);
        }
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [int] */
    /* JADX WARN: Type inference failed for: r15v7 */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        int[] iArr;
        com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
        int primaryTrackGroupIndex;
        com.google.android.exoplayer2.source.hls.HlsMediaPeriod hlsMediaPeriod = this;
        com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylist = (com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) com.google.android.exoplayer2.util.Assertions.checkNotNull(hlsMediaPeriod.playlistTracker.getMasterPlaylist());
        boolean z = !hlsMasterPlaylist.variants.isEmpty();
        int length = hlsMediaPeriod.sampleStreamWrappers.length - hlsMasterPlaylist.subtitles.size();
        int i = 0;
        if (z) {
            com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper = hlsMediaPeriod.sampleStreamWrappers[0];
            iArr = hlsMediaPeriod.manifestUrlIndicesPerWrapper[0];
            trackGroups = hlsSampleStreamWrapper.getTrackGroups();
            primaryTrackGroupIndex = hlsSampleStreamWrapper.getPrimaryTrackGroupIndex();
        } else {
            iArr = new int[0];
            trackGroups = com.google.android.exoplayer2.source.TrackGroupArray.EMPTY;
            primaryTrackGroupIndex = 0;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : list) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
            int iIndexOf = trackGroups.indexOf(trackGroup);
            if (iIndexOf == -1) {
                ?? r15 = z;
                while (true) {
                    com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = hlsMediaPeriod.sampleStreamWrappers;
                    if (r15 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    }
                    if (hlsSampleStreamWrapperArr[r15].getTrackGroups().indexOf(trackGroup) != -1) {
                        int i2 = r15 < length ? 1 : 2;
                        int[] iArr2 = hlsMediaPeriod.manifestUrlIndicesPerWrapper[r15];
                        for (int i3 = 0; i3 < exoTrackSelection.length(); i3++) {
                            arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(i2, iArr2[exoTrackSelection.getIndexInTrackGroup(i3)]));
                        }
                    } else {
                        hlsMediaPeriod = this;
                        r15++;
                    }
                }
            } else if (iIndexOf == primaryTrackGroupIndex) {
                for (int i4 = 0; i4 < exoTrackSelection.length(); i4++) {
                    arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(i, iArr[exoTrackSelection.getIndexInTrackGroup(i4)]));
                }
                z3 = true;
            } else {
                z2 = true;
            }
            hlsMediaPeriod = this;
            i = 0;
        }
        if (z2 && !z3) {
            int i5 = iArr[0];
            int i6 = hlsMasterPlaylist.variants.get(iArr[0]).format.bitrate;
            for (int i7 = 1; i7 < iArr.length; i7++) {
                int i8 = hlsMasterPlaylist.variants.get(iArr[i7]).format.bitrate;
                if (i8 < i6) {
                    i5 = iArr[i7];
                    i6 = i8;
                }
            }
            arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(0, i5));
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return (com.google.android.exoplayer2.source.TrackGroupArray) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackGroups);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws com.google.android.exoplayer2.ParserException {
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.onPlaylistUpdated();
        }
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean onPlaylistError(android.net.Uri uri, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        boolean zOnPlaylistError = true;
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            zOnPlaylistError &= hlsSampleStreamWrapper.onPlaylistError(uri, loadErrorInfo, z);
        }
        this.callback.onContinueLoadingRequested(this);
        return zOnPlaylistError;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPlaylistRefreshRequired(android.net.Uri uri) {
        this.playlistTracker.refreshPlaylist(uri);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback
    public void onPrepared() {
        int i = this.pendingPrepareCount - 1;
        this.pendingPrepareCount = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            i2 += hlsSampleStreamWrapper.getTrackGroups().length;
        }
        com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[i2];
        int i3 = 0;
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper2 : this.sampleStreamWrappers) {
            int i4 = hlsSampleStreamWrapper2.getTrackGroups().length;
            int i5 = 0;
            while (i5 < i4) {
                trackGroupArr[i3] = hlsSampleStreamWrapper2.getTrackGroups().get(i5);
                i5++;
                i3++;
            }
        }
        this.trackGroups = new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr);
        this.callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
        this.callback = null;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean zSeekToUs = hlsSampleStreamWrapperArr[0].seekToUs(j, false);
            int i = 1;
            while (true) {
                com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i].seekToUs(j, zSeekToUs);
                i++;
            }
            if (zSeekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00e2  */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] r22, boolean[] r23, com.google.android.exoplayer2.source.SampleStream[] r24, boolean[] r25, long r26) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaPeriod.selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long):long");
    }
}
