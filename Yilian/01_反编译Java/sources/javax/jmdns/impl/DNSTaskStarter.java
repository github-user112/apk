package javax.jmdns.impl;

/* loaded from: classes.dex */
public interface DNSTaskStarter {

    public static final class DNSTaskStarterImpl implements javax.jmdns.impl.DNSTaskStarter {
        public final javax.jmdns.impl.JmDNSImpl _jmDNSImpl;
        public final java.util.Timer _stateTimer;
        public final java.util.Timer _timer;

        public static class StarterTimer extends java.util.Timer {
            public volatile boolean _cancelled;

            public StarterTimer() {
                this._cancelled = false;
            }

            public StarterTimer(java.lang.String str) {
                super(str);
                this._cancelled = false;
            }

            public StarterTimer(java.lang.String str, boolean z) {
                super(str, z);
                this._cancelled = false;
            }

            public StarterTimer(boolean z) {
                super(z);
                this._cancelled = false;
            }

            @Override // java.util.Timer
            public synchronized void cancel() {
                if (this._cancelled) {
                    return;
                }
                this._cancelled = true;
                super.cancel();
            }

            @Override // java.util.Timer
            public synchronized void schedule(java.util.TimerTask timerTask, long j) {
                if (this._cancelled) {
                    return;
                }
                super.schedule(timerTask, j);
            }

            @Override // java.util.Timer
            public synchronized void schedule(java.util.TimerTask timerTask, long j, long j2) {
                if (this._cancelled) {
                    return;
                }
                super.schedule(timerTask, j, j2);
            }

            @Override // java.util.Timer
            public synchronized void schedule(java.util.TimerTask timerTask, java.util.Date date) {
                if (this._cancelled) {
                    return;
                }
                super.schedule(timerTask, date);
            }

            @Override // java.util.Timer
            public synchronized void schedule(java.util.TimerTask timerTask, java.util.Date date, long j) {
                if (this._cancelled) {
                    return;
                }
                super.schedule(timerTask, date, j);
            }

            @Override // java.util.Timer
            public synchronized void scheduleAtFixedRate(java.util.TimerTask timerTask, long j, long j2) {
                if (this._cancelled) {
                    return;
                }
                super.scheduleAtFixedRate(timerTask, j, j2);
            }

            @Override // java.util.Timer
            public synchronized void scheduleAtFixedRate(java.util.TimerTask timerTask, java.util.Date date, long j) {
                if (this._cancelled) {
                    return;
                }
                super.scheduleAtFixedRate(timerTask, date, j);
            }
        }

