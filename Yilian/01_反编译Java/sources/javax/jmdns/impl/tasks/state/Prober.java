package javax.jmdns.impl.tasks.state;

/* loaded from: classes.dex */
public class Prober extends javax.jmdns.impl.tasks.state.DNSStateTask {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.state.Prober.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public Prober(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl, javax.jmdns.impl.tasks.state.DNSStateTask.defaultTTL());
        javax.jmdns.impl.constants.DNSState dNSState = javax.jmdns.impl.constants.DNSState.PROBING_1;
        setTaskState(dNSState);
        associate(dNSState);
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public void advanceTask() {
        setTaskState(getTaskState().advance());
        if (getTaskState().isProbing()) {
            return;
        }
        cancel();
        getDns().startAnnouncer();
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public javax.jmdns.impl.DNSOutgoing buildOutgoingForDNS(javax.jmdns.impl.DNSOutgoing dNSOutgoing) throws java.io.IOException {
        dNSOutgoing.addQuestion(javax.jmdns.impl.DNSQuestion.newQuestion(getDns().getLocalHost().getName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_ANY, javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false));
        java.util.Iterator<javax.jmdns.impl.DNSRecord> it = getDns().getLocalHost().answers(false, getTTL()).iterator();
        while (it.hasNext()) {
            dNSOutgoing = addAuthoritativeAnswer(dNSOutgoing, it.next());
        }
        return dNSOutgoing;
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public javax.jmdns.impl.DNSOutgoing buildOutgoingForInfo(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        java.lang.String qualifiedName = serviceInfoImpl.getQualifiedName();
        javax.jmdns.impl.constants.DNSRecordType dNSRecordType = javax.jmdns.impl.constants.DNSRecordType.TYPE_ANY;
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN;
        return addAuthoritativeAnswer(addQuestion(dNSOutgoing, javax.jmdns.impl.DNSQuestion.newQuestion(qualifiedName, dNSRecordType, dNSRecordClass, false)), new javax.jmdns.impl.DNSRecord.Service(serviceInfoImpl.getQualifiedName(), dNSRecordClass, false, getTTL(), serviceInfoImpl.getPriority(), serviceInfoImpl.getWeight(), serviceInfoImpl.getPort(), getDns().getLocalHost().getName()));
    }

    @Override // java.util.TimerTask
    public boolean cancel() {
        removeAssociation();
        return super.cancel();
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public boolean checkRunCondition() {
        return (getDns().isCanceling() || getDns().isCanceled()) ? false : true;
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public javax.jmdns.impl.DNSOutgoing createOugoing() {
        return new javax.jmdns.impl.DNSOutgoing(0);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("Prober("), getDns() != null ? getDns().getName() : "", ")");
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public java.lang.String getTaskDescription() {
        return "probing";
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public void recoverTask(java.lang.Throwable th) {
        getDns().recover();
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public void start(java.util.Timer timer) {
        long jNextInt;
        long j;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        long lastThrottleIncrement = jCurrentTimeMillis - getDns().getLastThrottleIncrement();
        javax.jmdns.impl.JmDNSImpl dns = getDns();
        if (lastThrottleIncrement < 5000) {
            dns.setThrottle(getDns().getThrottle() + 1);
        } else {
            dns.setThrottle(1);
        }
        getDns().setLastThrottleIncrement(jCurrentTimeMillis);
        if (getDns().isAnnounced() && getDns().getThrottle() < 10) {
            jNextInt = javax.jmdns.impl.JmDNSImpl.getRandom().nextInt(251);
            j = 250;
        } else {
            if (getDns().isCanceling() || getDns().isCanceled()) {
                return;
            }
            jNextInt = 100;
            j = 100;
        }
        timer.schedule(this, jNextInt, j);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String toString() {
        return super.toString() + " state: " + getTaskState();
    }
}
