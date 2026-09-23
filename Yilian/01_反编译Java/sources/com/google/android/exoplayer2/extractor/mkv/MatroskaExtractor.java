package com.google.android.exoplayer2.extractor.mkv;

/* loaded from: classes.dex */
public class MatroskaExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int BLOCK_ADDITIONAL_ID_VP9_ITU_T_35 = 4;
    public static final int BLOCK_ADD_ID_TYPE_DVCC = 1685480259;
    public static final int BLOCK_ADD_ID_TYPE_DVVC = 1685485123;
    public static final int BLOCK_STATE_DATA = 2;
    public static final int BLOCK_STATE_HEADER = 1;
    public static final int BLOCK_STATE_START = 0;
    public static final java.lang.String CODEC_ID_AAC = "A_AAC";
    public static final java.lang.String CODEC_ID_AC3 = "A_AC3";
    public static final java.lang.String CODEC_ID_ACM = "A_MS/ACM";
    public static final java.lang.String CODEC_ID_ASS = "S_TEXT/ASS";
    public static final java.lang.String CODEC_ID_AV1 = "V_AV1";
    public static final java.lang.String CODEC_ID_DTS = "A_DTS";
    public static final java.lang.String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    public static final java.lang.String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    public static final java.lang.String CODEC_ID_DVBSUB = "S_DVBSUB";
    public static final java.lang.String CODEC_ID_E_AC3 = "A_EAC3";
    public static final java.lang.String CODEC_ID_FLAC = "A_FLAC";
    public static final java.lang.String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    public static final java.lang.String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    public static final java.lang.String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    public static final java.lang.String CODEC_ID_MP2 = "A_MPEG/L2";
    public static final java.lang.String CODEC_ID_MP3 = "A_MPEG/L3";
    public static final java.lang.String CODEC_ID_MPEG2 = "V_MPEG2";
    public static final java.lang.String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    public static final java.lang.String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    public static final java.lang.String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    public static final java.lang.String CODEC_ID_OPUS = "A_OPUS";
    public static final java.lang.String CODEC_ID_PCM_FLOAT = "A_PCM/FLOAT/IEEE";
    public static final java.lang.String CODEC_ID_PCM_INT_BIG = "A_PCM/INT/BIG";
    public static final java.lang.String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    public static final java.lang.String CODEC_ID_PGS = "S_HDMV/PGS";
    public static final java.lang.String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    public static final java.lang.String CODEC_ID_THEORA = "V_THEORA";
    public static final java.lang.String CODEC_ID_TRUEHD = "A_TRUEHD";
    public static final java.lang.String CODEC_ID_VOBSUB = "S_VOBSUB";
    public static final java.lang.String CODEC_ID_VORBIS = "A_VORBIS";
    public static final java.lang.String CODEC_ID_VP8 = "V_VP8";
    public static final java.lang.String CODEC_ID_VP9 = "V_VP9";
    public static final java.lang.String DOC_TYPE_MATROSKA = "matroska";
    public static final java.lang.String DOC_TYPE_WEBM = "webm";
    public static final int ENCRYPTION_IV_SIZE = 8;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    public static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    public static final int FOURCC_COMPRESSION_H263 = 859189832;
    public static final int FOURCC_COMPRESSION_VC1 = 826496599;
    public static final int ID_AUDIO = 225;
    public static final int ID_AUDIO_BIT_DEPTH = 25188;
    public static final int ID_BLOCK = 161;
    public static final int ID_BLOCK_ADDITIONAL = 165;
    public static final int ID_BLOCK_ADDITIONS = 30113;
    public static final int ID_BLOCK_ADDITION_MAPPING = 16868;
    public static final int ID_BLOCK_ADD_ID = 238;
    public static final int ID_BLOCK_ADD_ID_EXTRA_DATA = 16877;
    public static final int ID_BLOCK_ADD_ID_TYPE = 16871;
    public static final int ID_BLOCK_DURATION = 155;
    public static final int ID_BLOCK_GROUP = 160;
    public static final int ID_BLOCK_MORE = 166;
    public static final int ID_CHANNELS = 159;
    public static final int ID_CLUSTER = 524531317;
    public static final int ID_CODEC_DELAY = 22186;
    public static final int ID_CODEC_ID = 134;
    public static final int ID_CODEC_PRIVATE = 25506;
    public static final int ID_COLOUR = 21936;
    public static final int ID_COLOUR_PRIMARIES = 21947;
    public static final int ID_COLOUR_RANGE = 21945;
    public static final int ID_COLOUR_TRANSFER = 21946;
    public static final int ID_CONTENT_COMPRESSION = 20532;
    public static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    public static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    public static final int ID_CONTENT_ENCODING = 25152;
    public static final int ID_CONTENT_ENCODINGS = 28032;
    public static final int ID_CONTENT_ENCODING_ORDER = 20529;
    public static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    public static final int ID_CONTENT_ENCRYPTION = 20533;
    public static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    public static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    public static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    public static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    public static final int ID_CUES = 475249515;
    public static final int ID_CUE_CLUSTER_POSITION = 241;
    public static final int ID_CUE_POINT = 187;
    public static final int ID_CUE_TIME = 179;
    public static final int ID_CUE_TRACK_POSITIONS = 183;
    public static final int ID_DEFAULT_DURATION = 2352003;
    public static final int ID_DISPLAY_HEIGHT = 21690;
    public static final int ID_DISPLAY_UNIT = 21682;
    public static final int ID_DISPLAY_WIDTH = 21680;
    public static final int ID_DOC_TYPE = 17026;
    public static final int ID_DOC_TYPE_READ_VERSION = 17029;
    public static final int ID_DURATION = 17545;
    public static final int ID_EBML = 440786851;
    public static final int ID_EBML_READ_VERSION = 17143;
    public static final int ID_FLAG_DEFAULT = 136;
    public static final int ID_FLAG_FORCED = 21930;
    public static final int ID_INFO = 357149030;
    public static final int ID_LANGUAGE = 2274716;
    public static final int ID_LUMNINANCE_MAX = 21977;
    public static final int ID_LUMNINANCE_MIN = 21978;
    public static final int ID_MASTERING_METADATA = 21968;
    public static final int ID_MAX_BLOCK_ADDITION_ID = 21998;
    public static final int ID_MAX_CLL = 21948;
    public static final int ID_MAX_FALL = 21949;
    public static final int ID_NAME = 21358;
    public static final int ID_PIXEL_HEIGHT = 186;
    public static final int ID_PIXEL_WIDTH = 176;
    public static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    public static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    public static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    public static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    public static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    public static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    public static final int ID_PROJECTION = 30320;
    public static final int ID_PROJECTION_POSE_PITCH = 30324;
    public static final int ID_PROJECTION_POSE_ROLL = 30325;
    public static final int ID_PROJECTION_POSE_YAW = 30323;
    public static final int ID_PROJECTION_PRIVATE = 30322;
    public static final int ID_PROJECTION_TYPE = 30321;
    public static final int ID_REFERENCE_BLOCK = 251;
    public static final int ID_SAMPLING_FREQUENCY = 181;
    public static final int ID_SEEK = 19899;
    public static final int ID_SEEK_HEAD = 290298740;
    public static final int ID_SEEK_ID = 21419;
    public static final int ID_SEEK_POSITION = 21420;
    public static final int ID_SEEK_PRE_ROLL = 22203;
    public static final int ID_SEGMENT = 408125543;
    public static final int ID_SEGMENT_INFO = 357149030;
    public static final int ID_SIMPLE_BLOCK = 163;
    public static final int ID_STEREO_MODE = 21432;
    public static final int ID_TIMECODE_SCALE = 2807729;
    public static final int ID_TIME_CODE = 231;
    public static final int ID_TRACKS = 374648427;
    public static final int ID_TRACK_ENTRY = 174;
    public static final int ID_TRACK_NUMBER = 215;
    public static final int ID_TRACK_TYPE = 131;
    public static final int ID_VIDEO = 224;
    public static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    public static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    public static final int LACING_EBML = 3;
    public static final int LACING_FIXED_SIZE = 2;
    public static final int LACING_NONE = 0;
    public static final int LACING_XIPH = 1;
    public static final int OPUS_MAX_INPUT_SIZE = 5760;
    public static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    public static final java.lang.String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    public static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    public static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    public static final java.lang.String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    public static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    public static final java.lang.String TAG = "MatroskaExtractor";
    public static final java.util.Map<java.lang.String, java.lang.Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    public static final int TRACK_TYPE_AUDIO = 2;
    public static final int UNSET_ENTRY_ID = -1;
    public static final int VORBIS_MAX_INPUT_SIZE = 8192;
    public static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    public static final int WAVE_FORMAT_PCM = 1;
    public static final int WAVE_FORMAT_SIZE = 18;
    public final com.google.android.exoplayer2.util.ParsableByteArray blockAdditionalData;
    public int blockAdditionalId;
    public long blockDurationUs;
    public int blockFlags;
    public boolean blockHasReferenceBlock;
    public int blockSampleCount;
    public int blockSampleIndex;
    public int[] blockSampleSizes;
    public int blockState;
    public long blockTimeUs;
    public int blockTrackNumber;
    public int blockTrackNumberLength;
    public long clusterTimecodeUs;
    public com.google.android.exoplayer2.util.LongArray cueClusterPositions;
    public com.google.android.exoplayer2.util.LongArray cueTimesUs;
    public long cuesContentPosition;
    public com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track currentTrack;
    public long durationTimecode;
    public long durationUs;
    public final com.google.android.exoplayer2.util.ParsableByteArray encryptionInitializationVector;
    public final com.google.android.exoplayer2.util.ParsableByteArray encryptionSubsampleData;
    public java.nio.ByteBuffer encryptionSubsampleDataBuffer;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public boolean haveOutputSample;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalLength;
    public final com.google.android.exoplayer2.util.ParsableByteArray nalStartCode;
    public final com.google.android.exoplayer2.extractor.mkv.EbmlReader reader;
    public int sampleBytesRead;
    public int sampleBytesWritten;
    public int sampleCurrentNalBytesRemaining;
    public boolean sampleEncodingHandled;
    public boolean sampleInitializationVectorRead;
    public int samplePartitionCount;
    public boolean samplePartitionCountRead;
    public byte sampleSignalByte;
    public boolean sampleSignalByteRead;
    public final com.google.android.exoplayer2.util.ParsableByteArray sampleStrippedBytes;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch;
    public int seekEntryId;
    public final com.google.android.exoplayer2.util.ParsableByteArray seekEntryIdBytes;
    public long seekEntryPosition;
    public boolean seekForCues;
    public final boolean seekForCuesEnabled;
    public long seekPositionAfterBuildingCues;
    public boolean seenClusterPositionForCurrentCuePoint;
    public long segmentContentPosition;
    public long segmentContentSize;
    public boolean sentSeekMap;
    public final com.google.android.exoplayer2.util.ParsableByteArray subtitleSample;
    public long timecodeScale;
    public final android.util.SparseArray<com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track> tracks;
    public final com.google.android.exoplayer2.extractor.mkv.VarintReader varintReader;
    public final com.google.android.exoplayer2.util.ParsableByteArray vorbisNumPageSamples;
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.h.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY, 48, 48, 48, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_CARRIAGE_RETURN, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_CARRIAGE_RETURN, 62, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING, 48, 48, 58, 48, 48, 58, 48, 48, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY, 48, 48, 48, 10};
    public static final byte[] SSA_DIALOGUE_FORMAT = com.google.android.exoplayer2.util.Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    public static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ERASE_DISPLAYED_MEMORY};
    public static final java.util.UUID WAVE_SUBFORMAT_PCM = new java.util.UUID(72057594037932032L, -9223371306706625679L);

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public final class InnerEbmlProcessor implements com.google.android.exoplayer2.extractor.mkv.EbmlProcessor {
        public InnerEbmlProcessor() {
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void binaryElement(int i, int i2, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void endMasterElement(int i) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.endMasterElement(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void floatElement(int i, double d2) {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.floatElement(i, d2);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public int getElementType(int i) {
            return com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void integerElement(int i, long j) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.integerElement(i, j);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int i) {
            return com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void startMasterElement(int i, long j, long j2) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void stringElement(int i, java.lang.String str) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.this.stringElement(i, str);
        }
    }

    public static final class Track {
        public static final int DEFAULT_MAX_CLL = 1000;
        public static final int DEFAULT_MAX_FALL = 200;
        public static final int DISPLAY_UNIT_PIXELS = 0;
        public static final int MAX_CHROMATICITY = 50000;
        public int audioBitDepth;
        public int blockAddIdType;
        public int channelCount;
        public long codecDelayNs;
        public java.lang.String codecId;
        public byte[] codecPrivate;
        public int colorRange;
        public int colorSpace;
        public int colorTransfer;
        public com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public int displayHeight;
        public int displayUnit;
        public int displayWidth;
        public byte[] dolbyVisionConfigBytes;
        public com.google.android.exoplayer2.drm.DrmInitData drmInitData;
        public boolean flagDefault;
        public boolean flagForced;
        public boolean hasColorInfo;
        public boolean hasContentEncryption;
        public int height;
        public java.lang.String language;
        public int maxBlockAdditionId;
        public int maxContentLuminance;
        public int maxFrameAverageLuminance;
        public float maxMasteringLuminance;
        public float minMasteringLuminance;
        public int nalUnitLengthFieldLength;
        public java.lang.String name;
        public int number;
        public com.google.android.exoplayer2.extractor.TrackOutput output;
        public float primaryBChromaticityX;
        public float primaryBChromaticityY;
        public float primaryGChromaticityX;
        public float primaryGChromaticityY;
        public float primaryRChromaticityX;
        public float primaryRChromaticityY;
        public byte[] projectionData;
        public float projectionPosePitch;
        public float projectionPoseRoll;
        public float projectionPoseYaw;
        public int projectionType;
        public int sampleRate;
        public byte[] sampleStrippedBytes;
        public long seekPreRollNs;
        public int stereoMode;
        public com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public float whitePointChromaticityX;
        public float whitePointChromaticityY;
        public int width;

        public Track() {
            this.width = -1;
            this.height = -1;
            this.displayWidth = -1;
            this.displayHeight = -1;
            this.displayUnit = 0;
            this.projectionType = -1;
            this.projectionPoseYaw = 0.0f;
            this.projectionPosePitch = 0.0f;
            this.projectionPoseRoll = 0.0f;
            this.projectionData = null;
            this.stereoMode = -1;
            this.hasColorInfo = false;
            this.colorSpace = -1;
            this.colorTransfer = -1;
            this.colorRange = -1;
            this.maxContentLuminance = 1000;
            this.maxFrameAverageLuminance = 200;
            this.primaryRChromaticityX = -1.0f;
            this.primaryRChromaticityY = -1.0f;
            this.primaryGChromaticityX = -1.0f;
            this.primaryGChromaticityY = -1.0f;
            this.primaryBChromaticityX = -1.0f;
            this.primaryBChromaticityY = -1.0f;
            this.whitePointChromaticityX = -1.0f;
            this.whitePointChromaticityY = -1.0f;
            this.maxMasteringLuminance = -1.0f;
            this.minMasteringLuminance = -1.0f;
            this.channelCount = 1;
            this.audioBitDepth = -1;
            this.sampleRate = 8000;
            this.codecDelayNs = 0L;
            this.seekPreRollNs = 0L;
            this.flagDefault = true;
            this.language = "eng";
        }

        /* JADX INFO: Access modifiers changed from: private */
        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"output"})
        public void assertOutputInitialized() {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.output);
        }

        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"codecPrivate"})
        private byte[] getCodecPrivate(java.lang.String str) throws com.google.android.exoplayer2.ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(strValueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(strValueOf) : new java.lang.String("Missing CodecPrivate for codec "), null);
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            java.nio.ByteBuffer byteBufferOrder = java.nio.ByteBuffer.wrap(bArr).order(java.nio.ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.maxMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) (this.minMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) this.maxContentLuminance);
            byteBufferOrder.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        public static android.util.Pair<java.lang.String, java.util.List<byte[]>> parseFourCcPrivate(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (littleEndianUnsignedInt == 1482049860) {
                    return new android.util.Pair<>(com.google.android.exoplayer2.util.MimeTypes.VIDEO_DIVX, null);
                }
                if (littleEndianUnsignedInt == 859189832) {
                    return new android.util.Pair<>(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H263, null);
                }
                if (littleEndianUnsignedInt != 826496599) {
                    com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new android.util.Pair<>(com.google.android.exoplayer2.util.MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] data = parsableByteArray.getData();
                for (int position = parsableByteArray.getPosition() + 20; position < data.length - 4; position++) {
                    if (data[position] == 0 && data[position + 1] == 0 && data[position + 2] == 1 && data[position + 3] == 15) {
                        return new android.util.Pair<>(com.google.android.exoplayer2.util.MimeTypes.VIDEO_VC1, java.util.Collections.singletonList(java.util.Arrays.copyOfRange(data, position, data.length)));
                    }
                }
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        public static boolean parseMsAcmCodecPrivate(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
            try {
                int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (littleEndianUnsignedShort == 1) {
                    return true;
                }
                if (littleEndianUnsignedShort != 65534) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                if (parsableByteArray.readLong() == com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits()) {
                    if (parsableByteArray.readLong() == com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        public static java.util.List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws com.google.android.exoplayer2.ParserException {
            try {
                if (bArr[0] != 2) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i = 1;
                int i2 = 0;
                while ((bArr[i] & 255) == 255) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + (bArr[i] & 255);
                int i5 = 0;
                while ((bArr[i3] & 255) == 255) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                int i7 = i5 + (bArr[i3] & 255);
                if (bArr[i6] != 1) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i4];
                java.lang.System.arraycopy(bArr, i6, bArr2, 0, i4);
                int i8 = i6 + i4;
                if (bArr[i8] != 3) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i9 = i8 + i7;
                if (bArr[i9] != 5) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                java.lang.System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                java.util.ArrayList arrayList = new java.util.ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x03a4  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x03bc  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x03be  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x03cb  */
        /* JADX WARN: Removed duplicated region for block: B:179:0x03dd  */
        /* JADX WARN: Removed duplicated region for block: B:225:0x0492  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x04e2  */
        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput r19, int r20) throws com.google.android.exoplayer2.ParserException {
            /*
                Method dump skipped, instructions count: 1522
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track.initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput, int):void");
        }

        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
        public void outputPendingSampleMetadata() {
            com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this.output, this.cryptoData);
            }
        }

        public void reset() {
            com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = java.util.Collections.unmodifiableMap(map);
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new com.google.android.exoplayer2.extractor.mkv.DefaultEbmlReader(), i);
    }

    public MatroskaExtractor(com.google.android.exoplayer2.extractor.mkv.EbmlReader ebmlReader, int i) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = com.google.android.exoplayer2.C.TIME_UNSET;
        this.durationTimecode = com.google.android.exoplayer2.C.TIME_UNSET;
        this.durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.reader = ebmlReader;
        ebmlReader.init(new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.InnerEbmlProcessor());
        this.seekForCuesEnabled = (i & 1) == 0;
        this.varintReader = new com.google.android.exoplayer2.extractor.mkv.VarintReader();
        this.tracks = new android.util.SparseArray<>();
        this.scratch = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        this.vorbisNumPageSamples = new com.google.android.exoplayer2.util.ParsableByteArray(java.nio.ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        this.nalStartCode = new com.google.android.exoplayer2.util.ParsableByteArray(com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE);
        this.nalLength = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        this.sampleStrippedBytes = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.subtitleSample = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.encryptionInitializationVector = new com.google.android.exoplayer2.util.ParsableByteArray(8);
        this.encryptionSubsampleData = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.blockAdditionalData = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.blockSampleSizes = new int[1];
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor()};
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private void assertInCues(int i) throws com.google.android.exoplayer2.ParserException {
        if (this.cueTimesUs == null || this.cueClusterPositions == null) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"currentTrack"})
    private void assertInTrackEntry(int i) throws com.google.android.exoplayer2.ParserException {
        if (this.currentTrack != null) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(43);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"extractorOutput"})
    private void assertInitialized() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.extractorOutput);
    }

    private com.google.android.exoplayer2.extractor.SeekMap buildSeekMap(com.google.android.exoplayer2.util.LongArray longArray, com.google.android.exoplayer2.util.LongArray longArray2) {
        int i;
        if (this.segmentContentPosition == -1 || this.durationUs == com.google.android.exoplayer2.C.TIME_UNSET || longArray == null || longArray.size() == 0 || longArray2 == null || longArray2.size() != longArray.size()) {
            return new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(this.durationUs);
        }
        int size = longArray.size();
        int[] iArrCopyOf = new int[size];
        long[] jArrCopyOf = new long[size];
        long[] jArrCopyOf2 = new long[size];
        long[] jArrCopyOf3 = new long[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jArrCopyOf3[i3] = longArray.get(i3);
            jArrCopyOf[i3] = longArray2.get(i3) + this.segmentContentPosition;
        }
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArrCopyOf[i2] = (int) (jArrCopyOf[i4] - jArrCopyOf[i2]);
            jArrCopyOf2[i2] = jArrCopyOf3[i4] - jArrCopyOf3[i2];
            i2 = i4;
        }
        iArrCopyOf[i] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArrCopyOf[i]);
        jArrCopyOf2[i] = this.durationUs - jArrCopyOf3[i];
        long j = jArrCopyOf2[i];
        if (j <= 0) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(72);
            sb.append("Discarding last cue point with unexpected duration: ");
            sb.append(j);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            iArrCopyOf = java.util.Arrays.copyOf(iArrCopyOf, i);
            jArrCopyOf = java.util.Arrays.copyOf(jArrCopyOf, i);
            jArrCopyOf2 = java.util.Arrays.copyOf(jArrCopyOf2, i);
            jArrCopyOf3 = java.util.Arrays.copyOf(jArrCopyOf3, i);
        }
        return new com.google.android.exoplayer2.extractor.ChunkIndex(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    private void commitSampleToOutput(com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track, long j, int i, int i2, int i3) {
        java.lang.String str;
        com.google.android.exoplayer2.extractor.TrueHdSampleRechunker trueHdSampleRechunker = track.trueHdSampleRechunker;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.sampleMetadata(track.output, j, i, i2, i3, track.cryptoData);
        } else {
            if (CODEC_ID_SUBRIP.equals(track.codecId) || CODEC_ID_ASS.equals(track.codecId)) {
                if (this.blockSampleCount > 1) {
                    str = "Skipping subtitle sample in laced block.";
                } else {
                    long j2 = this.blockDurationUs;
                    if (j2 == com.google.android.exoplayer2.C.TIME_UNSET) {
                        str = "Skipping subtitle sample with no duration.";
                    } else {
                        setSubtitleEndTime(track.codecId, j2, this.subtitleSample.getData());
                        int position = this.subtitleSample.getPosition();
                        while (true) {
                            if (position >= this.subtitleSample.limit()) {
                                break;
                            }
                            if (this.subtitleSample.getData()[position] == 0) {
                                this.subtitleSample.setLimit(position);
                                break;
                            }
                            position++;
                        }
                        com.google.android.exoplayer2.extractor.TrackOutput trackOutput = track.output;
                        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.subtitleSample;
                        trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
                        i2 += this.subtitleSample.limit();
                    }
                }
                com.google.android.exoplayer2.util.Log.w(TAG, str);
            }
            if ((268435456 & i) != 0) {
                if (this.blockSampleCount > 1) {
                    i &= -268435457;
                } else {
                    int iLimit = this.blockAdditionalData.limit();
                    track.output.sampleData(this.blockAdditionalData, iLimit, 2);
                    i2 += iLimit;
                }
            }
            track.output.sampleMetadata(j, i, i2, i3, track.cryptoData);
        }
        this.haveOutputSample = true;
    }

    public static int[] ensureArrayCapacity(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[java.lang.Math.max(iArr.length * 2, i)];
    }

    private int finishWriteSampleData() {
        int i = this.sampleBytesWritten;
        resetWriteSampleData();
        return i;
    }

    public static byte[] formatSubtitleTimecode(long j, java.lang.String str, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j != com.google.android.exoplayer2.C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * javax.jmdns.impl.constants.DNSConstants.DNS_TTL) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return com.google.android.exoplayer2.util.Util.getUtf8Bytes(java.lang.String.format(java.util.Locale.US, str, java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    private com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track getCurrentTrack(int i) throws com.google.android.exoplayer2.ParserException {
        assertInTrackEntry(i);
        return this.currentTrack;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:101:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCodecSupported(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.isCodecSupported(java.lang.String):boolean");
    }

    private boolean maybeSeekForCues(com.google.android.exoplayer2.extractor.PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    private void readScratch(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        if (this.scratch.limit() >= i) {
            return;
        }
        if (this.scratch.capacity() < i) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.scratch;
            parsableByteArray.ensureCapacity(java.lang.Math.max(parsableByteArray.capacity() * 2, i));
        }
        extractorInput.readFully(this.scratch.getData(), this.scratch.limit(), i - this.scratch.limit());
        this.scratch.setLimit(i);
    }

    private void resetWriteSampleData() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset(0);
    }

    private long scaleTimecodeToUs(long j) throws com.google.android.exoplayer2.ParserException {
        long j2 = this.timecodeScale;
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
            return com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j, j2, 1000L);
        }
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setSubtitleEndTime(java.lang.String r4, long r5, byte[] r7) {
        /*
            int r0 = r4.hashCode()
            r1 = 738597099(0x2c0618eb, float:1.9056378E-12)
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L1b
            r1 = 1422270023(0x54c61e47, float:6.807292E12)
            if (r0 == r1) goto L11
            goto L25
        L11:
            java.lang.String r0 = "S_TEXT/UTF8"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L25
            r4 = 0
            goto L26
        L1b:
            java.lang.String r0 = "S_TEXT/ASS"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L25
            r4 = 1
            goto L26
        L25:
            r4 = -1
        L26:
            if (r4 == 0) goto L3b
            if (r4 != r3) goto L35
            r0 = 10000(0x2710, double:4.9407E-320)
            java.lang.String r4 = "%01d:%02d:%02d:%02d"
            byte[] r4 = formatSubtitleTimecode(r5, r4, r0)
            r5 = 21
            goto L45
        L35:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>()
            throw r4
        L3b:
            r0 = 1000(0x3e8, double:4.94E-321)
            java.lang.String r4 = "%02d:%02d:%02d,%03d"
            byte[] r4 = formatSubtitleTimecode(r5, r4, r0)
            r5 = 19
        L45:
            int r6 = r4.length
            java.lang.System.arraycopy(r4, r2, r7, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.setSubtitleEndTime(java.lang.String, long, byte[]):void");
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#2.output"})
    private int writeSampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track, int i) throws com.google.android.exoplayer2.ParserException {
        int i2;
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SUBRIP_PREFIX, i);
        } else {
            if (!CODEC_ID_ASS.equals(track.codecId)) {
                com.google.android.exoplayer2.extractor.TrackOutput trackOutput = track.output;
                if (!this.sampleEncodingHandled) {
                    if (track.hasContentEncryption) {
                        this.blockFlags &= -1073741825;
                        if (!this.sampleSignalByteRead) {
                            extractorInput.readFully(this.scratch.getData(), 0, 1);
                            this.sampleBytesRead++;
                            if ((this.scratch.getData()[0] & 128) == 128) {
                                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                            }
                            this.sampleSignalByte = this.scratch.getData()[0];
                            this.sampleSignalByteRead = true;
                        }
                        if ((this.sampleSignalByte & 1) == 1) {
                            boolean z = (this.sampleSignalByte & 2) == 2;
                            this.blockFlags |= 1073741824;
                            if (!this.sampleInitializationVectorRead) {
                                extractorInput.readFully(this.encryptionInitializationVector.getData(), 0, 8);
                                this.sampleBytesRead += 8;
                                this.sampleInitializationVectorRead = true;
                                this.scratch.getData()[0] = (byte) ((z ? 128 : 0) | 8);
                                this.scratch.setPosition(0);
                                trackOutput.sampleData(this.scratch, 1, 1);
                                this.sampleBytesWritten++;
                                this.encryptionInitializationVector.setPosition(0);
                                trackOutput.sampleData(this.encryptionInitializationVector, 8, 1);
                                this.sampleBytesWritten += 8;
                            }
                            if (z) {
                                if (!this.samplePartitionCountRead) {
                                    extractorInput.readFully(this.scratch.getData(), 0, 1);
                                    this.sampleBytesRead++;
                                    this.scratch.setPosition(0);
                                    this.samplePartitionCount = this.scratch.readUnsignedByte();
                                    this.samplePartitionCountRead = true;
                                }
                                int i3 = this.samplePartitionCount * 4;
                                this.scratch.reset(i3);
                                extractorInput.readFully(this.scratch.getData(), 0, i3);
                                this.sampleBytesRead += i3;
                                short s = (short) ((this.samplePartitionCount / 2) + 1);
                                int i4 = (s * 6) + 2;
                                java.nio.ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                                if (byteBuffer == null || byteBuffer.capacity() < i4) {
                                    this.encryptionSubsampleDataBuffer = java.nio.ByteBuffer.allocate(i4);
                                }
                                this.encryptionSubsampleDataBuffer.position(0);
                                this.encryptionSubsampleDataBuffer.putShort(s);
                                int i5 = 0;
                                int i6 = 0;
                                while (true) {
                                    i2 = this.samplePartitionCount;
                                    if (i5 >= i2) {
                                        break;
                                    }
                                    int unsignedIntToInt = this.scratch.readUnsignedIntToInt();
                                    if (i5 % 2 == 0) {
                                        this.encryptionSubsampleDataBuffer.putShort((short) (unsignedIntToInt - i6));
                                    } else {
                                        this.encryptionSubsampleDataBuffer.putInt(unsignedIntToInt - i6);
                                    }
                                    i5++;
                                    i6 = unsignedIntToInt;
                                }
                                int i7 = (i - this.sampleBytesRead) - i6;
                                int i8 = i2 % 2;
                                java.nio.ByteBuffer byteBuffer2 = this.encryptionSubsampleDataBuffer;
                                if (i8 == 1) {
                                    byteBuffer2.putInt(i7);
                                } else {
                                    byteBuffer2.putShort((short) i7);
                                    this.encryptionSubsampleDataBuffer.putInt(0);
                                }
                                this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i4);
                                trackOutput.sampleData(this.encryptionSubsampleData, i4, 1);
                                this.sampleBytesWritten += i4;
                            }
                        }
                    } else {
                        byte[] bArr = track.sampleStrippedBytes;
                        if (bArr != null) {
                            this.sampleStrippedBytes.reset(bArr, bArr.length);
                        }
                    }
                    if (track.maxBlockAdditionId > 0) {
                        this.blockFlags |= 268435456;
                        this.blockAdditionalData.reset(0);
                        this.scratch.reset(4);
                        this.scratch.getData()[0] = (byte) ((i >> 24) & 255);
                        this.scratch.getData()[1] = (byte) ((i >> 16) & 255);
                        this.scratch.getData()[2] = (byte) ((i >> 8) & 255);
                        this.scratch.getData()[3] = (byte) (i & 255);
                        trackOutput.sampleData(this.scratch, 4, 2);
                        this.sampleBytesWritten += 4;
                    }
                    this.sampleEncodingHandled = true;
                }
                int iLimit = this.sampleStrippedBytes.limit() + i;
                if (!CODEC_ID_H264.equals(track.codecId) && !CODEC_ID_H265.equals(track.codecId)) {
                    if (track.trueHdSampleRechunker != null) {
                        com.google.android.exoplayer2.util.Assertions.checkState(this.sampleStrippedBytes.limit() == 0);
                        track.trueHdSampleRechunker.startSample(extractorInput);
                    }
                    while (true) {
                        int i9 = this.sampleBytesRead;
                        if (i9 >= iLimit) {
                            break;
                        }
                        int iWriteToOutput = writeToOutput(extractorInput, trackOutput, iLimit - i9);
                        this.sampleBytesRead += iWriteToOutput;
                        this.sampleBytesWritten += iWriteToOutput;
                    }
                } else {
                    byte[] data = this.nalLength.getData();
                    data[0] = 0;
                    data[1] = 0;
                    data[2] = 0;
                    int i10 = track.nalUnitLengthFieldLength;
                    int i11 = 4 - i10;
                    while (this.sampleBytesRead < iLimit) {
                        int i12 = this.sampleCurrentNalBytesRemaining;
                        if (i12 == 0) {
                            writeToTarget(extractorInput, data, i11, i10);
                            this.sampleBytesRead += i10;
                            this.nalLength.setPosition(0);
                            this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                            this.nalStartCode.setPosition(0);
                            trackOutput.sampleData(this.nalStartCode, 4);
                            this.sampleBytesWritten += 4;
                        } else {
                            int iWriteToOutput2 = writeToOutput(extractorInput, trackOutput, i12);
                            this.sampleBytesRead += iWriteToOutput2;
                            this.sampleBytesWritten += iWriteToOutput2;
                            this.sampleCurrentNalBytesRemaining -= iWriteToOutput2;
                        }
                    }
                }
                if (CODEC_ID_VORBIS.equals(track.codecId)) {
                    this.vorbisNumPageSamples.setPosition(0);
                    trackOutput.sampleData(this.vorbisNumPageSamples, 4);
                    this.sampleBytesWritten += 4;
                }
                return finishWriteSampleData();
            }
            writeSubtitleSampleData(extractorInput, SSA_PREFIX, i);
        }
        return finishWriteSampleData();
    }

    private void writeSubtitleSampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr, int i) {
        int length = bArr.length + i;
        if (this.subtitleSample.capacity() < length) {
            this.subtitleSample.reset(java.util.Arrays.copyOf(bArr, length + i));
        } else {
            java.lang.System.arraycopy(bArr, 0, this.subtitleSample.getData(), 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.getData(), bArr.length, i);
        this.subtitleSample.setPosition(0);
        this.subtitleSample.setLimit(length);
    }

    private int writeToOutput(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.TrackOutput trackOutput, int i) {
        int iBytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (iBytesLeft <= 0) {
            return trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, i, false);
        }
        int iMin = java.lang.Math.min(i, iBytesLeft);
        trackOutput.sampleData(this.sampleStrippedBytes, iMin);
        return iMin;
    }

    private void writeToTarget(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr, int i, int i2) {
        int iMin = java.lang.Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, iMin);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x023f, code lost:
    
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void binaryElement(int r21, int r22, com.google.android.exoplayer2.extractor.ExtractorInput r23) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.binaryElement(int, int, com.google.android.exoplayer2.extractor.ExtractorInput):void");
    }

    public void endMasterElement(int i) throws com.google.android.exoplayer2.ParserException {
        assertInitialized();
        if (i == 160) {
            if (this.blockState != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.blockSampleCount; i3++) {
                i2 += this.blockSampleSizes[i3];
            }
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track = this.tracks.get(this.blockTrackNumber);
            track.assertOutputInitialized();
            for (int i4 = 0; i4 < this.blockSampleCount; i4++) {
                long j = ((track.defaultSampleDurationNs * i4) / 1000) + this.blockTimeUs;
                int i5 = this.blockFlags;
                if (i4 == 0 && !this.blockHasReferenceBlock) {
                    i5 |= 1;
                }
                int i6 = this.blockSampleSizes[i4];
                i2 -= i6;
                commitSampleToOutput(track, j, i5, i6, i2);
            }
            this.blockState = 0;
            return;
        }
        if (i == 174) {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track2 = (com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.currentTrack);
            java.lang.String str = track2.codecId;
            if (str == null) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (isCodecSupported(str)) {
                track2.initializeOutput(this.extractorOutput, track2.number);
                this.tracks.put(track2.number, track2);
            }
            this.currentTrack = null;
            return;
        }
        if (i == 19899) {
            int i7 = this.seekEntryId;
            if (i7 != -1) {
                long j2 = this.seekEntryPosition;
                if (j2 != -1) {
                    if (i7 == 475249515) {
                        this.cuesContentPosition = j2;
                        return;
                    }
                    return;
                }
            }
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            assertInTrackEntry(i);
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track3 = this.currentTrack;
            if (track3.hasContentEncryption) {
                if (track3.cryptoData == null) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                track3.drmInitData = new com.google.android.exoplayer2.drm.DrmInitData(new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(com.google.android.exoplayer2.C.UUID_NIL, com.google.android.exoplayer2.util.MimeTypes.VIDEO_WEBM, this.currentTrack.cryptoData.encryptionKey));
                return;
            }
            return;
        }
        if (i == 28032) {
            assertInTrackEntry(i);
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track4 = this.currentTrack;
            if (track4.hasContentEncryption && track4.sampleStrippedBytes != null) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.timecodeScale == com.google.android.exoplayer2.C.TIME_UNSET) {
                this.timecodeScale = 1000000L;
            }
            long j3 = this.durationTimecode;
            if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
                this.durationUs = scaleTimecodeToUs(j3);
                return;
            }
            return;
        }
        if (i == 374648427) {
            if (this.tracks.size() == 0) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.extractorOutput.endTracks();
        } else {
            if (i != 475249515) {
                return;
            }
            if (!this.sentSeekMap) {
                this.extractorOutput.seekMap(buildSeekMap(this.cueTimesUs, this.cueClusterPositions));
                this.sentSeekMap = true;
            }
            this.cueTimesUs = null;
            this.cueClusterPositions = null;
        }
    }

    public void floatElement(int i, double d2) {
        if (i == 181) {
            getCurrentTrack(i).sampleRate = (int) d2;
        }
        if (i == 17545) {
            this.durationTimecode = (long) d2;
            return;
        }
        switch (i) {
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
                getCurrentTrack(i).primaryRChromaticityX = (float) d2;
                break;
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                getCurrentTrack(i).primaryRChromaticityY = (float) d2;
                break;
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
                getCurrentTrack(i).primaryGChromaticityX = (float) d2;
                break;
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                getCurrentTrack(i).primaryGChromaticityY = (float) d2;
                break;
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
                getCurrentTrack(i).primaryBChromaticityX = (float) d2;
                break;
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                getCurrentTrack(i).primaryBChromaticityY = (float) d2;
                break;
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
                getCurrentTrack(i).whitePointChromaticityX = (float) d2;
                break;
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                getCurrentTrack(i).whitePointChromaticityY = (float) d2;
                break;
            case ID_LUMNINANCE_MAX /* 21977 */:
                getCurrentTrack(i).maxMasteringLuminance = (float) d2;
                break;
            case ID_LUMNINANCE_MIN /* 21978 */:
                getCurrentTrack(i).minMasteringLuminance = (float) d2;
                break;
            default:
                switch (i) {
                    case ID_PROJECTION_POSE_YAW /* 30323 */:
                        getCurrentTrack(i).projectionPoseYaw = (float) d2;
                        break;
                    case ID_PROJECTION_POSE_PITCH /* 30324 */:
                        getCurrentTrack(i).projectionPosePitch = (float) d2;
                        break;
                    case ID_PROJECTION_POSE_ROLL /* 30325 */:
                        getCurrentTrack(i).projectionPoseRoll = (float) d2;
                        break;
                }
        }
    }

    public int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case ID_TIME_CODE /* 231 */:
            case ID_BLOCK_ADD_ID /* 238 */:
            case ID_CUE_CLUSTER_POSITION /* 241 */:
            case 251:
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
            case ID_SEEK_POSITION /* 21420 */:
            case ID_STEREO_MODE /* 21432 */:
            case ID_DISPLAY_WIDTH /* 21680 */:
            case ID_DISPLAY_UNIT /* 21682 */:
            case ID_DISPLAY_HEIGHT /* 21690 */:
            case ID_FLAG_FORCED /* 21930 */:
            case ID_COLOUR_RANGE /* 21945 */:
            case ID_COLOUR_TRANSFER /* 21946 */:
            case ID_COLOUR_PRIMARIES /* 21947 */:
            case ID_MAX_CLL /* 21948 */:
            case ID_MAX_FALL /* 21949 */:
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
            case ID_PROJECTION_TYPE /* 30321 */:
            case ID_DEFAULT_DURATION /* 2352003 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case 134:
            case ID_DOC_TYPE /* 17026 */:
            case ID_NAME /* 21358 */:
            case ID_LANGUAGE /* 2274716 */:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case ID_BLOCK_ADDITION_MAPPING /* 16868 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /* 18407 */:
            case ID_SEEK /* 19899 */:
            case ID_CONTENT_COMPRESSION /* 20532 */:
            case ID_CONTENT_ENCRYPTION /* 20533 */:
            case ID_COLOUR /* 21936 */:
            case ID_MASTERING_METADATA /* 21968 */:
            case ID_CONTENT_ENCODING /* 25152 */:
            case ID_CONTENT_ENCODINGS /* 28032 */:
            case ID_BLOCK_ADDITIONS /* 30113 */:
            case ID_PROJECTION /* 30320 */:
            case ID_SEEK_HEAD /* 290298740 */:
            case 357149030:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case 440786851:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case 161:
            case 163:
            case 165:
            case ID_BLOCK_ADD_ID_EXTRA_DATA /* 16877 */:
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
            case ID_SEEK_ID /* 21419 */:
            case ID_CODEC_PRIVATE /* 25506 */:
            case ID_PROJECTION_PRIVATE /* 30322 */:
                return 4;
            case 181:
            case ID_DURATION /* 17545 */:
            case ID_PRIMARY_R_CHROMATICITY_X /* 21969 */:
            case ID_PRIMARY_R_CHROMATICITY_Y /* 21970 */:
            case ID_PRIMARY_G_CHROMATICITY_X /* 21971 */:
            case ID_PRIMARY_G_CHROMATICITY_Y /* 21972 */:
            case ID_PRIMARY_B_CHROMATICITY_X /* 21973 */:
            case ID_PRIMARY_B_CHROMATICITY_Y /* 21974 */:
            case ID_WHITE_POINT_CHROMATICITY_X /* 21975 */:
            case ID_WHITE_POINT_CHROMATICITY_Y /* 21976 */:
            case ID_LUMNINANCE_MAX /* 21977 */:
            case ID_LUMNINANCE_MIN /* 21978 */:
            case ID_PROJECTION_POSE_YAW /* 30323 */:
            case ID_PROJECTION_POSE_PITCH /* 30324 */:
            case ID_PROJECTION_POSE_ROLL /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    public void handleBlockAddIDExtraData(com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        if (track.blockAddIdType != 1685485123 && track.blockAddIdType != 1685480259) {
            extractorInput.skipFully(i);
            return;
        }
        byte[] bArr = new byte[i];
        track.dolbyVisionConfigBytes = bArr;
        extractorInput.readFully(bArr, 0, i);
    }

    public void handleBlockAdditionalData(com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track track, int i, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i2) {
        if (i != 4 || !CODEC_ID_VP9.equals(track.codecId)) {
            extractorInput.skipFully(i2);
        } else {
            this.blockAdditionalData.reset(i2);
            extractorInput.readFully(this.blockAdditionalData.getData(), 0, i2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    public void integerElement(int i, long j) throws com.google.android.exoplayer2.ParserException {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb2.toString(), null);
        }
        switch (i) {
            case 131:
                getCurrentTrack(i).type = (int) j;
                return;
            case 136:
                getCurrentTrack(i).flagDefault = j == 1;
                return;
            case 155:
                this.blockDurationUs = scaleTimecodeToUs(j);
                return;
            case 159:
                getCurrentTrack(i).channelCount = (int) j;
                return;
            case 176:
                getCurrentTrack(i).width = (int) j;
                return;
            case 179:
                assertInCues(i);
                this.cueTimesUs.add(scaleTimecodeToUs(j));
                return;
            case 186:
                getCurrentTrack(i).height = (int) j;
                return;
            case 215:
                getCurrentTrack(i).number = (int) j;
                return;
            case ID_TIME_CODE /* 231 */:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return;
            case ID_BLOCK_ADD_ID /* 238 */:
                this.blockAdditionalId = (int) j;
                return;
            case ID_CUE_CLUSTER_POSITION /* 241 */:
                if (this.seenClusterPositionForCurrentCuePoint) {
                    return;
                }
                assertInCues(i);
                this.cueClusterPositions.add(j);
                this.seenClusterPositionForCurrentCuePoint = true;
                return;
            case 251:
                this.blockHasReferenceBlock = true;
                return;
            case ID_BLOCK_ADD_ID_TYPE /* 16871 */:
                getCurrentTrack(i).blockAddIdType = (int) j;
                return;
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
                if (j == 3) {
                    return;
                }
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j);
                sb3.append(" not supported");
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb3.toString(), null);
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (j < 1 || j > 2) {
                    java.lang.StringBuilder sb4 = new java.lang.StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb4.toString(), null);
                }
                return;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (j == 1) {
                    return;
                }
                java.lang.StringBuilder sb5 = new java.lang.StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j);
                sb5.append(" not supported");
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb5.toString(), null);
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                if (j == 5) {
                    return;
                }
                java.lang.StringBuilder sb6 = new java.lang.StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j);
                sb6.append(" not supported");
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb6.toString(), null);
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                if (j == 1) {
                    return;
                }
                java.lang.StringBuilder sb7 = new java.lang.StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j);
                sb7.append(" not supported");
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb7.toString(), null);
            case ID_SEEK_POSITION /* 21420 */:
                this.seekEntryPosition = j + this.segmentContentPosition;
                return;
            case ID_STEREO_MODE /* 21432 */:
                int i2 = (int) j;
                assertInTrackEntry(i);
                if (i2 == 0) {
                    this.currentTrack.stereoMode = 0;
                    return;
                }
                if (i2 == 1) {
                    this.currentTrack.stereoMode = 2;
                    return;
                } else if (i2 == 3) {
                    this.currentTrack.stereoMode = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.currentTrack.stereoMode = 3;
                    return;
                }
            case ID_DISPLAY_WIDTH /* 21680 */:
                getCurrentTrack(i).displayWidth = (int) j;
                return;
            case ID_DISPLAY_UNIT /* 21682 */:
                getCurrentTrack(i).displayUnit = (int) j;
                return;
            case ID_DISPLAY_HEIGHT /* 21690 */:
                getCurrentTrack(i).displayHeight = (int) j;
                return;
            case ID_FLAG_FORCED /* 21930 */:
                getCurrentTrack(i).flagForced = j == 1;
                return;
            case ID_MAX_BLOCK_ADDITION_ID /* 21998 */:
                getCurrentTrack(i).maxBlockAdditionId = (int) j;
                return;
            case ID_CODEC_DELAY /* 22186 */:
                getCurrentTrack(i).codecDelayNs = j;
                return;
            case ID_SEEK_PRE_ROLL /* 22203 */:
                getCurrentTrack(i).seekPreRollNs = j;
                return;
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
                getCurrentTrack(i).audioBitDepth = (int) j;
                return;
            case ID_PROJECTION_TYPE /* 30321 */:
                assertInTrackEntry(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.currentTrack.projectionType = 0;
                    return;
                }
                if (i3 == 1) {
                    this.currentTrack.projectionType = 1;
                    return;
                } else if (i3 == 2) {
                    this.currentTrack.projectionType = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.currentTrack.projectionType = 3;
                    return;
                }
            case ID_DEFAULT_DURATION /* 2352003 */:
                getCurrentTrack(i).defaultSampleDurationNs = (int) j;
                return;
            case ID_TIMECODE_SCALE /* 2807729 */:
                this.timecodeScale = j;
                return;
            default:
                switch (i) {
                    case ID_COLOUR_RANGE /* 21945 */:
                        assertInTrackEntry(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.currentTrack.colorRange = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.currentTrack.colorRange = 1;
                            return;
                        }
                    case ID_COLOUR_TRANSFER /* 21946 */:
                        assertInTrackEntry(i);
                        int iIsoTransferCharacteristicsToColorTransfer = com.google.android.exoplayer2.video.ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j);
                        if (iIsoTransferCharacteristicsToColorTransfer != -1) {
                            this.currentTrack.colorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                            return;
                        }
                        return;
                    case ID_COLOUR_PRIMARIES /* 21947 */:
                        assertInTrackEntry(i);
                        this.currentTrack.hasColorInfo = true;
                        int iIsoColorPrimariesToColorSpace = com.google.android.exoplayer2.video.ColorInfo.isoColorPrimariesToColorSpace((int) j);
                        if (iIsoColorPrimariesToColorSpace != -1) {
                            this.currentTrack.colorSpace = iIsoColorPrimariesToColorSpace;
                            return;
                        }
                        return;
                    case ID_MAX_CLL /* 21948 */:
                        getCurrentTrack(i).maxContentLuminance = (int) j;
                        return;
                    case ID_MAX_FALL /* 21949 */:
                        getCurrentTrack(i).maxFrameAverageLuminance = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public boolean isLevel1Element(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        this.haveOutputSample = false;
        boolean z = true;
        while (z && !this.haveOutputSample) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track trackValueAt = this.tracks.valueAt(i);
            trackValueAt.assertOutputInitialized();
            trackValueAt.outputPendingSampleMetadata();
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetWriteSampleData();
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return new com.google.android.exoplayer2.extractor.mkv.Sniffer().sniff(extractorInput);
    }

    public void startMasterElement(int i, long j, long j2) throws com.google.android.exoplayer2.ParserException {
        assertInitialized();
        if (i == 160) {
            this.blockHasReferenceBlock = false;
            return;
        }
        if (i == 174) {
            this.currentTrack = new com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track();
            return;
        }
        if (i == 187) {
            this.seenClusterPositionForCurrentCuePoint = false;
            return;
        }
        if (i == 19899) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1L;
            return;
        }
        if (i == 20533) {
            getCurrentTrack(i).hasContentEncryption = true;
            return;
        }
        if (i == 21968) {
            getCurrentTrack(i).hasColorInfo = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.segmentContentPosition;
            if (j3 != -1 && j3 != j) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.segmentContentPosition = j;
            this.segmentContentSize = j2;
            return;
        }
        if (i == 475249515) {
            this.cueTimesUs = new com.google.android.exoplayer2.util.LongArray();
            this.cueClusterPositions = new com.google.android.exoplayer2.util.LongArray();
        } else if (i == 524531317 && !this.sentSeekMap) {
            if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                this.seekForCues = true;
            } else {
                this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(this.durationUs));
                this.sentSeekMap = true;
            }
        }
    }

    public void stringElement(int i, java.lang.String str) throws com.google.android.exoplayer2.ParserException {
        if (i == 134) {
            getCurrentTrack(i).codecId = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                getCurrentTrack(i).name = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                getCurrentTrack(i).language = str;
                return;
            }
        }
        if (DOC_TYPE_WEBM.equals(str) || DOC_TYPE_MATROSKA.equals(str)) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 22);
        sb.append("DocType ");
        sb.append(str);
        sb.append(" not supported");
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
    }
}
