package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public class DefaultTrackSelector extends com.google.android.exoplayer2.trackselection.MappingTrackSelector {
    public static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    public final java.util.concurrent.atomic.AtomicReference<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters> parametersReference;
    public final com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory trackSelectionFactory;
    public static final int[] NO_TRACKS = new int[0];
    public static final e.c.b.b.j0<java.lang.Integer> FORMAT_VALUE_ORDERING = e.c.b.b.j0.a(new java.util.Comparator() { // from class: e.c.a.a.p2.d
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            return com.google.android.exoplayer2.trackselection.DefaultTrackSelector.a((java.lang.Integer) obj, (java.lang.Integer) obj2);
        }
    });
    public static final e.c.b.b.j0<java.lang.Integer> NO_ORDER = e.c.b.b.j0.a(new java.util.Comparator() { // from class: e.c.a.a.p2.e
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.b((java.lang.Integer) obj, (java.lang.Integer) obj2);
            return 0;
        }
    });

    public static final class AudioTrackScore implements java.lang.Comparable<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore> {
        public final int bitrate;
        public final int channelCount;
        public final boolean isDefaultSelectionFlag;
        public final boolean isWithinConstraints;
        public final boolean isWithinRendererCapabilities;
        public final java.lang.String language;
        public final int localeLanguageMatchIndex;
        public final int localeLanguageScore;
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters;
        public final int preferredLanguageIndex;
        public final int preferredLanguageScore;
        public final int preferredMimeTypeMatchIndex;
        public final int preferredRoleFlagsScore;
        public final int sampleRate;

        public AudioTrackScore(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, int i) {
            int i2;
            int formatLanguageScore;
            int i3;
            int formatLanguageScore2;
            this.parameters = parameters;
            this.language = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.normalizeUndeterminedLanguageToNull(format.language);
            int i4 = 0;
            this.isWithinRendererCapabilities = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.isSupported(i, false);
            int i5 = 0;
            while (true) {
                i2 = Integer.MAX_VALUE;
                if (i5 >= parameters.preferredAudioLanguages.size()) {
                    i5 = Integer.MAX_VALUE;
                    formatLanguageScore = 0;
                    break;
                } else {
                    formatLanguageScore = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getFormatLanguageScore(format, parameters.preferredAudioLanguages.get(i5), false);
                    if (formatLanguageScore > 0) {
                        break;
                    } else {
                        i5++;
                    }
                }
            }
            this.preferredLanguageIndex = i5;
            this.preferredLanguageScore = formatLanguageScore;
            this.preferredRoleFlagsScore = java.lang.Integer.bitCount(format.roleFlags & parameters.preferredAudioRoleFlags);
            boolean z = true;
            this.isDefaultSelectionFlag = (format.selectionFlags & 1) != 0;
            this.channelCount = format.channelCount;
            this.sampleRate = format.sampleRate;
            int i6 = format.bitrate;
            this.bitrate = i6;
            if ((i6 != -1 && i6 > parameters.maxAudioBitrate) || ((i3 = format.channelCount) != -1 && i3 > parameters.maxAudioChannelCount)) {
                z = false;
            }
            this.isWithinConstraints = z;
            java.lang.String[] systemLanguageCodes = com.google.android.exoplayer2.util.Util.getSystemLanguageCodes();
            int i7 = 0;
            while (true) {
                if (i7 >= systemLanguageCodes.length) {
                    i7 = Integer.MAX_VALUE;
                    formatLanguageScore2 = 0;
                    break;
                } else {
                    formatLanguageScore2 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getFormatLanguageScore(format, systemLanguageCodes[i7], false);
                    if (formatLanguageScore2 > 0) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.localeLanguageMatchIndex = i7;
            this.localeLanguageScore = formatLanguageScore2;
            while (true) {
                if (i4 < parameters.preferredAudioMimeTypes.size()) {
                    java.lang.String str = format.sampleMimeType;
                    if (str != null && str.equals(parameters.preferredAudioMimeTypes.get(i4))) {
                        i2 = i4;
                        break;
                    }
                    i4++;
                } else {
                    break;
                }
            }
            this.preferredMimeTypeMatchIndex = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore audioTrackScore) {
            e.c.b.b.j0 j0VarB = (this.isWithinConstraints && this.isWithinRendererCapabilities) ? com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING : com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING.b();
            e.c.b.b.p pVarC = e.c.b.b.p.a.d(this.isWithinRendererCapabilities, audioTrackScore.isWithinRendererCapabilities).c(java.lang.Integer.valueOf(this.preferredLanguageIndex), java.lang.Integer.valueOf(audioTrackScore.preferredLanguageIndex), e.c.b.b.n0.a).a(this.preferredLanguageScore, audioTrackScore.preferredLanguageScore).a(this.preferredRoleFlagsScore, audioTrackScore.preferredRoleFlagsScore).d(this.isWithinConstraints, audioTrackScore.isWithinConstraints).c(java.lang.Integer.valueOf(this.preferredMimeTypeMatchIndex), java.lang.Integer.valueOf(audioTrackScore.preferredMimeTypeMatchIndex), e.c.b.b.n0.a).c(java.lang.Integer.valueOf(this.bitrate), java.lang.Integer.valueOf(audioTrackScore.bitrate), this.parameters.forceLowestBitrate ? com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING.b() : com.google.android.exoplayer2.trackselection.DefaultTrackSelector.NO_ORDER).d(this.isDefaultSelectionFlag, audioTrackScore.isDefaultSelectionFlag).c(java.lang.Integer.valueOf(this.localeLanguageMatchIndex), java.lang.Integer.valueOf(audioTrackScore.localeLanguageMatchIndex), e.c.b.b.n0.a).a(this.localeLanguageScore, audioTrackScore.localeLanguageScore).c(java.lang.Integer.valueOf(this.channelCount), java.lang.Integer.valueOf(audioTrackScore.channelCount), j0VarB).c(java.lang.Integer.valueOf(this.sampleRate), java.lang.Integer.valueOf(audioTrackScore.sampleRate), j0VarB);
            java.lang.Integer numValueOf = java.lang.Integer.valueOf(this.bitrate);
            java.lang.Integer numValueOf2 = java.lang.Integer.valueOf(audioTrackScore.bitrate);
            if (!com.google.android.exoplayer2.util.Util.areEqual(this.language, audioTrackScore.language)) {
                j0VarB = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.NO_ORDER;
            }
            return pVarC.c(numValueOf, numValueOf2, j0VarB).f();
        }
    }

    public static final class OtherTrackScore implements java.lang.Comparable<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.OtherTrackScore> {
        public final boolean isDefault;
        public final boolean isWithinRendererCapabilities;

        public OtherTrackScore(com.google.android.exoplayer2.Format format, int i) {
            this.isDefault = (format.selectionFlags & 1) != 0;
            this.isWithinRendererCapabilities = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.isSupported(i, false);
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.OtherTrackScore otherTrackScore) {
            return e.c.b.b.p.a.d(this.isWithinRendererCapabilities, otherTrackScore.isWithinRendererCapabilities).d(this.isDefault, otherTrackScore.isDefault).f();
        }
    }

    public static final class Parameters extends com.google.android.exoplayer2.trackselection.TrackSelectionParameters implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters> CREATOR;

        @java.lang.Deprecated
        public static final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters DEFAULT;
        public static final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters DEFAULT_WITHOUT_CONTEXT;
        public static final int FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS = 1006;
        public static final int FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS = 1004;
        public static final int FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS = 1005;
        public static final int FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS = 1010;
        public static final int FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS = 1001;
        public static final int FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS = 1002;
        public static final int FIELD_DISABLED_TEXT_TRACK_SELECTION_FLAGS = 1007;
        public static final int FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NCESSARY = 1003;
        public static final int FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY = 1008;
        public static final int FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY = 1000;
        public static final int FIELD_RENDERER_DISABLED_INDEXES = 1014;
        public static final int FIELD_SELECTION_OVERRIDES = 1013;
        public static final int FIELD_SELECTION_OVERRIDES_RENDERER_INDEXES = 1011;
        public static final int FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS = 1012;
        public static final int FIELD_TUNNELING_ENABLED = 1009;
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final int disabledTextTrackSelectionFlags;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final android.util.SparseBooleanArray rendererDisabledFlags;
        public final android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> selectionOverrides;
        public final boolean tunnelingEnabled;

        static {
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parametersBuild = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder().build();
            DEFAULT_WITHOUT_CONTEXT = parametersBuild;
            DEFAULT = parametersBuild;
            CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p2.b
                @Override // com.google.android.exoplayer2.Bundleable.Creator
                public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                    return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder(bundle).build();
                }
            };
        }

        public Parameters(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder parametersBuilder) {
            super(parametersBuilder);
            this.exceedVideoConstraintsIfNecessary = parametersBuilder.exceedVideoConstraintsIfNecessary;
            this.allowVideoMixedMimeTypeAdaptiveness = parametersBuilder.allowVideoMixedMimeTypeAdaptiveness;
            this.allowVideoNonSeamlessAdaptiveness = parametersBuilder.allowVideoNonSeamlessAdaptiveness;
            this.exceedAudioConstraintsIfNecessary = parametersBuilder.exceedAudioConstraintsIfNecessary;
            this.allowAudioMixedMimeTypeAdaptiveness = parametersBuilder.allowAudioMixedMimeTypeAdaptiveness;
            this.allowAudioMixedSampleRateAdaptiveness = parametersBuilder.allowAudioMixedSampleRateAdaptiveness;
            this.allowAudioMixedChannelCountAdaptiveness = parametersBuilder.allowAudioMixedChannelCountAdaptiveness;
            this.disabledTextTrackSelectionFlags = parametersBuilder.disabledTextTrackSelectionFlags;
            this.exceedRendererCapabilitiesIfNecessary = parametersBuilder.exceedRendererCapabilitiesIfNecessary;
            this.tunnelingEnabled = parametersBuilder.tunnelingEnabled;
            this.allowMultipleAdaptiveSelections = parametersBuilder.allowMultipleAdaptiveSelections;
            this.selectionOverrides = parametersBuilder.selectionOverrides;
            this.rendererDisabledFlags = parametersBuilder.rendererDisabledFlags;
        }

        public static boolean areRendererDisabledFlagsEqual(android.util.SparseBooleanArray sparseBooleanArray, android.util.SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        public static boolean areSelectionOverridesEqual(android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> sparseArray, android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (iIndexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i), sparseArray2.valueAt(iIndexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        public static boolean areSelectionOverridesEqual(java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map, java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (java.util.Map.Entry<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> entry : map.entrySet()) {
                com.google.android.exoplayer2.source.TrackGroupArray key = entry.getKey();
                if (!map2.containsKey(key) || !com.google.android.exoplayer2.util.Util.areEqual(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        public static com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters getDefaults(android.content.Context context) {
            return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder(context).build();
        }

        public static int[] getKeysFromSparseBooleanArray(android.util.SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i = 0; i < sparseBooleanArray.size(); i++) {
                iArr[i] = sparseBooleanArray.keyAt(i);
            }
            return iArr;
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public static void putSelectionOverridesToBundle(android.os.Bundle bundle, android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> sparseArray) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            android.util.SparseArray sparseArray2 = new android.util.SparseArray();
            for (int i = 0; i < sparseArray.size(); i++) {
                int iKeyAt = sparseArray.keyAt(i);
                for (java.util.Map.Entry<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> entry : sparseArray.valueAt(i).entrySet()) {
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(java.lang.Integer.valueOf(iKeyAt));
                }
                bundle.putIntArray(keyForField(1011), d.s.y.a0(arrayList));
                bundle.putParcelableArrayList(keyForField(1012), com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(arrayList2));
                bundle.putSparseParcelableArray(keyForField(1013), com.google.android.exoplayer2.util.BundleableUtil.toBundleSparseArray(sparseArray2));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder buildUpon() {
            return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder(this);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters = (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters) obj;
            return super.equals(parameters) && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.disabledTextTrackSelectionFlags == parameters.disabledTextTrackSelectionFlags && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == parameters.tunnelingEnabled && this.allowMultipleAdaptiveSelections == parameters.allowMultipleAdaptiveSelections && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides);
        }

        public final boolean getRendererDisabled(int i) {
            return this.rendererDisabledFlags.get(i);
        }

        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride getSelectionOverride(int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray) {
            java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        public final boolean hasSelectionOverride(int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray) {
            java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map = this.selectionOverrides.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return ((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = super.toBundle();
            bundle.putBoolean(keyForField(1000), this.exceedVideoConstraintsIfNecessary);
            bundle.putBoolean(keyForField(1001), this.allowVideoMixedMimeTypeAdaptiveness);
            bundle.putBoolean(keyForField(1002), this.allowVideoNonSeamlessAdaptiveness);
            bundle.putBoolean(keyForField(1003), this.exceedAudioConstraintsIfNecessary);
            bundle.putBoolean(keyForField(1004), this.allowAudioMixedMimeTypeAdaptiveness);
            bundle.putBoolean(keyForField(1005), this.allowAudioMixedSampleRateAdaptiveness);
            bundle.putBoolean(keyForField(1006), this.allowAudioMixedChannelCountAdaptiveness);
            bundle.putInt(keyForField(1007), this.disabledTextTrackSelectionFlags);
            bundle.putBoolean(keyForField(1008), this.exceedRendererCapabilitiesIfNecessary);
            bundle.putBoolean(keyForField(1009), this.tunnelingEnabled);
            bundle.putBoolean(keyForField(1010), this.allowMultipleAdaptiveSelections);
            putSelectionOverridesToBundle(bundle, this.selectionOverrides);
            bundle.putIntArray(keyForField(1014), getKeysFromSparseBooleanArray(this.rendererDisabledFlags));
            return bundle;
        }
    }

    public static final class ParametersBuilder extends com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder {
        public boolean allowAudioMixedChannelCountAdaptiveness;
        public boolean allowAudioMixedMimeTypeAdaptiveness;
        public boolean allowAudioMixedSampleRateAdaptiveness;
        public boolean allowMultipleAdaptiveSelections;
        public boolean allowVideoMixedMimeTypeAdaptiveness;
        public boolean allowVideoNonSeamlessAdaptiveness;
        public int disabledTextTrackSelectionFlags;
        public boolean exceedAudioConstraintsIfNecessary;
        public boolean exceedRendererCapabilitiesIfNecessary;
        public boolean exceedVideoConstraintsIfNecessary;
        public final android.util.SparseBooleanArray rendererDisabledFlags;
        public final android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> selectionOverrides;
        public boolean tunnelingEnabled;

        @java.lang.Deprecated
        public ParametersBuilder() {
            this.selectionOverrides = new android.util.SparseArray<>();
            this.rendererDisabledFlags = new android.util.SparseBooleanArray();
            init();
        }

        public ParametersBuilder(android.content.Context context) {
            super(context);
            this.selectionOverrides = new android.util.SparseArray<>();
            this.rendererDisabledFlags = new android.util.SparseBooleanArray();
            init();
        }

        public ParametersBuilder(android.os.Bundle bundle) {
            super(bundle);
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT;
            setExceedVideoConstraintsIfNecessary(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1000), parameters.exceedVideoConstraintsIfNecessary));
            setAllowVideoMixedMimeTypeAdaptiveness(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1001), parameters.allowVideoMixedMimeTypeAdaptiveness));
            setAllowVideoNonSeamlessAdaptiveness(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1002), parameters.allowVideoNonSeamlessAdaptiveness));
            setExceedAudioConstraintsIfNecessary(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1003), parameters.exceedAudioConstraintsIfNecessary));
            setAllowAudioMixedMimeTypeAdaptiveness(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1004), parameters.allowAudioMixedMimeTypeAdaptiveness));
            setAllowAudioMixedSampleRateAdaptiveness(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1005), parameters.allowAudioMixedSampleRateAdaptiveness));
            setAllowAudioMixedChannelCountAdaptiveness(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1006), parameters.allowAudioMixedChannelCountAdaptiveness));
            setDisabledTextTrackSelectionFlags(bundle.getInt(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1007), parameters.disabledTextTrackSelectionFlags));
            setExceedRendererCapabilitiesIfNecessary(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1008), parameters.exceedRendererCapabilitiesIfNecessary));
            setTunnelingEnabled(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1009), parameters.tunnelingEnabled));
            setAllowMultipleAdaptiveSelections(bundle.getBoolean(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1010), parameters.allowMultipleAdaptiveSelections));
            this.selectionOverrides = new android.util.SparseArray<>();
            setSelectionOverridesFromBundle(bundle);
            this.rendererDisabledFlags = makeSparseBooleanArrayFromTrueKeys(bundle.getIntArray(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1014)));
        }

        public ParametersBuilder(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
            super(parameters);
            this.disabledTextTrackSelectionFlags = parameters.disabledTextTrackSelectionFlags;
            this.exceedVideoConstraintsIfNecessary = parameters.exceedVideoConstraintsIfNecessary;
            this.allowVideoMixedMimeTypeAdaptiveness = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.allowVideoNonSeamlessAdaptiveness = parameters.allowVideoNonSeamlessAdaptiveness;
            this.exceedAudioConstraintsIfNecessary = parameters.exceedAudioConstraintsIfNecessary;
            this.allowAudioMixedMimeTypeAdaptiveness = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.allowAudioMixedSampleRateAdaptiveness = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.allowAudioMixedChannelCountAdaptiveness = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.exceedRendererCapabilitiesIfNecessary = parameters.exceedRendererCapabilitiesIfNecessary;
            this.tunnelingEnabled = parameters.tunnelingEnabled;
            this.allowMultipleAdaptiveSelections = parameters.allowMultipleAdaptiveSelections;
            this.selectionOverrides = cloneSelectionOverrides(parameters.selectionOverrides);
            this.rendererDisabledFlags = parameters.rendererDisabledFlags.clone();
        }

        public static android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> cloneSelectionOverrides(android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> sparseArray) {
            android.util.SparseArray<java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride>> sparseArray2 = new android.util.SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new java.util.HashMap(sparseArray.valueAt(i)));
            }
            return sparseArray2;
        }

        private void init() {
            this.exceedVideoConstraintsIfNecessary = true;
            this.allowVideoMixedMimeTypeAdaptiveness = false;
            this.allowVideoNonSeamlessAdaptiveness = true;
            this.exceedAudioConstraintsIfNecessary = true;
            this.allowAudioMixedMimeTypeAdaptiveness = false;
            this.allowAudioMixedSampleRateAdaptiveness = false;
            this.allowAudioMixedChannelCountAdaptiveness = false;
            this.disabledTextTrackSelectionFlags = 0;
            this.exceedRendererCapabilitiesIfNecessary = true;
            this.tunnelingEnabled = false;
            this.allowMultipleAdaptiveSelections = true;
        }

        private android.util.SparseBooleanArray makeSparseBooleanArrayFromTrueKeys(int[] iArr) {
            if (iArr == null) {
                return new android.util.SparseBooleanArray();
            }
            android.util.SparseBooleanArray sparseBooleanArray = new android.util.SparseBooleanArray(iArr.length);
            for (int i : iArr) {
                sparseBooleanArray.append(i, true);
            }
            return sparseBooleanArray;
        }

        private void setSelectionOverridesFromBundle(android.os.Bundle bundle) {
            int[] intArray = bundle.getIntArray(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1011));
            java.util.List listFromBundleNullableList = com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableList(com.google.android.exoplayer2.source.TrackGroupArray.CREATOR, bundle.getParcelableArrayList(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1012)), e.c.b.b.s.p());
            android.util.SparseArray sparseArrayFromBundleNullableSparseArray = com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableSparseArray(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.CREATOR, bundle.getSparseParcelableArray(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.keyForField(1013)), new android.util.SparseArray());
            if (intArray == null || intArray.length != listFromBundleNullableList.size()) {
                return;
            }
            for (int i = 0; i < intArray.length; i++) {
                setSelectionOverride(intArray[i], (com.google.android.exoplayer2.source.TrackGroupArray) listFromBundleNullableList.get(i), (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride) sparseArrayFromBundleNullableSparseArray.get(i));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters build() {
            return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters(this);
        }

        @java.lang.Deprecated
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder clearSelectionOverride(int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray) {
            java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.selectionOverrides.remove(i);
                }
            }
            return this;
        }

        @java.lang.Deprecated
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder clearSelectionOverrides() {
            if (this.selectionOverrides.size() == 0) {
                return this;
            }
            this.selectionOverrides.clear();
            return this;
        }

        @java.lang.Deprecated
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder clearSelectionOverrides(int i) {
            java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null && !map.isEmpty()) {
                this.selectionOverrides.remove(i);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder clearVideoSizeConstraints() {
            super.clearVideoSizeConstraints();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder clearViewportSizeConstraints() {
            super.clearViewportSizeConstraints();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder set(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
            super.set(trackSelectionParameters);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowAudioMixedChannelCountAdaptiveness(boolean z) {
            this.allowAudioMixedChannelCountAdaptiveness = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowAudioMixedMimeTypeAdaptiveness(boolean z) {
            this.allowAudioMixedMimeTypeAdaptiveness = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowAudioMixedSampleRateAdaptiveness(boolean z) {
            this.allowAudioMixedSampleRateAdaptiveness = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowMultipleAdaptiveSelections(boolean z) {
            this.allowMultipleAdaptiveSelections = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowVideoMixedMimeTypeAdaptiveness(boolean z) {
            this.allowVideoMixedMimeTypeAdaptiveness = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setAllowVideoNonSeamlessAdaptiveness(boolean z) {
            this.allowVideoNonSeamlessAdaptiveness = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setDisabledTextTrackSelectionFlags(int i) {
            this.disabledTextTrackSelectionFlags = i;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setDisabledTrackTypes(java.util.Set<java.lang.Integer> set) {
            super.setDisabledTrackTypes(set);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public /* bridge */ /* synthetic */ com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder setDisabledTrackTypes(java.util.Set set) {
            return setDisabledTrackTypes((java.util.Set<java.lang.Integer>) set);
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setExceedAudioConstraintsIfNecessary(boolean z) {
            this.exceedAudioConstraintsIfNecessary = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z) {
            this.exceedRendererCapabilitiesIfNecessary = z;
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z) {
            this.exceedVideoConstraintsIfNecessary = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setForceHighestSupportedBitrate(boolean z) {
            super.setForceHighestSupportedBitrate(z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setForceLowestBitrate(boolean z) {
            super.setForceLowestBitrate(z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxAudioBitrate(int i) {
            super.setMaxAudioBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxAudioChannelCount(int i) {
            super.setMaxAudioChannelCount(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxVideoBitrate(int i) {
            super.setMaxVideoBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxVideoFrameRate(int i) {
            super.setMaxVideoFrameRate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxVideoSize(int i, int i2) {
            super.setMaxVideoSize(i, i2);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMaxVideoSizeSd() {
            super.setMaxVideoSizeSd();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMinVideoBitrate(int i) {
            super.setMinVideoBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMinVideoFrameRate(int i) {
            super.setMinVideoFrameRate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setMinVideoSize(int i, int i2) {
            super.setMinVideoSize(i, i2);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredAudioLanguage(java.lang.String str) {
            super.setPreferredAudioLanguage(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredAudioLanguages(java.lang.String... strArr) {
            super.setPreferredAudioLanguages(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredAudioMimeType(java.lang.String str) {
            super.setPreferredAudioMimeType(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredAudioMimeTypes(java.lang.String... strArr) {
            super.setPreferredAudioMimeTypes(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredAudioRoleFlags(int i) {
            super.setPreferredAudioRoleFlags(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredTextLanguage(java.lang.String str) {
            super.setPreferredTextLanguage(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(android.content.Context context) {
            super.setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(context);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredTextLanguages(java.lang.String... strArr) {
            super.setPreferredTextLanguages(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredTextRoleFlags(int i) {
            super.setPreferredTextRoleFlags(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredVideoMimeType(java.lang.String str) {
            super.setPreferredVideoMimeType(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setPreferredVideoMimeTypes(java.lang.String... strArr) {
            super.setPreferredVideoMimeTypes(strArr);
            return this;
        }

        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setRendererDisabled(int i, boolean z) {
            if (this.rendererDisabledFlags.get(i) == z) {
                return this;
            }
            if (z) {
                this.rendererDisabledFlags.put(i, true);
            } else {
                this.rendererDisabledFlags.delete(i);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setSelectUndeterminedTextLanguage(boolean z) {
            super.setSelectUndeterminedTextLanguage(z);
            return this;
        }

        @java.lang.Deprecated
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setSelectionOverride(int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride selectionOverride) {
            java.util.Map<com.google.android.exoplayer2.source.TrackGroupArray, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> map = this.selectionOverrides.get(i);
            if (map == null) {
                map = new java.util.HashMap<>();
                this.selectionOverrides.put(i, map);
            }
            if (map.containsKey(trackGroupArray) && com.google.android.exoplayer2.util.Util.areEqual(map.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setTrackSelectionOverrides(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides trackSelectionOverrides) {
            super.setTrackSelectionOverrides(trackSelectionOverrides);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setTunnelingEnabled(boolean z) {
            this.tunnelingEnabled = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setViewportSize(int i, int i2, boolean z) {
            super.setViewportSize(i, i2, z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder setViewportSizeToPhysicalDisplaySize(android.content.Context context, boolean z) {
            super.setViewportSizeToPhysicalDisplaySize(context, z);
            return this;
        }
    }

    public static final class SelectionOverride implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p2.c
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.a(bundle);
            }
        };
        public static final int FIELD_GROUP_INDEX = 0;
        public static final int FIELD_TRACKS = 1;
        public static final int FIELD_TRACK_TYPE = 2;
        public final int groupIndex;
        public final int length;
        public final int[] tracks;
        public final int type;

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 0);
        }

        public SelectionOverride(int i, int[] iArr, int i2) {
            this.groupIndex = i;
            int[] iArrCopyOf = java.util.Arrays.copyOf(iArr, iArr.length);
            this.tracks = iArrCopyOf;
            this.length = iArr.length;
            this.type = i2;
            java.util.Arrays.sort(iArrCopyOf);
        }

        public static /* synthetic */ com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride a(android.os.Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(keyForField(0), -1);
            int[] intArray = bundle.getIntArray(keyForField(1));
            int i2 = bundle.getInt(keyForField(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            com.google.android.exoplayer2.util.Assertions.checkArgument(z);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(intArray);
            return new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride(i, intArray, i2);
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public boolean containsTrack(int i) {
            for (int i2 : this.tracks) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride selectionOverride = (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && java.util.Arrays.equals(this.tracks, selectionOverride.tracks) && this.type == selectionOverride.type;
        }

        public int hashCode() {
            return ((java.util.Arrays.hashCode(this.tracks) + (this.groupIndex * 31)) * 31) + this.type;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putInt(keyForField(0), this.groupIndex);
            bundle.putIntArray(keyForField(1), this.tracks);
            bundle.putInt(keyForField(2), this.type);
            return bundle;
        }
    }

    public static final class TextTrackScore implements java.lang.Comparable<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore> {
        public final boolean hasCaptionRoleFlags;
        public final boolean isDefault;
        public final boolean isForced;
        public final boolean isWithinConstraints;
        public final boolean isWithinRendererCapabilities;
        public final int preferredLanguageIndex;
        public final int preferredLanguageScore;
        public final int preferredRoleFlagsScore;
        public final int selectedAudioLanguageScore;

        public TextTrackScore(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, int i, java.lang.String str) {
            int formatLanguageScore;
            boolean z = false;
            this.isWithinRendererCapabilities = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.isSupported(i, false);
            int i2 = format.selectionFlags & (parameters.disabledTextTrackSelectionFlags ^ (-1));
            this.isDefault = (i2 & 1) != 0;
            this.isForced = (i2 & 2) != 0;
            int i3 = Integer.MAX_VALUE;
            e.c.b.b.s<java.lang.String> sVarQ = parameters.preferredTextLanguages.isEmpty() ? e.c.b.b.s.q("") : parameters.preferredTextLanguages;
            int i4 = 0;
            while (true) {
                if (i4 >= sVarQ.size()) {
                    formatLanguageScore = 0;
                    break;
                }
                formatLanguageScore = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getFormatLanguageScore(format, sVarQ.get(i4), parameters.selectUndeterminedTextLanguage);
                if (formatLanguageScore > 0) {
                    i3 = i4;
                    break;
                }
                i4++;
            }
            this.preferredLanguageIndex = i3;
            this.preferredLanguageScore = formatLanguageScore;
            this.preferredRoleFlagsScore = java.lang.Integer.bitCount(format.roleFlags & parameters.preferredTextRoleFlags);
            this.hasCaptionRoleFlags = (format.roleFlags & 1088) != 0;
            this.selectedAudioLanguageScore = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getFormatLanguageScore(format, str, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.normalizeUndeterminedLanguageToNull(str) == null);
            if (this.preferredLanguageScore > 0 || ((parameters.preferredTextLanguages.isEmpty() && this.preferredRoleFlagsScore > 0) || this.isDefault || (this.isForced && this.selectedAudioLanguageScore > 0))) {
                z = true;
            }
            this.isWithinConstraints = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore textTrackScore) {
            e.c.b.b.p pVarA = e.c.b.b.p.a.d(this.isWithinRendererCapabilities, textTrackScore.isWithinRendererCapabilities).c(java.lang.Integer.valueOf(this.preferredLanguageIndex), java.lang.Integer.valueOf(textTrackScore.preferredLanguageIndex), e.c.b.b.n0.a).a(this.preferredLanguageScore, textTrackScore.preferredLanguageScore).a(this.preferredRoleFlagsScore, textTrackScore.preferredRoleFlagsScore).d(this.isDefault, textTrackScore.isDefault).c(java.lang.Boolean.valueOf(this.isForced), java.lang.Boolean.valueOf(textTrackScore.isForced), this.preferredLanguageScore == 0 ? e.c.b.b.i0.a : e.c.b.b.n0.a).a(this.selectedAudioLanguageScore, textTrackScore.selectedAudioLanguageScore);
            if (this.preferredRoleFlagsScore == 0) {
                pVarA = pVarA.e(this.hasCaptionRoleFlags, textTrackScore.hasCaptionRoleFlags);
            }
            return pVarA.f();
        }
    }

    public static final class VideoTrackScore implements java.lang.Comparable<com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore> {
        public final int bitrate;
        public final boolean isWithinMaxConstraints;
        public final boolean isWithinMinConstraints;
        public final boolean isWithinRendererCapabilities;
        public final com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters;
        public final int pixelCount;
        public final int preferredMimeTypeMatchIndex;

        /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public VideoTrackScore(com.google.android.exoplayer2.Format r7, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r8, int r9, boolean r10) {
            /*
                r6 = this;
                r6.<init>()
                r6.parameters = r8
                r0 = -1082130432(0xffffffffbf800000, float:-1.0)
                r1 = 1
                r2 = 0
                r3 = -1
                if (r10 == 0) goto L33
                int r4 = r7.width
                if (r4 == r3) goto L14
                int r5 = r8.maxVideoWidth
                if (r4 > r5) goto L33
            L14:
                int r4 = r7.height
                if (r4 == r3) goto L1c
                int r5 = r8.maxVideoHeight
                if (r4 > r5) goto L33
            L1c:
                float r4 = r7.frameRate
                int r5 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r5 == 0) goto L29
                int r5 = r8.maxVideoFrameRate
                float r5 = (float) r5
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 > 0) goto L33
            L29:
                int r4 = r7.bitrate
                if (r4 == r3) goto L31
                int r5 = r8.maxVideoBitrate
                if (r4 > r5) goto L33
            L31:
                r4 = 1
                goto L34
            L33:
                r4 = 0
            L34:
                r6.isWithinMaxConstraints = r4
                if (r10 == 0) goto L5e
                int r10 = r7.width
                if (r10 == r3) goto L40
                int r4 = r8.minVideoWidth
                if (r10 < r4) goto L5e
            L40:
                int r10 = r7.height
                if (r10 == r3) goto L48
                int r4 = r8.minVideoHeight
                if (r10 < r4) goto L5e
            L48:
                float r10 = r7.frameRate
                int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r0 == 0) goto L55
                int r0 = r8.minVideoFrameRate
                float r0 = (float) r0
                int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r10 < 0) goto L5e
            L55:
                int r10 = r7.bitrate
                if (r10 == r3) goto L5f
                int r0 = r8.minVideoBitrate
                if (r10 < r0) goto L5e
                goto L5f
            L5e:
                r1 = 0
            L5f:
                r6.isWithinMinConstraints = r1
                boolean r9 = com.google.android.exoplayer2.trackselection.DefaultTrackSelector.isSupported(r9, r2)
                r6.isWithinRendererCapabilities = r9
                int r9 = r7.bitrate
                r6.bitrate = r9
                int r9 = r7.getPixelCount()
                r6.pixelCount = r9
                r9 = 2147483647(0x7fffffff, float:NaN)
            L74:
                e.c.b.b.s<java.lang.String> r10 = r8.preferredVideoMimeTypes
                int r10 = r10.size()
                if (r2 >= r10) goto L91
                java.lang.String r10 = r7.sampleMimeType
                if (r10 == 0) goto L8e
                e.c.b.b.s<java.lang.String> r0 = r8.preferredVideoMimeTypes
                java.lang.Object r0 = r0.get(r2)
                boolean r10 = r10.equals(r0)
                if (r10 == 0) goto L8e
                r9 = r2
                goto L91
            L8e:
                int r2 = r2 + 1
                goto L74
            L91:
                r6.preferredMimeTypeMatchIndex = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore.<init>(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, boolean):void");
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore videoTrackScore) {
            e.c.b.b.j0 j0VarB = (this.isWithinMaxConstraints && this.isWithinRendererCapabilities) ? com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING : com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING.b();
            return e.c.b.b.p.a.d(this.isWithinRendererCapabilities, videoTrackScore.isWithinRendererCapabilities).d(this.isWithinMaxConstraints, videoTrackScore.isWithinMaxConstraints).d(this.isWithinMinConstraints, videoTrackScore.isWithinMinConstraints).c(java.lang.Integer.valueOf(this.preferredMimeTypeMatchIndex), java.lang.Integer.valueOf(videoTrackScore.preferredMimeTypeMatchIndex), e.c.b.b.n0.a).c(java.lang.Integer.valueOf(this.bitrate), java.lang.Integer.valueOf(videoTrackScore.bitrate), this.parameters.forceLowestBitrate ? com.google.android.exoplayer2.trackselection.DefaultTrackSelector.FORMAT_VALUE_ORDERING.b() : com.google.android.exoplayer2.trackselection.DefaultTrackSelector.NO_ORDER).c(java.lang.Integer.valueOf(this.pixelCount), java.lang.Integer.valueOf(videoTrackScore.pixelCount), j0VarB).c(java.lang.Integer.valueOf(this.bitrate), java.lang.Integer.valueOf(videoTrackScore.bitrate), j0VarB).f();
        }
    }

    @java.lang.Deprecated
    public DefaultTrackSelector() {
        this(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT, new com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.Factory());
    }

    public DefaultTrackSelector(android.content.Context context) {
        this(context, new com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.Factory());
    }

    public DefaultTrackSelector(android.content.Context context, com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory factory) {
        this(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.getDefaults(context), factory);
    }

    public DefaultTrackSelector(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory factory) {
        this.trackSelectionFactory = factory;
        this.parametersReference = new java.util.concurrent.atomic.AtomicReference<>(parameters);
    }

    @java.lang.Deprecated
    public DefaultTrackSelector(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory factory) {
        this(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT, factory);
    }

    public static /* synthetic */ int a(java.lang.Integer num, java.lang.Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    public static /* synthetic */ int b(java.lang.Integer num, java.lang.Integer num2) {
        return 0;
    }

    public static void filterAdaptiveVideoTrackCountForMimeType(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, java.lang.String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, java.util.List<java.lang.Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int iIntValue = list.get(size).intValue();
            if (!isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                list.remove(size);
            }
        }
    }

    public static int[] getAdaptiveAudioTracks(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3) {
        com.google.android.exoplayer2.Format format = trackGroup.getFormat(i);
        int[] iArr2 = new int[trackGroup.length];
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroup.length; i4++) {
            if (i4 == i || isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i4), iArr[i4], format, i2, z, z2, z3)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return java.util.Arrays.copyOf(iArr2, i3);
    }

    public static int getAdaptiveVideoTrackCountForMimeType(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, java.lang.String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, java.util.List<java.lang.Integer> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int iIntValue = list.get(i11).intValue();
            if (isSupportedAdaptiveVideoTrack(trackGroup.getFormat(iIntValue), str, iArr[iIntValue], i, i2, i3, i4, i5, i6, i7, i8, i9)) {
                i10++;
            }
        }
        return i10;
    }

    public static int[] getAdaptiveVideoTracksForGroup(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z2) {
        java.lang.String str;
        int i12;
        int i13;
        java.util.HashSet hashSet;
        if (trackGroup.length < 2) {
            return NO_TRACKS;
        }
        java.util.List<java.lang.Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup, i10, i11, z2);
        if (viewportFilteredTrackIndices.size() < 2) {
            return NO_TRACKS;
        }
        if (z) {
            str = null;
        } else {
            java.util.HashSet hashSet2 = new java.util.HashSet();
            java.lang.String str2 = null;
            int i14 = 0;
            int i15 = 0;
            while (i15 < viewportFilteredTrackIndices.size()) {
                java.lang.String str3 = trackGroup.getFormat(viewportFilteredTrackIndices.get(i15).intValue()).sampleMimeType;
                if (hashSet2.add(str3)) {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                    int adaptiveVideoTrackCountForMimeType = getAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str3, i2, i3, i4, i5, i6, i7, i8, i9, viewportFilteredTrackIndices);
                    if (adaptiveVideoTrackCountForMimeType > i12) {
                        i14 = adaptiveVideoTrackCountForMimeType;
                        str2 = str3;
                    }
                    i15 = i13 + 1;
                    hashSet2 = hashSet;
                } else {
                    i12 = i14;
                    i13 = i15;
                    hashSet = hashSet2;
                }
                i14 = i12;
                i15 = i13 + 1;
                hashSet2 = hashSet;
            }
            str = str2;
        }
        filterAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str, i2, i3, i4, i5, i6, i7, i8, i9, viewportFilteredTrackIndices);
        return viewportFilteredTrackIndices.size() < 2 ? NO_TRACKS : d.s.y.a0(viewportFilteredTrackIndices);
    }

    public static int getFormatLanguageScore(com.google.android.exoplayer2.Format format, java.lang.String str, boolean z) {
        if (!android.text.TextUtils.isEmpty(str) && str.equals(format.language)) {
            return 4;
        }
        java.lang.String strNormalizeUndeterminedLanguageToNull = normalizeUndeterminedLanguageToNull(str);
        java.lang.String strNormalizeUndeterminedLanguageToNull2 = normalizeUndeterminedLanguageToNull(format.language);
        if (strNormalizeUndeterminedLanguageToNull2 == null || strNormalizeUndeterminedLanguageToNull == null) {
            return (z && strNormalizeUndeterminedLanguageToNull2 == null) ? 1 : 0;
        }
        if (strNormalizeUndeterminedLanguageToNull2.startsWith(strNormalizeUndeterminedLanguageToNull) || strNormalizeUndeterminedLanguageToNull.startsWith(strNormalizeUndeterminedLanguageToNull2)) {
            return 3;
        }
        return com.google.android.exoplayer2.util.Util.splitAtFirst(strNormalizeUndeterminedLanguageToNull2, "-")[0].equals(com.google.android.exoplayer2.util.Util.splitAtFirst(strNormalizeUndeterminedLanguageToNull, "-")[0]) ? 2 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point getMaxVideoSizeInViewport(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    public static java.util.List<java.lang.Integer> getViewportFilteredTrackIndices(com.google.android.exoplayer2.source.TrackGroup trackGroup, int i, int i2, boolean z) {
        int i3;
        java.util.ArrayList arrayList = new java.util.ArrayList(trackGroup.length);
        for (int i4 = 0; i4 < trackGroup.length; i4++) {
            arrayList.add(java.lang.Integer.valueOf(i4));
        }
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < trackGroup.length; i6++) {
                com.google.android.exoplayer2.Format format = trackGroup.getFormat(i6);
                int i7 = format.width;
                if (i7 > 0 && (i3 = format.height) > 0) {
                    android.graphics.Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z, i, i2, i7, i3);
                    int i8 = format.width;
                    int i9 = format.height;
                    int i10 = i8 * i9;
                    if (i8 >= ((int) (maxVideoSizeInViewport.x * 0.98f)) && i9 >= ((int) (maxVideoSizeInViewport.y * 0.98f)) && i10 < i5) {
                        i5 = i10;
                    }
                }
            }
            if (i5 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((java.lang.Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i5) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean isSupported(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    public static boolean isSupportedAdaptiveAudioTrack(com.google.android.exoplayer2.Format format, int i, com.google.android.exoplayer2.Format format2, int i2, boolean z, boolean z2, boolean z3) {
        int i3;
        int i4;
        java.lang.String str;
        int i5;
        if (!isSupported(i, false) || (i3 = format.bitrate) == -1 || i3 > i2) {
            return false;
        }
        if (!z3 && ((i5 = format.channelCount) == -1 || i5 != format2.channelCount)) {
            return false;
        }
        if (z || ((str = format.sampleMimeType) != null && android.text.TextUtils.equals(str, format2.sampleMimeType))) {
            return z2 || ((i4 = format.sampleRate) != -1 && i4 == format2.sampleRate);
        }
        return false;
    }

    public static boolean isSupportedAdaptiveVideoTrack(com.google.android.exoplayer2.Format format, java.lang.String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int i11;
        if ((format.roleFlags & 16384) != 0 || !isSupported(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !com.google.android.exoplayer2.util.Util.areEqual(format.sampleMimeType, str)) {
            return false;
        }
        int i12 = format.width;
        if (i12 != -1 && (i7 > i12 || i12 > i3)) {
            return false;
        }
        int i13 = format.height;
        if (i13 != -1 && (i8 > i13 || i13 > i4)) {
            return false;
        }
        float f2 = format.frameRate;
        return (f2 == -1.0f || (((float) i9) <= f2 && f2 <= ((float) i5))) && (i11 = format.bitrate) != -1 && i10 <= i11 && i11 <= i6;
    }

    public static void maybeConfigureRenderersForTunneling(com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, com.google.android.exoplayer2.RendererConfiguration[] rendererConfigurationArr, com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr) {
        boolean z;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < mappedTrackInfo.getRendererCount(); i3++) {
            int rendererType = mappedTrackInfo.getRendererType(i3);
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i3];
            if ((rendererType == 1 || rendererType == 2) && exoTrackSelection != null && rendererSupportsTunneling(iArr[i3], mappedTrackInfo.getTrackGroups(i3), exoTrackSelection)) {
                if (rendererType == 1) {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i3;
                } else {
                    if (i != -1) {
                        z = false;
                        break;
                    }
                    i = i3;
                }
            }
        }
        z = true;
        if (i2 != -1 && i != -1) {
            z2 = true;
        }
        if (z && z2) {
            com.google.android.exoplayer2.RendererConfiguration rendererConfiguration = new com.google.android.exoplayer2.RendererConfiguration(true);
            rendererConfigurationArr[i2] = rendererConfiguration;
            rendererConfigurationArr[i] = rendererConfiguration;
        }
    }

    public static java.lang.String normalizeUndeterminedLanguageToNull(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.equals(str, com.google.android.exoplayer2.C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    public static boolean rendererSupportsTunneling(int[][] iArr, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        if (exoTrackSelection == null) {
            return false;
        }
        int iIndexOf = trackGroupArray.indexOf(exoTrackSelection.getTrackGroup());
        for (int i = 0; i < exoTrackSelection.length(); i++) {
            if ((iArr[iIndexOf][exoTrackSelection.getIndexInTrackGroup(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    public static com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition selectAdaptiveVideoTrack(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, int i, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray2 = trackGroupArray;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters2 = parameters;
        int i2 = parameters2.allowVideoNonSeamlessAdaptiveness ? 24 : 16;
        boolean z = parameters2.allowVideoMixedMimeTypeAdaptiveness && (i & i2) != 0;
        int i3 = 0;
        while (i3 < trackGroupArray2.length) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroupArray2.get(i3);
            int i4 = i3;
            int[] adaptiveVideoTracksForGroup = getAdaptiveVideoTracksForGroup(trackGroup, iArr[i3], z, i2, parameters2.maxVideoWidth, parameters2.maxVideoHeight, parameters2.maxVideoFrameRate, parameters2.maxVideoBitrate, parameters2.minVideoWidth, parameters2.minVideoHeight, parameters2.minVideoFrameRate, parameters2.minVideoBitrate, parameters2.viewportWidth, parameters2.viewportHeight, parameters2.viewportOrientationMayChange);
            if (adaptiveVideoTracksForGroup.length > 0) {
                return new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup, adaptiveVideoTracksForGroup);
            }
            i3 = i4 + 1;
            trackGroupArray2 = trackGroupArray;
            parameters2 = parameters;
        }
        return null;
    }

    public static com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition selectFixedVideoTrack(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        int i = -1;
        com.google.android.exoplayer2.source.TrackGroup trackGroup = null;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore videoTrackScore = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup2 = trackGroupArray.get(i2);
            java.util.List<java.lang.Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup2, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                com.google.android.exoplayer2.Format format = trackGroup2.getFormat(i3);
                if ((format.roleFlags & 16384) == 0 && isSupported(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore videoTrackScore2 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.VideoTrackScore(format, parameters, iArr2[i3], viewportFilteredTrackIndices.contains(java.lang.Integer.valueOf(i3)));
                    if ((videoTrackScore2.isWithinMaxConstraints || parameters.exceedVideoConstraintsIfNecessary) && (videoTrackScore == null || videoTrackScore2.compareTo(videoTrackScore) > 0)) {
                        trackGroup = trackGroup2;
                        i = i3;
                        videoTrackScore = videoTrackScore2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup, i);
    }

    private void setParametersInternal(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(parameters);
        if (this.parametersReference.getAndSet(parameters).equals(parameters)) {
            return;
        }
        invalidate();
    }

    public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder buildUponParameters() {
        return getParameters().buildUpon();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters getParameters() {
        return this.parametersReference.get();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public boolean isSetParametersSupported() {
        return true;
    }

    public com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition maybeApplyOverride(com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, int i, com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition) {
        int rendererType = mappedTrackInfo.getRendererType(i);
        if (parameters.getRendererDisabled(i) || parameters.disabledTrackTypes.contains(java.lang.Integer.valueOf(rendererType))) {
            return null;
        }
        com.google.android.exoplayer2.source.TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
        if (parameters.hasSelectionOverride(i, trackGroups)) {
            com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride selectionOverride = parameters.getSelectionOverride(i, trackGroups);
            if (selectionOverride == null) {
                return null;
            }
            return new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.type);
        }
        for (int i2 = 0; i2 < trackGroups.length; i2++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroups.get(i2);
            com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride override = parameters.trackSelectionOverrides.getOverride(trackGroup);
            if (override != null) {
                return new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup, d.s.y.a0(override.trackIndexes));
            }
        }
        return definition;
    }

    public com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] selectAllTracks(com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        int i;
        java.lang.String str;
        int i2;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore audioTrackScore;
        java.lang.String str2;
        int i3;
        int rendererCount = mappedTrackInfo.getRendererCount();
        com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr = new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[rendererCount];
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= rendererCount) {
                break;
            }
            if (2 == mappedTrackInfo.getRendererType(i5)) {
                if (!z) {
                    definitionArr[i5] = selectVideoTrack(mappedTrackInfo.getTrackGroups(i5), iArr[i5], iArr2[i5], parameters, true);
                    z = definitionArr[i5] != null;
                }
                i6 |= mappedTrackInfo.getTrackGroups(i5).length <= 0 ? 0 : 1;
            }
            i5++;
        }
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore audioTrackScore2 = null;
        java.lang.String str3 = null;
        int i7 = -1;
        int i8 = 0;
        while (i8 < rendererCount) {
            if (i == mappedTrackInfo.getRendererType(i8)) {
                i2 = i7;
                audioTrackScore = audioTrackScore2;
                str2 = str3;
                i3 = i8;
                android.util.Pair<com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore> pairSelectAudioTrack = selectAudioTrack(mappedTrackInfo.getTrackGroups(i8), iArr[i8], iArr2[i8], parameters, parameters.allowMultipleAdaptiveSelections || i6 == 0);
                if (pairSelectAudioTrack != null && (audioTrackScore == null || ((com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore) pairSelectAudioTrack.second).compareTo(audioTrackScore) > 0)) {
                    if (i2 != -1) {
                        definitionArr[i2] = null;
                    }
                    com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition = (com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition) pairSelectAudioTrack.first;
                    definitionArr[i3] = definition;
                    str3 = definition.group.getFormat(definition.tracks[0]).language;
                    audioTrackScore2 = (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore) pairSelectAudioTrack.second;
                    i7 = i3;
                }
                i8 = i3 + 1;
                i = 1;
            } else {
                i2 = i7;
                audioTrackScore = audioTrackScore2;
                str2 = str3;
                i3 = i8;
            }
            i7 = i2;
            audioTrackScore2 = audioTrackScore;
            str3 = str2;
            i8 = i3 + 1;
            i = 1;
        }
        java.lang.String str4 = str3;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore textTrackScore = null;
        int i9 = -1;
        while (i4 < rendererCount) {
            int rendererType = mappedTrackInfo.getRendererType(i4);
            if (rendererType == 1) {
                str = str4;
            } else if (rendererType == 2) {
                str = str4;
            } else if (rendererType != 3) {
                definitionArr[i4] = selectOtherTrack(rendererType, mappedTrackInfo.getTrackGroups(i4), iArr[i4], parameters);
                str = str4;
            } else {
                str = str4;
                android.util.Pair<com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore> pairSelectTextTrack = selectTextTrack(mappedTrackInfo.getTrackGroups(i4), iArr[i4], parameters, str);
                if (pairSelectTextTrack != null && (textTrackScore == null || ((com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore) pairSelectTextTrack.second).compareTo(textTrackScore) > 0)) {
                    if (i9 != -1) {
                        definitionArr[i9] = null;
                    }
                    definitionArr[i4] = (com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition) pairSelectTextTrack.first;
                    textTrackScore = (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore) pairSelectTextTrack.second;
                    i9 = i4;
                }
            }
            i4++;
            str4 = str;
        }
        return definitionArr;
    }

    public android.util.Pair<com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore> selectAudioTrack(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, int i, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, boolean z) {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition = null;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore audioTrackScore = null;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < trackGroupArray.length; i4++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroupArray.get(i4);
            int[] iArr2 = iArr[i4];
            for (int i5 = 0; i5 < trackGroup.length; i5++) {
                if (isSupported(iArr2[i5], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore audioTrackScore2 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore(trackGroup.getFormat(i5), parameters, iArr2[i5]);
                    if ((audioTrackScore2.isWithinConstraints || parameters.exceedAudioConstraintsIfNecessary) && (audioTrackScore == null || audioTrackScore2.compareTo(audioTrackScore) > 0)) {
                        i2 = i4;
                        i3 = i5;
                        audioTrackScore = audioTrackScore2;
                    }
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        com.google.android.exoplayer2.source.TrackGroup trackGroup2 = trackGroupArray.get(i2);
        if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && z) {
            int[] adaptiveAudioTracks = getAdaptiveAudioTracks(trackGroup2, iArr[i2], i3, parameters.maxAudioBitrate, parameters.allowAudioMixedMimeTypeAdaptiveness, parameters.allowAudioMixedSampleRateAdaptiveness, parameters.allowAudioMixedChannelCountAdaptiveness);
            if (adaptiveAudioTracks.length > 1) {
                definition = new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup2, adaptiveAudioTracks);
            }
        }
        if (definition == null) {
            definition = new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup2, i3);
        }
        return android.util.Pair.create(definition, (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.AudioTrackScore) com.google.android.exoplayer2.util.Assertions.checkNotNull(audioTrackScore));
    }

    public com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition selectOtherTrack(int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters) {
        com.google.android.exoplayer2.source.TrackGroup trackGroup = null;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.OtherTrackScore otherTrackScore = null;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup2 = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < trackGroup2.length; i4++) {
                if (isSupported(iArr2[i4], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector.OtherTrackScore otherTrackScore2 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.OtherTrackScore(trackGroup2.getFormat(i4), iArr2[i4]);
                    if (otherTrackScore == null || otherTrackScore2.compareTo(otherTrackScore) > 0) {
                        trackGroup = trackGroup2;
                        i2 = i4;
                        otherTrackScore = otherTrackScore2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup, i2);
    }

    public android.util.Pair<com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore> selectTextTrack(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, java.lang.String str) {
        int i = -1;
        com.google.android.exoplayer2.source.TrackGroup trackGroup = null;
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore textTrackScore = null;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < trackGroup2.length; i3++) {
                if (isSupported(iArr2[i3], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore textTrackScore2 = new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore(trackGroup2.getFormat(i3), parameters, iArr2[i3], str);
                    if (textTrackScore2.isWithinConstraints && (textTrackScore == null || textTrackScore2.compareTo(textTrackScore) > 0)) {
                        trackGroup = trackGroup2;
                        i = i3;
                        textTrackScore = textTrackScore2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return android.util.Pair.create(new com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition(trackGroup, i), (com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TextTrackScore) com.google.android.exoplayer2.util.Assertions.checkNotNull(textTrackScore));
    }

    @Override // com.google.android.exoplayer2.trackselection.MappingTrackSelector
    public final android.util.Pair<com.google.android.exoplayer2.RendererConfiguration[], com.google.android.exoplayer2.trackselection.ExoTrackSelection[]> selectTracks(com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters = this.parametersReference.get();
        int rendererCount = mappedTrackInfo.getRendererCount();
        com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArrSelectAllTracks = selectAllTracks(mappedTrackInfo, iArr, iArr2, parameters);
        for (int i = 0; i < rendererCount; i++) {
            definitionArrSelectAllTracks[i] = maybeApplyOverride(mappedTrackInfo, parameters, i, definitionArrSelectAllTracks[i]);
        }
        com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArrCreateTrackSelections = this.trackSelectionFactory.createTrackSelections(definitionArrSelectAllTracks, getBandwidthMeter(), mediaPeriodId, timeline);
        com.google.android.exoplayer2.RendererConfiguration[] rendererConfigurationArr = new com.google.android.exoplayer2.RendererConfiguration[rendererCount];
        for (int i2 = 0; i2 < rendererCount; i2++) {
            boolean z = true;
            if ((parameters.getRendererDisabled(i2) || parameters.disabledTrackTypes.contains(java.lang.Integer.valueOf(mappedTrackInfo.getRendererType(i2)))) || (mappedTrackInfo.getRendererType(i2) != -2 && exoTrackSelectionArrCreateTrackSelections[i2] == null)) {
                z = false;
            }
            rendererConfigurationArr[i2] = z ? com.google.android.exoplayer2.RendererConfiguration.DEFAULT : null;
        }
        if (parameters.tunnelingEnabled) {
            maybeConfigureRenderersForTunneling(mappedTrackInfo, iArr, rendererConfigurationArr, exoTrackSelectionArrCreateTrackSelections);
        }
        return android.util.Pair.create(rendererConfigurationArr, exoTrackSelectionArrCreateTrackSelections);
    }

    public com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition selectVideoTrack(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, int[][] iArr, int i, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, boolean z) {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definitionSelectAdaptiveVideoTrack = (parameters.forceHighestSupportedBitrate || parameters.forceLowestBitrate || !z) ? null : selectAdaptiveVideoTrack(trackGroupArray, iArr, i, parameters);
        return definitionSelectAdaptiveVideoTrack == null ? selectFixedVideoTrack(trackGroupArray, iArr, parameters) : definitionSelectAdaptiveVideoTrack;
    }

    public void setParameters(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder parametersBuilder) {
        setParametersInternal(parametersBuilder.build());
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public void setParameters(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters instanceof com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters) {
            setParametersInternal((com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters) trackSelectionParameters);
        }
        setParametersInternal(new com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder(this.parametersReference.get()).set(trackSelectionParameters).build());
    }
}
