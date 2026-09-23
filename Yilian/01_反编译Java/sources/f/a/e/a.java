package f.a.e;

/* loaded from: classes.dex */
public class a implements net.easyconn.jni.PlatinumReflection.ActionReflectionListener {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f2833d = true;
    public android.media.AudioTrack a;
    public f.a.e.a.b b;

    /* renamed from: c, reason: collision with root package name */
    public net.easyconn.airplay.MediaRenderService.a f2834c;

    /* renamed from: f.a.e.a$a, reason: collision with other inner class name */
    public class C0078a {
        public byte[] a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2835c;

        public C0078a(f.a.e.a aVar) {
        }
    }

    public class b implements java.lang.Runnable {
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2836c;

        /* renamed from: d, reason: collision with root package name */
        public volatile boolean f2837d;
        public f.a.e.a.C0078a[] a = new f.a.e.a.C0078a[1024];

        /* renamed from: e, reason: collision with root package name */
        public boolean f2838e = false;

        public b() {
            for (int i = 0; i < 1024; i++) {
                this.a[i] = new f.a.e.a.C0078a(f.a.e.a.this);
                this.a[i].a = new byte[2048];
            }
        }

        @Override // java.lang.Runnable
        public void run() throws java.lang.IllegalStateException, java.lang.InterruptedException {
            android.media.AudioTrack audioTrack;
            byte[] bArr = new byte[1024];
            while (true) {
                int i = this.f2836c;
                int i2 = this.b;
                int i3 = i - i2;
                if (i3 < 0) {
                    i3 = (65536 - i2) + i;
                }
                if (i3 >= 64 && this.f2838e) {
                    android.media.AudioTrack audioTrack2 = f.a.e.a.this.a;
                    if (audioTrack2 == null) {
                        return;
                    }
                    if (audioTrack2.getPlayState() != 3 && f.a.e.a.this.a.getState() == 1) {
                        f.a.e.a.this.a.play();
                    }
                    while (!this.f2837d && (audioTrack = f.a.e.a.this.a) != null) {
                        f.a.e.a.C0078a c0078a = this.a[this.b % 1024];
                        if (c0078a.f2835c) {
                            audioTrack.write(c0078a.a, 0, c0078a.b);
                            c0078a.f2835c = false;
                            this.b++;
                        } else if (audioTrack != null) {
                            audioTrack.write(bArr, 0, 1024);
                        }
                        if (this.b >= 65536) {
                            this.b = 0;
                        }
                    }
                    return;
                }
                if (f.a.e.a.this.a == null) {
                    return;
                }
                try {
                    java.lang.Thread.sleep(20L);
                } catch (java.lang.InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public a(net.easyconn.airplay.MediaRenderService.a aVar) {
        this.f2834c = aVar;
    }

    @Override // net.easyconn.jni.PlatinumReflection.ActionReflectionListener
    public void audio_destroy() throws java.lang.IllegalStateException {
        f.a.e.a.b bVar = this.b;
        if (bVar != null) {
            bVar.f2837d = true;
            this.b = null;
        }
        android.media.AudioTrack audioTrack = this.a;
        if (audioTrack != null) {
            audioTrack.flush();
            this.a.stop();
            this.a.release();
            this.a = null;
        }
    }

    @Override // net.easyconn.jni.PlatinumReflection.ActionReflectionListener
    public void audio_init(int i, int i2, int i3, int i4) {
        e.e.a.g.a("audio_init");
        if (this.a != null) {
            e.e.a.g.a("audio_init track is not null");
            return;
        }
        e.e.a.g.a("audio_init track is null");
        if (this.b != null) {
            e.e.a.g.a("mAudioPlayer call stop");
            this.b.f2837d = true;
        }
        int minBufferSize = android.media.AudioTrack.getMinBufferSize(i3, 12, 2);
        e.e.a.g.a("minBufferSize：" + minBufferSize);
        this.b = new f.a.e.a.b();
        this.a = new android.media.AudioTrack(3, i3, 12, 2, minBufferSize, 1);
        java.lang.Thread thread = new java.lang.Thread(this.b, "Audio player");
        thread.setPriority(10);
        thread.start();
    }

    @Override // net.easyconn.jni.PlatinumReflection.ActionReflectionListener
    public void audio_process(byte[] bArr, int i, int i2) {
        f.a.e.a.b bVar = this.b;
        if (bVar == null || !f2833d) {
            return;
        }
        if (!bVar.f2838e) {
            bVar.f2836c = 0;
            bVar.b = 0;
            bVar.f2838e = true;
        }
        synchronized (bVar.a) {
            f.a.e.a.C0078a c0078a = bVar.a[bVar.f2836c % 1024];
            java.lang.System.arraycopy(bArr, 0, c0078a.a, 0, bArr.length);
            c0078a.b = bArr.length;
            c0078a.f2835c = true;
        }
        bVar.f2836c++;
    }

    @Override // net.easyconn.jni.PlatinumReflection.ActionReflectionListener
    public void onActionInvoke(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        e.e.a.g.a("onActionInvoke, cmd:" + i + "," + str);
        net.easyconn.airplay.MediaRenderService.a aVar = this.f2834c;
        if (aVar == null) {
            throw null;
        }
        android.content.Intent intent = new android.content.Intent();
        intent.setAction("com.carbit.airplay_ctr");
        intent.putExtra(com.umeng.analytics.pro.c.y, 1);
        intent.putExtra("cmd", i);
        intent.putExtra("value", str);
        intent.putExtra("data", str2);
        intent.putExtra("title", str3);
        net.easyconn.airplay.MediaRenderService.this.sendBroadcast(intent);
    }

    @Override // net.easyconn.jni.PlatinumReflection.ActionReflectionListener
    public void onActionInvoke(int i, java.lang.String str, byte[] bArr, java.lang.String str2) {
        e.e.a.g.a("onActionInvoke, cmd:" + i + ",  " + str2);
        net.easyconn.airplay.MediaRenderService.a aVar = this.f2834c;
        if (aVar == null) {
            throw null;
        }
        android.content.Intent intent = new android.content.Intent();
        intent.setAction("com.carbit.airplay_ctr");
        intent.putExtra(com.umeng.analytics.pro.c.y, 2);
        intent.putExtra("cmd", i);
        intent.putExtra("value", str);
        intent.putExtra("data", bArr);
        intent.putExtra("title", str2);
        net.easyconn.airplay.MediaRenderService.this.sendBroadcast(intent);
    }
}
