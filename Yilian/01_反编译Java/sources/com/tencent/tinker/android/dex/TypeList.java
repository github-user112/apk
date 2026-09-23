package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class TypeList extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.TypeList> {
    public static final com.tencent.tinker.android.dex.TypeList EMPTY = new com.tencent.tinker.android.dex.TypeList(0, com.tencent.tinker.android.dex.Dex.EMPTY_SHORT_ARRAY);
    public short[] types;

    public TypeList(int i, short[] sArr) {
        super(i);
        this.types = sArr;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return (this.types.length * 2) + 4;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.TypeList typeList) {
        return com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(this.types, typeList.types);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.TypeList) && compareTo((com.tencent.tinker.android.dex.TypeList) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return java.util.Arrays.hashCode(this.types);
    }
}
