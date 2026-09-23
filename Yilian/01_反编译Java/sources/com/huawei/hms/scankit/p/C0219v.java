package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0219v implements com.huawei.hms.scankit.p.InterfaceC0224w {
    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.T.b("HmacSHA256Crypt", "No HMAC_SHA256 decryption method");
        return "";
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, byte[] bArr) throws java.security.NoSuchAlgorithmException, java.security.InvalidKeyException {
        java.lang.String str2;
        if (bArr == null || bArr.length == 0) {
            com.huawei.hms.scankit.p.T.c("HmacSHA256Crypt", "encrypt: content is empty or null");
            return "";
        }
        javax.crypto.spec.SecretKeySpec secretKeySpec = new javax.crypto.spec.SecretKeySpec(str.getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME)), "HmacSHA256");
        try {
            javax.crypto.Mac mac = javax.crypto.Mac.getInstance(secretKeySpec.getAlgorithm());
            mac.init(secretKeySpec);
            return com.huawei.hms.scankit.p.AbstractC0214u.a(mac.doFinal(bArr));
        } catch (java.security.InvalidKeyException unused) {
            str2 = "Exception has happened when digest2byte,From Invalid key!";
            com.huawei.hms.scankit.p.T.c("HmacSHA256Crypt", str2);
            return "";
        } catch (java.security.NoSuchAlgorithmException unused2) {
            str2 = "When digest2byte executed Exception has happened!From Algorithm error !";
            com.huawei.hms.scankit.p.T.c("HmacSHA256Crypt", str2);
            return "";
        }
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String b(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.huawei.hms.scankit.p.T.c("HmacSHA256Crypt", "key or content is empty");
            return "";
        }
        try {
            return a(str, str2.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        } catch (java.io.UnsupportedEncodingException unused) {
            com.huawei.hms.scankit.p.T.b("HmacSHA256Crypt", "Unsupported encoding exception,utf-8");
            return "";
        }
    }
}
