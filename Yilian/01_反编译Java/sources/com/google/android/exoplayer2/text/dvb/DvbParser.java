package com.google.android.exoplayer2.text.dvb;

/* loaded from: classes.dex */
public final class DvbParser {
    public static final int DATA_TYPE_24_TABLE_DATA = 32;
    public static final int DATA_TYPE_28_TABLE_DATA = 33;
    public static final int DATA_TYPE_2BP_CODE_STRING = 16;
    public static final int DATA_TYPE_48_TABLE_DATA = 34;
    public static final int DATA_TYPE_4BP_CODE_STRING = 17;
    public static final int DATA_TYPE_8BP_CODE_STRING = 18;
    public static final int DATA_TYPE_END_LINE = 240;
    public static final int OBJECT_CODING_PIXELS = 0;
    public static final int OBJECT_CODING_STRING = 1;
    public static final int PAGE_STATE_NORMAL = 0;
    public static final int REGION_DEPTH_4_BIT = 2;
    public static final int REGION_DEPTH_8_BIT = 3;
    public static final int SEGMENT_TYPE_CLUT_DEFINITION = 18;
    public static final int SEGMENT_TYPE_DISPLAY_DEFINITION = 20;
    public static final int SEGMENT_TYPE_OBJECT_DATA = 19;
    public static final int SEGMENT_TYPE_PAGE_COMPOSITION = 16;
    public static final int SEGMENT_TYPE_REGION_COMPOSITION = 17;
    public static final java.lang.String TAG = "DvbParser";
    public static final byte[] defaultMap2To4 = {0, 7, 8, com.umeng.analytics.pro.bw.m};
    public static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    public static final byte[] defaultMap4To8 = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public android.graphics.Bitmap bitmap;
    public final android.graphics.Canvas canvas;
    public final com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition defaultClutDefinition;
    public final com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition defaultDisplayDefinition;
    public final android.graphics.Paint defaultPaint;
    public final android.graphics.Paint fillRegionPaint;
    public final com.google.android.exoplayer2.text.dvb.DvbParser.SubtitleService subtitleService;

    public static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;
        public final int id;

