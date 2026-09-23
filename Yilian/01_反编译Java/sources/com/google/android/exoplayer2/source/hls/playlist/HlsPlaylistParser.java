package com.google.android.exoplayer2.source.hls.playlist;

/* loaded from: classes.dex */
public final class HlsPlaylistParser implements com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> {
    public static final java.lang.String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    public static final java.lang.String BOOLEAN_FALSE = "NO";
    public static final java.lang.String BOOLEAN_TRUE = "YES";
    public static final java.lang.String KEYFORMAT_IDENTITY = "identity";
    public static final java.lang.String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    public static final java.lang.String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    public static final java.lang.String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    public static final java.lang.String LOG_TAG = "HlsPlaylistParser";
    public static final java.lang.String METHOD_AES_128 = "AES-128";
    public static final java.lang.String METHOD_NONE = "NONE";
    public static final java.lang.String METHOD_SAMPLE_AES = "SAMPLE-AES";
    public static final java.lang.String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    public static final java.lang.String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    public static final java.lang.String PLAYLIST_HEADER = "#EXTM3U";
    public static final java.lang.String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    public static final java.lang.String TAG_DEFINE = "#EXT-X-DEFINE";
    public static final java.lang.String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    public static final java.lang.String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    public static final java.lang.String TAG_ENDLIST = "#EXT-X-ENDLIST";
    public static final java.lang.String TAG_GAP = "#EXT-X-GAP";
    public static final java.lang.String TAG_IFRAME = "#EXT-X-I-FRAMES-ONLY";
    public static final java.lang.String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    public static final java.lang.String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    public static final java.lang.String TAG_I_FRAME_STREAM_INF = "#EXT-X-I-FRAME-STREAM-INF";
    public static final java.lang.String TAG_KEY = "#EXT-X-KEY";
    public static final java.lang.String TAG_MEDIA = "#EXT-X-MEDIA";
    public static final java.lang.String TAG_MEDIA_DURATION = "#EXTINF";
    public static final java.lang.String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    public static final java.lang.String TAG_PART = "#EXT-X-PART";
    public static final java.lang.String TAG_PART_INF = "#EXT-X-PART-INF";
    public static final java.lang.String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    public static final java.lang.String TAG_PREFIX = "#EXT";
    public static final java.lang.String TAG_PRELOAD_HINT = "#EXT-X-PRELOAD-HINT";
    public static final java.lang.String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    public static final java.lang.String TAG_RENDITION_REPORT = "#EXT-X-RENDITION-REPORT";
    public static final java.lang.String TAG_SERVER_CONTROL = "#EXT-X-SERVER-CONTROL";
    public static final java.lang.String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    public static final java.lang.String TAG_SKIP = "#EXT-X-SKIP";
    public static final java.lang.String TAG_START = "#EXT-X-START";
    public static final java.lang.String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    public static final java.lang.String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    public static final java.lang.String TAG_VERSION = "#EXT-X-VERSION";
    public static final java.lang.String TYPE_AUDIO = "AUDIO";
    public static final java.lang.String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    public static final java.lang.String TYPE_MAP = "MAP";
    public static final java.lang.String TYPE_PART = "PART";
    public static final java.lang.String TYPE_SUBTITLES = "SUBTITLES";
    public static final java.lang.String TYPE_VIDEO = "VIDEO";
    public final com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist masterPlaylist;
    public final com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist previousMediaPlaylist;
    public static final java.util.regex.Pattern REGEX_AVERAGE_BANDWIDTH = java.util.regex.Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_VIDEO = java.util.regex.Pattern.compile("VIDEO=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_AUDIO = java.util.regex.Pattern.compile("AUDIO=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_SUBTITLES = java.util.regex.Pattern.compile("SUBTITLES=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_CLOSED_CAPTIONS = java.util.regex.Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_BANDWIDTH = java.util.regex.Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_CHANNELS = java.util.regex.Pattern.compile("CHANNELS=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_CODECS = java.util.regex.Pattern.compile("CODECS=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_RESOLUTION = java.util.regex.Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    public static final java.util.regex.Pattern REGEX_FRAME_RATE = java.util.regex.Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_TARGET_DURATION = java.util.regex.Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_ATTR_DURATION = java.util.regex.Pattern.compile("DURATION=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_PART_TARGET_DURATION = java.util.regex.Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_VERSION = java.util.regex.Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_PLAYLIST_TYPE = java.util.regex.Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final java.util.regex.Pattern REGEX_CAN_SKIP_UNTIL = java.util.regex.Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    public static final java.util.regex.Pattern REGEX_SKIPPED_SEGMENTS = java.util.regex.Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_HOLD_BACK = java.util.regex.Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_PART_HOLD_BACK = java.util.regex.Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    public static final java.util.regex.Pattern REGEX_MEDIA_SEQUENCE = java.util.regex.Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_MEDIA_DURATION = java.util.regex.Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_MEDIA_TITLE = java.util.regex.Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final java.util.regex.Pattern REGEX_LAST_MSN = java.util.regex.Pattern.compile("LAST-MSN=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_LAST_PART = java.util.regex.Pattern.compile("LAST-PART=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_TIME_OFFSET = java.util.regex.Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final java.util.regex.Pattern REGEX_BYTERANGE = java.util.regex.Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final java.util.regex.Pattern REGEX_ATTR_BYTERANGE = java.util.regex.Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final java.util.regex.Pattern REGEX_BYTERANGE_START = java.util.regex.Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_BYTERANGE_LENGTH = java.util.regex.Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    public static final java.util.regex.Pattern REGEX_METHOD = java.util.regex.Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final java.util.regex.Pattern REGEX_KEYFORMAT = java.util.regex.Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_KEYFORMATVERSIONS = java.util.regex.Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_URI = java.util.regex.Pattern.compile("URI=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_IV = java.util.regex.Pattern.compile("IV=([^,.*]+)");
    public static final java.util.regex.Pattern REGEX_TYPE = java.util.regex.Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final java.util.regex.Pattern REGEX_PRELOAD_HINT_TYPE = java.util.regex.Pattern.compile("TYPE=(PART|MAP)");
    public static final java.util.regex.Pattern REGEX_LANGUAGE = java.util.regex.Pattern.compile("LANGUAGE=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_NAME = java.util.regex.Pattern.compile("NAME=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_GROUP_ID = java.util.regex.Pattern.compile("GROUP-ID=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_CHARACTERISTICS = java.util.regex.Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_INSTREAM_ID = java.util.regex.Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final java.util.regex.Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    public static final java.util.regex.Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    public static final java.util.regex.Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    public static final java.util.regex.Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    public static final java.util.regex.Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    public static final java.util.regex.Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    public static final java.util.regex.Pattern REGEX_VALUE = java.util.regex.Pattern.compile("VALUE=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_IMPORT = java.util.regex.Pattern.compile("IMPORT=\"(.+?)\"");
    public static final java.util.regex.Pattern REGEX_VARIABLE_REFERENCE = java.util.regex.Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    public static final class DeltaUpdateException extends java.io.IOException {
    }

    public static class LineIterator {
        public final java.util.Queue<java.lang.String> extraLines;
        public java.lang.String next;
        public final java.io.BufferedReader reader;

        public LineIterator(java.util.Queue<java.lang.String> queue, java.io.BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"next"}, result = true)
        public boolean hasNext() throws java.io.IOException {
            java.lang.String strTrim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extraLines.poll());
                return true;
            }
            do {
                java.lang.String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.next = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public java.lang.String next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            java.lang.String str = this.next;
            this.next = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.EMPTY, null);
    }

    public HlsPlaylistParser(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    public static boolean checkPlaylistHeader(java.io.BufferedReader bufferedReader) throws java.io.IOException {
        int i = bufferedReader.read();
        if (i == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (iSkipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i2)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return com.google.android.exoplayer2.util.Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    public static java.util.regex.Pattern compileBooleanAttrPattern(java.lang.String str) {
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str, 9), str, "=(", BOOLEAN_FALSE, "|");
        sbL.append(BOOLEAN_TRUE);
        sbL.append(")");
        return java.util.regex.Pattern.compile(sbL.toString());
    }

    public static com.google.android.exoplayer2.drm.DrmInitData getPlaylistProtectionSchemes(java.lang.String str, com.google.android.exoplayer2.drm.DrmInitData.SchemeData[] schemeDataArr) {
        com.google.android.exoplayer2.drm.DrmInitData.SchemeData[] schemeDataArr2 = new com.google.android.exoplayer2.drm.DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new com.google.android.exoplayer2.drm.DrmInitData(str, schemeDataArr2);
    }

    public static java.lang.String getSegmentEncryptionIV(long j, java.lang.String str, java.lang.String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : java.lang.Long.toHexString(j);
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant getVariantWithAudioGroup(java.util.ArrayList<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> arrayList, java.lang.String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant getVariantWithSubtitleGroup(java.util.ArrayList<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> arrayList, java.lang.String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant getVariantWithVideoGroup(java.util.ArrayList<com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant> arrayList, java.lang.String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    public static double parseDoubleAttr(java.lang.String str, java.util.regex.Pattern pattern) {
        return java.lang.Double.parseDouble(parseStringAttr(str, pattern, java.util.Collections.emptyMap()));
    }

    public static com.google.android.exoplayer2.drm.DrmInitData.SchemeData parseDrmSchemeData(java.lang.String str, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) throws com.google.android.exoplayer2.ParserException {
        java.lang.String optionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            java.lang.String stringAttr = parseStringAttr(str, REGEX_URI, map);
            return new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(com.google.android.exoplayer2.C.WIDEVINE_UUID, com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, android.util.Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(com.google.android.exoplayer2.C.WIDEVINE_UUID, com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_HLS, com.google.android.exoplayer2.util.Util.getUtf8Bytes(str));
        }
        if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        java.lang.String stringAttr2 = parseStringAttr(str, REGEX_URI, map);
        return new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(com.google.android.exoplayer2.C.PLAYREADY_UUID, com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.buildPsshAtom(com.google.android.exoplayer2.C.PLAYREADY_UUID, android.util.Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0)));
    }

    public static java.lang.String parseEncryptionScheme(java.lang.String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? "cenc" : com.google.android.exoplayer2.C.CENC_TYPE_cbcs;
    }

    public static int parseIntAttr(java.lang.String str, java.util.regex.Pattern pattern) {
        return java.lang.Integer.parseInt(parseStringAttr(str, pattern, java.util.Collections.emptyMap()));
    }

    public static long parseLongAttr(java.lang.String str, java.util.regex.Pattern pattern) {
        return java.lang.Long.parseLong(parseStringAttr(str, pattern, java.util.Collections.emptyMap()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:93:0x035e  */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator r36, java.lang.String r37) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist");
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0312 A[PHI: r79
  0x0312: PHI (r79v25 java.lang.String) = (r79v23 java.lang.String), (r79v1 java.lang.String) binds: [B:120:0x0328, B:112:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist parseMediaPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist r93, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist r94, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator r95, java.lang.String r96) throws com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.DeltaUpdateException, com.google.android.exoplayer2.ParserException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.parseMediaPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist");
    }

    public static boolean parseOptionalBooleanAttribute(java.lang.String str, java.util.regex.Pattern pattern, boolean z) {
        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.find() ? BOOLEAN_TRUE.equals(matcher.group(1)) : z;
    }

    public static double parseOptionalDoubleAttr(java.lang.String str, java.util.regex.Pattern pattern, double d2) {
        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.find() ? java.lang.Double.parseDouble((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))) : d2;
    }

    public static int parseOptionalIntAttr(java.lang.String str, java.util.regex.Pattern pattern, int i) {
        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.find() ? java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))) : i;
    }

    public static long parseOptionalLongAttr(java.lang.String str, java.util.regex.Pattern pattern, long j) {
        java.util.regex.Matcher matcher = pattern.matcher(str);
        return matcher.find() ? java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))) : j;
    }

    public static java.lang.String parseOptionalStringAttr(java.lang.String str, java.util.regex.Pattern pattern, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        java.util.regex.Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    public static java.lang.String parseOptionalStringAttr(java.lang.String str, java.util.regex.Pattern pattern, java.util.Map<java.lang.String, java.lang.String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    public static int parseRoleFlags(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        if (android.text.TextUtils.isEmpty(optionalStringAttr)) {
            return 0;
        }
        java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(optionalStringAttr, ",");
        int i = com.google.android.exoplayer2.util.Util.contains(strArrSplit, "public.accessibility.describes-video") ? 512 : 0;
        if (com.google.android.exoplayer2.util.Util.contains(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (com.google.android.exoplayer2.util.Util.contains(strArrSplit, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return com.google.android.exoplayer2.util.Util.contains(strArrSplit, "public.easy-to-read") ? i | 8192 : i;
    }

    public static int parseSelectionFlags(java.lang.String str) {
        int i = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            i |= 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? i | 4 : i;
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.ServerControl parseServerControl(java.lang.String str) {
        double optionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j = com.google.android.exoplayer2.C.TIME_UNSET;
        long j2 = optionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr * 1000000.0d);
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double optionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j3 = optionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr2 * 1000000.0d);
        double optionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        if (optionalDoubleAttr3 != -9.223372036854776E18d) {
            j = (long) (optionalDoubleAttr3 * 1000000.0d);
        }
        return new com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.ServerControl(j2, optionalBooleanAttribute, j3, j, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    public static java.lang.String parseStringAttr(java.lang.String str, java.util.regex.Pattern pattern, java.util.Map<java.lang.String, java.lang.String> map) throws com.google.android.exoplayer2.ParserException {
        java.lang.String optionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        java.lang.String strPattern = pattern.pattern();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + java.lang.String.valueOf(strPattern).length() + 19);
        sb.append("Couldn't match ");
        sb.append(strPattern);
        sb.append(" in ");
        sb.append(str);
        throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(sb.toString(), null);
    }

    public static long parseTimeSecondsToUs(java.lang.String str, java.util.regex.Pattern pattern) {
        return new java.math.BigDecimal(parseStringAttr(str, pattern, java.util.Collections.emptyMap())).multiply(new java.math.BigDecimal(1000000L)).longValue();
    }

    public static java.lang.String replaceVariableReferences(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        java.util.regex.Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        while (matcher.find()) {
            java.lang.String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, java.util.regex.Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static int skipIgnorableWhitespace(java.io.BufferedReader bufferedReader, boolean z, int i) throws java.io.IOException {
        while (i != -1 && java.lang.Character.isWhitespace(i) && (z || !com.google.android.exoplayer2.util.Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist parse(android.net.Uri uri, java.io.InputStream inputStream) throws java.io.IOException {
        java.lang.String strTrim;
        java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(inputStream));
        java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                java.lang.String line = bufferedReader.readLine();
                if (line == null) {
                    com.google.android.exoplayer2.util.Util.closeQuietly(bufferedReader);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
                strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (!strTrim.startsWith(TAG_STREAM_INF)) {
                        if (strTrim.startsWith(TAG_TARGET_DURATION) || strTrim.startsWith(TAG_MEDIA_SEQUENCE) || strTrim.startsWith(TAG_MEDIA_DURATION) || strTrim.startsWith(TAG_KEY) || strTrim.startsWith(TAG_BYTERANGE) || strTrim.equals(TAG_DISCONTINUITY) || strTrim.equals(TAG_DISCONTINUITY_SEQUENCE) || strTrim.equals(TAG_ENDLIST)) {
                            break;
                        }
                        arrayDeque.add(strTrim);
                    } else {
                        arrayDeque.add(strTrim);
                        return parseMasterPlaylist(new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator(arrayDeque, bufferedReader), uri.toString());
                    }
                }
            }
            arrayDeque.add(strTrim);
            return parseMediaPlaylist(this.masterPlaylist, this.previousMediaPlaylist, new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator(arrayDeque, bufferedReader), uri.toString());
        } finally {
            com.google.android.exoplayer2.util.Util.closeQuietly(bufferedReader);
        }
    }
}
