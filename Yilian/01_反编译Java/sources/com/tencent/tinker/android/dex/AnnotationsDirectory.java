package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public class AnnotationsDirectory extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.AnnotationsDirectory> {
    public int classAnnotationsOffset;
    public int[][] fieldAnnotations;
    public int[][] methodAnnotations;
    public int[][] parameterAnnotations;

    public AnnotationsDirectory(int i, int i2, int[][] iArr, int[][] iArr2, int[][] iArr3) {
        super(i);
        this.classAnnotationsOffset = i2;
        this.fieldAnnotations = iArr;
        this.methodAnnotations = iArr2;
        this.parameterAnnotations = iArr3;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return (((this.fieldAnnotations.length + this.methodAnnotations.length + this.parameterAnnotations.length) * 2) + 4) * 4;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.AnnotationsDirectory annotationsDirectory) {
        int i = this.classAnnotationsOffset;
        int i2 = annotationsDirectory.classAnnotationsOffset;
        if (i != i2) {
            return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i, i2);
        }
        int length = this.fieldAnnotations.length;
        int length2 = this.methodAnnotations.length;
        int length3 = this.parameterAnnotations.length;
        int length4 = annotationsDirectory.fieldAnnotations.length;
        int length5 = annotationsDirectory.methodAnnotations.length;
        int length6 = annotationsDirectory.parameterAnnotations.length;
        if (length != length4) {
            return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(length, length4);
        }
        if (length2 != length5) {
            return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(length2, length5);
        }
        if (length3 != length6) {
            return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(length3, length6);
        }
        for (int i3 = 0; i3 < length; i3++) {
            int[][] iArr = this.fieldAnnotations;
            int i4 = iArr[i3][0];
            int i5 = iArr[i3][1];
            int[][] iArr2 = annotationsDirectory.fieldAnnotations;
            int i6 = iArr2[i3][0];
            int i7 = iArr2[i3][1];
            if (i4 != i6) {
                return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i4, i6);
            }
            if (i5 != i7) {
                return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(i5, i7);
            }
        }
        for (int i8 = 0; i8 < length2; i8++) {
            int[][] iArr3 = this.methodAnnotations;
            int i9 = iArr3[i8][0];
            int i10 = iArr3[i8][1];
            int[][] iArr4 = annotationsDirectory.methodAnnotations;
            int i11 = iArr4[i8][0];
            int i12 = iArr4[i8][1];
            if (i9 != i11) {
                return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i9, i11);
            }
            if (i10 != i12) {
                return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(i10, i12);
            }
        }
        for (int i13 = 0; i13 < length3; i13++) {
            int[][] iArr5 = this.parameterAnnotations;
            int i14 = iArr5[i13][0];
            int i15 = iArr5[i13][1];
            int[][] iArr6 = annotationsDirectory.parameterAnnotations;
            int i16 = iArr6[i13][0];
            int i17 = iArr6[i13][1];
            if (i14 != i16) {
                return com.tencent.tinker.android.dex.util.CompareUtils.uCompare(i14, i16);
            }
            if (i15 != i17) {
                return com.tencent.tinker.android.dex.util.CompareUtils.sCompare(i15, i17);
            }
        }
        return 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.AnnotationsDirectory) && compareTo((com.tencent.tinker.android.dex.AnnotationsDirectory) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.classAnnotationsOffset), this.fieldAnnotations, this.methodAnnotations, this.parameterAnnotations);
    }
}
