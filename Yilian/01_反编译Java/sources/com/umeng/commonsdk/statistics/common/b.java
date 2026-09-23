package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public class b {
    public static int a;

    public static java.lang.String a(byte[] bArr, java.lang.String str) throws java.util.zip.DataFormatException {
        byte[] bArrB = b(bArr);
        if (bArrB != null) {
            return new java.lang.String(bArrB, str);
        }
        return null;
    }

    public static byte[] a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        return a(str.getBytes(str2));
    }

    public static byte[] a(byte[] bArr) throws java.lang.Throwable {
        java.io.ByteArrayOutputStream byteArrayOutputStream = null;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        java.util.zip.Deflater deflater = new java.util.zip.Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        a = 0;
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int iDeflate = deflater.deflate(bArr2);
                    a += iDeflate;
                    byteArrayOutputStream2.write(bArr2, 0, iDeflate);
                } catch (java.lang.Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            byteArrayOutputStream2.close();
            return byteArrayOutputStream2.toByteArray();
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static byte[] b(byte[] bArr) throws java.util.zip.DataFormatException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        java.util.zip.Inflater inflater = new java.util.zip.Inflater();
        int i = 0;
        inflater.setInput(bArr, 0, bArr.length);
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (!inflater.needsInput()) {
            int iInflate = inflater.inflate(bArr2);
            byteArrayOutputStream.write(bArr2, i, iInflate);
            i += iInflate;
        }
        inflater.end();
        return byteArrayOutputStream.toByteArray();
    }
}
