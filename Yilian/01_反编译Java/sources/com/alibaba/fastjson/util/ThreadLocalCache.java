package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class ThreadLocalCache {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BYTES_CACH_INIT_SIZE = 1024;
    public static final int BYTES_CACH_INIT_SIZE_EXP = 10;
    public static final int BYTES_CACH_MAX_SIZE = 131072;
    public static final int BYTES_CACH_MAX_SIZE_EXP = 17;
    public static final int CHARS_CACH_INIT_SIZE = 1024;
    public static final int CHARS_CACH_INIT_SIZE_EXP = 10;
    public static final int CHARS_CACH_MAX_SIZE = 131072;
    public static final int CHARS_CACH_MAX_SIZE_EXP = 17;
    public static final java.lang.ThreadLocal<java.lang.ref.SoftReference<char[]>> charsBufLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<java.nio.charset.CharsetDecoder> decoderLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<java.lang.ref.SoftReference<byte[]>> bytesBufLocal = new java.lang.ThreadLocal<>();

    public static char[] allocate(int i) {
        if (i > 131072) {
            return new char[i];
        }
        char[] cArr = new char[getAllocateLengthExp(10, 17, i)];
        charsBufLocal.set(new java.lang.ref.SoftReference<>(cArr));
        return cArr;
    }

    public static byte[] allocateBytes(int i) {
        if (i > 131072) {
            return new byte[i];
        }
        byte[] bArr = new byte[getAllocateLengthExp(10, 17, i)];
        bytesBufLocal.set(new java.lang.ref.SoftReference<>(bArr));
        return bArr;
    }

    public static void clearBytes() {
        bytesBufLocal.set(null);
    }

    public static void clearChars() {
        charsBufLocal.set(null);
    }

    public static int getAllocateLengthExp(int i, int i2, int i3) {
        return (i3 >>> i) <= 0 ? 1 << i : 1 << (32 - java.lang.Integer.numberOfLeadingZeros(i3 - 1));
    }

    public static byte[] getBytes(int i) {
        byte[] bArr;
        java.lang.ref.SoftReference<byte[]> softReference = bytesBufLocal.get();
        return (softReference == null || (bArr = softReference.get()) == null || bArr.length < i) ? allocateBytes(i) : bArr;
    }

    public static char[] getChars(int i) {
        char[] cArr;
        java.lang.ref.SoftReference<char[]> softReference = charsBufLocal.get();
        return (softReference == null || (cArr = softReference.get()) == null || cArr.length < i) ? allocate(i) : cArr;
    }

    public static java.nio.charset.CharsetDecoder getUTF8Decoder() {
        java.nio.charset.CharsetDecoder charsetDecoder = decoderLocal.get();
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        com.alibaba.fastjson.util.UTF8Decoder uTF8Decoder = new com.alibaba.fastjson.util.UTF8Decoder();
        decoderLocal.set(uTF8Decoder);
        return uTF8Decoder;
    }
}
