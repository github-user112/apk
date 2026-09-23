package com.huawei.hms.framework.network.grs.d.b;

/* loaded from: classes.dex */
public class a {
    public static javax.net.ssl.HostnameVerifier a() {
        return new e.d.c.a.a.a.d.a();
    }

    public static javax.net.ssl.SSLSocketFactory a(android.content.Context context) {
        try {
            return new e.d.c.a.a.a.b(new e.d.c.a.a.a.c(context.getAssets().open("grs_sp.bks"), ""));
        } catch (java.io.IOException | java.security.KeyManagementException | java.security.NoSuchAlgorithmException e2) {
            throw new java.lang.AssertionError(e2);
        }
    }
}
