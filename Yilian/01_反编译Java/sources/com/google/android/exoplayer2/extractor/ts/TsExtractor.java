package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class TsExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final long AC3_FORMAT_IDENTIFIER = 1094921523;
    public static final long AC4_FORMAT_IDENTIFIER = 1094921524;
    public static final int BUFFER_SIZE = 9400;
    public static final int DEFAULT_TIMESTAMP_SEARCH_BYTES = 112800;
    public static final long E_AC3_FORMAT_IDENTIFIER = 1161904947;
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.l.e
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.ts.TsExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final long HEVC_FORMAT_IDENTIFIER = 1212503619;
    public static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    public static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    public static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_AIT = 257;
    public static final int TS_STREAM_TYPE_DC2_H262 = 128;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H263 = 16;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    public int bytesSinceLastSync;
    public final android.util.SparseIntArray continuityCounters;
    public final com.google.android.exoplayer2.extractor.ts.TsDurationReader durationReader;
    public boolean hasOutputSeekMap;
    public com.google.android.exoplayer2.extractor.ts.TsPayloadReader id3Reader;
    public final int mode;
    public com.google.android.exoplayer2.extractor.ExtractorOutput output;
    public final com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory payloadReaderFactory;
    public int pcrPid;
    public boolean pendingSeekToStart;
    public int remainingPmts;
    public final java.util.List<com.google.android.exoplayer2.util.TimestampAdjuster> timestampAdjusters;
    public final int timestampSearchBytes;
    public final android.util.SparseBooleanArray trackIds;
    public final android.util.SparseBooleanArray trackPids;
    public boolean tracksEnded;
    public com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker tsBinarySearchSeeker;
    public final com.google.android.exoplayer2.util.ParsableByteArray tsPacketBuffer;
    public final android.util.SparseArray<com.google.android.exoplayer2.extractor.ts.TsPayloadReader> tsPayloadReaders;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public class PatReader implements com.google.android.exoplayer2.extractor.ts.SectionPayloadReader {
        public final com.google.android.exoplayer2.util.ParsableBitArray patScratch = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[4]);

        public PatReader() {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            if (parsableByteArray.readUnsignedByte() == 0 && (parsableByteArray.readUnsignedByte() & 128) != 0) {
                parsableByteArray.skipBytes(6);
                int iBytesLeft = parsableByteArray.bytesLeft() / 4;
                for (int i = 0; i < iBytesLeft; i++) {
                    parsableByteArray.readBytes(this.patScratch, 4);
                    int bits = this.patScratch.readBits(16);
                    this.patScratch.skipBits(3);
                    if (bits == 0) {
                        this.patScratch.skipBits(13);
                    } else {
                        int bits2 = this.patScratch.readBits(13);
                        if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tsPayloadReaders.get(bits2) == null) {
                            com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tsPayloadReaders.put(bits2, new com.google.android.exoplayer2.extractor.ts.SectionReader(com.google.android.exoplayer2.extractor.ts.TsExtractor.this.new PmtReader(bits2)));
                            com.google.android.exoplayer2.extractor.ts.TsExtractor.access$108(com.google.android.exoplayer2.extractor.ts.TsExtractor.this);
                        }
                    }
                }
                if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode != 2) {
                    com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tsPayloadReaders.remove(0);
                }
            }
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public class PmtReader implements com.google.android.exoplayer2.extractor.ts.SectionPayloadReader {
        public static final int TS_PMT_DESC_AC3 = 106;
        public static final int TS_PMT_DESC_AIT = 111;
        public static final int TS_PMT_DESC_DTS = 123;
        public static final int TS_PMT_DESC_DVBSUBS = 89;
        public static final int TS_PMT_DESC_DVB_EXT = 127;
        public static final int TS_PMT_DESC_DVB_EXT_AC4 = 21;
        public static final int TS_PMT_DESC_EAC3 = 122;
        public static final int TS_PMT_DESC_ISO639_LANG = 10;
        public static final int TS_PMT_DESC_REGISTRATION = 5;
        public final int pid;
        public final com.google.android.exoplayer2.util.ParsableBitArray pmtScratch = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[5]);
        public final android.util.SparseArray<com.google.android.exoplayer2.extractor.ts.TsPayloadReader> trackIdToReaderScratch = new android.util.SparseArray<>();
        public final android.util.SparseIntArray trackIdToPidScratch = new android.util.SparseIntArray();

        public PmtReader(int i) {
            this.pid = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo readEsInfo(com.google.android.exoplayer2.util.ParsableByteArray r14, int r15) {
            /*
                r13 = this;
                int r0 = r14.getPosition()
                int r15 = r15 + r0
                r1 = 0
                r2 = -1
                r2 = r1
                r3 = -1
            L9:
                int r4 = r14.getPosition()
                if (r4 >= r15) goto Lc0
                int r4 = r14.readUnsignedByte()
                int r5 = r14.readUnsignedByte()
                int r6 = r14.getPosition()
                int r6 = r6 + r5
                if (r6 <= r15) goto L20
                goto Lc0
            L20:
                r5 = 5
                r7 = 89
                r8 = 172(0xac, float:2.41E-43)
                r9 = 135(0x87, float:1.89E-43)
                r10 = 129(0x81, float:1.81E-43)
                if (r4 != r5) goto L54
                long r4 = r14.readUnsignedInt()
                r11 = 1094921523(0x41432d33, double:5.409631094E-315)
                int r7 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
                if (r7 != 0) goto L37
                goto L58
            L37:
                r10 = 1161904947(0x45414333, double:5.74057318E-315)
                int r7 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
                if (r7 != 0) goto L3f
                goto L5f
            L3f:
                r9 = 1094921524(0x41432d34, double:5.4096311E-315)
                int r7 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r7 != 0) goto L4a
            L46:
                r3 = 172(0xac, float:2.41E-43)
                goto Lb6
            L4a:
                r7 = 1212503619(0x48455643, double:5.990563836E-315)
                int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
                if (r9 != 0) goto Lb6
                r3 = 36
                goto Lb6
            L54:
                r5 = 106(0x6a, float:1.49E-43)
                if (r4 != r5) goto L5b
            L58:
                r3 = 129(0x81, float:1.81E-43)
                goto Lb6
            L5b:
                r5 = 122(0x7a, float:1.71E-43)
                if (r4 != r5) goto L62
            L5f:
                r3 = 135(0x87, float:1.89E-43)
                goto Lb6
            L62:
                r5 = 127(0x7f, float:1.78E-43)
                if (r4 != r5) goto L6f
                int r4 = r14.readUnsignedByte()
                r5 = 21
                if (r4 != r5) goto Lb6
                goto L46
            L6f:
                r5 = 123(0x7b, float:1.72E-43)
                if (r4 != r5) goto L76
                r3 = 138(0x8a, float:1.93E-43)
                goto Lb6
            L76:
                r5 = 10
                r8 = 3
                if (r4 != r5) goto L84
                java.lang.String r1 = r14.readString(r8)
                java.lang.String r1 = r1.trim()
                goto Lb6
            L84:
                if (r4 != r7) goto Lb0
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
            L8b:
                int r3 = r14.getPosition()
                if (r3 >= r6) goto Lad
                java.lang.String r3 = r14.readString(r8)
                java.lang.String r3 = r3.trim()
                int r4 = r14.readUnsignedByte()
                r5 = 4
                byte[] r9 = new byte[r5]
                r10 = 0
                r14.readBytes(r9, r10, r5)
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader$DvbSubtitleInfo r5 = new com.google.android.exoplayer2.extractor.ts.TsPayloadReader$DvbSubtitleInfo
                r5.<init>(r3, r4, r9)
                r2.add(r5)
                goto L8b
            Lad:
                r3 = 89
                goto Lb6
            Lb0:
                r5 = 111(0x6f, float:1.56E-43)
                if (r4 != r5) goto Lb6
                r3 = 257(0x101, float:3.6E-43)
            Lb6:
                int r4 = r14.getPosition()
                int r6 = r6 - r4
                r14.skipBytes(r6)
                goto L9
            Lc0:
                r14.setPosition(r15)
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo r4 = new com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo
                byte[] r14 = r14.getData()
                byte[] r14 = java.util.Arrays.copyOfRange(r14, r0, r15)
                r4.<init>(r3, r1, r2, r14)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.TsExtractor.PmtReader.readEsInfo(com.google.android.exoplayer2.util.ParsableByteArray, int):com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo");
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.readUnsignedByte() != 2) {
                return;
            }
            if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode == 1 || com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode == 2 || com.google.android.exoplayer2.extractor.ts.TsExtractor.this.remainingPmts == 1) {
                timestampAdjuster = (com.google.android.exoplayer2.util.TimestampAdjuster) com.google.android.exoplayer2.extractor.ts.TsExtractor.this.timestampAdjusters.get(0);
            } else {
                timestampAdjuster = new com.google.android.exoplayer2.util.TimestampAdjuster(((com.google.android.exoplayer2.util.TimestampAdjuster) com.google.android.exoplayer2.extractor.ts.TsExtractor.this.timestampAdjusters.get(0)).getFirstSampleTimestampUs());
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.timestampAdjusters.add(timestampAdjuster);
            }
            if ((parsableByteArray.readUnsignedByte() & 128) == 0) {
                return;
            }
            parsableByteArray.skipBytes(1);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            int i = 3;
            parsableByteArray.skipBytes(3);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            this.pmtScratch.skipBits(3);
            int i2 = 13;
            com.google.android.exoplayer2.extractor.ts.TsExtractor.this.pcrPid = this.pmtScratch.readBits(13);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            int i3 = 4;
            this.pmtScratch.skipBits(4);
            parsableByteArray.skipBytes(this.pmtScratch.readBits(12));
            if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode == 2 && com.google.android.exoplayer2.extractor.ts.TsExtractor.this.id3Reader == null) {
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo esInfo = new com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo(21, null, null, com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
                com.google.android.exoplayer2.extractor.ts.TsExtractor tsExtractor = com.google.android.exoplayer2.extractor.ts.TsExtractor.this;
                tsExtractor.id3Reader = tsExtractor.payloadReaderFactory.createPayloadReader(21, esInfo);
                if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.id3Reader != null) {
                    com.google.android.exoplayer2.extractor.ts.TsExtractor.this.id3Reader.init(timestampAdjuster, com.google.android.exoplayer2.extractor.ts.TsExtractor.this.output, new com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator(unsignedShort, 21, 8192));
                }
            }
            this.trackIdToReaderScratch.clear();
            this.trackIdToPidScratch.clear();
            int iBytesLeft = parsableByteArray.bytesLeft();
            while (iBytesLeft > 0) {
                parsableByteArray.readBytes(this.pmtScratch, 5);
                int bits = this.pmtScratch.readBits(8);
                this.pmtScratch.skipBits(i);
                int bits2 = this.pmtScratch.readBits(i2);
                this.pmtScratch.skipBits(i3);
                int bits3 = this.pmtScratch.readBits(12);
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo esInfo2 = readEsInfo(parsableByteArray, bits3);
                if (bits == 6 || bits == 5) {
                    bits = esInfo2.streamType;
                }
                iBytesLeft -= bits3 + 5;
                int i4 = com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode == 2 ? bits : bits2;
                if (!com.google.android.exoplayer2.extractor.ts.TsExtractor.this.trackIds.get(i4)) {
                    com.google.android.exoplayer2.extractor.ts.TsPayloadReader tsPayloadReaderCreatePayloadReader = (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode == 2 && bits == 21) ? com.google.android.exoplayer2.extractor.ts.TsExtractor.this.id3Reader : com.google.android.exoplayer2.extractor.ts.TsExtractor.this.payloadReaderFactory.createPayloadReader(bits, esInfo2);
                    if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode != 2 || bits2 < this.trackIdToPidScratch.get(i4, 8192)) {
                        this.trackIdToPidScratch.put(i4, bits2);
                        this.trackIdToReaderScratch.put(i4, tsPayloadReaderCreatePayloadReader);
                    }
                }
                i = 3;
                i3 = 4;
                i2 = 13;
            }
            int size = this.trackIdToPidScratch.size();
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = this.trackIdToPidScratch.keyAt(i5);
                int iValueAt = this.trackIdToPidScratch.valueAt(i5);
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.trackIds.put(iKeyAt, true);
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.trackPids.put(iValueAt, true);
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader tsPayloadReaderValueAt = this.trackIdToReaderScratch.valueAt(i5);
                if (tsPayloadReaderValueAt != null) {
                    if (tsPayloadReaderValueAt != com.google.android.exoplayer2.extractor.ts.TsExtractor.this.id3Reader) {
                        tsPayloadReaderValueAt.init(timestampAdjuster, com.google.android.exoplayer2.extractor.ts.TsExtractor.this.output, new com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator(unsignedShort, iKeyAt, 8192));
                    }
                    com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tsPayloadReaders.put(iValueAt, tsPayloadReaderValueAt);
                }
            }
            if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.mode != 2) {
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tsPayloadReaders.remove(this.pid);
                com.google.android.exoplayer2.extractor.ts.TsExtractor tsExtractor2 = com.google.android.exoplayer2.extractor.ts.TsExtractor.this;
                tsExtractor2.remainingPmts = tsExtractor2.mode == 1 ? 0 : com.google.android.exoplayer2.extractor.ts.TsExtractor.this.remainingPmts - 1;
                if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.remainingPmts != 0) {
                    return;
                } else {
                    com.google.android.exoplayer2.extractor.ts.TsExtractor.this.output.endTracks();
                }
            } else {
                if (com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tracksEnded) {
                    return;
                }
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.output.endTracks();
                com.google.android.exoplayer2.extractor.ts.TsExtractor.this.remainingPmts = 0;
            }
            com.google.android.exoplayer2.extractor.ts.TsExtractor.this.tracksEnded = true;
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public TsExtractor() {
        this(0);
    }

    public TsExtractor(int i) {
        this(1, i, DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public TsExtractor(int i, int i2, int i3) {
        this(i, new com.google.android.exoplayer2.util.TimestampAdjuster(0L), new com.google.android.exoplayer2.extractor.ts.DefaultTsPayloadReaderFactory(i2), i3);
    }

    public TsExtractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory factory) {
        this(i, timestampAdjuster, factory, DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public TsExtractor(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory factory, int i2) {
        this.payloadReaderFactory = (com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory) com.google.android.exoplayer2.util.Assertions.checkNotNull(factory);
        this.timestampSearchBytes = i2;
        this.mode = i;
        if (i == 1 || i == 2) {
            this.timestampAdjusters = java.util.Collections.singletonList(timestampAdjuster);
        } else {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            this.timestampAdjusters = arrayList;
            arrayList.add(timestampAdjuster);
        }
        this.tsPacketBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(new byte[BUFFER_SIZE], 0);
        this.trackIds = new android.util.SparseBooleanArray();
        this.trackPids = new android.util.SparseBooleanArray();
        this.tsPayloadReaders = new android.util.SparseArray<>();
        this.continuityCounters = new android.util.SparseIntArray();
        this.durationReader = new com.google.android.exoplayer2.extractor.ts.TsDurationReader(i2);
        this.output = com.google.android.exoplayer2.extractor.ExtractorOutput.PLACEHOLDER;
        this.pcrPid = -1;
        resetPayloadReaders();
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.ts.TsExtractor()};
    }

    public static /* synthetic */ int access$108(com.google.android.exoplayer2.extractor.ts.TsExtractor tsExtractor) {
        int i = tsExtractor.remainingPmts;
        tsExtractor.remainingPmts = i + 1;
        return i;
    }

    private boolean fillBufferWithAtLeastOnePacket(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        byte[] data = this.tsPacketBuffer.getData();
        if (9400 - this.tsPacketBuffer.getPosition() < 188) {
            int iBytesLeft = this.tsPacketBuffer.bytesLeft();
            if (iBytesLeft > 0) {
                java.lang.System.arraycopy(data, this.tsPacketBuffer.getPosition(), data, 0, iBytesLeft);
            }
            this.tsPacketBuffer.reset(data, iBytesLeft);
        }
        while (this.tsPacketBuffer.bytesLeft() < 188) {
            int iLimit = this.tsPacketBuffer.limit();
            int i = extractorInput.read(data, iLimit, 9400 - iLimit);
            if (i == -1) {
                return false;
            }
            this.tsPacketBuffer.setLimit(iLimit + i);
        }
        return true;
    }

    private int findEndOfFirstTsPacketInBuffer() throws com.google.android.exoplayer2.ParserException {
        int position = this.tsPacketBuffer.getPosition();
        int iLimit = this.tsPacketBuffer.limit();
        int iFindSyncBytePosition = com.google.android.exoplayer2.extractor.ts.TsUtil.findSyncBytePosition(this.tsPacketBuffer.getData(), position, iLimit);
        this.tsPacketBuffer.setPosition(iFindSyncBytePosition);
        int i = iFindSyncBytePosition + 188;
        if (i > iLimit) {
            int i2 = (iFindSyncBytePosition - position) + this.bytesSinceLastSync;
            this.bytesSinceLastSync = i2;
            if (this.mode == 2 && i2 > 376) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i;
    }

    private void maybeOutputSeekMap(long j) {
        com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
        com.google.android.exoplayer2.extractor.SeekMap unseekable;
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.getDurationUs() != com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker tsBinarySearchSeeker = new com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker(this.durationReader.getPcrTimestampAdjuster(), this.durationReader.getDurationUs(), j, this.pcrPid, this.timestampSearchBytes);
            this.tsBinarySearchSeeker = tsBinarySearchSeeker;
            extractorOutput = this.output;
            unseekable = tsBinarySearchSeeker.getSeekMap();
        } else {
            extractorOutput = this.output;
            unseekable = new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(this.durationReader.getDurationUs());
        }
        extractorOutput.seekMap(unseekable);
    }

    private void resetPayloadReaders() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        android.util.SparseArray<com.google.android.exoplayer2.extractor.ts.TsPayloadReader> sparseArrayCreateInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i = 0; i < size; i++) {
            this.tsPayloadReaders.put(sparseArrayCreateInitialPayloadReaders.keyAt(i), sparseArrayCreateInitialPayloadReaders.valueAt(i));
        }
        this.tsPayloadReaders.put(0, new com.google.android.exoplayer2.extractor.ts.SectionReader(new com.google.android.exoplayer2.extractor.ts.TsExtractor.PatReader()));
        this.id3Reader = null;
    }

    private boolean shouldConsumePacketPayload(int i) {
        return this.mode == 2 || this.tracksEnded || !this.trackPids.get(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ef  */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput r17, com.google.android.exoplayer2.extractor.PositionHolder r18) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.TsExtractor.read(com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.extractor.PositionHolder):int");
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker tsBinarySearchSeeker;
        com.google.android.exoplayer2.util.Assertions.checkState(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
            boolean z = timestampAdjuster.getTimestampOffsetUs() == com.google.android.exoplayer2.C.TIME_UNSET;
            if (!z) {
                long firstSampleTimestampUs = timestampAdjuster.getFirstSampleTimestampUs();
                z = (firstSampleTimestampUs == com.google.android.exoplayer2.C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j2) ? false : true;
            }
            if (z) {
                timestampAdjuster.reset(j2);
            }
        }
        if (j2 != 0 && (tsBinarySearchSeeker = this.tsBinarySearchSeeker) != null) {
            tsBinarySearchSeeker.setSeekTargetUs(j2);
        }
        this.tsPacketBuffer.reset(0);
        this.continuityCounters.clear();
        for (int i2 = 0; i2 < this.tsPayloadReaders.size(); i2++) {
            this.tsPayloadReaders.valueAt(i2).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        boolean z;
        byte[] data = this.tsPacketBuffer.getData();
        extractorInput.peekFully(data, 0, com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker.MINIMUM_SEARCH_RANGE_BYTES);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                }
                if (data[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                extractorInput.skipFully(i);
                return true;
            }
        }
        return false;
    }
}
