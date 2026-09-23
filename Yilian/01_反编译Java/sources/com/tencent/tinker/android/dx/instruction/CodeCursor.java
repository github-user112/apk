package com.tencent.tinker.android.dx.instruction;

/* loaded from: classes.dex */
public abstract class CodeCursor {
    public final com.tencent.tinker.android.utils.SparseIntArray baseAddressMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public int cursor = 0;

    public final void advance(int i) {
        this.cursor += i;
    }

    public final int baseAddressForCursor() {
        int iIndexOfKey = this.baseAddressMap.indexOfKey(this.cursor);
        return iIndexOfKey < 0 ? this.cursor : this.baseAddressMap.valueAt(iIndexOfKey);
    }

    public final int cursor() {
        return this.cursor;
    }

    public void reset() {
        this.baseAddressMap.clear();
        this.cursor = 0;
    }

    public final void setBaseAddress(int i, int i2) {
        this.baseAddressMap.put(i, i2);
    }
}
