package javax.jmdns.impl;

/* loaded from: classes.dex */
public class JmDNSImpl extends javax.jmdns.JmDNS implements javax.jmdns.impl.DNSStatefulObject, javax.jmdns.impl.DNSTaskStarter {
    public static final java.util.Random _random;
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public static boolean sUseDefaultPort;
    public final javax.jmdns.impl.DNSCache _cache;
    public volatile javax.jmdns.JmDNS.Delegate _delegate;
    public volatile java.net.InetAddress _group;
    public java.lang.Thread _incomingListener;
    public long _lastThrottleIncrement;
    public final java.util.List<javax.jmdns.impl.DNSListener> _listeners;
    public javax.jmdns.impl.HostInfo _localHost;
    public final java.lang.String _name;
    public javax.jmdns.impl.DNSIncoming _plannedAnswer;
    public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.impl.JmDNSImpl.ServiceCollector> _serviceCollectors;
    public final java.util.concurrent.ConcurrentMap<java.lang.String, java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus>> _serviceListeners;
    public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry> _serviceTypes;
    public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> _services;
    public java.lang.Thread _shutdown;
    public volatile java.net.MulticastSocket _socket;
    public int _throttle;
    public final java.util.Set<javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus> _typeListeners;
    public final java.util.concurrent.ExecutorService _executor = java.util.concurrent.Executors.newSingleThreadExecutor();
    public final java.util.concurrent.locks.ReentrantLock _ioLock = new java.util.concurrent.locks.ReentrantLock();
    public final java.lang.Object _recoverLock = new java.lang.Object();

