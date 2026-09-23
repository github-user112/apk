package javax.jmdns.impl.tasks.resolver;

/* loaded from: classes.dex */
public abstract class DNSResolverTask extends javax.jmdns.impl.tasks.DNSTask {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public int _count;

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.resolver.DNSResolverTask.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public DNSResolverTask(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl);
        this._count = 0;
    }

    public abstract javax.jmdns.impl.DNSOutgoing addAnswers(javax.jmdns.impl.DNSOutgoing dNSOutgoing);

    public abstract javax.jmdns.impl.DNSOutgoing addQuestions(javax.jmdns.impl.DNSOutgoing dNSOutgoing);

    public abstract java.lang.String description();

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            if (!getDns().isCanceling() && !getDns().isCanceled()) {
                int i = this._count;
                this._count = i + 1;
                if (i < 3) {
                    if (logger.isLoggable(java.util.logging.Level.FINER)) {
                        logger.finer(getName() + ".run() JmDNS " + description());
                    }
                    javax.jmdns.impl.DNSOutgoing dNSOutgoingAddQuestions = addQuestions(new javax.jmdns.impl.DNSOutgoing(0));
                    if (getDns().isAnnounced()) {
                        dNSOutgoingAddQuestions = addAnswers(dNSOutgoingAddQuestions);
                    }
                    if (dNSOutgoingAddQuestions.isEmpty()) {
                        return;
                    }
                    getDns().send(dNSOutgoingAddQuestions);
                    return;
                }
            }
            cancel();
        } catch (java.lang.Throwable th) {
            logger.log(java.util.logging.Level.WARNING, getName() + ".run() exception ", th);
            getDns().recover();
        }
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public void start(java.util.Timer timer) {
        if (getDns().isCanceling() || getDns().isCanceled()) {
            return;
        }
        timer.schedule(this, 225L, 225L);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String toString() {
        return super.toString() + " count: " + this._count;
    }
}
