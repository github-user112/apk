package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class da {
    public static java.net.Proxy a;

    public static java.net.Proxy a() {
        return a;
    }

    public static void a(java.lang.String str, int i) {
        if (android.text.TextUtils.isEmpty(str)) {
            a = null;
        } else {
            a = new java.net.Proxy(java.net.Proxy.Type.HTTP, new java.net.InetSocketAddress(str, i));
        }
    }

    public static void a(java.net.InetAddress inetAddress, int i) {
        if (inetAddress == null) {
            a = null;
        } else {
            a = new java.net.Proxy(java.net.Proxy.Type.HTTP, new java.net.InetSocketAddress(inetAddress, i));
        }
    }
}
