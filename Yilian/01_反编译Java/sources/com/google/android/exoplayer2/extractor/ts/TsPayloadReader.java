package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public interface TsPayloadReader {
    public static final int FLAG_DATA_ALIGNMENT_INDICATOR = 4;
    public static final int FLAG_PAYLOAD_UNIT_START_INDICATOR = 1;
    public static final int FLAG_RANDOM_ACCESS_INDICATOR = 2;

    public static final class DvbSubtitleInfo {
        public final byte[] initializationData;
        public final java.lang.String language;
        public final int type;

        public DvbSubtitleInfo(java.lang.String str, int i, byte[] bArr) {
            this.language = str;
            this.type = i;
            this.initializationData = bArr;
        }
    }

    public static final class EsInfo {
        public final byte[] descriptorBytes;
        public final java.util.List<com.google.android.exoplayer2.extractor.ts.TsPayloadReader.DvbSubtitleInfo> dvbSubtitleInfos;
        public final java.lang.String language;
        public final int streamType;

        public EsInfo(int i, java.lang.String str, java.util.List<com.google.android.exoplayer2.extractor.ts.TsPayloadReader.DvbSubtitleInfo> list, byte[] bArr) {
            this.streamType = i;
            this.language = str;
            this.dvbSubtitleInfos = list == null ? java.util.Collections.emptyList() : java.util.Collections.unmodifiableList(list);
            this.descriptorBytes = bArr;
        }
    }

    public interface Factory {
        android.util.SparseArray<com.google.android.exoplayer2.extractor.ts.TsPayloadReader> createInitialPayloadReaders();

        com.google.android.exoplayer2.extractor.ts.TsPayloadReader createPayloadReader(int i, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo esInfo);
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class TrackIdGenerator {
        public static final int ID_UNSET = Integer.MIN_VALUE;
        public final int firstTrackId;
        public java.lang.String formatId;
        public final java.lang.String formatIdPrefix;
        public int trackId;
        public final int trackIdIncrement;

        public TrackIdGenerator(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public TrackIdGenerator(int i, int i2, int i3) {
            java.lang.String string;
            if (i != Integer.MIN_VALUE) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(12);
                sb.append(i);
                sb.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                string = sb.toString();
            } else {
                string = "";
            }
            this.formatIdPrefix = string;
            this.firstTrackId = i2;
            this.trackIdIncrement = i3;
            this.trackId = Integer.MIN_VALUE;
            this.formatId = "";
        }

        private void maybeThrowUninitializedError() {
            if (this.trackId == Integer.MIN_VALUE) {
                throw new java.lang.IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }

        public void generateNewId() {
            int i = this.trackId;
            int i2 = i == Integer.MIN_VALUE ? this.firstTrackId : i + this.trackIdIncrement;
            this.trackId = i2;
            java.lang.String str = this.formatIdPrefix;
            this.formatId = e.a.c.a.a.F(e.a.c.a.a.m(str, 11), str, i2);
        }

        public java.lang.String getFormatId() {
            maybeThrowUninitializedError();
            return this.formatId;
        }

        public int getTrackId() {
            maybeThrowUninitializedError();
            return this.trackId;
        }
    }

    void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i);

    void init(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void seek();
}
