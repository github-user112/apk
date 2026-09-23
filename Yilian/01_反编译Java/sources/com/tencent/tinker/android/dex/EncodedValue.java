package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class EncodedValue extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.EncodedValue> {
    public byte[] data;

    public EncodedValue(int i, byte[] bArr) {
        super(i);
        this.data = bArr;
    }

    public com.tencent.tinker.android.dex.util.ByteInput asByteInput() {
        return new com.tencent.tinker.android.dex.util.ByteInput() { // from class: com.tencent.tinker.android.dex.EncodedValue.1
            public int position = 0;

            @Override // com.tencent.tinker.android.dex.util.ByteInput
            public byte readByte() {
                byte[] bArr = com.tencent.tinker.android.dex.EncodedValue.this.data;
                int i = this.position;
                this.position = i + 1;
                return bArr[i];
            }
        };
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return this.data.length * 1;
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.EncodedValue encodedValue) {
        return com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(this.data, encodedValue.data);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.EncodedValue) && compareTo((com.tencent.tinker.android.dex.EncodedValue) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return java.util.Arrays.hashCode(this.data);
    }
}
