package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0175m {
    public static java.lang.String a(java.io.File file) throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream;
        byte[] bArr;
        java.io.FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new java.io.FileInputStream(file);
            } catch (java.lang.Throwable th) {
                th = th;
            }
        } catch (java.io.FileNotFoundException unused) {
        } catch (java.io.IOException unused2) {
        }
        try {
            byte[] bArr2 = new byte[1024];
            byte[] bArr3 = new byte[1024];
            int i = 0;
            while (true) {
                int i2 = fileInputStream.read(bArr3);
                if (i2 == -1) {
                    break;
                }
                if (i2 > 0) {
                    if (bArr2.length - i >= i2) {
                        java.lang.System.arraycopy(bArr3, 0, bArr2, i, i2);
                    } else {
                        byte[] bArr4 = new byte[(bArr2.length + i2) << 1];
                        java.lang.System.arraycopy(bArr2, 0, bArr4, 0, i);
                        java.lang.System.arraycopy(bArr3, 0, bArr4, i, i2);
                        bArr2 = bArr4;
                    }
                    i += i2;
                }
            }
            if (i == 0) {
                a((java.io.Closeable) fileInputStream);
                return "";
            }
            if (i <= 0) {
                bArr = new byte[0];
            } else {
                byte[] bArr5 = new byte[i];
                java.lang.System.arraycopy(bArr2, 0, bArr5, 0, i);
                bArr = bArr5;
            }
            java.lang.String str = new java.lang.String(bArr, com.google.android.exoplayer2.C.UTF8_NAME);
            a((java.io.Closeable) fileInputStream);
            return str;
        } catch (java.io.FileNotFoundException unused3) {
            fileInputStream2 = fileInputStream;
            com.huawei.hms.scankit.p.T.c("StreamUtil", "getInfoFromFile(): No files need to be read");
            a((java.io.Closeable) fileInputStream2);
            return "";
        } catch (java.io.IOException unused4) {
            fileInputStream2 = fileInputStream;
            com.huawei.hms.scankit.p.T.c("StreamUtil", "getInfoFromFile(): stream.read or new string exception");
            a((java.io.Closeable) fileInputStream2);
            return "";
        } catch (java.lang.Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            a((java.io.Closeable) fileInputStream2);
            throw th;
        }
    }

    public static java.lang.String a(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toString(com.google.android.exoplayer2.C.UTF8_NAME);
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } finally {
            a((java.io.Closeable) byteArrayOutputStream);
        }
    }

    public static void a(java.io.Closeable closeable) throws java.io.IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.io.IOException unused) {
                com.huawei.hms.scankit.p.T.c("StreamUtil", "closeQuietly(): Exception when closing the closeable!");
            }
        }
    }

    public static void a(java.io.File file, java.lang.String str) throws java.lang.Throwable {
        java.lang.String str2;
        java.io.FileOutputStream fileOutputStream;
        java.io.FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new java.io.FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
                    fileOutputStream.flush();
                } catch (java.io.FileNotFoundException unused) {
                    fileOutputStream2 = fileOutputStream;
                    str2 = "saveInfoToFile(): No files need to be read";
                    fileOutputStream = fileOutputStream2;
                    com.huawei.hms.scankit.p.T.c("StreamUtil", str2);
                    a((java.io.Closeable) fileOutputStream);
                } catch (java.io.IOException unused2) {
                    fileOutputStream2 = fileOutputStream;
                    str2 = "saveInfoToFile(): io exc from write info to file!";
                    fileOutputStream = fileOutputStream2;
                    com.huawei.hms.scankit.p.T.c("StreamUtil", str2);
                    a((java.io.Closeable) fileOutputStream);
                }
            } catch (java.lang.Throwable th) {
                th = th;
                fileOutputStream2 = fileOutputStream;
                a((java.io.Closeable) fileOutputStream2);
                throw th;
            }
        } catch (java.io.FileNotFoundException unused3) {
        } catch (java.io.IOException unused4) {
        } catch (java.lang.Throwable th2) {
            th = th2;
            a((java.io.Closeable) fileOutputStream2);
            throw th;
        }
        a((java.io.Closeable) fileOutputStream);
    }

    public static void a(java.io.OutputStream outputStream) throws java.io.IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (java.io.IOException unused) {
                com.huawei.hms.scankit.p.T.c("StreamUtil", "closeStream(): Exception: close OutputStream error!");
            }
        }
    }

    public static void a(java.net.HttpURLConnection httpURLConnection) throws java.io.IOException {
        try {
            httpURLConnection.getInputStream().close();
        } catch (java.lang.Exception unused) {
            com.huawei.hms.scankit.p.T.c("StreamUtil", "closeQuietly(): Exception when connHttp.getInputStream()!,There may be no network, or no INTERNET permission");
        }
        httpURLConnection.disconnect();
        com.huawei.hms.scankit.p.T.a("StreamUtil", " connHttp disconnect");
    }

    public static byte[] a(byte[] bArr) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.util.zip.Deflater deflater = new java.util.zip.Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[1024];
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        deflater.end();
        a((java.io.OutputStream) byteArrayOutputStream);
        return byteArray;
    }
}
