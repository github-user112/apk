package com.google.android.exoplayer2.text.webvtt;

/* loaded from: classes.dex */
public final class WebvttCueParser {
    public static final char CHAR_AMPERSAND = '&';
    public static final char CHAR_GREATER_THAN = '>';
    public static final char CHAR_LESS_THAN = '<';
    public static final char CHAR_SEMI_COLON = ';';
    public static final char CHAR_SLASH = '/';
    public static final char CHAR_SPACE = ' ';
    public static final java.util.regex.Pattern CUE_HEADER_PATTERN = java.util.regex.Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    public static final java.util.regex.Pattern CUE_SETTING_PATTERN = java.util.regex.Pattern.compile("(\\S+?):(\\S+)");
    public static final java.util.Map<java.lang.String, java.lang.Integer> DEFAULT_BACKGROUND_COLORS;
    public static final float DEFAULT_POSITION = 0.5f;
    public static final java.util.Map<java.lang.String, java.lang.Integer> DEFAULT_TEXT_COLORS;
    public static final java.lang.String ENTITY_AMPERSAND = "amp";
    public static final java.lang.String ENTITY_GREATER_THAN = "gt";
    public static final java.lang.String ENTITY_LESS_THAN = "lt";
    public static final java.lang.String ENTITY_NON_BREAK_SPACE = "nbsp";
    public static final int STYLE_BOLD = 1;
    public static final int STYLE_ITALIC = 2;
    public static final java.lang.String TAG = "WebvttCueParser";
    public static final java.lang.String TAG_BOLD = "b";
    public static final java.lang.String TAG_CLASS = "c";
    public static final java.lang.String TAG_ITALIC = "i";
    public static final java.lang.String TAG_LANG = "lang";
    public static final java.lang.String TAG_RUBY = "ruby";
    public static final java.lang.String TAG_RUBY_TEXT = "rt";
    public static final java.lang.String TAG_UNDERLINE = "u";
    public static final java.lang.String TAG_VOICE = "v";
    public static final int TEXT_ALIGNMENT_CENTER = 2;
    public static final int TEXT_ALIGNMENT_END = 3;
    public static final int TEXT_ALIGNMENT_LEFT = 4;
    public static final int TEXT_ALIGNMENT_RIGHT = 5;
    public static final int TEXT_ALIGNMENT_START = 1;

    public static class Element {
        public static final java.util.Comparator<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element> BY_START_POSITION_ASC = new java.util.Comparator() { // from class: e.c.a.a.o2.c.a
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                return defpackage.a.a(((com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element) obj).startTag.position, ((com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element) obj2).startTag.position);
            }
        };
        public final int endPosition;
        public final com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag;

