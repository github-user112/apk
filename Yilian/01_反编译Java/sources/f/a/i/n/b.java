package f.a.i.n;

/* loaded from: classes.dex */
public class b implements f.a.i.o.a {
    public static boolean I = false;
    public volatile android.media.MediaCodec a;
    public android.media.MediaCodec.BufferInfo b;

    /* renamed from: d, reason: collision with root package name */
    public f.a.i.n.b.C0088b f2958d;

    /* renamed from: g, reason: collision with root package name */
    public int f2961g;
    public int h;
    public boolean i;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f2957c = false;

    /* renamed from: e, reason: collision with root package name */
    public final java.util.concurrent.locks.ReentrantLock f2959e = new java.util.concurrent.locks.ReentrantLock();

    /* renamed from: f, reason: collision with root package name */
    public final java.util.concurrent.locks.ReentrantLock f2960f = new java.util.concurrent.locks.ReentrantLock();
    public volatile boolean j = true;
    public boolean k = false;
    public f.a.i.n.b.a l = null;
    public volatile boolean m = true;
    public boolean n = true;
    public java.io.BufferedOutputStream o = null;
    public java.lang.String p = "h264_debug.h264";
    public java.io.FileOutputStream q = null;
    public boolean r = false;
    public java.util.concurrent.ConcurrentLinkedQueue<java.lang.Long> s = new java.util.concurrent.ConcurrentLinkedQueue<>();
    public volatile long t = 0;
    public volatile long u = 0;
    public volatile long v = 0;
    public volatile long w = 0;
    public volatile long x = 0;
    public volatile long y = 0;
    public int z = 0;
    public long A = 0;
    public long B = 0;
    public long C = 0;
    public long D = 0;
    public long E = 0;
    public float F = 0.0f;
    public float G = 0.0f;
    public float H = 0.0f;

    public interface a {
        void a();
    }

    /* renamed from: f.a.i.n.b$b, reason: collision with other inner class name */
    public class C0088b extends java.lang.Thread {
        public C0088b() {
        }

