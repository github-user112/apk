package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class Code extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.Code> {
    public com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlers;
    public int debugInfoOffset;
    public int insSize;
    public short[] instructions;
    public int outsSize;
    public int registersSize;
    public com.tencent.tinker.android.dex.Code.Try[] tries;

    public static class CatchHandler implements java.lang.Comparable<com.tencent.tinker.android.dex.Code.CatchHandler> {
        public int[] addresses;
        public int catchAllAddress;
        public int offset;
        public int[] typeIndexes;

        public CatchHandler(int[] iArr, int[] iArr2, int i, int i2) {
            this.typeIndexes = iArr;
            this.addresses = iArr2;
            this.catchAllAddress = i;
            this.offset = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.tencent.tinker.android.dex.Code.CatchHandler catchHandler) {
            int iSArrCompare = com.tencent.tinker.android.dex.util.CompareUtils.sArrCompare(this.typeIndexes, catchHandler.typeIndexes);
            if (iSArrCompare != 0) {
                return iSArrCompare;
            }
            int iSArrCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.sArrCompare(this.addresses, catchHandler.addresses);
            return iSArrCompare2 != 0 ? iSArrCompare2 : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.catchAllAddress, catchHandler.catchAllAddress);
        }
    }

    public static class Try implements java.lang.Comparable<com.tencent.tinker.android.dex.Code.Try> {
        public int catchHandlerIndex;
        public int instructionCount;
        public int startAddress;

        public Try(int i, int i2, int i3) {
            this.startAddress = i;
            this.instructionCount = i2;
            this.catchHandlerIndex = i3;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.tencent.tinker.android.dex.Code.Try r3) {
            int iSCompare = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.startAddress, r3.startAddress);
            if (iSCompare != 0) {
                return iSCompare;
            }
            int iSCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.instructionCount, r3.instructionCount);
            return iSCompare2 != 0 ? iSCompare2 : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.catchHandlerIndex, r3.catchHandlerIndex);
        }
    }

    public Code(int i, int i2, int i3, int i4, int i5, short[] sArr, com.tencent.tinker.android.dex.Code.Try[] tryArr, com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr) {
        super(i);
        this.registersSize = i2;
        this.insSize = i3;
        this.outsSize = i4;
        this.debugInfoOffset = i5;
        this.instructions = sArr;
        this.tries = tryArr;
        this.catchHandlers = catchHandlerArr;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        int length = this.instructions.length;
        int iUnsignedLeb128Size = (length * 2) + 16;
        if (this.tries.length > 0) {
            if ((length & 1) == 1) {
                iUnsignedLeb128Size += 2;
            }
            iUnsignedLeb128Size = com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.catchHandlers.length) + (this.tries.length * 8) + iUnsignedLeb128Size;
            for (com.tencent.tinker.android.dex.Code.CatchHandler catchHandler : this.catchHandlers) {
                int length2 = catchHandler.typeIndexes.length;
                iUnsignedLeb128Size = catchHandler.catchAllAddress != -1 ? com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(catchHandler.catchAllAddress) + com.tencent.tinker.android.dex.Leb128.signedLeb128Size(-length2) + iUnsignedLeb128Size : com.tencent.tinker.android.dex.Leb128.signedLeb128Size(length2) + iUnsignedLeb128Size;
                for (int i = 0; i < length2; i++) {
                    iUnsignedLeb128Size += com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(catchHandler.addresses[i]) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(catchHandler.typeIndexes[i]);
                }
            }
        }
        return iUnsignedLeb128Size;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.Code code) {
        int iSCompare = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.registersSize, code.registersSize);
        if (iSCompare != 0) {
            return iSCompare;
        }
        int iSCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.insSize, code.insSize);
        if (iSCompare2 != 0) {
            return iSCompare2;
        }
        int iSCompare3 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.outsSize, code.outsSize);
        if (iSCompare3 != 0) {
            return iSCompare3;
        }
        int iSCompare4 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.debugInfoOffset, code.debugInfoOffset);
        if (iSCompare4 != 0) {
            return iSCompare4;
        }
        int iUArrCompare = com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(this.instructions, code.instructions);
        if (iUArrCompare != 0) {
            return iUArrCompare;
        }
        int iAArrCompare = com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.tries, code.tries);
        return iAArrCompare != 0 ? iAArrCompare : com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.catchHandlers, code.catchHandlers);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.Code) && compareTo((com.tencent.tinker.android.dex.Code) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.registersSize), java.lang.Integer.valueOf(this.insSize), java.lang.Integer.valueOf(this.outsSize), java.lang.Integer.valueOf(this.debugInfoOffset), this.instructions, this.tries, this.catchHandlers);
    }
}