        public Element(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag, int i) {
            this.startTag = startTag;
            this.endPosition = i;
        }
    }

    public static final class StartTag {
        public final java.util.Set<java.lang.String> classes;
        public final java.lang.String name;
        public final int position;
        public final java.lang.String voice;

        public StartTag(java.lang.String str, int i, java.lang.String str2, java.util.Set<java.lang.String> set) {
            this.position = i;
            this.name = str;
            this.voice = str2;
            this.classes = set;
        }

        public static com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag buildStartTag(java.lang.String str, int i) {
            java.lang.String str2;
            java.lang.String strTrim = str.trim();
            com.google.android.exoplayer2.util.Assertions.checkArgument(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                java.lang.String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(strTrim, "\\.");
            java.lang.String str3 = strArrSplit[0];
            java.util.HashSet hashSet = new java.util.HashSet();
            for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                hashSet.add(strArrSplit[i2]);
            }
            return new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag(str3, i, str2, hashSet);
        }

        public static com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag buildWholeCueVirtualTag() {
            return new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag("", 0, "", java.util.Collections.emptySet());
        }
    }

    public static final class StyleMatch implements java.lang.Comparable<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch> {
        public final int score;
        public final com.google.android.exoplayer2.text.webvtt.WebvttCssStyle style;

        public StyleMatch(int i, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle) {
            this.score = i;
            this.style = webvttCssStyle;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch styleMatch) {
            return defpackage.a.a(this.score, styleMatch.score);
        }
    }

    public static final class WebvttCueInfoBuilder {
        public java.lang.CharSequence text;
        public long startTimeUs = 0;
        public long endTimeUs = 0;
        public int textAlignment = 2;
        public float line = -3.4028235E38f;
        public int lineType = 1;
        public int lineAnchor = 0;
        public float position = -3.4028235E38f;
        public int positionAnchor = Integer.MIN_VALUE;
        public float size = 1.0f;
        public int verticalType = Integer.MIN_VALUE;

        public static float computeLine(float f2, int i) {
            if (f2 == -3.4028235E38f || i != 0 || (f2 >= 0.0f && f2 <= 1.0f)) {
                return f2 != -3.4028235E38f ? f2 : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        public static android.text.Layout.Alignment convertTextAlignment(int i) {
            if (i != 1) {
                if (i == 2) {
                    return android.text.Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            e.a.c.a.a.t(34, "Unknown textAlignment: ", i, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG);
                            return null;
                        }
                    }
                }
                return android.text.Layout.Alignment.ALIGN_OPPOSITE;
            }
            return android.text.Layout.Alignment.ALIGN_NORMAL;
        }

        public static float deriveMaxSize(int i, float f2) {
            if (i == 0) {
                return 1.0f - f2;
            }
            if (i == 1) {
                return f2 <= 0.5f ? f2 * 2.0f : (1.0f - f2) * 2.0f;
            }
            if (i == 2) {
                return f2;
            }
            throw new java.lang.IllegalStateException(java.lang.String.valueOf(i));
        }

        public static float derivePosition(int i) {
            if (i != 4) {
                return i != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        public static int derivePositionAnchor(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        public com.google.android.exoplayer2.text.webvtt.WebvttCueInfo build() {
            return new com.google.android.exoplayer2.text.webvtt.WebvttCueInfo(toCueBuilder().build(), this.startTimeUs, this.endTimeUs);
        }

        public com.google.android.exoplayer2.text.Cue.Builder toCueBuilder() {
            float fDerivePosition = this.position;
            if (fDerivePosition == -3.4028235E38f) {
                fDerivePosition = derivePosition(this.textAlignment);
            }
            int iDerivePositionAnchor = this.positionAnchor;
            if (iDerivePositionAnchor == Integer.MIN_VALUE) {
                iDerivePositionAnchor = derivePositionAnchor(this.textAlignment);
            }
            com.google.android.exoplayer2.text.Cue.Builder verticalType = new com.google.android.exoplayer2.text.Cue.Builder().setTextAlignment(convertTextAlignment(this.textAlignment)).setLine(computeLine(this.line, this.lineType), this.lineType).setLineAnchor(this.lineAnchor).setPosition(fDerivePosition).setPositionAnchor(iDerivePositionAnchor).setSize(java.lang.Math.min(this.size, deriveMaxSize(iDerivePositionAnchor, fDerivePosition))).setVerticalType(this.verticalType);
            java.lang.CharSequence charSequence = this.text;
            if (charSequence != null) {
                verticalType.setText(charSequence);
            }
            return verticalType;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        map.put("white", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 255, 255)));
        map.put("lime", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 255, 0)));
        map.put("cyan", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 255, 255)));
        map.put("red", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 0, 0)));
        map.put("yellow", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 255, 0)));
        map.put("magenta", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 0, 255)));
        map.put("blue", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 0, 255)));
        map.put("black", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 0, 0)));
        DEFAULT_TEXT_COLORS = java.util.Collections.unmodifiableMap(map);
        java.util.HashMap map2 = new java.util.HashMap();
        map2.put("bg_white", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 255, 255)));
        map2.put("bg_lime", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 255, 255)));
        map2.put("bg_red", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", java.lang.Integer.valueOf(android.graphics.Color.rgb(255, 0, 255)));
        map2.put("bg_blue", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 0, 255)));
        map2.put("bg_black", java.lang.Integer.valueOf(android.graphics.Color.rgb(0, 0, 0)));
        DEFAULT_BACKGROUND_COLORS = java.util.Collections.unmodifiableMap(map2);
    }

    public static void applyDefaultColors(android.text.SpannableStringBuilder spannableStringBuilder, java.util.Set<java.lang.String> set, int i, int i2) {
        java.lang.Object foregroundColorSpan;
        for (java.lang.String str : set) {
            if (DEFAULT_TEXT_COLORS.containsKey(str)) {
                foregroundColorSpan = new android.text.style.ForegroundColorSpan(DEFAULT_TEXT_COLORS.get(str).intValue());
            } else if (DEFAULT_BACKGROUND_COLORS.containsKey(str)) {
                foregroundColorSpan = new android.text.style.BackgroundColorSpan(DEFAULT_BACKGROUND_COLORS.get(str).intValue());
            }
            spannableStringBuilder.setSpan(foregroundColorSpan, i, i2, 33);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyEntity(java.lang.String r5, android.text.SpannableStringBuilder r6) {
        /*
            int r0 = r5.hashCode()
            r1 = 3309(0xced, float:4.637E-42)
            r2 = 3
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L38
            r1 = 3464(0xd88, float:4.854E-42)
            if (r0 == r1) goto L2e
            r1 = 96708(0x179c4, float:1.35517E-40)
            if (r0 == r1) goto L24
            r1 = 3374865(0x337f11, float:4.729193E-39)
            if (r0 == r1) goto L1a
            goto L42
        L1a:
            java.lang.String r0 = "nbsp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 2
            goto L43
        L24:
            java.lang.String r0 = "amp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 3
            goto L43
        L2e:
            java.lang.String r0 = "lt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 0
            goto L43
        L38:
            java.lang.String r0 = "gt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L42
            r0 = 1
            goto L43
        L42:
            r0 = -1
        L43:
            if (r0 == 0) goto L76
            if (r0 == r4) goto L73
            if (r0 == r3) goto L70
            if (r0 == r2) goto L6d
            int r6 = r5.length()
            int r6 = r6 + 33
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r6)
            java.lang.String r6 = "ignoring unsupported entity: '&"
            r0.append(r6)
            r0.append(r5)
            java.lang.String r5 = ";'"
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r6 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r6, r5)
            goto L7b
        L6d:
            r5 = 38
            goto L78
        L70:
            r5 = 32
            goto L78
        L73:
            r5 = 62
            goto L78
        L76:
            r5 = 60
        L78:
            r6.append(r5)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applyEntity(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    public static void applyRubySpans(android.text.SpannableStringBuilder spannableStringBuilder, java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element> list, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list2) {
        int rubyPosition = getRubyPosition(list2, str, startTag);
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        arrayList.addAll(list);
        java.util.Collections.sort(arrayList, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element.BY_START_POSITION_ASC);
        int i = startTag.position;
        int length = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (TAG_RUBY_TEXT.equals(((com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element) arrayList.get(i2)).startTag.name)) {
                com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element element = (com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element) arrayList.get(i2);
                int iFirstKnownRubyPosition = firstKnownRubyPosition(getRubyPosition(list2, str, element.startTag), rubyPosition, 1);
                int i3 = element.startTag.position - length;
                int i4 = element.endPosition - length;
                java.lang.CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i3, i4);
                spannableStringBuilder.delete(i3, i4);
                spannableStringBuilder.setSpan(new com.google.android.exoplayer2.text.span.RubySpan(charSequenceSubSequence.toString(), iFirstKnownRubyPosition), i, i3, 33);
                length = charSequenceSubSequence.length() + length;
                i = i3;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00af A[LOOP:0: B:54:0x00a9->B:56:0x00af, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applySpansForTag(java.lang.String r8, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag r9, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element> r10, android.text.SpannableStringBuilder r11, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> r12) {
        /*
            int r0 = r9.position
            int r1 = r11.length()
            java.lang.String r2 = r9.name
            int r3 = r2.hashCode()
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L76
            r7 = 105(0x69, float:1.47E-43)
            if (r3 == r7) goto L6c
            r7 = 3314158(0x3291ee, float:4.644125E-39)
            if (r3 == r7) goto L62
            r7 = 3511770(0x3595da, float:4.921038E-39)
            if (r3 == r7) goto L58
            r7 = 98
            if (r3 == r7) goto L4e
            r7 = 99
            if (r3 == r7) goto L44
            r7 = 117(0x75, float:1.64E-43)
            if (r3 == r7) goto L3a
            r7 = 118(0x76, float:1.65E-43)
            if (r3 == r7) goto L30
            goto L80
        L30:
            java.lang.String r3 = "v"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 6
            goto L81
        L3a:
            java.lang.String r3 = "u"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 3
            goto L81
        L44:
            java.lang.String r3 = "c"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 4
            goto L81
        L4e:
            java.lang.String r3 = "b"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 0
            goto L81
        L58:
            java.lang.String r3 = "ruby"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 2
            goto L81
        L62:
            java.lang.String r3 = "lang"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 5
            goto L81
        L6c:
            java.lang.String r3 = "i"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 1
            goto L81
        L76:
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L80
            r2 = 7
            goto L81
        L80:
            r2 = -1
        L81:
            r3 = 33
            switch(r2) {
                case 0: goto L9d;
                case 1: goto L97;
                case 2: goto L93;
                case 3: goto L8d;
                case 4: goto L87;
                case 5: goto La5;
                case 6: goto La5;
                case 7: goto La5;
                default: goto L86;
            }
        L86:
            return
        L87:
            java.util.Set<java.lang.String> r10 = r9.classes
            applyDefaultColors(r11, r10, r0, r1)
            goto La5
        L8d:
            android.text.style.UnderlineSpan r10 = new android.text.style.UnderlineSpan
            r10.<init>()
            goto La2
        L93:
            applyRubySpans(r11, r8, r9, r10, r12)
            goto La5
        L97:
            android.text.style.StyleSpan r10 = new android.text.style.StyleSpan
            r10.<init>(r5)
            goto La2
        L9d:
            android.text.style.StyleSpan r10 = new android.text.style.StyleSpan
            r10.<init>(r6)
        La2:
            r11.setSpan(r10, r0, r1, r3)
        La5:
            java.util.List r8 = getApplicableStyles(r12, r8, r9)
        La9:
            int r9 = r8.size()
            if (r4 >= r9) goto Lbd
            java.lang.Object r9 = r8.get(r4)
            com.google.android.exoplayer2.text.webvtt.WebvttCueParser$StyleMatch r9 = (com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch) r9
            com.google.android.exoplayer2.text.webvtt.WebvttCssStyle r9 = r9.style
            applyStyleToText(r11, r9, r0, r1)
            int r4 = r4 + 1
            goto La9
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applySpansForTag(java.lang.String, com.google.android.exoplayer2.text.webvtt.WebvttCueParser$StartTag, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyStyleToText(android.text.SpannableStringBuilder r4, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle r5, int r6, int r7) {
        /*
            if (r5 != 0) goto L3
            return
        L3:
            int r0 = r5.getStyle()
            r1 = -1
            r2 = 33
            if (r0 == r1) goto L18
            android.text.style.StyleSpan r0 = new android.text.style.StyleSpan
            int r1 = r5.getStyle()
            r0.<init>(r1)
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(r4, r0, r6, r7, r2)
        L18:
            boolean r0 = r5.isLinethrough()
            if (r0 == 0) goto L26
            android.text.style.StrikethroughSpan r0 = new android.text.style.StrikethroughSpan
            r0.<init>()
            r4.setSpan(r0, r6, r7, r2)
        L26:
            boolean r0 = r5.isUnderline()
            if (r0 == 0) goto L34
            android.text.style.UnderlineSpan r0 = new android.text.style.UnderlineSpan
            r0.<init>()
            r4.setSpan(r0, r6, r7, r2)
        L34:
            boolean r0 = r5.hasFontColor()
            if (r0 == 0) goto L46
            android.text.style.ForegroundColorSpan r0 = new android.text.style.ForegroundColorSpan
            int r1 = r5.getFontColor()
            r0.<init>(r1)
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(r4, r0, r6, r7, r2)
        L46:
            boolean r0 = r5.hasBackgroundColor()
            if (r0 == 0) goto L58
            android.text.style.BackgroundColorSpan r0 = new android.text.style.BackgroundColorSpan
            int r1 = r5.getBackgroundColor()
            r0.<init>(r1)
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(r4, r0, r6, r7, r2)
        L58:
            java.lang.String r0 = r5.getFontFamily()
            if (r0 == 0) goto L6a
            android.text.style.TypefaceSpan r0 = new android.text.style.TypefaceSpan
            java.lang.String r1 = r5.getFontFamily()
            r0.<init>(r1)
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(r4, r0, r6, r7, r2)
        L6a:
            int r0 = r5.getFontSizeUnit()
            r1 = 1
            if (r0 == r1) goto L8f
            r1 = 2
            if (r0 == r1) goto L85
            r1 = 3
            if (r0 == r1) goto L78
            goto L9c
        L78:
            android.text.style.RelativeSizeSpan r0 = new android.text.style.RelativeSizeSpan
            float r1 = r5.getFontSize()
            r3 = 1120403456(0x42c80000, float:100.0)
            float r1 = r1 / r3
            r0.<init>(r1)
            goto L99
        L85:
            android.text.style.RelativeSizeSpan r0 = new android.text.style.RelativeSizeSpan
            float r1 = r5.getFontSize()
            r0.<init>(r1)
            goto L99
        L8f:
            android.text.style.AbsoluteSizeSpan r0 = new android.text.style.AbsoluteSizeSpan
            float r3 = r5.getFontSize()
            int r3 = (int) r3
            r0.<init>(r3, r1)
        L99:
            com.google.android.exoplayer2.text.span.SpanUtil.addOrReplaceSpan(r4, r0, r6, r7, r2)
        L9c:
            boolean r5 = r5.getCombineUpright()
            if (r5 == 0) goto Laa
            com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan r5 = new com.google.android.exoplayer2.text.span.HorizontalTextInVerticalContextSpan
            r5.<init>()
            r4.setSpan(r5, r6, r7, r2)
        Laa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.applyStyleToText(android.text.SpannableStringBuilder, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle, int, int):void");
    }

    public static int findEndOfTag(java.lang.String str, int i) {
        int iIndexOf = str.indexOf(62, i);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    public static int firstKnownRubyPosition(int i, int i2, int i3) {
        if (i != -1) {
            return i;
        }
        if (i2 != -1) {
            return i2;
        }
        if (i3 != -1) {
            return i3;
        }
        throw new java.lang.IllegalArgumentException();
    }

    public static java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch> getApplicableStyles(java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list, java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle = list.get(i);
            int specificityScore = webvttCssStyle.getSpecificityScore(str, startTag.name, startTag.classes, startTag.voice);
            if (specificityScore > 0) {
                arrayList.add(new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch(specificityScore, webvttCssStyle));
            }
        }
        java.util.Collections.sort(arrayList);
        return arrayList;
    }

    public static int getRubyPosition(java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list, java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag) {
        java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StyleMatch> applicableStyles = getApplicableStyles(list, str, startTag);
        for (int i = 0; i < applicableStyles.size(); i++) {
            com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle = applicableStyles.get(i).style;
            if (webvttCssStyle.getRubyPosition() != -1) {
                return webvttCssStyle.getRubyPosition();
            }
        }
        return -1;
    }

    public static java.lang.String getTagName(java.lang.String str) {
        java.lang.String strTrim = str.trim();
        com.google.android.exoplayer2.util.Assertions.checkArgument(!strTrim.isEmpty());
        return com.google.android.exoplayer2.util.Util.splitAtFirst(strTrim, "[ \\.]")[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSupportedTag(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = 98
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L6f
            r1 = 99
            if (r0 == r1) goto L65
            r1 = 105(0x69, float:1.47E-43)
            if (r0 == r1) goto L5b
            r1 = 3650(0xe42, float:5.115E-42)
            if (r0 == r1) goto L51
            r1 = 3314158(0x3291ee, float:4.644125E-39)
            if (r0 == r1) goto L47
            r1 = 3511770(0x3595da, float:4.921038E-39)
            if (r0 == r1) goto L3d
            r1 = 117(0x75, float:1.64E-43)
            if (r0 == r1) goto L33
            r1 = 118(0x76, float:1.65E-43)
            if (r0 == r1) goto L29
            goto L79
        L29:
            java.lang.String r0 = "v"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 7
            goto L7a
        L33:
            java.lang.String r0 = "u"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 6
            goto L7a
        L3d:
            java.lang.String r0 = "ruby"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 4
            goto L7a
        L47:
            java.lang.String r0 = "lang"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 3
            goto L7a
        L51:
            java.lang.String r0 = "rt"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 5
            goto L7a
        L5b:
            java.lang.String r0 = "i"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 2
            goto L7a
        L65:
            java.lang.String r0 = "c"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 1
            goto L7a
        L6f:
            java.lang.String r0 = "b"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L79
            r4 = 0
            goto L7a
        L79:
            r4 = -1
        L7a:
            switch(r4) {
                case 0: goto L7e;
                case 1: goto L7e;
                case 2: goto L7e;
                case 3: goto L7e;
                case 4: goto L7e;
                case 5: goto L7e;
                case 6: goto L7e;
                case 7: goto L7e;
                default: goto L7d;
            }
        L7d:
            return r2
        L7e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.isSupportedTag(java.lang.String):boolean");
    }

    public static com.google.android.exoplayer2.text.Cue newCueForText(java.lang.CharSequence charSequence) {
        com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder = new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder();
        webvttCueInfoBuilder.text = charSequence;
        return webvttCueInfoBuilder.toCueBuilder().build();
    }

    public static com.google.android.exoplayer2.text.webvtt.WebvttCueInfo parseCue(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list) {
        java.lang.String line = parsableByteArray.readLine();
        if (line == null) {
            return null;
        }
        java.util.regex.Matcher matcher = CUE_HEADER_PATTERN.matcher(line);
        if (matcher.matches()) {
            return parseCue(null, matcher, parsableByteArray, list);
        }
        java.lang.String line2 = parsableByteArray.readLine();
        if (line2 == null) {
            return null;
        }
        java.util.regex.Matcher matcher2 = CUE_HEADER_PATTERN.matcher(line2);
        if (matcher2.matches()) {
            return parseCue(line.trim(), matcher2, parsableByteArray, list);
        }
        return null;
    }

    public static com.google.android.exoplayer2.text.webvtt.WebvttCueInfo parseCue(java.lang.String str, java.util.regex.Matcher matcher, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list) {
        com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder = new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder();
        try {
            webvttCueInfoBuilder.startTimeUs = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parseTimestampUs((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
            webvttCueInfoBuilder.endTimeUs = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parseTimestampUs((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2)));
            parseCueSettingsList((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(3)), webvttCueInfoBuilder);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            while (true) {
                java.lang.String line = parsableByteArray.readLine();
                if (android.text.TextUtils.isEmpty(line)) {
                    webvttCueInfoBuilder.text = parseCueText(str, sb.toString(), list);
                    return webvttCueInfoBuilder.build();
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(line.trim());
            }
        } catch (java.lang.NumberFormatException unused) {
            java.lang.String strValueOf = java.lang.String.valueOf(matcher.group());
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Skipping cue with bad header: ".concat(strValueOf) : new java.lang.String("Skipping cue with bad header: "));
            return null;
        }
    }

    public static com.google.android.exoplayer2.text.Cue.Builder parseCueSettingsList(java.lang.String str) {
        com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder = new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder();
        parseCueSettingsList(str, webvttCueInfoBuilder);
        return webvttCueInfoBuilder.toCueBuilder();
    }

    public static void parseCueSettingsList(java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder) {
        java.util.regex.Matcher matcher = CUE_SETTING_PATTERN.matcher(str);
        while (matcher.find()) {
            java.lang.String str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1));
            java.lang.String str3 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    parseLineAttribute(str3, webvttCueInfoBuilder);
                } else if ("align".equals(str2)) {
                    webvttCueInfoBuilder.textAlignment = parseTextAlignment(str3);
                } else if ("position".equals(str2)) {
                    parsePositionAttribute(str3, webvttCueInfoBuilder);
                } else if ("size".equals(str2)) {
                    webvttCueInfoBuilder.size = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parsePercentage(str3);
                } else if ("vertical".equals(str2)) {
                    webvttCueInfoBuilder.verticalType = parseVerticalAttribute(str3);
                } else {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + 21 + java.lang.String.valueOf(str3).length());
                    sb.append("Unknown cue setting ");
                    sb.append(str2);
                    sb.append(":");
                    sb.append(str3);
                    com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                }
            } catch (java.lang.NumberFormatException unused) {
                java.lang.String strValueOf = java.lang.String.valueOf(matcher.group());
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Skipping bad cue setting: ".concat(strValueOf) : new java.lang.String("Skipping bad cue setting: "));
            }
        }
    }

    public static android.text.SpannedString parseCueText(java.lang.String str, java.lang.String str2, java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> list) {
        android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder();
        java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char cCharAt = str2.charAt(i);
            if (cCharAt == '&') {
                i++;
                int iIndexOf = str2.indexOf(59, i);
                int iIndexOf2 = str2.indexOf(32, i);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = java.lang.Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    applyEntity(str2.substring(i, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((java.lang.CharSequence) " ");
                    }
                    i = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i++;
            } else {
                int iFindEndOfTag = i + 1;
                if (iFindEndOfTag < str2.length()) {
                    boolean z = str2.charAt(iFindEndOfTag) == '/';
                    iFindEndOfTag = findEndOfTag(str2, iFindEndOfTag);
                    int i2 = iFindEndOfTag - 2;
                    boolean z2 = str2.charAt(i2) == '/';
                    int i3 = i + (z ? 2 : 1);
                    if (!z2) {
                        i2 = iFindEndOfTag - 1;
                    }
                    java.lang.String strSubstring = str2.substring(i3, i2);
                    if (!strSubstring.trim().isEmpty()) {
                        java.lang.String tagName = getTagName(strSubstring);
                        if (isSupportedTag(tagName)) {
                            if (z) {
                                while (!arrayDeque.isEmpty()) {
                                    com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag startTag = (com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag) arrayDeque.pop();
                                    applySpansForTag(str, startTag, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new com.google.android.exoplayer2.text.webvtt.WebvttCueParser.Element(startTag, spannableStringBuilder.length()));
                                    }
                                    if (startTag.name.equals(tagName)) {
                                        break;
                                    }
                                }
                            } else if (!z2) {
                                arrayDeque.push(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag.buildStartTag(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i = iFindEndOfTag;
            }
        }
        while (!arrayDeque.isEmpty()) {
            applySpansForTag(str, (com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        applySpansForTag(str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.StartTag.buildWholeCueVirtualTag(), java.util.Collections.emptyList(), spannableStringBuilder, list);
        return android.text.SpannedString.valueOf(spannableStringBuilder);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseLineAnchor(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1364013995: goto L2a;
                case -1074341483: goto L20;
                case 100571: goto L16;
                case 109757538: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L34
        Lc:
            java.lang.String r0 = "start"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 0
            goto L35
        L16:
            java.lang.String r0 = "end"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 3
            goto L35
        L20:
            java.lang.String r0 = "middle"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 2
            goto L35
        L2a:
            java.lang.String r0 = "center"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L34
            r0 = 1
            goto L35
        L34:
            r0 = -1
        L35:
            if (r0 == 0) goto L59
            if (r0 == r4) goto L58
            if (r0 == r3) goto L58
            if (r0 == r2) goto L57
            java.lang.String r0 = "Invalid anchor value: "
            int r1 = r5.length()
            if (r1 == 0) goto L4a
            java.lang.String r5 = r0.concat(r5)
            goto L4f
        L4a:
            java.lang.String r5 = new java.lang.String
            r5.<init>(r0)
        L4f:
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r5)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            return r5
        L57:
            return r3
        L58:
            return r4
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseLineAnchor(java.lang.String):int");
    }

    public static void parseLineAttribute(java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            webvttCueInfoBuilder.lineAnchor = parseLineAnchor(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            webvttCueInfoBuilder.line = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parsePercentage(str);
            webvttCueInfoBuilder.lineType = 0;
        } else {
            webvttCueInfoBuilder.line = java.lang.Integer.parseInt(str);
            webvttCueInfoBuilder.lineType = 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parsePositionAnchor(java.lang.String r7) {
        /*
            int r0 = r7.hashCode()
            r1 = 0
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            switch(r0) {
                case -1842484672: goto L40;
                case -1364013995: goto L36;
                case -1276788989: goto L2c;
                case -1074341483: goto L22;
                case 100571: goto L18;
                case 109757538: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L4a
        Le:
            java.lang.String r0 = "start"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 1
            goto L4b
        L18:
            java.lang.String r0 = "end"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 5
            goto L4b
        L22:
            java.lang.String r0 = "middle"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 3
            goto L4b
        L2c:
            java.lang.String r0 = "line-right"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 4
            goto L4b
        L36:
            java.lang.String r0 = "center"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 2
            goto L4b
        L40:
            java.lang.String r0 = "line-left"
            boolean r0 = r7.equals(r0)
            if (r0 == 0) goto L4a
            r0 = 0
            goto L4b
        L4a:
            r0 = -1
        L4b:
            if (r0 == 0) goto L73
            if (r0 == r6) goto L73
            if (r0 == r5) goto L72
            if (r0 == r4) goto L72
            if (r0 == r3) goto L71
            if (r0 == r2) goto L71
            java.lang.String r0 = "Invalid anchor value: "
            int r1 = r7.length()
            if (r1 == 0) goto L64
            java.lang.String r7 = r0.concat(r7)
            goto L69
        L64:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r0)
        L69:
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r7)
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            return r7
        L71:
            return r5
        L72:
            return r6
        L73:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parsePositionAnchor(java.lang.String):int");
    }

    public static void parsePositionAttribute(java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            webvttCueInfoBuilder.positionAnchor = parsePositionAnchor(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        webvttCueInfoBuilder.position = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parsePercentage(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseTextAlignment(java.lang.String r6) {
        /*
            int r0 = r6.hashCode()
            r1 = 5
            r2 = 4
            r3 = 3
            r4 = 1
            r5 = 2
            switch(r0) {
                case -1364013995: goto L3f;
                case -1074341483: goto L35;
                case 100571: goto L2b;
                case 3317767: goto L21;
                case 108511772: goto L17;
                case 109757538: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L49
        Ld:
            java.lang.String r0 = "start"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 0
            goto L4a
        L17:
            java.lang.String r0 = "right"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 5
            goto L4a
        L21:
            java.lang.String r0 = "left"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 1
            goto L4a
        L2b:
            java.lang.String r0 = "end"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 4
            goto L4a
        L35:
            java.lang.String r0 = "middle"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 3
            goto L4a
        L3f:
            java.lang.String r0 = "center"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L49
            r0 = 2
            goto L4a
        L49:
            r0 = -1
        L4a:
            if (r0 == 0) goto L72
            if (r0 == r4) goto L71
            if (r0 == r5) goto L70
            if (r0 == r3) goto L70
            if (r0 == r2) goto L6f
            if (r0 == r1) goto L6e
            java.lang.String r0 = "Invalid alignment value: "
            int r1 = r6.length()
            if (r1 == 0) goto L63
            java.lang.String r6 = r0.concat(r6)
            goto L68
        L63:
            java.lang.String r6 = new java.lang.String
            r6.<init>(r0)
        L68:
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r6)
            return r5
        L6e:
            return r1
        L6f:
            return r3
        L70:
            return r5
        L71:
            return r2
        L72:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseTextAlignment(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int parseVerticalAttribute(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 3462(0xd86, float:4.851E-42)
            r2 = 1
            if (r0 == r1) goto L18
            r1 = 3642(0xe3a, float:5.104E-42)
            if (r0 == r1) goto Le
            goto L22
        Le:
            java.lang.String r0 = "rl"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L22
            r0 = 0
            goto L23
        L18:
            java.lang.String r0 = "lr"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L22
            r0 = 1
            goto L23
        L22:
            r0 = -1
        L23:
            if (r0 == 0) goto L43
            if (r0 == r2) goto L41
            java.lang.String r0 = "Invalid 'vertical' value: "
            int r1 = r3.length()
            if (r1 == 0) goto L34
            java.lang.String r3 = r0.concat(r3)
            goto L39
        L34:
            java.lang.String r3 = new java.lang.String
            r3.<init>(r0)
        L39:
            java.lang.String r0 = "WebvttCueParser"
            com.google.android.exoplayer2.util.Log.w(r0, r3)
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            return r3
        L41:
            r3 = 2
            return r3
        L43:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseVerticalAttribute(java.lang.String):int");
    }
}
