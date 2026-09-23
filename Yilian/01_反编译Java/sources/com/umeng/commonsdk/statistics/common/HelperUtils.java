package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public class HelperUtils {
    public static final java.lang.String LINE_SEPARATOR = java.lang.System.getProperty("line.separator");
    public static final java.lang.String TAG = "helper";

    public static java.lang.String MD5(java.lang.String str) throws java.security.NoSuchAlgorithmException {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes();
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            for (byte b : bArrDigest) {
                stringBuffer.append(java.lang.String.format("%02X", java.lang.Byte.valueOf(b)));
            }
            return stringBuffer.toString();
        } catch (java.lang.Exception unused) {
            return str.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
        }
    }

    public static boolean checkStrLen(java.lang.String str, int i) {
        try {
            if (android.text.TextUtils.isEmpty(str)) {
                return false;
            }
            return str.length() <= i;
        } catch (java.lang.Exception unused) {
            return false;
        }
    }

    public static java.lang.String getFileMD5(java.io.File file) throws java.security.NoSuchAlgorithmException, java.io.IOException {
        byte[] bArr = new byte[1024];
        try {
            if (!file.isFile()) {
                return "";
            }
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    fileInputStream.close();
                    return java.lang.String.format("%1$032x", new java.math.BigInteger(1, messageDigest.digest()));
                }
                messageDigest.update(bArr, 0, i);
            }
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getMD5(java.lang.String str) throws java.security.NoSuchAlgorithmException {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            for (byte b : bArrDigest) {
                stringBuffer.append(java.lang.Integer.toHexString((b & 255) | (-256)).substring(6));
            }
            return stringBuffer.toString();
        } catch (java.security.NoSuchAlgorithmException e2) {
            com.umeng.commonsdk.statistics.common.MLog.i(TAG, "getMD5 error", e2);
            return "";
        }
    }

    public static java.lang.String getUmengMD5(java.lang.String str) {
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            for (byte b : bArrDigest) {
                stringBuffer.append(java.lang.Integer.toHexString(b & 255));
            }
            return stringBuffer.toString();
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.statistics.common.MLog.i(TAG, "getMD5 error", th);
            return "";
        }
    }

    public static java.lang.String readFile(java.io.File file) throws java.io.IOException {
        java.io.FileInputStream fileInputStream;
        try {
            if (!file.exists()) {
                safeClose((java.io.InputStream) null);
                return null;
            }
            fileInputStream = new java.io.FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                java.lang.String str = new java.lang.String(bArr);
                safeClose(fileInputStream);
                return str;
            } catch (java.lang.Throwable unused) {
                safeClose(fileInputStream);
                return null;
            }
        } catch (java.lang.Throwable unused2) {
            fileInputStream = null;
        }
    }

    public static byte[] readStreamToByteArray(java.io.InputStream inputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static java.lang.String readStreamToString(java.io.InputStream inputStream) {
        java.io.InputStreamReader inputStreamReader = new java.io.InputStreamReader(inputStream);
        char[] cArr = new char[1024];
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (-1 == i) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, i);
        }
    }

    public static void safeClose(java.io.InputStream inputStream) throws java.io.IOException {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void safeClose(java.io.OutputStream outputStream) throws java.io.IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static java.lang.String subStr(java.lang.String str, int i) {
        java.lang.String strSubstring = "";
        try {
            if (!android.text.TextUtils.isEmpty(str)) {
                strSubstring = str.substring(0, str.length() < i ? str.length() : i);
                int length = strSubstring.getBytes(com.google.android.exoplayer2.C.UTF8_NAME).length;
                int i2 = i;
                while (length > i) {
                    i2--;
                    strSubstring = str.substring(0, i2 > str.length() ? str.length() : i2);
                    length = strSubstring.getBytes(com.google.android.exoplayer2.C.UTF8_NAME).length;
                }
                return strSubstring;
            }
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.statistics.common.MLog.e(e2);
        }
        return strSubstring;
    }

    public static void writeFile(java.io.File file, java.lang.String str) throws java.io.IOException {
        writeFile(file, str.getBytes());
    }

    public static void writeFile(java.io.File file, byte[] bArr) throws java.io.IOException {
        java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
        } finally {
            safeClose(fileOutputStream);
        }
    }
}
