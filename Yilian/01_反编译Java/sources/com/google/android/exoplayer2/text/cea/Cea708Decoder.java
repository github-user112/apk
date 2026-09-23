package com.google.android.exoplayer2.text.cea;

/* loaded from: classes.dex */
public final class Cea708Decoder extends com.google.android.exoplayer2.text.cea.CeaDecoder {
    public static final int CC_VALID_FLAG = 4;
    public static final int CHARACTER_BIG_CARONS = 42;
    public static final int CHARACTER_BIG_OE = 44;
    public static final int CHARACTER_BOLD_BULLET = 53;
    public static final int CHARACTER_CLOSE_DOUBLE_QUOTE = 52;
    public static final int CHARACTER_CLOSE_SINGLE_QUOTE = 50;
    public static final int CHARACTER_DIAERESIS_Y = 63;
    public static final int CHARACTER_ELLIPSIS = 37;
    public static final int CHARACTER_FIVE_EIGHTHS = 120;
    public static final int CHARACTER_HORIZONTAL_BORDER = 125;
    public static final int CHARACTER_LOWER_LEFT_BORDER = 124;
    public static final int CHARACTER_LOWER_RIGHT_BORDER = 126;
    public static final int CHARACTER_MN = 127;
    public static final int CHARACTER_NBTSP = 33;
    public static final int CHARACTER_ONE_EIGHTH = 118;
    public static final int CHARACTER_OPEN_DOUBLE_QUOTE = 51;
    public static final int CHARACTER_OPEN_SINGLE_QUOTE = 49;
    public static final int CHARACTER_SEVEN_EIGHTHS = 121;
    public static final int CHARACTER_SM = 61;
    public static final int CHARACTER_SMALL_CARONS = 58;
    public static final int CHARACTER_SMALL_OE = 60;
    public static final int CHARACTER_SOLID_BLOCK = 48;
    public static final int CHARACTER_THREE_EIGHTHS = 119;
    public static final int CHARACTER_TM = 57;
    public static final int CHARACTER_TSP = 32;
    public static final int CHARACTER_UPPER_LEFT_BORDER = 127;
    public static final int CHARACTER_UPPER_RIGHT_BORDER = 123;
    public static final int CHARACTER_VERTICAL_BORDER = 122;
    public static final int COMMAND_BS = 8;
    public static final int COMMAND_CLW = 136;
    public static final int COMMAND_CR = 13;
    public static final int COMMAND_CW0 = 128;
    public static final int COMMAND_CW1 = 129;
    public static final int COMMAND_CW2 = 130;
    public static final int COMMAND_CW3 = 131;
    public static final int COMMAND_CW4 = 132;
    public static final int COMMAND_CW5 = 133;
    public static final int COMMAND_CW6 = 134;
    public static final int COMMAND_CW7 = 135;
    public static final int COMMAND_DF0 = 152;
    public static final int COMMAND_DF1 = 153;
    public static final int COMMAND_DF2 = 154;
    public static final int COMMAND_DF3 = 155;
    public static final int COMMAND_DF4 = 156;
    public static final int COMMAND_DF5 = 157;
    public static final int COMMAND_DF6 = 158;
    public static final int COMMAND_DF7 = 159;
    public static final int COMMAND_DLC = 142;
    public static final int COMMAND_DLW = 140;
    public static final int COMMAND_DLY = 141;
    public static final int COMMAND_DSW = 137;
    public static final int COMMAND_ETX = 3;
    public static final int COMMAND_EXT1 = 16;
    public static final int COMMAND_EXT1_END = 23;
    public static final int COMMAND_EXT1_START = 17;
    public static final int COMMAND_FF = 12;
    public static final int COMMAND_HCR = 14;
    public static final int COMMAND_HDW = 138;
    public static final int COMMAND_NUL = 0;
    public static final int COMMAND_P16_END = 31;
    public static final int COMMAND_P16_START = 24;
    public static final int COMMAND_RST = 143;
    public static final int COMMAND_SPA = 144;
    public static final int COMMAND_SPC = 145;
    public static final int COMMAND_SPL = 146;
    public static final int COMMAND_SWA = 151;
    public static final int COMMAND_TGW = 139;
    public static final int DTVCC_PACKET_DATA = 2;
    public static final int DTVCC_PACKET_START = 3;
    public static final int GROUP_C0_END = 31;
    public static final int GROUP_C1_END = 159;
    public static final int GROUP_C2_END = 31;
    public static final int GROUP_C3_END = 159;
    public static final int GROUP_G0_END = 127;
    public static final int GROUP_G1_END = 255;
    public static final int GROUP_G2_END = 127;
    public static final int GROUP_G3_END = 255;
    public static final int NUM_WINDOWS = 8;
    public static final java.lang.String TAG = "Cea708Decoder";
    public final com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder[] cueInfoBuilders;
    public java.util.List<com.google.android.exoplayer2.text.Cue> cues;
    public com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder currentCueInfoBuilder;
    public com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket currentDtvCcPacket;
    public int currentWindow;
    public final boolean isWideAspectRatio;
    public java.util.List<com.google.android.exoplayer2.text.Cue> lastCues;
    public final int selectedServiceNumber;
    public final com.google.android.exoplayer2.util.ParsableByteArray ccData = new com.google.android.exoplayer2.util.ParsableByteArray();
    public final com.google.android.exoplayer2.util.ParsableBitArray serviceBlockPacket = new com.google.android.exoplayer2.util.ParsableBitArray();
    public int previousSequenceNumber = -1;

