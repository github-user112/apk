package com.google.android.exoplayer2.text.cea;

/* loaded from: classes.dex */
public final class Cea608Decoder extends com.google.android.exoplayer2.text.cea.CeaDecoder {
    public static final int CC_FIELD_FLAG = 1;
    public static final byte CC_IMPLICIT_DATA_HEADER = -4;
    public static final int CC_MODE_PAINT_ON = 3;
    public static final int CC_MODE_POP_ON = 2;
    public static final int CC_MODE_ROLL_UP = 1;
    public static final int CC_MODE_UNKNOWN = 0;
    public static final int CC_TYPE_FLAG = 2;
    public static final int CC_VALID_FLAG = 4;
    public static final byte CTRL_BACKSPACE = 33;
    public static final byte CTRL_CARRIAGE_RETURN = 45;
    public static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    public static final byte CTRL_END_OF_CAPTION = 47;
    public static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    public static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    public static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    public static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    public static final byte CTRL_RESUME_TEXT_DISPLAY = 43;
    public static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    public static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    public static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    public static final byte CTRL_TEXT_RESTART = 42;
    public static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    public static final long MIN_DATA_CHANNEL_TIMEOUT_MS = 16000;
    public static final int NTSC_CC_CHANNEL_1 = 0;
    public static final int NTSC_CC_CHANNEL_2 = 1;
    public static final int NTSC_CC_FIELD_1 = 0;
    public static final int NTSC_CC_FIELD_2 = 1;
    public static final int STYLE_ITALICS = 7;
    public static final int STYLE_UNCHANGED = 8;
    public static final java.lang.String TAG = "Cea608Decoder";
    public int captionMode;
    public int captionRowCount;
    public java.util.List<com.google.android.exoplayer2.text.Cue> cues;
    public boolean isCaptionValid;
    public boolean isInCaptionService;
    public long lastCueUpdateUs;
    public java.util.List<com.google.android.exoplayer2.text.Cue> lastCues;
    public final int packetLength;
    public byte repeatableControlCc1;
    public byte repeatableControlCc2;
    public boolean repeatableControlSet;
    public final int selectedChannel;
    public final int selectedField;
    public final long validDataChannelTimeoutUs;
    public static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, com.umeng.analytics.pro.bi.a, -256, -65281};
    public static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_TIME_CODE, 247, 209, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_CUE_CLUSTER_POSITION, 9632};
    public static final int[] SPECIAL_CHARACTER_SET = {174, 176, 189, com.tencent.tinker.android.dx.instruction.Opcodes.REM_LONG_2ADDR, 8482, 162, 163, 9834, 224, 32, 232, com.tencent.tinker.android.dx.instruction.Opcodes.USHR_INT_LIT8, 234, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_BLOCK_ADD_ID, 244, 251};
    public static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT8, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX, 8216, 161, 42, 39, com.umeng.analytics.pro.n.a.B, 169, 8480, 8226, 8220, 8221, 192, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_LONG_2ADDR, 199, 200, 202, 203, 235, 206, 207, 239, com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8, 249, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.ADD_DOUBLE, 187};
    public static final int[] SPECIAL_PT_DE_CHARACTER_SET = {com.tencent.tinker.android.dx.instruction.Opcodes.SHL_LONG_2ADDR, 227, 205, 204, 236, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_INT_LIT16, 242, com.tencent.tinker.android.dx.instruction.Opcodes.AND_INT_LIT16, 245, 123, 125, 92, 94, 95, 124, 126, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG_2ADDR, 228, com.tencent.tinker.android.dx.instruction.Opcodes.OR_INT_LIT16, 246, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_INT_LIT8, 165, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG, 9474, com.tencent.tinker.android.dx.instruction.Opcodes.USHR_LONG_2ADDR, 229, com.tencent.tinker.android.dx.instruction.Opcodes.ADD_INT_LIT8, net.easyconn.framework.broadcast.BroadcastManager.DIRECTION_248, 9484, 9488, 9492, 9496};
    public static final boolean[] ODD_PARITY_BYTE_TABLE = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public final com.google.android.exoplayer2.util.ParsableByteArray ccData = new com.google.android.exoplayer2.util.ParsableByteArray();
    public final java.util.ArrayList<com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder> cueBuilders = new java.util.ArrayList<>();
    public com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder currentCueBuilder = new com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder(0, 4);
    public int currentChannel = 0;

    public static final class CueBuilder {
        public static final int BASE_ROW = 15;
        public static final int SCREEN_CHARWIDTH = 32;
        public int captionMode;
        public int captionRowCount;
        public int indent;
        public int row;
        public int tabOffset;
        public final java.util.List<com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder.CueStyle> cueStyles = new java.util.ArrayList();
        public final java.util.List<android.text.SpannableString> rolledUpCaptions = new java.util.ArrayList();
        public final java.lang.StringBuilder captionStringBuilder = new java.lang.StringBuilder();

        public static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i, boolean z, int i2) {
                this.style = i;
                this.underline = z;
                this.start = i2;
            }
        }

        public CueBuilder(int i, int i2) {
            reset(i);
            this.captionRowCount = i2;
        }

        private android.text.SpannableString buildCurrentLine() {
            android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i = 0;
            int i2 = -1;
            int i3 = -1;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            boolean z = false;
            while (i < this.cueStyles.size()) {
                com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder.CueStyle cueStyle = this.cueStyles.get(i);
                boolean z2 = cueStyle.underline;
                int i7 = cueStyle.style;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i6 = com.google.android.exoplayer2.text.cea.Cea608Decoder.STYLE_COLORS[i7];
                    }
                    z = z3;
                }
                int i8 = cueStyle.start;
                i++;
                if (i8 != (i < this.cueStyles.size() ? this.cueStyles.get(i).start : length)) {
                    if (i2 != -1 && !z2) {
                        setUnderlineSpan(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z2) {
                        i2 = i8;
                    }
                    if (i3 != -1 && !z) {
                        setItalicSpan(spannableStringBuilder, i3, i8);
                        i3 = -1;
                    } else if (i3 == -1 && z) {
                        i3 = i8;
                    }
                    if (i6 != i5) {
                        setColorSpan(spannableStringBuilder, i4, i8, i5);
                        i5 = i6;
                        i4 = i8;
                    }
                }
            }
            if (i2 != -1 && i2 != length) {
                setUnderlineSpan(spannableStringBuilder, i2, length);
            }
            if (i3 != -1 && i3 != length) {
                setItalicSpan(spannableStringBuilder, i3, length);
            }
            if (i4 != length) {
                setColorSpan(spannableStringBuilder, i4, length, i5);
            }
            return new android.text.SpannableString(spannableStringBuilder);
        }

        public static void setColorSpan(android.text.SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new android.text.style.ForegroundColorSpan(i3), i, i2, 33);
        }

        public static void setItalicSpan(android.text.SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new android.text.style.StyleSpan(2), i, i2, 33);
        }

        public static void setUnderlineSpan(android.text.SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new android.text.style.UnderlineSpan(), i, i2, 33);
        }

        public void append(char c2) {
            if (this.captionStringBuilder.length() < 32) {
                this.captionStringBuilder.append(c2);
            }
        }

        public void backspace() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder.CueStyle cueStyle = this.cueStyles.get(size);
                    int i = cueStyle.start;
                    if (i != length) {
                        return;
                    }
                    cueStyle.start = i - 1;
                }
            }
        }

        public com.google.android.exoplayer2.text.Cue build(int i) {
            float f2;
            int i2 = this.indent + this.tabOffset;
            int i3 = 32 - i2;
            android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder();
            for (int i4 = 0; i4 < this.rolledUpCaptions.size(); i4++) {
                spannableStringBuilder.append(com.google.android.exoplayer2.util.Util.truncateAscii(this.rolledUpCaptions.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(com.google.android.exoplayer2.util.Util.truncateAscii(buildCurrentLine(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.captionMode != 2 || (java.lang.Math.abs(i5) >= 3 && length >= 0)) ? (this.captionMode != 2 || i5 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f2 = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f2 = 0.5f;
            }
            int i6 = this.row;
            if (i6 > 7) {
                i6 = (i6 - 15) - 2;
            } else if (this.captionMode == 1) {
                i6 -= this.captionRowCount - 1;
            }
            return new com.google.android.exoplayer2.text.Cue.Builder().setText(spannableStringBuilder).setTextAlignment(android.text.Layout.Alignment.ALIGN_NORMAL).setLine(i6, 1).setPosition(f2).setPositionAnchor(i).build();
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void reset(int i) {
            this.captionMode = i;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildCurrentLine());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = java.lang.Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void setCaptionMode(int i) {
            this.captionMode = i;
        }

        public void setCaptionRowCount(int i) {
            this.captionRowCount = i;
        }

        public void setStyle(int i, boolean z) {
            this.cueStyles.add(new com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder.CueStyle(i, z, this.captionStringBuilder.length()));
        }
    }

    public Cea608Decoder(java.lang.String str, int i, long j) {
        this.validDataChannelTimeoutUs = j > 0 ? j * 1000 : -9223372036854775807L;
        this.packetLength = com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else if (i != 2) {
            if (i == 3) {
                this.selectedChannel = 0;
            } else if (i != 4) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Invalid channel. Defaulting to CC1.");
                this.selectedChannel = 0;
                this.selectedField = 0;
            } else {
                this.selectedChannel = 1;
            }
            this.selectedField = 1;
        } else {
            this.selectedChannel = 1;
            this.selectedField = 0;
        }
        setCaptionMode(0);
        resetCueBuilders();
        this.isInCaptionService = true;
        this.lastCueUpdateUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static char getBasicChar(byte b) {
        return (char) BASIC_CHARACTER_SET[(b & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE) - 32];
    }

    public static int getChannel(byte b) {
        return (b >> 3) & 1;
    }

    private java.util.List<com.google.android.exoplayer2.text.Cue> getDisplayCues() {
        int size = this.cueBuilders.size();
        java.util.ArrayList arrayList = new java.util.ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.text.Cue cueBuild = this.cueBuilders.get(i).build(Integer.MIN_VALUE);
            arrayList.add(cueBuild);
            if (cueBuild != null) {
                iMin = java.lang.Math.min(iMin, cueBuild.positionAnchor);
            }
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            com.google.android.exoplayer2.text.Cue cue = (com.google.android.exoplayer2.text.Cue) arrayList.get(i2);
            if (cue != null) {
                if (cue.positionAnchor != iMin) {
                    cue = (com.google.android.exoplayer2.text.Cue) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.cueBuilders.get(i2).build(iMin));
                }
                arrayList2.add(cue);
            }
        }
        return arrayList2;
    }

    public static char getExtendedEsFrChar(byte b) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b & 31];
    }

    public static char getExtendedPtDeChar(byte b) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b & 31];
    }

    public static char getExtendedWestEuropeanChar(byte b, byte b2) {
        return (b & 1) == 0 ? getExtendedEsFrChar(b2) : getExtendedPtDeChar(b2);
    }

    public static char getSpecialNorthAmericanChar(byte b) {
        return (char) SPECIAL_CHARACTER_SET[b & com.umeng.analytics.pro.bw.m];
    }

    private void handleMidrowCtrl(byte b) {
        this.currentCueBuilder.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        this.currentCueBuilder.setStyle((b >> 1) & 7, (b & 1) == 1);
    }

    private void handleMiscCode(byte b) {
        if (b == 32) {
            setCaptionMode(2);
            return;
        }
        if (b == 41) {
            setCaptionMode(3);
            return;
        }
        switch (b) {
            case 37:
                setCaptionMode(1);
                setCaptionRowCount(2);
                break;
            case 38:
                setCaptionMode(1);
                setCaptionRowCount(3);
                break;
            case 39:
                setCaptionMode(1);
                setCaptionRowCount(4);
                break;
            default:
                int i = this.captionMode;
                if (i != 0) {
                    if (b == 33) {
                        this.currentCueBuilder.backspace();
                        break;
                    } else {
                        switch (b) {
                            case 44:
                                this.cues = java.util.Collections.emptyList();
                                int i2 = this.captionMode;
                                if (i2 != 1 && i2 != 3) {
                                }
                                break;
                            case 45:
                                if (i == 1 && !this.currentCueBuilder.isEmpty()) {
                                    this.currentCueBuilder.rollUp();
                                    break;
                                }
                                break;
                            case 47:
                                this.cues = getDisplayCues();
                                break;
                        }
                        resetCueBuilders();
                        break;
                    }
                }
                break;
        }
    }

    private void handlePreambleAddressCode(byte b, byte b2) {
        int i = ROW_INDICES[b & 7];
        if ((b2 & CTRL_RESUME_CAPTION_LOADING) != 0) {
            i++;
        }
        if (i != this.currentCueBuilder.row) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder cueBuilder = new com.google.android.exoplayer2.text.cea.Cea608Decoder.CueBuilder(this.captionMode, this.captionRowCount);
                this.currentCueBuilder = cueBuilder;
                this.cueBuilders.add(cueBuilder);
            }
            this.currentCueBuilder.row = i;
        }
        boolean z = (b2 & com.umeng.analytics.pro.bw.n) == 16;
        boolean z2 = (b2 & 1) == 1;
        int i2 = (b2 >> 1) & 7;
        this.currentCueBuilder.setStyle(z ? 8 : i2, z2);
        if (z) {
            this.currentCueBuilder.indent = COLUMN_INDICES[i2];
        }
    }

    public static boolean isCtrlCode(byte b) {
        return (b & com.umeng.analytics.pro.bj.k) == 0;
    }

    public static boolean isExtendedWestEuropeanChar(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & com.umeng.analytics.pro.bj.k) == 32;
    }

    public static boolean isMidrowCtrlCode(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean isMiscCode(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean isPreambleAddressCode(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean isRepeatable(byte b) {
        return (b & 240) == 16;
    }

    private boolean isRepeatedCommand(boolean z, byte b, byte b2) {
        if (!z || !isRepeatable(b)) {
            this.repeatableControlSet = false;
        } else {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b && this.repeatableControlCc2 == b2) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b;
            this.repeatableControlCc2 = b2;
        }
        return false;
    }

    public static boolean isServiceSwitchCommand(byte b) {
        return (b & 247) == 20;
    }

    public static boolean isSpecialNorthAmericanChar(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean isTabCtrlCode(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    public static boolean isXdsControlCode(byte b) {
        return 1 <= b && b <= 15;
    }

    private void maybeUpdateIsInCaptionService(byte b, byte b2) {
        if (!isXdsControlCode(b)) {
            if (isServiceSwitchCommand(b)) {
                if (b2 != 32 && b2 != 47) {
                    switch (b2) {
                        default:
                            switch (b2) {
                            }
                            return;
                        case 37:
                        case 38:
                        case 39:
                            this.isInCaptionService = true;
                            return;
                    }
                }
                this.isInCaptionService = true;
                return;
            }
            return;
        }
        this.isInCaptionService = false;
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void setCaptionMode(int i) {
        int i2 = this.captionMode;
        if (i2 == i) {
            return;
        }
        this.captionMode = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.cueBuilders.size(); i3++) {
                this.cueBuilders.get(i3).setCaptionMode(i);
            }
            return;
        }
        resetCueBuilders();
        if (i2 == 3 || i == 1 || i == 0) {
            this.cues = java.util.Collections.emptyList();
        }
    }

    private void setCaptionRowCount(int i) {
        this.captionRowCount = i;
        this.currentCueBuilder.setCaptionRowCount(i);
    }

    private boolean shouldClearStuckCaptions() {
        return (this.validDataChannelTimeoutUs == com.google.android.exoplayer2.C.TIME_UNSET || this.lastCueUpdateUs == com.google.android.exoplayer2.C.TIME_UNSET || getPositionUs() - this.lastCueUpdateUs < this.validDataChannelTimeoutUs) ? false : true;
    }

    private boolean updateAndVerifyCurrentChannel(byte b) {
        if (isCtrlCode(b)) {
            this.currentChannel = getChannel(b);
        }
        return this.currentChannel == this.selectedChannel;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    public com.google.android.exoplayer2.text.Subtitle createSubtitle() {
        java.util.List<com.google.android.exoplayer2.text.Cue> list = this.cues;
        this.lastCues = list;
        return new com.google.android.exoplayer2.text.cea.CeaSubtitle((java.util.List) com.google.android.exoplayer2.util.Assertions.checkNotNull(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode(com.google.android.exoplayer2.text.SubtitleInputBuffer r10) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.cea.Cea608Decoder.decode(com.google.android.exoplayer2.text.SubtitleInputBuffer):void");
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.text.SubtitleInputBuffer dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public com.google.android.exoplayer2.text.SubtitleOutputBuffer dequeueOutputBuffer() {
        com.google.android.exoplayer2.text.SubtitleOutputBuffer availableOutputBuffer;
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (subtitleOutputBufferDequeueOutputBuffer != null) {
            return subtitleOutputBufferDequeueOutputBuffer;
        }
        if (!shouldClearStuckCaptions() || (availableOutputBuffer = getAvailableOutputBuffer()) == null) {
            return null;
        }
        this.cues = java.util.Collections.emptyList();
        this.lastCueUpdateUs = com.google.android.exoplayer2.C.TIME_UNSET;
        availableOutputBuffer.setContent(getPositionUs(), createSubtitle(), Long.MAX_VALUE);
        return availableOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.isCaptionValid = false;
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
        this.currentChannel = 0;
        this.isInCaptionService = true;
        this.lastCueUpdateUs = com.google.android.exoplayer2.C.TIME_UNSET;
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
    public void release() {
    }

    @Override // com.google.android.exoplayer2.text.cea.CeaDecoder, com.google.android.exoplayer2.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }
}
