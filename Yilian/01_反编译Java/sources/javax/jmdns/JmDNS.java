package javax.jmdns;

/* loaded from: classes.dex */
public abstract class JmDNS implements java.io.Closeable {
    public static final java.lang.String VERSION = "3.4.1";

    public interface Delegate {
        void cannotRecoverFromIOError(javax.jmdns.JmDNS jmDNS, java.util.Collection<javax.jmdns.ServiceInfo> collection);
    }

    public static javax.jmdns.JmDNS create() {
        return new javax.jmdns.impl.JmDNSImpl(null, null);
    }

    public static javax.jmdns.JmDNS create(java.lang.String str) {
        return new javax.jmdns.impl.JmDNSImpl(null, str);
    }

    public static javax.jmdns.JmDNS create(java.net.InetAddress inetAddress) {
        return new javax.jmdns.impl.JmDNSImpl(inetAddress, null);
    }

    public static javax.jmdns.JmDNS create(java.net.InetAddress inetAddress, java.lang.String str) {
        return new javax.jmdns.impl.JmDNSImpl(inetAddress, str);
    }

    public static void setUseDefaultMdnsPort(boolean z) {
        javax.jmdns.impl.JmDNSImpl.setUseDefaultMdnsPort(z);
    }

    public abstract void addServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener);

    public abstract void addServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener);

    public abstract javax.jmdns.JmDNS.Delegate getDelegate();

    public abstract java.lang.String getHostName();

    public abstract java.net.InetAddress getInterface();

    public abstract java.lang.String getName();

    public abstract javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2);

    public abstract javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, long j);

    public abstract javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, boolean z);

    public abstract javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, boolean z, long j);

    public abstract boolean isClosed();

    public abstract boolean isClosing();

    public abstract javax.jmdns.ServiceInfo[] list(java.lang.String str);

    public abstract javax.jmdns.ServiceInfo[] list(java.lang.String str, long j);

    public abstract java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str);

    public abstract java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str, long j);

    @java.lang.Deprecated
    public abstract void printServices();

    public abstract void registerService(javax.jmdns.ServiceInfo serviceInfo);

    public abstract boolean registerServiceType(java.lang.String str);

    public abstract void removeServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener);

    public abstract void removeServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener);

    public abstract void requestServiceInfo(java.lang.String str, java.lang.String str2);

    public abstract void requestServiceInfo(java.lang.String str, java.lang.String str2, long j);

    public abstract void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z);

    public abstract void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z, long j);

    public abstract javax.jmdns.JmDNS.Delegate setDelegate(javax.jmdns.JmDNS.Delegate delegate);

    public abstract void unregisterAllServices();

    public abstract void unregisterService(javax.jmdns.ServiceInfo serviceInfo);
}
