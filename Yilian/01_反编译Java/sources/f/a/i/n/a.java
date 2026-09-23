package f.a.i.n;

/* loaded from: classes.dex */
public class a implements f.a.i.o.a {
    public net.easyconn.framework.video.SoftSurfaceView a;
    public f.a.i.n.c b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f2952c;

    /* renamed from: d, reason: collision with root package name */
    public android.os.Handler f2953d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.Runnable f2954e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.concurrent.LinkedBlockingQueue<f.a.i.n.c.b> f2955f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2956g = false;
    public int h = 0;
    public long i = 0;

    /* renamed from: f.a.i.n.a$a, reason: collision with other inner class name */
    public class RunnableC0087a implements java.lang.Runnable {
        public RunnableC0087a(f.a.i.n.a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.e.a.g.a("runnable close surface render");
        }
    }

    public a(android.view.SurfaceView surfaceView, android.content.Context context) {
        if (surfaceView instanceof net.easyconn.framework.video.SoftSurfaceView) {
            this.a = (net.easyconn.framework.video.SoftSurfaceView) surfaceView;
        }
        this.f2952c = context;
    }

    @Override // f.a.i.o.a
    public boolean a(int i, int i2, android.view.Surface surface) {
        this.b = new f.a.i.n.c(i * i2);
        java.util.concurrent.LinkedBlockingQueue<f.a.i.n.c.b> linkedBlockingQueue = new java.util.concurrent.LinkedBlockingQueue<>();
        this.f2955f = linkedBlockingQueue;
        this.a.setDataSource(linkedBlockingQueue);
        net.easyconn.framework.video.SoftSurfaceView softSurfaceView = this.a;
        if (softSurfaceView == null) {
            throw null;
        }
        e.e.a.g.a("airplaytest SoftSurfaceView start");
        int i3 = softSurfaceView.j;
        if (i3 == 1) {
            net.easyconn.framework.video.SoftSurfaceView.f fVar = (net.easyconn.framework.video.SoftSurfaceView.f) softSurfaceView.a;
            if (fVar == null) {
                throw null;
            }
            e.e.a.g.a("start ==========>");
            fVar.f3202d = false;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), fVar.f3202d);
        } else if (i3 == 2) {
            net.easyconn.framework.video.SoftSurfaceView.b bVar = (net.easyconn.framework.video.SoftSurfaceView.b) softSurfaceView.a;
            if (bVar == null) {
                throw null;
            }
            e.e.a.g.a("ECdebug start ==========>");
            if (bVar.f3192g) {
                net.easyconn.framework.video.SoftSurfaceView.this.setRenderMode(1);
            }
            bVar.f3188c = false;
            e.a.c.a.a.C(e.a.c.a.a.o("AirplayRenderer start m_stop="), bVar.f3188c);
            if (net.easyconn.framework.video.SoftSurfaceView.this.h) {
                try {
                    java.io.File file = new java.io.File(d.s.y.I(), "h264_airplay.h264");
                    if (file.exists()) {
                        file.delete();
                    }
                    java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file);
                    net.easyconn.framework.video.SoftSurfaceView.this.i = new java.io.BufferedOutputStream(fileOutputStream);
                } catch (java.io.FileNotFoundException unused) {
                }
            }
        } else if (i3 == 3) {
            net.easyconn.framework.video.SoftSurfaceView.e eVar = (net.easyconn.framework.video.SoftSurfaceView.e) softSurfaceView.a;
            if (eVar == null) {
                throw null;
            }
            e.e.a.g.a("start ==========>");
            eVar.f3199d = false;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), eVar.f3199d);
        }
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("soft_control_thread");
        handlerThread.start();
        this.f2953d = new android.os.Handler(handlerThread.getLooper());
        f.a.i.n.a.RunnableC0087a runnableC0087a = new f.a.i.n.a.RunnableC0087a(this);
        this.f2954e = runnableC0087a;
        this.f2953d.postDelayed(runnableC0087a, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        return true;
    }

    @Override // f.a.i.o.a
    public void b(byte[] bArr, int i, int i2) throws java.lang.InterruptedException {
        android.os.Handler handler = this.f2953d;
        if (handler != null) {
            handler.removeCallbacks(this.f2954e);
            this.f2953d.getLooper().quit();
            this.f2953d = null;
            e.e.a.g.a("has video data,remove close runnable ");
        }
        if (this.f2956g) {
            int i3 = 100;
            while (this.f2955f.size() > 2) {
                int i4 = i3 - 1;
                if (i3 <= 0) {
                    break;
                }
                try {
                    e.e.a.g.a("EcSoftVideoPlayer offer wait");
                    java.lang.Thread.sleep(10L);
                } catch (java.lang.Exception unused) {
                }
                i3 = i4;
            }
        }
        this.f2955f.offer(this.b.a(bArr, i, i2, 0));
        e.e.a.g.a("EcSoftVideoPlayer offer");
        if (f.a.i.m.g.S(this.f2952c)) {
            d();
        }
    }

    @Override // f.a.i.o.a
    public void c(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        this.f2955f.offer(this.b.a(bArr, i, i2, 0));
        if (f.a.i.m.g.S(this.f2952c)) {
            d();
        }
    }

    @Override // f.a.i.o.a
    public void close() {
        net.easyconn.framework.video.SoftSurfaceView softSurfaceView = this.a;
        int i = softSurfaceView.j;
        if (i == 1) {
            net.easyconn.framework.video.SoftSurfaceView.f fVar = (net.easyconn.framework.video.SoftSurfaceView.f) softSurfaceView.a;
            if (fVar == null) {
                throw null;
            }
            e.e.a.g.a("stop==========>");
            fVar.f3202d = true;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), fVar.f3202d);
            fVar.a = false;
            e.e.a.g.a("clearQueue");
            if (fVar.b != null) {
                while (true) {
                    f.a.i.n.c.b bVarPoll = fVar.b.poll();
                    if (bVarPoll == null) {
                        break;
                    } else {
                        bVarPoll.b();
                    }
                }
            }
            e.e.a.g.a("clearQueue end");
        } else if (i == 2) {
            net.easyconn.framework.video.SoftSurfaceView.b bVar = (net.easyconn.framework.video.SoftSurfaceView.b) softSurfaceView.a;
            if (bVar == null) {
                throw null;
            }
            e.e.a.g.a("ECdebug stop==========>");
            if (bVar.f3192g) {
                net.easyconn.framework.video.SoftSurfaceView.this.setRenderMode(0);
            }
            bVar.f3188c = true;
            e.a.c.a.a.C(e.a.c.a.a.o("AirplayRenderer stop m_stop="), bVar.f3188c);
            bVar.a = false;
            e.e.a.g.a("ECdebug clearQueue");
            if (bVar.b != null) {
                while (true) {
                    f.a.i.n.c.b bVarPoll2 = bVar.b.poll();
                    if (bVarPoll2 == null) {
                        break;
                    } else {
                        bVarPoll2.b();
                    }
                }
            }
        } else if (i == 3) {
            net.easyconn.framework.video.SoftSurfaceView.e eVar = (net.easyconn.framework.video.SoftSurfaceView.e) softSurfaceView.a;
            if (eVar == null) {
                throw null;
            }
            e.e.a.g.a("stop==========>");
            eVar.f3199d = true;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), eVar.f3199d);
            eVar.a = false;
            e.e.a.g.a("clearQueue");
            if (eVar.b != null) {
                while (true) {
                    f.a.i.n.c.b bVarPoll3 = eVar.b.poll();
                    if (bVarPoll3 == null) {
                        break;
                    } else {
                        bVarPoll3.b();
                    }
                }
            }
            e.e.a.g.a("clearQueue end");
        }
        android.os.Handler handler = this.f2953d;
        if (handler != null) {
            handler.removeCallbacks(this.f2954e);
            this.f2953d.getLooper().quit();
            this.f2953d = null;
        }
    }

    public final void d() {
        this.h++;
        if (this.i == 0) {
            this.i = java.lang.System.currentTimeMillis();
        }
        if (this.h == 30) {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            long j = 30000 / (jCurrentTimeMillis - this.i);
            this.i = jCurrentTimeMillis;
            this.h = 0;
        }
    }

    public java.lang.String toString() {
        java.lang.String string = super.toString();
        try {
            return this.a.getFps() + " avgDecodeTimePer30 = 0";
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            e.e.a.g.a(e2.getMessage());
            return string;
        }
    }
}
