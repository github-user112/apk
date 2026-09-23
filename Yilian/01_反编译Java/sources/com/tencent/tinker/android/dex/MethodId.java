package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class MethodId extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.MethodId> {
    public int declaringClassIndex;
    public int nameIndex;
    public int protoIndex;

    public MethodId(int i, int i2, int i3, int i4) {
        super(i);
        this.declaringClassIndex = i2;
        this.protoIndex = i3;
        this.nameIndex = i4;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return 8;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.MethodId methodId) {
        int i = this.declaringClassIndex;
        int i2 = methodId.declaringClassIndex;
        if (i != i2) {
            return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i, i2);
        }
        int i3 = this.nameIndex;
        int i4 = methodId.nameIndex;
        return i3 != i4 ? com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i3, i4) : com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.protoIndex, methodId.protoIndex);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.MethodId) && compareTo((com.tencent.tinker.android.dex.MethodId) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.declaringClassIndex), java.lang.Integer.valueOf(this.protoIndex), java.lang.Integer.valueOf(this.nameIndex));
    }
}
