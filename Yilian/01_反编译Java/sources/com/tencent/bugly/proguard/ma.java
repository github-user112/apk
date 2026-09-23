package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ma implements com.tencent.bugly.proguard.la {
    @Override // com.tencent.bugly.proguard.la
    public byte[] a(byte[] bArr) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.util.zip.GZIPOutputStream gZIPOutputStream = new java.util.zip.GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.finish();
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    @Override // com.tencent.bugly.proguard.la
    public byte[] b(byte[] bArr) throws java.io.IOException {
        java.io.ByteArrayInputStream byteArrayInputStream = new java.io.ByteArrayInputStream(bArr);
        java.util.zip.GZIPInputStream gZIPInputStream = new java.util.zip.GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        while (true) {
            int i = gZIPInputStream.read(bArr2, 0, 1024);
            if (i == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                gZIPInputStream.close();
                byteArrayInputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }
}
