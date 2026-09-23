package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public final class OggPacket {
    public boolean populated;
    public int segmentCount;
    public final com.google.android.exoplayer2.extractor.ogg.OggPageHeader pageHeader = new com.google.android.exoplayer2.extractor.ogg.OggPageHeader();
    public final com.google.android.exoplayer2.util.ParsableByteArray packetArray = new com.google.android.exoplayer2.util.ParsableByteArray(new byte[com.google.android.exoplayer2.extractor.ogg.OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    public int currentSegmentIndex = -1;

    private int calculatePacketSize(int i) {
        int i2;
        int i3 = 0;
        this.segmentCount = 0;
        do {
            int i4 = this.segmentCount;
            int i5 = i + i4;
            com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader = this.pageHeader;
            if (i5 >= oggPageHeader.pageSegmentCount) {
                break;
            }
            int[] iArr = oggPageHeader.laces;
            this.segmentCount = i4 + 1;
            i2 = iArr[i4 + i];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public com.google.android.exoplayer2.extractor.ogg.OggPageHeader getPageHeader() {
        return this.pageHeader;
    }

    public com.google.android.exoplayer2.util.ParsableByteArray getPayload() {
        return this.packetArray;
    }

    public boolean populate(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int i;
        com.google.android.exoplayer2.util.Assertions.checkState(extractorInput != null);
        if (this.populated) {
            this.populated = false;
            this.packetArray.reset(0);
        }
        while (!this.populated) {
            if (this.currentSegmentIndex < 0) {
                if (!this.pageHeader.skipToNextPage(extractorInput) || !this.pageHeader.populate(extractorInput, true)) {
                    return false;
                }
                com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader = this.pageHeader;
                int iCalculatePacketSize = oggPageHeader.headerSize;
                if ((oggPageHeader.type & 1) == 1 && this.packetArray.limit() == 0) {
                    iCalculatePacketSize += calculatePacketSize(0);
                    i = this.segmentCount + 0;
                } else {
                    i = 0;
                }
                if (!com.google.android.exoplayer2.extractor.ExtractorUtil.skipFullyQuietly(extractorInput, iCalculatePacketSize)) {
                    return false;
                }
                this.currentSegmentIndex = i;
            }
            int iCalculatePacketSize2 = calculatePacketSize(this.currentSegmentIndex);
            int i2 = this.currentSegmentIndex + this.segmentCount;
            if (iCalculatePacketSize2 > 0) {
                com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.packetArray;
                parsableByteArray.ensureCapacity(parsableByteArray.limit() + iCalculatePacketSize2);
                if (!com.google.android.exoplayer2.extractor.ExtractorUtil.readFullyQuietly(extractorInput, this.packetArray.getData(), this.packetArray.limit(), iCalculatePacketSize2)) {
                    return false;
                }
                com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = this.packetArray;
                parsableByteArray2.setLimit(parsableByteArray2.limit() + iCalculatePacketSize2);
                this.populated = this.pageHeader.laces[i2 + (-1)] != 255;
            }
            if (i2 == this.pageHeader.pageSegmentCount) {
                i2 = -1;
            }
            this.currentSegmentIndex = i2;
        }
        return true;
    }

    public void reset() {
        this.pageHeader.reset();
        this.packetArray.reset(0);
        this.currentSegmentIndex = -1;
        this.populated = false;
    }

    public void trimPayload() {
        if (this.packetArray.getData().length == 65025) {
            return;
        }
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.packetArray;
        parsableByteArray.reset(java.util.Arrays.copyOf(parsableByteArray.getData(), java.lang.Math.max(com.google.android.exoplayer2.extractor.ogg.OggPageHeader.MAX_PAGE_PAYLOAD, this.packetArray.limit())), this.packetArray.limit());
    }
}
