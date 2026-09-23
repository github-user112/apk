package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public class StringData extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.StringData> {
    public java.lang.String value;

    public StringData(int i, java.lang.String str) {
        super(i);
        this.value = str;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        try {
            return com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.value.length()) + ((int) com.tencent.tinker.android.dex.Mutf8.countBytes(this.value, false)) + 1;
        } catch (java.io.UTFDataFormatException e2) {
            throw new com.tencent.tinker.android.dex.DexException(e2);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.StringData stringData) {
        return this.value.compareTo(stringData.value);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.StringData) && compareTo((com.tencent.tinker.android.dex.StringData) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return this.value.hashCode();
    }
}
