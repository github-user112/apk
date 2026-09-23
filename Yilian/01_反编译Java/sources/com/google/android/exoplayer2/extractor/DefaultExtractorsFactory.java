package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class DefaultExtractorsFactory implements com.google.android.exoplayer2.extractor.ExtractorsFactory {
    public static final int[] DEFAULT_EXTRACTOR_ORDER = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};
    public static final com.google.android.exoplayer2.extractor.DefaultExtractorsFactory.FlacExtensionLoader FLAC_EXTENSION_LOADER = new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory.FlacExtensionLoader();
    public int adtsFlags;
    public int amrFlags;
    public boolean constantBitrateSeekingAlwaysEnabled;
    public boolean constantBitrateSeekingEnabled;
    public int flacFlags;
    public int fragmentedMp4Flags;
    public int matroskaFlags;
    public int mp3Flags;
    public int mp4Flags;
    public int tsFlags;
    public int tsMode = 1;
    public int tsTimestampSearchBytes = com.google.android.exoplayer2.extractor.ts.TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;

    public static final class FlacExtensionLoader {
        public final java.util.concurrent.atomic.AtomicBoolean extensionLoaded = new java.util.concurrent.atomic.AtomicBoolean(false);
        public java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.extractor.Extractor> extractorConstructor;

        private java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.extractor.Extractor> maybeLoadExtractorConstructor() {
            synchronized (this.extensionLoaded) {
                if (this.extensionLoaded.get()) {
                    return this.extractorConstructor;
                }
                try {
                    if (java.lang.Boolean.TRUE.equals(java.lang.Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]))) {
                        this.extractorConstructor = java.lang.Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(com.google.android.exoplayer2.extractor.Extractor.class).getConstructor(java.lang.Integer.TYPE);
                    }
                } catch (java.lang.ClassNotFoundException unused) {
                } catch (java.lang.Exception e2) {
                    throw new java.lang.RuntimeException("Error instantiating FLAC extension", e2);
                }
                this.extensionLoaded.set(true);
                return this.extractorConstructor;
            }
        }

        public com.google.android.exoplayer2.extractor.Extractor getExtractor(int i) {
            java.lang.reflect.Constructor<? extends com.google.android.exoplayer2.extractor.Extractor> constructorMaybeLoadExtractorConstructor = maybeLoadExtractorConstructor();
            if (constructorMaybeLoadExtractorConstructor == null) {
                return null;
            }
            try {
                return constructorMaybeLoadExtractorConstructor.newInstance(java.lang.Integer.valueOf(i));
            } catch (java.lang.Exception e2) {
                throw new java.lang.IllegalStateException("Unexpected error creating FLAC extractor", e2);
            }
        }
    }

    private void addExtractorsForFileType(int i, java.util.List<com.google.android.exoplayer2.extractor.Extractor> list) {
        com.google.android.exoplayer2.extractor.Extractor ac3Extractor;
        switch (i) {
            case 0:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ts.Ac3Extractor();
                break;
            case 1:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ts.Ac4Extractor();
                break;
            case 2:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ts.AdtsExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.adtsFlags | (this.constantBitrateSeekingEnabled ? 1 : 0));
                break;
            case 3:
                ac3Extractor = new com.google.android.exoplayer2.extractor.amr.AmrExtractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.amrFlags | (this.constantBitrateSeekingEnabled ? 1 : 0));
                break;
            case 4:
                ac3Extractor = FLAC_EXTENSION_LOADER.getExtractor(this.flacFlags);
                if (ac3Extractor == null) {
                    ac3Extractor = new com.google.android.exoplayer2.extractor.flac.FlacExtractor(this.flacFlags);
                    break;
                }
                break;
            case 5:
                ac3Extractor = new com.google.android.exoplayer2.extractor.flv.FlvExtractor();
                break;
            case 6:
                ac3Extractor = new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor(this.matroskaFlags);
                break;
            case 7:
                ac3Extractor = new com.google.android.exoplayer2.extractor.mp3.Mp3Extractor((this.constantBitrateSeekingAlwaysEnabled ? 2 : 0) | this.mp3Flags | (this.constantBitrateSeekingEnabled ? 1 : 0));
                break;
            case 8:
                list.add(new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor(this.fragmentedMp4Flags));
                ac3Extractor = new com.google.android.exoplayer2.extractor.mp4.Mp4Extractor(this.mp4Flags);
                break;
            case 9:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ogg.OggExtractor();
                break;
            case 10:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ts.PsExtractor();
                break;
            case 11:
                ac3Extractor = new com.google.android.exoplayer2.extractor.ts.TsExtractor(this.tsMode, this.tsFlags, this.tsTimestampSearchBytes);
                break;
            case 12:
                ac3Extractor = new com.google.android.exoplayer2.extractor.wav.WavExtractor();
                break;
            case 13:
            default:
                return;
            case 14:
                ac3Extractor = new com.google.android.exoplayer2.extractor.jpeg.JpegExtractor();
                break;
        }
        list.add(ac3Extractor);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public synchronized com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
        return createExtractors(android.net.Uri.EMPTY, new java.util.HashMap());
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public synchronized com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList(14);
        int iInferFileTypeFromResponseHeaders = com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromResponseHeaders(map);
        if (iInferFileTypeFromResponseHeaders != -1) {
            addExtractorsForFileType(iInferFileTypeFromResponseHeaders, arrayList);
        }
        int iInferFileTypeFromUri = com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromUri(uri);
        if (iInferFileTypeFromUri != -1 && iInferFileTypeFromUri != iInferFileTypeFromResponseHeaders) {
            addExtractorsForFileType(iInferFileTypeFromUri, arrayList);
        }
        for (int i : DEFAULT_EXTRACTOR_ORDER) {
            if (i != iInferFileTypeFromResponseHeaders && i != iInferFileTypeFromUri) {
                addExtractorsForFileType(i, arrayList);
            }
        }
        return (com.google.android.exoplayer2.extractor.Extractor[]) arrayList.toArray(new com.google.android.exoplayer2.extractor.Extractor[arrayList.size()]);
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setAdtsExtractorFlags(int i) {
        this.adtsFlags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setAmrExtractorFlags(int i) {
        this.amrFlags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setConstantBitrateSeekingAlwaysEnabled(boolean z) {
        this.constantBitrateSeekingAlwaysEnabled = z;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setConstantBitrateSeekingEnabled(boolean z) {
        this.constantBitrateSeekingEnabled = z;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setFlacExtractorFlags(int i) {
        this.flacFlags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setFragmentedMp4ExtractorFlags(int i) {
        this.fragmentedMp4Flags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setMatroskaExtractorFlags(int i) {
        this.matroskaFlags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setMp3ExtractorFlags(int i) {
        this.mp3Flags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setMp4ExtractorFlags(int i) {
        this.mp4Flags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setTsExtractorFlags(int i) {
        this.tsFlags = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setTsExtractorMode(int i) {
        this.tsMode = i;
        return this;
    }

    public synchronized com.google.android.exoplayer2.extractor.DefaultExtractorsFactory setTsExtractorTimestampSearchBytes(int i) {
        this.tsTimestampSearchBytes = i;
        return this;
    }
}
