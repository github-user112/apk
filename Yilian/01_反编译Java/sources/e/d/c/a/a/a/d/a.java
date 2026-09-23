package e.d.c.a.a.a.d;

/* loaded from: classes.dex */
public class a implements javax.net.ssl.HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(java.lang.String str, javax.net.ssl.SSLSession sSLSession) throws java.security.cert.CertificateParsingException {
        try {
            java.security.cert.X509Certificate x509Certificate = (java.security.cert.X509Certificate) sSLSession.getPeerCertificates()[0];
            x509Certificate.getSubjectDN().getName();
            e.d.c.a.a.a.d.c.a(str, x509Certificate, true);
            return true;
        } catch (javax.net.ssl.SSLException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SSLException : ");
            sbO.append(e2.getMessage());
            d.s.y.w("", sbO.toString());
            return false;
        }
    }
}