        @Override // java.lang.Thread
        public void interrupt() {
            super.interrupt();
            if (f.a.i.n.b.this.f2960f.isLocked()) {
                try {
                    f.a.i.n.b.this.f2960f.unlock();
                } catch (java.lang.IllegalMonitorStateException e2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("interrupt renderLock unlock Exception msg = ");
                    sbO.append(e2.getMessage());
                    e.e.a.g.a(sbO.toString());
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            java.lang.String string = "RenderThread: begin";
            loop0: while (true) {
                e.e.a.g.a(string);
                while (f.a.i.n.b.this.f2957c && f.a.i.n.b.this.a != null && !java.lang.Thread.currentThread().isInterrupted()) {
                    try {
                        try {
                            if (f.a.i.n.b.this.w < f.a.i.n.b.this.x) {
                                f.a.i.n.b.this.y = java.lang.System.currentTimeMillis();
                                f.a.i.n.b.this.w++;
                            }
                            if (f.a.i.n.b.I) {
                                android.util.Log.d("EC_DECODE", "ooooout dequeueOutputBuffer start decodeOutputStartIndex = " + f.a.i.n.b.this.w);
                            }
                            f.a.i.n.b.this.f2960f.lock();
                            if (f.a.i.n.b.I) {
                                android.util.Log.d("EC_DECODE", "ooooout dequeueOutputBuffer outputBufferIndex begin");
                            }
                            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                            int iDequeueOutputBuffer = f.a.i.n.b.this.a.dequeueOutputBuffer(f.a.i.n.b.this.b, 10000L);
                            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                            long j = jCurrentTimeMillis2 - jCurrentTimeMillis;
                            if (j > 30 || f.a.i.n.b.I) {
                                android.util.Log.d("EC_DECODE", "ooooout dequeueOutputBuffer outputBufferIndex = " + iDequeueOutputBuffer + " outputIndexTime = " + j);
                            }
                            if (iDequeueOutputBuffer >= 0) {
                                f.a.i.n.b.this.a.releaseOutputBuffer(iDequeueOutputBuffer, f.a.i.n.b.this.m);
                                long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                                long j2 = jCurrentTimeMillis3 - jCurrentTimeMillis;
                                if (j2 > 40 || f.a.i.n.b.I) {
                                    android.util.Log.d("EC_DECODE", "ooooout dequeueOutputBuffer end decodeOutputIndex = " + f.a.i.n.b.this.x + ", cost time = " + j2 + " outputTime = " + (jCurrentTimeMillis3 - jCurrentTimeMillis2));
                                }
                                f.a.i.n.b.this.x++;
                                if (f.a.i.n.b.this.k) {
                                    java.lang.Long lPoll = f.a.i.n.b.this.s.poll();
                                    if (lPoll != null) {
                                        long jCurrentTimeMillis4 = java.lang.System.currentTimeMillis();
                                        f.a.i.n.b bVar = f.a.i.n.b.this;
                                        bVar.t = (jCurrentTimeMillis4 - lPoll.longValue()) + bVar.t;
                                    }
                                    f.a.i.n.b.this.E += f.a.i.n.b.this.s.size();
                                    f.a.i.n.b.this.e(java.lang.System.currentTimeMillis() - f.a.i.n.b.this.y);
                                }
                            }
                            if (iDequeueOutputBuffer == -1 && f.a.i.n.b.this == null) {
                                throw null;
                            }
                            try {
                                f.a.i.n.b.this.f2960f.unlock();
                            } catch (java.lang.IllegalMonitorStateException e2) {
                                java.lang.StringBuilder sbO = e.a.c.a.a.o("RenderThread renderLock unlock Exception msg = ");
                                sbO.append(e2.getMessage());
                                string = sbO.toString();
                            }
                        } catch (java.lang.Exception e3) {
                            e.e.a.g.c("dequeueOutputBuffer error " + e3.getMessage(), new java.lang.Object[0]);
                            e3.printStackTrace();
                            e.e.a.g.a("RenderThread: end");
                            return;
                        }
                    } finally {
                        try {
                            f.a.i.n.b.this.f2960f.unlock();
                        } catch (java.lang.IllegalMonitorStateException e4) {
                            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("RenderThread renderLock unlock Exception msg = ");
                            sbO2.append(e4.getMessage());
                            e.e.a.g.a(sbO2.toString());
                        }
                    }
                }
                break loop0;
            }
        }
    }

    public b(boolean z) {
        this.i = false;
        this.i = z;
        I = f.a.i.g.a.b(net.easyconn.FrameworkApplication.getContext()).a.getBoolean("key_ec_print_decode_logcat_state", false);
    }

    @Override // f.a.i.o.a
    public boolean a(int i, int i2, android.view.Surface surface) {
        if (this.r) {
            try {
                if (this.o != null) {
                    this.o.close();
                }
            } catch (java.lang.Exception e2) {
                e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.o(" DEBUG_H264 open File Error: ")), new java.lang.Object[0]);
            }
            try {
                java.io.File file = new java.io.File(d.s.y.I(), this.p);
                if (file.exists()) {
                    file.delete();
                }
                this.q = new java.io.FileOutputStream(file);
                this.o = new java.io.BufferedOutputStream(this.q);
            } catch (java.io.FileNotFoundException e3) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o(" DEBUG_H264 File Error: ");
                sbO.append(e3.getMessage());
                e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            }
        }
        try {
            e.e.a.g.a("EcVideoPlayer open, begin");
            this.f2959e.lock();
            e.e.a.g.a("EcVideoPlayer open, mDecodeStarted is " + this.f2957c);
            if (this.f2957c) {
                return true;
            }
            this.f2961g = i;
            this.h = i2;
            e.e.a.g.a("EcVideoPlayer open, mMirrorWidth:" + this.f2961g + ",mMirrorHeight:" + this.h);
            android.media.MediaFormat mediaFormatCreateVideoFormat = android.media.MediaFormat.createVideoFormat(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264, this.f2961g, this.h);
            java.util.Properties properties = f.a.i.m.d.f2935c;
            java.lang.String property = properties == null ? null : properties.getProperty("video_codec_name");
            this.a = android.text.TextUtils.isEmpty(property) ? android.media.MediaCodec.createDecoderByType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264) : android.media.MediaCodec.createByCodecName(property);
            java.util.Properties properties2 = f.a.i.m.d.f2935c;
            java.lang.String property2 = properties2 == null ? null : properties2.getProperty("codec_color_format");
            if (!android.text.TextUtils.isEmpty(property2)) {
                java.lang.String lowerCase = property2.toLowerCase();
                if (lowerCase.length() > 2 && lowerCase.startsWith("0x")) {
                    lowerCase = property2.substring(2);
                }
                mediaFormatCreateVideoFormat.setInteger("color-format", java.lang.Integer.parseInt(lowerCase, 16));
            }
            e.e.a.g.a("EcVideoPlayer open, set MediaFormat custom config");
            e.e.a.g.a("MediaFormat custom parent config");
            this.b = new android.media.MediaCodec.BufferInfo();
            this.a.configure(mediaFormatCreateVideoFormat, surface, (android.media.MediaCrypto) null, 0);
            this.a.start();
            e.e.a.g.a("EcVideoPlayer open, set MediaFormat custom config end");
            this.j = true;
            this.n = true;
            this.f2957c = true;
            if (f.a.i.m.g.b) {
                e.e.a.g.a("**=>MediaCodec multi thread.");
                f.a.i.n.b.C0088b c0088b = new f.a.i.n.b.C0088b();
                this.f2958d = c0088b;
                c0088b.setName("render_thread");
                this.f2958d.start();
            } else {
                e.e.a.g.a("**=>MediaCodec single thread.");
            }
            return true;
        } catch (java.lang.Exception e4) {
            e4.printStackTrace();
            e.e.a.g.c("open EcVideoPlayer exception: " + e4.getMessage(), new java.lang.Object[0]);
            return false;
        } finally {
            this.f2959e.unlock();
            e.e.a.g.a("EcVideoPlayer open, end");
        }
    }

    @Override // f.a.i.o.a
    public void b(byte[] bArr, int i, int i2) throws java.io.IOException {
        java.io.BufferedOutputStream bufferedOutputStream;
        if (this.r && (bufferedOutputStream = this.o) != null) {
            try {
                bufferedOutputStream.write(bArr, 0, i2);
            } catch (java.lang.Exception e2) {
                e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.o(" DEBUG_H264 write Error: ")), new java.lang.Object[0]);
            }
        }
        try {
            try {
                if (I) {
                    e.e.a.g.a("ecvideo play begin");
                }
                this.f2959e.lock();
            } catch (java.lang.Exception e3) {
                e.e.a.g.c("EcVideoPlayer play exception: " + e3.getMessage(), new java.lang.Object[0]);
                e3.printStackTrace();
                if (this.l != null) {
                    this.l.a();
                }
                this.f2959e.unlock();
                if (!I) {
                    return;
                }
            }
            if (this.f2957c && this.a != null) {
                if (this.j && this.i) {
                    f.a.i.n.d dVar = new f.a.i.n.d();
                    byte[] bArr2 = new byte[i2 - 1];
                    dVar.a = bArr2;
                    java.lang.System.arraycopy(bArr, 5, bArr2, 0, i2 - 5);
                    dVar.f2968c = 8;
                    android.graphics.Point pointH = dVar.h(dVar);
                    e.e.a.g.a(" Dump Size : (" + pointH.x + "*" + pointH.y + " mMirrorWidth:" + this.f2961g + " mMirrorHeight:" + this.h + ")");
                    if (pointH.x != this.f2961g || pointH.y != this.h) {
                        e.e.a.g.a("error: parse width & height is not match the configure width & height from phone");
                        if (this.l != null) {
                            this.l.a();
                        }
                        this.f2959e.unlock();
                        if (I) {
                            e.e.a.g.a("ecvideo play end");
                            return;
                        }
                        return;
                    }
                }
                if (this.v == Long.MAX_VALUE) {
                    e.e.a.g.a("decodeIndex is max value, reset it ");
                    this.v = 0L;
                }
                if (this.v == 0) {
                    this.y = java.lang.System.currentTimeMillis();
                }
                this.v++;
                if (this.k) {
                    this.s.offer(java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
                    this.u += i2;
                }
                if (f.a.i.m.g.b) {
                    if (this.n) {
                        e.e.a.g.c("dequeueInputBuffer start ", new java.lang.Object[0]);
                    }
                    if (I) {
                        android.util.Log.d("EC_DECODE", "innnnn dequeueInputBuffer inputBufferId begin");
                    }
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    int iDequeueInputBuffer = this.a.dequeueInputBuffer(-1L);
                    long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                    long j = jCurrentTimeMillis2 - jCurrentTimeMillis;
                    if (j > 40 || I) {
                        android.util.Log.d("EC_DECODE", "innnnn dequeueInputBuffer inputBufferId = " + iDequeueInputBuffer + " time = " + j);
                    }
                    if (iDequeueInputBuffer >= 0) {
                        (android.os.Build.VERSION.SDK_INT >= 21 ? this.a.getInputBuffer(iDequeueInputBuffer) : this.a.getInputBuffers()[iDequeueInputBuffer]).put(bArr, i, i2);
                        if (I) {
                            android.util.Log.d("EC_DECODE", "innnnn dequeueInputBuffer start decodeIndex = " + this.v);
                        }
                        if (this.j && this.i) {
                            int iD = d();
                            e.e.a.g.c("EC_DECODE getQueueInputBufferFlagOfFirstFrame flag = " + iD, new java.lang.Object[0]);
                            this.a.queueInputBuffer(iDequeueInputBuffer, i, i2, 0L, iD);
                            this.j = false;
                        } else {
                            this.a.queueInputBuffer(iDequeueInputBuffer, i, i2, 0L, 0);
                        }
                        long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                        long j2 = jCurrentTimeMillis3 - jCurrentTimeMillis;
                        if (j2 > 40 || I) {
                            android.util.Log.d("EC_DECODE", "innnnn dequeueInputBuffer end decodeIndex = " + this.v + ", cost time = " + j2 + " inputTime = " + (jCurrentTimeMillis3 - jCurrentTimeMillis2));
                        }
                        if (this.n) {
                            this.n = false;
                            e.e.a.g.c("dequeueInputBuffer data array firstFrameIsIDR = " + f(bArr), new java.lang.Object[0]);
                        }
                    }
                } else {
                    if (I) {
                        android.util.Log.d("EC_DECODE", "innnnn dequeueInputBuffer start playSingleThread");
                    }
                    g(bArr, i, i2);
                }
                this.f2959e.unlock();
                if (!I) {
                    return;
                }
                e.e.a.g.a("ecvideo play end");
                return;
            }
            e.e.a.g.c("decoder is null, mDecodeStarted is " + this.f2957c + "; mDecoder is " + this.a, new java.lang.Object[0]);
            this.f2959e.unlock();
            if (I) {
                e.e.a.g.a("ecvideo play end");
            }
        } catch (java.lang.Throwable th) {
            this.f2959e.unlock();
            if (I) {
                e.e.a.g.a("ecvideo play end");
            }
            throw th;
        }
    }

    @Override // f.a.i.o.a
    public void c(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.a.i.o.a
    public void close() {
        this.v = 0L;
        this.w = 0L;
        this.x = 0L;
        this.t = 0L;
        this.s.clear();
        try {
            if (this.r) {
                try {
                    if (this.o != null) {
                        this.o.close();
                    }
                } catch (java.lang.Exception e2) {
                    e.e.a.g.c(" DEBUG_H264 close File Error: " + e2.getMessage(), new java.lang.Object[0]);
                }
            }
            try {
                try {
                    e.e.a.g.a("close EcVideoPlayer begin");
                    this.f2959e.lock();
                    e.e.a.g.a("close EcVideoPlayer start");
                    this.f2957c = false;
                    if (this.f2958d != null) {
                        try {
                            try {
                                if (!this.f2958d.isInterrupted()) {
                                    this.f2958d.interrupt();
                                    try {
                                        this.f2958d.join(50L);
                                    } catch (java.lang.InterruptedException e3) {
                                        e.e.a.g.a("EcVideoPlayer join exception: " + e3.getMessage());
                                    }
                                }
                            } catch (java.lang.Exception e4) {
                                e.e.a.g.c("close EcVideoPlayer mRenderThread close error " + e4.getMessage(), new java.lang.Object[0]);
                                e4.printStackTrace();
                            }
                        } finally {
                            this.f2958d = null;
                        }
                    }
                    e.e.a.g.c("close EcVideoPlayer mDecoder start release", new java.lang.Object[0]);
                    if (this.a != null) {
                        this.a.stop();
                        this.a.release();
                        this.a = null;
                    }
                    this.j = true;
                } catch (java.lang.Exception e5) {
                    e.e.a.g.c("close EcVideoPlayer error " + e5.getMessage(), new java.lang.Object[0]);
                    e5.printStackTrace();
                }
            } finally {
                this.n = true;
                this.f2959e.unlock();
                e.e.a.g.a("close EcVideoPlayer end");
            }
        } finally {
            this.o = null;
        }
    }

    public int d() {
        java.util.Properties properties = f.a.i.m.d.f2935c;
        if (properties == null) {
            return 2;
        }
        java.lang.String property = properties.getProperty("flagIosInputBuffer");
        e.a.c.a.a.w("getFlagIosInputBuffer value = ", property);
        try {
            if (android.text.TextUtils.isEmpty(property)) {
                return 2;
            }
            return java.lang.Integer.parseInt(property);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getFlagIosInputBuffer Exception");
            sbO.append(e2.getMessage());
            e.e.a.g.a(sbO.toString());
            return 2;
        }
    }

    public void e(long j) {
        this.z++;
        this.D += j;
        if (this.A == 0) {
            this.A = java.lang.System.currentTimeMillis();
        }
        if (this.z == 30) {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            long j2 = this.A;
            if (jCurrentTimeMillis - j2 > 0) {
                this.B = 30000 / (jCurrentTimeMillis - j2);
                this.C = this.D / 30;
                this.H = this.E / 30.0f;
                this.F = this.t / 30.0f;
                this.G = (this.u * 8.0f) / (jCurrentTimeMillis - this.A);
                this.A = jCurrentTimeMillis;
                this.z = 0;
                this.D = 0L;
                this.E = 0L;
                this.t = 0L;
                this.u = 0L;
            }
        }
    }

    public boolean f(byte[] bArr) {
        int i;
        boolean z = false;
        for (int i2 = 0; i2 < bArr.length && bArr.length > (i = i2 + 4) && i2 <= 100; i2++) {
            if (bArr[i2] == 0 && bArr[i2 + 1] == 0) {
                int i3 = i2 + 2;
                if (bArr[i3] == 1) {
                    z = (bArr[i2 + 3] & 31) == 5;
                    if (z) {
                        break;
                    }
                }
                if (bArr[i3] == 0 && bArr[i2 + 3] == 1) {
                    z = (bArr[i] & 31) == 5;
                    if (z) {
                        break;
                    }
                }
            }
        }
        return z;
    }

    public void g(byte[] bArr, int i, int i2) throws android.media.MediaCodec.CryptoException {
        try {
            int iDequeueInputBuffer = this.a.dequeueInputBuffer(-1L);
            if (iDequeueInputBuffer >= 0) {
                (android.os.Build.VERSION.SDK_INT >= 21 ? this.a.getInputBuffer(iDequeueInputBuffer) : this.a.getInputBuffers()[iDequeueInputBuffer]).put(bArr, 0, i2);
                if (this.j && this.i) {
                    int iD = d();
                    e.e.a.g.c("EC_DECODE getQueueInputBufferFlagOfFirstFrame flag = " + iD, new java.lang.Object[0]);
                    this.a.queueInputBuffer(iDequeueInputBuffer, i, i2, 0L, iD);
                    this.j = false;
                } else {
                    this.a.queueInputBuffer(iDequeueInputBuffer, i, i2, 0L, 0);
                }
            } else {
                e.e.a.g.c("dequeueInputBuffer" + iDequeueInputBuffer, new java.lang.Object[0]);
            }
            int iDequeueOutputBuffer = this.a.dequeueOutputBuffer(this.b, 0L);
            if (iDequeueOutputBuffer >= 0) {
                this.a.releaseOutputBuffer(iDequeueOutputBuffer, this.m);
                return;
            }
            e.e.a.g.c("releaseOutputBuffer " + iDequeueOutputBuffer, new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public java.lang.String toString() {
        java.lang.String string = super.toString();
        try {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(" fps = ");
            stringBuffer.append(this.B);
            stringBuffer.append(" avgCacheSizePer30 = ");
            stringBuffer.append(java.lang.String.format("%.1f", java.lang.Float.valueOf(this.H)));
            stringBuffer.append(" avgDecodeDelayPer30 = ");
            stringBuffer.append(java.lang.String.format("%.0fms", java.lang.Float.valueOf(this.F)));
            stringBuffer.append("\navgBitratePer30 = ");
            stringBuffer.append(java.lang.String.format("%,dKb", java.lang.Integer.valueOf((int) this.G)));
            stringBuffer.append("  avgDecodeTimePer30 = ");
            stringBuffer.append(this.C);
            return stringBuffer.toString();
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            e.e.a.g.a(e2.getMessage());
            return string;
        }
    }
}
