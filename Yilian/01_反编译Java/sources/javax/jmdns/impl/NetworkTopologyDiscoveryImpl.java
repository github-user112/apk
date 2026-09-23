package javax.jmdns.impl;

/* loaded from: classes.dex */
public class NetworkTopologyDiscoveryImpl implements javax.jmdns.NetworkTopologyDiscovery {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static final java.util.logging.Logger logger;
    public final java.lang.reflect.Method _isUp;
    public final java.lang.reflect.Method _supportsMulticast;

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.NetworkTopologyDiscoveryImpl.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public NetworkTopologyDiscoveryImpl() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.reflect.Method method;
        java.lang.reflect.Method method2 = null;
        try {
            method = java.net.NetworkInterface.class.getMethod("isUp", null);
        } catch (java.lang.Exception unused) {
            method = null;
        }
        this._isUp = method;
        try {
            method2 = java.net.NetworkInterface.class.getMethod("supportsMulticast", null);
        } catch (java.lang.Exception unused2) {
        }
        this._supportsMulticast = method2;
    }

    @Override // javax.jmdns.NetworkTopologyDiscovery
    public java.net.InetAddress[] getInetAddresses() throws java.net.SocketException {
        java.util.HashSet hashSet = new java.util.HashSet();
        try {
            java.util.Enumeration<java.net.NetworkInterface> networkInterfaces = java.net.NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                java.net.NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                java.util.Enumeration<java.net.InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    java.net.InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    java.util.logging.Logger logger2 = logger;
                    if (logger2.isLoggable(java.util.logging.Level.FINEST)) {
                        logger2.finest("Found NetworkInterface/InetAddress: " + networkInterfaceNextElement + " -- " + inetAddressNextElement);
                    }
                    if (useInetAddress(networkInterfaceNextElement, inetAddressNextElement)) {
                        hashSet.add(inetAddressNextElement);
                    }
                }
            }
        } catch (java.net.SocketException e2) {
            logger.warning("Error while fetching network interfaces addresses: " + e2);
        }
        return (java.net.InetAddress[]) hashSet.toArray(new java.net.InetAddress[hashSet.size()]);
    }

    @Override // javax.jmdns.NetworkTopologyDiscovery
    public void lockInetAddress(java.net.InetAddress inetAddress) {
    }

    @Override // javax.jmdns.NetworkTopologyDiscovery
    public void unlockInetAddress(java.net.InetAddress inetAddress) {
    }

    @Override // javax.jmdns.NetworkTopologyDiscovery
    public boolean useInetAddress(java.net.NetworkInterface networkInterface, java.net.InetAddress inetAddress) {
        try {
            java.lang.reflect.Method method = this._isUp;
            if (method != null) {
                try {
                    if (!((java.lang.Boolean) method.invoke(networkInterface, null)).booleanValue()) {
                        return false;
                    }
                } catch (java.lang.Exception unused) {
                }
            }
            java.lang.reflect.Method method2 = this._supportsMulticast;
            if (method2 != null) {
                try {
                    if (!((java.lang.Boolean) method2.invoke(networkInterface, null)).booleanValue()) {
                        return false;
                    }
                } catch (java.lang.Exception unused2) {
                }
            }
            return !inetAddress.isLoopbackAddress();
        } catch (java.lang.Exception unused3) {
            return false;
        }
    }
}
