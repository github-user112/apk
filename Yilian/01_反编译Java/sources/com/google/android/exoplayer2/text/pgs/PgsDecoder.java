package com.google.android.exoplayer2.text.pgs;

/* loaded from: classes.dex */
public final class PgsDecoder extends com.google.android.exoplayer2.text.SimpleSubtitleDecoder {
    public static final byte INFLATE_HEADER = 120;
    public static final int SECTION_TYPE_BITMAP_PICTURE = 21;
    public static final int SECTION_TYPE_END = 128;
    public static final int SECTION_TYPE_IDENTIFIER = 22;
    public static final int SECTION_TYPE_PALETTE = 20;
    public final com.google.android.exoplayer2.util.ParsableByteArray buffer;
    public final com.google.android.exoplayer2.text.pgs.PgsDecoder.CueBuilder cueBuilder;
    public final com.google.android.exoplayer2.util.ParsableByteArray inflatedBuffer;
    public java.util.zip.Inflater inflater;

    public static final class CueBuilder {
        public int bitmapHeight;
        public int bitmapWidth;
        public int bitmapX;
        public int bitmapY;
        public boolean colorsSet;
        public int planeHeight;
        public int planeWidth;
        public final com.google.android.exoplayer2.util.ParsableByteArray bitmapData = new com.google.android.exoplayer2.util.ParsableByteArray();
        public final int[] colors = new int[256];

        /* JADX INFO: Access modifiers changed from: private */
        public void parseBitmapSection(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
            int unsignedInt24;
            if (i < 4) {
                return;
            }
            parsableByteArray.skipBytes(3);
            int i2 = i - 4;
            if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
                if (i2 < 7 || (unsignedInt24 = parsableByteArray.readUnsignedInt24()) < 4) {
                    return;
                }
                this.bitmapWidth = parsableByteArray.readUnsignedShort();
                this.bitmapHeight = parsableByteArray.readUnsignedShort();
                this.bitmapData.reset(unsignedInt24 - 4);
                i2 -= 7;
            }
            int position = this.bitmapData.getPosition();
            int iLimit = this.bitmapData.limit();
            if (position >= iLimit || i2 <= 0) {
                return;
            }
            int iMin = java.lang.Math.min(i2, iLimit - position);
            parsableByteArray.readBytes(this.bitmapData.getData(), position, iMin);
            this.bitmapData.setPosition(position + iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseIdentifierSection(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
            if (i < 19) {
                return;
            }
            this.planeWidth = parsableByteArray.readUnsignedShort();
            this.planeHeight = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(11);
            this.bitmapX = parsableByteArray.readUnsignedShort();
            this.bitmapY = parsableByteArray.readUnsignedShort();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parsePaletteSection(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
            if (i % 5 != 2) {
                return;
            }
            parsableByteArray.skipBytes(2);
            java.util.Arrays.fill(this.colors, 0);
            int i2 = i / 5;
            int i3 = 0;
            while (i3 < i2) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                int unsignedByte3 = parsableByteArray.readUnsignedByte();
                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                double d2 = unsignedByte2;
                double d3 = unsignedByte3 - 128;
                java.lang.Double.isNaN(d3);
                java.lang.Double.isNaN(d2);
                int i4 = (int) ((1.402d * d3) + d2);
                int i5 = i3;
                double d4 = unsignedByte4 - 128;
                java.lang.Double.isNaN(d4);
                java.lang.Double.isNaN(d2);
                java.lang.Double.isNaN(d3);
                java.lang.Double.isNaN(d4);
                java.lang.Double.isNaN(d2);
                this.colors[unsignedByte] = com.google.android.exoplayer2.util.Util.constrainValue((int) ((d4 * 1.772d) + d2), 0, 255) | (com.google.android.exoplayer2.util.Util.constrainValue((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255) << 8) | (unsignedByte5 << 24) | (com.google.android.exoplayer2.util.Util.constrainValue(i4, 0, 255) << 16);
                i3 = i5 + 1;
            }
            this.colorsSet = true;
        }

        public com.google.android.exoplayer2.text.Cue build() {
            int unsignedByte;
            if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.limit() == 0 || this.bitmapData.getPosition() != this.bitmapData.limit() || !this.colorsSet) {
                return null;
            }
            this.bitmapData.setPosition(0);
            int i = this.bitmapWidth * this.bitmapHeight;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int unsignedByte2 = this.bitmapData.readUnsignedByte();
                if (unsignedByte2 != 0) {
                    unsignedByte = i2 + 1;
                    iArr[i2] = this.colors[unsignedByte2];
                } else {
                    int unsignedByte3 = this.bitmapData.readUnsignedByte();
                    if (unsignedByte3 != 0) {
                        unsignedByte = ((unsignedByte3 & 64) == 0 ? unsignedByte3 & 63 : ((unsignedByte3 & 63) << 8) | this.bitmapData.readUnsignedByte()) + i2;
                        java.util.Arrays.fill(iArr, i2, unsignedByte, (unsignedByte3 & 128) == 0 ? 0 : this.colors[this.bitmapData.readUnsignedByte()]);
                    }
                }
                i2 = unsignedByte;
            }
            return new com.google.android.exoplayer2.text.Cue.Builder().setBitmap(android.graphics.Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, android.graphics.Bitmap.Config.ARGB_8888)).setPosition(this.bitmapX / this.planeWidth).setPositionAnchor(0).setLine(this.bitmapY / this.planeHeight, 0).setLineAnchor(0).setSize(this.bitmapWidth / this.planeWidth).setBitmapHeight(this.bitmapHeight / this.planeHeight).build();
        }

