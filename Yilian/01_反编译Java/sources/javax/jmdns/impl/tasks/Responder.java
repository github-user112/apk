package javax.jmdns.impl.tasks;

/* loaded from: classes.dex */
public class Responder extends javax.jmdns.impl.tasks.DNSTask {
    public static java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.tasks.Responder.class.getName());
    public final javax.jmdns.impl.DNSIncoming _in;
    public final boolean _unicast;

    public Responder(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, int i) {
        super(jmDNSImpl);
        this._in = dNSIncoming;
        this._unicast = i != javax.jmdns.impl.constants.DNSConstants.MDNS_PORT;
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("Responder("), getDns() != null ? getDns().getName() : "", ")");
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() throws java.io.IOException {
        getDns().respondToQuery(this._in);
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.HashSet hashSet2 = new java.util.HashSet();
        if (getDns().isAnnounced()) {
            try {
                for (javax.jmdns.impl.DNSQuestion dNSQuestion : this._in.getQuestions()) {
                    if (logger.isLoggable(java.util.logging.Level.FINER)) {
                        logger.finer(getName() + "run() JmDNS responding to: " + dNSQuestion);
                    }
                    if (this._unicast) {
                        hashSet.add(dNSQuestion);
                    }
                    dNSQuestion.addAnswers(getDns(), hashSet2);
                }
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                for (javax.jmdns.impl.DNSRecord dNSRecord : this._in.getAnswers()) {
                    if (dNSRecord.isStale(jCurrentTimeMillis)) {
                        hashSet2.remove(dNSRecord);
                        if (logger.isLoggable(java.util.logging.Level.FINER)) {
                            logger.finer(getName() + "JmDNS Responder Known Answer Removed");
                        }
                    }
                }
                if (hashSet2.isEmpty()) {
                    return;
                }
                if (logger.isLoggable(java.util.logging.Level.FINER)) {
                    logger.finer(getName() + "run() JmDNS responding");
                }
                javax.jmdns.impl.DNSOutgoing dNSOutgoing = new javax.jmdns.impl.DNSOutgoing(33792, !this._unicast, this._in.getSenderUDPPayload());
                dNSOutgoing.setId(this._in.getId());
                java.util.Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    javax.jmdns.impl.DNSQuestion dNSQuestion2 = (javax.jmdns.impl.DNSQuestion) it.next();
                    if (dNSQuestion2 != null) {
                        dNSOutgoing = addQuestion(dNSOutgoing, dNSQuestion2);
                    }
                }
                java.util.Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    javax.jmdns.impl.DNSRecord dNSRecord2 = (javax.jmdns.impl.DNSRecord) it2.next();
                    if (dNSRecord2 != null) {
                        dNSOutgoing = addAnswer(dNSOutgoing, this._in, dNSRecord2);
                    }
                }
                if (dNSOutgoing.isEmpty()) {
                    return;
                }
                getDns().send(dNSOutgoing);
            } catch (java.lang.Throwable th) {
                logger.log(java.util.logging.Level.WARNING, getName() + "run() exception ", th);
                getDns().close();
            }
        }
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public void start(java.util.Timer timer) {
        boolean zIAmTheOnlyOne = true;
        for (javax.jmdns.impl.DNSQuestion dNSQuestion : this._in.getQuestions()) {
            if (logger.isLoggable(java.util.logging.Level.FINEST)) {
                logger.finest(getName() + "start() question=" + dNSQuestion);
            }
            zIAmTheOnlyOne = dNSQuestion.iAmTheOnlyOne(getDns());
            if (!zIAmTheOnlyOne) {
                break;
            }
        }
        int iNextInt = (!zIAmTheOnlyOne || this._in.isTruncated()) ? (javax.jmdns.impl.JmDNSImpl.getRandom().nextInt(96) + 20) - this._in.elapseSinceArrival() : 0;
        int i = iNextInt >= 0 ? iNextInt : 0;
        if (logger.isLoggable(java.util.logging.Level.FINEST)) {
            logger.finest(getName() + "start() Responder chosen delay=" + i);
        }
        if (getDns().isCanceling() || getDns().isCanceled()) {
            return;
        }
        timer.schedule(this, i);
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String toString() {
        return super.toString() + " incomming: " + this._in;
    }
}
