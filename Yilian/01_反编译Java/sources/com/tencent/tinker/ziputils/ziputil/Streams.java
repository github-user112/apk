package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public final class Streams {
    public static java.util.concurrent.atomic.AtomicReference<byte[]> skipBuffer = new java.util.concurrent.atomic.AtomicReference<>();

    public static int copy(java.io.InputStream inputStream, java.io.OutputStream outputStream) throws java.io.IOException {
        byte[] bArr = new byte[8192];
        int i = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return i;
            }
            i += i2;
            outputStream.write(bArr, 0, i2);
        }
    }

    public static java.lang.String readAsciiLine(java.io.InputStream inputStream) throws java.io.IOException {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(80);
        while (true) {
            int i = inputStream.read();
            if (i == -1) {
                throw new java.io.EOFException();
            }
            if (i == 10) {
                int length = sb.length();
                if (length > 0) {
                    int i2 = length - 1;
                    if (sb.charAt(i2) == '\r') {
                        sb.setLength(i2);
                    }
                }
                return sb.toString();
            }
            sb.append((char) i);
        }
    }

    public static java.lang.String readFully(java.io.Reader reader) throws java.io.IOException {
        try {
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int i = reader.read(cArr);
                if (i == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, i);
            }
        } finally {
            reader.close();
        }
    }

    public static void readFully(java.io.InputStream inputStream, byte[] bArr) throws java.io.IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(java.io.InputStream inputStream, byte[] bArr, int i, int i2) throws java.io.IOException {
        if (i2 == 0) {
            return;
        }
        if (inputStream == null) {
            throw new java.lang.NullPointerException("in == null");
        }
        if (bArr == null) {
            throw new java.lang.NullPointerException("dst == null");
        }
        com.tencent.tinker.ziputils.ziputil.Arrays.checkOffsetAndCount(bArr.length, i, i2);
        while (i2 > 0) {
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 < 0) {
                throw new java.io.EOFException();
            }
            i += i3;
            i2 -= i3;
        }
    }

    public static byte[] readFully(java.io.InputStream inputStream) throws java.io.IOException {
        try {
            return readFullyNoClose(inputStream);
        } finally {
            inputStream.close();
        }
    }

    public static byte[] readFullyNoClose(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static int readSingleByte(java.io.InputStream inputStream) {
        byte[] bArr = new byte[1];
        if (inputStream.read(bArr, 0, 1) != -1) {
            return bArr[0] & 255;
        }
        return -1;
    }

    public static void skipAll(java.io.InputStream inputStream) throws java.io.IOException {
        do {
            inputStream.skip(Long.MAX_VALUE);
        } while (inputStream.read() != -1);
    }

    public static long skipByReading(java.io.InputStream inputStream, long j) {
        int iMin;
        int i;
        byte[] andSet = skipBuffer.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        long j2 = 0;
        while (j2 < j && (i = inputStream.read(andSet, 0, (iMin = (int) java.lang.Math.min(j - j2, andSet.length)))) != -1) {
            j2 += i;
            if (i < iMin) {
                break;
            }
        }
        skipBuffer.set(andSet);
        return j2;
    }

    public static void writeSingleByte(java.io.OutputStream outputStream, int i) throws java.io.IOException {
        outputStream.write(new byte[]{(byte) (i & 255)});
    }
}
