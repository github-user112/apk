package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public final class HeapBufferIterator extends com.tencent.tinker.ziputils.ziputil.BufferIterator {
    public final byte[] buffer;
    public final int byteCount;
    public final int offset;
    public final java.nio.ByteOrder order;
    public int position;

    public HeapBufferIterator(byte[] bArr, int i, int i2, java.nio.ByteOrder byteOrder) {
        this.buffer = bArr;
        this.offset = i;
        this.byteCount = i2;
        this.order = byteOrder;
    }

    public static com.tencent.tinker.ziputils.ziputil.BufferIterator iterator(byte[] bArr, int i, int i2, java.nio.ByteOrder byteOrder) {
        return new com.tencent.tinker.ziputils.ziputil.HeapBufferIterator(bArr, i, i2, byteOrder);
    }

    public byte readByte() {
        byte[] bArr = this.buffer;
        int i = this.offset;
        int i2 = this.position;
        byte b = bArr[i + i2];
        this.position = i2 + 1;
        return b;
    }

    public void readByteArray(byte[] bArr, int i, int i2) {
        java.lang.System.arraycopy(this.buffer, this.offset + this.position, bArr, i, i2);
        this.position += i2;
    }

    @Override // com.tencent.tinker.ziputils.ziputil.BufferIterator
    public int readInt() {
        int iPeekInt = com.tencent.tinker.ziputils.ziputil.Memory.peekInt(this.buffer, this.offset + this.position, this.order);
        this.position += 4;
        return iPeekInt;
    }

    @Override // com.tencent.tinker.ziputils.ziputil.BufferIterator
    public short readShort() {
        short sPeekShort = com.tencent.tinker.ziputils.ziputil.Memory.peekShort(this.buffer, this.offset + this.position, this.order);
        this.position += 2;
        return sPeekShort;
    }

    @Override // com.tencent.tinker.ziputils.ziputil.BufferIterator
    public void seek(int i) {
        this.position = i;
    }

    @Override // com.tencent.tinker.ziputils.ziputil.BufferIterator
    public void skip(int i) {
        this.position += i;
    }
}
