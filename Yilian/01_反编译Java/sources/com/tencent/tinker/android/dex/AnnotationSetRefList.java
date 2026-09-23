package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public class AnnotationSetRefList extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.AnnotationSetRefList> {
    public int[] annotationSetRefItems;

    public AnnotationSetRefList(int i, int[] iArr) {
        super(i);
        this.annotationSetRefItems = iArr;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return (this.annotationSetRefItems.length + 1) * 4;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.AnnotationSetRefList annotationSetRefList) {
        int length = this.annotationSetRefItems.length;
        int length2 = annotationSetRefList.annotationSetRefItems.length;
        if (length != length2) {
            return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(length, length2);
        }
        for (int i = 0; i < length; i++) {
            int[] iArr = this.annotationSetRefItems;
            int i2 = iArr[i];
            int[] iArr2 = annotationSetRefList.annotationSetRefItems;
            if (i2 != iArr2[i]) {
                return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(iArr[i], iArr2[i]);
            }
        }
        return 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.AnnotationSetRefList) && compareTo((com.tencent.tinker.android.dex.AnnotationSetRefList) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return java.util.Arrays.hashCode(this.annotationSetRefItems);
    }
}
