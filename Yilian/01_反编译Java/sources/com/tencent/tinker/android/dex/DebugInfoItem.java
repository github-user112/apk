package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public class DebugInfoItem extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.DebugInfoItem> {
    public static final byte DBG_ADVANCE_LINE = 2;
    public static final byte DBG_ADVANCE_PC = 1;
    public static final byte DBG_END_LOCAL = 5;
    public static final byte DBG_END_SEQUENCE = 0;
    public static final byte DBG_RESTART_LOCAL = 6;
    public static final byte DBG_SET_EPILOGUE_BEGIN = 8;
    public static final byte DBG_SET_FILE = 9;
    public static final byte DBG_SET_PROLOGUE_END = 7;
    public static final byte DBG_START_LOCAL = 3;
    public static final byte DBG_START_LOCAL_EXTENDED = 4;
    public byte[] infoSTM;
    public int lineStart;
    public int[] parameterNames;

    public DebugInfoItem(int i, int i2, int[] iArr, byte[] bArr) {
        super(i);
        this.lineStart = i2;
        this.parameterNames = iArr;
        this.infoSTM = bArr;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        int iUnsignedLeb128Size = com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.parameterNames.length) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.lineStart);
        for (int i : this.parameterNames) {
            iUnsignedLeb128Size += com.tencent.tinker.android.dex.Leb128.unsignedLeb128p1Size(i);
        }
        return (this.infoSTM.length * 1) + iUnsignedLeb128Size;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        int i = this.lineStart;
        int i2 = debugInfoItem.lineStart;
        if (i != i2) {
            return i - i2;
        }
        int iUArrCompare = com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(this.parameterNames, debugInfoItem.parameterNames);
        return iUArrCompare != 0 ? iUArrCompare : com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(this.infoSTM, debugInfoItem.infoSTM);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.DebugInfoItem) && compareTo((com.tencent.tinker.android.dex.DebugInfoItem) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.lineStart), this.parameterNames, this.infoSTM);
    }
}
