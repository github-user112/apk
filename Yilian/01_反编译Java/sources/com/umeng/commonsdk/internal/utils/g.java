package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class g {
    public static final java.lang.String a = "\n";
    public static final byte[] b = "\nexit\n".getBytes();

    /* renamed from: c, reason: collision with root package name */
    public static byte[] f1490c = new byte[32];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e A[PHI: r7 r9
  0x005e: PHI (r7v5 java.lang.StringBuilder) = (r7v13 java.lang.StringBuilder), (r7v14 java.lang.StringBuilder), (r7v15 java.lang.StringBuilder) binds: [B:61:0x00c7, B:70:0x00d4, B:20:0x005b] A[DONT_GENERATE, DONT_INLINE]
  0x005e: PHI (r9v19 java.lang.Process) = (r9v16 java.lang.Process), (r9v17 java.lang.Process), (r9v21 java.lang.Process) binds: [B:61:0x00c7, B:70:0x00d4, B:20:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00da  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String... r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.g.a(java.lang.String[]):java.lang.String");
    }

    public static void a(java.io.OutputStream outputStream, java.io.InputStream inputStream, java.io.InputStream inputStream2, java.io.InputStreamReader inputStreamReader, java.io.BufferedReader bufferedReader) throws java.io.IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (java.io.IOException unused) {
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (java.io.IOException unused2) {
            }
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (java.io.IOException unused3) {
            }
        }
        if (inputStreamReader != null) {
            try {
                inputStreamReader.close();
            } catch (java.io.IOException unused4) {
            }
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (java.io.IOException unused5) {
            }
        }
    }

    public static void a(java.lang.Process process) {
        int iB = b(process);
        if (iB != 0) {
            try {
                try {
                    android.os.Process.killProcess(iB);
                } catch (java.lang.Exception unused) {
                }
            } catch (java.lang.Exception unused2) {
                process.destroy();
            }
        }
    }

    public static int b(java.lang.Process process) {
        java.lang.String string = process.toString();
        try {
            return java.lang.Integer.parseInt(string.substring(string.indexOf("=") + 1, string.indexOf("]")));
        } catch (java.lang.Exception unused) {
            return 0;
        }
    }

    public static void c(java.lang.Process process) {
        if (process != null) {
            try {
                if (process.exitValue() != 0) {
                    a(process);
                }
            } catch (java.lang.IllegalThreadStateException unused) {
                a(process);
            }
        }
    }
}
