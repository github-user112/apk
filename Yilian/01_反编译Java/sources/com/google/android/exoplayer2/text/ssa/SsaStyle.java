package com.google.android.exoplayer2.text.ssa;

/* loaded from: classes.dex */
public final class SsaStyle {
    public static final int SSA_ALIGNMENT_BOTTOM_CENTER = 2;
    public static final int SSA_ALIGNMENT_BOTTOM_LEFT = 1;
    public static final int SSA_ALIGNMENT_BOTTOM_RIGHT = 3;
    public static final int SSA_ALIGNMENT_MIDDLE_CENTER = 5;
    public static final int SSA_ALIGNMENT_MIDDLE_LEFT = 4;
    public static final int SSA_ALIGNMENT_MIDDLE_RIGHT = 6;
    public static final int SSA_ALIGNMENT_TOP_CENTER = 8;
    public static final int SSA_ALIGNMENT_TOP_LEFT = 7;
    public static final int SSA_ALIGNMENT_TOP_RIGHT = 9;
    public static final int SSA_ALIGNMENT_UNKNOWN = -1;
    public static final java.lang.String TAG = "SsaStyle";
    public final int alignment;
    public final boolean bold;
    public final float fontSize;
    public final boolean italic;
    public final java.lang.String name;
    public final java.lang.Integer primaryColor;
    public final boolean strikeout;
    public final boolean underline;

    public static final class Format {
        public final int alignmentIndex;
        public final int boldIndex;
        public final int fontSizeIndex;
        public final int italicIndex;
        public final int length;
        public final int nameIndex;
        public final int primaryColorIndex;
        public final int strikeoutIndex;
        public final int underlineIndex;

