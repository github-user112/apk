package e.c.b.e.a;

@com.google.j2objc.annotations.ReflectionSupport(com.google.j2objc.annotations.ReflectionSupport.Level.FULL)
/* loaded from: classes.dex */
public abstract class a<V> extends e.c.b.e.a.d.a implements e.c.b.e.a.b<V> {

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f2751d = java.lang.Boolean.parseBoolean(java.lang.System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.logging.Logger f2752e = java.util.logging.Logger.getLogger(e.c.b.e.a.a.class.getName());

    /* renamed from: f, reason: collision with root package name */
    public static final e.c.b.e.a.a.b f2753f;

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.Object f2754g;

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public volatile java.lang.Object a;

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public volatile e.c.b.e.a.a.e b;

    /* renamed from: c, reason: collision with root package name */
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public volatile e.c.b.e.a.a.l f2755c;

    public static abstract class b {
        public b(e.c.b.e.a.a.C0073a c0073a) {
        }

        public abstract boolean a(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.e eVar, e.c.b.e.a.a.e eVar2);

        public abstract boolean b(e.c.b.e.a.a<?> aVar, java.lang.Object obj, java.lang.Object obj2);

        public abstract boolean c(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2);

        public abstract void d(e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2);

        public abstract void e(e.c.b.e.a.a.l lVar, java.lang.Thread thread);
    }

    public static final class c {

        /* renamed from: c, reason: collision with root package name */
        public static final e.c.b.e.a.a.c f2756c;

        /* renamed from: d, reason: collision with root package name */
        public static final e.c.b.e.a.a.c f2757d;
        public final boolean a;

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public final java.lang.Throwable b;

        static {
            if (e.c.b.e.a.a.f2751d) {
                f2757d = null;
                f2756c = null;
            } else {
                f2757d = new e.c.b.e.a.a.c(false, null);
                f2756c = new e.c.b.e.a.a.c(true, null);
            }
        }

        public c(boolean z, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    public static final class d {
        public final java.lang.Throwable a;

        /* renamed from: e.c.b.e.a.a$d$a, reason: collision with other inner class name */
        public static class C0074a extends java.lang.Throwable {
            public C0074a(java.lang.String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized java.lang.Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new e.c.b.e.a.a.d.C0074a("Failure occurred while trying to finish a future.");
        }

        public d(java.lang.Throwable th) {
            if (th == null) {
                throw null;
            }
            this.a = th;
        }
    }

    public static final class e {

        /* renamed from: d, reason: collision with root package name */
        public static final e.c.b.e.a.a.e f2758d = new e.c.b.e.a.a.e(null, null);
        public final java.lang.Runnable a = null;
        public final java.util.concurrent.Executor b = null;

        /* renamed from: c, reason: collision with root package name */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public e.c.b.e.a.a.e f2759c;

        public e(java.lang.Runnable runnable, java.util.concurrent.Executor executor) {
        }
    }

    public static final class f extends e.c.b.e.a.a.b {
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a.l, java.lang.Thread> a;
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a.l, e.c.b.e.a.a.l> b;

        /* renamed from: c, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, e.c.b.e.a.a.l> f2760c;

        /* renamed from: d, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, e.c.b.e.a.a.e> f2761d;

        /* renamed from: e, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, java.lang.Object> f2762e;

        public f(java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a.l, java.lang.Thread> atomicReferenceFieldUpdater, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a.l, e.c.b.e.a.a.l> atomicReferenceFieldUpdater2, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, e.c.b.e.a.a.l> atomicReferenceFieldUpdater3, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, e.c.b.e.a.a.e> atomicReferenceFieldUpdater4, java.util.concurrent.atomic.AtomicReferenceFieldUpdater<e.c.b.e.a.a, java.lang.Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.f2760c = atomicReferenceFieldUpdater3;
            this.f2761d = atomicReferenceFieldUpdater4;
            this.f2762e = atomicReferenceFieldUpdater5;
        }

        @Override // e.c.b.e.a.a.b
        public boolean a(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.e eVar, e.c.b.e.a.a.e eVar2) {
            return this.f2761d.compareAndSet(aVar, eVar, eVar2);
        }

        @Override // e.c.b.e.a.a.b
        public boolean b(e.c.b.e.a.a<?> aVar, java.lang.Object obj, java.lang.Object obj2) {
            return this.f2762e.compareAndSet(aVar, obj, obj2);
        }

        @Override // e.c.b.e.a.a.b
        public boolean c(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            return this.f2760c.compareAndSet(aVar, lVar, lVar2);
        }

        @Override // e.c.b.e.a.a.b
        public void d(e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            this.b.lazySet(lVar, lVar2);
        }

        @Override // e.c.b.e.a.a.b
        public void e(e.c.b.e.a.a.l lVar, java.lang.Thread thread) {
            this.a.lazySet(lVar, thread);
        }
    }

    public static final class g<V> implements java.lang.Runnable {
        public final e.c.b.e.a.a<V> a;
        public final e.c.b.e.a.b<? extends V> b;

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    public static final class h extends e.c.b.e.a.a.b {
        public h(e.c.b.e.a.a.C0073a c0073a) {
            super(null);
        }

        @Override // e.c.b.e.a.a.b
        public boolean a(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.e eVar, e.c.b.e.a.a.e eVar2) {
            synchronized (aVar) {
                if (aVar.b != eVar) {
                    return false;
                }
                aVar.b = eVar2;
                return true;
            }
        }

        @Override // e.c.b.e.a.a.b
        public boolean b(e.c.b.e.a.a<?> aVar, java.lang.Object obj, java.lang.Object obj2) {
            synchronized (aVar) {
                if (aVar.a != obj) {
                    return false;
                }
                aVar.a = obj2;
                return true;
            }
        }

        @Override // e.c.b.e.a.a.b
        public boolean c(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            synchronized (aVar) {
                if (aVar.f2755c != lVar) {
                    return false;
                }
                aVar.f2755c = lVar2;
                return true;
            }
        }

        @Override // e.c.b.e.a.a.b
        public void d(e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            lVar.b = lVar2;
        }

        @Override // e.c.b.e.a.a.b
        public void e(e.c.b.e.a.a.l lVar, java.lang.Thread thread) {
            lVar.a = thread;
        }
    }

    public interface i<V> extends e.c.b.e.a.b<V> {
    }

    public static abstract class j<V> extends e.c.b.e.a.a<V> implements e.c.b.e.a.a.i<V> {
        @Override // e.c.b.e.a.a, java.util.concurrent.Future
        @com.google.errorprone.annotations.CanIgnoreReturnValue
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // e.c.b.e.a.a, java.util.concurrent.Future
        @com.google.errorprone.annotations.CanIgnoreReturnValue
        public final V get() {
            return (V) super.get();
        }

        @Override // e.c.b.e.a.a, java.util.concurrent.Future
        @com.google.errorprone.annotations.CanIgnoreReturnValue
        public final V get(long j, java.util.concurrent.TimeUnit timeUnit) {
            return (V) super.get(j, timeUnit);
        }

        @Override // e.c.b.e.a.a, java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.a instanceof e.c.b.e.a.a.c;
        }

        @Override // e.c.b.e.a.a, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }

    public static final class k extends e.c.b.e.a.a.b {
        public static final sun.misc.Unsafe a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f2763c;

        /* renamed from: d, reason: collision with root package name */
        public static final long f2764d;

        /* renamed from: e, reason: collision with root package name */
        public static final long f2765e;

        /* renamed from: f, reason: collision with root package name */
        public static final long f2766f;

        /* renamed from: e.c.b.e.a.a$k$a, reason: collision with other inner class name */
        public static class C0075a implements java.security.PrivilegedExceptionAction<sun.misc.Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public sun.misc.Unsafe run() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
                for (java.lang.reflect.Field field : sun.misc.Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    java.lang.Object obj = field.get(null);
                    if (sun.misc.Unsafe.class.isInstance(obj)) {
                        return (sun.misc.Unsafe) sun.misc.Unsafe.class.cast(obj);
                    }
                }
                throw new java.lang.NoSuchFieldError("the Unsafe");
            }
        }

        static {
            sun.misc.Unsafe unsafe;
            try {
                try {
                    unsafe = sun.misc.Unsafe.getUnsafe();
                } catch (java.security.PrivilegedActionException e2) {
                    throw new java.lang.RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (java.lang.SecurityException unused) {
                unsafe = (sun.misc.Unsafe) java.security.AccessController.doPrivileged(new e.c.b.e.a.a.k.C0075a());
            }
            try {
                f2763c = unsafe.objectFieldOffset(e.c.b.e.a.a.class.getDeclaredField("c"));
                b = unsafe.objectFieldOffset(e.c.b.e.a.a.class.getDeclaredField(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD));
                f2764d = unsafe.objectFieldOffset(e.c.b.e.a.a.class.getDeclaredField(com.umeng.analytics.pro.ai.at));
                f2765e = unsafe.objectFieldOffset(e.c.b.e.a.a.l.class.getDeclaredField(com.umeng.analytics.pro.ai.at));
                f2766f = unsafe.objectFieldOffset(e.c.b.e.a.a.l.class.getDeclaredField(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD));
                a = unsafe;
            } catch (java.lang.Exception e3) {
                e.c.b.a.l.c(e3);
                throw new java.lang.RuntimeException(e3);
            }
        }

        public k(e.c.b.e.a.a.C0073a c0073a) {
            super(null);
        }

        @Override // e.c.b.e.a.a.b
        public boolean a(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.e eVar, e.c.b.e.a.a.e eVar2) {
            return a.compareAndSwapObject(aVar, b, eVar, eVar2);
        }

        @Override // e.c.b.e.a.a.b
        public boolean b(e.c.b.e.a.a<?> aVar, java.lang.Object obj, java.lang.Object obj2) {
            return a.compareAndSwapObject(aVar, f2764d, obj, obj2);
        }

        @Override // e.c.b.e.a.a.b
        public boolean c(e.c.b.e.a.a<?> aVar, e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            return a.compareAndSwapObject(aVar, f2763c, lVar, lVar2);
        }

        @Override // e.c.b.e.a.a.b
        public void d(e.c.b.e.a.a.l lVar, e.c.b.e.a.a.l lVar2) {
            a.putObject(lVar, f2766f, lVar2);
        }

        @Override // e.c.b.e.a.a.b
        public void e(e.c.b.e.a.a.l lVar, java.lang.Thread thread) {
            a.putObject(lVar, f2765e, thread);
        }
    }

    public static final class l {

        /* renamed from: c, reason: collision with root package name */
        public static final e.c.b.e.a.a.l f2767c = new e.c.b.e.a.a.l(false);

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public volatile java.lang.Thread a;

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public volatile e.c.b.e.a.a.l b;

        public l() {
            e.c.b.e.a.a.f2753f.e(this, java.lang.Thread.currentThread());
        }

        public l(boolean z) {
        }
    }

    static {
        e.c.b.e.a.a.b hVar;
        java.lang.Throwable th = null;
        try {
            hVar = new e.c.b.e.a.a.k(null);
            th = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            try {
                hVar = new e.c.b.e.a.a.f(java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(e.c.b.e.a.a.l.class, java.lang.Thread.class, com.umeng.analytics.pro.ai.at), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(e.c.b.e.a.a.l.class, e.c.b.e.a.a.l.class, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(e.c.b.e.a.a.class, e.c.b.e.a.a.l.class, "c"), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(e.c.b.e.a.a.class, e.c.b.e.a.a.e.class, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD), java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(e.c.b.e.a.a.class, java.lang.Object.class, com.umeng.analytics.pro.ai.at));
            } catch (java.lang.Throwable th3) {
                hVar = new e.c.b.e.a.a.h(null);
                th = th3;
            }
        }
        f2753f = hVar;
        if (th != null) {
            f2752e.log(java.util.logging.Level.SEVERE, "UnsafeAtomicHelper is broken!", th);
            f2752e.log(java.util.logging.Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2754g = new java.lang.Object();
    }

    public static void b(e.c.b.e.a.a<?> aVar) {
        e.c.b.e.a.a.e eVar;
        e.c.b.e.a.a.e eVar2;
        e.c.b.e.a.a.e eVar3 = null;
        while (true) {
            e.c.b.e.a.a.l lVar = aVar.f2755c;
            if (f2753f.c(aVar, lVar, e.c.b.e.a.a.l.f2767c)) {
                while (lVar != null) {
                    java.lang.Thread thread = lVar.a;
                    if (thread != null) {
                        lVar.a = null;
                        java.util.concurrent.locks.LockSupport.unpark(thread);
                    }
                    lVar = lVar.b;
                }
                do {
                    eVar = aVar.b;
                } while (!f2753f.a(aVar, eVar, e.c.b.e.a.a.e.f2758d));
                while (true) {
                    eVar2 = eVar3;
                    eVar3 = eVar;
                    if (eVar3 == null) {
                        break;
                    }
                    eVar = eVar3.f2759c;
                    eVar3.f2759c = eVar2;
                }
                while (eVar2 != null) {
                    eVar3 = eVar2.f2759c;
                    java.lang.Runnable runnable = eVar2.a;
                    if (runnable instanceof e.c.b.e.a.a.g) {
                        e.c.b.e.a.a.g gVar = (e.c.b.e.a.a.g) runnable;
                        aVar = gVar.a;
                        if (aVar.a == gVar) {
                            if (f2753f.b(aVar, gVar, d(gVar.b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        java.util.concurrent.Executor executor = eVar2.b;
                        try {
                            executor.execute(runnable);
                        } catch (java.lang.RuntimeException e2) {
                            f2752e.log(java.util.logging.Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (java.lang.Throwable) e2);
                        }
                    }
                    eVar2 = eVar3;
                }
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static java.lang.Object d(e.c.b.e.a.b<?> bVar) {
        if (bVar instanceof e.c.b.e.a.a.i) {
            java.lang.Object obj = ((e.c.b.e.a.a) bVar).a;
            if (!(obj instanceof e.c.b.e.a.a.c)) {
                return obj;
            }
            e.c.b.e.a.a.c cVar = (e.c.b.e.a.a.c) obj;
            return cVar.a ? cVar.b != null ? new e.c.b.e.a.a.c(false, cVar.b) : e.c.b.e.a.a.c.f2757d : obj;
        }
        if (bVar instanceof e.c.b.e.a.d.a) {
            e.c.b.e.a.a aVar = (e.c.b.e.a.a) ((e.c.b.e.a.d.a) bVar);
            java.lang.Throwable th = null;
            if (aVar == null) {
                throw null;
            }
            if (aVar instanceof e.c.b.e.a.a.i) {
                java.lang.Object obj2 = aVar.a;
                if (obj2 instanceof e.c.b.e.a.a.d) {
                    th = ((e.c.b.e.a.a.d) obj2).a;
                }
            }
            if (th != null) {
                return new e.c.b.e.a.a.d(th);
            }
        }
        boolean zIsCancelled = bVar.isCancelled();
        if ((!f2751d) && zIsCancelled) {
            return e.c.b.e.a.a.c.f2757d;
        }
        try {
            java.lang.Object objE = e(bVar);
            if (!zIsCancelled) {
                return objE == null ? f2754g : objE;
            }
            return new e.c.b.e.a.a.c(false, new java.lang.IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + bVar));
        } catch (java.util.concurrent.CancellationException e2) {
            if (zIsCancelled) {
                return new e.c.b.e.a.a.c(false, e2);
            }
            return new e.c.b.e.a.a.d(new java.lang.IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + bVar, e2));
        } catch (java.util.concurrent.ExecutionException e3) {
            if (!zIsCancelled) {
                return new e.c.b.e.a.a.d(e3.getCause());
            }
            return new e.c.b.e.a.a.c(false, new java.lang.IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + bVar, e3));
        } catch (java.lang.Throwable th2) {
            return new e.c.b.e.a.a.d(th2);
        }
    }

    public static <V> V e(java.util.concurrent.Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (java.lang.InterruptedException unused) {
                z = true;
            } catch (java.lang.Throwable th) {
                if (z) {
                    java.lang.Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            java.lang.Thread.currentThread().interrupt();
        }
        return v;
    }

    public final void a(java.lang.StringBuilder sb) {
        java.lang.String str = "]";
        try {
            java.lang.Object objE = e(this);
            sb.append("SUCCESS, result=[");
            sb.append(objE == this ? "this future" : java.lang.String.valueOf(objE));
            sb.append("]");
        } catch (java.util.concurrent.CancellationException unused) {
            str = "CANCELLED";
            sb.append(str);
        } catch (java.lang.RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            str = " thrown from get()]";
            sb.append(str);
        } catch (java.util.concurrent.ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V c(java.lang.Object obj) throws java.util.concurrent.ExecutionException {
        if (obj instanceof e.c.b.e.a.a.c) {
            java.lang.Throwable th = ((e.c.b.e.a.a.c) obj).b;
            java.util.concurrent.CancellationException cancellationException = new java.util.concurrent.CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof e.c.b.e.a.a.d) {
            throw new java.util.concurrent.ExecutionException(((e.c.b.e.a.a.d) obj).a);
        }
        if (obj == f2754g) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        java.lang.Object obj = this.a;
        if (!(obj == null) && !(obj instanceof e.c.b.e.a.a.g)) {
            return false;
        }
        e.c.b.e.a.a.c cVar = f2751d ? new e.c.b.e.a.a.c(z, new java.util.concurrent.CancellationException("Future.cancel() was called.")) : z ? e.c.b.e.a.a.c.f2756c : e.c.b.e.a.a.c.f2757d;
        boolean z2 = false;
        e.c.b.e.a.a<V> aVar = this;
        while (true) {
            if (f2753f.b(aVar, obj, cVar)) {
                b(aVar);
                if (!(obj instanceof e.c.b.e.a.a.g)) {
                    return true;
                }
                e.c.b.e.a.b<? extends V> bVar = ((e.c.b.e.a.a.g) obj).b;
                if (!(bVar instanceof e.c.b.e.a.a.i)) {
                    bVar.cancel(z);
                    return true;
                }
                aVar = (e.c.b.e.a.a) bVar;
                obj = aVar.a;
                if (!(obj == null) && !(obj instanceof e.c.b.e.a.a.g)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = aVar.a;
                if (!(obj instanceof e.c.b.e.a.a.g)) {
                    return z2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public java.lang.String f() {
        java.lang.Object obj = this.a;
        if (obj instanceof e.c.b.e.a.a.g) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("setFuture=[");
            e.c.b.e.a.b<? extends V> bVar = ((e.c.b.e.a.a.g) obj).b;
            return e.a.c.a.a.j(sbO, bVar == this ? "this future" : java.lang.String.valueOf(bVar), "]");
        }
        if (!(this instanceof java.util.concurrent.ScheduledFuture)) {
            return null;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("remaining delay=[");
        sbO2.append(((java.util.concurrent.ScheduledFuture) this).getDelay(java.util.concurrent.TimeUnit.MILLISECONDS));
        sbO2.append(" ms]");
        return sbO2.toString();
    }

    public final void g(e.c.b.e.a.a.l lVar) {
        lVar.a = null;
        while (true) {
            e.c.b.e.a.a.l lVar2 = this.f2755c;
            if (lVar2 == e.c.b.e.a.a.l.f2767c) {
                return;
            }
            e.c.b.e.a.a.l lVar3 = null;
            while (lVar2 != null) {
                e.c.b.e.a.a.l lVar4 = lVar2.b;
                if (lVar2.a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.b = lVar4;
                    if (lVar3.a == null) {
                        break;
                    }
                } else if (!f2753f.c(this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public V get() throws java.lang.InterruptedException {
        java.lang.Object obj;
        if (java.lang.Thread.interrupted()) {
            throw new java.lang.InterruptedException();
        }
        java.lang.Object obj2 = this.a;
        if ((obj2 != null) && (!(obj2 instanceof e.c.b.e.a.a.g))) {
            return c(obj2);
        }
        e.c.b.e.a.a.l lVar = this.f2755c;
        if (lVar != e.c.b.e.a.a.l.f2767c) {
            e.c.b.e.a.a.l lVar2 = new e.c.b.e.a.a.l();
            do {
                f2753f.d(lVar2, lVar);
                if (f2753f.c(this, lVar, lVar2)) {
                    do {
                        java.util.concurrent.locks.LockSupport.park(this);
                        if (java.lang.Thread.interrupted()) {
                            g(lVar2);
                            throw new java.lang.InterruptedException();
                        }
                        obj = this.a;
                    } while (!((obj != null) & (!(obj instanceof e.c.b.e.a.a.g))));
                    return c(obj);
                }
                lVar = this.f2755c;
            } while (lVar != e.c.b.e.a.a.l.f2767c);
        }
        return c(this.a);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.a instanceof e.c.b.e.a.a.c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof e.c.b.e.a.a.g)) & (this.a != null);
    }

    public java.lang.String toString() {
        java.lang.String string;
        java.lang.String str;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (!(((e.c.b.e.a.a.j) this).a instanceof e.c.b.e.a.a.c)) {
            if (isDone()) {
                a(sb);
            } else {
                try {
                    string = f();
                } catch (java.lang.RuntimeException e2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Exception thrown from implementation: ");
                    sbO.append(e2.getClass());
                    string = sbO.toString();
                }
                if (string == null || string.isEmpty()) {
                    str = isDone() ? "CANCELLED" : "PENDING";
                    a(sb);
                } else {
                    sb.append("PENDING, info=[");
                    sb.append(string);
                    sb.append("]");
                }
            }
            sb.append("]");
            return sb.toString();
        }
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public V get(long j2, java.util.concurrent.TimeUnit timeUnit) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (java.lang.Thread.interrupted()) {
            throw new java.lang.InterruptedException();
        }
        java.lang.Object obj = this.a;
        if ((obj != null) && (!(obj instanceof e.c.b.e.a.a.g))) {
            return c(obj);
        }
        long jNanoTime = nanos > 0 ? java.lang.System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            e.c.b.e.a.a.l lVar = this.f2755c;
            if (lVar != e.c.b.e.a.a.l.f2767c) {
                e.c.b.e.a.a.l lVar2 = new e.c.b.e.a.a.l();
                do {
                    f2753f.d(lVar2, lVar);
                    if (f2753f.c(this, lVar, lVar2)) {
                        do {
                            java.util.concurrent.locks.LockSupport.parkNanos(this, nanos);
                            if (java.lang.Thread.interrupted()) {
                                g(lVar2);
                                throw new java.lang.InterruptedException();
                            }
                            java.lang.Object obj2 = this.a;
                            if ((obj2 != null) && (!(obj2 instanceof e.c.b.e.a.a.g))) {
                                return c(obj2);
                            }
                            nanos = jNanoTime - java.lang.System.nanoTime();
                        } while (nanos >= 1000);
                        g(lVar2);
                    } else {
                        lVar = this.f2755c;
                    }
                } while (lVar != e.c.b.e.a.a.l.f2767c);
            }
            return c(this.a);
        }
        while (nanos > 0) {
            java.lang.Object obj3 = this.a;
            if ((obj3 != null) && (!(obj3 instanceof e.c.b.e.a.a.g))) {
                return c(obj3);
            }
            if (java.lang.Thread.interrupted()) {
                throw new java.lang.InterruptedException();
            }
            nanos = jNanoTime - java.lang.System.nanoTime();
        }
        java.lang.String string = toString();
        java.lang.String lowerCase = timeUnit.toString().toLowerCase(java.util.Locale.ROOT);
        java.lang.String strE = "Waited " + j2 + " " + timeUnit.toString().toLowerCase(java.util.Locale.ROOT);
        if (nanos + 1000 < 0) {
            java.lang.String strE2 = e.a.c.a.a.e(strE, " (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, java.util.concurrent.TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                java.lang.String strE3 = strE2 + jConvert + " " + lowerCase;
                if (z) {
                    strE3 = e.a.c.a.a.e(strE3, ",");
                }
                strE2 = e.a.c.a.a.e(strE3, " ");
            }
            if (z) {
                strE2 = strE2 + nanos2 + " nanoseconds ";
            }
            strE = e.a.c.a.a.e(strE2, "delay)");
        }
        if (isDone()) {
            throw new java.util.concurrent.TimeoutException(e.a.c.a.a.e(strE, " but future completed as timeout expired"));
        }
        throw new java.util.concurrent.TimeoutException(e.a.c.a.a.f(strE, " for ", string));
    }
}
