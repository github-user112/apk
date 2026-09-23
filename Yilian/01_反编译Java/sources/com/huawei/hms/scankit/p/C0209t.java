package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0209t {
    public static java.lang.String a(java.lang.String str) throws java.security.NoSuchAlgorithmException {
        java.lang.String str2;
        try {
            return com.huawei.hms.scankit.p.AbstractC0214u.a(java.security.MessageDigest.getInstance("SHA-256").digest(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME)));
        } catch (java.io.UnsupportedEncodingException unused) {
            str2 = "sha256Digest(): UnsupportedEncodingException: Exception when writing the log file.";
            com.huawei.hms.scankit.p.T.c("EncryptUtil", str2);
            return "";
        } catch (java.security.NoSuchAlgorithmException unused2) {
            str2 = "sha256Digest(): NoSuch Algorithm Exception";
            com.huawei.hms.scankit.p.T.c("EncryptUtil", str2);
            return "";
        }
    }

    public static java.lang.String a(char[] cArr, byte[] bArr) {
        java.lang.String str;
        try {
            return com.huawei.hms.scankit.p.AbstractC0214u.a(javax.crypto.SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new javax.crypto.spec.PBEKeySpec(cArr, bArr, 10000, 128)).getEncoded());
        } catch (java.security.NoSuchAlgorithmException unused) {
            str = "getAuthToken() encryptPBKDF2 No such algorithm!";
            com.huawei.hms.scankit.p.T.d("EncryptUtil", str);
            return null;
        } catch (java.security.spec.InvalidKeySpecException unused2) {
            str = "getAuthToken() encryptPBKDF2 Invalid key specification !";
            com.huawei.hms.scankit.p.T.d("EncryptUtil", str);
            return null;
        }
    }
}
