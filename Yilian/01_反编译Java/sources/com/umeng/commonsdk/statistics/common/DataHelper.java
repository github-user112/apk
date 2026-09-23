package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public class DataHelper {
    public static final byte[] iv = {10, 1, 11, 5, 4, com.umeng.analytics.pro.bw.m, 7, 9, 23, 3, 1, 6, 8, 12, com.umeng.analytics.pro.bw.k, 91};
    public static long ENVELOPE_EXTRA_LENGTH = 614400;
    public static long ENVELOPE_ENTITY_RAW_LENGTH_MAX = 2097152;
    public static long ENVELOPE_LENGTH_MAX = 204800;
    public static java.lang.String UMENG_PLUS = "umeng+0123456789";

    public static java.lang.String assembleStatelessURL(java.lang.String str) {
        return e.a.c.a.a.e("https://", str);
    }

    public static java.lang.String assembleURL(java.lang.String str) {
        return e.a.c.a.a.e("https://", str);
    }

    public static java.lang.String bytes2Hex(byte[] bArr) {
        java.lang.String strE = "";
        for (byte b : bArr) {
            java.lang.String hexString = java.lang.Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                strE = e.a.c.a.a.e(strE, "0");
            }
            strE = e.a.c.a.a.e(strE, hexString);
        }
        return strE;
    }

    public static java.lang.String convertExceptionToString(java.lang.Throwable th) throws java.io.IOException {
        java.lang.String string = null;
        if (th == null) {
            return null;
        }
        try {
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            java.io.PrintWriter printWriter = new java.io.PrintWriter(stringWriter);
            do {
                th.printStackTrace(printWriter);
                th = th.getCause();
            } while (th != null);
            string = stringWriter.toString();
            printWriter.close();
            stringWriter.close();
            return string;
        } catch (java.lang.Exception unused) {
            return string;
        }
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(2, new javax.crypto.spec.SecretKeySpec(bArr2, "AES"), new javax.crypto.spec.IvParameterSpec(iv));
        return cipher.doFinal(bArr);
    }

    public static java.lang.String decryptEx(java.lang.String str) {
        try {
            return new java.lang.String(decrypt(android.util.Base64.decode(str.getBytes(), 0), UMENG_PLUS.getBytes()));
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new javax.crypto.spec.SecretKeySpec(bArr2, "AES"), new javax.crypto.spec.IvParameterSpec(iv));
        return cipher.doFinal(bArr);
    }

    public static java.lang.String encryptBySHA1(java.lang.String str) throws java.security.NoSuchAlgorithmException {
        byte[] bytes = str.getBytes();
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA1");
            messageDigest.update(bytes);
            return bytes2Hex(messageDigest.digest());
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String encryptEx(java.lang.String str) {
        try {
            return android.util.Base64.encodeToString(encrypt(str.getBytes(), UMENG_PLUS.getBytes()), 0);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static byte[] hash(byte[] bArr) throws java.security.NoSuchAlgorithmException {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static boolean largeThanMaxSize(long j, long j2) {
        return j > j2;
    }

    public static int random(int i, java.lang.String str) throws java.lang.NumberFormatException {
        if (new java.util.Random().nextFloat() < 0.001d) {
            int i2 = 0;
            if (str == null) {
                com.umeng.commonsdk.statistics.common.MLog.e("--->", "null signature..");
            }
            try {
                i2 = java.lang.Integer.parseInt(str.substring(9, 11), 16);
            } catch (java.lang.Exception unused) {
            }
            return (i2 | 128) * 1000;
        }
        int iNextInt = new java.util.Random().nextInt(i);
        if (iNextInt > 255000 || iNextInt < 128000) {
            return iNextInt;
        }
        return 127000;
    }

    public static byte[] reverseHexString(java.lang.String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 2 != 0) {
            return null;
        }
        byte[] bArr = new byte[length / 2];
        int i = 0;
        while (i < length) {
            int i2 = i + 2;
            bArr[i / 2] = (byte) java.lang.Integer.valueOf(str.substring(i, i2), 16).intValue();
            i = i2;
        }
        return bArr;
    }

    public static java.lang.String toHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (byte b : bArr) {
            stringBuffer.append(java.lang.String.format("%02X", java.lang.Byte.valueOf(b)));
        }
        return stringBuffer.toString().toLowerCase(java.util.Locale.US);
    }
}
