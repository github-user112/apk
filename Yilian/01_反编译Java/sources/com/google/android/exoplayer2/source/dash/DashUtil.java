package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class DashUtil {
    public static com.google.android.exoplayer2.upstream.DataSpec buildDataSpec(com.google.android.exoplayer2.source.dash.manifest.Representation representation, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, int i) {
        return buildDataSpec(representation, representation.baseUrls.get(0).url, rangedUri, i);
    }

    public static com.google.android.exoplayer2.upstream.DataSpec buildDataSpec(com.google.android.exoplayer2.source.dash.manifest.Representation representation, java.lang.String str, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, int i) {
        return new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(rangedUri.resolveUri(str)).setPosition(rangedUri.start).setLength(rangedUri.length).setKey(resolveCacheKey(representation, rangedUri)).setFlags(i).build();
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Representation getFirstRepresentation(com.google.android.exoplayer2.source.dash.manifest.Period period, int i) {
        int adaptationSetIndex = period.getAdaptationSetIndex(i);
        if (adaptationSetIndex == -1) {
            return null;
        }
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list = period.adaptationSets.get(adaptationSetIndex).representations;
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static com.google.android.exoplayer2.extractor.ChunkIndex loadChunkIndex(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.source.dash.manifest.Representation representation) {
        return loadChunkIndex(dataSource, i, representation, 0);
    }

    public static com.google.android.exoplayer2.extractor.ChunkIndex loadChunkIndex(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.source.dash.manifest.Representation representation, int i2) {
        if (representation.getInitializationUri() == null) {
            return null;
        }
        com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractorNewChunkExtractor = newChunkExtractor(i, representation.format);
        try {
            loadInitializationData(chunkExtractorNewChunkExtractor, dataSource, representation, i2, true);
            chunkExtractorNewChunkExtractor.release();
            return chunkExtractorNewChunkExtractor.getChunkIndex();
        } catch (java.lang.Throwable th) {
            chunkExtractorNewChunkExtractor.release();
            throw th;
        }
    }

    public static com.google.android.exoplayer2.Format loadFormatWithDrmInitData(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.dash.manifest.Period period) {
        int i = 2;
        com.google.android.exoplayer2.source.dash.manifest.Representation firstRepresentation = getFirstRepresentation(period, 2);
        if (firstRepresentation == null) {
            i = 1;
            firstRepresentation = getFirstRepresentation(period, 1);
            if (firstRepresentation == null) {
                return null;
            }
        }
        com.google.android.exoplayer2.Format format = firstRepresentation.format;
        com.google.android.exoplayer2.Format formatLoadSampleFormat = loadSampleFormat(dataSource, i, firstRepresentation);
        return formatLoadSampleFormat == null ? format : formatLoadSampleFormat.withManifestFormatInfo(format);
    }

    public static void loadInitializationData(com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.dash.manifest.Representation representation, int i, boolean z) {
        com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri = (com.google.android.exoplayer2.source.dash.manifest.RangedUri) com.google.android.exoplayer2.util.Assertions.checkNotNull(representation.getInitializationUri());
        if (z) {
            com.google.android.exoplayer2.source.dash.manifest.RangedUri indexUri = representation.getIndexUri();
            if (indexUri == null) {
                return;
            }
            com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUriAttemptMerge = rangedUri.attemptMerge(indexUri, representation.baseUrls.get(i).url);
            if (rangedUriAttemptMerge == null) {
                loadInitializationData(dataSource, representation, i, chunkExtractor, rangedUri);
                rangedUri = indexUri;
            } else {
                rangedUri = rangedUriAttemptMerge;
            }
        }
        loadInitializationData(dataSource, representation, i, chunkExtractor, rangedUri);
    }

    public static void loadInitializationData(com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.dash.manifest.Representation representation, boolean z) {
        loadInitializationData(chunkExtractor, dataSource, representation, 0, z);
    }

    public static void loadInitializationData(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.dash.manifest.Representation representation, int i, com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri) {
        new com.google.android.exoplayer2.source.chunk.InitializationChunk(dataSource, buildDataSpec(representation, representation.baseUrls.get(i).url, rangedUri, 0), representation.format, 0, null, chunkExtractor).load();
    }

    public static com.google.android.exoplayer2.source.dash.manifest.DashManifest loadManifest(com.google.android.exoplayer2.upstream.DataSource dataSource, android.net.Uri uri) {
        return (com.google.android.exoplayer2.source.dash.manifest.DashManifest) com.google.android.exoplayer2.upstream.ParsingLoadable.load(dataSource, new com.google.android.exoplayer2.source.dash.manifest.DashManifestParser(), uri, 4);
    }

    public static com.google.android.exoplayer2.Format loadSampleFormat(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.source.dash.manifest.Representation representation) {
        return loadSampleFormat(dataSource, i, representation, 0);
    }

    public static com.google.android.exoplayer2.Format loadSampleFormat(com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.source.dash.manifest.Representation representation, int i2) {
        if (representation.getInitializationUri() == null) {
            return null;
        }
        com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractorNewChunkExtractor = newChunkExtractor(i, representation.format);
        try {
            loadInitializationData(chunkExtractorNewChunkExtractor, dataSource, representation, i2, false);
            chunkExtractorNewChunkExtractor.release();
            return ((com.google.android.exoplayer2.Format[]) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(chunkExtractorNewChunkExtractor.getSampleFormats()))[0];
        } catch (java.lang.Throwable th) {
            chunkExtractorNewChunkExtractor.release();
            throw th;
        }
    }

    public static com.google.android.exoplayer2.source.chunk.ChunkExtractor newChunkExtractor(int i, com.google.android.exoplayer2.Format format) {
        java.lang.String str = format.containerMimeType;
        return new com.google.android.exoplayer2.source.chunk.BundledChunkExtractor(str != null && (str.startsWith(com.google.android.exoplayer2.util.MimeTypes.VIDEO_WEBM) || str.startsWith(com.google.android.exoplayer2.util.MimeTypes.AUDIO_WEBM)) ? new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor() : new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor(), i, format);
    }

    public static java.lang.String resolveCacheKey(com.google.android.exoplayer2.source.dash.manifest.Representation representation, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri) {
        java.lang.String cacheKey = representation.getCacheKey();
        return cacheKey != null ? cacheKey : rangedUri.resolveUri(representation.baseUrls.get(0).url).toString();
    }
}