        public DNSTaskStarterImpl(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            this._jmDNSImpl = jmDNSImpl;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("JmDNS(");
            sbO.append(jmDNSImpl.getName());
            sbO.append(").Timer");
            this._timer = new javax.jmdns.impl.DNSTaskStarter.DNSTaskStarterImpl.StarterTimer(sbO.toString(), true);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("JmDNS(");
            sbO2.append(jmDNSImpl.getName());
            sbO2.append(").State.Timer");
            this._stateTimer = new javax.jmdns.impl.DNSTaskStarter.DNSTaskStarterImpl.StarterTimer(sbO2.toString(), false);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void cancelStateTimer() {
            this._stateTimer.cancel();
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void cancelTimer() {
            this._timer.cancel();
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void purgeStateTimer() {
            this._stateTimer.purge();
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void purgeTimer() {
            this._timer.purge();
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startAnnouncer() {
            new javax.jmdns.impl.tasks.state.Announcer(this._jmDNSImpl).start(this._stateTimer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startCanceler() {
            new javax.jmdns.impl.tasks.state.Canceler(this._jmDNSImpl).start(this._stateTimer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startProber() {
            new javax.jmdns.impl.tasks.state.Prober(this._jmDNSImpl).start(this._stateTimer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startReaper() {
            new javax.jmdns.impl.tasks.RecordReaper(this._jmDNSImpl).start(this._timer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startRenewer() {
            new javax.jmdns.impl.tasks.state.Renewer(this._jmDNSImpl).start(this._stateTimer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startResponder(javax.jmdns.impl.DNSIncoming dNSIncoming, int i) {
            new javax.jmdns.impl.tasks.Responder(this._jmDNSImpl, dNSIncoming, i).start(this._timer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startServiceInfoResolver(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
            new javax.jmdns.impl.tasks.resolver.ServiceInfoResolver(this._jmDNSImpl, serviceInfoImpl).start(this._timer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startServiceResolver(java.lang.String str) {
            new javax.jmdns.impl.tasks.resolver.ServiceResolver(this._jmDNSImpl, str).start(this._timer);
        }

        @Override // javax.jmdns.impl.DNSTaskStarter
        public void startTypeResolver() {
            new javax.jmdns.impl.tasks.resolver.TypeResolver(this._jmDNSImpl).start(this._timer);
        }
    }

    public static final class Factory {
        public static final java.util.concurrent.atomic.AtomicReference<javax.jmdns.impl.DNSTaskStarter.Factory.ClassDelegate> _databaseClassDelegate = new java.util.concurrent.atomic.AtomicReference<>();
        public static volatile javax.jmdns.impl.DNSTaskStarter.Factory _instance;
        public final java.util.concurrent.ConcurrentMap<javax.jmdns.impl.JmDNSImpl, javax.jmdns.impl.DNSTaskStarter> _instances = new java.util.concurrent.ConcurrentHashMap(20);

        public interface ClassDelegate {
            javax.jmdns.impl.DNSTaskStarter newDNSTaskStarter(javax.jmdns.impl.JmDNSImpl jmDNSImpl);
        }

        public static javax.jmdns.impl.DNSTaskStarter.Factory.ClassDelegate classDelegate() {
            return _databaseClassDelegate.get();
        }

        public static javax.jmdns.impl.DNSTaskStarter.Factory getInstance() {
            if (_instance == null) {
                synchronized (javax.jmdns.impl.DNSTaskStarter.Factory.class) {
                    if (_instance == null) {
                        _instance = new javax.jmdns.impl.DNSTaskStarter.Factory();
                    }
                }
            }
            return _instance;
        }

        public static javax.jmdns.impl.DNSTaskStarter newDNSTaskStarter(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.impl.DNSTaskStarter.Factory.ClassDelegate classDelegate = _databaseClassDelegate.get();
            javax.jmdns.impl.DNSTaskStarter dNSTaskStarterNewDNSTaskStarter = classDelegate != null ? classDelegate.newDNSTaskStarter(jmDNSImpl) : null;
            return dNSTaskStarterNewDNSTaskStarter != null ? dNSTaskStarterNewDNSTaskStarter : new javax.jmdns.impl.DNSTaskStarter.DNSTaskStarterImpl(jmDNSImpl);
        }

        public static void setClassDelegate(javax.jmdns.impl.DNSTaskStarter.Factory.ClassDelegate classDelegate) {
            _databaseClassDelegate.set(classDelegate);
        }

        public javax.jmdns.impl.DNSTaskStarter getStarter(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.impl.DNSTaskStarter dNSTaskStarter = this._instances.get(jmDNSImpl);
            if (dNSTaskStarter != null) {
                return dNSTaskStarter;
            }
            this._instances.putIfAbsent(jmDNSImpl, newDNSTaskStarter(jmDNSImpl));
            return this._instances.get(jmDNSImpl);
        }
    }

    void cancelStateTimer();

    void cancelTimer();

    void purgeStateTimer();

    void purgeTimer();

    void startAnnouncer();

    void startCanceler();

    void startProber();

    void startReaper();

    void startRenewer();

    void startResponder(javax.jmdns.impl.DNSIncoming dNSIncoming, int i);

    void startServiceInfoResolver(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl);

    void startServiceResolver(java.lang.String str);

    void startTypeResolver();
}
