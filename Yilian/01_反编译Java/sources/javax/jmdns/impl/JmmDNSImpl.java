package javax.jmdns.impl;

/* loaded from: classes.dex */
public class JmmDNSImpl implements javax.jmdns.JmmDNS, javax.jmdns.NetworkTopologyListener, javax.jmdns.impl.ServiceInfoImpl.Delegate {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public final java.util.Timer _timer;
    public final java.util.Set<javax.jmdns.NetworkTopologyListener> _networkListeners = java.util.Collections.synchronizedSet(new java.util.HashSet());
    public final java.util.concurrent.ConcurrentMap<java.net.InetAddress, javax.jmdns.JmDNS> _knownMDNS = new java.util.concurrent.ConcurrentHashMap();
    public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> _services = new java.util.concurrent.ConcurrentHashMap(20);
    public final java.util.concurrent.ExecutorService _ListenerExecutor = java.util.concurrent.Executors.newSingleThreadExecutor();
    public final java.util.concurrent.ExecutorService _jmDNSExecutor = java.util.concurrent.Executors.newCachedThreadPool();

    public static class NetworkChecker extends java.util.TimerTask {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger1;
        public java.util.Set<java.net.InetAddress> _knownAddresses = java.util.Collections.synchronizedSet(new java.util.HashSet());
        public final javax.jmdns.NetworkTopologyListener _mmDNS;
        public final javax.jmdns.NetworkTopologyDiscovery _topology;

