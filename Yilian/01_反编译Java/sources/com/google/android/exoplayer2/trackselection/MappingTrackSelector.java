package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public abstract class MappingTrackSelector extends com.google.android.exoplayer2.trackselection.TrackSelector {
    public com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo;

    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        public final int rendererCount;
        public final int[][][] rendererFormatSupports;
        public final int[] rendererMixedMimeTypeAdaptiveSupports;
        public final java.lang.String[] rendererNames;
        public final com.google.android.exoplayer2.source.TrackGroupArray[] rendererTrackGroups;
        public final int[] rendererTrackTypes;
        public final com.google.android.exoplayer2.source.TrackGroupArray unmappedTrackGroups;

        public MappedTrackInfo(java.lang.String[] strArr, int[] iArr, com.google.android.exoplayer2.source.TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
        }

        public int getAdaptiveSupport(int i, int i2, boolean z) {
            int i3 = this.rendererTrackGroups[i].get(i2).length;
            int[] iArr = new int[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int trackSupport = getTrackSupport(i, i2, i5);
                if (trackSupport == 4 || (z && trackSupport == 3)) {
                    iArr[i4] = i5;
                    i4++;
                }
            }
            return getAdaptiveSupport(i, i2, java.util.Arrays.copyOf(iArr, i4));
        }

        public int getAdaptiveSupport(int i, int i2, int[] iArr) {
            int i3 = 0;
            java.lang.String str = null;
            boolean z = false;
            int i4 = 0;
            int iMin = 16;
            while (i3 < iArr.length) {
                java.lang.String str2 = this.rendererTrackGroups[i].get(i2).getFormat(iArr[i3]).sampleMimeType;
                int i5 = i4 + 1;
                if (i4 == 0) {
                    str = str2;
                } else {
                    z |= !com.google.android.exoplayer2.util.Util.areEqual(str, str2);
                }
                iMin = java.lang.Math.min(iMin, this.rendererFormatSupports[i][i2][i3] & 24);
                i3++;
                i4 = i5;
            }
            return z ? java.lang.Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i]) : iMin;
        }

        public int getRendererCount() {
            return this.rendererCount;
        }

        public java.lang.String getRendererName(int i) {
            return this.rendererNames[i];
        }

        public int getRendererSupport(int i) {
            int iMax = 0;
            for (int[] iArr : this.rendererFormatSupports[i]) {
                for (int i2 : iArr) {
                    int i3 = i2 & 7;
                    int i4 = 2;
                    if (i3 == 0 || i3 == 1 || i3 == 2) {
                        i4 = 1;
                    } else if (i3 != 3) {
                        if (i3 == 4) {
                            return 3;
                        }
                        throw new java.lang.IllegalStateException();
                    }
                    iMax = java.lang.Math.max(iMax, i4);
                }
            }
            return iMax;
        }

        public int getRendererType(int i) {
            return this.rendererTrackTypes[i];
        }

        public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups(int i) {
            return this.rendererTrackGroups[i];
        }

        public int getTrackSupport(int i, int i2, int i3) {
            return this.rendererFormatSupports[i][i2][i3] & 7;
        }

        public int getTypeSupport(int i) {
            int iMax = 0;
            for (int i2 = 0; i2 < this.rendererCount; i2++) {
                if (this.rendererTrackTypes[i2] == i) {
                    iMax = java.lang.Math.max(iMax, getRendererSupport(i2));
                }
            }
            return iMax;
        }

        public com.google.android.exoplayer2.source.TrackGroupArray getUnmappedTrackGroups() {
            return this.unmappedTrackGroups;
        }
    }

    public static com.google.android.exoplayer2.TracksInfo buildTracksInfo(com.google.android.exoplayer2.trackselection.TrackSelection[] trackSelectionArr, com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo) {
        d.s.y.l(4, "initialCapacity");
        java.lang.Object[] objArrCopyOf = new java.lang.Object[4];
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < mappedTrackInfo.getRendererCount(); i2++) {
            com.google.android.exoplayer2.source.TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i2);
            com.google.android.exoplayer2.trackselection.TrackSelection trackSelection = trackSelectionArr[i2];
            int i3 = 0;
            while (i3 < trackGroups.length) {
                com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroups.get(i3);
                int i4 = trackGroup.length;
                int[] iArr = new int[i4];
                boolean[] zArr = new boolean[i4];
                for (int i5 = 0; i5 < trackGroup.length; i5++) {
                    iArr[i5] = mappedTrackInfo.getTrackSupport(i2, i3, i5);
                    zArr[i5] = (trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i5) == -1) ? false : true;
                }
                com.google.android.exoplayer2.TracksInfo.TrackGroupInfo trackGroupInfo = new com.google.android.exoplayer2.TracksInfo.TrackGroupInfo(trackGroup, iArr, mappedTrackInfo.getRendererType(i2), zArr);
                int i6 = i + 1;
                if (objArrCopyOf.length < i6) {
                    objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i6));
                } else if (z) {
                    objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
                } else {
                    objArrCopyOf[i] = trackGroupInfo;
                    i3++;
                    i++;
                }
                z = false;
                objArrCopyOf[i] = trackGroupInfo;
                i3++;
                i++;
            }
        }
        com.google.android.exoplayer2.source.TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        int i7 = 0;
        while (i7 < unmappedTrackGroups.length) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup2 = unmappedTrackGroups.get(i7);
            int[] iArr2 = new int[trackGroup2.length];
            java.util.Arrays.fill(iArr2, 0);
            com.google.android.exoplayer2.TracksInfo.TrackGroupInfo trackGroupInfo2 = new com.google.android.exoplayer2.TracksInfo.TrackGroupInfo(trackGroup2, iArr2, com.google.android.exoplayer2.util.MimeTypes.getTrackType(trackGroup2.getFormat(0).sampleMimeType), new boolean[trackGroup2.length]);
            int i8 = i + 1;
            if (objArrCopyOf.length < i8) {
                objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i8));
            } else if (z) {
                objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
            } else {
                objArrCopyOf[i] = trackGroupInfo2;
                i7++;
                i++;
            }
            z = false;
            objArrCopyOf[i] = trackGroupInfo2;
            i7++;
            i++;
        }
        return new com.google.android.exoplayer2.TracksInfo(e.c.b.b.s.i(objArrCopyOf, i));
    }

    public static int findRenderer(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr, com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, boolean z) {
        int length = rendererCapabilitiesArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < rendererCapabilitiesArr.length; i2++) {
            com.google.android.exoplayer2.RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i2];
            int iMax = 0;
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                iMax = java.lang.Math.max(iMax, rendererCapabilities.supportsFormat(trackGroup.getFormat(i3)) & 7);
            }
            boolean z3 = iArr[i2] == 0;
            if (iMax > i || (iMax == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = iMax;
            }
        }
        return length;
    }

    public static int[] getFormatSupport(com.google.android.exoplayer2.RendererCapabilities rendererCapabilities, com.google.android.exoplayer2.source.TrackGroup trackGroup) {
        int[] iArr = new int[trackGroup.length];
        for (int i = 0; i < trackGroup.length; i++) {
            iArr[i] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i));
        }
        return iArr;
    }

    public static int[] getMixedMimeTypeAdaptationSupports(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr) {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = rendererCapabilitiesArr[i].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    public final com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final void onSelectionActivated(java.lang.Object obj) {
        this.currentMappedTrackInfo = (com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo) obj;
    }

    public abstract android.util.Pair<com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.ExoTrackSelection[]> selectTracks(com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline);

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final com.google.android.exoplayer2.trackselection.TrackSelectorResult selectTracks(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        com.google.android.exoplayer2.source.TrackGroup[][] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[length][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = trackGroupArray.length;
            trackGroupArr[i] = new com.google.android.exoplayer2.source.TrackGroup[i2];
            iArr2[i] = new int[i2][];
        }
        int[] mixedMimeTypeAdaptationSupports = getMixedMimeTypeAdaptationSupports(rendererCapabilitiesArr);
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroupArray.get(i3);
            int iFindRenderer = findRenderer(rendererCapabilitiesArr, trackGroup, iArr, com.google.android.exoplayer2.util.MimeTypes.getTrackType(trackGroup.getFormat(0).sampleMimeType) == 5);
            int[] formatSupport = iFindRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[iFindRenderer], trackGroup);
            int i4 = iArr[iFindRenderer];
            trackGroupArr[iFindRenderer][i4] = trackGroup;
            iArr2[iFindRenderer][i4] = formatSupport;
            iArr[iFindRenderer] = iArr[iFindRenderer] + 1;
        }
        com.google.android.exoplayer2.source.TrackGroupArray[] trackGroupArrayArr = new com.google.android.exoplayer2.source.TrackGroupArray[rendererCapabilitiesArr.length];
        java.lang.String[] strArr = new java.lang.String[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i5 = 0; i5 < rendererCapabilitiesArr.length; i5++) {
            int i6 = iArr[i5];
            trackGroupArrayArr[i5] = new com.google.android.exoplayer2.source.TrackGroupArray((com.google.android.exoplayer2.source.TrackGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(trackGroupArr[i5], i6));
            iArr2[i5] = (int[][]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(iArr2[i5], i6);
            strArr[i5] = rendererCapabilitiesArr[i5].getName();
            iArr3[i5] = rendererCapabilitiesArr[i5].getTrackType();
        }
        com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo = new com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo(strArr, iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupports, iArr2, new com.google.android.exoplayer2.source.TrackGroupArray((com.google.android.exoplayer2.source.TrackGroup[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopy(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        android.util.Pair<com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.ExoTrackSelection[]> pairSelectTracks = selectTracks(mappedTrackInfo, iArr2, mixedMimeTypeAdaptationSupports, mediaPeriodId, timeline);
        return new com.google.android.exoplayer2.trackselection.TrackSelectorResult((com.google.android.exoplayer2.RendererConfiguration[]) pairSelectTracks.first, (com.google.android.exoplayer2.trackselection.ExoTrackSelection[]) pairSelectTracks.second, buildTracksInfo((com.google.android.exoplayer2.trackselection.TrackSelection[]) pairSelectTracks.second, mappedTrackInfo), mappedTrackInfo);
    }
}
