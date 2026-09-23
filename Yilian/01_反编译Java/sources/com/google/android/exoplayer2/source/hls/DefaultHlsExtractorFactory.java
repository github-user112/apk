package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class DefaultHlsExtractorFactory implements com.google.android.exoplayer2.source.hls.HlsExtractorFactory {
    public static final int[] DEFAULT_EXTRACTOR_ORDER = {8, 13, 11, 2, 0, 1, 7};
    public final boolean exposeCea608WhenMissingDeclarations;
    public final int payloadReaderFactoryFlags;

    public DefaultHlsExtractorFactory() {
        this(0, true);
    }

    public DefaultHlsExtractorFactory(int i, boolean z) {
        this.payloadReaderFactoryFlags = i;
        this.exposeCea608WhenMissingDeclarations = z;
    }

    public static void addFileTypeIfValidAndNotPresent(int i, java.util.List<java.lang.Integer> list) {
        int[] iArr = DEFAULT_EXTRACTOR_ORDER;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (iArr[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1 || list.contains(java.lang.Integer.valueOf(i))) {
            return;
        }
        list.add(java.lang.Integer.valueOf(i));
    }

    @android.annotation.SuppressLint({"SwitchIntDef"})
    private com.google.android.exoplayer2.extractor.Extractor createExtractorByFileType(int i, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        if (i == 0) {
            return new com.google.android.exoplayer2.extractor.ts.Ac3Extractor();
        }
        if (i == 1) {
            return new com.google.android.exoplayer2.extractor.ts.Ac4Extractor();
        }
        if (i == 2) {
            return new com.google.android.exoplayer2.extractor.ts.AdtsExtractor();
        }
        if (i == 7) {
            return new com.google.android.exoplayer2.extractor.mp3.Mp3Extractor(0, 0L);
        }
        if (i == 8) {
            return createFragmentedMp4Extractor(timestampAdjuster, format, list);
        }
        if (i == 11) {
            return createTsExtractor(this.payloadReaderFactoryFlags, this.exposeCea608WhenMissingDeclarations, format, list, timestampAdjuster);
        }
        if (i != 13) {
            return null;
        }
        return new com.google.android.exoplayer2.source.hls.WebvttExtractor(format.language, timestampAdjuster);
    }

    public static com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor createFragmentedMp4Extractor(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list) {
        int i = isFmp4Variant(format) ? 4 : 0;
        if (list == null) {
            list = java.util.Collections.emptyList();
        }
        return new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor(i, timestampAdjuster, null, list);
    }

    public static com.google.android.exoplayer2.extractor.ts.TsExtractor createTsExtractor(int i, boolean z, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        int i2 = i | 16;
        if (list != null) {
            i2 |= 32;
        } else {
            list = z ? java.util.Collections.singletonList(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608).build()) : java.util.Collections.emptyList();
        }
        java.lang.String str = format.codecs;
        if (!android.text.TextUtils.isEmpty(str)) {
            if (!com.google.android.exoplayer2.util.MimeTypes.containsCodecsCorrespondingToMimeType(str, com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC)) {
                i2 |= 2;
            }
            if (!com.google.android.exoplayer2.util.MimeTypes.containsCodecsCorrespondingToMimeType(str, com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264)) {
                i2 |= 4;
            }
        }
        return new com.google.android.exoplayer2.extractor.ts.TsExtractor(2, timestampAdjuster, new com.google.android.exoplayer2.extractor.ts.DefaultTsPayloadReaderFactory(i2, list));
    }

    public static boolean isFmp4Variant(com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.metadata.Metadata metadata = format.metadata;
        if (metadata == null) {
            return false;
        }
        for (int i = 0; i < metadata.length(); i++) {
            if (metadata.get(i) instanceof com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry) {
                return !((com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry) r2).variantInfos.isEmpty();
            }
        }
        return false;
    }

    public static boolean sniffQuietly(com.google.android.exoplayer2.extractor.Extractor extractor, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        try {
            boolean zSniff = extractor.sniff(extractorInput);
            extractorInput.resetPeekPosition();
            return zSniff;
        } catch (java.io.EOFException unused) {
            extractorInput.resetPeekPosition();
            return false;
        } catch (java.lang.Throwable th) {
            extractorInput.resetPeekPosition();
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public com.google.android.exoplayer2.source.hls.BundledHlsMediaChunkExtractor createExtractor(android.net.Uri uri, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int iInferFileTypeFromMimeType = com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromMimeType(format.sampleMimeType);
        int iInferFileTypeFromResponseHeaders = com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromResponseHeaders(map);
        int iInferFileTypeFromUri = com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromUri(uri);
        java.util.ArrayList arrayList = new java.util.ArrayList(DEFAULT_EXTRACTOR_ORDER.length);
        addFileTypeIfValidAndNotPresent(iInferFileTypeFromMimeType, arrayList);
        addFileTypeIfValidAndNotPresent(iInferFileTypeFromResponseHeaders, arrayList);
        addFileTypeIfValidAndNotPresent(iInferFileTypeFromUri, arrayList);
        for (int i : DEFAULT_EXTRACTOR_ORDER) {
            addFileTypeIfValidAndNotPresent(i, arrayList);
        }
        com.google.android.exoplayer2.extractor.Extractor extractor = null;
        extractorInput.resetPeekPosition();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            int iIntValue = ((java.lang.Integer) arrayList.get(i2)).intValue();
            com.google.android.exoplayer2.extractor.Extractor extractor2 = (com.google.android.exoplayer2.extractor.Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(createExtractorByFileType(iIntValue, format, list, timestampAdjuster));
            if (sniffQuietly(extractor2, extractorInput)) {
                return new com.google.android.exoplayer2.source.hls.BundledHlsMediaChunkExtractor(extractor2, format, timestampAdjuster);
            }
            if (extractor == null && (iIntValue == iInferFileTypeFromMimeType || iIntValue == iInferFileTypeFromResponseHeaders || iIntValue == iInferFileTypeFromUri || iIntValue == 11)) {
                extractor = extractor2;
            }
        }
        return new com.google.android.exoplayer2.source.hls.BundledHlsMediaChunkExtractor((com.google.android.exoplayer2.extractor.Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(extractor), format, timestampAdjuster);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor createExtractor(android.net.Uri uri, com.google.android.exoplayer2.Format format, java.util.List list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, java.util.Map map, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return createExtractor(uri, format, (java.util.List<com.google.android.exoplayer2.Format>) list, timestampAdjuster, (java.util.Map<java.lang.String, java.util.List<java.lang.String>>) map, extractorInput);
    }
}
