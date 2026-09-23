package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class ClassData extends com.tencent.tinker.android.dex.TableOfContents.Section.Item<com.tencent.tinker.android.dex.ClassData> {
    public com.tencent.tinker.android.dex.ClassData.Method[] directMethods;
    public com.tencent.tinker.android.dex.ClassData.Field[] instanceFields;
    public com.tencent.tinker.android.dex.ClassData.Field[] staticFields;
    public com.tencent.tinker.android.dex.ClassData.Method[] virtualMethods;

    public static class Field implements java.lang.Comparable<com.tencent.tinker.android.dex.ClassData.Field> {
        public int accessFlags;
        public int fieldIndex;

        public Field(int i, int i2) {
            this.fieldIndex = i;
            this.accessFlags = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.tencent.tinker.android.dex.ClassData.Field field) {
            int iUCompare = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.fieldIndex, field.fieldIndex);
            return iUCompare != 0 ? iUCompare : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.accessFlags, field.accessFlags);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof com.tencent.tinker.android.dex.ClassData.Field) && compareTo((com.tencent.tinker.android.dex.ClassData.Field) obj) == 0;
        }

        public int hashCode() {
            return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.fieldIndex), java.lang.Integer.valueOf(this.accessFlags));
        }
    }

    public static class Method implements java.lang.Comparable<com.tencent.tinker.android.dex.ClassData.Method> {
        public int accessFlags;
        public int codeOffset;
        public int methodIndex;

        public Method(int i, int i2, int i3) {
            this.methodIndex = i;
            this.accessFlags = i2;
            this.codeOffset = i3;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.tencent.tinker.android.dex.ClassData.Method method) {
            int iUCompare = com.tencent.tinker.android.dex.util.CompareUtils.uCompare(this.methodIndex, method.methodIndex);
            if (iUCompare != 0) {
                return iUCompare;
            }
            int iSCompare = com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.accessFlags, method.accessFlags);
            return iSCompare != 0 ? iSCompare : com.tencent.tinker.android.dex.util.CompareUtils.sCompare(this.codeOffset, method.codeOffset);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof com.tencent.tinker.android.dex.ClassData.Method) && compareTo((com.tencent.tinker.android.dex.ClassData.Method) obj) == 0;
        }

        public int hashCode() {
            return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(java.lang.Integer.valueOf(this.methodIndex), java.lang.Integer.valueOf(this.accessFlags), java.lang.Integer.valueOf(this.codeOffset));
        }
    }

    public ClassData(int i, com.tencent.tinker.android.dex.ClassData.Field[] fieldArr, com.tencent.tinker.android.dex.ClassData.Field[] fieldArr2, com.tencent.tinker.android.dex.ClassData.Method[] methodArr, com.tencent.tinker.android.dex.ClassData.Method[] methodArr2) {
        super(i);
        this.staticFields = fieldArr;
        this.instanceFields = fieldArr2;
        this.directMethods = methodArr;
        this.virtualMethods = methodArr2;
    }

    private int calcFieldsSize(com.tencent.tinker.android.dex.ClassData.Field[] fieldArr) {
        int length = fieldArr.length;
        int i = 0;
        int iUnsignedLeb128Size = 0;
        int i2 = 0;
        while (i < length) {
            com.tencent.tinker.android.dex.ClassData.Field field = fieldArr[i];
            int i3 = field.fieldIndex;
            iUnsignedLeb128Size += com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(field.accessFlags) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(i3 - i2);
            i++;
            i2 = i3;
        }
        return iUnsignedLeb128Size;
    }

    private int calcMethodsSize(com.tencent.tinker.android.dex.ClassData.Method[] methodArr) {
        int length = methodArr.length;
        int i = 0;
        int iUnsignedLeb128Size = 0;
        int i2 = 0;
        while (i < length) {
            com.tencent.tinker.android.dex.ClassData.Method method = methodArr[i];
            int i3 = method.methodIndex;
            iUnsignedLeb128Size += com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(method.codeOffset) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(method.accessFlags) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(i3 - i2);
            i++;
            i2 = i3;
        }
        return iUnsignedLeb128Size;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int byteCountInDex() {
        return com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.virtualMethods.length) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.directMethods.length) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.instanceFields.length) + com.tencent.tinker.android.dex.Leb128.unsignedLeb128Size(this.staticFields.length) + calcFieldsSize(this.staticFields) + calcFieldsSize(this.instanceFields) + calcMethodsSize(this.directMethods) + calcMethodsSize(this.virtualMethods);
    }

    @Override // java.lang.Comparable
    public int compareTo(com.tencent.tinker.android.dex.ClassData classData) {
        int iAArrCompare = com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.staticFields, classData.staticFields);
        if (iAArrCompare != 0) {
            return iAArrCompare;
        }
        int iAArrCompare2 = com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.instanceFields, classData.instanceFields);
        if (iAArrCompare2 != 0) {
            return iAArrCompare2;
        }
        int iAArrCompare3 = com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.directMethods, classData.directMethods);
        return iAArrCompare3 != 0 ? iAArrCompare3 : com.tencent.tinker.android.dex.util.CompareUtils.aArrCompare(this.virtualMethods, classData.virtualMethods);
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof com.tencent.tinker.android.dex.ClassData) && compareTo((com.tencent.tinker.android.dex.ClassData) obj) == 0;
    }

    @Override // com.tencent.tinker.android.dex.TableOfContents.Section.Item
    public int hashCode() {
        return com.tencent.tinker.android.dex.util.HashCodeHelper.hash(this.staticFields, this.instanceFields, this.directMethods, this.virtualMethods);
    }
}