        public void reset() {
            this.planeWidth = 0;
            this.planeHeight = 0;
            this.bitmapX = 0;
            this.bitmapY = 0;
            this.bitmapWidth = 0;
            this.bitmapHeight = 0;
            this.bitmapData.reset(0);
            this.colorsSet = false;
        }
    }

    public PgsDecoder() {
        super("PgsDecoder");
        this.buffer = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.inflatedBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();
        this.cueBuilder = new com.google.android.exoplayer2.text.pgs.PgsDecoder.CueBuilder();
    }

    private void maybeInflateData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() <= 0 || parsableByteArray.peekUnsignedByte() != 120) {
            return;
        }
        if (this.inflater == null) {
            this.inflater = new java.util.zip.Inflater();
        }
        if (com.google.android.exoplayer2.util.Util.inflate(parsableByteArray, this.inflatedBuffer, this.inflater)) {
            parsableByteArray.reset(this.inflatedBuffer.getData(), this.inflatedBuffer.limit());
        }
    }

    public static com.google.android.exoplayer2.text.Cue readNextSection(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.text.pgs.PgsDecoder.CueBuilder cueBuilder) {
        int iLimit = parsableByteArray.limit();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition() + unsignedShort;
        com.google.android.exoplayer2.text.Cue cueBuild = null;
        if (position > iLimit) {
            parsableByteArray.setPosition(iLimit);
            return null;
        }
        if (unsignedByte != 128) {
            switch (unsignedByte) {
                case 20:
                    cueBuilder.parsePaletteSection(parsableByteArray, unsignedShort);
                    break;
                case 21:
                    cueBuilder.parseBitmapSection(parsableByteArray, unsignedShort);
                    break;
                case 22:
                    cueBuilder.parseIdentifierSection(parsableByteArray, unsignedShort);
                    break;
            }
        } else {
            cueBuild = cueBuilder.build();
            cueBuilder.reset();
        }
        parsableByteArray.setPosition(position);
        return cueBuild;
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    public com.google.android.exoplayer2.text.Subtitle decode(byte[] bArr, int i, boolean z) {
        this.buffer.reset(bArr, i);
        maybeInflateData(this.buffer);
        this.cueBuilder.reset();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (this.buffer.bytesLeft() >= 3) {
            com.google.android.exoplayer2.text.Cue nextSection = readNextSection(this.buffer, this.cueBuilder);
            if (nextSection != null) {
                arrayList.add(nextSection);
            }
        }
        return new com.google.android.exoplayer2.text.pgs.PgsSubtitle(java.util.Collections.unmodifiableList(arrayList));
    }
}
