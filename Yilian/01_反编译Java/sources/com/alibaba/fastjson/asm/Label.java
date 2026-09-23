package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class Label {
    public static final int FORWARD_REFERENCE_HANDLE_MASK = 268435455;
    public static final int FORWARD_REFERENCE_TYPE_MASK = -268435456;
    public static final int FORWARD_REFERENCE_TYPE_SHORT = 268435456;
    public static final int FORWARD_REFERENCE_TYPE_WIDE = 536870912;
    public int inputStackTop;
    public com.alibaba.fastjson.asm.Label next;
    public int outputStackMax;
    public int position;
    public int referenceCount;
    public int[] srcAndRefPositions;
    public int status;
    public com.alibaba.fastjson.asm.Label successor;

    private void addReference(int i, int i2, int i3) {
        if (this.srcAndRefPositions == null) {
            this.srcAndRefPositions = new int[6];
        }
        int i4 = this.referenceCount;
        int[] iArr = this.srcAndRefPositions;
        if (i4 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.srcAndRefPositions = iArr2;
        }
        int[] iArr3 = this.srcAndRefPositions;
        int i5 = this.referenceCount;
        int i6 = i5 + 1;
        this.referenceCount = i6;
        iArr3[i5] = i;
        this.referenceCount = i6 + 1;
        iArr3[i6] = i2 | i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if (r5 != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void put(com.alibaba.fastjson.asm.MethodWriter r2, com.alibaba.fastjson.asm.ByteVector r3, int r4, boolean r5) {
        /*
            r1 = this;
            int r2 = r1.status
            r2 = r2 & 2
            if (r2 != 0) goto L19
            r2 = -1
            if (r5 == 0) goto L11
            int r5 = r3.length
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r1.addReference(r4, r5, r0)
            goto L1e
        L11:
            int r5 = r3.length
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            r1.addReference(r4, r5, r0)
            goto L22
        L19:
            int r2 = r1.position
            int r2 = r2 - r4
            if (r5 == 0) goto L22
        L1e:
            r3.putInt(r2)
            goto L25
        L22:
            r3.putShort(r2)
        L25:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.asm.Label.put(com.alibaba.fastjson.asm.MethodWriter, com.alibaba.fastjson.asm.ByteVector, int, boolean):void");
    }

    public void resolve(com.alibaba.fastjson.asm.MethodWriter methodWriter, int i, byte[] bArr) {
        this.status |= 2;
        this.position = i;
        int i2 = 0;
        while (i2 < this.referenceCount) {
            int[] iArr = this.srcAndRefPositions;
            int i3 = i2 + 1;
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            int i7 = 268435455 & i6;
            int i8 = i - i4;
            if ((i6 & (-268435456)) == 268435456) {
                bArr[i7] = (byte) (i8 >>> 8);
                bArr[i7 + 1] = (byte) i8;
            } else {
                int i9 = i7 + 1;
                bArr[i7] = (byte) (i8 >>> 24);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i8 >>> 16);
                bArr[i10] = (byte) (i8 >>> 8);
                bArr[i10 + 1] = (byte) i8;
            }
            i2 = i5;
        }
    }
}