        public Format(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.nameIndex = i;
            this.alignmentIndex = i2;
            this.primaryColorIndex = i3;
            this.fontSizeIndex = i4;
            this.boldIndex = i5;
            this.italicIndex = i6;
            this.underlineIndex = i7;
            this.strikeoutIndex = i8;
            this.length = i9;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.google.android.exoplayer2.text.ssa.SsaStyle.Format fromFormatLine(java.lang.String r14) {
            /*
                r0 = 7
                java.lang.String r14 = r14.substring(r0)
                java.lang.String r1 = ","
                java.lang.String[] r14 = android.text.TextUtils.split(r14, r1)
                r1 = 0
                r2 = -1
                r3 = 0
                r5 = -1
                r6 = -1
                r7 = -1
                r8 = -1
                r9 = -1
                r10 = -1
                r11 = -1
                r12 = -1
            L16:
                int r4 = r14.length
                if (r3 >= r4) goto L92
                r4 = r14[r3]
                java.lang.String r4 = r4.trim()
                java.lang.String r4 = d.s.y.b0(r4)
                int r13 = r4.hashCode()
                switch(r13) {
                    case -1178781136: goto L71;
                    case -1026963764: goto L67;
                    case -192095652: goto L5d;
                    case -70925746: goto L53;
                    case 3029637: goto L49;
                    case 3373707: goto L3f;
                    case 366554320: goto L35;
                    case 1767875043: goto L2b;
                    default: goto L2a;
                }
            L2a:
                goto L7b
            L2b:
                java.lang.String r13 = "alignment"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 1
                goto L7c
            L35:
                java.lang.String r13 = "fontsize"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 3
                goto L7c
            L3f:
                java.lang.String r13 = "name"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 0
                goto L7c
            L49:
                java.lang.String r13 = "bold"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 4
                goto L7c
            L53:
                java.lang.String r13 = "primarycolour"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 2
                goto L7c
            L5d:
                java.lang.String r13 = "strikeout"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 7
                goto L7c
            L67:
                java.lang.String r13 = "underline"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 6
                goto L7c
            L71:
                java.lang.String r13 = "italic"
                boolean r4 = r4.equals(r13)
                if (r4 == 0) goto L7b
                r4 = 5
                goto L7c
            L7b:
                r4 = -1
            L7c:
                switch(r4) {
                    case 0: goto L8e;
                    case 1: goto L8c;
                    case 2: goto L8a;
                    case 3: goto L88;
                    case 4: goto L86;
                    case 5: goto L84;
                    case 6: goto L82;
                    case 7: goto L80;
                    default: goto L7f;
                }
            L7f:
                goto L8f
            L80:
                r12 = r3
                goto L8f
            L82:
                r11 = r3
                goto L8f
            L84:
                r10 = r3
                goto L8f
            L86:
                r9 = r3
                goto L8f
            L88:
                r8 = r3
                goto L8f
            L8a:
                r7 = r3
                goto L8f
            L8c:
                r6 = r3
                goto L8f
            L8e:
                r5 = r3
            L8f:
                int r3 = r3 + 1
                goto L16
            L92:
                if (r5 == r2) goto L9c
                com.google.android.exoplayer2.text.ssa.SsaStyle$Format r0 = new com.google.android.exoplayer2.text.ssa.SsaStyle$Format
                int r13 = r14.length
                r4 = r0
                r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13)
                goto L9d
            L9c:
                r0 = 0
            L9d:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ssa.SsaStyle.Format.fromFormatLine(java.lang.String):com.google.android.exoplayer2.text.ssa.SsaStyle$Format");
        }
    }

    public static final class Overrides {
        public static final java.lang.String TAG = "SsaStyle.Overrides";
        public final int alignment;
        public final android.graphics.PointF position;
        public static final java.util.regex.Pattern BRACES_PATTERN = java.util.regex.Pattern.compile("\\{([^}]*)\\}");
        public static final java.lang.String PADDED_DECIMAL_PATTERN = "\\s*\\d+(?:\\.\\d+)?\\s*";
        public static final java.util.regex.Pattern POSITION_PATTERN = java.util.regex.Pattern.compile(com.google.android.exoplayer2.util.Util.formatInvariant("\\\\pos\\((%1$s),(%1$s)\\)", PADDED_DECIMAL_PATTERN));
        public static final java.util.regex.Pattern MOVE_PATTERN = java.util.regex.Pattern.compile(com.google.android.exoplayer2.util.Util.formatInvariant("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", PADDED_DECIMAL_PATTERN));
        public static final java.util.regex.Pattern ALIGNMENT_OVERRIDE_PATTERN = java.util.regex.Pattern.compile("\\\\an(\\d+)");

        public Overrides(int i, android.graphics.PointF pointF) {
            this.alignment = i;
            this.position = pointF;
        }

        public static int parseAlignmentOverride(java.lang.String str) {
            java.util.regex.Matcher matcher = ALIGNMENT_OVERRIDE_PATTERN.matcher(str);
            if (matcher.find()) {
                return com.google.android.exoplayer2.text.ssa.SsaStyle.parseAlignment((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
            }
            return -1;
        }

        public static com.google.android.exoplayer2.text.ssa.SsaStyle.Overrides parseFromDialogue(java.lang.String str) {
            java.util.regex.Matcher matcher = BRACES_PATTERN.matcher(str);
            android.graphics.PointF pointF = null;
            int i = -1;
            while (matcher.find()) {
                java.lang.String str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1));
                try {
                    android.graphics.PointF position = parsePosition(str2);
                    if (position != null) {
                        pointF = position;
                    }
                } catch (java.lang.RuntimeException unused) {
                }
                try {
                    int alignmentOverride = parseAlignmentOverride(str2);
                    if (alignmentOverride != -1) {
                        i = alignmentOverride;
                    }
                } catch (java.lang.RuntimeException unused2) {
                }
            }
            return new com.google.android.exoplayer2.text.ssa.SsaStyle.Overrides(i, pointF);
        }

        public static android.graphics.PointF parsePosition(java.lang.String str) {
            java.lang.String strGroup;
            java.lang.String strGroup2;
            java.util.regex.Matcher matcher = POSITION_PATTERN.matcher(str);
            java.util.regex.Matcher matcher2 = MOVE_PATTERN.matcher(str);
            boolean zFind = matcher.find();
            boolean zFind2 = matcher2.find();
            if (zFind) {
                if (zFind2) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 82);
                    sb.append("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='");
                    sb.append(str);
                    sb.append("'");
                    com.google.android.exoplayer2.util.Log.i(TAG, sb.toString());
                }
                strGroup = matcher.group(1);
                strGroup2 = matcher.group(2);
            } else {
                if (!zFind2) {
                    return null;
                }
                strGroup = matcher2.group(1);
                strGroup2 = matcher2.group(2);
            }
            return new android.graphics.PointF(java.lang.Float.parseFloat(((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(strGroup)).trim()), java.lang.Float.parseFloat(((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(strGroup2)).trim()));
        }

        public static java.lang.String stripStyleOverrides(java.lang.String str) {
            return BRACES_PATTERN.matcher(str).replaceAll("");
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface SsaAlignment {
    }

    public SsaStyle(java.lang.String str, int i, java.lang.Integer num, float f2, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.alignment = i;
        this.primaryColor = num;
        this.fontSize = f2;
        this.bold = z;
        this.italic = z2;
        this.underline = z3;
        this.strikeout = z4;
    }

    public static com.google.android.exoplayer2.text.ssa.SsaStyle fromStyleLine(java.lang.String str, com.google.android.exoplayer2.text.ssa.SsaStyle.Format format) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(str.startsWith(com.google.android.exoplayer2.text.ssa.SsaDecoder.STYLE_LINE_PREFIX));
        java.lang.String[] strArrSplit = android.text.TextUtils.split(str.substring(6), ",");
        int length = strArrSplit.length;
        int i = format.length;
        if (length != i) {
            com.google.android.exoplayer2.util.Log.w(TAG, com.google.android.exoplayer2.util.Util.formatInvariant("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(strArrSplit.length), str));
            return null;
        }
        try {
            return new com.google.android.exoplayer2.text.ssa.SsaStyle(strArrSplit[format.nameIndex].trim(), format.alignmentIndex != -1 ? parseAlignment(strArrSplit[format.alignmentIndex].trim()) : -1, format.primaryColorIndex != -1 ? parseColor(strArrSplit[format.primaryColorIndex].trim()) : null, format.fontSizeIndex != -1 ? parseFontSize(strArrSplit[format.fontSizeIndex].trim()) : -3.4028235E38f, format.boldIndex != -1 && parseBooleanValue(strArrSplit[format.boldIndex].trim()), format.italicIndex != -1 && parseBooleanValue(strArrSplit[format.italicIndex].trim()), format.underlineIndex != -1 && parseBooleanValue(strArrSplit[format.underlineIndex].trim()), format.strikeoutIndex != -1 && parseBooleanValue(strArrSplit[format.strikeoutIndex].trim()));
        } catch (java.lang.RuntimeException e2) {
            com.google.android.exoplayer2.util.Log.w(TAG, e.a.c.a.a.G(str.length() + 36, "Skipping malformed 'Style:' line: '", str, "'"), e2);
            return null;
        }
    }

    public static boolean isValidAlignment(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public static int parseAlignment(java.lang.String str) throws java.lang.NumberFormatException {
        try {
            int i = java.lang.Integer.parseInt(str.trim());
            if (isValidAlignment(i)) {
                return i;
            }
        } catch (java.lang.NumberFormatException unused) {
        }
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring unknown alignment: ".concat(strValueOf) : new java.lang.String("Ignoring unknown alignment: "));
        return -1;
    }

    public static boolean parseBooleanValue(java.lang.String str) throws java.lang.NumberFormatException {
        try {
            int i = java.lang.Integer.parseInt(str);
            return i == 1 || i == -1;
        } catch (java.lang.NumberFormatException e2) {
            com.google.android.exoplayer2.util.Log.w(TAG, e.a.c.a.a.G(e.a.c.a.a.m(str, 33), "Failed to parse boolean value: '", str, "'"), e2);
            return false;
        }
    }

    public static java.lang.Integer parseColor(java.lang.String str) {
        try {
            long j = str.startsWith("&H") ? java.lang.Long.parseLong(str.substring(2), 16) : java.lang.Long.parseLong(str);
            com.google.android.exoplayer2.util.Assertions.checkArgument(j <= 4294967295L);
            return java.lang.Integer.valueOf(android.graphics.Color.argb(d.s.y.n(((j >> 24) & 255) ^ 255), d.s.y.n(j & 255), d.s.y.n((j >> 8) & 255), d.s.y.n((j >> 16) & 255)));
        } catch (java.lang.IllegalArgumentException e2) {
            com.google.android.exoplayer2.util.Log.w(TAG, e.a.c.a.a.G(e.a.c.a.a.m(str, 36), "Failed to parse color expression: '", str, "'"), e2);
            return null;
        }
    }

    public static float parseFontSize(java.lang.String str) {
        try {
            return java.lang.Float.parseFloat(str);
        } catch (java.lang.NumberFormatException e2) {
            com.google.android.exoplayer2.util.Log.w(TAG, e.a.c.a.a.G(e.a.c.a.a.m(str, 29), "Failed to parse font size: '", str, "'"), e2);
            return -3.4028235E38f;
        }
    }
}
