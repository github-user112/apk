package com.tencent.tinker.android.utils;

/* loaded from: classes.dex */
public class SparseIntArray implements java.lang.Cloneable {
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public int[] mKeys;
    public int mSize;
    public int[] mValues;

    public SparseIntArray() {
        this(10);
    }

    public SparseIntArray(int i) {
        if (i == 0) {
            int[] iArr = EMPTY_INT_ARRAY;
            this.mKeys = iArr;
            this.mValues = iArr;
        } else {
            int[] iArr2 = new int[i];
            this.mKeys = iArr2;
            this.mValues = new int[iArr2.length];
        }
        this.mSize = 0;
    }

    private int[] appendElementIntoIntArray(int[] iArr, int i, int i2) {
        if (i > iArr.length) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Bad currentSize, originalSize: ");
            sbO.append(iArr.length);
            sbO.append(" currentSize: ");
            sbO.append(i);
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        if (i + 1 > iArr.length) {
            int[] iArr2 = new int[growSize(i)];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr = iArr2;
        }
        iArr[i] = i2;
        return iArr;
    }

    private int binarySearch(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    public static int growSize(int i) {
        if (i <= 4) {
            return 8;
        }
        return i + (i >> 1);
    }

    private int[] insertElementIntoIntArray(int[] iArr, int i, int i2, int i3) {
        if (i > iArr.length) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Bad currentSize, originalSize: ");
            sbO.append(iArr.length);
            sbO.append(" currentSize: ");
            sbO.append(i);
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        if (i + 1 <= iArr.length) {
            java.lang.System.arraycopy(iArr, i2, iArr, i2 + 1, i - i2);
            iArr[i2] = i3;
            return iArr;
        }
        int[] iArr2 = new int[growSize(i)];
        java.lang.System.arraycopy(iArr, 0, iArr2, 0, i2);
        iArr2[i2] = i3;
        java.lang.System.arraycopy(iArr, i2, iArr2, i2 + 1, iArr.length - i2);
        return iArr2;
    }

    public void append(int i, int i2) {
        int i3 = this.mSize;
        if (i3 != 0 && i <= this.mKeys[i3 - 1]) {
            put(i, i2);
            return;
        }
        this.mKeys = appendElementIntoIntArray(this.mKeys, this.mSize, i);
        this.mValues = appendElementIntoIntArray(this.mValues, this.mSize, i2);
        this.mSize++;
    }

    public void clear() {
        this.mSize = 0;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.tencent.tinker.android.utils.SparseIntArray m7clone() {
        com.tencent.tinker.android.utils.SparseIntArray sparseIntArray = null;
        try {
            com.tencent.tinker.android.utils.SparseIntArray sparseIntArray2 = (com.tencent.tinker.android.utils.SparseIntArray) super.clone();
            try {
                sparseIntArray2.mKeys = (int[]) this.mKeys.clone();
                sparseIntArray2.mValues = (int[]) this.mValues.clone();
                return sparseIntArray2;
            } catch (java.lang.CloneNotSupportedException unused) {
                sparseIntArray = sparseIntArray2;
                return sparseIntArray;
            }
        } catch (java.lang.CloneNotSupportedException unused2) {
        }
    }

    public boolean containsKey(int i) {
        return indexOfKey(i) >= 0;
    }

    public void delete(int i) {
        int iBinarySearch = binarySearch(this.mKeys, this.mSize, i);
        if (iBinarySearch >= 0) {
            removeAt(iBinarySearch);
        }
    }

    public int get(int i) {
        return get(i, 0);
    }

    public int get(int i, int i2) {
        int iBinarySearch = binarySearch(this.mKeys, this.mSize, i);
        return iBinarySearch < 0 ? i2 : this.mValues[iBinarySearch];
    }

    public int indexOfKey(int i) {
        return binarySearch(this.mKeys, this.mSize, i);
    }

    public int indexOfValue(int i) {
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public int keyAt(int i) {
        return this.mKeys[i];
    }

    public void put(int i, int i2) {
        int iBinarySearch = binarySearch(this.mKeys, this.mSize, i);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = i2;
            return;
        }
        int i3 = iBinarySearch ^ (-1);
        this.mKeys = insertElementIntoIntArray(this.mKeys, this.mSize, i3, i);
        this.mValues = insertElementIntoIntArray(this.mValues, this.mSize, i3, i2);
        this.mSize++;
    }

    public void removeAt(int i) {
        int[] iArr = this.mKeys;
        int i2 = i + 1;
        java.lang.System.arraycopy(iArr, i2, iArr, i, this.mSize - i2);
        int[] iArr2 = this.mValues;
        java.lang.System.arraycopy(iArr2, i2, iArr2, i, this.mSize - i2);
        this.mSize--;
    }

    public int size() {
        return this.mSize;
    }

    public java.lang.String toString() {
        if (size() <= 0) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i));
            sb.append('=');
            sb.append(valueAt(i));
        }
        sb.append('}');
        return sb.toString();
    }

    public int valueAt(int i) {
        return this.mValues[i];
    }
}