        public ClutDefinition(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.id = i;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    public static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i, int i2, int i3, int i4, int i5, int i6) {
            this.width = i;
            this.height = i2;
            this.horizontalPositionMinimum = i3;
            this.horizontalPositionMaximum = i4;
            this.verticalPositionMinimum = i5;
            this.verticalPositionMaximum = i6;
        }
    }

    public static final class ObjectData {
        public final byte[] bottomFieldData;
        public final int id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.id = i;
            this.nonModifyingColorFlag = z;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    public static final class PageComposition {
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.PageRegion> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i, int i2, int i3, android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.PageRegion> sparseArray) {
            this.timeOutSecs = i;
            this.version = i2;
            this.state = i3;
            this.regions = sparseArray;
        }
    }

    public static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i, int i2) {
            this.horizontalAddress = i;
            this.verticalAddress = i2;
        }
    }

    public static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;
        public final int id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject> regionObjects;
        public final int width;

        public RegionComposition(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject> sparseArray) {
            this.id = i;
            this.fillFlag = z;
            this.width = i2;
            this.height = i3;
            this.levelOfCompatibility = i4;
            this.depth = i5;
            this.clutId = i6;
            this.pixelCode8Bit = i7;
            this.pixelCode4Bit = i8;
            this.pixelCode2Bit = i9;
            this.regionObjects = sparseArray;
        }

        public void mergeFrom(com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition regionComposition) {
            android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject> sparseArray = regionComposition.regionObjects;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.regionObjects.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    public static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i, int i2, int i3, int i4, int i5, int i6) {
            this.type = i;
            this.provider = i2;
            this.horizontalPosition = i3;
            this.verticalPosition = i4;
            this.foregroundPixelCode = i5;
            this.backgroundPixelCode = i6;
        }
    }

    public static final class SubtitleService {
        public final int ancillaryPageId;
        public com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition displayDefinition;
        public com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition pageComposition;
        public final int subtitlePageId;
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition> regions = new android.util.SparseArray<>();
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition> cluts = new android.util.SparseArray<>();
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData> objects = new android.util.SparseArray<>();
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition> ancillaryCluts = new android.util.SparseArray<>();
        public final android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData> ancillaryObjects = new android.util.SparseArray<>();

        public SubtitleService(int i, int i2) {
            this.subtitlePageId = i;
            this.ancillaryPageId = i2;
        }

        public void reset() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }
    }

    public DvbParser(int i, int i2) {
        android.graphics.Paint paint = new android.graphics.Paint();
        this.defaultPaint = paint;
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        this.defaultPaint.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC));
        this.defaultPaint.setPathEffect(null);
        android.graphics.Paint paint2 = new android.graphics.Paint();
        this.fillRegionPaint = paint2;
        paint2.setStyle(android.graphics.Paint.Style.FILL);
        this.fillRegionPaint.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_OVER));
        this.fillRegionPaint.setPathEffect(null);
        this.canvas = new android.graphics.Canvas();
        this.defaultDisplayDefinition = new com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition(com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.defaultClutDefinition = new com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition(0, generateDefault2BitClutEntries(), generateDefault4BitClutEntries(), generateDefault8BitClutEntries());
        this.subtitleService = new com.google.android.exoplayer2.text.dvb.DvbParser.SubtitleService(i, i2);
    }

    public static byte[] buildClutMapTable(int i, int i2, com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) parsableBitArray.readBits(i2);
        }
        return bArr;
    }

    public static int[] generateDefault2BitClutEntries() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] generateDefault4BitClutEntries() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = getColor(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = getColor(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] generateDefault8BitClutEntries() {
        int i;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = getColor(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                int i4 = com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT;
                if (i3 == 0) {
                    int i5 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT : 0);
                    int i6 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT : 0);
                    i = (i2 & 4) == 0 ? 0 : 85;
                    if ((i2 & 64) == 0) {
                        i4 = 0;
                    }
                    iArr[i2] = getColor(255, i5, i6, i + i4);
                } else if (i3 == 8) {
                    int i7 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT : 0);
                    int i8 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT : 0);
                    i = (i2 & 4) == 0 ? 0 : 85;
                    if ((i2 & 64) == 0) {
                        i4 = 0;
                    }
                    iArr[i2] = getColor(127, i7, i8, i + i4);
                } else if (i3 == 128) {
                    iArr[i2] = getColor(255, ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = getColor(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int getColor(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007b A[LOOP:0: B:3:0x0009->B:33:0x007b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int paint2BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 2
            int r4 = r13.readBits(r3)
            r5 = 1
            if (r4 == 0) goto L14
            r11 = r2
        L12:
            r12 = 1
            goto L59
        L14:
            boolean r4 = r13.readBit()
            r6 = 3
            if (r4 == 0) goto L28
            int r4 = r13.readBits(r6)
            int r4 = r4 + r6
        L20:
            int r3 = r13.readBits(r3)
            r11 = r2
            r12 = r4
            r4 = r3
            goto L59
        L28:
            boolean r4 = r13.readBit()
            if (r4 == 0) goto L31
            r11 = r2
            r4 = 0
            goto L12
        L31:
            int r4 = r13.readBits(r3)
            if (r4 == 0) goto L56
            if (r4 == r5) goto L52
            if (r4 == r3) goto L4a
            if (r4 == r6) goto L41
            r11 = r2
            r4 = 0
        L3f:
            r12 = 0
            goto L59
        L41:
            r4 = 8
            int r4 = r13.readBits(r4)
            int r4 = r4 + 29
            goto L20
        L4a:
            r4 = 4
            int r4 = r13.readBits(r4)
            int r4 = r4 + 12
            goto L20
        L52:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L59
        L56:
            r4 = 0
            r11 = 1
            goto L3f
        L59:
            if (r12 == 0) goto L77
            if (r8 == 0) goto L77
            if (r15 == 0) goto L61
            r4 = r15[r4]
        L61:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L77:
            int r10 = r10 + r12
            if (r11 == 0) goto L7b
            return r10
        L7b:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.DvbParser.paint2BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0085 A[LOOP:0: B:3:0x0009->B:36:0x0085, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0084 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int paint4BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray r13, int[] r14, byte[] r15, int r16, int r17, android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 4
            int r4 = r13.readBits(r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L15
            r11 = r2
        L13:
            r12 = 1
            goto L65
        L15:
            boolean r4 = r13.readBit()
            r7 = 3
            if (r4 != 0) goto L2b
            int r3 = r13.readBits(r7)
            if (r3 == 0) goto L28
            int r5 = r3 + 2
            r11 = r2
            r12 = r5
            r4 = 0
            goto L65
        L28:
            r4 = 0
            r11 = 1
            goto L4c
        L2b:
            boolean r4 = r13.readBit()
            if (r4 != 0) goto L3e
            int r4 = r13.readBits(r5)
            int r5 = r4 + 4
        L37:
            int r4 = r13.readBits(r3)
            r11 = r2
            r12 = r5
            goto L65
        L3e:
            int r4 = r13.readBits(r5)
            if (r4 == 0) goto L62
            if (r4 == r6) goto L5e
            if (r4 == r5) goto L57
            if (r4 == r7) goto L4e
            r11 = r2
            r4 = 0
        L4c:
            r12 = 0
            goto L65
        L4e:
            r4 = 8
            int r4 = r13.readBits(r4)
            int r5 = r4 + 25
            goto L37
        L57:
            int r4 = r13.readBits(r3)
            int r5 = r4 + 9
            goto L37
        L5e:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L65
        L62:
            r11 = r2
            r4 = 0
            goto L13
        L65:
            if (r12 == 0) goto L81
            if (r8 == 0) goto L81
            if (r15 == 0) goto L6d
            r4 = r15[r4]
        L6d:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L81:
            int r10 = r10 + r12
            if (r11 == 0) goto L85
            return r10
        L85:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.dvb.DvbParser.paint4BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    public static int paint8BitPixelCodeString(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int[] iArr, byte[] bArr, int i, int i2, android.graphics.Paint paint, android.graphics.Canvas canvas) {
        boolean z;
        int bits;
        int i3 = i;
        boolean z2 = false;
        while (true) {
            int bits2 = parsableBitArray.readBits(8);
            if (bits2 != 0) {
                z = z2;
                bits = 1;
            } else if (parsableBitArray.readBit()) {
                z = z2;
                bits = parsableBitArray.readBits(7);
                bits2 = parsableBitArray.readBits(8);
            } else {
                int bits3 = parsableBitArray.readBits(7);
                if (bits3 != 0) {
                    z = z2;
                    bits = bits3;
                    bits2 = 0;
                } else {
                    bits2 = 0;
                    z = true;
                    bits = 0;
                }
            }
            if (bits != 0 && paint != null) {
                if (bArr != null) {
                    bits2 = bArr[bits2];
                }
                paint.setColor(iArr[bits2]);
                canvas.drawRect(i3, i2, i3 + bits, i2 + 1, paint);
            }
            i3 += bits;
            if (z) {
                return i3;
            }
            z2 = z;
        }
    }

    public static void paintPixelDataSubBlock(byte[] bArr, int[] iArr, int i, int i2, int i3, android.graphics.Paint paint, android.graphics.Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(bArr);
        int iPaint2BitPixelCodeString = i2;
        int i4 = i3;
        byte[] bArrBuildClutMapTable = null;
        byte[] bArrBuildClutMapTable2 = null;
        byte[] bArrBuildClutMapTable3 = null;
        while (parsableBitArray.bitsLeft() != 0) {
            int bits = parsableBitArray.readBits(8);
            if (bits != 240) {
                switch (bits) {
                    case 16:
                        if (i != 3) {
                            if (i != 2) {
                                bArr2 = null;
                                iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr, bArr2, iPaint2BitPixelCodeString, i4, paint, canvas);
                                break;
                            } else {
                                bArr3 = bArrBuildClutMapTable3 == null ? defaultMap2To4 : bArrBuildClutMapTable3;
                            }
                        } else {
                            bArr3 = bArrBuildClutMapTable == null ? defaultMap2To8 : bArrBuildClutMapTable;
                        }
                        bArr2 = bArr3;
                        iPaint2BitPixelCodeString = paint2BitPixelCodeString(parsableBitArray, iArr, bArr2, iPaint2BitPixelCodeString, i4, paint, canvas);
                    case 17:
                        if (i == 3) {
                            bArr4 = bArrBuildClutMapTable2 == null ? defaultMap4To8 : bArrBuildClutMapTable2;
                        } else {
                            bArr4 = null;
                        }
                        iPaint2BitPixelCodeString = paint4BitPixelCodeString(parsableBitArray, iArr, bArr4, iPaint2BitPixelCodeString, i4, paint, canvas);
                        break;
                    case 18:
                        iPaint2BitPixelCodeString = paint8BitPixelCodeString(parsableBitArray, iArr, null, iPaint2BitPixelCodeString, i4, paint, canvas);
                        continue;
                    default:
                        switch (bits) {
                            case 32:
                                bArrBuildClutMapTable3 = buildClutMapTable(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArrBuildClutMapTable = buildClutMapTable(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrBuildClutMapTable2 = buildClutMapTable(16, 8, parsableBitArray);
                                break;
                            default:
                                continue;
                        }
                }
                parsableBitArray.byteAlign();
            } else {
                i4 += 2;
                iPaint2BitPixelCodeString = i2;
            }
        }
    }

    public static void paintPixelDataSubBlocks(com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData, com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition, int i, int i2, int i3, android.graphics.Paint paint, android.graphics.Canvas canvas) {
        int[] iArr = i == 3 ? clutDefinition.clutEntries8Bit : i == 2 ? clutDefinition.clutEntries4Bit : clutDefinition.clutEntries2Bit;
        paintPixelDataSubBlock(objectData.topFieldData, iArr, i, i2, i3, paint, canvas);
        paintPixelDataSubBlock(objectData.bottomFieldData, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition parseClutDefinition(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int i) {
        int bits;
        int i2;
        int bits2;
        int bits3;
        int bits4;
        int i3 = 8;
        int bits5 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i4 = 2;
        int i5 = i - 2;
        int[] iArrGenerateDefault2BitClutEntries = generateDefault2BitClutEntries();
        int[] iArrGenerateDefault4BitClutEntries = generateDefault4BitClutEntries();
        int[] iArrGenerateDefault8BitClutEntries = generateDefault8BitClutEntries();
        while (i5 > 0) {
            int bits6 = parsableBitArray.readBits(i3);
            int bits7 = parsableBitArray.readBits(i3);
            int i6 = i5 - 2;
            int[] iArr = (bits7 & 128) != 0 ? iArrGenerateDefault2BitClutEntries : (bits7 & 64) != 0 ? iArrGenerateDefault4BitClutEntries : iArrGenerateDefault8BitClutEntries;
            if ((bits7 & 1) != 0) {
                bits3 = parsableBitArray.readBits(i3);
                bits4 = parsableBitArray.readBits(i3);
                bits = parsableBitArray.readBits(i3);
                bits2 = parsableBitArray.readBits(i3);
                i2 = i6 - 4;
            } else {
                int bits8 = parsableBitArray.readBits(6) << i4;
                int bits9 = parsableBitArray.readBits(4) << 4;
                bits = parsableBitArray.readBits(4) << 4;
                i2 = i6 - 2;
                bits2 = parsableBitArray.readBits(i4) << 6;
                bits3 = bits8;
                bits4 = bits9;
            }
            if (bits3 == 0) {
                bits4 = 0;
                bits = 0;
                bits2 = 255;
            }
            double d2 = bits3;
            double d3 = bits4 - 128;
            java.lang.Double.isNaN(d3);
            java.lang.Double.isNaN(d2);
            double d4 = bits - 128;
            java.lang.Double.isNaN(d4);
            java.lang.Double.isNaN(d2);
            java.lang.Double.isNaN(d3);
            java.lang.Double.isNaN(d4);
            java.lang.Double.isNaN(d2);
            iArr[bits6] = getColor((byte) (255 - (bits2 & 255)), com.google.android.exoplayer2.util.Util.constrainValue((int) ((1.402d * d3) + d2), 0, 255), com.google.android.exoplayer2.util.Util.constrainValue((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), com.google.android.exoplayer2.util.Util.constrainValue((int) ((d4 * 1.772d) + d2), 0, 255));
            i5 = i2;
            bits5 = bits5;
            i3 = 8;
            i4 = 2;
        }
        return new com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition(bits5, iArrGenerateDefault2BitClutEntries, iArrGenerateDefault4BitClutEntries, iArrGenerateDefault8BitClutEntries);
    }

    public static com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition parseDisplayDefinition(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        int i;
        int bits;
        int i2;
        int i3;
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        if (bit) {
            int bits4 = parsableBitArray.readBits(16);
            int bits5 = parsableBitArray.readBits(16);
            int bits6 = parsableBitArray.readBits(16);
            bits = parsableBitArray.readBits(16);
            i = bits5;
            i3 = bits6;
            i2 = bits4;
        } else {
            i = bits2;
            bits = bits3;
            i2 = 0;
            i3 = 0;
        }
        return new com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition(bits2, bits3, i2, i, i3, bits);
    }

    public static com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData parseObjectData(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int bits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int bits2 = parsableBitArray.readBits(2);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
        if (bits2 != 1) {
            if (bits2 == 0) {
                int bits3 = parsableBitArray.readBits(16);
                int bits4 = parsableBitArray.readBits(16);
                if (bits3 > 0) {
                    bArr2 = new byte[bits3];
                    parsableBitArray.readBytes(bArr2, 0, bits3);
                }
                if (bits4 > 0) {
                    bArr = new byte[bits4];
                    parsableBitArray.readBytes(bArr, 0, bits4);
                }
            }
            return new com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData(bits, bit, bArr2, bArr);
        }
        parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        bArr = bArr2;
        return new com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData(bits, bit, bArr2, bArr);
    }

    public static com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition parsePageComposition(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int i) {
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(4);
        int bits3 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i2 = i - 2;
        android.util.SparseArray sparseArray = new android.util.SparseArray();
        while (i2 > 0) {
            int bits4 = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(8);
            i2 -= 6;
            sparseArray.put(bits4, new com.google.android.exoplayer2.text.dvb.DvbParser.PageRegion(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
        }
        return new com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition(bits, bits2, bits3, sparseArray);
    }

    public static com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition parseRegionComposition(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int i) {
        int bits;
        int bits2;
        int bits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(4);
        boolean bit = parsableBitArray.readBit();
        parsableBitArray.skipBits(3);
        int i2 = 16;
        int bits4 = parsableBitArray.readBits(16);
        int bits5 = parsableBitArray.readBits(16);
        int bits6 = parsableBitArray.readBits(3);
        int bits7 = parsableBitArray.readBits(3);
        int i3 = 2;
        parsableBitArray.skipBits(2);
        int bits8 = parsableBitArray.readBits(8);
        int bits9 = parsableBitArray.readBits(8);
        int bits10 = parsableBitArray.readBits(4);
        int bits11 = parsableBitArray.readBits(2);
        parsableBitArray.skipBits(2);
        int i4 = i - 10;
        android.util.SparseArray sparseArray = new android.util.SparseArray();
        while (i4 > 0) {
            int bits12 = parsableBitArray.readBits(i2);
            int bits13 = parsableBitArray.readBits(i3);
            int bits14 = parsableBitArray.readBits(i3);
            int bits15 = parsableBitArray.readBits(12);
            int i5 = bits11;
            parsableBitArray.skipBits(4);
            int bits16 = parsableBitArray.readBits(12);
            i4 -= 6;
            if (bits13 == 1 || bits13 == 2) {
                i4 -= 2;
                bits = parsableBitArray.readBits(8);
                bits2 = parsableBitArray.readBits(8);
            } else {
                bits = 0;
                bits2 = 0;
            }
            sparseArray.put(bits12, new com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject(bits13, bits14, bits15, bits16, bits, bits2));
            bits11 = i5;
            i3 = 2;
            i2 = 16;
        }
        return new com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition(bits3, bit, bits4, bits5, bits6, bits7, bits8, bits9, bits10, bits11, sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void parseSubtitlingSegment(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, com.google.android.exoplayer2.text.dvb.DvbParser.SubtitleService subtitleService) {
        com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition regionComposition;
        android.util.SparseArray sparseArray;
        com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition;
        int i;
        com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition2;
        com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData;
        int bits = parsableBitArray.readBits(8);
        int bits2 = parsableBitArray.readBits(16);
        int bits3 = parsableBitArray.readBits(16);
        int bytePosition = parsableBitArray.getBytePosition() + bits3;
        if (bits3 * 8 > parsableBitArray.bitsLeft()) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Data field length exceeds limit");
            parsableBitArray.skipBits(parsableBitArray.bitsLeft());
            return;
        }
        switch (bits) {
            case 16:
                if (bits2 == subtitleService.subtitlePageId) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition pageComposition = subtitleService.pageComposition;
                    com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition pageComposition2 = parsePageComposition(parsableBitArray, bits3);
                    if (pageComposition2.state == 0) {
                        if (pageComposition != null && pageComposition.version != pageComposition2.version) {
                            subtitleService.pageComposition = pageComposition2;
                            break;
                        }
                    } else {
                        subtitleService.pageComposition = pageComposition2;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                        break;
                    }
                }
                break;
            case 17:
                com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition pageComposition3 = subtitleService.pageComposition;
                if (bits2 == subtitleService.subtitlePageId && pageComposition3 != null) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition regionComposition2 = parseRegionComposition(parsableBitArray, bits3);
                    if (pageComposition3.state == 0 && (regionComposition = subtitleService.regions.get(regionComposition2.id)) != null) {
                        regionComposition2.mergeFrom(regionComposition);
                    }
                    subtitleService.regions.put(regionComposition2.id, regionComposition2);
                    break;
                }
                break;
            case 18:
                if (bits2 == subtitleService.subtitlePageId) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition3 = parseClutDefinition(parsableBitArray, bits3);
                    sparseArray = subtitleService.cluts;
                    clutDefinition = clutDefinition3;
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition4 = parseClutDefinition(parsableBitArray, bits3);
                    sparseArray = subtitleService.ancillaryCluts;
                    clutDefinition = clutDefinition4;
                }
                i = clutDefinition.id;
                clutDefinition2 = clutDefinition;
                sparseArray.put(i, clutDefinition2);
                break;
            case 19:
                if (bits2 == subtitleService.subtitlePageId) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData2 = parseObjectData(parsableBitArray);
                    sparseArray = subtitleService.objects;
                    objectData = objectData2;
                } else if (bits2 == subtitleService.ancillaryPageId) {
                    com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData3 = parseObjectData(parsableBitArray);
                    sparseArray = subtitleService.ancillaryObjects;
                    objectData = objectData3;
                }
                i = objectData.id;
                clutDefinition2 = objectData;
                sparseArray.put(i, clutDefinition2);
                break;
            case 20:
                if (bits2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = parseDisplayDefinition(parsableBitArray);
                    break;
                }
                break;
        }
        parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
    }

    public java.util.List<com.google.android.exoplayer2.text.Cue> decode(byte[] bArr, int i) {
        int i2;
        android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject> sparseArray;
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(bArr, i);
        while (parsableBitArray.bitsLeft() >= 48 && parsableBitArray.readBits(8) == 15) {
            parseSubtitlingSegment(parsableBitArray, this.subtitleService);
        }
        com.google.android.exoplayer2.text.dvb.DvbParser.SubtitleService subtitleService = this.subtitleService;
        com.google.android.exoplayer2.text.dvb.DvbParser.PageComposition pageComposition = subtitleService.pageComposition;
        if (pageComposition == null) {
            return java.util.Collections.emptyList();
        }
        com.google.android.exoplayer2.text.dvb.DvbParser.DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        android.graphics.Bitmap bitmap = this.bitmap;
        if (bitmap == null || displayDefinition.width + 1 != bitmap.getWidth() || displayDefinition.height + 1 != this.bitmap.getHeight()) {
            android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, android.graphics.Bitmap.Config.ARGB_8888);
            this.bitmap = bitmapCreateBitmap;
            this.canvas.setBitmap(bitmapCreateBitmap);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.PageRegion> sparseArray2 = pageComposition.regions;
        for (int i3 = 0; i3 < sparseArray2.size(); i3++) {
            this.canvas.save();
            com.google.android.exoplayer2.text.dvb.DvbParser.PageRegion pageRegionValueAt = sparseArray2.valueAt(i3);
            com.google.android.exoplayer2.text.dvb.DvbParser.RegionComposition regionComposition = this.subtitleService.regions.get(sparseArray2.keyAt(i3));
            int i4 = pageRegionValueAt.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i5 = pageRegionValueAt.verticalAddress + displayDefinition.verticalPositionMinimum;
            this.canvas.clipRect(i4, i5, java.lang.Math.min(regionComposition.width + i4, displayDefinition.horizontalPositionMaximum), java.lang.Math.min(regionComposition.height + i5, displayDefinition.verticalPositionMaximum));
            com.google.android.exoplayer2.text.dvb.DvbParser.ClutDefinition clutDefinition = this.subtitleService.cluts.get(regionComposition.clutId);
            if (clutDefinition == null && (clutDefinition = this.subtitleService.ancillaryCluts.get(regionComposition.clutId)) == null) {
                clutDefinition = this.defaultClutDefinition;
            }
            android.util.SparseArray<com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject> sparseArray3 = regionComposition.regionObjects;
            int i6 = 0;
            while (i6 < sparseArray3.size()) {
                int iKeyAt = sparseArray3.keyAt(i6);
                com.google.android.exoplayer2.text.dvb.DvbParser.RegionObject regionObjectValueAt = sparseArray3.valueAt(i6);
                com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData = this.subtitleService.objects.get(iKeyAt);
                com.google.android.exoplayer2.text.dvb.DvbParser.ObjectData objectData2 = objectData == null ? this.subtitleService.ancillaryObjects.get(iKeyAt) : objectData;
                if (objectData2 != null) {
                    i2 = i6;
                    sparseArray = sparseArray3;
                    paintPixelDataSubBlocks(objectData2, clutDefinition, regionComposition.depth, regionObjectValueAt.horizontalPosition + i4, i5 + regionObjectValueAt.verticalPosition, objectData2.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                } else {
                    i2 = i6;
                    sparseArray = sparseArray3;
                }
                i6 = i2 + 1;
                sparseArray3 = sparseArray;
            }
            if (regionComposition.fillFlag) {
                int i7 = regionComposition.depth;
                this.fillRegionPaint.setColor(i7 == 3 ? clutDefinition.clutEntries8Bit[regionComposition.pixelCode8Bit] : i7 == 2 ? clutDefinition.clutEntries4Bit[regionComposition.pixelCode4Bit] : clutDefinition.clutEntries2Bit[regionComposition.pixelCode2Bit]);
                this.canvas.drawRect(i4, i5, regionComposition.width + i4, regionComposition.height + i5, this.fillRegionPaint);
            }
            arrayList.add(new com.google.android.exoplayer2.text.Cue.Builder().setBitmap(android.graphics.Bitmap.createBitmap(this.bitmap, i4, i5, regionComposition.width, regionComposition.height)).setPosition(i4 / displayDefinition.width).setPositionAnchor(0).setLine(i5 / displayDefinition.height, 0).setLineAnchor(0).setSize(regionComposition.width / displayDefinition.width).setBitmapHeight(regionComposition.height / displayDefinition.height).build());
            this.canvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            this.canvas.restore();
        }
        return java.util.Collections.unmodifiableList(arrayList);
    }

    public void reset() {
        this.subtitleService.reset();
    }
}
