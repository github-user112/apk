package javax.jmdns;

/* loaded from: classes.dex */
public interface NetworkTopologyDiscovery {

    public static final class Factory {
        public static final java.util.concurrent.atomic.AtomicReference<javax.jmdns.NetworkTopologyDiscovery.Factory.ClassDelegate> _databaseClassDelegate = new java.util.concurrent.atomic.AtomicReference<>();
        public static volatile javax.jmdns.NetworkTopologyDiscovery _instance;

        public interface ClassDelegate {
            javax.jmdns.NetworkTopologyDiscovery newNetworkTopologyDiscovery();
        }

        public static javax.jmdns.NetworkTopologyDiscovery.Factory.ClassDelegate classDelegate() {
            return _databaseClassDelegate.get();
        }

        public static javax.jmdns.NetworkTopologyDiscovery getInstance() {
            if (_instance == null) {
                synchronized (javax.jmdns.NetworkTopologyDiscovery.Factory.class) {
                    if (_instance == null) {
                        _instance = newNetworkTopologyDiscovery();
                    }
                }
            }
            return _instance;
        }

        public static javax.jmdns.NetworkTopologyDiscovery newNetworkTopologyDiscovery() {
            javax.jmdns.NetworkTopologyDiscovery.Factory.ClassDelegate classDelegate = _databaseClassDelegate.get();
            javax.jmdns.NetworkTopologyDiscovery networkTopologyDiscoveryNewNetworkTopologyDiscovery = classDelegate != null ? classDelegate.newNetworkTopologyDiscovery() : null;
            return networkTopologyDiscoveryNewNetworkTopologyDiscovery != null ? networkTopologyDiscoveryNewNetworkTopologyDiscovery : new javax.jmdns.impl.NetworkTopologyDiscoveryImpl();
        }

        public static void setClassDelegate(javax.jmdns.NetworkTopologyDiscovery.Factory.ClassDelegate classDelegate) {
            _databaseClassDelegate.set(classDelegate);
        }
    }

    java.net.InetAddress[] getInetAddresses();

    void lockInetAddress(java.net.InetAddress inetAddress);

    void unlockInetAddress(java.net.InetAddress inetAddress);

    boolean useInetAddress(java.net.NetworkInterface networkInterface, java.net.InetAddress inetAddress);
}
