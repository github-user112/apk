package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0195q implements com.huawei.hms.scankit.p.InterfaceC0224w {
    public static final java.nio.charset.Charset a = java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME);

    private android.util.Pair<byte[], byte[]> a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str) || str.length() < 32) {
            return new android.util.Pair<>(new byte[0], new byte[0]);
        }
        return new android.util.Pair<>(com.huawei.hms.scankit.p.AbstractC0214u.a(str.substring(0, 32)), com.huawei.hms.scankit.p.AbstractC0214u.a(str.substring(32)));
    }

    private java.lang.String a(java.lang.String str, byte[] bArr, byte[] bArr2) {
        return (bArr2 == null || str == null || bArr == null || bArr.length == 0) ? "" : a(bArr, com.huawei.hms.scankit.p.AbstractC0214u.a(b(str, bArr, bArr2)));
    }

    private java.lang.String a(byte[] bArr, java.lang.String str) {
        if (bArr == null || bArr.length == 0) {
            return str;
        }
        if (str == null) {
            str = "";
        }
        return com.huawei.hms.scankit.p.AbstractC0214u.a(bArr).concat(str);
    }

    private java.lang.String a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        java.lang.String str;
        if (bArr.length == 0 || bArr2.length == 0 || bArr3.length == 0) {
            com.huawei.hms.scankit.p.T.c("Aes", "decrypt: parameter exception");
            return "";
        }
        try {
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new javax.crypto.spec.SecretKeySpec(bArr, "AES"), new javax.crypto.spec.IvParameterSpec(bArr2));
            return new java.lang.String(cipher.doFinal(bArr3), a);
        } catch (java.security.InvalidAlgorithmParameterException unused) {
            str = "aesDecrypt(): init - Invalid algorithm parameters !";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        } catch (java.security.InvalidKeyException unused2) {
            str = "aesDecrypt(): init - Invalid key!";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        } catch (java.security.NoSuchAlgorithmException unused3) {
            str = "aesDecrypt(): getInstance - No such algorithm,transformation";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        } catch (javax.crypto.BadPaddingException unused4) {
            str = "aesDecrypt(): False filling parameters!";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        } catch (javax.crypto.IllegalBlockSizeException unused5) {
            str = "aesDecrypt(): doFinal - The provided block is not filled with";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        } catch (javax.crypto.NoSuchPaddingException unused6) {
            str = "aesDecrypt():  No such filling parameters ";
            com.huawei.hms.scankit.p.T.c("Aes", str);
            return "";
        }
    }

    private byte[] b(java.lang.String str, byte[] bArr, byte[] bArr2) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        java.lang.String str2;
        if (android.text.TextUtils.isEmpty(str) || bArr == null || bArr.length == 0) {
            return new byte[0];
        }
        try {
            javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new javax.crypto.spec.SecretKeySpec(com.huawei.hms.scankit.p.AbstractC0214u.a(str), "AES"), new javax.crypto.spec.IvParameterSpec(bArr));
            return cipher.doFinal(bArr2);
        } catch (java.security.InvalidAlgorithmParameterException unused) {
            str2 = "aesEncrypt(): init - Invalid algorithm parameters !";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        } catch (java.security.InvalidKeyException unused2) {
            str2 = "aesEncrypt(): init - Invalid key!";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        } catch (java.security.NoSuchAlgorithmException unused3) {
            str2 = "aesEncrypt(): getInstance - No such algorithm,transformation";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        } catch (javax.crypto.BadPaddingException unused4) {
            str2 = "aesEncrypt(): False filling parameters!";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        } catch (javax.crypto.IllegalBlockSizeException unused5) {
            str2 = "aesEncrypt(): doFinal - The provided block is not filled with";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        } catch (javax.crypto.NoSuchPaddingException unused6) {
            str2 = "aesEncrypt(): No such filling parameters ";
            com.huawei.hms.scankit.p.T.c("Aes", str2);
            return new byte[0];
        }
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2) || android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.scankit.p.T.c("Aes", "decrypt: content or key is empty");
            return "";
        }
        byte[] bArrA = com.huawei.hms.scankit.p.AbstractC0214u.a(str);
        android.util.Pair<byte[], byte[]> pairA = a(str2);
        return a(bArrA, (byte[]) pairA.first, (byte[]) pairA.second);
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String a(java.lang.String str, byte[] bArr) {
        return a(str, com.huawei.hms.scankit.p.AbstractC0214u.a(), bArr);
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0224w
    public java.lang.String b(java.lang.String str, java.lang.String str2) {
        try {
            return a(str, str2.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        } catch (java.io.UnsupportedEncodingException unused) {
            com.huawei.hms.scankit.p.T.b("Aes", "Unsupported Encoding Exception : utf-8");
            return "";
        }
    }
}