        static {
            java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.JmmDNSImpl.NetworkChecker.class.getName());
            logger1 = logger;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger);
        }

        public NetworkChecker(javax.jmdns.NetworkTopologyListener networkTopologyListener, javax.jmdns.NetworkTopologyDiscovery networkTopologyDiscovery) {
            this._mmDNS = networkTopologyListener;
            this._topology = networkTopologyDiscovery;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                java.net.InetAddress[] inetAddresses = this._topology.getInetAddresses();
                java.util.HashSet hashSet = new java.util.HashSet(inetAddresses.length);
                for (java.net.InetAddress inetAddress : inetAddresses) {
                    hashSet.add(inetAddress);
                    if (!this._knownAddresses.contains(inetAddress)) {
                        this._mmDNS.inetAddressAdded(new javax.jmdns.impl.NetworkTopologyEventImpl(this._mmDNS, inetAddress));
                    }
                }
                for (java.net.InetAddress inetAddress2 : this._knownAddresses) {
                    if (!hashSet.contains(inetAddress2)) {
                        this._mmDNS.inetAddressRemoved(new javax.jmdns.impl.NetworkTopologyEventImpl(this._mmDNS, inetAddress2));
                    }
                }
                this._knownAddresses = hashSet;
            } catch (java.lang.Exception e2) {
                logger1.warning("Unexpected unhandled exception: " + e2);
            }
        }

        public void start(java.util.Timer timer) {
            timer.schedule(this, 0L, 10000L);
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.JmmDNSImpl.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public JmmDNSImpl() {
        java.util.Timer timer = new java.util.Timer("Multihommed mDNS.Timer", true);
        this._timer = timer;
        new javax.jmdns.impl.JmmDNSImpl.NetworkChecker(this, javax.jmdns.NetworkTopologyDiscovery.Factory.getInstance()).start(timer);
    }

    @Override // javax.jmdns.JmmDNS
    public void addNetworkTopologyListener(javax.jmdns.NetworkTopologyListener networkTopologyListener) {
        this._networkListeners.add(networkTopologyListener);
    }

    @Override // javax.jmdns.JmmDNS
    public void addServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener) {
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            it.next().addServiceListener(str, serviceListener);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void addServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener) {
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            it.next().addServiceTypeListener(serviceTypeListener);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.lang.InterruptedException {
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer("Cancelling JmmDNS: " + this);
        }
        this._timer.cancel();
        this._ListenerExecutor.shutdown();
        java.util.concurrent.ExecutorService executorServiceNewCachedThreadPool = java.util.concurrent.Executors.newCachedThreadPool();
        for (final javax.jmdns.JmDNS jmDNS : this._knownMDNS.values()) {
            executorServiceNewCachedThreadPool.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.1
                @Override // java.lang.Runnable
                public void run() throws java.io.IOException {
                    try {
                        jmDNS.close();
                    } catch (java.io.IOException unused) {
                    }
                }
            });
        }
        executorServiceNewCachedThreadPool.shutdown();
        try {
            executorServiceNewCachedThreadPool.awaitTermination(500L, java.util.concurrent.TimeUnit.MILLISECONDS);
        } catch (java.lang.InterruptedException e2) {
            logger.log(java.util.logging.Level.WARNING, "Exception ", (java.lang.Throwable) e2);
        }
        this._knownMDNS.clear();
    }

    @Override // javax.jmdns.JmmDNS
    public java.lang.String[] getHostNames() {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getHostName());
        }
        return (java.lang.String[]) hashSet.toArray(new java.lang.String[hashSet.size()]);
    }

    @Override // javax.jmdns.JmmDNS
    public java.net.InetAddress[] getInterfaces() {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getInterface());
        }
        return (java.net.InetAddress[]) hashSet.toArray(new java.net.InetAddress[hashSet.size()]);
    }

    @Override // javax.jmdns.JmmDNS
    public java.lang.String[] getNames() {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getName());
        }
        return (java.lang.String[]) hashSet.toArray(new java.lang.String[hashSet.size()]);
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2) {
        return getServiceInfos(str, str2, false, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2, long j) {
        return getServiceInfos(str, str2, false, j);
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] getServiceInfos(java.lang.String str, java.lang.String str2, boolean z) {
        return getServiceInfos(str, str2, z, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] getServiceInfos(final java.lang.String str, final java.lang.String str2, final boolean z, final long j) throws java.lang.InterruptedException {
        final java.util.Set setSynchronizedSet = java.util.Collections.synchronizedSet(new java.util.HashSet(this._knownMDNS.size()));
        java.util.concurrent.ExecutorService executorServiceNewCachedThreadPool = java.util.concurrent.Executors.newCachedThreadPool();
        for (final javax.jmdns.JmDNS jmDNS : this._knownMDNS.values()) {
            executorServiceNewCachedThreadPool.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    setSynchronizedSet.add(jmDNS.getServiceInfo(str, str2, z, j));
                }
            });
        }
        executorServiceNewCachedThreadPool.shutdown();
        try {
            executorServiceNewCachedThreadPool.awaitTermination(j, java.util.concurrent.TimeUnit.MILLISECONDS);
        } catch (java.lang.InterruptedException e2) {
            logger.log(java.util.logging.Level.WARNING, "Exception ", (java.lang.Throwable) e2);
        }
        return (javax.jmdns.ServiceInfo[]) setSynchronizedSet.toArray(new javax.jmdns.ServiceInfo[setSynchronizedSet.size()]);
    }

    @Override // javax.jmdns.NetworkTopologyListener
    public void inetAddressAdded(javax.jmdns.NetworkTopologyEvent networkTopologyEvent) {
        java.net.InetAddress inetAddress = networkTopologyEvent.getInetAddress();
        try {
            synchronized (this) {
                if (!this._knownMDNS.containsKey(inetAddress)) {
                    this._knownMDNS.put(inetAddress, javax.jmdns.JmDNS.create(inetAddress));
                    final javax.jmdns.impl.NetworkTopologyEventImpl networkTopologyEventImpl = new javax.jmdns.impl.NetworkTopologyEventImpl(this._knownMDNS.get(inetAddress), inetAddress);
                    for (final javax.jmdns.NetworkTopologyListener networkTopologyListener : networkListeners()) {
                        this._ListenerExecutor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.5
                            @Override // java.lang.Runnable
                            public void run() {
                                networkTopologyListener.inetAddressAdded(networkTopologyEventImpl);
                            }
                        });
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            logger.warning("Unexpected unhandled exception: " + e2);
        }
    }

    @Override // javax.jmdns.NetworkTopologyListener
    public void inetAddressRemoved(javax.jmdns.NetworkTopologyEvent networkTopologyEvent) {
        java.net.InetAddress inetAddress = networkTopologyEvent.getInetAddress();
        try {
            synchronized (this) {
                if (this._knownMDNS.containsKey(inetAddress)) {
                    javax.jmdns.JmDNS jmDNSRemove = this._knownMDNS.remove(inetAddress);
                    jmDNSRemove.close();
                    final javax.jmdns.impl.NetworkTopologyEventImpl networkTopologyEventImpl = new javax.jmdns.impl.NetworkTopologyEventImpl(jmDNSRemove, inetAddress);
                    for (final javax.jmdns.NetworkTopologyListener networkTopologyListener : networkListeners()) {
                        this._ListenerExecutor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.6
                            @Override // java.lang.Runnable
                            public void run() {
                                networkTopologyListener.inetAddressRemoved(networkTopologyEventImpl);
                            }
                        });
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            logger.warning("Unexpected unhandled exception: " + e2);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] list(java.lang.String str) {
        return list(str, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.ServiceInfo[] list(final java.lang.String str, final long j) throws java.lang.InterruptedException {
        final java.util.Set setSynchronizedSet = java.util.Collections.synchronizedSet(new java.util.HashSet(this._knownMDNS.size() * 5));
        java.util.concurrent.ExecutorService executorServiceNewCachedThreadPool = java.util.concurrent.Executors.newCachedThreadPool();
        for (final javax.jmdns.JmDNS jmDNS : this._knownMDNS.values()) {
            executorServiceNewCachedThreadPool.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    setSynchronizedSet.addAll(java.util.Arrays.asList(jmDNS.list(str, j)));
                }
            });
        }
        executorServiceNewCachedThreadPool.shutdown();
        try {
            executorServiceNewCachedThreadPool.awaitTermination(j, java.util.concurrent.TimeUnit.MILLISECONDS);
        } catch (java.lang.InterruptedException e2) {
            logger.log(java.util.logging.Level.WARNING, "Exception ", (java.lang.Throwable) e2);
        }
        return (javax.jmdns.ServiceInfo[]) setSynchronizedSet.toArray(new javax.jmdns.ServiceInfo[setSynchronizedSet.size()]);
    }

    @Override // javax.jmdns.JmmDNS
    public java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str) {
        return listBySubtype(str, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str, long j) throws java.lang.InterruptedException {
        java.util.HashMap map = new java.util.HashMap(5);
        for (javax.jmdns.ServiceInfo serviceInfo : list(str, j)) {
            java.lang.String subtype = serviceInfo.getSubtype();
            if (!map.containsKey(subtype)) {
                map.put(subtype, new java.util.ArrayList(10));
            }
            ((java.util.List) map.get(subtype)).add(serviceInfo);
        }
        java.util.HashMap map2 = new java.util.HashMap(map.size());
        for (java.lang.String str2 : map.keySet()) {
            java.util.List list = (java.util.List) map.get(str2);
            map2.put(str2, (javax.jmdns.ServiceInfo[]) list.toArray(new javax.jmdns.ServiceInfo[list.size()]));
        }
        return map2;
    }

    @Override // javax.jmdns.JmmDNS
    public javax.jmdns.NetworkTopologyListener[] networkListeners() {
        java.util.Set<javax.jmdns.NetworkTopologyListener> set = this._networkListeners;
        return (javax.jmdns.NetworkTopologyListener[]) set.toArray(new javax.jmdns.NetworkTopologyListener[set.size()]);
    }

    @Override // javax.jmdns.JmmDNS
    public void registerService(javax.jmdns.ServiceInfo serviceInfo) {
        synchronized (this._services) {
            java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
            while (it.hasNext()) {
                it.next().registerService(serviceInfo.clone());
            }
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDelegate(this);
            this._services.put(serviceInfo.getQualifiedName(), serviceInfo);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void registerServiceType(java.lang.String str) {
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            it.next().registerServiceType(str);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void removeNetworkTopologyListener(javax.jmdns.NetworkTopologyListener networkTopologyListener) {
        this._networkListeners.remove(networkTopologyListener);
    }

    @Override // javax.jmdns.JmmDNS
    public void removeServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener) {
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            it.next().removeServiceListener(str, serviceListener);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void removeServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener) {
        java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
        while (it.hasNext()) {
            it.next().removeServiceTypeListener(serviceTypeListener);
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2) {
        requestServiceInfo(str, str2, false, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2, long j) {
        requestServiceInfo(str, str2, false, j);
    }

    @Override // javax.jmdns.JmmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z) {
        requestServiceInfo(str, str2, z, 600L);
    }

    @Override // javax.jmdns.JmmDNS
    public void requestServiceInfo(final java.lang.String str, final java.lang.String str2, final boolean z, final long j) {
        for (final javax.jmdns.JmDNS jmDNS : this._knownMDNS.values()) {
            this._jmDNSExecutor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmmDNSImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    jmDNS.requestServiceInfo(str, str2, z, j);
                }
            });
        }
    }

    @Override // javax.jmdns.impl.ServiceInfoImpl.Delegate
    public void textValueUpdated(javax.jmdns.ServiceInfo serviceInfo, byte[] bArr) {
        synchronized (this._services) {
            java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
            while (it.hasNext()) {
                javax.jmdns.ServiceInfo serviceInfo2 = ((javax.jmdns.impl.JmDNSImpl) it.next()).getServices().get(serviceInfo.getQualifiedName());
                if (serviceInfo2 != null) {
                    serviceInfo2.setText(bArr);
                } else {
                    logger.warning("We have a mDNS that does not know about the service info being updated.");
                }
            }
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void unregisterAllServices() {
        synchronized (this._services) {
            java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
            while (it.hasNext()) {
                it.next().unregisterAllServices();
            }
            this._services.clear();
        }
    }

    @Override // javax.jmdns.JmmDNS
    public void unregisterService(javax.jmdns.ServiceInfo serviceInfo) {
        synchronized (this._services) {
            java.util.Iterator<javax.jmdns.JmDNS> it = this._knownMDNS.values().iterator();
            while (it.hasNext()) {
                it.next().unregisterService(serviceInfo);
            }
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDelegate(null);
            this._services.remove(serviceInfo.getQualifiedName());
        }
    }
}
