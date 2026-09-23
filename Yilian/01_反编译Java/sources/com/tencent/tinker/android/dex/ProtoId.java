package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class ProtoId extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.ProtoId> {
    public int parametersOffset;
    public int returnTypeIndex;
    public int shortyIndex;

    public ProtoId(int i, int i2, int i3, int i4) {
        super(i);
        this.shortyIndex = i2;
        this.returnTypeIndex = i3;
        this.parametersOffset = i4;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return 12;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.ProtoId protoId) {
        int iUCompare = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.shortyIndex, protoId.shortyIndex);
        if (iUCompare != 0) {
            return iUCompare;
        }
        int iUCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.returnTypeIndex, protoId.returnTypeIndex);
        return iUCompare2 != 0 ? iUCompare2 : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.parametersOffset, protoId.parametersOffset);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.ProtoId) && compareTo((com.tencent.tinker.android.dex.ProtoId) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.shortyIndex), java.lang.Integer.valueOf(this.returnTypeIndex), java.lang.Integer.valueOf(this.parametersOffset));
    }
}
