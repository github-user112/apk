package javax.jmdns.impl.tasks.state;

/* loaded from: classes.dex */
public class Renewer extends javax.jmdns.impl.tasks.state.DNSStateTask {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.state.Renewer.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public Renewer(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl, javax.jmdns.impl.tasks.state.DNSStateTask.defaultTTL());
        javax.jmdns.impl.constants.DNSState dNSState = javax.jmdns.impl.constants.DNSState.ANNOUNCED;
        setTaskState(dNSState);
        associate(dNSState);
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public void advanceTask() {
        setTaskState(getTaskState().advance());
        if (getTaskState().isAnnounced()) {
            return;
        }
        cancel();
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public javax.jmdns.impl.DNSOutgoing buildOutgoingForDNS(javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        java.util.Iterator<javax.jmdns.impl.DNSRecord> it = getDns().getLocalHost().answers(true, getTTL()).iterator();
        while (it.hasNext()) {
            dNSOutgoing = addAnswer(dNSOutgoing, (javax.jmdns.impl.DNSIncoming) null, it.next());
        }
        return dNSOutgoing;
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public javax.jmdns.impl.DNSOutgoing buildOutgoingForInfo(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        java.util.Iterator<javax.jmdns.impl.DNSRecord> it = serviceInfoImpl.answers(true, getTTL(), getDns().getLocalHost()).iterator();
        while (it.hasNext()) {
            dNSOutgoing = addAnswer(dNSOutgoing, (javax.jmdns.impl.DNSIncoming) null, it.next());
        }
        return dNSOutgoing;
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
        return new javax.jmdns.impl.DNSOutgoing(33792);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("Renewer("), getDns() != null ? getDns().getName() : "", ")");
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public java.lang.String getTaskDescription() {
        return "renewing";
    }

    @Override // javax.jmdns.impl.tasks.state.DNSStateTask
    public void recoverTask(java.lang.Throwable th) {
        getDns().recover();
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public void start(java.util.Timer timer) {
        if (getDns().isCanceling() || getDns().isCanceled()) {
            return;
        }
        timer.schedule(this, 1800000L, 1800000L);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String toString() {
        return super.toString() + " state: " + getTaskState();
    }
}
