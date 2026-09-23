package com.google.android.exoplayer2.extractor.flv;

/* loaded from: classes.dex */
public final class ScriptTagPayloadReader extends com.google.android.exoplayer2.extractor.flv.TagPayloadReader {
    public static final int AMF_TYPE_BOOLEAN = 1;
    public static final int AMF_TYPE_DATE = 11;
    public static final int AMF_TYPE_ECMA_ARRAY = 8;
    public static final int AMF_TYPE_END_MARKER = 9;
    public static final int AMF_TYPE_NUMBER = 0;
    public static final int AMF_TYPE_OBJECT = 3;
    public static final int AMF_TYPE_STRICT_ARRAY = 10;
    public static final int AMF_TYPE_STRING = 2;
    public static final java.lang.String KEY_DURATION = "duration";
    public static final java.lang.String KEY_FILE_POSITIONS = "filepositions";
    public static final java.lang.String KEY_KEY_FRAMES = "keyframes";
    public static final java.lang.String KEY_TIMES = "times";
    public static final java.lang.String NAME_METADATA = "onMetaData";
    public long durationUs;
    public long[] keyFrameTagPositions;
    public long[] keyFrameTimesUs;

    public ScriptTagPayloadReader() {
        super(new com.google.android.exoplayer2.extractor.DummyTrackOutput());
        this.durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.keyFrameTimesUs = new long[0];
        this.keyFrameTagPositions = new long[0];
    }

    public static java.lang.Boolean readAmfBoolean(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return java.lang.Boolean.valueOf(parsableByteArray.readUnsignedByte() == 1);
    }

    public static java.lang.Object readAmfData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        if (i == 0) {
            return readAmfDouble(parsableByteArray);
        }
        if (i == 1) {
            return readAmfBoolean(parsableByteArray);
        }
        if (i == 2) {
            return readAmfString(parsableByteArray);
        }
        if (i == 3) {
            return readAmfObject(parsableByteArray);
        }
        if (i == 8) {
            return readAmfEcmaArray(parsableByteArray);
        }
        if (i == 10) {
            return readAmfStrictArray(parsableByteArray);
        }
        if (i != 11) {
            return null;
        }
        return readAmfDate(parsableByteArray);
    }

    public static java.util.Date readAmfDate(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.util.Date date = new java.util.Date((long) readAmfDouble(parsableByteArray).doubleValue());
        parsableByteArray.skipBytes(2);
        return date;
    }

    public static java.lang.Double readAmfDouble(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return java.lang.Double.valueOf(java.lang.Double.longBitsToDouble(parsableByteArray.readLong()));
    }

    public static java.util.HashMap<java.lang.String, java.lang.Object> readAmfEcmaArray(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        java.util.HashMap<java.lang.String, java.lang.Object> map = new java.util.HashMap<>(unsignedIntToInt);
        for (int i = 0; i < unsignedIntToInt; i++) {
            java.lang.String amfString = readAmfString(parsableByteArray);
            java.lang.Object amfData = readAmfData(parsableByteArray, readAmfType(parsableByteArray));
            if (amfData != null) {
                map.put(amfString, amfData);
            }
        }
        return map;
    }

    public static java.util.HashMap<java.lang.String, java.lang.Object> readAmfObject(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.util.HashMap<java.lang.String, java.lang.Object> map = new java.util.HashMap<>();
        while (true) {
            java.lang.String amfString = readAmfString(parsableByteArray);
            int amfType = readAmfType(parsableByteArray);
            if (amfType == 9) {
                return map;
            }
            java.lang.Object amfData = readAmfData(parsableByteArray, amfType);
            if (amfData != null) {
                map.put(amfString, amfData);
            }
        }
    }

    public static java.util.ArrayList<java.lang.Object> readAmfStrictArray(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        java.util.ArrayList<java.lang.Object> arrayList = new java.util.ArrayList<>(unsignedIntToInt);
        for (int i = 0; i < unsignedIntToInt; i++) {
            java.lang.Object amfData = readAmfData(parsableByteArray, readAmfType(parsableByteArray));
            if (amfData != null) {
                arrayList.add(amfData);
            }
        }
        return arrayList;
    }

    public static java.lang.String readAmfString(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(unsignedShort);
        return new java.lang.String(parsableByteArray.getData(), position, unsignedShort);
    }

    public static int readAmfType(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return parsableByteArray.readUnsignedByte();
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public long[] getKeyFrameTagPositions() {
        return this.keyFrameTagPositions;
    }

    public long[] getKeyFrameTimesUs() {
        return this.keyFrameTimesUs;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parseHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public boolean parsePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j) {
        if (readAmfType(parsableByteArray) != 2 || !NAME_METADATA.equals(readAmfString(parsableByteArray)) || readAmfType(parsableByteArray) != 8) {
            return false;
        }
        java.util.HashMap<java.lang.String, java.lang.Object> amfEcmaArray = readAmfEcmaArray(parsableByteArray);
        java.lang.Object obj = amfEcmaArray.get("duration");
        if (obj instanceof java.lang.Double) {
            double dDoubleValue = ((java.lang.Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.durationUs = (long) (dDoubleValue * 1000000.0d);
            }
        }
        java.lang.Object obj2 = amfEcmaArray.get(KEY_KEY_FRAMES);
        if (obj2 instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj2;
            java.lang.Object obj3 = map.get(KEY_FILE_POSITIONS);
            java.lang.Object obj4 = map.get("times");
            if ((obj3 instanceof java.util.List) && (obj4 instanceof java.util.List)) {
                java.util.List list = (java.util.List) obj3;
                java.util.List list2 = (java.util.List) obj4;
                int size = list2.size();
                this.keyFrameTimesUs = new long[size];
                this.keyFrameTagPositions = new long[size];
                for (int i = 0; i < size; i++) {
                    java.lang.Object obj5 = list.get(i);
                    java.lang.Object obj6 = list2.get(i);
                    if (!(obj6 instanceof java.lang.Double) || !(obj5 instanceof java.lang.Double)) {
                        this.keyFrameTimesUs = new long[0];
                        this.keyFrameTagPositions = new long[0];
                        break;
                    }
                    this.keyFrameTimesUs[i] = (long) (((java.lang.Double) obj6).doubleValue() * 1000000.0d);
                    this.keyFrameTagPositions[i] = ((java.lang.Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    public void seek() {
    }
}
