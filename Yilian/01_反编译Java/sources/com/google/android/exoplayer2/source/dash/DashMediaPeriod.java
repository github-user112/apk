package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class DashMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader.Callback<com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>>, com.google.android.exoplayer2.source.chunk.ChunkSampleStream.ReleaseCallback<com.google.android.exoplayer2.source.dash.DashChunkSource> {
    public static final java.util.regex.Pattern CEA608_SERVICE_DESCRIPTOR_REGEX = java.util.regex.Pattern.compile("CC([1-4])=(.+)");
    public static final java.util.regex.Pattern CEA708_SERVICE_DESCRIPTOR_REGEX = java.util.regex.Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public final com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList;
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public final com.google.android.exoplayer2.source.dash.DashChunkSource.Factory chunkSourceFactory;
    public com.google.android.exoplayer2.source.SequenceableLoader compositeSequenceableLoader;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final long elapsedRealtimeOffsetMs;
    public java.util.List<com.google.android.exoplayer2.source.dash.manifest.EventStream> eventStreams;
    public final int id;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest manifest;
    public final com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoaderErrorThrower;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    public int periodIndex;
    public final com.google.android.exoplayer2.source.dash.PlayerEmsgHandler playerEmsgHandler;
    public final com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[] trackGroupInfos;
    public final com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final com.google.android.exoplayer2.upstream.TransferListener transferListener;
    public com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>[] sampleStreams = newSampleStreamArray(0);
    public com.google.android.exoplayer2.source.dash.EventSampleStream[] eventSampleStreams = new com.google.android.exoplayer2.source.dash.EventSampleStream[0];
    public final java.util.IdentityHashMap<com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler> trackEmsgHandlerBySampleStream = new java.util.IdentityHashMap<>();

    public static final class TrackGroupInfo {
        public static final int CATEGORY_EMBEDDED = 1;
        public static final int CATEGORY_MANIFEST_EVENTS = 2;
        public static final int CATEGORY_PRIMARY = 0;
        public final int[] adaptationSetIndices;
        public final int embeddedClosedCaptionTrackGroupIndex;
        public final int embeddedEventMessageTrackGroupIndex;
        public final int eventStreamGroupIndex;
        public final int primaryTrackGroupIndex;
        public final int trackGroupCategory;
        public final int trackType;

        @java.lang.annotation.Documented
        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface TrackGroupCategory {
        }

        public TrackGroupInfo(int i, int i2, int[] iArr, int i3, int i4, int i5, int i6) {
            this.trackType = i;
            this.adaptationSetIndices = iArr;
            this.trackGroupCategory = i2;
            this.primaryTrackGroupIndex = i3;
            this.embeddedEventMessageTrackGroupIndex = i4;
            this.embeddedClosedCaptionTrackGroupIndex = i5;
            this.eventStreamGroupIndex = i6;
        }

        public static com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo embeddedClosedCaptionTrack(int[] iArr, int i) {
            return new com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo(3, 1, iArr, i, -1, -1, -1);
        }

        public static com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo embeddedEmsgTrack(int[] iArr, int i) {
            return new com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo(5, 1, iArr, i, -1, -1, -1);
        }

        public static com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo mpdEventTrack(int i) {
            return new com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo(5, 2, new int[0], -1, -1, -1, i);
        }

        public static com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo primaryTrack(int i, int[] iArr, int i2, int i3, int i4) {
            return new com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo(i, 0, iArr, i2, i3, i4, -1);
        }
    }

    public DashMediaPeriod(int i, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList, int i2, com.google.android.exoplayer2.source.dash.DashChunkSource.Factory factory, com.google.android.exoplayer2.upstream.TransferListener transferListener, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher2, long j, com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.upstream.Allocator allocator, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback) {
        this.id = i;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.periodIndex = i2;
        this.chunkSourceFactory = factory;
        this.transferListener = transferListener;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.elapsedRealtimeOffsetMs = j;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.playerEmsgHandler = new com.google.android.exoplayer2.source.dash.PlayerEmsgHandler(dashManifest, playerEmsgCallback, allocator);
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.sampleStreams);
        com.google.android.exoplayer2.source.dash.manifest.Period period = dashManifest.getPeriod(i2);
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.EventStream> list = period.eventStreams;
        this.eventStreams = list;
        android.util.Pair<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[]> pairBuildTrackGroups = buildTrackGroups(drmSessionManager, period.adaptationSets, list);
        this.trackGroups = (com.google.android.exoplayer2.source.TrackGroupArray) pairBuildTrackGroups.first;
        this.trackGroupInfos = (com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[]) pairBuildTrackGroups.second;
    }

    public static void buildManifestEventTrackGroupInfos(java.util.List<com.google.android.exoplayer2.source.dash.manifest.EventStream> list, com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr, com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[] trackGroupInfoArr, int i) {
        int i2 = 0;
        while (i2 < list.size()) {
            trackGroupArr[i] = new com.google.android.exoplayer2.source.TrackGroup(new com.google.android.exoplayer2.Format.Builder().setId(list.get(i2).id()).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG).build());
            trackGroupInfoArr[i] = com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo.mpdEventTrack(i2);
            i2++;
            i++;
        }
    }

    public static int buildPrimaryAndEmbeddedTrackGroupInfos(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, int[][] iArr, int i, boolean[] zArr, com.google.android.exoplayer2.Format[][] formatArr, com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr, com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[] trackGroupInfoArr) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            int[] iArr2 = iArr[i4];
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (int i6 : iArr2) {
                arrayList.addAll(list.get(i6).representations);
            }
            int size = arrayList.size();
            com.google.android.exoplayer2.Format[] formatArr2 = new com.google.android.exoplayer2.Format[size];
            for (int i7 = 0; i7 < size; i7++) {
                com.google.android.exoplayer2.Format format = ((com.google.android.exoplayer2.source.dash.manifest.Representation) arrayList.get(i7)).format;
                formatArr2[i7] = format.copyWithCryptoType(drmSessionManager.getCryptoType(format));
            }
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = list.get(iArr2[0]);
            int i8 = i5 + 1;
            if (zArr[i4]) {
                i2 = i8 + 1;
            } else {
                i2 = i8;
                i8 = -1;
            }
            if (formatArr[i4].length != 0) {
                i3 = i2 + 1;
            } else {
                i3 = i2;
                i2 = -1;
            }
            trackGroupArr[i5] = new com.google.android.exoplayer2.source.TrackGroup(formatArr2);
            trackGroupInfoArr[i5] = com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo.primaryTrack(adaptationSet.type, iArr2, i5, i8, i2);
            if (i8 != -1) {
                com.google.android.exoplayer2.Format.Builder builder = new com.google.android.exoplayer2.Format.Builder();
                int i9 = adaptationSet.id;
                java.lang.StringBuilder sb = new java.lang.StringBuilder(16);
                sb.append(i9);
                sb.append(":emsg");
                trackGroupArr[i8] = new com.google.android.exoplayer2.source.TrackGroup(builder.setId(sb.toString()).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG).build());
                trackGroupInfoArr[i8] = com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo.embeddedEmsgTrack(iArr2, i5);
            }
            if (i2 != -1) {
                trackGroupArr[i2] = new com.google.android.exoplayer2.source.TrackGroup(formatArr[i4]);
                trackGroupInfoArr[i2] = com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo.embeddedClosedCaptionTrack(iArr2, i5);
            }
            i4++;
            i5 = i3;
        }
        return i5;
    }

    private com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> buildSampleStream(com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo trackGroupInfo, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, long j) {
        com.google.android.exoplayer2.source.TrackGroup trackGroup;
        int i;
        com.google.android.exoplayer2.source.TrackGroup trackGroup2;
        int i2;
        boolean z = trackGroupInfo.embeddedEventMessageTrackGroupIndex != -1;
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandlerNewPlayerTrackEmsgHandler = null;
        if (z) {
            trackGroup = this.trackGroups.get(trackGroupInfo.embeddedEventMessageTrackGroupIndex);
            i = 1;
        } else {
            trackGroup = null;
            i = 0;
        }
        boolean z2 = trackGroupInfo.embeddedClosedCaptionTrackGroupIndex != -1;
        if (z2) {
            trackGroup2 = this.trackGroups.get(trackGroupInfo.embeddedClosedCaptionTrackGroupIndex);
            i += trackGroup2.length;
        } else {
            trackGroup2 = null;
        }
        com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[i];
        int[] iArr = new int[i];
        if (z) {
            formatArr[0] = trackGroup.getFormat(0);
            iArr[0] = 5;
            i2 = 1;
        } else {
            i2 = 0;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (z2) {
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                formatArr[i2] = trackGroup2.getFormat(i3);
                iArr[i2] = 3;
                arrayList.add(formatArr[i2]);
                i2++;
            }
        }
        if (this.manifest.dynamic && z) {
            playerTrackEmsgHandlerNewPlayerTrackEmsgHandler = this.playerEmsgHandler.newPlayerTrackEmsgHandler();
        }
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = playerTrackEmsgHandlerNewPlayerTrackEmsgHandler;
        com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream = new com.google.android.exoplayer2.source.chunk.ChunkSampleStream<>(trackGroupInfo.trackType, iArr, formatArr, this.chunkSourceFactory.createDashChunkSource(this.manifestLoaderErrorThrower, this.manifest, this.baseUrlExclusionList, this.periodIndex, trackGroupInfo.adaptationSetIndices, exoTrackSelection, trackGroupInfo.trackType, this.elapsedRealtimeOffsetMs, z, arrayList, playerTrackEmsgHandler, this.transferListener), this, this.allocator, j, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.mediaSourceEventDispatcher);
        synchronized (this) {
            this.trackEmsgHandlerBySampleStream.put(chunkSampleStream, playerTrackEmsgHandler);
        }
        return chunkSampleStream;
    }

    public static android.util.Pair<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[]> buildTrackGroups(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, java.util.List<com.google.android.exoplayer2.source.dash.manifest.EventStream> list2) {
        int[][] groupedAdaptationSetIndices = getGroupedAdaptationSetIndices(list);
        int length = groupedAdaptationSetIndices.length;
        boolean[] zArr = new boolean[length];
        com.google.android.exoplayer2.Format[][] formatArr = new com.google.android.exoplayer2.Format[length][];
        int size = list2.size() + identifyEmbeddedTracks(length, list, groupedAdaptationSetIndices, zArr, formatArr) + length;
        com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[size];
        com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[] trackGroupInfoArr = new com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo[size];
        buildManifestEventTrackGroupInfos(list2, trackGroupArr, trackGroupInfoArr, buildPrimaryAndEmbeddedTrackGroupInfos(drmSessionManager, list, groupedAdaptationSetIndices, length, zArr, formatArr, trackGroupArr, trackGroupInfoArr));
        return android.util.Pair.create(new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr), trackGroupInfoArr);
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Descriptor findAdaptationSetSwitchingProperty(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        return findDescriptor(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Descriptor findDescriptor(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list, java.lang.String str) {
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if (str.equals(descriptor.schemeIdUri)) {
                return descriptor;
            }
        }
        return null;
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Descriptor findTrickPlayProperty(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        return findDescriptor(list, "http://dashif.org/guidelines/trickmode");
    }

    public static com.google.android.exoplayer2.Format[] getClosedCaptionTrackFormats(java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, int[] iArr) {
        com.google.android.exoplayer2.Format formatBuild;
        java.util.regex.Pattern pattern;
        for (int i : iArr) {
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = list.get(i);
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2 = list.get(i).accessibilityDescriptors;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list2.get(i2);
                if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri)) {
                    com.google.android.exoplayer2.Format.Builder sampleMimeType = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608);
                    int i3 = adaptationSet.id;
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(18);
                    sb.append(i3);
                    sb.append(":cea608");
                    formatBuild = sampleMimeType.setId(sb.toString()).build();
                    pattern = CEA608_SERVICE_DESCRIPTOR_REGEX;
                } else if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri)) {
                    com.google.android.exoplayer2.Format.Builder sampleMimeType2 = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA708);
                    int i4 = adaptationSet.id;
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder(18);
                    sb2.append(i4);
                    sb2.append(":cea708");
                    formatBuild = sampleMimeType2.setId(sb2.toString()).build();
                    pattern = CEA708_SERVICE_DESCRIPTOR_REGEX;
                }
                return parseClosedCaptionDescriptor(descriptor, pattern, formatBuild);
            }
        }
        return new com.google.android.exoplayer2.Format[0];
    }

    public static int[][] getGroupedAdaptationSetIndices(java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list) {
        int iMin;
        com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptorFindAdaptationSetSwitchingProperty;
        int size = list.size();
        android.util.SparseIntArray sparseIntArray = new android.util.SparseIntArray(size);
        java.util.ArrayList arrayList = new java.util.ArrayList(size);
        android.util.SparseArray sparseArray = new android.util.SparseArray(size);
        for (int i = 0; i < size; i++) {
            sparseIntArray.put(list.get(i).id, i);
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            arrayList2.add(java.lang.Integer.valueOf(i));
            arrayList.add(arrayList2);
            sparseArray.put(i, arrayList2);
        }
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = list.get(i2);
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptorFindTrickPlayProperty = findTrickPlayProperty(adaptationSet.essentialProperties);
            if (descriptorFindTrickPlayProperty == null) {
                descriptorFindTrickPlayProperty = findTrickPlayProperty(adaptationSet.supplementalProperties);
            }
            if (descriptorFindTrickPlayProperty == null || (iMin = sparseIntArray.get(java.lang.Integer.parseInt(descriptorFindTrickPlayProperty.value), -1)) == -1) {
                iMin = i2;
            }
            if (iMin == i2 && (descriptorFindAdaptationSetSwitchingProperty = findAdaptationSetSwitchingProperty(adaptationSet.supplementalProperties)) != null) {
                for (java.lang.String str : com.google.android.exoplayer2.util.Util.split(descriptorFindAdaptationSetSwitchingProperty.value, ",")) {
                    int i3 = sparseIntArray.get(java.lang.Integer.parseInt(str), -1);
                    if (i3 != -1) {
                        iMin = java.lang.Math.min(iMin, i3);
                    }
                }
            }
            if (iMin != i2) {
                java.util.List list2 = (java.util.List) sparseArray.get(i2);
                java.util.List list3 = (java.util.List) sparseArray.get(iMin);
                list3.addAll(list2);
                sparseArray.put(i2, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i4 = 0; i4 < size2; i4++) {
            iArr[i4] = d.s.y.a0((java.util.Collection) arrayList.get(i4));
            java.util.Arrays.sort(iArr[i4]);
        }
        return iArr;
    }

    private int getPrimaryStreamIndex(int i, int[] iArr) {
        int i2 = iArr[i];
        if (i2 == -1) {
            return -1;
        }
        int i3 = this.trackGroupInfos[i2].primaryTrackGroupIndex;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4];
            if (i5 == i3 && this.trackGroupInfos[i5].trackGroupCategory == 0) {
                return i4;
            }
        }
        return -1;
    }

    private int[] getStreamIndexToTrackGroupIndex(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (exoTrackSelectionArr[i] != null) {
                iArr[i] = this.trackGroups.indexOf(exoTrackSelectionArr[i].getTrackGroup());
            } else {
                iArr[i] = -1;
            }
        }
        return iArr;
    }

    public static boolean hasEventMessageTrack(java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, int[] iArr) {
        for (int i : iArr) {
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list2 = list.get(i).representations;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (!list2.get(i2).inbandEventStreams.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int identifyEmbeddedTracks(int i, java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, int[][] iArr, boolean[] zArr, com.google.android.exoplayer2.Format[][] formatArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (hasEventMessageTrack(list, iArr[i3])) {
                zArr[i3] = true;
                i2++;
            }
            formatArr[i3] = getClosedCaptionTrackFormats(list, iArr[i3]);
            if (formatArr[i3].length != 0) {
                i2++;
            }
        }
        return i2;
    }

    public static com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>[] newSampleStreamArray(int i) {
        return new com.google.android.exoplayer2.source.chunk.ChunkSampleStream[i];
    }

    public static com.google.android.exoplayer2.Format[] parseClosedCaptionDescriptor(com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor, java.util.regex.Pattern pattern, com.google.android.exoplayer2.Format format) throws java.lang.NumberFormatException {
        java.lang.String str = descriptor.value;
        if (str == null) {
            return new com.google.android.exoplayer2.Format[]{format};
        }
        java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(str, ";");
        com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            java.util.regex.Matcher matcher = pattern.matcher(strArrSplit[i]);
            if (!matcher.matches()) {
                return new com.google.android.exoplayer2.Format[]{format};
            }
            int i2 = java.lang.Integer.parseInt(matcher.group(1));
            com.google.android.exoplayer2.Format.Builder builderBuildUpon = format.buildUpon();
            java.lang.String str2 = format.id;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + 12);
            sb.append(str2);
            sb.append(":");
            sb.append(i2);
            formatArr[i] = builderBuildUpon.setId(sb.toString()).setAccessibilityChannel(i2).setLanguage(matcher.group(2)).build();
        }
        return formatArr;
    }

    private void releaseDisabledStreams(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (exoTrackSelectionArr[i] == null || !zArr[i]) {
                if (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream) {
                    ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream) sampleStreamArr[i]).release(this);
                } else if (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) {
                    ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) sampleStreamArr[i]).release();
                }
                sampleStreamArr[i] = null;
            }
        }
    }

    private void releaseOrphanEmbeddedStreams(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, int[] iArr) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if ((sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.EmptySampleStream) || (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream)) {
                int primaryStreamIndex = getPrimaryStreamIndex(i, iArr);
                if (!(primaryStreamIndex == -1 ? sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.EmptySampleStream : (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) && ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) sampleStreamArr[i]).parent == sampleStreamArr[primaryStreamIndex])) {
                    if (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) {
                        ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream.EmbeddedSampleStream) sampleStreamArr[i]).release();
                    }
                    sampleStreamArr[i] = null;
                }
            }
        }
    }

    private void selectNewStreams(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr, long j, int[] iArr) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
            if (exoTrackSelection != null) {
                if (sampleStreamArr[i] == null) {
                    zArr[i] = true;
                    com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo trackGroupInfo = this.trackGroupInfos[iArr[i]];
                    int i2 = trackGroupInfo.trackGroupCategory;
                    if (i2 == 0) {
                        sampleStreamArr[i] = buildSampleStream(trackGroupInfo, exoTrackSelection, j);
                    } else if (i2 == 2) {
                        sampleStreamArr[i] = new com.google.android.exoplayer2.source.dash.EventSampleStream(this.eventStreams.get(trackGroupInfo.eventStreamGroupIndex), exoTrackSelection.getTrackGroup().getFormat(0), this.manifest.dynamic);
                    }
                } else if (sampleStreamArr[i] instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream) {
                    ((com.google.android.exoplayer2.source.dash.DashChunkSource) ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream) sampleStreamArr[i]).getChunkSource()).updateTrackSelection(exoTrackSelection);
                }
            }
        }
        for (int i3 = 0; i3 < exoTrackSelectionArr.length; i3++) {
            if (sampleStreamArr[i3] == null && exoTrackSelectionArr[i3] != null) {
                com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo trackGroupInfo2 = this.trackGroupInfos[iArr[i3]];
                if (trackGroupInfo2.trackGroupCategory == 1) {
                    int primaryStreamIndex = getPrimaryStreamIndex(i3, iArr);
                    if (primaryStreamIndex == -1) {
                        sampleStreamArr[i3] = new com.google.android.exoplayer2.source.EmptySampleStream();
                    } else {
                        sampleStreamArr[i3] = ((com.google.android.exoplayer2.source.chunk.ChunkSampleStream) sampleStreamArr[primaryStreamIndex]).selectEmbeddedTrack(j, trackGroupInfo2.trackType);
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return this.compositeSequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.getAdjustedSeekPositionUs(j, seekParameters);
            }
        }
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

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list2 = this.manifest.getPeriod(this.periodIndex).adaptationSets;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : list) {
            com.google.android.exoplayer2.source.dash.DashMediaPeriod.TrackGroupInfo trackGroupInfo = this.trackGroupInfos[this.trackGroups.indexOf(exoTrackSelection.getTrackGroup())];
            if (trackGroupInfo.trackGroupCategory == 0) {
                int[] iArr = trackGroupInfo.adaptationSetIndices;
                int length = exoTrackSelection.length();
                int[] iArr2 = new int[length];
                for (int i = 0; i < exoTrackSelection.length(); i++) {
                    iArr2[i] = exoTrackSelection.getIndexInTrackGroup(i);
                }
                java.util.Arrays.sort(iArr2);
                int size = list2.get(iArr[0]).representations.size();
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    int i5 = iArr2[i4];
                    while (true) {
                        int i6 = i3 + size;
                        if (i5 >= i6) {
                            i2++;
                            size = list2.get(iArr[i2]).representations.size();
                            i3 = i6;
                        }
                    }
                    arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(this.periodIndex, iArr[i2], i5 - i3));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSampleStream.ReleaseCallback
    public synchronized void onSampleStreamReleased(com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream) {
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandlerRemove = this.trackEmsgHandlerBySampleStream.remove(chunkSampleStream);
        if (playerTrackEmsgHandlerRemove != null) {
            playerTrackEmsgHandlerRemove.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        callback.onPrepared(this);
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
        this.playerEmsgHandler.release();
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.release(this);
        }
        this.callback = null;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.seekToUs(j);
        }
        for (com.google.android.exoplayer2.source.dash.EventSampleStream eventSampleStream : this.eventSampleStreams) {
            eventSampleStream.seekToUs(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        int[] streamIndexToTrackGroupIndex = getStreamIndexToTrackGroupIndex(exoTrackSelectionArr);
        releaseDisabledStreams(exoTrackSelectionArr, zArr, sampleStreamArr);
        releaseOrphanEmbeddedStreams(exoTrackSelectionArr, sampleStreamArr, streamIndexToTrackGroupIndex);
        selectNewStreams(exoTrackSelectionArr, sampleStreamArr, zArr2, j, streamIndexToTrackGroupIndex);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (com.google.android.exoplayer2.source.SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream instanceof com.google.android.exoplayer2.source.chunk.ChunkSampleStream) {
                arrayList.add((com.google.android.exoplayer2.source.chunk.ChunkSampleStream) sampleStream);
            } else if (sampleStream instanceof com.google.android.exoplayer2.source.dash.EventSampleStream) {
                arrayList2.add((com.google.android.exoplayer2.source.dash.EventSampleStream) sampleStream);
            }
        }
        com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>[] chunkSampleStreamArrNewSampleStreamArray = newSampleStreamArray(arrayList.size());
        this.sampleStreams = chunkSampleStreamArrNewSampleStreamArray;
        arrayList.toArray(chunkSampleStreamArrNewSampleStreamArray);
        com.google.android.exoplayer2.source.dash.EventSampleStream[] eventSampleStreamArr = new com.google.android.exoplayer2.source.dash.EventSampleStream[arrayList2.size()];
        this.eventSampleStreams = eventSampleStreamArr;
        arrayList2.toArray(eventSampleStreamArr);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.sampleStreams);
        return j;
    }

    public void updateManifest(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, int i) {
        this.manifest = dashManifest;
        this.periodIndex = i;
        this.playerEmsgHandler.updateManifest(dashManifest);
        com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource>[] chunkSampleStreamArr = this.sampleStreams;
        if (chunkSampleStreamArr != null) {
            for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.dash.DashChunkSource> chunkSampleStream : chunkSampleStreamArr) {
                ((com.google.android.exoplayer2.source.dash.DashChunkSource) chunkSampleStream.getChunkSource()).updateManifest(dashManifest, i);
            }
            this.callback.onContinueLoadingRequested(this);
        }
        this.eventStreams = dashManifest.getPeriod(i).eventStreams;
        for (com.google.android.exoplayer2.source.dash.EventSampleStream eventSampleStream : this.eventSampleStreams) {
            java.util.Iterator<com.google.android.exoplayer2.source.dash.manifest.EventStream> it = this.eventStreams.iterator();
            while (true) {
                if (it.hasNext()) {
                    com.google.android.exoplayer2.source.dash.manifest.EventStream next = it.next();
                    if (next.id().equals(eventSampleStream.eventStreamId())) {
                        eventSampleStream.updateEventStream(next, dashManifest.dynamic && i == dashManifest.getPeriodCount() - 1);
                    }
                }
            }
        }
    }
}
