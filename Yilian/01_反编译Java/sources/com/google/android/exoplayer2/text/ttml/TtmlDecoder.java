package com.google.android.exoplayer2.text.ttml;

/* loaded from: classes.dex */
public final class TtmlDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final java.lang.String ATTR_BEGIN = "begin";
    public static final java.lang.String ATTR_DURATION = "dur";
    public static final java.lang.String ATTR_END = "end";
    public static final java.lang.String ATTR_IMAGE = "backgroundImage";
    public static final java.lang.String ATTR_REGION = "region";
    public static final java.lang.String ATTR_STYLE = "style";
    public static final int DEFAULT_FRAME_RATE = 30;
    public static final java.lang.String TAG = "TtmlDecoder";
    public static final java.lang.String TTP = "http://www.w3.org/ns/ttml#parameter";
    public final org.xmlpull.v1.XmlPullParserFactory xmlParserFactory;
    public static final java.util.regex.Pattern CLOCK_TIME = java.util.regex.Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final java.util.regex.Pattern OFFSET_TIME = java.util.regex.Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final java.util.regex.Pattern FONT_SIZE = java.util.regex.Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final java.util.regex.Pattern SIGNED_PERCENTAGE = java.util.regex.Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final java.util.regex.Pattern PERCENTAGE_COORDINATES = java.util.regex.Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final java.util.regex.Pattern PIXEL_COORDINATES = java.util.regex.Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    public static final java.util.regex.Pattern CELL_RESOLUTION = java.util.regex.Pattern.compile("^(\\d+) (\\d+)$");
    public static final com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate(30.0f, 1, 1);
    public static final com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution DEFAULT_CELL_RESOLUTION = new com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution(32, 15);

    public static final class CellResolution {
        public final int columns;
        public final int rows;

        public CellResolution(int i, int i2) {
            this.columns = i;
            this.rows = i2;
        }
    }

    public static final class FrameAndTickRate {
        public final float effectiveFrameRate;
        public final int subFrameRate;
        public final int tickRate;

        public FrameAndTickRate(float f2, int i, int i2) {
            this.effectiveFrameRate = f2;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }

    public static final class TtsExtent {
        public final int height;
        public final int width;

        public TtsExtent(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }

    public TtmlDecoder() throws org.xmlpull.v1.XmlPullParserException {
        super(TAG);
        try {
            org.xmlpull.v1.XmlPullParserFactory xmlPullParserFactoryNewInstance = org.xmlpull.v1.XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (org.xmlpull.v1.XmlPullParserException e2) {
            throw new java.lang.RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlStyle createIfNull(com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new com.google.android.exoplayer2.text.ttml.TtmlStyle() : ttmlStyle;
    }

    public static boolean isSupportedTag(java.lang.String str) {
        return str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_TT) || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_HEAD) || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_BODY) || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_DIV) || str.equals("p") || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_SPAN) || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_BR) || str.equals("style") || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_STYLING) || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_LAYOUT) || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_INFORMATION);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.Layout.Alignment parseAlignment(java.lang.String r5) {
        /*
            java.lang.String r5 = d.s.y.b0(r5)
            int r0 = r5.hashCode()
            r1 = 4
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1364013995: goto L38;
                case 100571: goto L2e;
                case 3317767: goto L24;
                case 108511772: goto L1a;
                case 109757538: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L42
        L10:
            java.lang.String r0 = "start"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 1
            goto L43
        L1a:
            java.lang.String r0 = "right"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 2
            goto L43
        L24:
            java.lang.String r0 = "left"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 0
            goto L43
        L2e:
            java.lang.String r0 = "end"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 3
            goto L43
        L38:
            java.lang.String r0 = "center"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L42
            r5 = 4
            goto L43
        L42:
            r5 = -1
        L43:
            if (r5 == 0) goto L55
            if (r5 == r4) goto L55
            if (r5 == r3) goto L52
            if (r5 == r2) goto L52
            if (r5 == r1) goto L4f
            r5 = 0
            return r5
        L4f:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_CENTER
            return r5
        L52:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            return r5
        L55:
            android.text.Layout$Alignment r5 = android.text.Layout.Alignment.ALIGN_NORMAL
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.parseAlignment(java.lang.String):android.text.Layout$Alignment");
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution parseCellResolution(org.xmlpull.v1.XmlPullParser xmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution cellResolution) throws com.google.android.exoplayer2.text.SubtitleDecoderException, java.lang.NumberFormatException {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return cellResolution;
        }
        java.util.regex.Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.Log.w(TAG, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new java.lang.String("Ignoring malformed cell resolution: "));
            return cellResolution;
        }
        try {
            int i = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
            int i2 = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2)));
            if (i != 0 && i2 != 0) {
                return new com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution(i, i2);
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(47);
            sb.append("Invalid cell resolution ");
            sb.append(i);
            sb.append(" ");
            sb.append(i2);
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException(sb.toString());
        } catch (java.lang.NumberFormatException unused) {
            com.google.android.exoplayer2.util.Log.w(TAG, attributeValue.length() != 0 ? "Ignoring malformed cell resolution: ".concat(attributeValue) : new java.lang.String("Ignoring malformed cell resolution: "));
            return cellResolution;
        }
    }

    public static void parseFontSize(java.lang.String str, com.google.android.exoplayer2.text.ttml.TtmlStyle ttmlStyle) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        java.util.regex.Matcher matcher;
        java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(str, "\\s+");
        if (strArrSplit.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                int length = strArrSplit.length;
                java.lang.StringBuilder sb = new java.lang.StringBuilder(52);
                sb.append("Invalid number of entries for fontSize: ");
                sb.append(length);
                sb.append(".");
                throw new com.google.android.exoplayer2.text.SubtitleDecoderException(sb.toString());
            }
            matcher = FONT_SIZE.matcher(strArrSplit[1]);
            com.google.android.exoplayer2.util.Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException(e.a.c.a.a.G(e.a.c.a.a.m(str, 36), "Invalid expression for fontSize: '", str, "'."));
        }
        java.lang.String str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(3));
        char c2 = 65535;
        int iHashCode = str2.hashCode();
        if (iHashCode != 37) {
            if (iHashCode != 3240) {
                if (iHashCode == 3592 && str2.equals("px")) {
                    c2 = 0;
                }
            } else if (str2.equals("em")) {
                c2 = 1;
            }
        } else if (str2.equals("%")) {
            c2 = 2;
        }
        if (c2 == 0) {
            ttmlStyle.setFontSizeUnit(1);
        } else if (c2 == 1) {
            ttmlStyle.setFontSizeUnit(2);
        } else {
            if (c2 != 2) {
                throw new com.google.android.exoplayer2.text.SubtitleDecoderException(e.a.c.a.a.G(str2.length() + 30, "Invalid unit for fontSize: '", str2, "'."));
            }
            ttmlStyle.setFontSizeUnit(3);
        }
        ttmlStyle.setFontSize(java.lang.Float.parseFloat((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))));
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate parseFrameAndTickRates(org.xmlpull.v1.XmlPullParser xmlPullParser) throws com.google.android.exoplayer2.text.SubtitleDecoderException, java.lang.NumberFormatException {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int i = attributeValue != null ? java.lang.Integer.parseInt(attributeValue) : 30;
        float f2 = 1.0f;
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (com.google.android.exoplayer2.util.Util.split(attributeValue2, " ").length != 2) {
                throw new com.google.android.exoplayer2.text.SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f2 = java.lang.Integer.parseInt(r2[0]) / java.lang.Integer.parseInt(r2[1]);
        }
        int i2 = DEFAULT_FRAME_AND_TICK_RATE.subFrameRate;
        java.lang.String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i2 = java.lang.Integer.parseInt(attributeValue3);
        }
        int i3 = DEFAULT_FRAME_AND_TICK_RATE.tickRate;
        java.lang.String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i3 = java.lang.Integer.parseInt(attributeValue4);
        }
        return new com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate(i * f2, i2, i3);
    }

    public static java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> parseHeader(org.xmlpull.v1.XmlPullParser xmlPullParser, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map, com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution cellResolution, com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent ttsExtent, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlRegion> map2, java.util.Map<java.lang.String, java.lang.String> map3) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException, java.lang.NumberFormatException {
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                com.google.android.exoplayer2.text.ttml.TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new com.google.android.exoplayer2.text.ttml.TtmlStyle());
                if (attributeValue != null) {
                    for (java.lang.String str : parseStyleIds(attributeValue)) {
                        styleAttributes.chain(map.get(str));
                    }
                }
                java.lang.String id = styleAttributes.getId();
                if (id != null) {
                    map.put(id, styleAttributes);
                }
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                com.google.android.exoplayer2.text.ttml.TtmlRegion regionAttributes = parseRegionAttributes(xmlPullParser, cellResolution, ttsExtent);
                if (regionAttributes != null) {
                    map2.put(regionAttributes.id, regionAttributes);
                }
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "metadata")) {
                parseMetadata(xmlPullParser, map3);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_HEAD));
        return map;
    }

    public static void parseMetadata(org.xmlpull.v1.XmlPullParser xmlPullParser, java.util.Map<java.lang.String, java.lang.String> map) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String attributeValue;
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, "id")) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "metadata"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TtmlNode parseNode(org.xmlpull.v1.XmlPullParser r19, com.google.android.exoplayer2.text.ttml.TtmlNode r20, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlRegion> r21, com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate r22) throws com.google.android.exoplayer2.text.SubtitleDecoderException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.parseNode(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlNode, java.util.Map, com.google.android.exoplayer2.text.ttml.TtmlDecoder$FrameAndTickRate):com.google.android.exoplayer2.text.ttml.TtmlNode");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TtmlRegion parseRegionAttributes(org.xmlpull.v1.XmlPullParser r17, com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution r18, com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent r19) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.parseRegionAttributes(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlDecoder$CellResolution, com.google.android.exoplayer2.text.ttml.TtmlDecoder$TtsExtent):com.google.android.exoplayer2.text.ttml.TtmlRegion");
    }

    public static float parseShear(java.lang.String str) {
        java.util.regex.Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Invalid value for shear: ".concat(strValueOf) : new java.lang.String("Invalid value for shear: "));
            return Float.MAX_VALUE;
        }
        try {
            return java.lang.Math.min(100.0f, java.lang.Math.max(-100.0f, java.lang.Float.parseFloat((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)))));
        } catch (java.lang.NumberFormatException e2) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Failed to parse shear: ".concat(strValueOf2) : new java.lang.String("Failed to parse shear: "), e2);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0299 A[PHI: r3 r4 r13
  0x0299: PHI (r3v5 java.lang.String) = (r3v1 java.lang.String), (r3v3 java.lang.String), (r3v8 java.lang.String) binds: [B:153:0x0297, B:169:0x02e7, B:162:0x02c7] A[DONT_GENERATE, DONT_INLINE]
  0x0299: PHI (r4v36 java.lang.String) = (r4v31 java.lang.String), (r4v34 java.lang.String), (r4v37 java.lang.String) binds: [B:153:0x0297, B:169:0x02e7, B:162:0x02c7] A[DONT_GENERATE, DONT_INLINE]
  0x0299: PHI (r13v7 com.google.android.exoplayer2.text.ttml.TtmlStyle) = 
  (r13v2 com.google.android.exoplayer2.text.ttml.TtmlStyle)
  (r13v6 com.google.android.exoplayer2.text.ttml.TtmlStyle)
  (r13v9 com.google.android.exoplayer2.text.ttml.TtmlStyle)
 binds: [B:153:0x0297, B:169:0x02e7, B:162:0x02c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TtmlStyle parseStyleAttributes(org.xmlpull.v1.XmlPullParser r12, com.google.android.exoplayer2.text.ttml.TtmlStyle r13) {
        /*
            Method dump skipped, instructions count: 918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.parseStyleAttributes(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlStyle):com.google.android.exoplayer2.text.ttml.TtmlStyle");
    }

    public static java.lang.String[] parseStyleIds(java.lang.String str) {
        java.lang.String strTrim = str.trim();
        return strTrim.isEmpty() ? new java.lang.String[0] : com.google.android.exoplayer2.util.Util.split(strTrim, "\\s+");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseTimeExpression(java.lang.String r14, com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate r15) throws com.google.android.exoplayer2.text.SubtitleDecoderException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TtmlDecoder.parseTimeExpression(java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlDecoder$FrameAndTickRate):long");
    }

    public static com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent parseTtsExtent(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        java.lang.String attributeValue = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValue(xmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue == null) {
            return null;
        }
        java.util.regex.Matcher matcher = PIXEL_COORDINATES.matcher(attributeValue);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.Log.w(TAG, attributeValue.length() != 0 ? "Ignoring non-pixel tts extent: ".concat(attributeValue) : new java.lang.String("Ignoring non-pixel tts extent: "));
            return null;
        }
        try {
            return new com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent(java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))), java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2))));
        } catch (java.lang.NumberFormatException unused) {
            com.google.android.exoplayer2.util.Log.w(TAG, attributeValue.length() != 0 ? "Ignoring malformed tts extent: ".concat(attributeValue) : new java.lang.String("Ignoring malformed tts extent: "));
            return null;
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) throws org.xmlpull.v1.XmlPullParserException, com.google.android.exoplayer2.text.SubtitleDecoderException, java.lang.NumberFormatException, java.io.IOException {
        com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate frameAndTickRate;
        try {
            org.xmlpull.v1.XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            java.util.HashMap map = new java.util.HashMap();
            java.util.HashMap map2 = new java.util.HashMap();
            java.util.HashMap map3 = new java.util.HashMap();
            map2.put("", new com.google.android.exoplayer2.text.ttml.TtmlRegion(""));
            com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent ttsExtent = null;
            xmlPullParserNewPullParser.setInput(new java.io.ByteArrayInputStream(bArr, 0, i), null);
            java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque();
            com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate frameAndTickRates = DEFAULT_FRAME_AND_TICK_RATE;
            com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution cellResolution = DEFAULT_CELL_RESOLUTION;
            com.google.android.exoplayer2.text.ttml.TtmlSubtitle ttmlSubtitle = null;
            int i2 = 0;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode = (com.google.android.exoplayer2.text.ttml.TtmlNode) arrayDeque.peek();
                if (i2 == 0) {
                    java.lang.String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_TT.equals(name)) {
                            frameAndTickRates = parseFrameAndTickRates(xmlPullParserNewPullParser);
                            cellResolution = parseCellResolution(xmlPullParserNewPullParser, DEFAULT_CELL_RESOLUTION);
                            ttsExtent = parseTtsExtent(xmlPullParserNewPullParser);
                        }
                        com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent ttsExtent2 = ttsExtent;
                        com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate frameAndTickRate2 = frameAndTickRates;
                        com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution cellResolution2 = cellResolution;
                        if (isSupportedTag(name)) {
                            if (com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_HEAD.equals(name)) {
                                frameAndTickRate = frameAndTickRate2;
                                parseHeader(xmlPullParserNewPullParser, map, cellResolution2, ttsExtent2, map2, map3);
                            } else {
                                frameAndTickRate = frameAndTickRate2;
                                try {
                                    com.google.android.exoplayer2.text.ttml.TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                    arrayDeque.push(node);
                                    if (ttmlNode != null) {
                                        ttmlNode.addChild(node);
                                    }
                                } catch (com.google.android.exoplayer2.text.SubtitleDecoderException e2) {
                                    com.google.android.exoplayer2.util.Log.w(TAG, "Suppressing parser error", e2);
                                    i2++;
                                }
                            }
                            frameAndTickRates = frameAndTickRate;
                        } else {
                            java.lang.String strValueOf = java.lang.String.valueOf(xmlPullParserNewPullParser.getName());
                            com.google.android.exoplayer2.util.Log.i(TAG, strValueOf.length() != 0 ? "Ignoring unsupported tag: ".concat(strValueOf) : new java.lang.String("Ignoring unsupported tag: "));
                            i2++;
                            frameAndTickRates = frameAndTickRate2;
                        }
                        ttsExtent = ttsExtent2;
                        cellResolution = cellResolution2;
                    } else if (eventType == 4) {
                        ((com.google.android.exoplayer2.text.ttml.TtmlNode) com.google.android.exoplayer2.util.Assertions.checkNotNull(ttmlNode)).addChild(com.google.android.exoplayer2.text.ttml.TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_TT)) {
                            ttmlSubtitle = new com.google.android.exoplayer2.text.ttml.TtmlSubtitle((com.google.android.exoplayer2.text.ttml.TtmlNode) com.google.android.exoplayer2.util.Assertions.checkNotNull((com.google.android.exoplayer2.text.ttml.TtmlNode) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (ttmlSubtitle != null) {
                return ttmlSubtitle;
            }
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException("No TTML subtitles found");
        } catch (java.io.IOException e3) {
            throw new java.lang.IllegalStateException("Unexpected error when reading input.", e3);
        } catch (org.xmlpull.v1.XmlPullParserException e4) {
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException("Unable to decode source", e4);
        }
    }
}
