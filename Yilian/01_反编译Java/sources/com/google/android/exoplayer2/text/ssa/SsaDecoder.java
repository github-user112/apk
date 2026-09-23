package com.google.android.exoplayer2.text.ssa;

/* loaded from: classes.dex */
public final class SsaDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final float DEFAULT_MARGIN = 0.05f;
    public static final java.lang.String DIALOGUE_LINE_PREFIX = "Dialogue:";
    public static final java.lang.String FORMAT_LINE_PREFIX = "Format:";
    public static final java.util.regex.Pattern SSA_TIMECODE_PATTERN = java.util.regex.Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    public static final java.lang.String STYLE_LINE_PREFIX = "Style:";
    public static final java.lang.String TAG = "SsaDecoder";
    public final com.google.android.exoplayer2.text.ssa.SsaDialogueFormat dialogueFormatFromInitializationData;
    public final boolean haveInitializationData;
    public float screenHeight;
    public float screenWidth;
    public java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ssa.SsaStyle> styles;

    public SsaDecoder() {
        this(null);
    }

    public SsaDecoder(java.util.List<byte[]> list) {
        super(TAG);
        this.screenWidth = -3.4028235E38f;
        this.screenHeight = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.haveInitializationData = false;
            this.dialogueFormatFromInitializationData = null;
            return;
        }
        this.haveInitializationData = true;
        java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(list.get(0));
        com.google.android.exoplayer2.util.Assertions.checkArgument(strFromUtf8Bytes.startsWith(FORMAT_LINE_PREFIX));
        this.dialogueFormatFromInitializationData = (com.google.android.exoplayer2.text.ssa.SsaDialogueFormat) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.text.ssa.SsaDialogueFormat.fromFormatLine(strFromUtf8Bytes));
        parseHeader(new com.google.android.exoplayer2.util.ParsableByteArray(list.get(1)));
    }

    public static int addCuePlacerholderByTime(long j, java.util.List<java.lang.Long> list, java.util.List<java.util.List<com.google.android.exoplayer2.text.Cue>> list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (list.get(size).longValue() == j) {
                return size;
            }
            if (list.get(size).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        list.add(i, java.lang.Long.valueOf(j));
        list2.add(i, i == 0 ? new java.util.ArrayList() : new java.util.ArrayList(list2.get(i - 1)));
        return i;
    }

    public static float computeDefaultLineOrPosition(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.Cue createCue(java.lang.String r7, com.google.android.exoplayer2.text.ssa.SsaStyle r8, com.google.android.exoplayer2.text.ssa.SsaStyle.Overrides r9, float r10, float r11) {
        /*
            android.text.SpannableString r0 = new android.text.SpannableString
            r0.<init>(r7)
            com.google.android.exoplayer2.text.Cue$Builder r7 = new com.google.android.exoplayer2.text.Cue$Builder
            r7.<init>()
            com.google.android.exoplayer2.text.Cue$Builder r7 = r7.setText(r0)
            r1 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            r2 = 0
            if (r8 == 0) goto L86
            java.lang.Integer r3 = r8.primaryColor
            r4 = 33
            if (r3 == 0) goto L2c
            android.text.style.ForegroundColorSpan r3 = new android.text.style.ForegroundColorSpan
            java.lang.Integer r5 = r8.primaryColor
            int r5 = r5.intValue()
            r3.<init>(r5)
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L2c:
            float r3 = r8.fontSize
            r5 = 1
            int r6 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r6 == 0) goto L3b
            int r6 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r6 == 0) goto L3b
            float r3 = r3 / r11
            r7.setTextSize(r3, r5)
        L3b:
            boolean r3 = r8.bold
            if (r3 == 0) goto L4a
            boolean r3 = r8.italic
            if (r3 == 0) goto L4a
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r5 = 3
            r3.<init>(r5)
            goto L53
        L4a:
            boolean r3 = r8.bold
            if (r3 == 0) goto L5b
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r3.<init>(r5)
        L53:
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
            goto L66
        L5b:
            boolean r3 = r8.italic
            if (r3 == 0) goto L66
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r5 = 2
            r3.<init>(r5)
            goto L53
        L66:
            boolean r3 = r8.underline
            if (r3 == 0) goto L76
            android.text.style.UnderlineSpan r3 = new android.text.style.UnderlineSpan
            r3.<init>()
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L76:
            boolean r3 = r8.strikeout
            if (r3 == 0) goto L86
            android.text.style.StrikethroughSpan r3 = new android.text.style.StrikethroughSpan
            r3.<init>()
            int r5 = r0.length()
            r0.setSpan(r3, r2, r5, r4)
        L86:
            int r0 = r9.alignment
            r3 = -1
            if (r0 == r3) goto L8c
            goto L92
        L8c:
            if (r8 == 0) goto L91
            int r0 = r8.alignment
            goto L92
        L91:
            r0 = -1
        L92:
            android.text.Layout$Alignment r8 = toTextAlignment(r0)
            com.google.android.exoplayer2.text.Cue$Builder r8 = r7.setTextAlignment(r8)
            int r3 = toPositionAnchor(r0)
            com.google.android.exoplayer2.text.Cue$Builder r8 = r8.setPositionAnchor(r3)
            int r0 = toLineAnchor(r0)
            r8.setLineAnchor(r0)
            android.graphics.PointF r8 = r9.position
            if (r8 == 0) goto Lc1
            int r0 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r0 == 0) goto Lc1
            int r0 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r0 == 0) goto Lc1
            float r8 = r8.x
            float r8 = r8 / r10
            r7.setPosition(r8)
            android.graphics.PointF r8 = r9.position
            float r8 = r8.y
            float r8 = r8 / r11
            goto Ld4
        Lc1:
            int r8 = r7.getPositionAnchor()
            float r8 = computeDefaultLineOrPosition(r8)
            r7.setPosition(r8)
            int r8 = r7.getLineAnchor()
            float r8 = computeDefaultLineOrPosition(r8)
        Ld4:
            r7.setLine(r8, r2)
            com.google.android.exoplayer2.text.Cue r7 = r7.build()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ssa.SsaDecoder.createCue(java.lang.String, com.google.android.exoplayer2.text.ssa.SsaStyle, com.google.android.exoplayer2.text.ssa.SsaStyle$Overrides, float, float):com.google.android.exoplayer2.text.Cue");
    }

    private void parseDialogueLine(java.lang.String str, com.google.android.exoplayer2.text.ssa.SsaDialogueFormat ssaDialogueFormat, java.util.List<java.util.List<com.google.android.exoplayer2.text.Cue>> list, java.util.List<java.lang.Long> list2) {
        int i;
        com.google.android.exoplayer2.util.Assertions.checkArgument(str.startsWith(DIALOGUE_LINE_PREFIX));
        java.lang.String[] strArrSplit = str.substring(9).split(",", ssaDialogueFormat.length);
        if (strArrSplit.length != ssaDialogueFormat.length) {
            com.google.android.exoplayer2.util.Log.w(TAG, str.length() != 0 ? "Skipping dialogue line with fewer columns than format: ".concat(str) : new java.lang.String("Skipping dialogue line with fewer columns than format: "));
            return;
        }
        long timecodeUs = parseTimecodeUs(strArrSplit[ssaDialogueFormat.startTimeIndex]);
        if (timecodeUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.util.Log.w(TAG, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new java.lang.String("Skipping invalid timing: "));
            return;
        }
        long timecodeUs2 = parseTimecodeUs(strArrSplit[ssaDialogueFormat.endTimeIndex]);
        if (timecodeUs2 == com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.util.Log.w(TAG, str.length() != 0 ? "Skipping invalid timing: ".concat(str) : new java.lang.String("Skipping invalid timing: "));
            return;
        }
        java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ssa.SsaStyle> map = this.styles;
        com.google.android.exoplayer2.text.ssa.SsaStyle ssaStyle = (map == null || (i = ssaDialogueFormat.styleIndex) == -1) ? null : map.get(strArrSplit[i].trim());
        java.lang.String str2 = strArrSplit[ssaDialogueFormat.textIndex];
        com.google.android.exoplayer2.text.Cue cueCreateCue = createCue(com.google.android.exoplayer2.text.ssa.SsaStyle.Overrides.stripStyleOverrides(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), ssaStyle, com.google.android.exoplayer2.text.ssa.SsaStyle.Overrides.parseFromDialogue(str2), this.screenWidth, this.screenHeight);
        int iAddCuePlacerholderByTime = addCuePlacerholderByTime(timecodeUs2, list2, list);
        for (int iAddCuePlacerholderByTime2 = addCuePlacerholderByTime(timecodeUs, list2, list); iAddCuePlacerholderByTime2 < iAddCuePlacerholderByTime; iAddCuePlacerholderByTime2++) {
            list.get(iAddCuePlacerholderByTime2).add(cueCreateCue);
        }
    }

    private void parseEventBody(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.util.List<java.util.List<com.google.android.exoplayer2.text.Cue>> list, java.util.List<java.lang.Long> list2) {
        com.google.android.exoplayer2.text.ssa.SsaDialogueFormat ssaDialogueFormatFromFormatLine = this.haveInitializationData ? this.dialogueFormatFromInitializationData : null;
        while (true) {
            java.lang.String line = parsableByteArray.readLine();
            if (line == null) {
                return;
            }
            if (line.startsWith(FORMAT_LINE_PREFIX)) {
                ssaDialogueFormatFromFormatLine = com.google.android.exoplayer2.text.ssa.SsaDialogueFormat.fromFormatLine(line);
            } else if (line.startsWith(DIALOGUE_LINE_PREFIX)) {
                if (ssaDialogueFormatFromFormatLine == null) {
                    com.google.android.exoplayer2.util.Log.w(TAG, line.length() != 0 ? "Skipping dialogue line before complete format: ".concat(line) : new java.lang.String("Skipping dialogue line before complete format: "));
                } else {
                    parseDialogueLine(line, ssaDialogueFormatFromFormatLine, list, list2);
                }
            }
        }
    }

    private void parseHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        while (true) {
            java.lang.String line = parsableByteArray.readLine();
            if (line == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(line)) {
                parseScriptInfo(parsableByteArray);
            } else if ("[V4+ Styles]".equalsIgnoreCase(line)) {
                this.styles = parseStyles(parsableByteArray);
            } else if ("[V4 Styles]".equalsIgnoreCase(line)) {
                com.google.android.exoplayer2.util.Log.i(TAG, "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(line)) {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseScriptInfo(com.google.android.exoplayer2.util.ParsableByteArray r7) {
        /*
            r6 = this;
        L0:
            java.lang.String r0 = r7.readLine()
            if (r0 == 0) goto L69
            int r1 = r7.bytesLeft()
            if (r1 == 0) goto L14
            int r1 = r7.peekUnsignedByte()
            r2 = 91
            if (r1 == r2) goto L69
        L14:
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 == r2) goto L1f
            goto L0
        L1f:
            r1 = 0
            r2 = r0[r1]
            java.lang.String r2 = r2.trim()
            java.lang.String r2 = d.s.y.b0(r2)
            r3 = -1
            int r4 = r2.hashCode()
            r5 = 1
            switch(r4) {
                case 1879649548: goto L3e;
                case 1879649549: goto L34;
                default: goto L33;
            }
        L33:
            goto L47
        L34:
            java.lang.String r1 = "playresy"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L47
            r1 = 1
            goto L48
        L3e:
            java.lang.String r4 = "playresx"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto L47
            goto L48
        L47:
            r1 = -1
        L48:
            if (r1 == 0) goto L5c
            if (r1 == r5) goto L4d
            goto L0
        L4d:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L5a
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L5a
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L5a
            r6.screenHeight = r0     // Catch: java.lang.NumberFormatException -> L5a
            goto L0
        L5a:
            goto L0
        L5c:
            r0 = r0[r5]     // Catch: java.lang.NumberFormatException -> L5a
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L5a
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L5a
            r6.screenWidth = r0     // Catch: java.lang.NumberFormatException -> L5a
            goto L0
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ssa.SsaDecoder.parseScriptInfo(com.google.android.exoplayer2.util.ParsableByteArray):void");
    }

    public static java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ssa.SsaStyle> parseStyles(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        com.google.android.exoplayer2.text.ssa.SsaStyle.Format formatFromFormatLine = null;
        while (true) {
            java.lang.String line = parsableByteArray.readLine();
            if (line == null || (parsableByteArray.bytesLeft() != 0 && parsableByteArray.peekUnsignedByte() == 91)) {
                break;
            }
            if (line.startsWith(FORMAT_LINE_PREFIX)) {
                formatFromFormatLine = com.google.android.exoplayer2.text.ssa.SsaStyle.Format.fromFormatLine(line);
            } else if (line.startsWith(STYLE_LINE_PREFIX)) {
                if (formatFromFormatLine == null) {
                    com.google.android.exoplayer2.util.Log.w(TAG, line.length() != 0 ? "Skipping 'Style:' line before 'Format:' line: ".concat(line) : new java.lang.String("Skipping 'Style:' line before 'Format:' line: "));
                } else {
                    com.google.android.exoplayer2.text.ssa.SsaStyle ssaStyleFromStyleLine = com.google.android.exoplayer2.text.ssa.SsaStyle.fromStyleLine(line, formatFromFormatLine);
                    if (ssaStyleFromStyleLine != null) {
                        linkedHashMap.put(ssaStyleFromStyleLine.name, ssaStyleFromStyleLine);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static long parseTimecodeUs(java.lang.String str) {
        java.util.regex.Matcher matcher = SSA_TIMECODE_PATTERN.matcher(str.trim());
        if (!matcher.matches()) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        return (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(4))) * 10000) + (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(3))) * 1000000) + (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(2))) * 60 * 1000000) + (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(matcher.group(1))) * 60 * 60 * 1000000);
    }

    public static int toLineAnchor(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                e.a.c.a.a.t(30, "Unknown alignment: ", i, TAG);
                break;
            case 1:
            case 2:
            case 3:
                break;
            case 4:
            case 5:
            case 6:
                break;
            case 7:
            case 8:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    public static int toPositionAnchor(int i) {
        switch (i) {
            case -1:
                break;
            case 0:
            default:
                e.a.c.a.a.t(30, "Unknown alignment: ", i, TAG);
                break;
            case 1:
            case 4:
            case 7:
                break;
            case 2:
            case 5:
            case 8:
                break;
            case 3:
            case 6:
            case 9:
                break;
        }
        return Integer.MIN_VALUE;
    }

    public static android.text.Layout.Alignment toTextAlignment(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                e.a.c.a.a.t(30, "Unknown alignment: ", i, TAG);
                return null;
            case 1:
            case 4:
            case 7:
                return android.text.Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return android.text.Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return android.text.Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr, i);
        if (!this.haveInitializationData) {
            parseHeader(parsableByteArray);
        }
        parseEventBody(parsableByteArray, arrayList, arrayList2);
        return new com.google.android.exoplayer2.text.ssa.SsaSubtitle(arrayList, arrayList2);
    }
}
