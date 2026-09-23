package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class Annotation extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.Annotation> {
    public com.tencent.tinker.android.dex.EncodedValue encodedAnnotation;
    public byte visibility;

    public Annotation(int i, byte b, com.tencent.tinker.android.dex.EncodedValue encodedValue) {
        super(i);
        this.visibility = b;
        this.encodedAnnotation = encodedValue;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return this.encodedAnnotation.byteCountInDex() + 1;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.Annotation annotation) {
        int iCompareTo = this.encodedAnnotation.compareTo(annotation.encodedAnnotation);
        return iCompareTo != 0 ? iCompareTo : com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.visibility, annotation.visibility);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.Annotation) && compareTo((com.tencent.tinker.android.dex.Annotation) obj) == 0;
    }

    public com.tencent.tinker.android.dex.EncodedValueReader getReader() {
        return new com.tencent.tinker.android.dex.EncodedValueReader(this.encodedAnnotation, 29);
    }

    public int getTypeIndex() {
        com.tencent.tinker.android.dex.EncodedValueReader reader = getReader();
        reader.readAnnotation();
        return reader.getAnnotationType();
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Byte.valueOf(this.visibility), this.encodedAnnotation);
    }
}
