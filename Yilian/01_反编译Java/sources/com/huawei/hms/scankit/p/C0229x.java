package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0229x implements com.huawei.hms.scankit.p.InterfaceC0224w {
    private java.security.PublicKey a(byte[] bArr) {
        return java.security.KeyFactory.getInstance("RSA").generatePublic(new java.security.spec.X509EncodedKeySpec(bArr));
    }

    private byte[] a(byte[] bArr, java.security.PublicKey publicKey) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.io.UnsupportedEncodingException {
        java.lang.String str;
        try {
            if (publicKey == null) {
                throw new java.io.UnsupportedEncodingException("The loaded public key is null");
            }
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING");
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (java.io.UnsupportedEncodingException unused) {
            str = "rsaEncrypt(): getBytes - Unsupported coding format!";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        } catch (java.security.InvalidKeyException unused2) {
            str = "rsaEncrypt(): init - Invalid key!";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        } catch (java.security.NoSuchAlgorithmException unused3) {
            str = "rsaEncrypt(): getInstance - No such algorithm,transformation";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        } catch (javax.crypto.BadPaddingException unused4) {
            str = "rsaEncrypt():False filling parameters!";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        } catch (javax.crypto.IllegalBlockSizeException unused5) {
            str = "rsaEncrypt(): doFinal - The provided block is not filled with";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        } catch (javax.crypto.NoSuchPaddingException unused6) {
            str = "rsaEncrypt():  No such filling parameters ";
            com.huawei.hms.scankit.p.T.c("Rsa", str);
            return new byte[0];
        }
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.T.b("Rsa", "No RSA decryption method");
        return "";
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, byte[] bArr) {
        java.lang.String str2;
        if (bArr == null || bArr.length == 0) {
            com.huawei.hms.scankit.p.T.c("Rsa", "encrypt: content is empty or null");
            return "";
        }
        try {
            return com.huawei.hms.scankit.p.AbstractC0214u.a(a(bArr, a(com.huawei.hms.scankit.p.AbstractC0214u.a(str))));
        } catch (java.security.NoSuchAlgorithmException unused) {
            str2 = "encrypt(): getInstance - No such algorithm,transformation";
            com.huawei.hms.scankit.p.T.c("Rsa", str2);
            return "";
        } catch (java.security.spec.InvalidKeySpecException unused2) {
            str2 = "encrypt(): Invalid key specification";
            com.huawei.hms.scankit.p.T.c("Rsa", str2);
            return "";
        }
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String b(java.lang.String str, java.lang.String str2) {
        try {
            return a(str, str2.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        } catch (java.io.UnsupportedEncodingException unused) {
            com.huawei.hms.scankit.p.T.b("Rsa", "Unsupported encoding exception,utf-8");
            return "";
        }
    }
}
