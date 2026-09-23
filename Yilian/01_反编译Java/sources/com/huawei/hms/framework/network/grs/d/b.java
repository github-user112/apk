package com.huawei.hms.framework.network.grs.d;

/* loaded from: classes.dex */
public class b {
    public static final java.lang.String a = "b";
    public static final java.util.regex.Pattern b = java.util.regex.Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    public static java.lang.String a(java.lang.String str) {
        return a(str, "SHA-256");
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) throws java.io.UnsupportedEncodingException {
        java.lang.String str3;
        java.lang.String str4;
        try {
            try {
                return a(java.security.MessageDigest.getInstance(str2).digest(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME)));
            } catch (java.security.NoSuchAlgorithmException unused) {
                str3 = a;
                str4 = "encrypt NoSuchAlgorithmException";
                com.huawei.hms.framework.common.Logger.w(str3, str4);
                return null;
            }
        } catch (java.io.UnsupportedEncodingException unused2) {
            str3 = a;
            str4 = "encrypt UnsupportedEncodingException";
        }
    }

    public static java.lang.String a(byte[] bArr) {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (byte b2 : bArr) {
            java.lang.String hexString = java.lang.Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static java.lang.String b(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 1;
        if (str.length() == 1) {
            return "*";
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (int i2 = 0; i2 < str.length(); i2++) {
            java.lang.String str2 = str.charAt(i2) + "";
            if (b.matcher(str2).matches()) {
                if (i % 2 == 0) {
                    str2 = "*";
                }
                i++;
            }
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }
}
