package com.google.android.exoplayer2.text.tx3g;

/* loaded from: classes.dex */
public final class Tx3gDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final char BOM_UTF16_BE = 65279;
    public static final char BOM_UTF16_LE = 65534;
    public static final int DEFAULT_COLOR = -1;
    public static final int DEFAULT_FONT_FACE = 0;
    public static final java.lang.String DEFAULT_FONT_FAMILY = "sans-serif";
    public static final float DEFAULT_VERTICAL_PLACEMENT = 0.85f;
    public static final int FONT_FACE_BOLD = 1;
    public static final int FONT_FACE_ITALIC = 2;
    public static final int FONT_FACE_UNDERLINE = 4;
    public static final int SIZE_ATOM_HEADER = 8;
    public static final int SIZE_BOM_UTF16 = 2;
    public static final int SIZE_SHORT = 2;
    public static final int SIZE_STYLE_RECORD = 12;
    public static final int SPAN_PRIORITY_HIGH = 0;
    public static final int SPAN_PRIORITY_LOW = 16711680;
    public static final java.lang.String TAG = "Tx3gDecoder";
    public static final java.lang.String TX3G_SERIF = "Serif";
    public static final int TYPE_STYL = 1937013100;
    public static final int TYPE_TBOX = 1952608120;
    public final int calculatedVideoTrackHeight;
    public final boolean customVerticalPlacement;
    public final int defaultColorRgba;
    public final int defaultFontFace;
    public final java.lang.String defaultFontFamily;
    public final float defaultVerticalPlacement;
    public final com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray;

    public Tx3gDecoder(java.util.List<byte[]> list) {
        super(TAG);
        this.parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray();
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.defaultFontFace = 0;
            this.defaultColorRgba = -1;
            this.defaultFontFamily = "sans-serif";
            this.customVerticalPlacement = false;
            this.defaultVerticalPlacement = 0.85f;
            this.calculatedVideoTrackHeight = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.defaultFontFace = bArr[24];
        this.defaultColorRgba = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.defaultFontFamily = TX3G_SERIF.equals(com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr, 43, bArr.length - 43)) ? com.google.android.exoplayer2.C.SERIF_NAME : "sans-serif";
        this.calculatedVideoTrackHeight = bArr[25] * 20;
        boolean z = (bArr[0] & com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING) != 0;
        this.customVerticalPlacement = z;
        if (z) {
            this.defaultVerticalPlacement = com.google.android.exoplayer2.util.Util.constrainValue(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / this.calculatedVideoTrackHeight, 0.0f, 0.95f);
        } else {
            this.defaultVerticalPlacement = 0.85f;
        }
    }

    private void applyStyleRecord(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, android.text.SpannableStringBuilder spannableStringBuilder) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        int length;
        assertTrue(parsableByteArray.bytesLeft() >= 12);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.skipBytes(1);
        int i = parsableByteArray.readInt();
        if (unsignedShort2 > spannableStringBuilder.length()) {
            int length2 = spannableStringBuilder.length();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(68);
            sb.append("Truncating styl end (");
            sb.append(unsignedShort2);
            sb.append(") to cueText.length() (");
            sb.append(length2);
            sb.append(").");
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            length = spannableStringBuilder.length();
        } else {
            length = unsignedShort2;
        }
        if (unsignedShort < length) {
            int i2 = length;
            attachFontFace(spannableStringBuilder, unsignedByte, this.defaultFontFace, unsignedShort, i2, 0);
            attachColor(spannableStringBuilder, i, this.defaultColorRgba, unsignedShort, i2, 0);
            return;
        }
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder(60);
        sb2.append("Ignoring styl with start (");
        sb2.append(unsignedShort);
        sb2.append(") >= end (");
        sb2.append(length);
        sb2.append(").");
        com.google.android.exoplayer2.util.Log.w(TAG, sb2.toString());
    }

    public static void assertTrue(boolean z) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        if (!z) {
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    public static void attachColor(android.text.SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new android.text.style.ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void attachFontFace(android.text.SpannableStringBuilder r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            if (r6 == r7) goto L4c
            r7 = r10 | 33
            r10 = r6 & 1
            r0 = 0
            r1 = 1
            if (r10 == 0) goto Lc
            r10 = 1
            goto Ld
        Lc:
            r10 = 0
        Ld:
            r2 = r6 & 2
            if (r2 == 0) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            if (r10 == 0) goto L23
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            if (r2 == 0) goto L1f
            r4 = 3
            r3.<init>(r4)
            goto L2b
        L1f:
            r3.<init>(r1)
            goto L2b
        L23:
            if (r2 == 0) goto L2e
            android.text.style.StyleSpan r3 = new android.text.style.StyleSpan
            r4 = 2
            r3.<init>(r4)
        L2b:
            r5.setSpan(r3, r8, r9, r7)
        L2e:
            r6 = r6 & 4
            if (r6 == 0) goto L33
            goto L34
        L33:
            r1 = 0
        L34:
            if (r1 == 0) goto L3e
            android.text.style.UnderlineSpan r6 = new android.text.style.UnderlineSpan
            r6.<init>()
            r5.setSpan(r6, r8, r9, r7)
        L3e:
            if (r1 != 0) goto L4c
            if (r10 != 0) goto L4c
            if (r2 != 0) goto L4c
            android.text.style.StyleSpan r6 = new android.text.style.StyleSpan
            r6.<init>(r0)
            r5.setSpan(r6, r8, r9, r7)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.tx3g.Tx3gDecoder.attachFontFace(android.text.SpannableStringBuilder, int, int, int, int, int):void");
    }

    public static void attachFontFamily(android.text.SpannableStringBuilder spannableStringBuilder, java.lang.String str, int i, int i2) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new android.text.style.TypefaceSpan(str), i, i2, 16711713);
        }
    }

    public static java.lang.String readSubtitleText(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        char cPeekChar;
        assertTrue(parsableByteArray.bytesLeft() >= 2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        if (unsignedShort == 0) {
            return "";
        }
        return parsableByteArray.readString(unsignedShort, (parsableByteArray.bytesLeft() < 2 || !((cPeekChar = parsableByteArray.peekChar()) == 65279 || cPeekChar == 65534)) ? e.c.b.a.c.f2667c : e.c.b.a.c.f2669e);
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        this.parsableByteArray.reset(bArr, i);
        java.lang.String subtitleText = readSubtitleText(this.parsableByteArray);
        if (subtitleText.isEmpty()) {
            return com.google.android.exoplayer2.text.tx3g.Tx3gSubtitle.EMPTY;
        }
        android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder(subtitleText);
        attachFontFace(spannableStringBuilder, this.defaultFontFace, 0, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        attachColor(spannableStringBuilder, this.defaultColorRgba, -1, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        attachFontFamily(spannableStringBuilder, this.defaultFontFamily, 0, spannableStringBuilder.length());
        float fConstrainValue = this.defaultVerticalPlacement;
        while (this.parsableByteArray.bytesLeft() >= 8) {
            int position = this.parsableByteArray.getPosition();
            int i2 = this.parsableByteArray.readInt();
            int i3 = this.parsableByteArray.readInt();
            if (i3 == 1937013100) {
                assertTrue(this.parsableByteArray.bytesLeft() >= 2);
                int unsignedShort = this.parsableByteArray.readUnsignedShort();
                for (int i4 = 0; i4 < unsignedShort; i4++) {
                    applyStyleRecord(this.parsableByteArray, spannableStringBuilder);
                }
            } else if (i3 == 1952608120 && this.customVerticalPlacement) {
                assertTrue(this.parsableByteArray.bytesLeft() >= 2);
                fConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(this.parsableByteArray.readUnsignedShort() / this.calculatedVideoTrackHeight, 0.0f, 0.95f);
            }
            this.parsableByteArray.setPosition(position + i2);
        }
        return new com.google.android.exoplayer2.text.tx3g.Tx3gSubtitle(new com.google.android.exoplayer2.text.Cue.Builder().setText(spannableStringBuilder).setLine(fConstrainValue, 0).setLineAnchor(0).build());
    }
}
