package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class W {
    public static com.tencent.bugly.proguard.W a;

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f1094c;

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.proguard.T f1095d;

    /* renamed from: f, reason: collision with root package name */
    public long f1097f;

    /* renamed from: g, reason: collision with root package name */
    public long f1098g;

    /* renamed from: e, reason: collision with root package name */
    public java.util.Map<java.lang.Integer, java.lang.Long> f1096e = new java.util.HashMap();
    public java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> h = new java.util.concurrent.LinkedBlockingQueue<>();
    public java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> i = new java.util.concurrent.LinkedBlockingQueue<>();
    public final java.lang.Object j = new java.lang.Object();
    public long k = 0;
    public int l = 0;
    public final com.tencent.bugly.proguard.J b = com.tencent.bugly.proguard.J.a();

    public class a implements java.lang.Runnable {
        public final /* synthetic */ java.lang.Runnable a;

        public a(java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.run();
            synchronized (com.tencent.bugly.proguard.W.this.j) {
                com.tencent.bugly.proguard.W.b(com.tencent.bugly.proguard.W.this);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ int a;
        public final /* synthetic */ java.util.concurrent.LinkedBlockingQueue b;

        public b(com.tencent.bugly.proguard.W w, int i, java.util.concurrent.LinkedBlockingQueue linkedBlockingQueue) {
            this.a = i;
            this.b = linkedBlockingQueue;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.lang.Runnable runnable;
            for (int i = 0; i < this.a && (runnable = (java.lang.Runnable) this.b.poll()) != null; i++) {
                runnable.run();
            }
        }
    }

    public W(android.content.Context context) {
        this.f1094c = context;
    }

    public static synchronized com.tencent.bugly.proguard.W a() {
        return a;
    }

    public static synchronized com.tencent.bugly.proguard.W a(android.content.Context context) {
        if (a == null) {
            a = new com.tencent.bugly.proguard.W(context);
        }
        return a;
    }

    private void a(int i, java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue) {
        if (i > 0) {
            com.tencent.bugly.proguard.aa.a("[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        }
        com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
        if (zC != null) {
            zC.a(new com.tencent.bugly.proguard.W.b(this, i, linkedBlockingQueue));
        }
    }

    private void a(java.lang.Runnable runnable, long j) {
        if (runnable == null) {
            com.tencent.bugly.proguard.aa.e("[UploadManager] Upload task should not be null", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        java.lang.Thread threadA = com.tencent.bugly.proguard.ha.a(runnable, "BUGLY_SYNC_UPLOAD");
        if (threadA == null) {
            com.tencent.bugly.proguard.aa.b("[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue.", new java.lang.Object[0]);
            a(runnable, true);
            return;
        }
        try {
            threadA.join(j);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue.", th.getMessage());
            a(runnable, true);
            c(0);
        }
    }

    private void a(java.lang.Runnable runnable, boolean z, boolean z2, long j) {
        if (runnable == null) {
            com.tencent.bugly.proguard.aa.e("[UploadManager] Upload task should not be null", new java.lang.Object[0]);
        }
        com.tencent.bugly.proguard.aa.a("[UploadManager] Add upload task (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        if (z2) {
            a(runnable, j);
        } else {
            a(runnable, z);
            c(0);
        }
    }

    public static void a(java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue, java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            java.lang.Runnable runnablePeek = linkedBlockingQueue.peek();
            if (runnablePeek == null) {
                return;
            }
            try {
                linkedBlockingQueue2.put(runnablePeek);
                linkedBlockingQueue.poll();
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b("[UploadManager] Failed to add upload task to temp urgent queue: %s", th.getMessage());
            }
        }
    }

    private boolean a(java.lang.Runnable runnable, boolean z) {
        if (runnable == null) {
            com.tencent.bugly.proguard.aa.c("[UploadManager] Upload task should not be null", new java.lang.Object[0]);
            return false;
        }
        try {
            com.tencent.bugly.proguard.aa.a("[UploadManager] Add upload task to queue (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
            synchronized (this.j) {
                (z ? this.h : this.i).put(runnable);
            }
            return true;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("[UploadManager] Failed to add upload task to queue: %s", th.getMessage());
            return false;
        }
    }

    public static /* synthetic */ int b(com.tencent.bugly.proguard.W w) {
        int i = w.l - 1;
        w.l = i;
        return i;
    }

    private void b(int i, java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue) {
        com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
        if (i > 0) {
            com.tencent.bugly.proguard.aa.a("[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        }
        for (int i2 = 0; i2 < i; i2++) {
            java.lang.Runnable runnablePoll = linkedBlockingQueue.poll();
            if (runnablePoll == null) {
                return;
            }
            synchronized (this.j) {
                if (this.l < 2 || zC == null) {
                    com.tencent.bugly.proguard.aa.c("[UploadManager] Create and start a new thread to execute a upload task: %s", "BUGLY_ASYNC_UPLOAD");
                    if (com.tencent.bugly.proguard.ha.a(new com.tencent.bugly.proguard.W.a(runnablePoll), "BUGLY_ASYNC_UPLOAD") != null) {
                        synchronized (this.j) {
                            this.l++;
                        }
                    } else {
                        com.tencent.bugly.proguard.aa.e("[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time.", new java.lang.Object[0]);
                        a(runnablePoll, true);
                    }
                } else {
                    zC.a(runnablePoll);
                }
            }
        }
    }

    private void c(int i) {
        int i2 = 0;
        if (i < 0) {
            com.tencent.bugly.proguard.aa.c("[UploadManager] Number of task to execute should >= 0", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
        java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue = new java.util.concurrent.LinkedBlockingQueue<>();
        java.util.concurrent.LinkedBlockingQueue<java.lang.Runnable> linkedBlockingQueue2 = new java.util.concurrent.LinkedBlockingQueue<>();
        synchronized (this.j) {
            com.tencent.bugly.proguard.aa.a("[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
            int size = this.h.size();
            int size2 = this.i.size();
            if (size == 0 && size2 == 0) {
                com.tencent.bugly.proguard.aa.a("[UploadManager] There is no upload task in queue.", new java.lang.Object[0]);
                return;
            }
            if (i != 0) {
                if (i < size) {
                    size2 = 0;
                    if (zC != null && zC.d()) {
                        i2 = size2;
                    }
                    a(this.h, linkedBlockingQueue, i);
                    a(this.i, linkedBlockingQueue2, i2);
                    b(i, linkedBlockingQueue);
                    a(i2, linkedBlockingQueue2);
                }
                if (i < size + size2) {
                    size2 = i - size;
                }
            }
            i = size;
            if (zC != null) {
                i2 = size2;
            }
            a(this.h, linkedBlockingQueue, i);
            a(this.i, linkedBlockingQueue2, i2);
            b(i, linkedBlockingQueue);
            a(i2, linkedBlockingQueue2);
        }
    }

    public long a(boolean z) {
        long jB;
        long jB2 = com.tencent.bugly.proguard.ha.b();
        int i = z ? 5 : 3;
        java.util.List<com.tencent.bugly.proguard.L> listA = this.b.a(i);
        if (listA == null || listA.size() <= 0) {
            jB = z ? this.f1098g : this.f1097f;
        } else {
            jB = 0;
            try {
                com.tencent.bugly.proguard.L l = listA.get(0);
                if (l.f1084e >= jB2) {
                    jB = com.tencent.bugly.proguard.ha.b(l.f1086g);
                    if (i == 3) {
                        this.f1097f = jB;
                    } else {
                        this.f1098g = jB;
                    }
                    listA.remove(l);
                }
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
            }
            if (listA.size() > 0) {
                this.b.a(listA);
            }
        }
        com.tencent.bugly.proguard.aa.a("[UploadManager] Local network consume: %d KB", java.lang.Long.valueOf(jB / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
        return jB;
    }

    public void a(int i, int i2, byte[] bArr, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, int i3, int i4, boolean z, java.util.Map<java.lang.String, java.lang.String> map) {
        try {
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            a(new com.tencent.bugly.proguard.X(this.f1094c, i, i2, bArr, str, str2, t, true, i3, i4, false, map), z, false, 0L);
        } catch (java.lang.Throwable th2) {
            th = th2;
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public void a(int i, int i2, byte[] bArr, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, long j, boolean z) {
        try {
            try {
                a(new com.tencent.bugly.proguard.X(this.f1094c, i, i2, bArr, str, str2, t, true, z), true, true, j);
            } catch (java.lang.Throwable th) {
                th = th;
                if (com.tencent.bugly.proguard.aa.b(th)) {
                    return;
                }
                th.printStackTrace();
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public void a(int i, int i2, byte[] bArr, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, boolean z, java.util.Map<java.lang.String, java.lang.String> map) {
        a(i, i2, bArr, str, str2, t, 0, 0, z, map);
    }

    public synchronized void a(int i, long j) {
        if (i >= 0) {
            this.f1096e.put(java.lang.Integer.valueOf(i), java.lang.Long.valueOf(j));
            com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
            l.b = i;
            l.f1084e = j;
            l.f1082c = "";
            l.f1083d = "";
            l.f1086g = new byte[0];
            this.b.b(i);
            this.b.c(l);
            com.tencent.bugly.proguard.aa.a("[UploadManager] Uploading(ID:%d) time: %s", java.lang.Integer.valueOf(i), com.tencent.bugly.proguard.ha.a(j));
        } else {
            com.tencent.bugly.proguard.aa.b("[UploadManager] Unknown uploading ID: %d", java.lang.Integer.valueOf(i));
        }
    }

    public void a(int i, com.tencent.bugly.proguard.ta taVar, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, long j, boolean z) {
        a(i, taVar.i, com.tencent.bugly.proguard.N.a((java.lang.Object) taVar), str, str2, t, j, z);
    }

    public void a(int i, com.tencent.bugly.proguard.ta taVar, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, boolean z) {
        a(i, taVar.i, com.tencent.bugly.proguard.N.a((java.lang.Object) taVar), str, str2, t, 0, 0, z, null);
    }

    public synchronized void a(long j, boolean z) {
        int i = z ? 5 : 3;
        com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
        l.b = i;
        l.f1084e = com.tencent.bugly.proguard.ha.b();
        l.f1082c = "";
        l.f1083d = "";
        l.f1086g = com.tencent.bugly.proguard.ha.b(j);
        this.b.b(i);
        this.b.c(l);
        if (z) {
            this.f1098g = j;
        } else {
            this.f1097f = j;
        }
        com.tencent.bugly.proguard.aa.a("[UploadManager] Network total consume: %d KB", java.lang.Long.valueOf(j / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
    }

    public boolean a(int i) {
        if (com.tencent.bugly.b.f893c) {
            com.tencent.bugly.proguard.aa.a("Uploading frequency will not be checked if SDK is in debug mode.", new java.lang.Object[0]);
            return true;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis() - b(i);
        com.tencent.bugly.proguard.aa.a("[UploadManager] Time interval is %d seconds since last uploading(ID: %d).", java.lang.Long.valueOf(jCurrentTimeMillis / 1000), java.lang.Integer.valueOf(i));
        if (jCurrentTimeMillis >= 30000) {
            return true;
        }
        com.tencent.bugly.proguard.aa.c("[UploadManager] Data only be uploaded once in %d seconds.", 30L);
        return false;
    }

    public synchronized long b(int i) {
        if (i >= 0) {
            java.lang.Long l = this.f1096e.get(java.lang.Integer.valueOf(i));
            if (l != null) {
                return l.longValue();
            }
        } else {
            com.tencent.bugly.proguard.aa.b("[UploadManager] Unknown upload ID: %d", java.lang.Integer.valueOf(i));
        }
        return 0L;
    }
}
