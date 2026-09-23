package com.google.android.exoplayer2.source.smoothstreaming.manifest;

/* loaded from: classes.dex */
public class SsManifestParser implements com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> {
    public final org.xmlpull.v1.XmlPullParserFactory xmlParserFactory;

    public static abstract class ElementParser {
        public final java.lang.String baseUri;
        public final java.util.List<android.util.Pair<java.lang.String, java.lang.Object>> normalizedAttributes = new java.util.LinkedList();
        public final com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser parent;
        public final java.lang.String tag;

        public ElementParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str, java.lang.String str2) {
            this.parent = elementParser;
            this.baseUri = str;
            this.tag = str2;
        }

        private com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser newChildParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str, java.lang.String str2) {
            if (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.QualityLevelParser.TAG.equals(str)) {
                return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.QualityLevelParser(elementParser, str2);
            }
            if (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ProtectionParser.TAG.equals(str)) {
                return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ProtectionParser(elementParser, str2);
            }
            if (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.TAG.equals(str)) {
                return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser(elementParser, str2);
            }
            return null;
        }

        public void addChild(java.lang.Object obj) {
        }

        public abstract java.lang.Object build();

        public final java.lang.Object getNormalizedAttribute(java.lang.String str) {
            for (int i = 0; i < this.normalizedAttributes.size(); i++) {
                android.util.Pair<java.lang.String, java.lang.Object> pair = this.normalizedAttributes.get(i);
                if (((java.lang.String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser = this.parent;
            if (elementParser == null) {
                return null;
            }
            return elementParser.getNormalizedAttribute(str);
        }

        public boolean handleChildInline(java.lang.String str) {
            return false;
        }

        public final java.lang.Object parse(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
            boolean z = false;
            int i = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    java.lang.String name = xmlPullParser.getName();
                    if (this.tag.equals(name)) {
                        parseStartTag(xmlPullParser);
                        z = true;
                    } else if (z) {
                        if (i > 0) {
                            i++;
                        } else if (handleChildInline(name)) {
                            parseStartTag(xmlPullParser);
                        } else {
                            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParserNewChildParser = newChildParser(this, name, this.baseUri);
                            if (elementParserNewChildParser == null) {
                                i = 1;
                            } else {
                                addChild(elementParserNewChildParser.parse(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z && i == 0) {
                        parseText(xmlPullParser);
                    }
                } else if (!z) {
                    continue;
                } else if (i > 0) {
                    i--;
                } else {
                    java.lang.String name2 = xmlPullParser.getName();
                    parseEndTag(xmlPullParser);
                    if (!handleChildInline(name2)) {
                        return build();
                    }
                }
                xmlPullParser.next();
            }
        }

        public final boolean parseBoolean(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, boolean z) {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? java.lang.Boolean.parseBoolean(attributeValue) : z;
        }

        public void parseEndTag(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        }

        public final int parseInt(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i) throws com.google.android.exoplayer2.ParserException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i;
            }
            try {
                return java.lang.Integer.parseInt(attributeValue);
            } catch (java.lang.NumberFormatException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
            }
        }

        public final long parseLong(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, long j) throws com.google.android.exoplayer2.ParserException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j;
            }
            try {
                return java.lang.Long.parseLong(attributeValue);
            } catch (java.lang.NumberFormatException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
            }
        }

        public final int parseRequiredInt(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) throws com.google.android.exoplayer2.ParserException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException(str);
            }
            try {
                return java.lang.Integer.parseInt(attributeValue);
            } catch (java.lang.NumberFormatException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
            }
        }

        public final long parseRequiredLong(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) throws com.google.android.exoplayer2.ParserException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException(str);
            }
            try {
                return java.lang.Long.parseLong(attributeValue);
            } catch (java.lang.NumberFormatException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
            }
        }

        public final java.lang.String parseRequiredString(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) throws com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException(str);
        }

        public void parseStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        }

        public void parseText(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        }

        public final void putNormalizedAttribute(java.lang.String str, java.lang.Object obj) {
            this.normalizedAttributes.add(android.util.Pair.create(str, obj));
        }
    }

    public static class MissingFieldException extends com.google.android.exoplayer2.ParserException {
        /* JADX WARN: Illegal instructions before constructor call */
        public MissingFieldException(java.lang.String str) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            super(strValueOf.length() != 0 ? "Missing required field: ".concat(strValueOf) : new java.lang.String("Missing required field: "), null, true, 4);
        }
    }

    public static class ProtectionParser extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser {
        public static final int INITIALIZATION_VECTOR_SIZE = 8;
        public static final java.lang.String KEY_SYSTEM_ID = "SystemID";
        public static final java.lang.String TAG = "Protection";
        public static final java.lang.String TAG_PROTECTION_HEADER = "ProtectionHeader";
        public boolean inProtectionHeader;
        public byte[] initData;
        public java.util.UUID uuid;

        public ProtectionParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str) {
            super(elementParser, str, TAG);
        }

        public static com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox[] buildTrackEncryptionBoxes(byte[] bArr) {
            return new com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox[]{new com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox(true, null, 8, getProtectionElementKeyId(bArr), 0, 0, null)};
        }

        public static byte[] getProtectionElementKeyId(byte[] bArr) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (int i = 0; i < bArr.length; i += 2) {
                sb.append((char) bArr[i]);
            }
            java.lang.String string = sb.toString();
            byte[] bArrDecode = android.util.Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
            swap(bArrDecode, 0, 3);
            swap(bArrDecode, 1, 2);
            swap(bArrDecode, 4, 5);
            swap(bArrDecode, 6, 7);
            return bArrDecode;
        }

        public static java.lang.String stripCurlyBraces(java.lang.String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }

        public static void swap(byte[] bArr, int i, int i2) {
            byte b = bArr[i];
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public java.lang.Object build() {
            java.util.UUID uuid = this.uuid;
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement(uuid, com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.buildPsshAtom(uuid, this.initData), buildTrackEncryptionBoxes(this.initData));
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean handleChildInline(java.lang.String str) {
            return TAG_PROTECTION_HEADER.equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseEndTag(org.xmlpull.v1.XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = false;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = true;
                this.uuid = java.util.UUID.fromString(stripCurlyBraces(xmlPullParser.getAttributeValue(null, KEY_SYSTEM_ID)));
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseText(org.xmlpull.v1.XmlPullParser xmlPullParser) {
            if (this.inProtectionHeader) {
                this.initData = android.util.Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    public static class QualityLevelParser extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser {
        public static final java.lang.String KEY_BITRATE = "Bitrate";
        public static final java.lang.String KEY_CHANNELS = "Channels";
        public static final java.lang.String KEY_CODEC_PRIVATE_DATA = "CodecPrivateData";
        public static final java.lang.String KEY_FOUR_CC = "FourCC";
        public static final java.lang.String KEY_INDEX = "Index";
        public static final java.lang.String KEY_LANGUAGE = "Language";
        public static final java.lang.String KEY_MAX_HEIGHT = "MaxHeight";
        public static final java.lang.String KEY_MAX_WIDTH = "MaxWidth";
        public static final java.lang.String KEY_NAME = "Name";
        public static final java.lang.String KEY_SAMPLING_RATE = "SamplingRate";
        public static final java.lang.String KEY_SUB_TYPE = "Subtype";
        public static final java.lang.String KEY_TYPE = "Type";
        public static final java.lang.String TAG = "QualityLevel";
        public com.google.android.exoplayer2.Format format;

        public QualityLevelParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str) {
            super(elementParser, str, TAG);
        }

        public static java.util.List<byte[]> buildCodecSpecificData(java.lang.String str) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            if (!android.text.TextUtils.isEmpty(str)) {
                byte[] bytesFromHexString = com.google.android.exoplayer2.util.Util.getBytesFromHexString(str);
                byte[][] bArrSplitNalUnits = com.google.android.exoplayer2.util.CodecSpecificDataUtil.splitNalUnits(bytesFromHexString);
                if (bArrSplitNalUnits == null) {
                    arrayList.add(bytesFromHexString);
                } else {
                    java.util.Collections.addAll(arrayList, bArrSplitNalUnits);
                }
            }
            return arrayList;
        }

        public static java.lang.String fourCCToMimeType(java.lang.String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264;
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_OPUS;
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public java.lang.Object build() {
            return this.format;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.ParserException {
            com.google.android.exoplayer2.Format.Builder builder = new com.google.android.exoplayer2.Format.Builder();
            java.lang.String strFourCCToMimeType = fourCCToMimeType(parseRequiredString(xmlPullParser, KEY_FOUR_CC));
            int iIntValue = ((java.lang.Integer) getNormalizedAttribute("Type")).intValue();
            if (iIntValue == 2) {
                builder.setContainerMimeType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4).setWidth(parseRequiredInt(xmlPullParser, "MaxWidth")).setHeight(parseRequiredInt(xmlPullParser, "MaxHeight")).setInitializationData(buildCodecSpecificData(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA)));
            } else if (iIntValue == 1) {
                if (strFourCCToMimeType == null) {
                    strFourCCToMimeType = com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC;
                }
                int requiredInt = parseRequiredInt(xmlPullParser, KEY_CHANNELS);
                int requiredInt2 = parseRequiredInt(xmlPullParser, KEY_SAMPLING_RATE);
                java.util.List<byte[]> listBuildCodecSpecificData = buildCodecSpecificData(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA));
                if (listBuildCodecSpecificData.isEmpty() && com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(strFourCCToMimeType)) {
                    listBuildCodecSpecificData = java.util.Collections.singletonList(com.google.android.exoplayer2.audio.AacUtil.buildAacLcAudioSpecificConfig(requiredInt2, requiredInt));
                }
                builder.setContainerMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_MP4).setChannelCount(requiredInt).setSampleRate(requiredInt2).setInitializationData(listBuildCodecSpecificData);
            } else if (iIntValue == 3) {
                java.lang.String str = (java.lang.String) getNormalizedAttribute("Subtype");
                int i = 0;
                if (str != null) {
                    char c2 = 65535;
                    int iHashCode = str.hashCode();
                    if (iHashCode != 2061026) {
                        if (iHashCode == 2094737 && str.equals("DESC")) {
                            c2 = 1;
                        }
                    } else if (str.equals("CAPT")) {
                        c2 = 0;
                    }
                    if (c2 == 0) {
                        i = 64;
                    } else if (c2 == 1) {
                        i = 1024;
                    }
                }
                builder.setContainerMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4).setRoleFlags(i);
            } else {
                builder.setContainerMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4);
            }
            this.format = builder.setId(xmlPullParser.getAttributeValue(null, KEY_INDEX)).setLabel((java.lang.String) getNormalizedAttribute("Name")).setSampleMimeType(strFourCCToMimeType).setAverageBitrate(parseRequiredInt(xmlPullParser, KEY_BITRATE)).setLanguage((java.lang.String) getNormalizedAttribute("Language")).build();
        }
    }

    public static class SmoothStreamingMediaParser extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser {
        public static final java.lang.String KEY_DURATION = "Duration";
        public static final java.lang.String KEY_DVR_WINDOW_LENGTH = "DVRWindowLength";
        public static final java.lang.String KEY_IS_LIVE = "IsLive";
        public static final java.lang.String KEY_LOOKAHEAD_COUNT = "LookaheadCount";
        public static final java.lang.String KEY_MAJOR_VERSION = "MajorVersion";
        public static final java.lang.String KEY_MINOR_VERSION = "MinorVersion";
        public static final java.lang.String KEY_TIME_SCALE = "TimeScale";
        public static final java.lang.String TAG = "SmoothStreamingMedia";
        public long duration;
        public long dvrWindowLength;
        public boolean isLive;
        public int lookAheadCount;
        public int majorVersion;
        public int minorVersion;
        public com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement protectionElement;
        public final java.util.List<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement> streamElements;
        public long timescale;

        public SmoothStreamingMediaParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str) {
            super(elementParser, str, TAG);
            this.lookAheadCount = -1;
            this.protectionElement = null;
            this.streamElements = new java.util.LinkedList();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void addChild(java.lang.Object obj) {
            if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement) {
                this.streamElements.add((com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement) obj);
            } else if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement) {
                com.google.android.exoplayer2.util.Assertions.checkState(this.protectionElement == null);
                this.protectionElement = (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement) obj;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public java.lang.Object build() {
            int size = this.streamElements.size();
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement[] streamElementArr = new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement[size];
            this.streamElements.toArray(streamElementArr);
            if (this.protectionElement != null) {
                com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement protectionElement = this.protectionElement;
                com.google.android.exoplayer2.drm.DrmInitData drmInitData = new com.google.android.exoplayer2.drm.DrmInitData(new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(protectionElement.uuid, com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, protectionElement.data));
                for (int i = 0; i < size; i++) {
                    com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement = streamElementArr[i];
                    int i2 = streamElement.type;
                    if (i2 == 2 || i2 == 1) {
                        com.google.android.exoplayer2.Format[] formatArr = streamElement.formats;
                        for (int i3 = 0; i3 < formatArr.length; i3++) {
                            formatArr[i3] = formatArr[i3].buildUpon().setDrmInitData(drmInitData).build();
                        }
                    }
                }
            }
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest(this.majorVersion, this.minorVersion, this.timescale, this.duration, this.dvrWindowLength, this.lookAheadCount, this.isLive, this.protectionElement, streamElementArr);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) {
            this.majorVersion = parseRequiredInt(xmlPullParser, KEY_MAJOR_VERSION);
            this.minorVersion = parseRequiredInt(xmlPullParser, KEY_MINOR_VERSION);
            this.timescale = parseLong(xmlPullParser, "TimeScale", 10000000L);
            this.duration = parseRequiredLong(xmlPullParser, KEY_DURATION);
            this.dvrWindowLength = parseLong(xmlPullParser, KEY_DVR_WINDOW_LENGTH, 0L);
            this.lookAheadCount = parseInt(xmlPullParser, KEY_LOOKAHEAD_COUNT, -1);
            this.isLive = parseBoolean(xmlPullParser, KEY_IS_LIVE, false);
            putNormalizedAttribute("TimeScale", java.lang.Long.valueOf(this.timescale));
        }
    }

    public static class StreamIndexParser extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser {
        public static final java.lang.String KEY_DISPLAY_HEIGHT = "DisplayHeight";
        public static final java.lang.String KEY_DISPLAY_WIDTH = "DisplayWidth";
        public static final java.lang.String KEY_FRAGMENT_DURATION = "d";
        public static final java.lang.String KEY_FRAGMENT_REPEAT_COUNT = "r";
        public static final java.lang.String KEY_FRAGMENT_START_TIME = "t";
        public static final java.lang.String KEY_LANGUAGE = "Language";
        public static final java.lang.String KEY_MAX_HEIGHT = "MaxHeight";
        public static final java.lang.String KEY_MAX_WIDTH = "MaxWidth";
        public static final java.lang.String KEY_NAME = "Name";
        public static final java.lang.String KEY_SUB_TYPE = "Subtype";
        public static final java.lang.String KEY_TIME_SCALE = "TimeScale";
        public static final java.lang.String KEY_TYPE = "Type";
        public static final java.lang.String KEY_TYPE_AUDIO = "audio";
        public static final java.lang.String KEY_TYPE_TEXT = "text";
        public static final java.lang.String KEY_TYPE_VIDEO = "video";
        public static final java.lang.String KEY_URL = "Url";
        public static final java.lang.String TAG = "StreamIndex";
        public static final java.lang.String TAG_STREAM_FRAGMENT = "c";
        public final java.lang.String baseUri;
        public int displayHeight;
        public int displayWidth;
        public final java.util.List<com.google.android.exoplayer2.Format> formats;
        public java.lang.String language;
        public long lastChunkDuration;
        public int maxHeight;
        public int maxWidth;
        public java.lang.String name;
        public java.util.ArrayList<java.lang.Long> startTimes;
        public java.lang.String subType;
        public long timescale;
        public int type;
        public java.lang.String url;

        public StreamIndexParser(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser elementParser, java.lang.String str) {
            super(elementParser, str, TAG);
            this.baseUri = str;
            this.formats = new java.util.LinkedList();
        }

        private void parseStreamElementStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.ParserException {
            int type = parseType(xmlPullParser);
            this.type = type;
            putNormalizedAttribute("Type", java.lang.Integer.valueOf(type));
            this.subType = this.type == 3 ? parseRequiredString(xmlPullParser, "Subtype") : xmlPullParser.getAttributeValue(null, "Subtype");
            putNormalizedAttribute("Subtype", this.subType);
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "Name");
            this.name = attributeValue;
            putNormalizedAttribute("Name", attributeValue);
            this.url = parseRequiredString(xmlPullParser, KEY_URL);
            this.maxWidth = parseInt(xmlPullParser, "MaxWidth", -1);
            this.maxHeight = parseInt(xmlPullParser, "MaxHeight", -1);
            this.displayWidth = parseInt(xmlPullParser, KEY_DISPLAY_WIDTH, -1);
            this.displayHeight = parseInt(xmlPullParser, KEY_DISPLAY_HEIGHT, -1);
            java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
            this.language = attributeValue2;
            putNormalizedAttribute("Language", attributeValue2);
            long j = parseInt(xmlPullParser, "TimeScale", -1);
            this.timescale = j;
            if (j == -1) {
                this.timescale = ((java.lang.Long) getNormalizedAttribute("TimeScale")).longValue();
            }
            this.startTimes = new java.util.ArrayList<>();
        }

        private void parseStreamFragmentStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.ParserException {
            int size = this.startTimes.size();
            long jLongValue = parseLong(xmlPullParser, "t", com.google.android.exoplayer2.C.TIME_UNSET);
            int i = 1;
            if (jLongValue == com.google.android.exoplayer2.C.TIME_UNSET) {
                if (size == 0) {
                    jLongValue = 0;
                } else {
                    if (this.lastChunkDuration == -1) {
                        throw com.google.android.exoplayer2.ParserException.createForMalformedManifest("Unable to infer start time", null);
                    }
                    jLongValue = this.startTimes.get(size - 1).longValue() + this.lastChunkDuration;
                }
            }
            this.startTimes.add(java.lang.Long.valueOf(jLongValue));
            this.lastChunkDuration = parseLong(xmlPullParser, KEY_FRAGMENT_DURATION, com.google.android.exoplayer2.C.TIME_UNSET);
            long j = parseLong(xmlPullParser, KEY_FRAGMENT_REPEAT_COUNT, 1L);
            if (j > 1 && this.lastChunkDuration == com.google.android.exoplayer2.C.TIME_UNSET) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j2 = i;
                if (j2 >= j) {
                    return;
                }
                this.startTimes.add(java.lang.Long.valueOf((this.lastChunkDuration * j2) + jLongValue));
                i++;
            }
        }

        private int parseType(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.ParserException {
            java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException("Type");
            }
            if ("audio".equalsIgnoreCase(attributeValue)) {
                return 1;
            }
            if ("video".equalsIgnoreCase(attributeValue)) {
                return 2;
            }
            if ("text".equalsIgnoreCase(attributeValue)) {
                return 3;
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(attributeValue.length() + 19);
            sb.append("Invalid key value[");
            sb.append(attributeValue);
            sb.append("]");
            throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(sb.toString(), null);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void addChild(java.lang.Object obj) {
            if (obj instanceof com.google.android.exoplayer2.Format) {
                this.formats.add((com.google.android.exoplayer2.Format) obj);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public java.lang.Object build() {
            com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[this.formats.size()];
            this.formats.toArray(formatArr);
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement(this.baseUri, this.url, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.startTimes, this.lastChunkDuration);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean handleChildInline(java.lang.String str) {
            return "c".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                parseStreamFragmentStartTag(xmlPullParser);
            } else {
                parseStreamElementStartTag(xmlPullParser);
            }
        }
    }

    public SsManifestParser() {
        try {
            this.xmlParserFactory = org.xmlpull.v1.XmlPullParserFactory.newInstance();
        } catch (org.xmlpull.v1.XmlPullParserException e2) {
            throw new java.lang.RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest parse(android.net.Uri uri, java.io.InputStream inputStream) throws org.xmlpull.v1.XmlPullParserException, com.google.android.exoplayer2.ParserException {
        try {
            org.xmlpull.v1.XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            return (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest) new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.SmoothStreamingMediaParser(null, uri.toString()).parse(xmlPullParserNewPullParser);
        } catch (org.xmlpull.v1.XmlPullParserException e2) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
        }
    }
}
