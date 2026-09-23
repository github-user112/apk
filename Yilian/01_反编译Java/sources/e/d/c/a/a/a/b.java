package e.d.c.a.a.a;

/* loaded from: classes.dex */
public class b extends javax.net.ssl.SSLSocketFactory {

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f2818d;
    public javax.net.ssl.SSLContext a;
    public javax.net.ssl.SSLSocket b = null;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String[] f2819c;

    static {
        new org.apache.http.conn.ssl.BrowserCompatHostnameVerifier();
        new org.apache.http.conn.ssl.StrictHostnameVerifier();
        f2818d = e.d.c.a.a.a.b.class.getSimpleName();
    }

    public b(javax.net.ssl.X509TrustManager x509TrustManager) throws java.security.NoSuchAlgorithmException, java.security.KeyManagementException {
        this.a = null;
        javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance(android.os.Build.VERSION.SDK_INT >= 29 ? "TLSv1.3" : "TLSv1.2");
        this.a = sSLContext;
        sSLContext.init(null, new javax.net.ssl.X509TrustManager[]{x509TrustManager}, new java.security.SecureRandom());
    }

    public final void a(java.net.Socket socket) {
        boolean z;
        boolean z2 = true;
        if (d.s.y.b(null)) {
            z = false;
        } else {
            d.s.y.i(f2818d, "set protocols");
            z = true;
        }
        if (d.s.y.b(null) && d.s.y.b(null)) {
            z2 = false;
        } else {
            d.s.y.i(f2818d, "set white cipher or black cipher");
            javax.net.ssl.SSLSocket sSLSocket = (javax.net.ssl.SSLSocket) socket;
            e.d.c.a.a.a.a.b(sSLSocket);
            if (d.s.y.b(null)) {
                e.d.c.a.a.a.a.a(sSLSocket, null);
            } else {
                e.d.c.a.a.a.a.c(sSLSocket, null);
            }
        }
        if (!z) {
            d.s.y.i(f2818d, "set default protocols");
            e.d.c.a.a.a.a.b((javax.net.ssl.SSLSocket) socket);
        }
        if (z2) {
            return;
        }
        d.s.y.i(f2818d, "set default cipher suites");
        javax.net.ssl.SSLSocket sSLSocket2 = (javax.net.ssl.SSLSocket) socket;
        if (sSLSocket2 == null) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT > 19 ? e.d.c.a.a.a.a.c(sSLSocket2, e.d.c.a.a.a.a.b) : e.d.c.a.a.a.a.c(sSLSocket2, e.d.c.a.a.a.a.a)) {
            return;
        }
        e.d.c.a.a.a.a.a(sSLSocket2, e.d.c.a.a.a.a.f2817c);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.lang.String str, int i) {
        d.s.y.i(f2818d, "createSocket: host , port");
        java.net.Socket socketCreateSocket = this.a.getSocketFactory().createSocket(str, i);
        if (socketCreateSocket instanceof javax.net.ssl.SSLSocket) {
            a(socketCreateSocket);
            javax.net.ssl.SSLSocket sSLSocket = (javax.net.ssl.SSLSocket) socketCreateSocket;
            this.b = sSLSocket;
            this.f2819c = (java.lang.String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
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
        d.s.y.i(f2818d, "createSocket");
        java.net.Socket socketCreateSocket = this.a.getSocketFactory().createSocket(socket, str, i, z);
        if (socketCreateSocket instanceof javax.net.ssl.SSLSocket) {
            a(socketCreateSocket);
            javax.net.ssl.SSLSocket sSLSocket = (javax.net.ssl.SSLSocket) socketCreateSocket;
            this.b = sSLSocket;
            this.f2819c = (java.lang.String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getDefaultCipherSuites() {
        return new java.lang.String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getSupportedCipherSuites() {
        java.lang.String[] strArr = this.f2819c;
        return strArr != null ? strArr : new java.lang.String[0];
    }
}
