package javax.jmdns;

/* loaded from: classes.dex */
public interface JmmDNS extends java.io.Closeable {

    public static final class Factory {
        public static final java.util.concurrent.atomic.AtomicReference<javax.jmdns.JmmDNS.Factory.ClassDelegate> _databaseClassDelegate = new java.util.concurrent.atomic.AtomicReference<>();
        public static volatile javax.jmdns.JmmDNS _instance;

        public interface ClassDelegate {
            javax.jmdns.JmmDNS newJmmDNS();
        }

        public static javax.jmdns.JmmDNS.Factory.ClassDelegate classDelegate() {
            return _databaseClassDelegate.get();
        }

        public static javax.jmdns.JmmDNS getInstance() {
            if (_instance == null) {
                synchronized (javax.jmdns.JmmDNS.Factory.class) {
                    if (_instance == null) {
                        _instance = newJmmDNS();
                    }
                }
            }
            return _instance;
        }

        public static javax.jmdns.JmmDNS newJmmDNS() {
            javax.jmdns.JmmDNS.Factory.ClassDelegate classDelegate = _databaseClassDelegate.get();
            javax.jmdns.JmmDNS jmmDNSNewJmmDNS = classDelegate != null ? classDelegate.newJmmDNS() : null;
            return jmmDNSNewJmmDNS != null ? jmmDNSNewJmmDNS : new javax.jmdns.impl.JmmDNSImpl();
        }

        public static void setClassDelegate(javax.jmdns.JmmDNS.Factory.ClassDelegate classDelegate) {
            _databaseClassDelegate.set(classDelegate);
        }
    }

    void addNetworkTopologyListener(javax.jmdns.NetworkTopologyListener networkTopologyListener);

    void addServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener);

    void addServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener);

    java.lang.String[] getHostNames();

    java.net.InetAddress[] getInterfaces();

    java.lang.String[] getNames();

    javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2);

    javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2, long j);

    javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2, boolean z);

    javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2, boolean z, long j);

    javax.jmdns.ServiceInfo[] list(java.lang.String str);

    javax.jmdns.ServiceInfo[] list(java.lang.String str, long j);

    java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str);

    java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str, long j);

    javax.jmdns.NetworkTopologyListener[] networkListeners();

    void registerService(javax.jmdns.ServiceInfo serviceInfo);

    void registerServiceType(java.lang.String str);

    void removeNetworkTopologyListener(javax.jmdns.NetworkTopologyListener networkTopologyListener);

    void removeServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener);

    void removeServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener);

    void requestServiceInfo(java.lang.String str, java.lang.String str2);

    void requestServiceInfo(java.lang.String str, java.lang.String str2, long j);

    void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z);

    void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z, long j);

    void unregisterAllServices();

    void unregisterService(javax.jmdns.ServiceInfo serviceInfo);
}
