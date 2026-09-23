package com.huawei.hms.framework.network.grs.d;

/* loaded from: classes.dex */
public class c {
    public static final java.lang.String a = "c";

    public static java.lang.String a(java.lang.String str, android.content.Context context) throws java.io.IOException {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        java.io.InputStream inputStreamOpen = null;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        try {
            inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[8192];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    byteArrayOutputStream.flush();
                    return new java.lang.String(byteArrayOutputStream.toByteArray(), com.google.android.exoplayer2.C.UTF8_NAME);
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (java.io.IOException unused) {
            com.huawei.hms.framework.common.Logger.w(a, "local config file is not exist.filename is {%s}", str);
            return "";
        } finally {
            com.huawei.hms.framework.common.IoUtils.closeSecure((java.io.OutputStream) byteArrayOutputStream);
            com.huawei.hms.framework.common.IoUtils.closeSecure(inputStreamOpen);
        }
    }
}
