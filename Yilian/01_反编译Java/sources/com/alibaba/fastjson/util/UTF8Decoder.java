package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class UTF8Decoder extends java.nio.charset.CharsetDecoder {
    public static final java.nio.charset.Charset charset = java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME);

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0094, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cc, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0132, code lost:
    
        return xflow(r13, r2, r6, r14, r8, 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.nio.charset.CoderResult decodeArrayLoop(java.nio.ByteBuffer r13, java.nio.CharBuffer r14) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.UTF8Decoder.decodeArrayLoop(java.nio.ByteBuffer, java.nio.CharBuffer):java.nio.charset.CoderResult");
    }

    public static boolean isMalformed2(int i, int i2) {
        return (i & 30) == 0 || (i2 & 192) != 128;
    }

    public static boolean isMalformed3(int i, int i2, int i3) {
        return ((i != -32 || (i2 & 224) != 128) && (i2 & 192) == 128 && (i3 & 192) == 128) ? false : true;
    }

    public static boolean isMalformed4(int i, int i2, int i3) {
        return ((i & 192) == 128 && (i2 & 192) == 128 && (i3 & 192) == 128) ? false : true;
    }

    public static boolean isNotContinuation(int i) {
        return (i & 192) != 128;
    }

    public static java.nio.charset.CoderResult lookupN(java.nio.ByteBuffer byteBuffer, int i) {
        for (int i2 = 1; i2 < i; i2++) {
            if (isNotContinuation(byteBuffer.get())) {
                return java.nio.charset.CoderResult.malformedForLength(i2);
            }
        }
        return java.nio.charset.CoderResult.malformedForLength(i);
    }

    public static java.nio.charset.CoderResult malformed(java.nio.ByteBuffer byteBuffer, int i, java.nio.CharBuffer charBuffer, int i2, int i3) {
        byteBuffer.position(i - byteBuffer.arrayOffset());
        java.nio.charset.CoderResult coderResultMalformedN = malformedN(byteBuffer, i3);
        byteBuffer.position(i);
        charBuffer.position(i2);
        return coderResultMalformedN;
    }

    public static java.nio.charset.CoderResult malformedN(java.nio.ByteBuffer byteBuffer, int i) {
        int i2 = 1;
        if (i == 1) {
            byte b = byteBuffer.get();
            return (b >> 2) == -2 ? byteBuffer.remaining() < 4 ? java.nio.charset.CoderResult.UNDERFLOW : lookupN(byteBuffer, 5) : (b >> 1) == -2 ? byteBuffer.remaining() < 5 ? java.nio.charset.CoderResult.UNDERFLOW : lookupN(byteBuffer, 6) : java.nio.charset.CoderResult.malformedForLength(1);
        }
        if (i == 2) {
            return java.nio.charset.CoderResult.malformedForLength(1);
        }
        if (i != 3) {
            if (i != 4) {
                throw new java.lang.IllegalStateException();
            }
            int i3 = byteBuffer.get() & 255;
            int i4 = byteBuffer.get() & 255;
            return (i3 > 244 || (i3 == 240 && (i4 < 144 || i4 > 191)) || ((i3 == 244 && (i4 & 240) != 128) || isNotContinuation(i4))) ? java.nio.charset.CoderResult.malformedForLength(1) : isNotContinuation(byteBuffer.get()) ? java.nio.charset.CoderResult.malformedForLength(2) : java.nio.charset.CoderResult.malformedForLength(3);
        }
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        if ((b2 != -32 || (b3 & com.umeng.analytics.pro.bj.k) != 128) && !isNotContinuation(b3)) {
            i2 = 2;
        }
        return java.nio.charset.CoderResult.malformedForLength(i2);
    }

    public static java.nio.charset.CoderResult xflow(java.nio.Buffer buffer, int i, int i2, java.nio.Buffer buffer2, int i3, int i4) {
        buffer.position(i);
        buffer2.position(i3);
        return (i4 == 0 || i2 - i < i4) ? java.nio.charset.CoderResult.UNDERFLOW : java.nio.charset.CoderResult.OVERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    public java.nio.charset.CoderResult decodeLoop(java.nio.ByteBuffer byteBuffer, java.nio.CharBuffer charBuffer) {
        return decodeArrayLoop(byteBuffer, charBuffer);
    }
}
