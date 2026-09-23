package com.google.android.exoplayer2.text.webvtt;

/* loaded from: classes.dex */
public final class WebvttDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final java.lang.String COMMENT_START = "NOTE";
    public static final int EVENT_COMMENT = 1;
    public static final int EVENT_CUE = 3;
    public static final int EVENT_END_OF_FILE = 0;
    public static final int EVENT_NONE = -1;
    public static final int EVENT_STYLE_BLOCK = 2;
    public static final java.lang.String STYLE_START = "STYLE";
    public final com.google.android.exoplayer2.text.webvtt.WebvttCssParser cssParser;
    public final com.google.android.exoplayer2.util.ParsableByteArray parsableWebvttData;

    public WebvttDecoder() {
        super("WebvttDecoder");
        this.parsableWebvttData = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.cssParser = new com.google.android.exoplayer2.text.webvtt.WebvttCssParser();
    }

    public static int getNextEvent(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i = -1;
        int position = 0;
        while (i == -1) {
            position = parsableByteArray.getPosition();
            java.lang.String line = parsableByteArray.readLine();
            i = line == null ? 0 : STYLE_START.equals(line) ? 2 : line.startsWith(COMMENT_START) ? 1 : 3;
        }
        parsableByteArray.setPosition(position);
        return i;
    }

    public static void skipComment(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        while (!android.text.TextUtils.isEmpty(parsableByteArray.readLine())) {
        }
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        com.google.android.exoplayer2.text.webvtt.WebvttCueInfo cue;
        this.parsableWebvttData.reset(bArr, i);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.validateWebvttHeaderLine(this.parsableWebvttData);
            while (!android.text.TextUtils.isEmpty(this.parsableWebvttData.readLine())) {
            }
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            while (true) {
                int nextEvent = getNextEvent(this.parsableWebvttData);
                if (nextEvent == 0) {
                    return new com.google.android.exoplayer2.text.webvtt.WebvttSubtitle(arrayList2);
                }
                if (nextEvent == 1) {
                    skipComment(this.parsableWebvttData);
                } else if (nextEvent == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new com.google.android.exoplayer2.text.SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.parsableWebvttData.readLine();
                    arrayList.addAll(this.cssParser.parseBlock(this.parsableWebvttData));
                } else if (nextEvent == 3 && (cue = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseCue(this.parsableWebvttData, arrayList)) != null) {
                    arrayList2.add(cue);
                }
            }
        } catch (com.google.android.exoplayer2.ParserException e2) {
            throw new com.google.android.exoplayer2.text.SubtitleDecoderException(e2);
        }
    }
}
