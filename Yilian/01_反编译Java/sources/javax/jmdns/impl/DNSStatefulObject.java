package javax.jmdns.impl;

/* loaded from: classes.dex */
public interface DNSStatefulObject {

    public static final class DNSStatefulObjectSemaphore {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger;
        public final java.lang.String _name;
        public final java.util.concurrent.ConcurrentMap<java.lang.Thread, java.util.concurrent.Semaphore> _semaphores = new java.util.concurrent.ConcurrentHashMap(50);

        static {
            java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSStatefulObject.DNSStatefulObjectSemaphore.class.getName());
            logger = logger2;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        }

        public DNSStatefulObjectSemaphore(java.lang.String str) {
            this._name = str;
        }

        public void signalEvent() {
            java.util.Collection<java.util.concurrent.Semaphore> collectionValues = this._semaphores.values();
            for (java.util.concurrent.Semaphore semaphore : collectionValues) {
                semaphore.release();
                collectionValues.remove(semaphore);
            }
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(1000);
            sb.append("Semaphore: ");
            sb.append(this._name);
            if (this._semaphores.size() == 0) {
                sb.append(" no semaphores.");
            } else {
                sb.append(" semaphores:\n");
                for (java.lang.Thread thread : this._semaphores.keySet()) {
                    sb.append("\tThread: ");
                    sb.append(thread.getName());
                    sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                    sb.append(this._semaphores.get(thread));
                    sb.append('\n');
                }
            }
            return sb.toString();
        }

