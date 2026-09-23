package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public class DashManifestParser extends org.xml.sax.helpers.DefaultHandler implements com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.dash.manifest.DashManifest> {
    public static final java.lang.String TAG = "MpdParser";
    public final org.xmlpull.v1.XmlPullParserFactory xmlParserFactory;
    public static final java.util.regex.Pattern FRAME_RATE_PATTERN = java.util.regex.Pattern.compile("(\\d+)(?:/(\\d+))?");
    public static final java.util.regex.Pattern CEA_608_ACCESSIBILITY_PATTERN = java.util.regex.Pattern.compile("CC([1-4])=.*");
    public static final java.util.regex.Pattern CEA_708_ACCESSIBILITY_PATTERN = java.util.regex.Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    public static final int[] MPEG_CHANNEL_CONFIGURATION_MAPPING = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    public static final class RepresentationInfo {
        public final e.c.b.b.s<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> baseUrls;
        public final java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> drmSchemeDatas;
        public final java.lang.String drmSchemeType;
        public final com.google.android.exoplayer2.Format format;
        public final java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Descriptor> inbandEventStreams;
        public final long revisionId;
        public final com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase;

        public RepresentationInfo(com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase, java.lang.String str, java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> arrayList, java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Descriptor> arrayList2, long j) {
            this.format = format;
            this.baseUrls = e.c.b.b.s.l(list);
            this.segmentBase = segmentBase;
            this.drmSchemeType = str;
            this.drmSchemeDatas = arrayList;
            this.inbandEventStreams = arrayList2;
            this.revisionId = j;
        }
    }

    public DashManifestParser() {
        try {
            this.xmlParserFactory = org.xmlpull.v1.XmlPullParserFactory.newInstance();
        } catch (org.xmlpull.v1.XmlPullParserException e2) {
            throw new java.lang.RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    private long addSegmentTimelineElementsToList(java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j, long j2, int i, long j3) {
        int iCeilDivide = i >= 0 ? i + 1 : (int) com.google.android.exoplayer2.util.Util.ceilDivide(j3 - j, j2);
        for (int i2 = 0; i2 < iCeilDivide; i2++) {
            list.add(buildSegmentTimelineElement(j, j2));
            j += j2;
        }
        return j;
    }

    public static int checkContentTypeConsistency(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 == -1) {
            return i;
        }
        com.google.android.exoplayer2.util.Assertions.checkState(i == i2);
        return i;
    }

    public static java.lang.String checkLanguageConsistency(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        com.google.android.exoplayer2.util.Assertions.checkState(str.equals(str2));
        return str;
    }

    public static void filterRedundantIncompleteSchemeDatas(java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.hasData()) {
                int i = 0;
                while (true) {
                    if (i >= arrayList.size()) {
                        break;
                    }
                    if (arrayList.get(i).canReplace(schemeData)) {
                        arrayList.remove(size);
                        break;
                    }
                    i++;
                }
            }
        }
    }

    public static long getFinalAvailabilityTimeOffset(long j, long j2) {
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
            j = j2;
        }
        return j == Long.MAX_VALUE ? com.google.android.exoplayer2.C.TIME_UNSET : j;
    }

    public static java.lang.String getSampleMimeType(java.lang.String str, java.lang.String str2) {
        if (com.google.android.exoplayer2.util.MimeTypes.isAudio(str)) {
            return com.google.android.exoplayer2.util.MimeTypes.getAudioMediaMimeType(str2);
        }
        if (com.google.android.exoplayer2.util.MimeTypes.isVideo(str)) {
            return com.google.android.exoplayer2.util.MimeTypes.getVideoMediaMimeType(str2);
        }
        if (com.google.android.exoplayer2.util.MimeTypes.isText(str)) {
            return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_RAWCC.equals(str) ? com.google.android.exoplayer2.util.MimeTypes.getTextMediaMimeType(str2) : str;
        }
        if (com.google.android.exoplayer2.util.MimeTypes.isImage(str)) {
            return str;
        }
        if (!com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4.equals(str)) {
            return null;
        }
        java.lang.String mediaMimeType = com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(str2);
        return com.google.android.exoplayer2.util.MimeTypes.TEXT_VTT.equals(mediaMimeType) ? com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4VTT : mediaMimeType;
    }

    public static void maybeSkipTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser)) {
            int i = 1;
            while (i != 0) {
                xmlPullParser.next();
                if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser)) {
                    i++;
                } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser)) {
                    i--;
                }
            }
        }
    }

    public static int parseCea608AccessibilityChannel(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        java.lang.String str;
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                java.util.regex.Matcher matcher = CEA_608_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return java.lang.Integer.parseInt(matcher.group(1));
                }
                java.lang.String strValueOf = java.lang.String.valueOf(descriptor.value);
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Unable to parse CEA-608 channel number from: ".concat(strValueOf) : new java.lang.String("Unable to parse CEA-608 channel number from: "));
            }
        }
        return -1;
    }

    public static int parseCea708AccessibilityChannel(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        java.lang.String str;
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                java.util.regex.Matcher matcher = CEA_708_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return java.lang.Integer.parseInt(matcher.group(1));
                }
                java.lang.String strValueOf = java.lang.String.valueOf(descriptor.value);
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Unable to parse CEA-708 service block number from: ".concat(strValueOf) : new java.lang.String("Unable to parse CEA-708 service block number from: "));
            }
        }
        return -1;
    }

    public static long parseDateTime(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, long j) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : com.google.android.exoplayer2.util.Util.parseXsDateTime(attributeValue);
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Descriptor parseDescriptor(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String string = parseString(xmlPullParser, "schemeIdUri", "");
        java.lang.String string2 = parseString(xmlPullParser, "value", null);
        java.lang.String string3 = parseString(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return new com.google.android.exoplayer2.source.dash.manifest.Descriptor(string, string2, string3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseDolbyChannelConfiguration(org.xmlpull.v1.XmlPullParser r5) {
        /*
            r0 = 0
            java.lang.String r1 = "value"
            java.lang.String r5 = r5.getAttributeValue(r0, r1)
            r0 = -1
            if (r5 != 0) goto Lb
            return r0
        Lb:
            java.lang.String r5 = d.s.y.b0(r5)
            int r1 = r5.hashCode()
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r1) {
                case 1596796: goto L38;
                case 2937391: goto L2e;
                case 3094035: goto L24;
                case 3133436: goto L1a;
                default: goto L19;
            }
        L19:
            goto L42
        L1a:
            java.lang.String r1 = "fa01"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L42
            r5 = 3
            goto L43
        L24:
            java.lang.String r1 = "f801"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L42
            r5 = 2
            goto L43
        L2e:
            java.lang.String r1 = "a000"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L42
            r5 = 1
            goto L43
        L38:
            java.lang.String r1 = "4000"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L42
            r5 = 0
            goto L43
        L42:
            r5 = -1
        L43:
            if (r5 == 0) goto L52
            if (r5 == r4) goto L51
            if (r5 == r3) goto L4f
            if (r5 == r2) goto L4c
            return r0
        L4c:
            r5 = 8
            return r5
        L4f:
            r5 = 6
            return r5
        L51:
            return r3
        L52:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseDolbyChannelConfiguration(org.xmlpull.v1.XmlPullParser):int");
    }

    public static long parseDuration(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, long j) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : com.google.android.exoplayer2.util.Util.parseXsDuration(attributeValue);
    }

    public static java.lang.String parseEac3SupplementalProperties(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            java.lang.String str = descriptor.schemeIdUri;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(descriptor.value)) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC;
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && com.google.android.exoplayer2.util.MimeTypes.CODEC_E_AC3_JOC.equals(descriptor.value)) {
                return com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3;
    }

    public static float parseFloat(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, float f2) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f2 : java.lang.Float.parseFloat(attributeValue);
    }

    public static float parseFrameRate(org.xmlpull.v1.XmlPullParser xmlPullParser, float f2) throws java.lang.NumberFormatException {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f2;
        }
        java.util.regex.Matcher matcher = FRAME_RATE_PATTERN.matcher(attributeValue);
        if (!matcher.matches()) {
            return f2;
        }
        int i = java.lang.Integer.parseInt(matcher.group(1));
        float f3 = i;
        return !android.text.TextUtils.isEmpty(matcher.group(2)) ? f3 / java.lang.Integer.parseInt(r2) : f3;
    }

    public static int parseInt(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : java.lang.Integer.parseInt(attributeValue);
    }

    public static long parseLastSegmentNumberSupplementalProperty(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if (d.s.y.x("http://dashif.org/guidelines/last-segment-number", descriptor.schemeIdUri)) {
                return java.lang.Long.parseLong(descriptor.value);
            }
        }
        return -1L;
    }

    public static long parseLong(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, long j) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : java.lang.Long.parseLong(attributeValue);
    }

    public static int parseMpegChannelConfiguration(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        int i = parseInt(xmlPullParser, "value", -1);
        if (i < 0) {
            return -1;
        }
        int[] iArr = MPEG_CHANNEL_CONFIGURATION_MAPPING;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public static java.lang.String parseString(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, java.lang.String str2) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    public static java.lang.String parseText(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return text;
    }

    public com.google.android.exoplayer2.source.dash.manifest.AdaptationSet buildAdaptationSet(int i, int i2, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list3, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list4) {
        return new com.google.android.exoplayer2.source.dash.manifest.AdaptationSet(i, i2, list, list2, list3, list4);
    }

    public com.google.android.exoplayer2.metadata.emsg.EventMessage buildEvent(java.lang.String str, java.lang.String str2, long j, long j2, byte[] bArr) {
        return new com.google.android.exoplayer2.metadata.emsg.EventMessage(str, str2, j2, j, bArr);
    }

    public com.google.android.exoplayer2.source.dash.manifest.EventStream buildEventStream(java.lang.String str, java.lang.String str2, long j, long[] jArr, com.google.android.exoplayer2.metadata.emsg.EventMessage[] eventMessageArr) {
        return new com.google.android.exoplayer2.source.dash.manifest.EventStream(str, str2, j, jArr, eventMessageArr);
    }

    public com.google.android.exoplayer2.Format buildFormat(java.lang.String str, java.lang.String str2, int i, int i2, float f2, int i3, int i4, int i5, java.lang.String str3, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2, java.lang.String str4, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list3, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list4) {
        java.lang.String str5 = str4;
        java.lang.String sampleMimeType = getSampleMimeType(str2, str5);
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3.equals(sampleMimeType)) {
            sampleMimeType = parseEac3SupplementalProperties(list4);
            if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC.equals(sampleMimeType)) {
                str5 = com.google.android.exoplayer2.util.MimeTypes.CODEC_E_AC3_JOC;
            }
        }
        int selectionFlagsFromRoleDescriptors = parseSelectionFlagsFromRoleDescriptors(list);
        com.google.android.exoplayer2.Format.Builder language = new com.google.android.exoplayer2.Format.Builder().setId(str).setContainerMimeType(str2).setSampleMimeType(sampleMimeType).setCodecs(str5).setPeakBitrate(i5).setSelectionFlags(selectionFlagsFromRoleDescriptors).setRoleFlags(parseRoleFlagsFromRoleDescriptors(list) | parseRoleFlagsFromAccessibilityDescriptors(list2) | parseRoleFlagsFromProperties(list3) | parseRoleFlagsFromProperties(list4)).setLanguage(str3);
        if (com.google.android.exoplayer2.util.MimeTypes.isVideo(sampleMimeType)) {
            language.setWidth(i).setHeight(i2).setFrameRate(f2);
        } else if (com.google.android.exoplayer2.util.MimeTypes.isAudio(sampleMimeType)) {
            language.setChannelCount(i3).setSampleRate(i4);
        } else if (com.google.android.exoplayer2.util.MimeTypes.isText(sampleMimeType)) {
            int cea708AccessibilityChannel = -1;
            if (com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608.equals(sampleMimeType)) {
                cea708AccessibilityChannel = parseCea608AccessibilityChannel(list2);
            } else if (com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA708.equals(sampleMimeType)) {
                cea708AccessibilityChannel = parseCea708AccessibilityChannel(list2);
            }
            language.setAccessibilityChannel(cea708AccessibilityChannel);
        } else if (com.google.android.exoplayer2.util.MimeTypes.isImage(sampleMimeType)) {
            language.setWidth(i).setHeight(i2);
        }
        return language.build();
    }

    public com.google.android.exoplayer2.source.dash.manifest.DashManifest buildMediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, com.google.android.exoplayer2.source.dash.manifest.ProgramInformation programInformation, com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTimingElement, com.google.android.exoplayer2.source.dash.manifest.ServiceDescriptionElement serviceDescriptionElement, android.net.Uri uri, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Period> list) {
        return new com.google.android.exoplayer2.source.dash.manifest.DashManifest(j, j2, j3, z, j4, j5, j6, j7, programInformation, utcTimingElement, serviceDescriptionElement, uri, list);
    }

    public com.google.android.exoplayer2.source.dash.manifest.Period buildPeriod(java.lang.String str, long j, java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, java.util.List<com.google.android.exoplayer2.source.dash.manifest.EventStream> list2, com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor) {
        return new com.google.android.exoplayer2.source.dash.manifest.Period(str, j, list, list2, descriptor);
    }

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri buildRangedUri(java.lang.String str, long j, long j2) {
        return new com.google.android.exoplayer2.source.dash.manifest.RangedUri(str, j, j2);
    }

    public com.google.android.exoplayer2.source.dash.manifest.Representation buildRepresentation(com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.RepresentationInfo representationInfo, java.lang.String str, java.lang.String str2, java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> arrayList, java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Descriptor> arrayList2) {
        com.google.android.exoplayer2.Format.Builder builderBuildUpon = representationInfo.format.buildUpon();
        if (str != null) {
            builderBuildUpon.setLabel(str);
        }
        java.lang.String str3 = representationInfo.drmSchemeType;
        if (str3 != null) {
            str2 = str3;
        }
        java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> arrayList3 = representationInfo.drmSchemeDatas;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            filterRedundantIncompleteSchemeDatas(arrayList3);
            builderBuildUpon.setDrmInitData(new com.google.android.exoplayer2.drm.DrmInitData(str2, arrayList3));
        }
        java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Descriptor> arrayList4 = representationInfo.inbandEventStreams;
        arrayList4.addAll(arrayList2);
        return com.google.android.exoplayer2.source.dash.manifest.Representation.newInstance(representationInfo.revisionId, builderBuildUpon.build(), representationInfo.baseUrls, representationInfo.segmentBase, arrayList4);
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentList buildSegmentList(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4, java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j5, java.util.List<com.google.android.exoplayer2.source.dash.manifest.RangedUri> list2, long j6, long j7) {
        return new com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentList(rangedUri, j, j2, j3, j4, list, j5, list2, com.google.android.exoplayer2.util.Util.msToUs(j6), com.google.android.exoplayer2.util.Util.msToUs(j7));
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTemplate buildSegmentTemplate(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4, long j5, java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j6, com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate, com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate2, long j7, long j8) {
        return new com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTemplate(rangedUri, j, j2, j3, j4, j5, list, j6, urlTemplate, urlTemplate2, com.google.android.exoplayer2.util.Util.msToUs(j7), com.google.android.exoplayer2.util.Util.msToUs(j8));
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long j, long j2) {
        return new com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement(j, j2);
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase buildSingleSegmentBase(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4) {
        return new com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase(rangedUri, j, j2, j3, j4);
    }

    public com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement buildUtcTimingElement(java.lang.String str, java.lang.String str2) {
        return new com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement(str, str2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest parse(android.net.Uri uri, java.io.InputStream inputStream) throws org.xmlpull.v1.XmlPullParserException, com.google.android.exoplayer2.ParserException {
        try {
            org.xmlpull.v1.XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return parseMediaPresentationDescription(xmlPullParserNewPullParser, new com.google.android.exoplayer2.source.dash.manifest.BaseUrl(uri.toString()));
            }
            throw com.google.android.exoplayer2.ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
        } catch (org.xmlpull.v1.XmlPullParserException e2) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0319 A[LOOP:0: B:3:0x007c->B:74:0x0319, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02da A[EDGE_INSN: B:75:0x02da->B:68:0x02da BREAK  A[LOOP:0: B:3:0x007c->B:74:0x0319], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.source.dash.manifest.AdaptationSet parseAdaptationSet(org.xmlpull.v1.XmlPullParser r54, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> r55, com.google.android.exoplayer2.source.dash.manifest.SegmentBase r56, long r57, long r59, long r61, long r63, long r65) throws org.xmlpull.v1.XmlPullParserException, java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseAdaptationSet(org.xmlpull.v1.XmlPullParser, java.util.List, com.google.android.exoplayer2.source.dash.manifest.SegmentBase, long, long, long, long, long):com.google.android.exoplayer2.source.dash.manifest.AdaptationSet");
    }

    public void parseAdaptationSetChild(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        maybeSkipTag(xmlPullParser);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseAudioChannelConfiguration(org.xmlpull.v1.XmlPullParser r7) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "schemeIdUri"
            r1 = 0
            java.lang.String r0 = parseString(r7, r0, r1)
            int r1 = r0.hashCode()
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = -1
            switch(r1) {
                case -1352850286: goto L31;
                case -1138141449: goto L27;
                case -986633423: goto L1d;
                case 2036691300: goto L13;
                default: goto L12;
            }
        L12:
            goto L3b
        L13:
            java.lang.String r1 = "urn:dolby:dash:audio_channel_configuration:2011"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3b
            r0 = 3
            goto L3c
        L1d:
            java.lang.String r1 = "urn:mpeg:mpegB:cicp:ChannelConfiguration"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3b
            r0 = 1
            goto L3c
        L27:
            java.lang.String r1 = "tag:dolby.com,2014:dash:audio_channel_configuration:2011"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3b
            r0 = 2
            goto L3c
        L31:
            java.lang.String r1 = "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3b
            r0 = 0
            goto L3c
        L3b:
            r0 = -1
        L3c:
            if (r0 == 0) goto L4f
            if (r0 == r4) goto L4a
            if (r0 == r3) goto L45
            if (r0 == r2) goto L45
            goto L55
        L45:
            int r5 = parseDolbyChannelConfiguration(r7)
            goto L55
        L4a:
            int r5 = parseMpegChannelConfiguration(r7)
            goto L55
        L4f:
            java.lang.String r0 = "value"
            int r5 = parseInt(r7, r0, r5)
        L55:
            r7.next()
            java.lang.String r0 = "AudioChannelConfiguration"
            boolean r0 = com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(r7, r0)
            if (r0 == 0) goto L55
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseAudioChannelConfiguration(org.xmlpull.v1.XmlPullParser):int");
    }

    public long parseAvailabilityTimeOffsetUs(org.xmlpull.v1.XmlPullParser xmlPullParser, long j) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (java.lang.Float.parseFloat(attributeValue) * 1000000.0f);
    }

    public java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> parseBaseUrl(org.xmlpull.v1.XmlPullParser xmlPullParser, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i = attributeValue != null ? java.lang.Integer.parseInt(attributeValue) : 1;
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i2 = attributeValue2 != null ? java.lang.Integer.parseInt(attributeValue2) : 1;
        java.lang.String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        java.lang.String text = parseText(xmlPullParser, "BaseURL");
        if (attributeValue3 == null) {
            attributeValue3 = text;
        }
        if (com.google.android.exoplayer2.util.UriUtil.isAbsolute(text)) {
            return e.c.b.b.j.d(new com.google.android.exoplayer2.source.dash.manifest.BaseUrl(text, attributeValue3, i, i2));
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl = list.get(i3);
            arrayList.add(new com.google.android.exoplayer2.source.dash.manifest.BaseUrl(com.google.android.exoplayer2.util.UriUtil.resolve(baseUrl.url, text), baseUrl.serviceLocation, baseUrl.priority, baseUrl.weight));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [byte[]] */
    public android.util.Pair<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData.SchemeData> parseContentProtection(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.util.UUID uuid;
        java.lang.String str;
        java.lang.String attributeValue;
        ?? BuildPsshAtom;
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue2 != null) {
            java.lang.String strB0 = d.s.y.b0(attributeValue2);
            char c2 = 65535;
            int iHashCode = strB0.hashCode();
            if (iHashCode != 489446379) {
                if (iHashCode != 755418770) {
                    if (iHashCode == 1812765994 && strB0.equals("urn:mpeg:dash:mp4protection:2011")) {
                        c2 = 0;
                    }
                } else if (strB0.equals(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.KEYFORMAT_WIDEVINE_PSSH_BINARY)) {
                    c2 = 2;
                }
            } else if (strB0.equals("urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95")) {
                c2 = 1;
            }
            if (c2 != 0) {
                if (c2 != 1) {
                    if (c2 == 2) {
                        uuid = com.google.android.exoplayer2.C.WIDEVINE_UUID;
                    }
                    uuid = null;
                    str = null;
                    java.lang.String str2 = str;
                    attributeValue = str2;
                    BuildPsshAtom = str2;
                } else {
                    uuid = com.google.android.exoplayer2.C.PLAYREADY_UUID;
                }
                str = null;
                java.lang.String str22 = str;
                attributeValue = str22;
                BuildPsshAtom = str22;
            } else {
                java.lang.String attributeValue3 = xmlPullParser.getAttributeValue(null, "value");
                java.lang.String attributeValueIgnorePrefix = com.google.android.exoplayer2.util.XmlPullParserUtil.getAttributeValueIgnorePrefix(xmlPullParser, "default_KID");
                if (android.text.TextUtils.isEmpty(attributeValueIgnorePrefix) || "00000000-0000-0000-0000-000000000000".equals(attributeValueIgnorePrefix)) {
                    BuildPsshAtom = 0;
                    attributeValue = null;
                    str = attributeValue3;
                    uuid = null;
                } else {
                    java.lang.String[] strArrSplit = attributeValueIgnorePrefix.split("\\s+");
                    java.util.UUID[] uuidArr = new java.util.UUID[strArrSplit.length];
                    for (int i = 0; i < strArrSplit.length; i++) {
                        uuidArr[i] = java.util.UUID.fromString(strArrSplit[i]);
                    }
                    byte[] bArrBuildPsshAtom = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.buildPsshAtom(com.google.android.exoplayer2.C.COMMON_PSSH_UUID, uuidArr, null);
                    attributeValue = null;
                    str = attributeValue3;
                    uuid = com.google.android.exoplayer2.C.COMMON_PSSH_UUID;
                    BuildPsshAtom = bArrBuildPsshAtom;
                }
            }
        } else {
            uuid = null;
            str = null;
            java.lang.String str222 = str;
            attributeValue = str222;
            BuildPsshAtom = str222;
        }
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "ms:laurl")) {
                attributeValue = xmlPullParser.getAttributeValue(null, "licenseUrl");
                BuildPsshAtom = BuildPsshAtom;
            } else if (BuildPsshAtom == 0 && com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTagIgnorePrefix(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = android.util.Base64.decode(xmlPullParser.getText(), 0);
                java.util.UUID uuid2 = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.parseUuid(bArrDecode);
                if (uuid2 == null) {
                    com.google.android.exoplayer2.util.Log.w(TAG, "Skipping malformed cenc:pssh data");
                    uuid = uuid2;
                    BuildPsshAtom = 0;
                } else {
                    BuildPsshAtom = bArrDecode;
                    uuid = uuid2;
                }
            } else if (BuildPsshAtom == 0 && com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(uuid) && com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                BuildPsshAtom = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.buildPsshAtom(com.google.android.exoplayer2.C.PLAYREADY_UUID, android.util.Base64.decode(xmlPullParser.getText(), 0));
            } else {
                maybeSkipTag(xmlPullParser);
                BuildPsshAtom = BuildPsshAtom;
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "ContentProtection"));
        return android.util.Pair.create(str, uuid != null ? new com.google.android.exoplayer2.drm.DrmInitData.SchemeData(uuid, attributeValue, com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4, BuildPsshAtom) : null);
    }

    public int parseContentType(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (android.text.TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        return "text".equals(attributeValue) ? 3 : -1;
    }

    public android.util.Pair<java.lang.Long, com.google.android.exoplayer2.metadata.emsg.EventMessage> parseEvent(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, java.lang.String str2, long j, java.io.ByteArrayOutputStream byteArrayOutputStream) throws org.xmlpull.v1.XmlPullParserException, java.lang.IllegalStateException, java.io.IOException, java.lang.IllegalArgumentException {
        long j2 = parseLong(xmlPullParser, "id", 0L);
        long j3 = parseLong(xmlPullParser, "duration", com.google.android.exoplayer2.C.TIME_UNSET);
        long j4 = parseLong(xmlPullParser, "presentationTime", 0L);
        long jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j3, 1000L, j);
        long jScaleLargeTimestamp2 = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j4, 1000000L, j);
        java.lang.String string = parseString(xmlPullParser, "messageData", null);
        byte[] eventObject = parseEventObject(xmlPullParser, byteArrayOutputStream);
        java.lang.Long lValueOf = java.lang.Long.valueOf(jScaleLargeTimestamp2);
        if (string != null) {
            eventObject = com.google.android.exoplayer2.util.Util.getUtf8Bytes(string);
        }
        return android.util.Pair.create(lValueOf, buildEvent(str, str2, j2, jScaleLargeTimestamp, eventObject));
    }

    public byte[] parseEventObject(org.xmlpull.v1.XmlPullParser xmlPullParser, java.io.ByteArrayOutputStream byteArrayOutputStream) throws org.xmlpull.v1.XmlPullParserException, java.lang.IllegalStateException, java.io.IOException, java.lang.IllegalArgumentException {
        byteArrayOutputStream.reset();
        org.xmlpull.v1.XmlSerializer xmlSerializerNewSerializer = android.util.Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, e.c.b.a.c.f2667c.name());
        while (true) {
            xmlPullParser.nextToken();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "Event")) {
                xmlSerializerNewSerializer.flush();
                return byteArrayOutputStream.toByteArray();
            }
            switch (xmlPullParser.getEventType()) {
                case 0:
                    xmlSerializerNewSerializer.startDocument(null, java.lang.Boolean.FALSE);
                    break;
                case 1:
                    xmlSerializerNewSerializer.endDocument();
                    break;
                case 2:
                    xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                        xmlSerializerNewSerializer.attribute(xmlPullParser.getAttributeNamespace(i), xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
                    }
                    break;
                case 3:
                    xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    xmlSerializerNewSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
        }
    }

    public com.google.android.exoplayer2.source.dash.manifest.EventStream parseEventStream(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String string = parseString(xmlPullParser, "schemeIdUri", "");
        java.lang.String string2 = parseString(xmlPullParser, "value", "");
        long j = parseLong(xmlPullParser, "timescale", 1L);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(512);
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Event")) {
                arrayList.add(parseEvent(xmlPullParser, string, string2, j, byteArrayOutputStream));
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "EventStream"));
        long[] jArr = new long[arrayList.size()];
        com.google.android.exoplayer2.metadata.emsg.EventMessage[] eventMessageArr = new com.google.android.exoplayer2.metadata.emsg.EventMessage[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            android.util.Pair pair = (android.util.Pair) arrayList.get(i);
            jArr[i] = ((java.lang.Long) pair.first).longValue();
            eventMessageArr[i] = (com.google.android.exoplayer2.metadata.emsg.EventMessage) pair.second;
        }
        return buildEventStream(string, string2, j, jArr, eventMessageArr);
    }

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri parseInitialization(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "sourceURL", "range");
    }

    public java.lang.String parseLabel(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        return parseText(xmlPullParser, "Label");
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x01b9 A[LOOP:0: B:20:0x0082->B:76:0x01b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0175 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser r44, com.google.android.exoplayer2.source.dash.manifest.BaseUrl r45) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.source.dash.manifest.BaseUrl):com.google.android.exoplayer2.source.dash.manifest.DashManifest");
    }

    public android.util.Pair<com.google.android.exoplayer2.source.dash.manifest.Period, java.lang.Long> parsePeriod(org.xmlpull.v1.XmlPullParser xmlPullParser, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, long j, long j2, long j3, long j4) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException, java.lang.NumberFormatException {
        long j5;
        java.util.ArrayList arrayList;
        java.util.ArrayList arrayList2;
        java.util.ArrayList arrayList3;
        java.lang.Object obj;
        long j6;
        com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentTemplate;
        com.google.android.exoplayer2.source.dash.manifest.DashManifestParser dashManifestParser = this;
        java.lang.Object obj2 = null;
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long duration = parseDuration(xmlPullParser, com.google.android.exoplayer2.text.ttml.TtmlNode.START, j);
        long j7 = com.google.android.exoplayer2.C.TIME_UNSET;
        long j8 = j3 != com.google.android.exoplayer2.C.TIME_UNSET ? j3 + duration : -9223372036854775807L;
        long duration2 = parseDuration(xmlPullParser, "duration", com.google.android.exoplayer2.C.TIME_UNSET);
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        java.util.ArrayList arrayList5 = new java.util.ArrayList();
        java.util.ArrayList arrayList6 = new java.util.ArrayList();
        long availabilityTimeOffsetUs = j2;
        long j9 = -9223372036854775807L;
        com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase = null;
        com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = null;
        boolean z = false;
        while (true) {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z) {
                    availabilityTimeOffsetUs = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser, availabilityTimeOffsetUs);
                    z = true;
                }
                arrayList6.addAll(parseBaseUrl(xmlPullParser, list));
                arrayList3 = arrayList5;
                arrayList = arrayList6;
                j6 = j7;
                obj = obj2;
                arrayList2 = arrayList4;
            } else {
                if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "AdaptationSet")) {
                    j5 = availabilityTimeOffsetUs;
                    arrayList = arrayList6;
                    arrayList2 = arrayList4;
                    arrayList2.add(parseAdaptationSet(xmlPullParser, !arrayList6.isEmpty() ? arrayList6 : list, segmentBase, duration2, availabilityTimeOffsetUs, j9, j8, j4));
                    arrayList3 = arrayList5;
                } else {
                    j5 = availabilityTimeOffsetUs;
                    java.util.ArrayList arrayList7 = arrayList5;
                    arrayList = arrayList6;
                    arrayList2 = arrayList4;
                    if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "EventStream")) {
                        arrayList7.add(parseEventStream(xmlPullParser));
                        arrayList3 = arrayList7;
                    } else {
                        arrayList3 = arrayList7;
                        if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                            segmentBase = parseSegmentBase(xmlPullParser, null);
                            obj = null;
                            availabilityTimeOffsetUs = j5;
                            j6 = com.google.android.exoplayer2.C.TIME_UNSET;
                        } else {
                            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                                long availabilityTimeOffsetUs2 = parseAvailabilityTimeOffsetUs(xmlPullParser, com.google.android.exoplayer2.C.TIME_UNSET);
                                obj = null;
                                segmentTemplate = parseSegmentList(xmlPullParser, null, j8, duration2, j5, availabilityTimeOffsetUs2, j4);
                                j9 = availabilityTimeOffsetUs2;
                                availabilityTimeOffsetUs = j5;
                                j6 = com.google.android.exoplayer2.C.TIME_UNSET;
                            } else {
                                obj = null;
                                if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                                    long availabilityTimeOffsetUs3 = parseAvailabilityTimeOffsetUs(xmlPullParser, com.google.android.exoplayer2.C.TIME_UNSET);
                                    j6 = -9223372036854775807L;
                                    segmentTemplate = parseSegmentTemplate(xmlPullParser, null, e.c.b.b.s.p(), j8, duration2, j5, availabilityTimeOffsetUs3, j4);
                                    j9 = availabilityTimeOffsetUs3;
                                    availabilityTimeOffsetUs = j5;
                                } else {
                                    j6 = com.google.android.exoplayer2.C.TIME_UNSET;
                                    if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "AssetIdentifier")) {
                                        descriptor = parseDescriptor(xmlPullParser, "AssetIdentifier");
                                    } else {
                                        maybeSkipTag(xmlPullParser);
                                    }
                                    availabilityTimeOffsetUs = j5;
                                }
                            }
                            segmentBase = segmentTemplate;
                        }
                    }
                }
                obj = null;
                j6 = com.google.android.exoplayer2.C.TIME_UNSET;
                availabilityTimeOffsetUs = j5;
            }
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "Period")) {
                return android.util.Pair.create(buildPeriod(attributeValue, duration, arrayList2, arrayList3, descriptor), java.lang.Long.valueOf(duration2));
            }
            arrayList4 = arrayList2;
            arrayList6 = arrayList;
            obj2 = obj;
            arrayList5 = arrayList3;
            j7 = j6;
            dashManifestParser = this;
        }
    }

    public com.google.android.exoplayer2.source.dash.manifest.ProgramInformation parseProgramInformation(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.lang.String strNextText = null;
        java.lang.String string = parseString(xmlPullParser, "moreInformationURL", null);
        java.lang.String string2 = parseString(xmlPullParser, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_LANG, null);
        java.lang.String strNextText2 = null;
        java.lang.String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Source")) {
                strNextText2 = xmlPullParser.nextText();
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Copyright")) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
            java.lang.String str = strNextText3;
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "ProgramInformation")) {
                return new com.google.android.exoplayer2.source.dash.manifest.ProgramInformation(strNextText, strNextText2, str, string, string2);
            }
            strNextText3 = str;
        }
    }

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri parseRangedUrl(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, java.lang.String str2) throws java.lang.NumberFormatException {
        long j;
        long j2;
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            java.lang.String[] strArrSplit = attributeValue2.split("-");
            j = java.lang.Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j2 = (java.lang.Long.parseLong(strArrSplit[1]) - j) + 1;
            }
            return buildRangedUri(attributeValue, j, j2);
        }
        j = 0;
        j2 = -1;
        return buildRangedUri(attributeValue, j, j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01e2 A[LOOP:0: B:3:0x006a->B:57:0x01e2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0190 A[EDGE_INSN: B:58:0x0190->B:47:0x0190 BREAK  A[LOOP:0: B:3:0x006a->B:57:0x01e2], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.RepresentationInfo parseRepresentation(org.xmlpull.v1.XmlPullParser r36, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> r37, java.lang.String r38, java.lang.String r39, int r40, int r41, float r42, int r43, int r44, java.lang.String r45, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r46, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r47, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r48, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r49, com.google.android.exoplayer2.source.dash.manifest.SegmentBase r50, long r51, long r53, long r55, long r57, long r59) throws org.xmlpull.v1.XmlPullParserException, java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseRepresentation(org.xmlpull.v1.XmlPullParser, java.util.List, java.lang.String, java.lang.String, int, int, float, int, int, java.lang.String, java.util.List, java.util.List, java.util.List, java.util.List, com.google.android.exoplayer2.source.dash.manifest.SegmentBase, long, long, long, long, long):com.google.android.exoplayer2.source.dash.manifest.DashManifestParser$RepresentationInfo");
    }

    public int parseRoleFlagsFromAccessibilityDescriptors(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        int tvaAudioPurposeCsValue;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i2);
            if (d.s.y.x("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                tvaAudioPurposeCsValue = parseRoleFlagsFromDashRoleScheme(descriptor.value);
            } else if (d.s.y.x("urn:tva:metadata:cs:AudioPurposeCS:2007", descriptor.schemeIdUri)) {
                tvaAudioPurposeCsValue = parseTvaAudioPurposeCsValue(descriptor.value);
            }
            i |= tvaAudioPurposeCsValue;
        }
        return i;
    }

    public int parseRoleFlagsFromDashRoleScheme(java.lang.String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
        }
        return 0;
    }

    public int parseRoleFlagsFromProperties(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (d.s.y.x("http://dashif.org/guidelines/trickmode", list.get(i2).schemeIdUri)) {
                i |= 16384;
            }
        }
        return i;
    }

    public int parseRoleFlagsFromRoleDescriptors(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        int roleFlagsFromDashRoleScheme = 0;
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if (d.s.y.x("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                roleFlagsFromDashRoleScheme |= parseRoleFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return roleFlagsFromDashRoleScheme;
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase parseSegmentBase(org.xmlpull.v1.XmlPullParser xmlPullParser, com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase singleSegmentBase) throws org.xmlpull.v1.XmlPullParserException, java.lang.NumberFormatException, java.io.IOException {
        long j;
        long j2;
        long j3 = parseLong(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1L);
        long j4 = parseLong(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0L);
        long j5 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0L;
        long j6 = singleSegmentBase != null ? singleSegmentBase.indexLength : 0L;
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            java.lang.String[] strArrSplit = attributeValue.split("-");
            long j7 = java.lang.Long.parseLong(strArrSplit[0]);
            j = (java.lang.Long.parseLong(strArrSplit[1]) - j7) + 1;
            j2 = j7;
        } else {
            j = j6;
            j2 = j5;
        }
        com.google.android.exoplayer2.source.dash.manifest.RangedUri initialization = singleSegmentBase != null ? singleSegmentBase.initialization : null;
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentBase"));
        return buildSingleSegmentBase(initialization, j3, j4, j2, j);
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentList parseSegmentList(org.xmlpull.v1.XmlPullParser xmlPullParser, com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentList segmentList, long j, long j2, long j3, long j4, long j5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        long j6 = parseLong(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1L);
        long j7 = parseLong(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0L);
        long j8 = parseLong(xmlPullParser, "duration", segmentList != null ? segmentList.duration : com.google.android.exoplayer2.C.TIME_UNSET);
        long j9 = parseLong(xmlPullParser, "startNumber", segmentList != null ? segmentList.startNumber : 1L);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.RangedUri> arrayList = null;
        com.google.android.exoplayer2.source.dash.manifest.RangedUri initialization = null;
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                segmentTimeline = parseSegmentTimeline(xmlPullParser, j6, j2);
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList<>();
                }
                arrayList.add(parseSegmentUrl(xmlPullParser));
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentList"));
        if (segmentList != null) {
            if (initialization == null) {
                initialization = segmentList.initialization;
            }
            if (segmentTimeline == null) {
                segmentTimeline = segmentList.segmentTimeline;
            }
            if (arrayList == null) {
                arrayList = segmentList.mediaSegments;
            }
        }
        return buildSegmentList(initialization, j6, j7, j9, j8, segmentTimeline, finalAvailabilityTimeOffset, arrayList, j5, j);
    }

    public com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTemplate parseSegmentTemplate(org.xmlpull.v1.XmlPullParser xmlPullParser, com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTemplate segmentTemplate, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list, long j, long j2, long j3, long j4, long j5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        long j6 = parseLong(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1L);
        long j7 = parseLong(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0L);
        long j8 = parseLong(xmlPullParser, "duration", segmentTemplate != null ? segmentTemplate.duration : com.google.android.exoplayer2.C.TIME_UNSET);
        long j9 = parseLong(xmlPullParser, "startNumber", segmentTemplate != null ? segmentTemplate.startNumber : 1L);
        long lastSegmentNumberSupplementalProperty = parseLastSegmentNumberSupplementalProperty(list);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate = parseUrlTemplate(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate2 = parseUrlTemplate(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        com.google.android.exoplayer2.source.dash.manifest.RangedUri initialization = null;
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                segmentTimeline = parseSegmentTimeline(xmlPullParser, j6, j2);
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTemplate"));
        if (segmentTemplate != null) {
            if (initialization == null) {
                initialization = segmentTemplate.initialization;
            }
            if (segmentTimeline == null) {
                segmentTimeline = segmentTemplate.segmentTimeline;
            }
        }
        return buildSegmentTemplate(initialization, j6, j7, j9, lastSegmentNumberSupplementalProperty, j8, segmentTimeline, finalAvailabilityTimeOffset, urlTemplate2, urlTemplate, j5, j);
    }

    public java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> parseSegmentTimeline(org.xmlpull.v1.XmlPullParser xmlPullParser, long j, long j2) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        long jAddSegmentTimelineElementsToList = 0;
        long j3 = -9223372036854775807L;
        boolean z = false;
        int i = 0;
        do {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "S")) {
                long j4 = parseLong(xmlPullParser, "t", com.google.android.exoplayer2.C.TIME_UNSET);
                if (z) {
                    jAddSegmentTimelineElementsToList = addSegmentTimelineElementsToList(arrayList, jAddSegmentTimelineElementsToList, j3, i, j4);
                }
                if (j4 == com.google.android.exoplayer2.C.TIME_UNSET) {
                    j4 = jAddSegmentTimelineElementsToList;
                }
                j3 = parseLong(xmlPullParser, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION, com.google.android.exoplayer2.C.TIME_UNSET);
                i = parseInt(xmlPullParser, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, 0);
                jAddSegmentTimelineElementsToList = j4;
                z = true;
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTimeline"));
        if (z) {
            addSegmentTimelineElementsToList(arrayList, jAddSegmentTimelineElementsToList, j3, i, com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j2, j, 1000L));
        }
        return arrayList;
    }

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri parseSegmentUrl(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "media", "mediaRange");
    }

    public int parseSelectionFlagsFromDashRoleScheme(java.lang.String str) {
        if (str == null) {
            return 0;
        }
        char c2 = 65535;
        int iHashCode = str.hashCode();
        if (iHashCode != -1574842690) {
            if (iHashCode == 3343801 && str.equals("main")) {
                c2 = 0;
            }
        } else if (str.equals("forced_subtitle")) {
            c2 = 1;
        }
        if (c2 != 0) {
            return c2 != 1 ? 0 : 2;
        }
        return 1;
    }

    public int parseSelectionFlagsFromRoleDescriptors(java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list) {
        int selectionFlagsFromDashRoleScheme = 0;
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Descriptor descriptor = list.get(i);
            if (d.s.y.x("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                selectionFlagsFromDashRoleScheme |= parseSelectionFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return selectionFlagsFromDashRoleScheme;
    }

    public com.google.android.exoplayer2.source.dash.manifest.ServiceDescriptionElement parseServiceDescription(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        long j = -9223372036854775807L;
        long j2 = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        float f2 = -3.4028235E38f;
        float f3 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "Latency")) {
                j = parseLong(xmlPullParser, "target", com.google.android.exoplayer2.C.TIME_UNSET);
                j2 = parseLong(xmlPullParser, "min", com.google.android.exoplayer2.C.TIME_UNSET);
                j3 = parseLong(xmlPullParser, "max", com.google.android.exoplayer2.C.TIME_UNSET);
            } else if (com.google.android.exoplayer2.util.XmlPullParserUtil.isStartTag(xmlPullParser, "PlaybackRate")) {
                f2 = parseFloat(xmlPullParser, "min", -3.4028235E38f);
                f3 = parseFloat(xmlPullParser, "max", -3.4028235E38f);
            }
            long j4 = j;
            long j5 = j2;
            long j6 = j3;
            float f4 = f2;
            float f5 = f3;
            if (com.google.android.exoplayer2.util.XmlPullParserUtil.isEndTag(xmlPullParser, "ServiceDescription")) {
                return new com.google.android.exoplayer2.source.dash.manifest.ServiceDescriptionElement(j4, j5, j6, f4, f5);
            }
            j = j4;
            j2 = j5;
            j3 = j6;
            f2 = f4;
            f3 = f5;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int parseTvaAudioPurposeCsValue(java.lang.String str) {
        if (str == null) {
            return 0;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c2 = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c2 = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c2 = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c2 = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals(net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_FOURVOICE_MAB_MODE)) {
                    c2 = 4;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            return 512;
        }
        if (c2 == 1) {
            return 2048;
        }
        if (c2 == 2) {
            return 4;
        }
        if (c2 != 3) {
            return c2 != 4 ? 0 : 1;
        }
        return 8;
    }

    public com.google.android.exoplayer2.source.dash.manifest.UrlTemplate parseUrlTemplate(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate) {
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? com.google.android.exoplayer2.source.dash.manifest.UrlTemplate.compile(attributeValue) : urlTemplate;
    }

    public com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement parseUtcTiming(org.xmlpull.v1.XmlPullParser xmlPullParser) {
        return buildUtcTimingElement(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }
}