    public static final class Cea708CueInfo {
        public static final java.util.Comparator<com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo> LEAST_IMPORTANT_FIRST = new java.util.Comparator() { // from class: e.c.a.a.o2.b.a
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                return defpackage.a.a(((com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo) obj2).priority, ((com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo) obj).priority);
            }
        };
        public final com.google.android.exoplayer2.text.Cue cue;
        public final int priority;

        public Cea708CueInfo(java.lang.CharSequence charSequence, android.text.Layout.Alignment alignment, float f2, int i, int i2, float f3, int i3, float f4, boolean z, int i4, int i5) {
            com.google.android.exoplayer2.text.Cue.Builder size = new com.google.android.exoplayer2.text.Cue.Builder().setText(charSequence).setTextAlignment(alignment).setLine(f2, i).setLineAnchor(i2).setPosition(f3).setPositionAnchor(i3).setSize(f4);
            if (z) {
                size.setWindowColor(i4);
            }
            this.cue = size.build();
            this.priority = i5;
        }
    }

    public static final class CueInfoBuilder {
        public static final int BORDER_AND_EDGE_TYPE_NONE = 0;
        public static final int BORDER_AND_EDGE_TYPE_UNIFORM = 3;
        public static final int COLOR_TRANSPARENT;
        public static final int DEFAULT_PRIORITY = 4;
        public static final int DIRECTION_BOTTOM_TO_TOP = 3;
        public static final int DIRECTION_LEFT_TO_RIGHT = 0;
        public static final int DIRECTION_RIGHT_TO_LEFT = 1;
        public static final int DIRECTION_TOP_TO_BOTTOM = 2;
        public static final int HORIZONTAL_SIZE = 209;
        public static final int JUSTIFICATION_CENTER = 2;
        public static final int JUSTIFICATION_FULL = 3;
        public static final int JUSTIFICATION_LEFT = 0;
        public static final int JUSTIFICATION_RIGHT = 1;
        public static final int MAXIMUM_ROW_COUNT = 15;
        public static final int PEN_FONT_STYLE_DEFAULT = 0;
        public static final int PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS = 3;
        public static final int PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS = 1;
        public static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS = 4;
        public static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS = 2;
        public static final int PEN_OFFSET_NORMAL = 1;
        public static final int PEN_SIZE_STANDARD = 1;
        public static final int[] PEN_STYLE_BACKGROUND;
        public static final int[] PEN_STYLE_EDGE_TYPE;
        public static final int[] PEN_STYLE_FONT_STYLE;
        public static final int RELATIVE_CUE_SIZE = 99;
        public static final int VERTICAL_SIZE = 74;
        public static final int[] WINDOW_STYLE_FILL;
        public static final int[] WINDOW_STYLE_JUSTIFICATION;
        public static final int[] WINDOW_STYLE_PRINT_DIRECTION;
        public static final int[] WINDOW_STYLE_SCROLL_DIRECTION;
        public static final boolean[] WINDOW_STYLE_WORD_WRAP;
        public int anchorId;
        public int backgroundColor;
        public int backgroundColorStartPosition;
        public boolean defined;
        public int foregroundColor;
        public int foregroundColorStartPosition;
        public int horizontalAnchor;
        public int italicsStartPosition;
        public int justification;
        public int penStyleId;
        public int priority;
        public boolean relativePositioning;
        public int row;
        public int rowCount;
        public boolean rowLock;
        public int underlineStartPosition;
        public int verticalAnchor;
        public boolean visible;
        public int windowFillColor;
        public int windowStyleId;
        public static final int COLOR_SOLID_WHITE = getArgbColorFromCeaColor(2, 2, 2, 0);
        public static final int COLOR_SOLID_BLACK = getArgbColorFromCeaColor(0, 0, 0, 0);
        public final java.util.List<android.text.SpannableString> rolledUpCaptions = new java.util.ArrayList();
        public final android.text.SpannableStringBuilder captionStringBuilder = new android.text.SpannableStringBuilder();

        static {
            int argbColorFromCeaColor = getArgbColorFromCeaColor(0, 0, 0, 3);
            COLOR_TRANSPARENT = argbColorFromCeaColor;
            WINDOW_STYLE_JUSTIFICATION = new int[]{0, 0, 0, 0, 0, 2, 0};
            WINDOW_STYLE_PRINT_DIRECTION = new int[]{0, 0, 0, 0, 0, 0, 2};
            WINDOW_STYLE_SCROLL_DIRECTION = new int[]{3, 3, 3, 3, 3, 3, 1};
            WINDOW_STYLE_WORD_WRAP = new boolean[]{false, false, false, true, true, true, false};
            int i = COLOR_SOLID_BLACK;
            WINDOW_STYLE_FILL = new int[]{i, argbColorFromCeaColor, i, i, argbColorFromCeaColor, i, i};
            PEN_STYLE_FONT_STYLE = new int[]{0, 1, 2, 3, 4, 3, 4};
            PEN_STYLE_EDGE_TYPE = new int[]{0, 0, 0, 0, 0, 3, 3};
            PEN_STYLE_BACKGROUND = new int[]{i, i, i, i, i, argbColorFromCeaColor, argbColorFromCeaColor};
        }

        public CueInfoBuilder() {
            reset();
        }

        public static int getArgbColorFromCeaColor(int i, int i2, int i3) {
            return getArgbColorFromCeaColor(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getArgbColorFromCeaColor(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.google.android.exoplayer2.util.Assertions.checkIndex(r4, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r5, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r6, r0, r1)
                com.google.android.exoplayer2.util.Assertions.checkIndex(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = 0
                goto L23
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L23
            L21:
                r7 = 255(0xff, float:3.57E-43)
            L23:
                if (r4 <= r1) goto L28
                r4 = 255(0xff, float:3.57E-43)
                goto L29
            L28:
                r4 = 0
            L29:
                if (r5 <= r1) goto L2e
                r5 = 255(0xff, float:3.57E-43)
                goto L2f
            L2e:
                r5 = 0
            L2f:
                if (r6 <= r1) goto L33
                r0 = 255(0xff, float:3.57E-43)
            L33:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(int, int, int, int):int");
        }

        public void append(char c2) {
            if (c2 != '\n') {
                this.captionStringBuilder.append(c2);
                return;
            }
            this.rolledUpCaptions.add(buildSpannableString());
            this.captionStringBuilder.clear();
            if (this.italicsStartPosition != -1) {
                this.italicsStartPosition = 0;
            }
            if (this.underlineStartPosition != -1) {
                this.underlineStartPosition = 0;
            }
            if (this.foregroundColorStartPosition != -1) {
                this.foregroundColorStartPosition = 0;
            }
            if (this.backgroundColorStartPosition != -1) {
                this.backgroundColorStartPosition = 0;
            }
            while (true) {
                if ((!this.rowLock || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                    return;
                } else {
                    this.rolledUpCaptions.remove(0);
                }
            }
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
            }
        }

        public com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo build() {
            android.text.Layout.Alignment alignment;
            float f2;
            float f3;
            if (isEmpty()) {
                return null;
            }
            android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder();
            for (int i = 0; i < this.rolledUpCaptions.size(); i++) {
                spannableStringBuilder.append((java.lang.CharSequence) this.rolledUpCaptions.get(i));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((java.lang.CharSequence) buildSpannableString());
            int i2 = this.justification;
            if (i2 == 0) {
                alignment = android.text.Layout.Alignment.ALIGN_NORMAL;
            } else if (i2 == 1) {
                alignment = android.text.Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    throw new java.lang.IllegalArgumentException(e.a.c.a.a.F(43, "Unexpected justification value: ", this.justification));
                }
                alignment = android.text.Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = android.text.Layout.Alignment.ALIGN_CENTER;
            }
            android.text.Layout.Alignment alignment2 = alignment;
            if (this.relativePositioning) {
                f2 = this.horizontalAnchor / 99.0f;
                f3 = this.verticalAnchor / 99.0f;
            } else {
                f2 = this.horizontalAnchor / 209.0f;
                f3 = this.verticalAnchor / 74.0f;
            }
            float f4 = (f2 * 0.9f) + 0.05f;
            float f5 = (f3 * 0.9f) + 0.05f;
            int i3 = this.anchorId;
            int i4 = i3 / 3 == 0 ? 0 : i3 / 3 == 1 ? 1 : 2;
            int i5 = this.anchorId;
            return new com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo(spannableStringBuilder, alignment2, f5, 0, i4, f4, i5 % 3 == 0 ? 0 : i5 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.windowFillColor != COLOR_SOLID_BLACK, this.windowFillColor, this.priority);
        }

        public android.text.SpannableString buildSpannableString() {
            android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.italicsStartPosition != -1) {
                    spannableStringBuilder.setSpan(new android.text.style.StyleSpan(2), this.italicsStartPosition, length, 33);
                }
                if (this.underlineStartPosition != -1) {
                    spannableStringBuilder.setSpan(new android.text.style.UnderlineSpan(), this.underlineStartPosition, length, 33);
                }
                if (this.foregroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new android.text.style.ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, length, 33);
                }
                if (this.backgroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new android.text.style.BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, length, 33);
                }
            }
            return new android.text.SpannableString(spannableStringBuilder);
        }

        public void clear() {
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.clear();
            this.italicsStartPosition = -1;
            this.underlineStartPosition = -1;
            this.foregroundColorStartPosition = -1;
            this.backgroundColorStartPosition = -1;
            this.row = 0;
        }

        public void defineWindow(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.defined = true;
            this.visible = z;
            this.rowLock = z2;
            this.priority = i;
            this.relativePositioning = z4;
            this.verticalAnchor = i2;
            this.horizontalAnchor = i3;
            this.anchorId = i6;
            int i9 = i4 + 1;
            if (this.rowCount != i9) {
                this.rowCount = i9;
                while (true) {
                    if ((!z2 || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                        break;
                    } else {
                        this.rolledUpCaptions.remove(0);
                    }
                }
            }
            if (i7 != 0 && this.windowStyleId != i7) {
                this.windowStyleId = i7;
                int i10 = i7 - 1;
                setWindowAttributes(WINDOW_STYLE_FILL[i10], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i10], 0, WINDOW_STYLE_PRINT_DIRECTION[i10], WINDOW_STYLE_SCROLL_DIRECTION[i10], WINDOW_STYLE_JUSTIFICATION[i10]);
            }
            if (i8 == 0 || this.penStyleId == i8) {
                return;
            }
            this.penStyleId = i8;
            int i11 = i8 - 1;
            setPenAttributes(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i11], PEN_STYLE_FONT_STYLE[i11]);
            setPenColor(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i11], COLOR_SOLID_BLACK);
        }

        public boolean isDefined() {
            return this.defined;
        }

        public boolean isEmpty() {
            return !isDefined() || (this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0);
        }

        public boolean isVisible() {
            return this.visible;
        }

        public void reset() {
            clear();
            this.defined = false;
            this.visible = false;
            this.priority = 4;
            this.relativePositioning = false;
            this.verticalAnchor = 0;
            this.horizontalAnchor = 0;
            this.anchorId = 0;
            this.rowCount = 15;
            this.rowLock = true;
            this.justification = 0;
            this.windowStyleId = 0;
            this.penStyleId = 0;
            int i = COLOR_SOLID_BLACK;
            this.windowFillColor = i;
            this.foregroundColor = COLOR_SOLID_WHITE;
            this.backgroundColor = i;
        }

        public void setPenAttributes(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.italicsStartPosition != -1) {
                if (!z) {
                    this.captionStringBuilder.setSpan(new android.text.style.StyleSpan(2), this.italicsStartPosition, this.captionStringBuilder.length(), 33);
                    this.italicsStartPosition = -1;
                }
            } else if (z) {
                this.italicsStartPosition = this.captionStringBuilder.length();
            }
            if (this.underlineStartPosition == -1) {
                if (z2) {
                    this.underlineStartPosition = this.captionStringBuilder.length();
                }
            } else {
                if (z2) {
                    return;
                }
                this.captionStringBuilder.setSpan(new android.text.style.UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
                this.underlineStartPosition = -1;
            }
        }

        public void setPenColor(int i, int i2, int i3) {
            if (this.foregroundColorStartPosition != -1 && this.foregroundColor != i) {
                this.captionStringBuilder.setSpan(new android.text.style.ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i != COLOR_SOLID_WHITE) {
                this.foregroundColorStartPosition = this.captionStringBuilder.length();
                this.foregroundColor = i;
            }
            if (this.backgroundColorStartPosition != -1 && this.backgroundColor != i2) {
                this.captionStringBuilder.setSpan(new android.text.style.BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i2 != COLOR_SOLID_BLACK) {
                this.backgroundColorStartPosition = this.captionStringBuilder.length();
                this.backgroundColor = i2;
            }
        }

        public void setPenLocation(int i, int i2) {
            if (this.row != i) {
                append('\n');
            }
            this.row = i;
        }

        public void setVisibility(boolean z) {
            this.visible = z;
        }

        public void setWindowAttributes(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.windowFillColor = i;
            this.justification = i6;
        }
    }

    public static final class DtvCcPacket {
        public int currentIndex = 0;
        public final byte[] packetData;
        public final int packetSize;
        public final int sequenceNumber;

        public DtvCcPacket(int i, int i2) {
            this.sequenceNumber = i;
            this.packetSize = i2;
            this.packetData = new byte[(i2 * 2) - 1];
        }
    }

    public Cea708Decoder(int i, java.util.List<byte[]> list) {
        this.selectedServiceNumber = i == -1 ? 1 : i;
        this.isWideAspectRatio = list != null && com.google.android.exoplayer2.util.CodecSpecificDataUtil.parseCea708InitializationData(list);
        this.cueInfoBuilders = new com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.cueInfoBuilders[i2] = new com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder();
        }
        this.currentCueInfoBuilder = this.cueInfoBuilders[0];
    }

    private void finalizeCurrentPacket() {
        if (this.currentDtvCcPacket == null) {
            return;
        }
        processCurrentPacket();
        this.currentDtvCcPacket = null;
    }

    private java.util.List<com.google.android.exoplayer2.text.Cue> getDisplayCues() {
        com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo cea708CueInfoBuild;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.cueInfoBuilders[i].isEmpty() && this.cueInfoBuilders[i].isVisible() && (cea708CueInfoBuild = this.cueInfoBuilders[i].build()) != null) {
                arrayList.add(cea708CueInfoBuild);
            }
        }
        java.util.Collections.sort(arrayList, com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo.LEAST_IMPORTANT_FIRST);
        java.util.ArrayList arrayList2 = new java.util.ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((com.google.android.exoplayer2.text.cea.Cea708Decoder.Cea708CueInfo) arrayList.get(i2)).cue);
        }
        return java.util.Collections.unmodifiableList(arrayList2);
    }

    private void handleC0Command(int i) {
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray;
        if (i != 0) {
            if (i == 3) {
                this.cues = getDisplayCues();
            }
            int i2 = 8;
            if (i == 8) {
                this.currentCueInfoBuilder.backspace();
                return;
            }
            switch (i) {
                case 12:
                    resetCueBuilders();
                    break;
                case 13:
                    this.currentCueInfoBuilder.append('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i >= 17 && i <= 23) {
                        e.a.c.a.a.t(55, "Currently unsupported COMMAND_EXT1 Command: ", i, TAG);
                        parsableBitArray = this.serviceBlockPacket;
                    } else if (i < 24 || i > 31) {
                        e.a.c.a.a.t(31, "Invalid C0 command: ", i, TAG);
                        break;
                    } else {
                        e.a.c.a.a.t(54, "Currently unsupported COMMAND_P16 Command: ", i, TAG);
                        parsableBitArray = this.serviceBlockPacket;
                        i2 = 16;
                    }
                    parsableBitArray.skipBits(i2);
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void handleC1Command(int i) {
        com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder cueInfoBuilder;
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray;
        int i2 = 16;
        int i3 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i4 = i - 128;
                if (this.currentWindow != i4) {
                    this.currentWindow = i4;
                    cueInfoBuilder = this.cueInfoBuilders[i4];
                    this.currentCueInfoBuilder = cueInfoBuilder;
                    break;
                }
                break;
            case 136:
                while (i3 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueInfoBuilders[8 - i3].clear();
                    }
                    i3++;
                }
                break;
            case 137:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueInfoBuilders[8 - i5].setVisibility(true);
                    }
                }
                break;
            case 138:
                while (i3 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueInfoBuilders[8 - i3].setVisibility(false);
                    }
                    i3++;
                }
                break;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueInfoBuilders[8 - i6].setVisibility(!r0.isVisible());
                    }
                }
                break;
            case 140:
                while (i3 <= 8) {
                    if (this.serviceBlockPacket.readBit()) {
                        this.cueInfoBuilders[8 - i3].reset();
                    }
                    i3++;
                }
                break;
            case 141:
                this.serviceBlockPacket.skipBits(8);
                break;
            case 142:
                break;
            case 143:
                resetCueBuilders();
                break;
            case 144:
                if (this.currentCueInfoBuilder.isDefined()) {
                    handleSetPenAttributes();
                    break;
                }
                parsableBitArray = this.serviceBlockPacket;
                parsableBitArray.skipBits(i2);
                break;
            case 145:
                if (this.currentCueInfoBuilder.isDefined()) {
                    handleSetPenColor();
                    break;
                } else {
                    parsableBitArray = this.serviceBlockPacket;
                    i2 = 24;
                    parsableBitArray.skipBits(i2);
                    break;
                }
            case 146:
                if (this.currentCueInfoBuilder.isDefined()) {
                    handleSetPenLocation();
                    break;
                }
                parsableBitArray = this.serviceBlockPacket;
                parsableBitArray.skipBits(i2);
                break;
            case com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT /* 147 */:
            case 148:
            case 149:
            case 150:
            default:
                e.a.c.a.a.t(31, "Invalid C1 command: ", i, TAG);
                break;
            case 151:
                if (this.currentCueInfoBuilder.isDefined()) {
                    handleSetWindowAttributes();
                    break;
                } else {
                    parsableBitArray = this.serviceBlockPacket;
                    i2 = 32;
                    parsableBitArray.skipBits(i2);
                    break;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i7 = i - 152;
                handleDefineWindow(i7);
                if (this.currentWindow != i7) {
                    this.currentWindow = i7;
                    cueInfoBuilder = this.cueInfoBuilders[i7];
                    this.currentCueInfoBuilder = cueInfoBuilder;
                    break;
                }
                break;
        }
    }

    private void handleC2Command(int i) {
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray;
        int i2;
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            parsableBitArray = this.serviceBlockPacket;
            i2 = 8;
        } else if (i <= 23) {
            parsableBitArray = this.serviceBlockPacket;
            i2 = 16;
        } else {
            if (i > 31) {
                return;
            }
            parsableBitArray = this.serviceBlockPacket;
            i2 = 24;
        }
        parsableBitArray.skipBits(i2);
    }

    private void handleC3Command(int i) {
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray;
        int i2;
        if (i <= 135) {
            parsableBitArray = this.serviceBlockPacket;
            i2 = 32;
        } else {
            if (i > 143) {
                if (i <= 159) {
                    this.serviceBlockPacket.skipBits(2);
                    this.serviceBlockPacket.skipBits(this.serviceBlockPacket.readBits(6) * 8);
                    return;
                }
                return;
            }
            parsableBitArray = this.serviceBlockPacket;
            i2 = 40;
        }
        parsableBitArray.skipBits(i2);
    }

    private void handleDefineWindow(int i) {
        com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder cueInfoBuilder = this.cueInfoBuilders[i];
        this.serviceBlockPacket.skipBits(2);
        boolean bit = this.serviceBlockPacket.readBit();
        boolean bit2 = this.serviceBlockPacket.readBit();
        boolean bit3 = this.serviceBlockPacket.readBit();
        int bits = this.serviceBlockPacket.readBits(3);
        boolean bit4 = this.serviceBlockPacket.readBit();
        int bits2 = this.serviceBlockPacket.readBits(7);
        int bits3 = this.serviceBlockPacket.readBits(8);
        int bits4 = this.serviceBlockPacket.readBits(4);
        int bits5 = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        int bits6 = this.serviceBlockPacket.readBits(6);
        this.serviceBlockPacket.skipBits(2);
        cueInfoBuilder.defineWindow(bit, bit2, bit3, bits, bit4, bits2, bits3, bits5, bits6, bits4, this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleG0Character(int i) {
        if (i == 127) {
            this.currentCueInfoBuilder.append((char) 9835);
        } else {
            this.currentCueInfoBuilder.append((char) (i & 255));
        }
    }

    private void handleG1Character(int i) {
        this.currentCueInfoBuilder.append((char) (i & 255));
    }

    private void handleG2Character(int i) {
        com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder cueInfoBuilder;
        char c2 = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE;
        if (i == 32) {
            cueInfoBuilder = this.currentCueInfoBuilder;
        } else if (i == 33) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 160;
        } else if (i == 37) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 8230;
        } else if (i == 42) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 352;
        } else if (i == 44) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 338;
        } else if (i == 63) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 376;
        } else if (i == 57) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 8482;
        } else if (i == 58) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 353;
        } else if (i == 60) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 339;
        } else if (i != 61) {
            switch (i) {
                case 48:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 9608;
                    break;
                case 49:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 8216;
                    break;
                case 50:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 8217;
                    break;
                case 51:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 8220;
                    break;
                case 52:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 8221;
                    break;
                case 53:
                    cueInfoBuilder = this.currentCueInfoBuilder;
                    c2 = 8226;
                    break;
                default:
                    switch (i) {
                        case 118:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 8539;
                            break;
                        case 119:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 8540;
                            break;
                        case 120:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 8541;
                            break;
                        case 121:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 8542;
                            break;
                        case 122:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = com.umeng.commonsdk.debug.UMLog.HORIZONTAL_LINE;
                            break;
                        case 123:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 9488;
                            break;
                        case 124:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = com.umeng.commonsdk.debug.UMLog.BOTTOM_LEFT_CORNER;
                            break;
                        case 125:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 9472;
                            break;
                        case 126:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = 9496;
                            break;
                        case 127:
                            cueInfoBuilder = this.currentCueInfoBuilder;
                            c2 = com.umeng.commonsdk.debug.UMLog.TOP_LEFT_CORNER;
                            break;
                        default:
                            e.a.c.a.a.t(33, "Invalid G2 character: ", i, TAG);
                            return;
                    }
            }
        } else {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 8480;
        }
        cueInfoBuilder.append(c2);
    }

    private void handleG3Character(int i) {
        com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder cueInfoBuilder;
        char c2;
        if (i == 160) {
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = 13252;
        } else {
            e.a.c.a.a.t(33, "Invalid G3 character: ", i, TAG);
            cueInfoBuilder = this.currentCueInfoBuilder;
            c2 = '_';
        }
        cueInfoBuilder.append(c2);
    }

    private void handleSetPenAttributes() {
        this.currentCueInfoBuilder.setPenAttributes(this.serviceBlockPacket.readBits(4), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBit(), this.serviceBlockPacket.readBits(3), this.serviceBlockPacket.readBits(3));
    }

    private void handleSetPenColor() {
        int argbColorFromCeaColor = com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int argbColorFromCeaColor2 = com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        this.serviceBlockPacket.skipBits(2);
        this.currentCueInfoBuilder.setPenColor(argbColorFromCeaColor, argbColorFromCeaColor2, com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2)));
    }

    private void handleSetPenLocation() {
        this.serviceBlockPacket.skipBits(4);
        int bits = this.serviceBlockPacket.readBits(4);
        this.serviceBlockPacket.skipBits(2);
        this.currentCueInfoBuilder.setPenLocation(bits, this.serviceBlockPacket.readBits(6));
    }

    private void handleSetWindowAttributes() {
        int argbColorFromCeaColor = com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        int bits = this.serviceBlockPacket.readBits(2);
        int argbColorFromCeaColor2 = com.google.android.exoplayer2.text.cea.Cea708Decoder.CueInfoBuilder.getArgbColorFromCeaColor(this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2), this.serviceBlockPacket.readBits(2));
        if (this.serviceBlockPacket.readBit()) {
            bits |= 4;
        }
        boolean bit = this.serviceBlockPacket.readBit();
        int bits2 = this.serviceBlockPacket.readBits(2);
        int bits3 = this.serviceBlockPacket.readBits(2);
        int bits4 = this.serviceBlockPacket.readBits(2);
        this.serviceBlockPacket.skipBits(8);
        this.currentCueInfoBuilder.setWindowAttributes(argbColorFromCeaColor, argbColorFromCeaColor2, bit, bits, bits2, bits3, bits4);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"currentDtvCcPacket"})
    private void processCurrentPacket() {
        java.lang.StringBuilder sb;
        java.lang.String str;
        com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket dtvCcPacket = this.currentDtvCcPacket;
        int i = dtvCcPacket.currentIndex;
        int i2 = dtvCcPacket.packetSize;
        if (i != (i2 * 2) - 1) {
            int i3 = dtvCcPacket.sequenceNumber;
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(115);
            sb2.append("DtvCcPacket ended prematurely; size is ");
            sb2.append((i2 * 2) - 1);
            sb2.append(", but current index is ");
            sb2.append(i);
            sb2.append(" (sequence number ");
            sb2.append(i3);
            sb2.append(");");
            com.google.android.exoplayer2.util.Log.d(TAG, sb2.toString());
        }
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = this.serviceBlockPacket;
        com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
        parsableBitArray.reset(dtvCcPacket2.packetData, dtvCcPacket2.currentIndex);
        int bits = this.serviceBlockPacket.readBits(3);
        int bits2 = this.serviceBlockPacket.readBits(5);
        if (bits == 7) {
            this.serviceBlockPacket.skipBits(2);
            bits = this.serviceBlockPacket.readBits(6);
            if (bits < 7) {
                e.a.c.a.a.t(44, "Invalid extended service number: ", bits, TAG);
            }
        }
        if (bits2 == 0) {
            if (bits != 0) {
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder(59);
                sb3.append("serviceNumber is non-zero (");
                sb3.append(bits);
                sb3.append(") when blockSize is 0");
                com.google.android.exoplayer2.util.Log.w(TAG, sb3.toString());
                return;
            }
            return;
        }
        if (bits != this.selectedServiceNumber) {
            return;
        }
        boolean z = false;
        while (this.serviceBlockPacket.bitsLeft() > 0) {
            int bits3 = this.serviceBlockPacket.readBits(8);
            if (bits3 == 16) {
                bits3 = this.serviceBlockPacket.readBits(8);
                if (bits3 <= 31) {
                    handleC2Command(bits3);
                } else {
                    if (bits3 <= 127) {
                        handleG2Character(bits3);
                    } else if (bits3 <= 159) {
                        handleC3Command(bits3);
                    } else if (bits3 <= 255) {
                        handleG3Character(bits3);
                    } else {
                        sb = new java.lang.StringBuilder(37);
                        str = "Invalid extended command: ";
                        sb.append(str);
                        sb.append(bits3);
                        com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                    }
                    z = true;
                }
            } else if (bits3 <= 31) {
                handleC0Command(bits3);
            } else {
                if (bits3 <= 127) {
                    handleG0Character(bits3);
                } else if (bits3 <= 159) {
                    handleC1Command(bits3);
                } else if (bits3 <= 255) {
                    handleG1Character(bits3);
                } else {
                    sb = new java.lang.StringBuilder(33);
                    str = "Invalid base command: ";
                    sb.append(str);
                    sb.append(bits3);
                    com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                }
                z = true;
            }
        }
        if (z) {
            this.cues = getDisplayCues();
        }
    }

    private void resetCueBuilders() {
        for (int i = 0; i < 8; i++) {
            this.cueInfoBuilders[i].reset();
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public com.google.android.exoplayer2.text.Subtitle createSubtitle() {
        java.util.List<com.google.android.exoplayer2.text.Cue> list = this.cues;
        this.lastCues = list;
        return new com.google.android.exoplayer2.text.cea.CeaSubtitle((java.util.List) com.google.android.exoplayer2.util.Assertions.checkNotNull(list));
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public void decode(com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer) {
        java.nio.ByteBuffer byteBuffer = (java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(subtitleInputBuffer.data);
        this.ccData.reset(byteBuffer.array(), byteBuffer.limit());
        while (this.ccData.bytesLeft() >= 3) {
            int unsignedByte = this.ccData.readUnsignedByte() & 7;
            int i = unsignedByte & 3;
            boolean z = (unsignedByte & 4) == 4;
            byte unsignedByte2 = (byte) this.ccData.readUnsignedByte();
            byte unsignedByte3 = (byte) this.ccData.readUnsignedByte();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        finalizeCurrentPacket();
                        int i2 = (unsignedByte2 & 192) >> 6;
                        int i3 = this.previousSequenceNumber;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            resetCueBuilders();
                            int i4 = this.previousSequenceNumber;
                            java.lang.StringBuilder sb = new java.lang.StringBuilder(71);
                            sb.append("Sequence number discontinuity. previous=");
                            sb.append(i4);
                            sb.append(" current=");
                            sb.append(i2);
                            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                        }
                        this.previousSequenceNumber = i2;
                        int i5 = unsignedByte2 & 63;
                        if (i5 == 0) {
                            i5 = 64;
                        }
                        com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket dtvCcPacket = new com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket(i2, i5);
                        this.currentDtvCcPacket = dtvCcPacket;
                        byte[] bArr = dtvCcPacket.packetData;
                        int i6 = dtvCcPacket.currentIndex;
                        dtvCcPacket.currentIndex = i6 + 1;
                        bArr[i6] = unsignedByte3;
                    } else {
                        com.google.android.exoplayer2.util.Assertions.checkArgument(i == 2);
                        com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket dtvCcPacket2 = this.currentDtvCcPacket;
                        if (dtvCcPacket2 == null) {
                            com.google.android.exoplayer2.util.Log.e(TAG, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = dtvCcPacket2.packetData;
                            int i7 = dtvCcPacket2.currentIndex;
                            int i8 = i7 + 1;
                            dtvCcPacket2.currentIndex = i8;
                            bArr2[i7] = unsignedByte2;
                            dtvCcPacket2.currentIndex = i8 + 1;
                            bArr2[i8] = unsignedByte3;
                        }
                    }
                    com.google.android.exoplayer2.text.cea.Cea708Decoder.DtvCcPacket dtvCcPacket3 = this.currentDtvCcPacket;
                    if (dtvCcPacket3.currentIndex == (dtvCcPacket3.packetSize * 2) - 1) {
                        finalizeCurrentPacket();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.text.SubtitleInputBuffer dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.text.SubtitleOutputBuffer dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        this.currentWindow = 0;
        this.currentCueInfoBuilder = this.cueInfoBuilders[0];
        resetCueBuilders();
        this.currentDtvCcPacket = null;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public java.lang.String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer) {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }
}
