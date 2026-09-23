package com.google.android.exoplayer2.extractor.jpeg;

/* loaded from: classes.dex */
public final class XmpMotionPhotoDescriptionParser {
    public static final java.lang.String TAG = "MotionPhotoXmpParser";
    public static final java.lang.String[] MOTION_PHOTO_ATTRIBUTE_NAMES = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final java.lang.String[] DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    public static final java.lang.String[] DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription parse(java.lang.String str) {
        try {
            return parseInternal(str);
        } catch (com.google.android.exoplayer2.ParserException | java.lang.NumberFormatException | org.xmlpull.v1.XmlPullParserException unused) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    public static com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription parseInternal(java.lang.String str) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException, java.lang.NumberFormatException {
        java.lang.String str2;
        java.lang.String str3;
        org.xmlpull.v1.XmlPullParser xmlPullParserNewPullParser = org.xmlpull.v1.XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new java.io.StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
        }
        long motionPhotoPresentationTimestampUsFromDescription = com.google.android.exoplayer2.C.TIME_UNSET;
        e.c.b.b.s<com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem> sVarP = e.c.b.b.s.p();
        do {
            xmlPullParserNewPullParser.next();
            if (!com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParserNewPullParser, "rdf:Description")) {
                if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParserNewPullParser, "Container:Directory")) {
                    str2 = "Container";
                    str3 = "Item";
                } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParserNewPullParser, "GContainer:Directory")) {
                    str2 = "GContainer";
                    str3 = "GContainerItem";
                }
                sVarP = parseMotionPhotoV1Directory(xmlPullParserNewPullParser, str2, str3);
            } else {
                if (!parseMotionPhotoFlagFromDescription(xmlPullParserNewPullParser)) {
                    return null;
                }
                motionPhotoPresentationTimestampUsFromDescription = parseMotionPhotoPresentationTimestampUsFromDescription(xmlPullParserNewPullParser);
                sVarP = parseMicroVideoOffsetFromDescription(xmlPullParserNewPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (sVarP.isEmpty()) {
            return null;
        }
        return new com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription(motionPhotoPresentationTimestampUsFromDescription, sVarP);
    }

    public static e.c.b.b.s<com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem> parseMicroVideoOffsetFromDescription(org.xmlpull.v1.XmlPullParser xmlPullParser) throws java.lang.NumberFormatException {
        for (java.lang.String str : DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES) {
            java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return e.c.b.b.s.r(new com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem(com.google.android.exoplayer2.util.MimeTypes.IMAGE_JPEG, "Primary", 0L, 0L), new com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem(com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, "MotionPhoto", java.lang.Long.parseLong(attributeValue), 0L));
            }
        }
        return e.c.b.b.s.p();
    }

    public static boolean parseMotionPhotoFlagFromDescription(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        for (java.lang.String str : MOTION_PHOTO_ATTRIBUTE_NAMES) {
            java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                return java.lang.Integer.parseInt(attributeValue) == 1;
            }
        }
        return false;
    }

    public static long parseMotionPhotoPresentationTimestampUsFromDescription(org.xmlpull.v1.XmlPullParser xmlPullParser) throws java.lang.NumberFormatException {
        for (java.lang.String str : DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES) {
            java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, str);
            if (attributeValue != null) {
                long j = java.lang.Long.parseLong(attributeValue);
                return j == -1 ? com.google.android.exoplayer2.C.TIME_UNSET : j;
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static e.c.b.b.s<com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem> parseMotionPhotoV1Directory(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, java.lang.String str2) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        java.lang.String strConcat = java.lang.String.valueOf(str).concat(":Item");
        java.lang.String strConcat2 = java.lang.String.valueOf(str).concat(":Directory");
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, strConcat)) {
                java.lang.String strConcat3 = java.lang.String.valueOf(str2).concat(":Mime");
                java.lang.String strConcat4 = java.lang.String.valueOf(str2).concat(":Semantic");
                java.lang.String strConcat5 = java.lang.String.valueOf(str2).concat(":Length");
                java.lang.String strConcat6 = java.lang.String.valueOf(str2).concat(":Padding");
                java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, strConcat3);
                java.lang.String attributeValue2 = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, strConcat4);
                java.lang.String attributeValue3 = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, strConcat5);
                java.lang.String attributeValue4 = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, strConcat6);
                if (attributeValue == null || attributeValue2 == null) {
                    return e.c.b.b.k0.f2705e;
                }
                aVarJ.b(new com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription.ContainerItem(attributeValue, attributeValue2, attributeValue3 != null ? java.lang.Long.parseLong(attributeValue3) : 0L, attributeValue4 != null ? java.lang.Long.parseLong(attributeValue4) : 0L));
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, strConcat2));
        return aVarJ.c();
    }
}
