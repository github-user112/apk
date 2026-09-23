package com.huawei.hms.common.parcel;

/* loaded from: classes.dex */
public class ParcelWrite {
    public static final int a = 65262;
    public android.os.Parcel b;

    public ParcelWrite(android.os.Parcel parcel) {
        this.b = parcel;
    }

    private int a(int i) {
        this.b.writeInt(i | com.umeng.analytics.pro.bi.a);
        this.b.writeInt(0);
        return this.b.dataPosition();
    }

    private void a(int i, int i2) {
        if (i2 < 65535) {
            this.b.writeInt(i | (i2 << 16));
        } else {
            this.b.writeInt(i | com.umeng.analytics.pro.bi.a);
            this.b.writeInt(i2);
        }
    }

    private <T extends android.os.Parcelable> void a(T t, int i) {
        int iDataPosition = this.b.dataPosition();
        this.b.writeInt(1);
        int iDataPosition2 = this.b.dataPosition();
        t.writeToParcel(this.b, i);
        int iDataPosition3 = this.b.dataPosition();
        this.b.setDataPosition(iDataPosition);
        this.b.writeInt(iDataPosition3 - iDataPosition2);
        this.b.setDataPosition(iDataPosition3);
    }

    private void b(int i) {
        int iDataPosition = this.b.dataPosition();
        this.b.setDataPosition(i - 4);
        this.b.writeInt(iDataPosition - i);
        this.b.setDataPosition(iDataPosition);
    }

    public int beginObjectHeader() {
        return a(65262);
    }

    public void finishObjectHeader(int i) {
        b(i);
    }

    public void writeBigDecimal(int i, java.math.BigDecimal bigDecimal, boolean z) {
        if (bigDecimal == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeByteArray(bigDecimal.unscaledValue().toByteArray());
            this.b.writeInt(bigDecimal.scale());
            b(iA);
        }
    }

    public void writeBigDecimalArray(int i, java.math.BigDecimal[] bigDecimalArr, boolean z) {
        if (bigDecimalArr == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int length = bigDecimalArr.length;
        this.b.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            this.b.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            this.b.writeInt(bigDecimalArr[i2].scale());
        }
        b(iA);
    }

    public void writeBigInteger(int i, java.math.BigInteger bigInteger, boolean z) {
        if (bigInteger == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeByteArray(bigInteger.toByteArray());
            b(iA);
        }
    }

    public void writeBigIntegerArray(int i, java.math.BigInteger[] bigIntegerArr, boolean z) {
        if (bigIntegerArr == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        this.b.writeInt(bigIntegerArr.length);
        for (java.math.BigInteger bigInteger : bigIntegerArr) {
            this.b.writeByteArray(bigInteger.toByteArray());
        }
        b(iA);
    }

    public void writeBoolean(int i, boolean z) {
        a(i, 4);
        this.b.writeInt(z ? 1 : 0);
    }

    public void writeBooleanArray(int i, boolean[] zArr, boolean z) {
        if (zArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeBooleanArray(zArr);
            b(iA);
        }
    }

    public void writeBooleanList(int i, java.util.List<java.lang.Boolean> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(list.get(i2).booleanValue() ? 1 : 0);
        }
        b(iA);
    }

    public void writeBooleanObject(int i, java.lang.Boolean bool) {
        writeBooleanObject(i, bool, false);
    }

    public void writeBooleanObject(int i, java.lang.Boolean bool, boolean z) {
        if (bool != null) {
            a(i, 4);
            this.b.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            a(i, 0);
        }
    }

