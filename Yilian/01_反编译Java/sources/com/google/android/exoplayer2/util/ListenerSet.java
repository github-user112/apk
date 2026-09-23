package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class ListenerSet<T> {
    public static final int MSG_ITERATION_FINISHED = 0;
    public final com.google.android.exoplayer2.util.Clock clock;
    public final java.util.ArrayDeque<java.lang.Runnable> flushingEvents;
    public final com.google.android.exoplayer2.util.HandlerWrapper handler;
    public final com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent;
    public final java.util.concurrent.CopyOnWriteArraySet<com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T>> listeners;
    public final java.util.ArrayDeque<java.lang.Runnable> queuedEvents;
    public boolean released;

    public interface Event<T> {
        void invoke(T t);
    }

    public interface IterationFinishedEvent<T> {
        void invoke(T t, com.google.android.exoplayer2.util.FlagSet flagSet);
    }

    public static final class ListenerHolder<T> {
        public com.google.android.exoplayer2.util.FlagSet.Builder flagsBuilder = new com.google.android.exoplayer2.util.FlagSet.Builder();
        public final T listener;
        public boolean needsIterationFinishedEvent;
        public boolean released;

        public ListenerHolder(T t) {
            this.listener = t;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.util.ListenerSet.ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((com.google.android.exoplayer2.util.ListenerSet.ListenerHolder) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public void invoke(int i, com.google.android.exoplayer2.util.ListenerSet.Event<T> event) {
            if (this.released) {
                return;
            }
            if (i != -1) {
                this.flagsBuilder.add(i);
            }
            this.needsIterationFinishedEvent = true;
            event.invoke(this.listener);
        }

        public void iterationFinished(com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent) {
            if (this.released || !this.needsIterationFinishedEvent) {
                return;
            }
            com.google.android.exoplayer2.util.FlagSet flagSetBuild = this.flagsBuilder.build();
            this.flagsBuilder = new com.google.android.exoplayer2.util.FlagSet.Builder();
            this.needsIterationFinishedEvent = false;
            iterationFinishedEvent.invoke(this.listener, flagSetBuild);
        }

        public void release(com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent) {
            this.released = true;
            if (this.needsIterationFinishedEvent) {
                iterationFinishedEvent.invoke(this.listener, this.flagsBuilder.build());
            }
        }
    }

    public ListenerSet(android.os.Looper looper, com.google.android.exoplayer2.util.Clock clock, com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new java.util.concurrent.CopyOnWriteArraySet(), looper, clock, iterationFinishedEvent);
    }

    public ListenerSet(java.util.concurrent.CopyOnWriteArraySet<com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T>> copyOnWriteArraySet, android.os.Looper looper, com.google.android.exoplayer2.util.Clock clock, com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent) {
        this.clock = clock;
        this.listeners = copyOnWriteArraySet;
        this.iterationFinishedEvent = iterationFinishedEvent;
        this.flushingEvents = new java.util.ArrayDeque<>();
        this.queuedEvents = new java.util.ArrayDeque<>();
        this.handler = clock.createHandler(looper, new android.os.Handler.Callback() { // from class: e.c.a.a.s2.b
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.a.handleMessage(message);
            }
        });
    }

    public static /* synthetic */ void b(java.util.concurrent.CopyOnWriteArraySet copyOnWriteArraySet, int i, com.google.android.exoplayer2.util.ListenerSet.Event event) {
        java.util.Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((com.google.android.exoplayer2.util.ListenerSet.ListenerHolder) it.next()).invoke(i, event);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(android.os.Message message) {
        java.util.Iterator<com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().iterationFinished(this.iterationFinishedEvent);
            if (this.handler.hasMessages(0)) {
                return true;
            }
        }
        return true;
    }

    public void add(T t) {
        if (this.released) {
            return;
        }
        com.google.android.exoplayer2.util.Assertions.checkNotNull(t);
        this.listeners.add(new com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<>(t));
    }

    public com.google.android.exoplayer2.util.ListenerSet<T> copy(android.os.Looper looper, com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent<T> iterationFinishedEvent) {
        return new com.google.android.exoplayer2.util.ListenerSet<>(this.listeners, looper, this.clock, iterationFinishedEvent);
    }

    public void flushEvents() {
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (!this.handler.hasMessages(0)) {
            com.google.android.exoplayer2.util.HandlerWrapper handlerWrapper = this.handler;
            handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(0));
        }
        boolean z = !this.flushingEvents.isEmpty();
        this.flushingEvents.addAll(this.queuedEvents);
        this.queuedEvents.clear();
        if (z) {
            return;
        }
        while (!this.flushingEvents.isEmpty()) {
            this.flushingEvents.peekFirst().run();
            this.flushingEvents.removeFirst();
        }
    }

    public void queueEvent(final int i, final com.google.android.exoplayer2.util.ListenerSet.Event<T> event) {
        final java.util.concurrent.CopyOnWriteArraySet copyOnWriteArraySet = new java.util.concurrent.CopyOnWriteArraySet(this.listeners);
        this.queuedEvents.add(new java.lang.Runnable() { // from class: e.c.a.a.s2.a
            @Override // java.lang.Runnable
            public final void run() {
                com.google.android.exoplayer2.util.ListenerSet.b(copyOnWriteArraySet, i, event);
            }
        });
    }

    public void release() {
        java.util.Iterator<com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
        this.released = true;
    }

    public void remove(T t) {
        java.util.Iterator<com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.util.ListenerSet.ListenerHolder<T> next = it.next();
            if (next.listener.equals(t)) {
                next.release(this.iterationFinishedEvent);
                this.listeners.remove(next);
            }
        }
    }

    public void sendEvent(int i, com.google.android.exoplayer2.util.ListenerSet.Event<T> event) {
        queueEvent(i, event);
        flushEvents();
    }

    public int size() {
        return this.listeners.size();
    }
}
