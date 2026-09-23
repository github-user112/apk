package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class ClassDef extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.ClassDef> {
    public static final int NO_INDEX = -1;
    public static final int NO_OFFSET = 0;
    public int accessFlags;
    public int annotationsOffset;
    public int classDataOffset;
    public int interfacesOffset;
    public int sourceFileIndex;
    public int staticValuesOffset;
    public int supertypeIndex;
    public int typeIndex;

    public ClassDef(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        super(i);
        this.typeIndex = i2;
        this.accessFlags = i3;
        this.supertypeIndex = i4;
        this.interfacesOffset = i5;
        this.sourceFileIndex = i6;
        this.annotationsOffset = i7;
        this.classDataOffset = i8;
        this.staticValuesOffset = i9;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return 32;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.ClassDef classDef) {
        int iUCompare = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.typeIndex, classDef.typeIndex);
        if (iUCompare != 0) {
            return iUCompare;
        }
        int iSCompare = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.accessFlags, classDef.accessFlags);
        if (iSCompare != 0) {
            return iSCompare;
        }
        int iUCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.supertypeIndex, classDef.supertypeIndex);
        if (iUCompare2 != 0) {
            return iUCompare2;
        }
        int iSCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.interfacesOffset, classDef.interfacesOffset);
        if (iSCompare2 != 0) {
            return iSCompare2;
        }
        int iUCompare3 = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.sourceFileIndex, classDef.sourceFileIndex);
        if (iUCompare3 != 0) {
            return iUCompare3;
        }
        int iSCompare3 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.annotationsOffset, classDef.annotationsOffset);
        if (iSCompare3 != 0) {
            return iSCompare3;
        }
        int iSCompare4 = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.classDataOffset, classDef.classDataOffset);
        return iSCompare4 != 0 ? iSCompare4 : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.staticValuesOffset, classDef.staticValuesOffset);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.ClassDef) && compareTo((com.tencent.tinker.android.dex.ClassDef) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.typeIndex), java.lang.Integer.valueOf(this.accessFlags), java.lang.Integer.valueOf(this.supertypeIndex), java.lang.Integer.valueOf(this.interfacesOffset), java.lang.Integer.valueOf(this.sourceFileIndex), java.lang.Integer.valueOf(this.annotationsOffset), java.lang.Integer.valueOf(this.classDataOffset), java.lang.Integer.valueOf(this.staticValuesOffset));
    }
}