    /* renamed from: javax.jmdns.impl.JmDNSImpl$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation;

        static {
            int[] iArr = new int[javax.jmdns.impl.JmDNSImpl.Operation.values().length];
            $SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation = iArr;
            try {
                javax.jmdns.impl.JmDNSImpl.Operation operation = javax.jmdns.impl.JmDNSImpl.Operation.Add;
                iArr[2] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation;
                javax.jmdns.impl.JmDNSImpl.Operation operation2 = javax.jmdns.impl.JmDNSImpl.Operation.Remove;
                iArr2[0] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
        }
    }

    public enum Operation {
        Remove,
        Update,
        Add,
        RegisterServiceType,
        Noop
    }

    public static class ServiceCollector implements javax.jmdns.ServiceListener {
        public final java.lang.String _type;
        public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> _infos = new java.util.concurrent.ConcurrentHashMap();
        public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceEvent> _events = new java.util.concurrent.ConcurrentHashMap();
        public volatile boolean _needToWaitForInfos = true;

        public ServiceCollector(java.lang.String str) {
            this._type = str;
        }

        public javax.jmdns.ServiceInfo[] list(long j) throws java.lang.InterruptedException {
            if (this._infos.isEmpty() || !this._events.isEmpty() || this._needToWaitForInfos) {
                long j2 = j / 200;
                if (j2 < 1) {
                    j2 = 1;
                }
                for (int i = 0; i < j2; i++) {
                    try {
                        java.lang.Thread.sleep(200L);
                    } catch (java.lang.InterruptedException unused) {
                    }
                    if (this._events.isEmpty() && !this._infos.isEmpty() && !this._needToWaitForInfos) {
                        break;
                    }
                }
            }
            this._needToWaitForInfos = false;
            return (javax.jmdns.ServiceInfo[]) this._infos.values().toArray(new javax.jmdns.ServiceInfo[this._infos.size()]);
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceAdded(javax.jmdns.ServiceEvent serviceEvent) {
            java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> concurrentMap;
            synchronized (this) {
                javax.jmdns.ServiceInfo info = serviceEvent.getInfo();
                if (info == null || !info.hasData()) {
                    info = ((javax.jmdns.impl.JmDNSImpl) serviceEvent.getDNS()).resolveServiceInfo(serviceEvent.getType(), serviceEvent.getName(), info != null ? info.getSubtype() : "", true);
                    if (info != null) {
                        concurrentMap = this._infos;
                    } else {
                        this._events.put(serviceEvent.getName(), serviceEvent);
                    }
                } else {
                    concurrentMap = this._infos;
                }
                concurrentMap.put(serviceEvent.getName(), info);
            }
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceRemoved(javax.jmdns.ServiceEvent serviceEvent) {
            synchronized (this) {
                this._infos.remove(serviceEvent.getName());
                this._events.remove(serviceEvent.getName());
            }
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceResolved(javax.jmdns.ServiceEvent serviceEvent) {
            synchronized (this) {
                this._infos.put(serviceEvent.getName(), serviceEvent.getInfo());
                this._events.remove(serviceEvent.getName());
            }
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            stringBuffer.append("\n\tType: ");
            stringBuffer.append(this._type);
            if (this._infos.isEmpty()) {
                stringBuffer.append("\n\tNo services collected.");
            } else {
                stringBuffer.append("\n\tServices");
                for (java.lang.String str : this._infos.keySet()) {
                    stringBuffer.append("\n\t\tService: ");
                    stringBuffer.append(str);
                    stringBuffer.append(": ");
                    stringBuffer.append(this._infos.get(str));
                }
            }
            if (this._events.isEmpty()) {
                stringBuffer.append("\n\tNo event queued.");
            } else {
                stringBuffer.append("\n\tEvents");
                for (java.lang.String str2 : this._events.keySet()) {
                    stringBuffer.append("\n\t\tEvent: ");
                    stringBuffer.append(str2);
                    stringBuffer.append(": ");
                    stringBuffer.append(this._events.get(str2));
                }
            }
            return stringBuffer.toString();
        }
    }

    public static class ServiceTypeEntry extends java.util.AbstractMap<java.lang.String, java.lang.String> implements java.lang.Cloneable {
        public final java.util.Set<java.util.Map.Entry<java.lang.String, java.lang.String>> _entrySet = new java.util.HashSet();
        public final java.lang.String _type;

        public static class SubTypeEntry implements java.util.Map.Entry<java.lang.String, java.lang.String>, java.io.Serializable, java.lang.Cloneable {
            public static final long serialVersionUID = 9188503522395855322L;
            public final java.lang.String _key;
            public final java.lang.String _value;

            public SubTypeEntry(java.lang.String str) {
                str = str == null ? "" : str;
                this._value = str;
                this._key = str.toLowerCase();
            }

            public javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry.SubTypeEntry clone() {
                return this;
            }

            @Override // java.util.Map.Entry
            public boolean equals(java.lang.Object obj) {
                if (!(obj instanceof java.util.Map.Entry)) {
                    return false;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry) obj;
                return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
            }

            @Override // java.util.Map.Entry
            public java.lang.String getKey() {
                return this._key;
            }

            @Override // java.util.Map.Entry
            public java.lang.String getValue() {
                return this._value;
            }

            @Override // java.util.Map.Entry
            public int hashCode() {
                java.lang.String str = this._key;
                int iHashCode = str == null ? 0 : str.hashCode();
                java.lang.String str2 = this._value;
                return iHashCode ^ (str2 != null ? str2.hashCode() : 0);
            }

            @Override // java.util.Map.Entry
            public java.lang.String setValue(java.lang.String str) {
                throw new java.lang.UnsupportedOperationException();
            }

            public java.lang.String toString() {
                return this._key + "=" + this._value;
            }
        }

        public ServiceTypeEntry(java.lang.String str) {
            this._type = str;
        }

        public boolean add(java.lang.String str) {
            if (str == null || contains(str)) {
                return false;
            }
            this._entrySet.add(new javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry.SubTypeEntry(str));
            return true;
        }

        @Override // java.util.AbstractMap
        public javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry clone() {
            javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry serviceTypeEntry = new javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry(getType());
            java.util.Iterator<java.util.Map.Entry<java.lang.String, java.lang.String>> it = entrySet().iterator();
            while (it.hasNext()) {
                serviceTypeEntry.add(it.next().getValue());
            }
            return serviceTypeEntry;
        }

        public boolean contains(java.lang.String str) {
            return str != null && containsKey(str.toLowerCase());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.Set<java.util.Map.Entry<java.lang.String, java.lang.String>> entrySet() {
            return this._entrySet;
        }

        public java.lang.String getType() {
            return this._type;
        }

        public java.util.Iterator<java.lang.String> iterator() {
            return keySet().iterator();
        }

        @Override // java.util.AbstractMap
        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(200);
            if (isEmpty()) {
                sb.append(com.umeng.commonsdk.statistics.b.f1511f);
            } else {
                java.util.Iterator<java.lang.String> it = values().iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(", ");
                }
                sb.setLength(sb.length() - 2);
            }
            return sb.toString();
        }
    }

    public class Shutdown implements java.lang.Runnable {
        public Shutdown() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                javax.jmdns.impl.JmDNSImpl jmDNSImpl = javax.jmdns.impl.JmDNSImpl.this;
                jmDNSImpl._shutdown = null;
                jmDNSImpl.close();
            } catch (java.lang.Throwable th) {
                java.lang.System.err.println("Error while shuting down. " + th);
            }
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.JmDNSImpl.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        sUseDefaultPort = true;
        _random = new java.util.Random();
    }

    public JmDNSImpl(java.net.InetAddress inetAddress, java.lang.String str) throws java.io.IOException {
        if (logger.isLoggable(java.util.logging.Level.INFO)) {
            logger.info("JmDNS instance created");
        }
        this._cache = new javax.jmdns.impl.DNSCache(100);
        this._listeners = java.util.Collections.synchronizedList(new java.util.ArrayList());
        this._serviceListeners = new java.util.concurrent.ConcurrentHashMap();
        this._typeListeners = java.util.Collections.synchronizedSet(new java.util.HashSet());
        this._serviceCollectors = new java.util.concurrent.ConcurrentHashMap();
        this._services = new java.util.concurrent.ConcurrentHashMap(20);
        this._serviceTypes = new java.util.concurrent.ConcurrentHashMap(20);
        javax.jmdns.impl.HostInfo hostInfoNewHostInfo = javax.jmdns.impl.HostInfo.newHostInfo(inetAddress, this, str);
        this._localHost = hostInfoNewHostInfo;
        this._name = str == null ? hostInfoNewHostInfo.getName() : str;
        openMulticastSocket(getLocalHost());
        start(getServices().values());
        startReaper();
    }

    private void addServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener, boolean z) {
        javax.jmdns.impl.ListenerStatus.ServiceListenerStatus serviceListenerStatus = new javax.jmdns.impl.ListenerStatus.ServiceListenerStatus(serviceListener, z);
        java.lang.String lowerCase = str.toLowerCase();
        java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus> list = this._serviceListeners.get(lowerCase);
        if (list == null) {
            if (this._serviceListeners.putIfAbsent(lowerCase, new java.util.LinkedList()) == null && this._serviceCollectors.putIfAbsent(lowerCase, new javax.jmdns.impl.JmDNSImpl.ServiceCollector(str)) == null) {
                addServiceListener(lowerCase, this._serviceCollectors.get(lowerCase), true);
            }
            list = this._serviceListeners.get(lowerCase);
        }
        if (list != null) {
            synchronized (list) {
                if (!list.contains(serviceListenerStatus)) {
                    list.add(serviceListenerStatus);
                }
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<javax.jmdns.impl.DNSEntry> it = getCache().allValues().iterator();
        while (it.hasNext()) {
            javax.jmdns.impl.DNSRecord dNSRecord = (javax.jmdns.impl.DNSRecord) it.next();
            if (dNSRecord.getRecordType() == javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV && dNSRecord.getKey().endsWith(lowerCase)) {
                arrayList.add(new javax.jmdns.impl.ServiceEventImpl(this, dNSRecord.getType(), toUnqualifiedName(dNSRecord.getType(), dNSRecord.getName()), dNSRecord.getServiceInfo()));
            }
        }
        java.util.Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            serviceListenerStatus.serviceAdded((javax.jmdns.ServiceEvent) it2.next());
        }
        startServiceResolver(str);
    }

    private void closeMulticastSocket() throws java.io.IOException {
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer("closeMulticastSocket()");
        }
        if (this._socket != null) {
            try {
                try {
                    this._socket.leaveGroup(this._group);
                } catch (java.lang.Exception e2) {
                    logger.log(java.util.logging.Level.WARNING, "closeMulticastSocket() Close socket exception ", (java.lang.Throwable) e2);
                }
            } catch (java.net.SocketException unused) {
            }
            this._socket.close();
            while (true) {
                java.lang.Thread thread = this._incomingListener;
                if (thread == null || !thread.isAlive()) {
                    break;
                }
                synchronized (this) {
                    try {
                        java.lang.Thread thread2 = this._incomingListener;
                        if (thread2 != null && thread2.isAlive()) {
                            if (logger.isLoggable(java.util.logging.Level.FINER)) {
                                logger.finer("closeMulticastSocket(): waiting for jmDNS monitor");
                            }
                            wait(1000L);
                        }
                    } catch (java.lang.InterruptedException unused2) {
                    }
                }
            }
            this._incomingListener = null;
            this._socket = null;
        }
    }

    private void disposeServiceCollectors() {
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer("disposeServiceCollectors()");
        }
        for (java.lang.String str : this._serviceCollectors.keySet()) {
            javax.jmdns.impl.JmDNSImpl.ServiceCollector serviceCollector = this._serviceCollectors.get(str);
            if (serviceCollector != null) {
                removeServiceListener(str, serviceCollector);
                this._serviceCollectors.remove(str, serviceCollector);
            }
        }
    }

    public static java.util.Random getRandom() {
        return _random;
    }

    public static void main(java.lang.String[] strArr) throws java.io.IOException {
        java.lang.String property;
        try {
            java.util.Properties properties = new java.util.Properties();
            properties.load(javax.jmdns.impl.JmDNSImpl.class.getResourceAsStream("/META-INF/maven/javax.jmdns/jmdns/pom.properties"));
            property = properties.getProperty(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION);
        } catch (java.lang.Exception unused) {
            property = "RUNNING.IN.IDE.FULL";
        }
        java.lang.System.out.println("JmDNS version \"" + property + "\"");
        java.lang.System.out.println(" ");
        java.io.PrintStream printStream = java.lang.System.out;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Running on java version \"");
        sbO.append(java.lang.System.getProperty("java.version"));
        sbO.append("\" (build ");
        sbO.append(java.lang.System.getProperty("java.runtime.version"));
        sbO.append(") from ");
        sbO.append(java.lang.System.getProperty("java.vendor"));
        printStream.println(sbO.toString());
        java.io.PrintStream printStream2 = java.lang.System.out;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Operating environment \"");
        sbO2.append(java.lang.System.getProperty("os.name"));
        sbO2.append("\" version ");
        sbO2.append(java.lang.System.getProperty("os.version"));
        sbO2.append(" on ");
        sbO2.append(java.lang.System.getProperty("os.arch"));
        printStream2.println(sbO2.toString());
        java.lang.System.out.println("For more information on JmDNS please visit https://sourceforge.net/projects/jmdns/");
    }

    private boolean makeServiceNameUnique(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
        boolean z;
        javax.jmdns.ServiceInfo serviceInfo;
        java.lang.String key = serviceInfoImpl.getKey();
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        do {
            z = false;
            for (javax.jmdns.impl.DNSEntry dNSEntry : getCache().getDNSEntryList(serviceInfoImpl.getKey())) {
                if (javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV.equals(dNSEntry.getRecordType()) && !dNSEntry.isExpired(jCurrentTimeMillis)) {
                    javax.jmdns.impl.DNSRecord.Service service = (javax.jmdns.impl.DNSRecord.Service) dNSEntry;
                    if (service.getPort() != serviceInfoImpl.getPort() || !service.getServer().equals(this._localHost.getName())) {
                        if (logger.isLoggable(java.util.logging.Level.FINER)) {
                            logger.finer("makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:" + dNSEntry + " s.server=" + service.getServer() + " " + this._localHost.getName() + " equals:" + service.getServer().equals(this._localHost.getName()));
                        }
                        serviceInfoImpl.setName(incrementName(serviceInfoImpl.getName()));
                        z = true;
                        serviceInfo = this._services.get(serviceInfoImpl.getKey());
                        if (serviceInfo == null && serviceInfo != serviceInfoImpl) {
                            serviceInfoImpl.setName(incrementName(serviceInfoImpl.getName()));
                            z = true;
                        }
                    }
                }
            }
            serviceInfo = this._services.get(serviceInfoImpl.getKey());
            if (serviceInfo == null) {
            }
        } while (z);
        return !key.equals(serviceInfoImpl.getKey());
    }

    private void openMulticastSocket(javax.jmdns.impl.HostInfo hostInfo) throws java.io.IOException {
        if (this._group == null) {
            this._group = java.net.InetAddress.getByName(hostInfo.getInetAddress() instanceof java.net.Inet6Address ? javax.jmdns.impl.constants.DNSConstants.MDNS_GROUP_IPV6 : javax.jmdns.impl.constants.DNSConstants.MDNS_GROUP);
        }
        if (this._socket != null) {
            closeMulticastSocket();
        }
        this._socket = sUseDefaultPort ? new java.net.MulticastSocket(javax.jmdns.impl.constants.DNSConstants.MDNS_PORT) : new java.net.MulticastSocket();
        if (hostInfo != null && hostInfo.getInterface() != null) {
            try {
                this._socket.setNetworkInterface(hostInfo.getInterface());
            } catch (java.net.SocketException e2) {
                if (logger.isLoggable(java.util.logging.Level.FINE)) {
                    java.util.logging.Logger logger2 = logger;
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("openMulticastSocket() Set network interface exception: ");
                    sbO.append(e2.getMessage());
                    logger2.fine(sbO.toString());
                }
            }
        }
        this._socket.setTimeToLive(255);
        this._socket.joinGroup(new java.net.InetSocketAddress(this._group, 5353), hostInfo.getInterface());
    }

    public static void setUseDefaultMdnsPort(boolean z) {
        sUseDefaultPort = z;
    }

    private void start(java.util.Collection<? extends javax.jmdns.ServiceInfo> collection) {
        if (this._incomingListener == null) {
            javax.jmdns.impl.SocketListener socketListener = new javax.jmdns.impl.SocketListener(this);
            this._incomingListener = socketListener;
            socketListener.start();
        }
        startProber();
        java.util.Iterator<? extends javax.jmdns.ServiceInfo> it = collection.iterator();
        while (it.hasNext()) {
            try {
                registerService(new javax.jmdns.impl.ServiceInfoImpl(it.next()));
            } catch (java.lang.Exception e2) {
                logger.log(java.util.logging.Level.WARNING, "start() Registration exception ", (java.lang.Throwable) e2);
            }
        }
    }

    public static java.lang.String toUnqualifiedName(java.lang.String str, java.lang.String str2) {
        java.lang.String lowerCase = str.toLowerCase();
        java.lang.String lowerCase2 = str2.toLowerCase();
        return (!lowerCase2.endsWith(lowerCase) || lowerCase2.equals(lowerCase)) ? str2 : str2.substring(0, (str2.length() - str.length()) - 1);
    }

    private void waitForInfoData(javax.jmdns.ServiceInfo serviceInfo, long j) {
        synchronized (serviceInfo) {
            long j2 = j / 200;
            if (j2 < 1) {
                j2 = 1;
            }
            for (int i = 0; i < j2 && !serviceInfo.hasData(); i++) {
                try {
                    serviceInfo.wait(200L);
                } catch (java.lang.InterruptedException unused) {
                }
            }
        }
    }

    public void __recover() throws java.io.IOException {
        java.util.logging.Logger logger2 = logger;
        java.util.logging.Level level = java.util.logging.Level.FINER;
        if (logger2.isLoggable(level)) {
            logger.finer(getName() + "recover() Cleanning up");
        }
        logger.warning("RECOVERING");
        purgeTimer();
        java.util.ArrayList arrayList = new java.util.ArrayList(getServices().values());
        unregisterAllServices();
        disposeServiceCollectors();
        waitForCanceled(500L);
        purgeStateTimer();
        closeMulticastSocket();
        getCache().clear();
        if (logger.isLoggable(level)) {
            logger.finer(getName() + "recover() All is clean");
        }
        if (!isCanceled()) {
            logger.log(java.util.logging.Level.WARNING, getName() + "recover() Could not recover we are Down!");
            if (getDelegate() != null) {
                getDelegate().cannotRecoverFromIOError(getDns(), arrayList);
                return;
            }
            return;
        }
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((javax.jmdns.impl.ServiceInfoImpl) ((javax.jmdns.ServiceInfo) it.next())).recoverState();
        }
        recoverState();
        try {
            openMulticastSocket(getLocalHost());
            start(arrayList);
        } catch (java.lang.Exception e2) {
            logger.log(java.util.logging.Level.WARNING, getName() + "recover() Start services exception ", (java.lang.Throwable) e2);
        }
        logger.log(java.util.logging.Level.WARNING, getName() + "recover() We are back!");
    }

    public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSRecord dNSRecord) {
        if (dNSOutgoing == null) {
            dNSOutgoing = new javax.jmdns.impl.DNSOutgoing(33792, false, dNSIncoming.getSenderUDPPayload());
        }
        try {
            dNSOutgoing.addAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            dNSOutgoing.setFlags(dNSOutgoing.getFlags() | 512);
            dNSOutgoing.setId(dNSIncoming.getId());
            send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(33792, false, dNSIncoming.getSenderUDPPayload());
            dNSOutgoing2.addAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing2;
        }
    }

    public void addListener(javax.jmdns.impl.DNSListener dNSListener, javax.jmdns.impl.DNSQuestion dNSQuestion) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        this._listeners.add(dNSListener);
        if (dNSQuestion != null) {
            for (javax.jmdns.impl.DNSEntry dNSEntry : getCache().getDNSEntryList(dNSQuestion.getName().toLowerCase())) {
                if (dNSQuestion.answeredBy(dNSEntry) && !dNSEntry.isExpired(jCurrentTimeMillis)) {
                    dNSListener.updateRecord(getCache(), jCurrentTimeMillis, dNSEntry);
                }
            }
        }
    }

    @Override // javax.jmdns.JmDNS
    public void addServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener) {
        addServiceListener(str, serviceListener, false);
    }

    @Override // javax.jmdns.JmDNS
    public void addServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener) {
        javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus serviceTypeListenerStatus = new javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus(serviceTypeListener, false);
        this._typeListeners.add(serviceTypeListenerStatus);
        java.util.Iterator<java.lang.String> it = this._serviceTypes.keySet().iterator();
        while (it.hasNext()) {
            serviceTypeListenerStatus.serviceTypeAdded(new javax.jmdns.impl.ServiceEventImpl(this, it.next(), "", null));
        }
        startTypeResolver();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean advanceState(javax.jmdns.impl.tasks.DNSTask dNSTask) {
        return this._localHost.advanceState(dNSTask);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public void associateWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState) {
        this._localHost.associateWithTask(dNSTask, dNSState);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean cancelState() {
        return this._localHost.cancelState();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void cancelStateTimer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).cancelStateTimer();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void cancelTimer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).cancelTimer();
    }

    public void cleanCache() {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        for (javax.jmdns.impl.DNSEntry dNSEntry : getCache().allValues()) {
            try {
                javax.jmdns.impl.DNSRecord dNSRecord = (javax.jmdns.impl.DNSRecord) dNSEntry;
                if (dNSRecord.isExpired(jCurrentTimeMillis)) {
                    updateRecord(jCurrentTimeMillis, dNSRecord, javax.jmdns.impl.JmDNSImpl.Operation.Remove);
                    getCache().removeDNSEntry(dNSRecord);
                } else if (dNSRecord.isStale(jCurrentTimeMillis)) {
                    renewServiceCollector(dNSRecord);
                }
            } catch (java.lang.Exception e2) {
                logger.log(java.util.logging.Level.SEVERE, getName() + ".Error while reaping records: " + dNSEntry, (java.lang.Throwable) e2);
                logger.severe(toString());
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (isClosing()) {
            return;
        }
        java.util.logging.Logger logger2 = logger;
        java.util.logging.Level level = java.util.logging.Level.FINER;
        if (logger2.isLoggable(level)) {
            logger.finer("Cancelling JmDNS: " + this);
        }
        if (closeState()) {
            logger.finer("Canceling the timer");
            cancelTimer();
            unregisterAllServices();
            disposeServiceCollectors();
            if (logger.isLoggable(level)) {
                logger.finer("Wait for JmDNS cancel: " + this);
            }
            waitForCanceled(500L);
            logger.finer("Canceling the state timer");
            cancelStateTimer();
            this._executor.shutdown();
            closeMulticastSocket();
            if (this._shutdown != null) {
                java.lang.Runtime.getRuntime().removeShutdownHook(this._shutdown);
            }
            if (logger.isLoggable(level)) {
                logger.finer("JmDNS closed.");
            }
        }
        advanceState(null);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean closeState() {
        return this._localHost.closeState();
    }

    public javax.jmdns.impl.DNSCache getCache() {
        return this._cache;
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.JmDNS.Delegate getDelegate() {
        return this._delegate;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public javax.jmdns.impl.JmDNSImpl getDns() {
        return this;
    }

    public java.net.InetAddress getGroup() {
        return this._group;
    }

    @Override // javax.jmdns.JmDNS
    public java.lang.String getHostName() {
        return this._localHost.getName();
    }

    @Override // javax.jmdns.JmDNS
    public java.net.InetAddress getInterface() {
        return this._socket.getInterface();
    }

    public long getLastThrottleIncrement() {
        return this._lastThrottleIncrement;
    }

    public javax.jmdns.impl.HostInfo getLocalHost() {
        return this._localHost;
    }

    @Override // javax.jmdns.JmDNS
    public java.lang.String getName() {
        return this._name;
    }

    public javax.jmdns.impl.DNSIncoming getPlannedAnswer() {
        return this._plannedAnswer;
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2) {
        return getServiceInfo(str, str2, false, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, long j) {
        return getServiceInfo(str, str2, false, j);
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, boolean z) {
        return getServiceInfo(str, str2, z, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo getServiceInfo(java.lang.String str, java.lang.String str2, boolean z, long j) {
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImplResolveServiceInfo = resolveServiceInfo(str, str2, "", z);
        waitForInfoData(serviceInfoImplResolveServiceInfo, j);
        if (serviceInfoImplResolveServiceInfo.hasData()) {
            return serviceInfoImplResolveServiceInfo;
        }
        return null;
    }

    public javax.jmdns.impl.ServiceInfoImpl getServiceInfoFromCache(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl;
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl2;
        java.lang.String server;
        javax.jmdns.ServiceInfo serviceInfo;
        javax.jmdns.ServiceInfo serviceInfo2;
        javax.jmdns.ServiceInfo serviceInfo3;
        javax.jmdns.ServiceInfo serviceInfo4;
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl3 = new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, 0, 0, 0, z, (byte[]) null);
        javax.jmdns.impl.DNSCache cache = getCache();
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY;
        javax.jmdns.impl.DNSEntry dNSEntry = cache.getDNSEntry(new javax.jmdns.impl.DNSRecord.Pointer(str, dNSRecordClass, false, 0, serviceInfoImpl3.getQualifiedName()));
        if (!(dNSEntry instanceof javax.jmdns.impl.DNSRecord) || (serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) ((javax.jmdns.impl.DNSRecord) dNSEntry).getServiceInfo(z)) == null) {
            return serviceInfoImpl3;
        }
        java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> qualifiedNameMap = serviceInfoImpl.getQualifiedNameMap();
        byte[] textBytes = null;
        javax.jmdns.impl.DNSEntry dNSEntry2 = getCache().getDNSEntry(serviceInfoImpl3.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV, dNSRecordClass);
        if (!(dNSEntry2 instanceof javax.jmdns.impl.DNSRecord) || (serviceInfo4 = ((javax.jmdns.impl.DNSRecord) dNSEntry2).getServiceInfo(z)) == null) {
            serviceInfoImpl2 = serviceInfoImpl;
            server = "";
        } else {
            serviceInfoImpl2 = new javax.jmdns.impl.ServiceInfoImpl(qualifiedNameMap, serviceInfo4.getPort(), serviceInfo4.getWeight(), serviceInfo4.getPriority(), z, (byte[]) null);
            textBytes = serviceInfo4.getTextBytes();
            server = serviceInfo4.getServer();
        }
        javax.jmdns.impl.DNSEntry dNSEntry3 = getCache().getDNSEntry(server, javax.jmdns.impl.constants.DNSRecordType.TYPE_A, dNSRecordClass);
        if ((dNSEntry3 instanceof javax.jmdns.impl.DNSRecord) && (serviceInfo3 = ((javax.jmdns.impl.DNSRecord) dNSEntry3).getServiceInfo(z)) != null) {
            for (java.net.Inet4Address inet4Address : serviceInfo3.getInet4Addresses()) {
                serviceInfoImpl2.addAddress(inet4Address);
            }
            serviceInfoImpl2._setText(serviceInfo3.getTextBytes());
        }
        javax.jmdns.impl.DNSEntry dNSEntry4 = getCache().getDNSEntry(server, javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY);
        if ((dNSEntry4 instanceof javax.jmdns.impl.DNSRecord) && (serviceInfo2 = ((javax.jmdns.impl.DNSRecord) dNSEntry4).getServiceInfo(z)) != null) {
            for (java.net.Inet6Address inet6Address : serviceInfo2.getInet6Addresses()) {
                serviceInfoImpl2.addAddress(inet6Address);
            }
            serviceInfoImpl2._setText(serviceInfo2.getTextBytes());
        }
        javax.jmdns.impl.DNSEntry dNSEntry5 = getCache().getDNSEntry(serviceInfoImpl2.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT, javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY);
        if ((dNSEntry5 instanceof javax.jmdns.impl.DNSRecord) && (serviceInfo = ((javax.jmdns.impl.DNSRecord) dNSEntry5).getServiceInfo(z)) != null) {
            serviceInfoImpl2._setText(serviceInfo.getTextBytes());
        }
        if (serviceInfoImpl2.getTextBytes().length == 0) {
            serviceInfoImpl2._setText(textBytes);
        }
        return serviceInfoImpl2.hasData() ? serviceInfoImpl2 : serviceInfoImpl3;
    }

    public java.util.Map<java.lang.String, javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry> getServiceTypes() {
        return this._serviceTypes;
    }

    public java.util.Map<java.lang.String, javax.jmdns.ServiceInfo> getServices() {
        return this._services;
    }

    public java.net.MulticastSocket getSocket() {
        return this._socket;
    }

    public int getThrottle() {
        return this._throttle;
    }

    public void handleQuery(javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i) {
        if (logger.isLoggable(java.util.logging.Level.INFO)) {
            logger.info(getName() + ".handle query: " + dNSIncoming);
        }
        boolean zHandleQuery = false;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis() + 120;
        java.util.Iterator<? extends javax.jmdns.impl.DNSRecord> it = dNSIncoming.getAllAnswers().iterator();
        while (it.hasNext()) {
            zHandleQuery |= it.next().handleQuery(this, jCurrentTimeMillis);
        }
        ioLock();
        try {
            javax.jmdns.impl.DNSIncoming dNSIncoming2 = this._plannedAnswer;
            if (dNSIncoming2 != null) {
                dNSIncoming2.append(dNSIncoming);
            } else {
                javax.jmdns.impl.DNSIncoming dNSIncomingM10clone = dNSIncoming.clone();
                if (dNSIncoming.isTruncated()) {
                    this._plannedAnswer = dNSIncomingM10clone;
                }
                startResponder(dNSIncomingM10clone, i);
            }
            ioUnlock();
            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
            java.util.Iterator<? extends javax.jmdns.impl.DNSRecord> it2 = dNSIncoming.getAnswers().iterator();
            while (it2.hasNext()) {
                handleRecord(it2.next(), jCurrentTimeMillis2);
            }
            if (zHandleQuery) {
                startProber();
            }
        } catch (java.lang.Throwable th) {
            ioUnlock();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleRecord(javax.jmdns.impl.DNSRecord r8, long r9) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.JmDNSImpl.handleRecord(javax.jmdns.impl.DNSRecord, long):void");
    }

    public void handleResponse(javax.jmdns.impl.DNSIncoming dNSIncoming) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        boolean zHandleResponse = false;
        boolean zHandleResponse2 = false;
        for (javax.jmdns.impl.DNSRecord dNSRecord : dNSIncoming.getAllAnswers()) {
            handleRecord(dNSRecord, jCurrentTimeMillis);
            if (javax.jmdns.impl.constants.DNSRecordType.TYPE_A.equals(dNSRecord.getRecordType()) || javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA.equals(dNSRecord.getRecordType())) {
                zHandleResponse |= dNSRecord.handleResponse(this);
            } else {
                zHandleResponse2 |= dNSRecord.handleResponse(this);
            }
        }
        if (zHandleResponse || zHandleResponse2) {
            startProber();
        }
    }

    public void handleServiceResolved(final javax.jmdns.ServiceEvent serviceEvent) {
        java.util.ArrayList arrayList;
        java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus> list = this._serviceListeners.get(serviceEvent.getType().toLowerCase());
        if (list == null || list.isEmpty() || serviceEvent.getInfo() == null || !serviceEvent.getInfo().hasData()) {
            return;
        }
        synchronized (list) {
            arrayList = new java.util.ArrayList(list);
        }
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final javax.jmdns.impl.ListenerStatus.ServiceListenerStatus serviceListenerStatus = (javax.jmdns.impl.ListenerStatus.ServiceListenerStatus) it.next();
            this._executor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmDNSImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    serviceListenerStatus.serviceResolved(serviceEvent);
                }
            });
        }
    }

    public java.lang.String incrementName(java.lang.String str) {
        java.lang.StringBuilder sb;
        try {
            int iLastIndexOf = str.lastIndexOf(40);
            int iLastIndexOf2 = str.lastIndexOf(41);
            if (iLastIndexOf < 0 || iLastIndexOf >= iLastIndexOf2) {
                sb = new java.lang.StringBuilder();
                sb.append(str);
                sb.append(" (2)");
            } else {
                sb = new java.lang.StringBuilder();
                sb.append(str.substring(0, iLastIndexOf));
                sb.append("(");
                sb.append(java.lang.Integer.parseInt(str.substring(iLastIndexOf + 1, iLastIndexOf2)) + 1);
                sb.append(")");
            }
            return sb.toString();
        } catch (java.lang.NumberFormatException unused) {
            return e.a.c.a.a.e(str, " (2)");
        }
    }

    public void ioLock() {
        this._ioLock.lock();
    }

    public void ioUnlock() {
        this._ioLock.unlock();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAnnounced() {
        return this._localHost.isAnnounced();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAnnouncing() {
        return this._localHost.isAnnouncing();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAssociatedWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState) {
        return this._localHost.isAssociatedWithTask(dNSTask, dNSState);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isCanceled() {
        return this._localHost.isCanceled();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isCanceling() {
        return this._localHost.isCanceling();
    }

    @Override // javax.jmdns.JmDNS, javax.jmdns.impl.DNSStatefulObject
    public boolean isClosed() {
        return this._localHost.isClosed();
    }

    @Override // javax.jmdns.JmDNS, javax.jmdns.impl.DNSStatefulObject
    public boolean isClosing() {
        return this._localHost.isClosing();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isProbing() {
        return this._localHost.isProbing();
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo[] list(java.lang.String str) {
        return list(str, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.ServiceInfo[] list(java.lang.String str, long j) {
        cleanCache();
        java.lang.String lowerCase = str.toLowerCase();
        if (isCanceling() || isCanceled()) {
            return new javax.jmdns.ServiceInfo[0];
        }
        javax.jmdns.impl.JmDNSImpl.ServiceCollector serviceCollector = this._serviceCollectors.get(lowerCase);
        if (serviceCollector == null) {
            boolean z = this._serviceCollectors.putIfAbsent(lowerCase, new javax.jmdns.impl.JmDNSImpl.ServiceCollector(str)) == null;
            javax.jmdns.impl.JmDNSImpl.ServiceCollector serviceCollector2 = this._serviceCollectors.get(lowerCase);
            if (z) {
                addServiceListener(str, serviceCollector2, true);
            }
            serviceCollector = serviceCollector2;
        }
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer(getName() + ".collector: " + serviceCollector);
        }
        return serviceCollector != null ? serviceCollector.list(j) : new javax.jmdns.ServiceInfo[0];
    }

    @Override // javax.jmdns.JmDNS
    public java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str) {
        return listBySubtype(str, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public java.util.Map<java.lang.String, javax.jmdns.ServiceInfo[]> listBySubtype(java.lang.String str, long j) {
        java.util.HashMap map = new java.util.HashMap(5);
        for (javax.jmdns.ServiceInfo serviceInfo : list(str, j)) {
            java.lang.String lowerCase = serviceInfo.getSubtype().toLowerCase();
            if (!map.containsKey(lowerCase)) {
                map.put(lowerCase, new java.util.ArrayList(10));
            }
            ((java.util.List) map.get(lowerCase)).add(serviceInfo);
        }
        java.util.HashMap map2 = new java.util.HashMap(map.size());
        for (java.lang.String str2 : map.keySet()) {
            java.util.List list = (java.util.List) map.get(str2);
            map2.put(str2, (javax.jmdns.ServiceInfo[]) list.toArray(new javax.jmdns.ServiceInfo[list.size()]));
        }
        return map2;
    }

    @Override // javax.jmdns.JmDNS
    @java.lang.Deprecated
    public void printServices() {
        java.lang.System.err.println(toString());
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void purgeStateTimer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).purgeStateTimer();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void purgeTimer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).purgeTimer();
    }

    public void recover() {
        logger.finer(getName() + "recover()");
        if (isClosing() || isClosed() || isCanceling() || isCanceled()) {
            return;
        }
        synchronized (this._recoverLock) {
            if (cancelState()) {
                logger.finer(getName() + "recover() thread " + java.lang.Thread.currentThread().getName());
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(getName());
                sb.append(".recover()");
                new java.lang.Thread(sb.toString()) { // from class: javax.jmdns.impl.JmDNSImpl.6
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() throws java.io.IOException {
                        javax.jmdns.impl.JmDNSImpl.this.__recover();
                    }
                }.start();
            }
        }
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean recoverState() {
        return this._localHost.recoverState();
    }

    @Override // javax.jmdns.JmDNS
    public void registerService(javax.jmdns.ServiceInfo serviceInfo) {
        if (isClosing() || isClosed()) {
            throw new java.lang.IllegalStateException("This DNS is closed.");
        }
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) serviceInfo;
        if (serviceInfoImpl.getDns() != null) {
            if (serviceInfoImpl.getDns() != this) {
                throw new java.lang.IllegalStateException("A service information can only be registered with a single instamce of JmDNS.");
            }
            if (this._services.get(serviceInfoImpl.getKey()) != null) {
                throw new java.lang.IllegalStateException("A service information can only be registered once.");
            }
        }
        serviceInfoImpl.setDns(this);
        registerServiceType(serviceInfoImpl.getTypeWithSubtype());
        serviceInfoImpl.recoverState();
        serviceInfoImpl.setServer(this._localHost.getName());
        serviceInfoImpl.addAddress(this._localHost.getInet4Address());
        serviceInfoImpl.addAddress(this._localHost.getInet6Address());
        do {
            makeServiceNameUnique(serviceInfoImpl);
        } while (this._services.putIfAbsent(serviceInfoImpl.getKey(), serviceInfoImpl) != null);
        startProber();
        if (logger.isLoggable(java.util.logging.Level.FINE)) {
            logger.fine("registerService() JmDNS registered service as " + serviceInfoImpl);
        }
    }

    @Override // javax.jmdns.JmDNS
    public boolean registerServiceType(java.lang.String str) {
        boolean z;
        javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry serviceTypeEntry;
        java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> mapDecodeQualifiedNameMapForType = javax.jmdns.impl.ServiceInfoImpl.decodeQualifiedNameMapForType(str);
        java.lang.String str2 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Domain);
        java.lang.String str3 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Protocol);
        java.lang.String str4 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Application);
        java.lang.String str5 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Subtype);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str4.length() > 0 ? e.a.c.a.a.f("_", str4, ".") : "");
        sb.append(str3.length() > 0 ? e.a.c.a.a.f("_", str3, ".") : "");
        sb.append(str2);
        sb.append(".");
        java.lang.String string = sb.toString();
        java.lang.String lowerCase = string.toLowerCase();
        if (logger.isLoggable(java.util.logging.Level.FINE)) {
            java.util.logging.Logger logger2 = logger;
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(getName());
            sb2.append(".registering service type: ");
            sb2.append(str);
            sb2.append(" as: ");
            sb2.append(string);
            sb2.append(str5.length() > 0 ? e.a.c.a.a.e(" subtype: ", str5) : "");
            logger2.fine(sb2.toString());
        }
        boolean z2 = true;
        if (this._serviceTypes.containsKey(lowerCase) || str4.toLowerCase().equals("dns-sd") || str2.toLowerCase().endsWith("in-addr.arpa") || str2.toLowerCase().endsWith("ip6.arpa")) {
            z = false;
        } else {
            z = this._serviceTypes.putIfAbsent(lowerCase, new javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry(string)) == null;
            if (z) {
                java.util.Set<javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus> set = this._typeListeners;
                javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[] serviceTypeListenerStatusArr = (javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[]) set.toArray(new javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[set.size()]);
                final javax.jmdns.impl.ServiceEventImpl serviceEventImpl = new javax.jmdns.impl.ServiceEventImpl(this, string, "", null);
                for (final javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus serviceTypeListenerStatus : serviceTypeListenerStatusArr) {
                    this._executor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmDNSImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            serviceTypeListenerStatus.serviceTypeAdded(serviceEventImpl);
                        }
                    });
                }
            }
        }
        if (str5.length() <= 0 || (serviceTypeEntry = this._serviceTypes.get(lowerCase)) == null || serviceTypeEntry.contains(str5)) {
            return z;
        }
        synchronized (serviceTypeEntry) {
            if (serviceTypeEntry.contains(str5)) {
                z2 = z;
            } else {
                serviceTypeEntry.add(str5);
                java.util.Set<javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus> set2 = this._typeListeners;
                javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[] serviceTypeListenerStatusArr2 = (javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[]) set2.toArray(new javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus[set2.size()]);
                final javax.jmdns.impl.ServiceEventImpl serviceEventImpl2 = new javax.jmdns.impl.ServiceEventImpl(this, "_" + str5 + "._sub." + string, "", null);
                for (final javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus serviceTypeListenerStatus2 : serviceTypeListenerStatusArr2) {
                    this._executor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmDNSImpl.3
                        @Override // java.lang.Runnable
                        public void run() {
                            serviceTypeListenerStatus2.subTypeForServiceTypeAdded(serviceEventImpl2);
                        }
                    });
                }
            }
        }
        return z2;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public void removeAssociationWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask) {
        this._localHost.removeAssociationWithTask(dNSTask);
    }

    public void removeListener(javax.jmdns.impl.DNSListener dNSListener) {
        this._listeners.remove(dNSListener);
    }

    @Override // javax.jmdns.JmDNS
    public void removeServiceListener(java.lang.String str, javax.jmdns.ServiceListener serviceListener) {
        java.lang.String lowerCase = str.toLowerCase();
        java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus> list = this._serviceListeners.get(lowerCase);
        if (list != null) {
            synchronized (list) {
                list.remove(new javax.jmdns.impl.ListenerStatus.ServiceListenerStatus(serviceListener, false));
                if (list.isEmpty()) {
                    this._serviceListeners.remove(lowerCase, list);
                }
            }
        }
    }

    @Override // javax.jmdns.JmDNS
    public void removeServiceTypeListener(javax.jmdns.ServiceTypeListener serviceTypeListener) {
        this._typeListeners.remove(new javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus(serviceTypeListener, false));
    }

    public void renewServiceCollector(javax.jmdns.impl.DNSRecord dNSRecord) {
        javax.jmdns.ServiceInfo serviceInfo = dNSRecord.getServiceInfo();
        if (this._serviceCollectors.containsKey(serviceInfo.getType().toLowerCase())) {
            startServiceResolver(serviceInfo.getType());
        }
    }

    @Override // javax.jmdns.JmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2) {
        requestServiceInfo(str, str2, false, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2, long j) {
        requestServiceInfo(str, str2, false, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z) {
        requestServiceInfo(str, str2, z, 600L);
    }

    @Override // javax.jmdns.JmDNS
    public void requestServiceInfo(java.lang.String str, java.lang.String str2, boolean z, long j) {
        waitForInfoData(resolveServiceInfo(str, str2, "", z), j);
    }

    public javax.jmdns.impl.ServiceInfoImpl resolveServiceInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
        cleanCache();
        java.lang.String lowerCase = str.toLowerCase();
        registerServiceType(str);
        if (this._serviceCollectors.putIfAbsent(lowerCase, new javax.jmdns.impl.JmDNSImpl.ServiceCollector(str)) == null) {
            addServiceListener(lowerCase, this._serviceCollectors.get(lowerCase), true);
        }
        javax.jmdns.impl.ServiceInfoImpl serviceInfoFromCache = getServiceInfoFromCache(str, str2, str3, z);
        startServiceInfoResolver(serviceInfoFromCache);
        return serviceInfoFromCache;
    }

    public void respondToQuery(javax.jmdns.impl.DNSIncoming dNSIncoming) {
        ioLock();
        try {
            if (this._plannedAnswer == dNSIncoming) {
                this._plannedAnswer = null;
            }
        } finally {
            ioUnlock();
        }
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean revertState() {
        return this._localHost.revertState();
    }

    public void send(javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        if (dNSOutgoing.isEmpty()) {
            return;
        }
        byte[] bArrData = dNSOutgoing.data();
        java.net.DatagramPacket datagramPacket = new java.net.DatagramPacket(bArrData, bArrData.length, this._group, javax.jmdns.impl.constants.DNSConstants.MDNS_PORT);
        java.util.logging.Logger logger2 = logger;
        java.util.logging.Level level = java.util.logging.Level.FINEST;
        if (logger2.isLoggable(level)) {
            try {
                javax.jmdns.impl.DNSIncoming dNSIncoming = new javax.jmdns.impl.DNSIncoming(datagramPacket);
                if (logger.isLoggable(level)) {
                    logger.finest("send(" + getName() + ") JmDNS out:" + dNSIncoming.print(true));
                }
            } catch (java.io.IOException e2) {
                java.util.logging.Logger logger3 = logger;
                java.lang.String string = javax.jmdns.impl.JmDNSImpl.class.toString();
                java.lang.StringBuilder sbO = e.a.c.a.a.o("send(");
                sbO.append(getName());
                sbO.append(") - JmDNS can not parse what it sends!!!");
                logger3.throwing(string, sbO.toString(), e2);
            }
        }
        java.net.MulticastSocket multicastSocket = this._socket;
        if (multicastSocket == null || multicastSocket.isClosed()) {
            return;
        }
        multicastSocket.send(datagramPacket);
    }

    @Override // javax.jmdns.JmDNS
    public javax.jmdns.JmDNS.Delegate setDelegate(javax.jmdns.JmDNS.Delegate delegate) {
        javax.jmdns.JmDNS.Delegate delegate2 = this._delegate;
        this._delegate = delegate;
        return delegate2;
    }

    public void setLastThrottleIncrement(long j) {
        this._lastThrottleIncrement = j;
    }

    public void setLocalHost(javax.jmdns.impl.HostInfo hostInfo) {
        this._localHost = hostInfo;
    }

    public void setPlannedAnswer(javax.jmdns.impl.DNSIncoming dNSIncoming) {
        this._plannedAnswer = dNSIncoming;
    }

    public void setThrottle(int i) {
        this._throttle = i;
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startAnnouncer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startAnnouncer();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startCanceler() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startCanceler();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startProber() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startProber();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startReaper() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startReaper();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startRenewer() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startRenewer();
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startResponder(javax.jmdns.impl.DNSIncoming dNSIncoming, int i) {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startResponder(dNSIncoming, i);
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startServiceInfoResolver(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startServiceInfoResolver(serviceInfoImpl);
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startServiceResolver(java.lang.String str) {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startServiceResolver(str);
    }

    @Override // javax.jmdns.impl.DNSTaskStarter
    public void startTypeResolver() {
        javax.jmdns.impl.DNSTaskStarter.Factory.getInstance().getStarter(getDns()).startTypeResolver();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.util.AbstractMap, javax.jmdns.impl.JmDNSImpl$ServiceTypeEntry] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.String] */
    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(2048);
        sb.append("\t---- Local Host -----");
        sb.append("\n\t");
        sb.append(this._localHost);
        sb.append("\n\t---- Services -----");
        for (java.lang.String str : this._services.keySet()) {
            sb.append("\n\t\tService: ");
            sb.append(str);
            sb.append(": ");
            sb.append(this._services.get(str));
        }
        sb.append("\n");
        sb.append("\t---- Types ----");
        java.util.Iterator<java.lang.String> it = this._serviceTypes.keySet().iterator();
        while (it.hasNext()) {
            javax.jmdns.impl.JmDNSImpl.ServiceTypeEntry serviceTypeEntry = this._serviceTypes.get(it.next());
            sb.append("\n\t\tType: ");
            sb.append(serviceTypeEntry.getType());
            sb.append(": ");
            if (serviceTypeEntry.isEmpty()) {
                serviceTypeEntry = "no subtypes";
            }
            sb.append(serviceTypeEntry);
        }
        sb.append("\n");
        sb.append(this._cache.toString());
        sb.append("\n");
        sb.append("\t---- Service Collectors ----");
        for (java.lang.String str2 : this._serviceCollectors.keySet()) {
            sb.append("\n\t\tService Collector: ");
            sb.append(str2);
            sb.append(": ");
            sb.append(this._serviceCollectors.get(str2));
        }
        sb.append("\n");
        sb.append("\t---- Service Listeners ----");
        for (java.lang.String str3 : this._serviceListeners.keySet()) {
            sb.append("\n\t\tService Listener: ");
            sb.append(str3);
            sb.append(": ");
            sb.append(this._serviceListeners.get(str3));
        }
        return sb.toString();
    }

    @Override // javax.jmdns.JmDNS
    public void unregisterAllServices() {
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer("unregisterAllServices()");
        }
        java.util.Iterator<java.lang.String> it = this._services.keySet().iterator();
        while (it.hasNext()) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) this._services.get(it.next());
            if (serviceInfoImpl != null) {
                if (logger.isLoggable(java.util.logging.Level.FINER)) {
                    logger.finer("Cancelling service info: " + serviceInfoImpl);
                }
                serviceInfoImpl.cancelState();
            }
        }
        startCanceler();
        for (java.lang.String str : this._services.keySet()) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl2 = (javax.jmdns.impl.ServiceInfoImpl) this._services.get(str);
            if (serviceInfoImpl2 != null) {
                if (logger.isLoggable(java.util.logging.Level.FINER)) {
                    logger.finer("Wait for service info cancel: " + serviceInfoImpl2);
                }
                serviceInfoImpl2.waitForCanceled(500L);
                this._services.remove(str, serviceInfoImpl2);
            }
        }
    }

    @Override // javax.jmdns.JmDNS
    public void unregisterService(javax.jmdns.ServiceInfo serviceInfo) {
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) this._services.get(serviceInfo.getKey());
        if (serviceInfoImpl == null) {
            java.util.logging.Logger logger2 = logger;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Removing unregistered service info: ");
            sbO.append(serviceInfo.getKey());
            logger2.warning(sbO.toString());
            return;
        }
        serviceInfoImpl.cancelState();
        startCanceler();
        serviceInfoImpl.waitForCanceled(500L);
        this._services.remove(serviceInfoImpl.getKey(), serviceInfoImpl);
        if (logger.isLoggable(java.util.logging.Level.FINE)) {
            logger.fine("unregisterService() JmDNS unregistered service as " + serviceInfoImpl);
        }
    }

    public void updateRecord(long j, javax.jmdns.impl.DNSRecord dNSRecord, javax.jmdns.impl.JmDNSImpl.Operation operation) {
        java.util.ArrayList arrayList;
        java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus> listEmptyList;
        synchronized (this._listeners) {
            arrayList = new java.util.ArrayList(this._listeners);
        }
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((javax.jmdns.impl.DNSListener) it.next()).updateRecord(getCache(), j, dNSRecord);
        }
        if (javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR.equals(dNSRecord.getRecordType())) {
            final javax.jmdns.ServiceEvent serviceEvent = dNSRecord.getServiceEvent(this);
            if (serviceEvent.getInfo() == null || !serviceEvent.getInfo().hasData()) {
                javax.jmdns.impl.ServiceInfoImpl serviceInfoFromCache = getServiceInfoFromCache(serviceEvent.getType(), serviceEvent.getName(), "", false);
                if (serviceInfoFromCache.hasData()) {
                    serviceEvent = new javax.jmdns.impl.ServiceEventImpl(this, serviceEvent.getType(), serviceEvent.getName(), serviceInfoFromCache);
                }
            }
            java.util.List<javax.jmdns.impl.ListenerStatus.ServiceListenerStatus> list = this._serviceListeners.get(serviceEvent.getType().toLowerCase());
            if (list != null) {
                synchronized (list) {
                    listEmptyList = new java.util.ArrayList(list);
                }
            } else {
                listEmptyList = java.util.Collections.emptyList();
            }
            if (logger.isLoggable(java.util.logging.Level.FINEST)) {
                logger.finest(getName() + ".updating record for event: " + serviceEvent + " list " + listEmptyList + " operation: " + operation);
            }
            if (listEmptyList.isEmpty()) {
                return;
            }
            int i = javax.jmdns.impl.JmDNSImpl.AnonymousClass7.$SwitchMap$javax$jmdns$impl$JmDNSImpl$Operation[operation.ordinal()];
            if (i == 1) {
                for (final javax.jmdns.impl.ListenerStatus.ServiceListenerStatus serviceListenerStatus : listEmptyList) {
                    if (serviceListenerStatus.isSynchronous()) {
                        serviceListenerStatus.serviceAdded(serviceEvent);
                    } else {
                        this._executor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmDNSImpl.4
                            @Override // java.lang.Runnable
                            public void run() {
                                serviceListenerStatus.serviceAdded(serviceEvent);
                            }
                        });
                    }
                }
                return;
            }
            if (i != 2) {
                return;
            }
            for (final javax.jmdns.impl.ListenerStatus.ServiceListenerStatus serviceListenerStatus2 : listEmptyList) {
                if (serviceListenerStatus2.isSynchronous()) {
                    serviceListenerStatus2.serviceRemoved(serviceEvent);
                } else {
                    this._executor.submit(new java.lang.Runnable() { // from class: javax.jmdns.impl.JmDNSImpl.5
                        @Override // java.lang.Runnable
                        public void run() {
                            serviceListenerStatus2.serviceRemoved(serviceEvent);
                        }
                    });
                }
            }
        }
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForAnnounced(long j) {
        return this._localHost.waitForAnnounced(j);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForCanceled(long j) {
        return this._localHost.waitForCanceled(j);
    }
}
