package javax.jmdns.impl.tasks;

/* loaded from: classes.dex */
public class RecordReaper extends javax.jmdns.impl.tasks.DNSTask {
    public static java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.RecordReaper.class.getName());

    public RecordReaper(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("RecordReaper("), getDns() != null ? getDns().getName() : "", ")");
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (getDns().isCanceling() || getDns().isCanceled()) {
            return;
        }
        if (logger.isLoggable(java.util.logging.Level.FINEST)) {
            logger.finest(getName() + ".run() JmDNS reaping cache");
        }
        getDns().cleanCache();
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public void start(java.util.Timer timer) {
        if (getDns().isCanceling() || getDns().isCanceled()) {
            return;
        }
        timer.schedule(this, 10000L, 10000L);
    }
}
