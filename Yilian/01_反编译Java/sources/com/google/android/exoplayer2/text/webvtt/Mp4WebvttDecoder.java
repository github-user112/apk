package com.google.android.exoplayer2.text.webvtt;

/* loaded from: classes.dex */
public final class Mp4WebvttDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final int BOX_HEADER_SIZE = 8;
    public static final int TYPE_payl = 1885436268;
    public static final int TYPE_sttg = 1937011815;
    public static final int TYPE_vttc = 1987343459;
    public final com.google.android.exoplayer2.util.ParsableByteArray sampleData;

    public Mp4WebvttDecoder() {
        super("Mp4WebvttDecoder");
        this.sampleData = new com.google.android.exoplayer2.util.ParsableByteArray();
    }

    public static com.google.android.exoplayer2.text.Cue parseVttCueBox(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        java.lang.CharSequence cueText = null;
        com.google.android.exoplayer2.text.Cue.Builder cueSettingsList = null;
        while (i > 0) {
            if (i < 8) {
                throw new com.google.android.exoplayer2.text.SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int i2 = parsableByteArray.readInt();
            int i3 = parsableByteArray.readInt();
            int i4 = i2 - 8;
            java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(parsableByteArray.getData(), parsableByteArray.getPosition(), i4);
            parsableByteArray.skipBytes(i4);
            i = (i - 8) - i4;
            if (i3 == 1937011815) {
                cueSettingsList = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseCueSettingsList(strFromUtf8Bytes);
            } else if (i3 == 1885436268) {
                cueText = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.parseCueText(null, strFromUtf8Bytes.trim(), java.util.Collections.emptyList());
            }
        }
        if (cueText == null) {
            cueText = "";
        }
        return cueSettingsList != null ? cueSettingsList.setText(cueText).build() : com.google.android.exoplayer2.text.webvtt.WebvttCueParser.newCueForText(cueText);
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        this.sampleData.reset(bArr, i);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (this.sampleData.bytesLeft() > 0) {
            if (this.sampleData.bytesLeft() < 8) {
                throw new com.google.android.exoplayer2.text.SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int i2 = this.sampleData.readInt();
            if (this.sampleData.readInt() == 1987343459) {
                arrayList.add(parseVttCueBox(this.sampleData, i2 - 8));
            } else {
                this.sampleData.skipBytes(i2 - 8);
            }
        }
        return new com.google.android.exoplayer2.text.webvtt.Mp4WebvttSubtitle(arrayList);
    }
}
