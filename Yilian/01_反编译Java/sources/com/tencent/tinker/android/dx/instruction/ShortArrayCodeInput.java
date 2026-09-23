package com.tencent.tinker.android.dx.instruction;

/* loaded from: classes.dex */
public final class ShortArrayCodeInput extends com.tencent.tinker.android.dx.instruction.CodeCursor {
    public final short[] array;

    public ShortArrayCodeInput(short[] sArr) {
        if (sArr == null) {
            throw new java.lang.NullPointerException("array == null");
        }
        this.array = sArr;
    }

    public boolean hasMore() {
        return cursor() < this.array.length;
    }

    public int read() throws java.io.EOFException {
        try {
            short s = this.array[cursor()];
            advance(1);
            return s & 65535;
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.io.EOFException();
        }
    }

    public int readInt() {
        return read() | (read() << 16);
    }

    public long readLong() {
        return read() | (read() << 16) | (read() << 32) | (read() << 48);
    }
}
