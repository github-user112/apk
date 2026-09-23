package com.google.android.exoplayer2.text.subrip;

/* loaded from: classes.dex */
public final class SubripDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final java.lang.String ALIGN_BOTTOM_LEFT = "{\\an1}";
    public static final java.lang.String ALIGN_BOTTOM_MID = "{\\an2}";
    public static final java.lang.String ALIGN_BOTTOM_RIGHT = "{\\an3}";
    public static final java.lang.String ALIGN_MID_LEFT = "{\\an4}";
    public static final java.lang.String ALIGN_MID_MID = "{\\an5}";
    public static final java.lang.String ALIGN_MID_RIGHT = "{\\an6}";
    public static final java.lang.String ALIGN_TOP_LEFT = "{\\an7}";
    public static final java.lang.String ALIGN_TOP_MID = "{\\an8}";
    public static final java.lang.String ALIGN_TOP_RIGHT = "{\\an9}";
    public static final float END_FRACTION = 0.92f;
    public static final float MID_FRACTION = 0.5f;
    public static final float START_FRACTION = 0.08f;
    public static final java.lang.String SUBRIP_ALIGNMENT_TAG = "\\{\\\\an[1-9]\\}";
    public static final java.lang.String SUBRIP_TIMECODE = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?";
    public static final java.lang.String TAG = "SubripDecoder";
    public final java.util.ArrayList<java.lang.String> tags;
    public final java.lang.StringBuilder textBuilder;
    public static final java.util.regex.Pattern SUBRIP_TIMING_LINE = java.util.regex.Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    public static final java.util.regex.Pattern SUBRIP_TAG_PATTERN = java.util.regex.Pattern.compile("\\{\\\\.*?\\}");

    public SubripDecoder() {
        super(TAG);
        this.textBuilder = new java.lang.StringBuilder();
        this.tags = new java.util.ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.text.Cue buildCue(android.text.Spanned r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.subrip.SubripDecoder.buildCue(android.text.Spanned, java.lang.String):com.google.android.exoplayer2.text.Cue");
    }

    public static float getFractionalPositionForAnchorType(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new java.lang.IllegalArgumentException();
    }

    public static long parseTimecode(java.util.regex.Matcher matcher, int i) {
        java.lang.String strGroup = matcher.group(i + 1);
        long j = (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(i + 3))) * 1000) + (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(i + 2))) * 60 * 1000) + (strGroup != null ? java.lang.Long.parseLong(strGroup) * 60 * 60 * 1000 : 0L);
        java.lang.String strGroup2 = matcher.group(i + 4);
        if (strGroup2 != null) {
            j += java.lang.Long.parseLong(strGroup2);
        }
        return j * 1000;
    }

    private java.lang.String processLine(java.lang.String str, java.util.ArrayList<java.lang.String> arrayList) {
        java.lang.String strTrim = str.trim();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strTrim);
        java.util.regex.Matcher matcher = SUBRIP_TAG_PATTERN.matcher(strTrim);
        int i = 0;
        while (matcher.find()) {
            java.lang.String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i += length;
        }
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) throws java.lang.NumberFormatException {
        java.lang.String str;
        java.lang.String str2;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.google.android.exoplayer2.util.LongArray longArray = new com.google.android.exoplayer2.util.LongArray();
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr, i);
        while (true) {
            java.lang.String line = parsableByteArray.readLine();
            int i2 = 0;
            if (line == null) {
                break;
            }
            if (line.length() != 0) {
                try {
                    java.lang.Integer.parseInt(line);
                    line = parsableByteArray.readLine();
                } catch (java.lang.NumberFormatException unused) {
                    str = "Skipping invalid index: ";
                    if (line.length() == 0) {
                        str2 = new java.lang.String("Skipping invalid index: ");
                    }
                }
                if (line == null) {
                    com.google.android.exoplayer2.util.Log.w(TAG, "Unexpected end");
                    break;
                }
                java.util.regex.Matcher matcher = SUBRIP_TIMING_LINE.matcher(line);
                if (matcher.matches()) {
                    longArray.add(parseTimecode(matcher, 1));
                    longArray.add(parseTimecode(matcher, 6));
                    this.textBuilder.setLength(0);
                    this.tags.clear();
                    while (true) {
                        java.lang.String line2 = parsableByteArray.readLine();
                        if (android.text.TextUtils.isEmpty(line2)) {
                            break;
                        }
                        if (this.textBuilder.length() > 0) {
                            this.textBuilder.append("<br>");
                        }
                        this.textBuilder.append(processLine(line2, this.tags));
                    }
                    android.text.Spanned spannedFromHtml = android.text.Html.fromHtml(this.textBuilder.toString());
                    java.lang.String str3 = null;
                    while (true) {
                        if (i2 >= this.tags.size()) {
                            break;
                        }
                        java.lang.String str4 = this.tags.get(i2);
                        if (str4.matches(SUBRIP_ALIGNMENT_TAG)) {
                            str3 = str4;
                            break;
                        }
                        i2++;
                    }
                    arrayList.add(buildCue(spannedFromHtml, str3));
                    arrayList.add(com.google.android.exoplayer2.text.Cue.EMPTY);
                } else {
                    str = "Skipping invalid timing: ";
                    str2 = line.length() != 0 ? str.concat(line) : new java.lang.String("Skipping invalid timing: ");
                    com.google.android.exoplayer2.util.Log.w(TAG, str2);
                }
            }
        }
        return new com.google.android.exoplayer2.text.subrip.SubripSubtitle((com.google.android.exoplayer2.text.Cue[]) arrayList.toArray(new com.google.android.exoplayer2.text.Cue[0]), longArray.toArray());
    }
}
