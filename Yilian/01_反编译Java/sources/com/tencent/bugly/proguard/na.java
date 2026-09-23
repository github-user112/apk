package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class na implements com.tencent.bugly.proguard.la {
    @Override // com.tencent.bugly.proguard.la
    public byte[] a(byte[] bArr) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        java.util.zip.ZipOutputStream zipOutputStream = new java.util.zip.ZipOutputStream(byteArrayOutputStream);
        java.util.zip.ZipEntry zipEntry = new java.util.zip.ZipEntry("zip");
        zipEntry.setSize(bArr.length);
        zipOutputStream.putNextEntry(zipEntry);
        zipOutputStream.write(bArr);
        zipOutputStream.closeEntry();
        zipOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    @Override // com.tencent.bugly.proguard.la
    public byte[] b(byte[] bArr) throws java.io.IOException {
        java.io.ByteArrayInputStream byteArrayInputStream = new java.io.ByteArrayInputStream(bArr);
        java.util.zip.ZipInputStream zipInputStream = new java.util.zip.ZipInputStream(byteArrayInputStream);
        byte[] byteArray = null;
        while (zipInputStream.getNextEntry() != null) {
            byte[] bArr2 = new byte[1024];
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            while (true) {
                int i = zipInputStream.read(bArr2, 0, 1024);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr2, 0, i);
                }
            }
            byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        }
        zipInputStream.close();
        byteArrayInputStream.close();
        return byteArray;
    }
}
