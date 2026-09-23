package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class V extends javax.net.ssl.SSLSocketFactory {
    public static final java.lang.String[] a = {"3DES", "DES", "MD5", "RC4", "aNULL", "CBC", "TEA", "SHA0", "MD2", "MD4", "RIPEMD", "DESX", "DES40", "RC2", "ANON", "NULL", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", "TLS_RSA"};
    public static javax.net.SocketFactory b;

    /* renamed from: c, reason: collision with root package name */
    public final javax.net.ssl.SSLContext f639c = javax.net.ssl.SSLContext.getInstance("TLSv1.2");

    public V(android.content.Context context) throws java.security.KeyManagementException {
        this.f639c.init(null, new javax.net.ssl.X509TrustManager[]{new com.huawei.hms.scankit.p.Y(context)}, null);
    }

    public static synchronized javax.net.SocketFactory a(android.content.Context context) {
        java.lang.String str;
        java.lang.String str2;
        try {
            if (b == null) {
                b = new com.huawei.hms.scankit.p.V(context);
            }
            return b;
        } catch (java.io.IOException unused) {
            str = "Factory";
            str2 = "getLocalInstanceLock(): Failed to new SSLSocketFactory instance,IO!";
            com.huawei.hms.scankit.p.T.c(str, str2);
            return null;
        } catch (java.security.KeyManagementException unused2) {
            str = "Factory";
            str2 = "getLocalInstanceLock(): Failed to new SSLSocketFactory instance,Key Manage!";
            com.huawei.hms.scankit.p.T.c(str, str2);
            return null;
        } catch (java.security.KeyStoreException unused3) {
            str = "Factory";
            str2 = "getLocalInstanceLock(): Failed to new SSLSocketFactory instance,Key Store!";
            com.huawei.hms.scankit.p.T.c(str, str2);
            return null;
        } catch (java.security.NoSuchAlgorithmException unused4) {
            str = "Factory";
            str2 = "getLocalInstanceLock(): Failed to new SSLSocketFactory instance,Algorithm Exception!";
            com.huawei.hms.scankit.p.T.c(str, str2);
            return null;
        } catch (java.security.GeneralSecurityException unused5) {
            str = "Factory";
            str2 = "getLocalInstanceLock(): GeneralSecurityException: Failed to new SSLSocketFactory instance";
            com.huawei.hms.scankit.p.T.c(str, str2);
            return null;
        }
    }

    private void a(java.net.Socket socket) {
        if (socket instanceof javax.net.ssl.SSLSocket) {
            javax.net.ssl.SSLSocket sSLSocket = (javax.net.ssl.SSLSocket) socket;
            b(sSLSocket);
            a(sSLSocket);
        }
    }

    public static void a(javax.net.ssl.SSLSocket sSLSocket) {
        java.lang.String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        if (enabledCipherSuites == null || enabledCipherSuites.length == 0) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : enabledCipherSuites) {
            if (!a(str)) {
                arrayList.add(str);
            }
        }
        sSLSocket.setEnabledCipherSuites((java.lang.String[]) arrayList.toArray(new java.lang.String[arrayList.size()]));
    }

    public static boolean a(java.lang.String str) {
        for (java.lang.String str2 : a) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private void b(javax.net.ssl.SSLSocket sSLSocket) {
        if (sSLSocket != null) {
            sSLSocket.setEnabledProtocols(new java.lang.String[]{"TLSv1.2"});
        }
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.lang.String str, int i) {
        java.net.Socket socketCreateSocket = this.f639c.getSocketFactory().createSocket(str, i);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.lang.String str, int i, java.net.InetAddress inetAddress, int i2) {
        return createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.net.InetAddress inetAddress, int i) {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.net.InetAddress inetAddress, int i, java.net.InetAddress inetAddress2, int i2) {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.net.Socket createSocket(java.net.Socket socket, java.lang.String str, int i, boolean z) throws java.io.IOException {
        java.net.Socket socketCreateSocket = this.f639c.getSocketFactory().createSocket(socket, str, i, z);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getDefaultCipherSuites() {
        return new java.lang.String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getSupportedCipherSuites() {
        return new java.lang.String[0];
    }
}