    public void writeBundle(int i, android.os.Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeBundle(bundle);
            b(iA);
        }
    }

    public void writeByte(int i, byte b) {
        a(i, 4);
        this.b.writeInt(b);
    }

    public void writeByteArray(int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeByteArray(bArr);
            b(iA);
        }
    }

    public void writeByteArrayArray(int i, byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        this.b.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            this.b.writeByteArray(bArr2);
        }
        b(iA);
    }

    public void writeByteArraySparseArray(int i, android.util.SparseArray<byte[]> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            this.b.writeByteArray(sparseArray.valueAt(i2));
        }
        b(iA);
    }

    public void writeChar(int i, char c2) {
        a(i, 4);
        this.b.writeInt(c2);
    }

    public void writeCharArray(int i, char[] cArr, boolean z) {
        if (cArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeCharArray(cArr);
            b(iA);
        }
    }

    public void writeDouble(int i, double d2) {
        a(i, 8);
        this.b.writeDouble(d2);
    }

    public void writeDoubleArray(int i, double[] dArr, boolean z) {
        if (dArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeDoubleArray(dArr);
            b(iA);
        }
    }

    public void writeDoubleList(int i, java.util.List<java.lang.Double> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeDouble(list.get(i2).doubleValue());
        }
        b(iA);
    }

    public void writeDoubleObject(int i, java.lang.Double d2, boolean z) {
        if (d2 != null) {
            a(i, 8);
            this.b.writeDouble(d2.doubleValue());
        } else if (z) {
            a(i, 0);
        }
    }

    public void writeDoubleSparseArray(int i, android.util.SparseArray<java.lang.Double> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            this.b.writeDouble(sparseArray.valueAt(i2).doubleValue());
        }
        b(iA);
    }

    public void writeFloat(int i, float f2) {
        a(i, 4);
        this.b.writeFloat(f2);
    }

    public void writeFloatArray(int i, float[] fArr, boolean z) {
        if (fArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeFloatArray(fArr);
            b(iA);
        }
    }

    public void writeFloatList(int i, java.util.List<java.lang.Float> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeFloat(list.get(i2).floatValue());
        }
        b(iA);
    }

    public void writeFloatObject(int i, java.lang.Float f2, boolean z) {
        if (f2 != null) {
            a(i, 4);
            this.b.writeFloat(f2.floatValue());
        } else if (z) {
            a(i, 0);
        }
    }

    public void writeFloatSparseArray(int i, android.util.SparseArray<java.lang.Float> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            this.b.writeFloat(sparseArray.valueAt(i2).floatValue());
        }
        b(iA);
    }

    public void writeIBinder(int i, android.os.IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeStrongBinder(iBinder);
            b(iA);
        }
    }

    public void writeIBinderArray(int i, android.os.IBinder[] iBinderArr, boolean z) {
        if (iBinderArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeBinderArray(iBinderArr);
            b(iA);
        }
    }

    public void writeIBinderList(int i, java.util.List<android.os.IBinder> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeBinderList(list);
            b(iA);
        }
    }

    public void writeIBinderSparseArray(int i, android.util.SparseArray<android.os.IBinder> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            this.b.writeStrongBinder(sparseArray.valueAt(i2));
        }
        b(iA);
    }

    public void writeInt(int i, int i2) {
        a(i, 4);
        this.b.writeInt(i2);
    }

    public void writeIntArray(int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeIntArray(iArr);
            b(iA);
        }
    }

    public void writeIntegerList(int i, java.util.List<java.lang.Integer> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(list.get(i2).intValue());
        }
        b(iA);
    }

    public void writeIntegerObject(int i, java.lang.Integer num, boolean z) {
        if (num != null) {
            a(i, 4);
            this.b.writeInt(num.intValue());
        } else if (z) {
            a(i, 0);
        }
    }

    public void writeList(int i, java.util.List list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeList(list);
            b(iA);
        }
    }

    public void writeLong(int i, long j) {
        a(i, 8);
        this.b.writeLong(j);
    }

    public void writeLongArray(int i, long[] jArr, boolean z) {
        if (jArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeLongArray(jArr);
            b(iA);
        }
    }

    public void writeLongList(int i, java.util.List<java.lang.Long> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeLong(list.get(i2).longValue());
        }
        b(iA);
    }

    public void writeLongObject(int i, java.lang.Long l, boolean z) {
        if (l != null) {
            a(i, 8);
            this.b.writeLong(l.longValue());
        } else if (z) {
            a(i, 0);
        }
    }

    public void writeParcel(int i, android.os.Parcel parcel, boolean z) {
        if (parcel == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.appendFrom(parcel, 0, parcel.dataSize());
            b(iA);
        }
    }

    public void writeParcelArray(int i, android.os.Parcel[] parcelArr, boolean z) {
        if (parcelArr == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        this.b.writeInt(parcelArr.length);
        for (android.os.Parcel parcel : parcelArr) {
            if (parcel != null) {
                this.b.writeInt(parcel.dataSize());
                this.b.appendFrom(parcel, 0, parcel.dataSize());
            } else {
                this.b.writeInt(0);
            }
        }
        b(iA);
    }

    public void writeParcelList(int i, java.util.List<android.os.Parcel> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            android.os.Parcel parcel = list.get(i2);
            if (parcel != null) {
                this.b.writeInt(parcel.dataSize());
                this.b.appendFrom(parcel, 0, parcel.dataSize());
            } else {
                this.b.writeInt(0);
            }
        }
        b(iA);
    }

    public void writeParcelSparseArray(int i, android.util.SparseArray<android.os.Parcel> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            android.os.Parcel parcelValueAt = sparseArray.valueAt(i2);
            if (parcelValueAt != null) {
                this.b.writeInt(parcelValueAt.dataSize());
                this.b.appendFrom(parcelValueAt, 0, parcelValueAt.dataSize());
            } else {
                this.b.writeInt(0);
            }
        }
        b(iA);
    }

    public void writeParcelable(int i, android.os.Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            parcelable.writeToParcel(this.b, i2);
            b(iA);
        }
    }

    public void writeShort(int i, short s) {
        a(i, 4);
        this.b.writeInt(s);
    }

    public void writeSparseBooleanArray(int i, android.util.SparseBooleanArray sparseBooleanArray, boolean z) {
        if (sparseBooleanArray == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeSparseBooleanArray(sparseBooleanArray);
            b(iA);
        }
    }

    public void writeSparseIntArray(int i, android.util.SparseIntArray sparseIntArray, boolean z) {
        if (sparseIntArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseIntArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseIntArray.keyAt(i2));
            this.b.writeInt(sparseIntArray.valueAt(i2));
        }
        b(iA);
    }

    public void writeSparseLongArray(int i, android.util.SparseLongArray sparseLongArray, boolean z) {
        if (sparseLongArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseLongArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseLongArray.keyAt(i2));
            this.b.writeLong(sparseLongArray.valueAt(i2));
        }
        b(iA);
    }

    public void writeString(int i, java.lang.String str, boolean z) {
        if (str == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeString(str);
            b(iA);
        }
    }

    public void writeStringArray(int i, java.lang.String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeStringArray(strArr);
            b(iA);
        }
    }

    public void writeStringList(int i, java.util.List<java.lang.String> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
            }
        } else {
            int iA = a(i);
            this.b.writeStringList(list);
            b(iA);
        }
    }

    public void writeStringSparseArray(int i, android.util.SparseArray<java.lang.String> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            this.b.writeString(sparseArray.valueAt(i2));
        }
        b(iA);
    }

    public <T extends android.os.Parcelable> void writeTypedArray(int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        this.b.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                this.b.writeInt(0);
            } else {
                a((com.huawei.hms.common.parcel.ParcelWrite) t, i2);
            }
        }
        b(iA);
    }

    public <T extends android.os.Parcelable> void writeTypedList(int i, java.util.List<T> list, boolean z) {
        if (list == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = list.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                this.b.writeInt(0);
            } else {
                a((com.huawei.hms.common.parcel.ParcelWrite) t, 0);
            }
        }
        b(iA);
    }

    public <T extends android.os.Parcelable> void writeTypedSparseArray(int i, android.util.SparseArray<T> sparseArray, boolean z) {
        if (sparseArray == null) {
            if (z) {
                a(i, 0);
                return;
            }
            return;
        }
        int iA = a(i);
        int size = sparseArray.size();
        this.b.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.b.writeInt(sparseArray.keyAt(i2));
            T tValueAt = sparseArray.valueAt(i2);
            if (tValueAt == null) {
                this.b.writeInt(0);
            } else {
                a((com.huawei.hms.common.parcel.ParcelWrite) tValueAt, 0);
            }
        }
        b(iA);
    }
}
