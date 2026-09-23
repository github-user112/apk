package com.huawei.hms.common.parcel;

/* loaded from: classes.dex */
public class ParcelReader {
    public static final int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static final int f248c = 1;

    /* renamed from: d, reason: collision with root package name */
    public static final int f249d = 65262;
    public java.util.HashMap<java.lang.Integer, java.lang.Integer[]> a = new java.util.HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public android.os.Parcel f250e;

    public class ParseException extends java.lang.RuntimeException {
        public ParseException(java.lang.String str, android.os.Parcel parcel) {
            super(str);
        }
    }

    public ParcelReader(android.os.Parcel parcel) {
        this.f250e = parcel;
        a();
    }

    private int a(int i) {
        java.lang.Integer[] numArr = this.a.get(java.lang.Integer.valueOf(i));
        if (numArr == null) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("Field is null:".concat(java.lang.String.valueOf(numArr)), this.f250e);
        }
        this.f250e.setDataPosition(numArr[0].intValue());
        return numArr[1].intValue();
    }

    private void a() {
        int i = this.f250e.readInt();
        int i2 = i & 65535;
        int i3 = (i & com.umeng.analytics.pro.bi.a) != -65536 ? (i >> 16) & 65535 : this.f250e.readInt();
        if (i2 != 65262) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("Parse header error, not 65262. Got 0x".concat(java.lang.String.valueOf(java.lang.Integer.toHexString(i2))), this.f250e);
        }
        int iDataPosition = this.f250e.dataPosition();
        int i4 = i3 + iDataPosition;
        if (i4 < iDataPosition || i4 > this.f250e.dataSize()) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("invalid size, start=" + iDataPosition + " end=" + i4, this.f250e);
        }
        while (this.f250e.dataPosition() < i4) {
            int i5 = this.f250e.readInt();
            int i6 = i5 & 65535;
            int i7 = (i5 & com.umeng.analytics.pro.bi.a) != -65536 ? (i5 >> 16) & 65535 : this.f250e.readInt();
            int iDataPosition2 = this.f250e.dataPosition();
            this.a.put(java.lang.Integer.valueOf(i6), new java.lang.Integer[]{java.lang.Integer.valueOf(iDataPosition2), java.lang.Integer.valueOf(i7)});
            this.f250e.setDataPosition(iDataPosition2 + i7);
        }
        if (this.f250e.dataPosition() != i4) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("the dataPosition is not".concat(java.lang.String.valueOf(i4)), this.f250e);
        }
    }

    private void a(int i, int i2) {
        java.lang.Integer[] numArr = this.a.get(java.lang.Integer.valueOf(i));
        if (numArr == null) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("Field is null:".concat(java.lang.String.valueOf(numArr)), this.f250e);
        }
        int iIntValue = numArr[1].intValue();
        if (iIntValue == i2) {
            return;
        }
        java.lang.String hexString = java.lang.Integer.toHexString(iIntValue);
        java.lang.StringBuilder sb = new java.lang.StringBuilder("the field size is not ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(iIntValue);
        sb.append(" (0x");
        throw new com.huawei.hms.common.parcel.ParcelReader.ParseException(e.a.c.a.a.j(sb, hexString, ")"), this.f250e);
    }

    private int b(int i, int i2) {
        java.lang.Integer[] numArr = this.a.get(java.lang.Integer.valueOf(i));
        if (numArr == null) {
            throw new com.huawei.hms.common.parcel.ParcelReader.ParseException("Field is null:".concat(java.lang.String.valueOf(numArr)), this.f250e);
        }
        this.f250e.setDataPosition(numArr[0].intValue());
        a(i, i2);
        return i2;
    }

    public java.math.BigDecimal createBigDecimal(int i, java.math.BigDecimal bigDecimal) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bigDecimal;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        byte[] bArrCreateByteArray = this.f250e.createByteArray();
        int i2 = this.f250e.readInt();
        this.f250e.setDataPosition(iDataPosition + iA);
        return new java.math.BigDecimal(new java.math.BigInteger(bArrCreateByteArray), i2);
    }

    public java.math.BigDecimal[] createBigDecimalArray(int i, java.math.BigDecimal[] bigDecimalArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bigDecimalArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        java.math.BigDecimal[] bigDecimalArr2 = new java.math.BigDecimal[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArrCreateByteArray = this.f250e.createByteArray();
            bigDecimalArr2[i3] = new java.math.BigDecimal(new java.math.BigInteger(bArrCreateByteArray), this.f250e.readInt());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return bigDecimalArr2;
    }

    public java.math.BigInteger createBigInteger(int i, java.math.BigInteger bigInteger) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bigInteger;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        byte[] bArrCreateByteArray = this.f250e.createByteArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return new java.math.BigInteger(bArrCreateByteArray);
    }

    public java.math.BigInteger[] createBigIntegerArray(int i, java.math.BigInteger[] bigIntegerArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bigIntegerArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        java.math.BigInteger[] bigIntegerArr2 = new java.math.BigInteger[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bigIntegerArr2[i3] = new java.math.BigInteger(this.f250e.createByteArray());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return bigIntegerArr2;
    }

    public boolean[] createBooleanArray(int i, boolean[] zArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return zArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        boolean[] zArrCreateBooleanArray = this.f250e.createBooleanArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return zArrCreateBooleanArray;
    }

    public java.util.ArrayList<java.lang.Boolean> createBooleanList(int i, java.util.ArrayList<java.lang.Boolean> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.Boolean> arrayList2 = new java.util.ArrayList<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList2.add(java.lang.Boolean.valueOf(this.f250e.readInt() != 0));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public byte[] createByteArray(int i, byte[] bArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        byte[] bArrCreateByteArray = this.f250e.createByteArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return bArrCreateByteArray;
    }

    public byte[][] createByteArrayArray(int i, byte[][] bArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        byte[][] bArr2 = new byte[i2][];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = this.f250e.createByteArray();
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return bArr2;
    }

    public android.util.SparseArray<byte[]> createByteArraySparseArray(int i, android.util.SparseArray<byte[]> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        android.util.SparseArray<byte[]> sparseArray2 = new android.util.SparseArray<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), this.f250e.createByteArray());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public char[] createCharArray(int i, char[] cArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return cArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        char[] cArrCreateCharArray = this.f250e.createCharArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return cArrCreateCharArray;
    }

    public double[] createDoubleArray(int i, double[] dArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return dArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        double[] dArrCreateDoubleArray = this.f250e.createDoubleArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return dArrCreateDoubleArray;
    }

    public java.util.ArrayList<java.lang.Double> createDoubleList(int i, java.util.ArrayList<java.lang.Double> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.Double> arrayList2 = new java.util.ArrayList<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList2.add(java.lang.Double.valueOf(this.f250e.readDouble()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public android.util.SparseArray<java.lang.Double> createDoubleSparseArray(int i, android.util.SparseArray<java.lang.Double> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseArray<java.lang.Double> sparseArray2 = new android.util.SparseArray<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), java.lang.Double.valueOf(this.f250e.readDouble()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public float[] createFloatArray(int i, float[] fArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return fArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        float[] fArrCreateFloatArray = this.f250e.createFloatArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return fArrCreateFloatArray;
    }

    public java.util.ArrayList<java.lang.Float> createFloatList(int i, java.util.ArrayList<java.lang.Float> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.Float> arrayList2 = new java.util.ArrayList<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList2.add(java.lang.Float.valueOf(this.f250e.readFloat()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public android.util.SparseArray<java.lang.Float> createFloatSparseArray(int i, android.util.SparseArray<java.lang.Float> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseArray<java.lang.Float> sparseArray2 = new android.util.SparseArray<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), java.lang.Float.valueOf(this.f250e.readFloat()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public android.os.IBinder[] createIBinderArray(int i, android.os.IBinder[] iBinderArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return iBinderArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.os.IBinder[] iBinderArrCreateBinderArray = this.f250e.createBinderArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return iBinderArrCreateBinderArray;
    }

    public java.util.ArrayList<android.os.IBinder> createIBinderList(int i, java.util.ArrayList<android.os.IBinder> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<android.os.IBinder> arrayListCreateBinderArrayList = this.f250e.createBinderArrayList();
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayListCreateBinderArrayList;
    }

    public android.util.SparseArray<android.os.IBinder> createIBinderSparseArray(int i, android.util.SparseArray<android.os.IBinder> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        android.util.SparseArray<android.os.IBinder> sparseArray2 = new android.util.SparseArray<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), this.f250e.readStrongBinder());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public int[] createIntArray(int i, int[] iArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return iArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int[] iArrCreateIntArray = this.f250e.createIntArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return iArrCreateIntArray;
    }

    public java.util.ArrayList<java.lang.Integer> createIntegerList(int i, java.util.ArrayList<java.lang.Integer> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.Integer> arrayList2 = new java.util.ArrayList<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList2.add(java.lang.Integer.valueOf(this.f250e.readInt()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public long[] createLongArray(int i, long[] jArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return jArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        long[] jArrCreateLongArray = this.f250e.createLongArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return jArrCreateLongArray;
    }

    public java.util.ArrayList<java.lang.Long> createLongList(int i, java.util.ArrayList<java.lang.Long> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.Long> arrayList2 = new java.util.ArrayList<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList2.add(java.lang.Long.valueOf(this.f250e.readLong()));
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public android.os.Parcel createParcel(int i, android.os.Parcel parcel) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return parcel;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        parcelObtain.appendFrom(this.f250e, iDataPosition, iA);
        this.f250e.setDataPosition(iDataPosition + iA);
        return parcelObtain;
    }

    public android.os.Parcel[] createParcelArray(int i, android.os.Parcel[] parcelArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return parcelArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        android.os.Parcel[] parcelArr2 = new android.os.Parcel[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f250e.readInt();
            if (i4 != 0) {
                int iDataPosition2 = this.f250e.dataPosition();
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                parcelObtain.appendFrom(this.f250e, iDataPosition2, i4);
                parcelArr2[i3] = parcelObtain;
                this.f250e.setDataPosition(iDataPosition2 + i4);
            } else {
                parcelArr2[i3] = null;
            }
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return parcelArr2;
    }

    public java.util.ArrayList<android.os.Parcel> createParcelList(int i, java.util.ArrayList<android.os.Parcel> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        java.util.ArrayList<android.os.Parcel> arrayList2 = new java.util.ArrayList<>();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f250e.readInt();
            if (i4 != 0) {
                int iDataPosition2 = this.f250e.dataPosition();
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                parcelObtain.appendFrom(this.f250e, iDataPosition2, i4);
                arrayList2.add(parcelObtain);
                this.f250e.setDataPosition(iDataPosition2 + i4);
            } else {
                arrayList2.add(null);
            }
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayList2;
    }

    public android.util.SparseArray<android.os.Parcel> createParcelSparseArray(int i, android.util.SparseArray<android.os.Parcel> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        android.util.SparseArray<android.os.Parcel> sparseArray2 = new android.util.SparseArray<>();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f250e.readInt();
            int i5 = this.f250e.readInt();
            if (i5 != 0) {
                int iDataPosition2 = this.f250e.dataPosition();
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                parcelObtain.appendFrom(this.f250e, iDataPosition2, i5);
                sparseArray2.append(i4, parcelObtain);
                this.f250e.setDataPosition(iDataPosition2 + i5);
            } else {
                sparseArray2.append(i4, null);
            }
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public android.util.SparseBooleanArray createSparseBooleanArray(int i, android.util.SparseBooleanArray sparseBooleanArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseBooleanArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseBooleanArray sparseBooleanArray2 = this.f250e.readSparseBooleanArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseBooleanArray2;
    }

    public android.util.SparseIntArray createSparseIntArray(int i, android.util.SparseIntArray sparseIntArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseIntArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseIntArray sparseIntArray2 = new android.util.SparseIntArray();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseIntArray2.append(this.f250e.readInt(), this.f250e.readInt());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseIntArray2;
    }

    public android.util.SparseLongArray createSparseLongArray(int i, android.util.SparseLongArray sparseLongArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseLongArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseLongArray sparseLongArray2 = new android.util.SparseLongArray();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseLongArray2.append(this.f250e.readInt(), this.f250e.readLong());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseLongArray2;
    }

    public java.lang.String createString(int i, java.lang.String str) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return str;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.lang.String string = this.f250e.readString();
        this.f250e.setDataPosition(iDataPosition + iA);
        return string;
    }

    public java.lang.String[] createStringArray(int i, java.lang.String[] strArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return strArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.lang.String[] strArrCreateStringArray = this.f250e.createStringArray();
        this.f250e.setDataPosition(iDataPosition + iA);
        return strArrCreateStringArray;
    }

    public java.util.ArrayList<java.lang.String> createStringList(int i, java.util.ArrayList<java.lang.String> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<java.lang.String> arrayListCreateStringArrayList = this.f250e.createStringArrayList();
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayListCreateStringArrayList;
    }

    public android.util.SparseArray<java.lang.String> createStringSparseArray(int i, android.util.SparseArray<java.lang.String> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.util.SparseArray<java.lang.String> sparseArray2 = new android.util.SparseArray<>();
        int i2 = this.f250e.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), this.f250e.readString());
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public <T> T[] createTypedArray(int i, android.os.Parcelable.Creator<T> creator, T[] tArr) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return tArr;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        T[] tArr2 = (T[]) this.f250e.createTypedArray(creator);
        this.f250e.setDataPosition(iDataPosition + iA);
        return tArr2;
    }

    public <T> java.util.ArrayList<T> createTypedList(int i, android.os.Parcelable.Creator<T> creator, java.util.ArrayList<T> arrayList) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return arrayList;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        java.util.ArrayList<T> arrayListCreateTypedArrayList = this.f250e.createTypedArrayList(creator);
        this.f250e.setDataPosition(iDataPosition + iA);
        return arrayListCreateTypedArrayList;
    }

    public <T> android.util.SparseArray<T> createTypedSparseArray(int i, android.os.Parcelable.Creator<T> creator, android.util.SparseArray<T> sparseArray) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return sparseArray;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        int i2 = this.f250e.readInt();
        android.util.SparseArray<T> sparseArray2 = new android.util.SparseArray<>();
        for (int i3 = 0; i3 < i2; i3++) {
            sparseArray2.append(this.f250e.readInt(), this.f250e.readInt() != 0 ? creator.createFromParcel(this.f250e) : null);
        }
        this.f250e.setDataPosition(iDataPosition + iA);
        return sparseArray2;
    }

    public boolean readBoolean(int i, boolean z) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return z;
        }
        b(i, 4);
        return this.f250e.readInt() != 0;
    }

    public java.lang.Boolean readBooleanObject(int i, java.lang.Boolean bool) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bool;
        }
        if (a(i) == 0) {
            return null;
        }
        a(i, 4);
        int i2 = this.f250e.readInt();
        if (i2 == 0) {
            return java.lang.Boolean.FALSE;
        }
        if (i2 != 1) {
            return null;
        }
        return java.lang.Boolean.TRUE;
    }

    public android.os.Bundle readBundle(int i, android.os.Bundle bundle) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return bundle;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.os.Bundle bundle2 = this.f250e.readBundle();
        this.f250e.setDataPosition(iDataPosition + iA);
        return bundle2;
    }

    public byte readByte(int i, byte b2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return b2;
        }
        b(i, 4);
        return (byte) this.f250e.readInt();
    }

    public char readChar(int i, char c2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return c2;
        }
        b(i, 4);
        return (char) this.f250e.readInt();
    }

    public double readDouble(int i, double d2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return d2;
        }
        b(i, 8);
        return this.f250e.readDouble();
    }

    public java.lang.Double readDoubleObject(int i, java.lang.Double d2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return d2;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        a(iA, 8);
        return java.lang.Double.valueOf(this.f250e.readDouble());
    }

    public float readFloat(int i, float f2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return f2;
        }
        b(i, 4);
        return this.f250e.readFloat();
    }

    public java.lang.Float readFloatObject(int i, java.lang.Float f2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return f2;
        }
        if (a(i) == 0) {
            return null;
        }
        a(i, 4);
        return java.lang.Float.valueOf(this.f250e.readFloat());
    }

    public android.os.IBinder readIBinder(int i, android.os.IBinder iBinder) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return iBinder;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        android.os.IBinder strongBinder = this.f250e.readStrongBinder();
        this.f250e.setDataPosition(iDataPosition + iA);
        return strongBinder;
    }

    public int readInt(int i, int i2) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return i2;
        }
        b(i, 4);
        return this.f250e.readInt();
    }

    public java.lang.Integer readIntegerObject(int i, java.lang.Integer num) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return num;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        a(iA, 4);
        return java.lang.Integer.valueOf(this.f250e.readInt());
    }

    public void readList(int i, java.util.List list, java.lang.ClassLoader classLoader) {
        if (this.a.containsKey(java.lang.Integer.valueOf(i))) {
            int iA = a(i);
            int iDataPosition = this.f250e.dataPosition();
            if (iA != 0) {
                this.f250e.readList(list, classLoader);
                this.f250e.setDataPosition(iDataPosition + iA);
            }
        }
    }

    public long readLong(int i, long j) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return j;
        }
        b(i, 8);
        return this.f250e.readLong();
    }

    public java.lang.Long readLongObject(int i, java.lang.Long l) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return l;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        a(iA, 8);
        return java.lang.Long.valueOf(this.f250e.readLong());
    }

    public <T extends android.os.Parcelable> T readParcelable(int i, android.os.Parcelable.Creator<T> creator, T t) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return t;
        }
        int iA = a(i);
        if (iA == 0) {
            return null;
        }
        int iDataPosition = this.f250e.dataPosition();
        T tCreateFromParcel = creator.createFromParcel(this.f250e);
        this.f250e.setDataPosition(iDataPosition + iA);
        return tCreateFromParcel;
    }

    public short readShort(int i, short s) {
        if (!this.a.containsKey(java.lang.Integer.valueOf(i))) {
            return s;
        }
        b(i, 4);
        return (short) this.f250e.readInt();
    }
}
