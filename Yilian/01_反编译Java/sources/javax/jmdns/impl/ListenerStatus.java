package javax.jmdns.impl;

/* loaded from: classes.dex */
public class ListenerStatus<T extends java.util.EventListener> {
    public static final boolean ASYNCHONEOUS = false;
    public static final boolean SYNCHONEOUS = true;
    public final T _listener;
    public final boolean _synch;

    public static class ServiceListenerStatus extends javax.jmdns.impl.ListenerStatus<javax.jmdns.ServiceListener> {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger;
        public final java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> _addedServices;

        static {
            java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.ListenerStatus.ServiceListenerStatus.class.getName());
            logger = logger2;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        }

        public ServiceListenerStatus(javax.jmdns.ServiceListener serviceListener, boolean z) {
            super(serviceListener, z);
            this._addedServices = new java.util.concurrent.ConcurrentHashMap(32);
        }

        public static final boolean _sameInfo(javax.jmdns.ServiceInfo serviceInfo, javax.jmdns.ServiceInfo serviceInfo2) {
            if (serviceInfo == null || serviceInfo2 == null || !serviceInfo.equals(serviceInfo2)) {
                return false;
            }
            byte[] textBytes = serviceInfo.getTextBytes();
            byte[] textBytes2 = serviceInfo2.getTextBytes();
            if (textBytes.length != textBytes2.length) {
                return false;
            }
            for (int i = 0; i < textBytes.length; i++) {
                if (textBytes[i] != textBytes2[i]) {
                    return false;
                }
            }
            return true;
        }

        public void serviceAdded(javax.jmdns.ServiceEvent serviceEvent) {
            if (this._addedServices.putIfAbsent(serviceEvent.getName() + "." + serviceEvent.getType(), serviceEvent.getInfo().clone()) != null) {
                logger.finer("Service Added called for a service already added: " + serviceEvent);
                return;
            }
            getListener().serviceAdded(serviceEvent);
            javax.jmdns.ServiceInfo info = serviceEvent.getInfo();
            if (info == null || !info.hasData()) {
                return;
            }
            getListener().serviceResolved(serviceEvent);
        }

        public void serviceRemoved(javax.jmdns.ServiceEvent serviceEvent) {
            java.lang.String str = serviceEvent.getName() + "." + serviceEvent.getType();
            java.util.concurrent.ConcurrentMap<java.lang.String, javax.jmdns.ServiceInfo> concurrentMap = this._addedServices;
            if (concurrentMap.remove(str, concurrentMap.get(str))) {
                getListener().serviceRemoved(serviceEvent);
                return;
            }
            logger.finer("Service Removed called for a service already removed: " + serviceEvent);
        }

        public synchronized void serviceResolved(javax.jmdns.ServiceEvent serviceEvent) {
            javax.jmdns.ServiceInfo info = serviceEvent.getInfo();
            if (info == null || !info.hasData()) {
                logger.warning("Service Resolved called for an unresolved event: " + serviceEvent);
            } else {
                java.lang.String str = serviceEvent.getName() + "." + serviceEvent.getType();
                javax.jmdns.ServiceInfo serviceInfo = this._addedServices.get(str);
                if (_sameInfo(info, serviceInfo)) {
                    logger.finer("Service Resolved called for a service already resolved: " + serviceEvent);
                } else if (serviceInfo == null) {
                    if (this._addedServices.putIfAbsent(str, info.clone()) == null) {
                        getListener().serviceResolved(serviceEvent);
                    }
                } else if (this._addedServices.replace(str, serviceInfo, info.clone())) {
                    getListener().serviceResolved(serviceEvent);
                }
            }
        }

        @Override // javax.jmdns.impl.ListenerStatus
        public java.lang.String toString() {
            java.lang.String str;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(2048);
            sb.append("[Status for ");
            sb.append(getListener().toString());
            if (this._addedServices.isEmpty()) {
                str = " no type event ";
            } else {
                sb.append(" (");
                java.util.Iterator<java.lang.String> it = this._addedServices.keySet().iterator();
                while (it.hasNext()) {
                    sb.append(it.next() + ", ");
                }
                str = ") ";
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    public static class ServiceTypeListenerStatus extends javax.jmdns.impl.ListenerStatus<javax.jmdns.ServiceTypeListener> {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger;
        public final java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.String> _addedTypes;

        static {
            java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.ListenerStatus.ServiceTypeListenerStatus.class.getName());
            logger = logger2;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        }

        public ServiceTypeListenerStatus(javax.jmdns.ServiceTypeListener serviceTypeListener, boolean z) {
            super(serviceTypeListener, z);
            this._addedTypes = new java.util.concurrent.ConcurrentHashMap(32);
        }

        public void serviceTypeAdded(javax.jmdns.ServiceEvent serviceEvent) {
            if (this._addedTypes.putIfAbsent(serviceEvent.getType(), serviceEvent.getType()) == null) {
                getListener().serviceTypeAdded(serviceEvent);
                return;
            }
            logger.finest("Service Type Added called for a service type already added: " + serviceEvent);
        }

        public void subTypeForServiceTypeAdded(javax.jmdns.ServiceEvent serviceEvent) {
            if (this._addedTypes.putIfAbsent(serviceEvent.getType(), serviceEvent.getType()) == null) {
                getListener().subTypeForServiceTypeAdded(serviceEvent);
                return;
            }
            logger.finest("Service Sub Type Added called for a service sub type already added: " + serviceEvent);
        }

        @Override // javax.jmdns.impl.ListenerStatus
        public java.lang.String toString() {
            java.lang.String str;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(2048);
            sb.append("[Status for ");
            sb.append(getListener().toString());
            if (this._addedTypes.isEmpty()) {
                str = " no type event ";
            } else {
                sb.append(" (");
                java.util.Iterator<java.lang.String> it = this._addedTypes.keySet().iterator();
                while (it.hasNext()) {
                    sb.append(it.next() + ", ");
                }
                str = ") ";
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    public ListenerStatus(T t, boolean z) {
        this._listener = t;
        this._synch = z;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof javax.jmdns.impl.ListenerStatus) && getListener().equals(((javax.jmdns.impl.ListenerStatus) obj).getListener());
    }

    public T getListener() {
        return this._listener;
    }

    public int hashCode() {
        return getListener().hashCode();
    }

    public boolean isSynchronous() {
        return this._synch;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[Status for ");
        sbO.append(getListener().toString());
        sbO.append("]");
        return sbO.toString();
    }
}
