package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public class AnnotationSet extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.AnnotationSet> {
    public int[] annotationOffsets;

    public AnnotationSet(int i, int[] iArr) {
        super(i);
        this.annotationOffsets = iArr;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return (this.annotationOffsets.length + 1) * 4;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        int length = this.annotationOffsets.length;
        int length2 = annotationSet.annotationOffsets.length;
        if (length != length2) {
            return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(length, length2);
        }
        for (int i = 0; i < length; i++) {
            int[] iArr = this.annotationOffsets;
            int i2 = iArr[i];
            int[] iArr2 = annotationSet.annotationOffsets;
            if (i2 != iArr2[i]) {
                return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(iArr[i], iArr2[i]);
            }
        }
        return 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.AnnotationSet) && compareTo((com.tencent.tinker.android.dex.AnnotationSet) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return java.util.Arrays.hashCode(this.annotationOffsets);
    }
}
