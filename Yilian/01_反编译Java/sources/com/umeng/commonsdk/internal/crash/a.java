package com.umeng.commonsdk.internal.crash;

/* loaded from: classes.dex */
public class a {
    public static java.lang.String a(java.lang.Throwable th) throws java.io.IOException {
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
}
