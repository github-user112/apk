package com.google.android.exoplayer2.text.ttml;

/* loaded from: classes.dex */
public final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    public static final java.util.regex.Pattern WHITESPACE_PATTERN = java.util.regex.Pattern.compile("\\s+");
    public static final e.c.b.b.u<java.lang.String> SINGLE_STYLE_VALUES = e.c.b.b.u.i(2, com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    public static final e.c.b.b.u<java.lang.String> MARK_SHAPE_VALUES = e.c.b.b.u.n(com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_DOT, com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_SESAME, com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    public static final e.c.b.b.u<java.lang.String> MARK_FILL_VALUES = e.c.b.b.u.i(2, com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_FILLED, com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
    public static final e.c.b.b.u<java.lang.String> POSITION_VALUES = e.c.b.b.u.n(com.google.android.exoplayer2.text.ttml.TtmlNode.ANNOTATION_POSITION_AFTER, com.google.android.exoplayer2.text.ttml.TtmlNode.ANNOTATION_POSITION_BEFORE, com.google.android.exoplayer2.text.ttml.TtmlNode.ANNOTATION_POSITION_OUTSIDE);

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Position {
    }

    public TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public static com.google.android.exoplayer2.text.ttml.TextEmphasis parse(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.lang.String strB0 = d.s.y.b0(str.trim());
        if (strB0.isEmpty()) {
            return null;
        }
        java.lang.String[] strArrSplit = android.text.TextUtils.split(strB0, WHITESPACE_PATTERN);
        int length = strArrSplit.length;
        return parseWords(length != 0 ? length != 1 ? e.c.b.b.u.i(strArrSplit.length, (java.lang.Object[]) strArrSplit.clone()) : new e.c.b.b.u0(strArrSplit[0]) : e.c.b.b.m0.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ttml.TextEmphasis parseWords(e.c.b.b.u<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TextEmphasis.parseWords(e.c.b.b.u):com.google.android.exoplayer2.text.ttml.TextEmphasis");
    }
}
