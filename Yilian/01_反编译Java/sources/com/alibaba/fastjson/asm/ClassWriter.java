package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class ClassWriter {
    public int access;
    public com.alibaba.fastjson.asm.FieldWriter firstField;
    public com.alibaba.fastjson.asm.MethodWriter firstMethod;
    public int index;
    public int interfaceCount;
    public int[] interfaces;
    public com.alibaba.fastjson.asm.Item[] items;
    public final com.alibaba.fastjson.asm.Item key;
    public final com.alibaba.fastjson.asm.Item key2;
    public final com.alibaba.fastjson.asm.Item key3;
    public com.alibaba.fastjson.asm.FieldWriter lastField;
    public com.alibaba.fastjson.asm.MethodWriter lastMethod;
    public int name;
    public final com.alibaba.fastjson.asm.ByteVector pool;
    public int superName;
    public java.lang.String thisName;
    public int threshold;
    public com.alibaba.fastjson.asm.Item[] typeTable;
    public int version;

    public ClassWriter() {
        this(0);
    }

    public ClassWriter(int i) {
        this.index = 1;
        this.pool = new com.alibaba.fastjson.asm.ByteVector();
        com.alibaba.fastjson.asm.Item[] itemArr = new com.alibaba.fastjson.asm.Item[256];
        this.items = itemArr;
        double length = itemArr.length;
        java.lang.Double.isNaN(length);
        this.threshold = (int) (length * 0.75d);
        this.key = new com.alibaba.fastjson.asm.Item();
        this.key2 = new com.alibaba.fastjson.asm.Item();
        this.key3 = new com.alibaba.fastjson.asm.Item();
    }

    private com.alibaba.fastjson.asm.Item get(com.alibaba.fastjson.asm.Item item) {
        com.alibaba.fastjson.asm.Item[] itemArr = this.items;
        com.alibaba.fastjson.asm.Item item2 = itemArr[item.hashCode % itemArr.length];
        while (item2 != null && (item2.type != item.type || !item.isEqualTo(item2))) {
            item2 = item2.next;
        }
        return item2;
    }

    private com.alibaba.fastjson.asm.Item newString(java.lang.String str) {
        this.key2.set(8, str, null, null);
        com.alibaba.fastjson.asm.Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        this.pool.put12(8, newUTF8(str));
        int i = this.index;
        this.index = i + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i, this.key2);
        put(item2);
        return item2;
    }

    private void put(com.alibaba.fastjson.asm.Item item) {
        if (this.index > this.threshold) {
            int length = this.items.length;
            int i = (length * 2) + 1;
            com.alibaba.fastjson.asm.Item[] itemArr = new com.alibaba.fastjson.asm.Item[i];
            for (int i2 = length - 1; i2 >= 0; i2--) {
                com.alibaba.fastjson.asm.Item item2 = this.items[i2];
                while (item2 != null) {
                    int i3 = item2.hashCode % i;
                    com.alibaba.fastjson.asm.Item item3 = item2.next;
                    item2.next = itemArr[i3];
                    itemArr[i3] = item2;
                    item2 = item3;
                }
            }
            this.items = itemArr;
            double d2 = i;
            java.lang.Double.isNaN(d2);
            this.threshold = (int) (d2 * 0.75d);
        }
        int i4 = item.hashCode;
        com.alibaba.fastjson.asm.Item[] itemArr2 = this.items;
        int length2 = i4 % itemArr2.length;
        item.next = itemArr2[length2];
        itemArr2[length2] = item;
    }

    public com.alibaba.fastjson.asm.Item newClassItem(java.lang.String str) {
        this.key2.set(7, str, null, null);
        com.alibaba.fastjson.asm.Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        this.pool.put12(7, newUTF8(str));
        int i = this.index;
        this.index = i + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i, this.key2);
        put(item2);
        return item2;
    }

    public com.alibaba.fastjson.asm.Item newConstItem(java.lang.Object obj) {
        if (!(obj instanceof java.lang.Integer)) {
            if (obj instanceof java.lang.String) {
                return newString((java.lang.String) obj);
            }
            if (!(obj instanceof com.alibaba.fastjson.asm.Type)) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.d("value ", obj));
            }
            com.alibaba.fastjson.asm.Type type = (com.alibaba.fastjson.asm.Type) obj;
            return newClassItem(type.sort == 10 ? type.getInternalName() : type.getDescriptor());
        }
        int iIntValue = ((java.lang.Integer) obj).intValue();
        this.key.set(iIntValue);
        com.alibaba.fastjson.asm.Item item = get(this.key);
        if (item != null) {
            return item;
        }
        this.pool.putByte(3).putInt(iIntValue);
        int i = this.index;
        this.index = i + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i, this.key);
        put(item2);
        return item2;
    }

    public com.alibaba.fastjson.asm.Item newFieldItem(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.key3.set(9, str, str2, str3);
        com.alibaba.fastjson.asm.Item item = get(this.key3);
        if (item != null) {
            return item;
        }
        int i = newClassItem(str).index;
        this.pool.put12(9, i).putShort(newNameTypeItem(str2, str3).index);
        int i2 = this.index;
        this.index = i2 + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i2, this.key3);
        put(item2);
        return item2;
    }

    public com.alibaba.fastjson.asm.Item newMethodItem(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
        int i = z ? 11 : 10;
        this.key3.set(i, str, str2, str3);
        com.alibaba.fastjson.asm.Item item = get(this.key3);
        if (item != null) {
            return item;
        }
        this.pool.put12(i, newClassItem(str).index).putShort(newNameTypeItem(str2, str3).index);
        int i2 = this.index;
        this.index = i2 + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i2, this.key3);
        put(item2);
        return item2;
    }

    public com.alibaba.fastjson.asm.Item newNameTypeItem(java.lang.String str, java.lang.String str2) {
        this.key2.set(12, str, str2, null);
        com.alibaba.fastjson.asm.Item item = get(this.key2);
        if (item != null) {
            return item;
        }
        int iNewUTF8 = newUTF8(str);
        this.pool.put12(12, iNewUTF8).putShort(newUTF8(str2));
        int i = this.index;
        this.index = i + 1;
        com.alibaba.fastjson.asm.Item item2 = new com.alibaba.fastjson.asm.Item(i, this.key2);
        put(item2);
        return item2;
    }

    public int newUTF8(java.lang.String str) {
        this.key.set(1, str, null, null);
        com.alibaba.fastjson.asm.Item item = get(this.key);
        if (item == null) {
            this.pool.putByte(1).putUTF8(str);
            int i = this.index;
            this.index = i + 1;
            item = new com.alibaba.fastjson.asm.Item(i, this.key);
            put(item);
        }
        return item.index;
    }

    public byte[] toByteArray() {
        int size = (this.interfaceCount * 2) + 24;
        int i = 0;
        for (com.alibaba.fastjson.asm.FieldWriter fieldWriter = this.firstField; fieldWriter != null; fieldWriter = fieldWriter.next) {
            i++;
            size += fieldWriter.getSize();
        }
        int i2 = 0;
        for (com.alibaba.fastjson.asm.MethodWriter methodWriter = this.firstMethod; methodWriter != null; methodWriter = methodWriter.next) {
            i2++;
            size += methodWriter.getSize();
        }
        com.alibaba.fastjson.asm.ByteVector byteVector = new com.alibaba.fastjson.asm.ByteVector(size + this.pool.length);
        byteVector.putInt(-889275714).putInt(this.version);
        com.alibaba.fastjson.asm.ByteVector byteVectorPutShort = byteVector.putShort(this.index);
        com.alibaba.fastjson.asm.ByteVector byteVector2 = this.pool;
        byteVectorPutShort.putByteArray(byteVector2.data, 0, byteVector2.length);
        byteVector.putShort(this.access & (-393217)).putShort(this.name).putShort(this.superName);
        byteVector.putShort(this.interfaceCount);
        for (int i3 = 0; i3 < this.interfaceCount; i3++) {
            byteVector.putShort(this.interfaces[i3]);
        }
        byteVector.putShort(i);
        for (com.alibaba.fastjson.asm.FieldWriter fieldWriter2 = this.firstField; fieldWriter2 != null; fieldWriter2 = fieldWriter2.next) {
            fieldWriter2.put(byteVector);
        }
        byteVector.putShort(i2);
        for (com.alibaba.fastjson.asm.MethodWriter methodWriter2 = this.firstMethod; methodWriter2 != null; methodWriter2 = methodWriter2.next) {
            methodWriter2.put(byteVector);
        }
        byteVector.putShort(0);
        return byteVector.data;
    }

    public void visit(int i, int i2, java.lang.String str, java.lang.String str2, java.lang.String[] strArr) {
        this.version = i;
        this.access = i2;
        this.name = newClassItem(str).index;
        this.thisName = str;
        this.superName = str2 == null ? 0 : newClassItem(str2).index;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.interfaceCount = length;
        this.interfaces = new int[length];
        for (int i3 = 0; i3 < this.interfaceCount; i3++) {
            this.interfaces[i3] = newClassItem(strArr[i3]).index;
        }
    }
}
