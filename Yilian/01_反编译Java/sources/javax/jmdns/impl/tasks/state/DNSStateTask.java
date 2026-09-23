package javax.jmdns.impl.tasks.state;

/* loaded from: classes.dex */
public abstract class DNSStateTask extends javax.jmdns.impl.tasks.DNSTask {
    public static int _defaultTTL;
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger1;
    public javax.jmdns.impl.constants.DNSState _taskState;
    public final int _ttl;

    static {
        java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.state.DNSStateTask.class.getName());
        logger1 = logger;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger);
        _defaultTTL = javax.jmdns.impl.constants.DNSConstants.DNS_TTL;
    }

    public DNSStateTask(javax.jmdns.impl.JmDNSImpl jmDNSImpl, int i) {
        super(jmDNSImpl);
        this._taskState = null;
        this._ttl = i;
    }

    public static int defaultTTL() {
        return _defaultTTL;
    }

    public static void setDefaultTTL(int i) {
        _defaultTTL = i;
    }

    public void advanceObjectsState(java.util.List<javax.jmdns.impl.DNSStatefulObject> list) {
        if (list != null) {
            for (javax.jmdns.impl.DNSStatefulObject dNSStatefulObject : list) {
                synchronized (dNSStatefulObject) {
                    dNSStatefulObject.advanceState(this);
                }
            }
        }
    }

    public abstract void advanceTask();

    public void associate(javax.jmdns.impl.constants.DNSState dNSState) {
        synchronized (getDns()) {
            getDns().associateWithTask(this, dNSState);
        }
        java.util.Iterator<javax.jmdns.ServiceInfo> it = getDns().getServices().values().iterator();
        while (it.hasNext()) {
            ((javax.jmdns.impl.ServiceInfoImpl) it.next()).associateWithTask(this, dNSState);
        }
    }

    public abstract javax.jmdns.impl.DNSOutgoing buildOutgoingForDNS(javax.jmdns.impl.DNSOutgoing dNSOutgoing);

    public abstract javax.jmdns.impl.DNSOutgoing buildOutgoingForInfo(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl, javax.jmdns.impl.DNSOutgoing dNSOutgoing);

    public abstract boolean checkRunCondition();

    public abstract javax.jmdns.impl.DNSOutgoing createOugoing();

    public int getTTL() {
        return this._ttl;
    }

    public abstract java.lang.String getTaskDescription();

    public javax.jmdns.impl.constants.DNSState getTaskState() {
        return this._taskState;
    }

    public abstract void recoverTask(java.lang.Throwable th);

    public void removeAssociation() {
        synchronized (getDns()) {
            getDns().removeAssociationWithTask(this);
        }
        java.util.Iterator<javax.jmdns.ServiceInfo> it = getDns().getServices().values().iterator();
        while (it.hasNext()) {
            ((javax.jmdns.impl.ServiceInfoImpl) it.next()).removeAssociationWithTask(this);
        }
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        javax.jmdns.impl.DNSOutgoing dNSOutgoingCreateOugoing = createOugoing();
        try {
        } catch (java.lang.Throwable th) {
            logger1.log(java.util.logging.Level.WARNING, getName() + ".run() exception ", th);
            recoverTask(th);
        }
        if (!checkRunCondition()) {
            cancel();
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        synchronized (getDns()) {
            if (getDns().isAssociatedWithTask(this, getTaskState())) {
                logger1.finer(getName() + ".run() JmDNS " + getTaskDescription() + " " + getDns().getName());
                arrayList.add(getDns());
                dNSOutgoingCreateOugoing = buildOutgoingForDNS(dNSOutgoingCreateOugoing);
            }
        }
        java.util.Iterator<javax.jmdns.ServiceInfo> it = getDns().getServices().values().iterator();
        while (it.hasNext()) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) it.next();
            synchronized (serviceInfoImpl) {
                if (serviceInfoImpl.isAssociatedWithTask(this, getTaskState())) {
                    logger1.fine(getName() + ".run() JmDNS " + getTaskDescription() + " " + serviceInfoImpl.getQualifiedName());
                    arrayList.add(serviceInfoImpl);
                    dNSOutgoingCreateOugoing = buildOutgoingForInfo(serviceInfoImpl, dNSOutgoingCreateOugoing);
                }
            }
        }
        if (dNSOutgoingCreateOugoing.isEmpty()) {
            advanceObjectsState(arrayList);
            cancel();
            return;
        }
        logger1.finer(getName() + ".run() JmDNS " + getTaskDescription() + " #" + getTaskState());
        getDns().send(dNSOutgoingCreateOugoing);
        advanceObjectsState(arrayList);
        advanceTask();
    }

    public void setTaskState(javax.jmdns.impl.constants.DNSState dNSState) {
        this._taskState = dNSState;
    }
}
