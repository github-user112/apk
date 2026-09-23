package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class FieldId extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.FieldId> {
    public int declaringClassIndex;
    public int nameIndex;
    public int typeIndex;

    public FieldId(int i, int i2, int i3, int i4) {
        super(i);
        this.declaringClassIndex = i2;
        this.typeIndex = i3;
        this.nameIndex = i4;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return 8;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.FieldId fieldId) {
        int i = this.declaringClassIndex;
        int i2 = fieldId.declaringClassIndex;
        if (i != i2) {
            return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i, i2);
        }
        int i3 = this.nameIndex;
        int i4 = fieldId.nameIndex;
        return i3 != i4 ? com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i3, i4) : com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.typeIndex, fieldId.typeIndex);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.FieldId) && compareTo((com.tencent.tinker.android.dex.FieldId) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.declaringClassIndex), java.lang.Integer.valueOf(this.typeIndex), java.lang.Integer.valueOf(this.nameIndex));
    }
}