        public void waitForEvent(long j) throws java.lang.InterruptedException {
            java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
            if (this._semaphores.get(threadCurrentThread) == null) {
                java.util.concurrent.Semaphore semaphore = new java.util.concurrent.Semaphore(1, true);
                semaphore.drainPermits();
                this._semaphores.putIfAbsent(threadCurrentThread, semaphore);
            }
            java.util.concurrent.Semaphore semaphore2 = this._semaphores.get(threadCurrentThread);
            if (semaphore2 != null) {
                try {
                    semaphore2.tryAcquire(j, java.util.concurrent.TimeUnit.MILLISECONDS);
                } catch (java.lang.InterruptedException e2) {
                    logger.log(java.util.logging.Level.FINER, "Exception ", (java.lang.Throwable) e2);
                }
            }
        }
    }

    public static class DefaultImplementation extends java.util.concurrent.locks.ReentrantLock implements javax.jmdns.impl.DNSStatefulObject {
        public static javax.jmdns.JmDNSLogger jmDNSLogger = null;
        public static java.util.logging.Logger logger = null;
        public static final long serialVersionUID = -3264781576883412227L;
        public volatile javax.jmdns.impl.JmDNSImpl _dns = null;
        public volatile javax.jmdns.impl.tasks.DNSTask _task = null;
        public volatile javax.jmdns.impl.constants.DNSState _state = javax.jmdns.impl.constants.DNSState.PROBING_1;
        public final javax.jmdns.impl.DNSStatefulObject.DNSStatefulObjectSemaphore _announcing = new javax.jmdns.impl.DNSStatefulObject.DNSStatefulObjectSemaphore("Announce");
        public final javax.jmdns.impl.DNSStatefulObject.DNSStatefulObjectSemaphore _canceling = new javax.jmdns.impl.DNSStatefulObject.DNSStatefulObjectSemaphore("Cancel");

        static {
            java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSStatefulObject.DefaultImplementation.class.getName());
            logger = logger2;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        }

        private boolean willCancel() {
            return this._state.isCanceled() || this._state.isCanceling();
        }

        private boolean willClose() {
            return this._state.isClosed() || this._state.isClosing();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean advanceState(javax.jmdns.impl.tasks.DNSTask dNSTask) {
            if (this._task != dNSTask) {
                return true;
            }
            lock();
            try {
                if (this._task == dNSTask) {
                    setState(this._state.advance());
                } else {
                    logger.warning("Trying to advance state whhen not the owner. owner: " + this._task + " perpetrator: " + dNSTask);
                }
                return true;
            } finally {
                unlock();
            }
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public void associateWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState) {
            if (this._task == null && this._state == dNSState) {
                lock();
                try {
                    if (this._task == null && this._state == dNSState) {
                        setTask(dNSTask);
                    }
                } finally {
                    unlock();
                }
            }
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean cancelState() {
            boolean z = false;
            if (!willCancel()) {
                lock();
                try {
                    if (!willCancel()) {
                        setState(javax.jmdns.impl.constants.DNSState.CANCELING_1);
                        setTask(null);
                        z = true;
                    }
                } finally {
                    unlock();
                }
            }
            return z;
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean closeState() {
            boolean z = false;
            if (!willClose()) {
                lock();
                try {
                    if (!willClose()) {
                        setState(javax.jmdns.impl.constants.DNSState.CLOSING);
                        setTask(null);
                        z = true;
                    }
                } finally {
                    unlock();
                }
            }
            return z;
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public javax.jmdns.impl.JmDNSImpl getDns() {
            return this._dns;
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isAnnounced() {
            return this._state.isAnnounced();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isAnnouncing() {
            return this._state.isAnnouncing();
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
        @Override // javax.jmdns.impl.DNSStatefulObject
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean isAssociatedWithTask(javax.jmdns.impl.tasks.DNSTask r2, javax.jmdns.impl.constants.DNSState r3) {
            /*
                r1 = this;
                r1.lock()
                javax.jmdns.impl.tasks.DNSTask r0 = r1._task     // Catch: java.lang.Throwable -> L12
                if (r0 != r2) goto Ld
                javax.jmdns.impl.constants.DNSState r2 = r1._state     // Catch: java.lang.Throwable -> L12
                if (r2 != r3) goto Ld
                r2 = 1
                goto Le
            Ld:
                r2 = 0
            Le:
                r1.unlock()
                return r2
            L12:
                r2 = move-exception
                r1.unlock()
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.DNSStatefulObject.DefaultImplementation.isAssociatedWithTask(javax.jmdns.impl.tasks.DNSTask, javax.jmdns.impl.constants.DNSState):boolean");
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isCanceled() {
            return this._state.isCanceled();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isCanceling() {
            return this._state.isCanceling();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isClosed() {
            return this._state.isClosed();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isClosing() {
            return this._state.isClosing();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean isProbing() {
            return this._state.isProbing();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean recoverState() {
            lock();
            try {
                setState(javax.jmdns.impl.constants.DNSState.PROBING_1);
                setTask(null);
                unlock();
                return false;
            } catch (java.lang.Throwable th) {
                unlock();
                throw th;
            }
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public void removeAssociationWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask) {
            if (this._task == dNSTask) {
                lock();
                try {
                    if (this._task == dNSTask) {
                        setTask(null);
                    }
                } finally {
                    unlock();
                }
            }
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean revertState() {
            if (willCancel()) {
                return true;
            }
            lock();
            try {
                if (!willCancel()) {
                    setState(this._state.revert());
                    setTask(null);
                }
                return true;
            } finally {
                unlock();
            }
        }

        public void setDns(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            this._dns = jmDNSImpl;
        }

        public void setState(javax.jmdns.impl.constants.DNSState dNSState) {
            lock();
            try {
                this._state = dNSState;
                if (isAnnounced()) {
                    this._announcing.signalEvent();
                }
                if (isCanceled()) {
                    this._canceling.signalEvent();
                    this._announcing.signalEvent();
                }
            } finally {
                unlock();
            }
        }

        public void setTask(javax.jmdns.impl.tasks.DNSTask dNSTask) {
            this._task = dNSTask;
        }

        @Override // java.util.concurrent.locks.ReentrantLock
        public java.lang.String toString() {
            java.lang.String string;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            if (this._dns != null) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("DNS: ");
                sbO.append(this._dns.getName());
                string = sbO.toString();
            } else {
                string = "NO DNS";
            }
            sb.append(string);
            sb.append(" state: ");
            sb.append(this._state);
            sb.append(" task: ");
            sb.append(this._task);
            return sb.toString();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean waitForAnnounced(long j) throws java.lang.InterruptedException {
            if (!isAnnounced() && !willCancel()) {
                this._announcing.waitForEvent(j);
            }
            if (!isAnnounced()) {
                if (willCancel() || willClose()) {
                    logger.fine("Wait for announced cancelled: " + this);
                } else {
                    logger.warning("Wait for announced timed out: " + this);
                }
            }
            return isAnnounced();
        }

        @Override // javax.jmdns.impl.DNSStatefulObject
        public boolean waitForCanceled(long j) throws java.lang.InterruptedException {
            if (!isCanceled()) {
                this._canceling.waitForEvent(j);
            }
            if (!isCanceled() && !willClose()) {
                logger.warning("Wait for canceled timed out: " + this);
            }
            return isCanceled();
        }
    }

    boolean advanceState(javax.jmdns.impl.tasks.DNSTask dNSTask);

    void associateWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState);

    boolean cancelState();

    boolean closeState();

    javax.jmdns.impl.JmDNSImpl getDns();

    boolean isAnnounced();

    boolean isAnnouncing();

    boolean isAssociatedWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState);

    boolean isCanceled();

    boolean isCanceling();

    boolean isClosed();

    boolean isClosing();

    boolean isProbing();

    boolean recoverState();

    void removeAssociationWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask);

    boolean revertState();

    boolean waitForAnnounced(long j);

    boolean waitForCanceled(long j);
}
