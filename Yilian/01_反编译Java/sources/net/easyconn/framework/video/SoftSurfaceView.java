package net.easyconn.framework.video;

/* loaded from: classes.dex */
public class SoftSurfaceView extends android.opengl.GLSurfaceView {
    public android.opengl.GLSurfaceView.Renderer a;
    public android.view.SurfaceHolder.Callback b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3183c;

    /* renamed from: d, reason: collision with root package name */
    public int f3184d;

    /* renamed from: e, reason: collision with root package name */
    public long f3185e;

    /* renamed from: f, reason: collision with root package name */
    public long f3186f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3187g;
    public boolean h;
    public java.io.BufferedOutputStream i;
    public int j;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ android.view.ViewGroup.LayoutParams a;

        public a(android.view.ViewGroup.LayoutParams layoutParams) {
            this.a = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.framework.video.SoftSurfaceView.this.setLayoutParams(this.a);
        }
    }

    public class b implements android.opengl.GLSurfaceView.Renderer {
        public java.util.Queue<f.a.i.n.c.b> b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3188c;

        /* renamed from: e, reason: collision with root package name */
        public android.graphics.Point f3190e;

        /* renamed from: g, reason: collision with root package name */
        public boolean f3192g;
        public boolean h;
        public boolean a = false;

        /* renamed from: d, reason: collision with root package name */
        public boolean f3189d = true;

        /* renamed from: f, reason: collision with root package name */
        public final byte[] f3191f = {0, 0, 0, 1};

        public b(net.easyconn.framework.video.SoftSurfaceView.a aVar) {
            new java.util.concurrent.atomic.AtomicBoolean(true);
            this.f3192g = false;
        }

        public final boolean a(byte[] bArr) {
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
            e.a.c.a.a.z("is IFrame:", z);
            return z;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl10) throws java.lang.InterruptedException {
            boolean z;
            gl10.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            gl10.glClear(16640);
            if (this.b == null) {
                return;
            }
            if (this.f3188c) {
                try {
                    java.lang.Thread.sleep(10L);
                    return;
                } catch (java.lang.Exception unused) {
                    return;
                }
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            while (!this.f3188c && this.b != null) {
                synchronized (this) {
                    z = true;
                    try {
                    } catch (java.lang.Throwable th) {
                        th.printStackTrace();
                    }
                    if (this.b == null) {
                        z = false;
                    } else {
                        f.a.i.n.c.b bVarPoll = null;
                        try {
                            bVarPoll = this.b.poll();
                        } catch (java.lang.Exception e2) {
                            e2.printStackTrace();
                        }
                        if (bVarPoll == null) {
                            try {
                                java.lang.Thread.sleep(10L);
                            } catch (java.lang.Exception unused2) {
                            }
                            int iRender = net.easyconn.GL2JNILib.render();
                            if (iRender != 1) {
                                z = false;
                            }
                        } else {
                            byte[] bArrA = bVarPoll.a();
                            int i = bVarPoll.f2965c;
                            if (i == 0) {
                                bVarPoll.b();
                                z = false;
                            } else {
                                java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArrA, 0, i);
                                byteBufferWrap.order(java.nio.ByteOrder.BIG_ENDIAN);
                                byteBufferWrap.position(0);
                                if (bVarPoll.a == 1) {
                                    byteBufferWrap.position(6);
                                    int i2 = byteBufferWrap.getShort();
                                    byte[] bArr = new byte[i2];
                                    byteBufferWrap.get(bArr);
                                    byteBufferWrap.get();
                                    int i3 = byteBufferWrap.getShort();
                                    byte[] bArr2 = new byte[i3];
                                    byteBufferWrap.get(bArr2);
                                    java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(i3 + i2 + 8);
                                    byteBufferAllocate.put(this.f3191f).put(bArr).put(this.f3191f).put(bArr2).rewind();
                                    byte[] bArrArray = byteBufferAllocate.array();
                                    net.easyconn.GL2JNILib.decord(bArrArray, byteBufferAllocate.capacity(), this.f3189d ? 1 : 0);
                                    if (net.easyconn.framework.video.SoftSurfaceView.this.h && net.easyconn.framework.video.SoftSurfaceView.this.i != null) {
                                        net.easyconn.framework.video.SoftSurfaceView.this.i.write(bArrArray, 0, byteBufferAllocate.capacity());
                                    }
                                    bVarPoll.b();
                                    f.a.i.n.d dVar = new f.a.i.n.d();
                                    int i4 = i2 - 1;
                                    byte[] bArr3 = new byte[i4];
                                    dVar.a = bArr3;
                                    java.lang.System.arraycopy(bArr, 1, bArr3, 0, i4);
                                    dVar.f2968c = 8;
                                    this.f3190e = dVar.h(dVar);
                                    e.e.a.g.a(" Dump Size : (" + this.f3190e.x + "*" + this.f3190e.y + ")");
                                    if (this.f3190e.x > this.f3190e.y) {
                                        net.easyconn.framework.video.SoftSurfaceView.this.f3187g = true;
                                    } else {
                                        net.easyconn.framework.video.SoftSurfaceView.this.f3187g = false;
                                    }
                                } else {
                                    for (int iPosition = 0; iPosition < i - 4; iPosition = byteBufferWrap.position()) {
                                        int i5 = byteBufferWrap.getInt();
                                        byteBufferWrap.position(byteBufferWrap.position() - 4);
                                        byteBufferWrap.put(this.f3191f);
                                        if (i5 <= 0) {
                                            break;
                                        }
                                        byteBufferWrap.position(byteBufferWrap.position() + i5);
                                    }
                                    byte[] bArrA2 = bVarPoll.a();
                                    if (!this.h) {
                                        boolean zA = a(bArrA2);
                                        this.h = zA;
                                        if (!zA) {
                                            bVarPoll.b();
                                        }
                                    }
                                    int iDecord = net.easyconn.GL2JNILib.decord(bArrA2, i, this.f3189d ? 1 : 0);
                                    if (net.easyconn.framework.video.SoftSurfaceView.this.h && net.easyconn.framework.video.SoftSurfaceView.this.i != null) {
                                        net.easyconn.framework.video.SoftSurfaceView.this.i.write(bArrA2, 0, i);
                                    }
                                    bVarPoll.b();
                                    if (iDecord == 1) {
                                        net.easyconn.framework.video.SoftSurfaceView.a(net.easyconn.framework.video.SoftSurfaceView.this);
                                    }
                                }
                                z = false;
                            }
                        }
                    }
                }
                if (z || java.lang.System.currentTimeMillis() - jCurrentTimeMillis > 100) {
                    return;
                } else {
                    try {
                        java.lang.Thread.sleep(10L);
                    } catch (java.lang.Exception unused3) {
                    }
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl10, int i, int i2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ECdebug onSurfaceChanged ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null && !this.a) {
                callback.surfaceChanged(null, 0, i, i2);
            }
            if (this.a) {
                return;
            }
            this.a = true;
            this.f3188c = false;
            e.a.c.a.a.C(e.a.c.a.a.o("onSurfaceChanged m_stop="), this.f3188c);
            net.easyconn.GL2JNILib.init(i, i2, i, i2, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl10, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ECdebug surfaceCreated ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null) {
                callback.surfaceCreated(null);
            }
        }
    }

    public class c implements android.opengl.GLSurfaceView.EGLConfigChooser {

        /* renamed from: c, reason: collision with root package name */
        public int f3193c;

        /* renamed from: d, reason: collision with root package name */
        public int f3194d;

        /* renamed from: e, reason: collision with root package name */
        public int f3195e;

        /* renamed from: f, reason: collision with root package name */
        public int f3196f;

        /* renamed from: g, reason: collision with root package name */
        public int f3197g;
        public int h;
        public int a = 4;
        public int[] b = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};
        public int[] i = new int[1];

        public c(net.easyconn.framework.video.SoftSurfaceView softSurfaceView, int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3193c = i;
            this.f3194d = i2;
            this.f3195e = i3;
            this.f3196f = i4;
            this.f3197g = i5;
            this.h = i6;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public javax.microedition.khronos.egl.EGLConfig chooseConfig(javax.microedition.khronos.egl.EGL10 egl10, javax.microedition.khronos.egl.EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            egl10.eglChooseConfig(eGLDisplay, this.b, null, 0, iArr);
            int i = iArr[0];
            if (i <= 0) {
                throw new java.lang.IllegalArgumentException("No configs match configSpec");
            }
            javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr = new javax.microedition.khronos.egl.EGLConfig[i];
            egl10.eglChooseConfig(eGLDisplay, this.b, eGLConfigArr, i, iArr);
            for (int i2 = 0; i2 < i; i2++) {
                javax.microedition.khronos.egl.EGLConfig eGLConfig = eGLConfigArr[i2];
                int i3 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12325, this.i) ? this.i[0] : 0;
                int i4 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12326, this.i) ? this.i[0] : 0;
                if (i3 >= this.f3197g && i4 >= this.h) {
                    int i5 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12324, this.i) ? this.i[0] : 0;
                    int i6 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12323, this.i) ? this.i[0] : 0;
                    int i7 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12322, this.i) ? this.i[0] : 0;
                    int i8 = egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12321, this.i) ? this.i[0] : 0;
                    if (i5 == this.f3193c && i6 == this.f3194d && i7 == this.f3195e && i8 == this.f3196f) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    public class d implements android.opengl.GLSurfaceView.EGLContextFactory {
        public int a = 12440;

        public d(net.easyconn.framework.video.SoftSurfaceView softSurfaceView, net.easyconn.framework.video.SoftSurfaceView.a aVar) {
        }

        public final void a(java.lang.String str, javax.microedition.khronos.egl.EGL10 egl10) {
            while (true) {
                int iEglGetError = egl10.eglGetError();
                if (iEglGetError == 12288) {
                    return;
                } else {
                    e.e.a.g.c(java.lang.String.format("%s: EGL error: 0x%x", str, java.lang.Integer.valueOf(iEglGetError)), new java.lang.Object[0]);
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public javax.microedition.khronos.egl.EGLContext createContext(javax.microedition.khronos.egl.EGL10 egl10, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            e.e.a.g.a.b(5, null, "creating OpenGL ES 2.0 context", new java.lang.Object[0]);
            a("Before eglCreateContext", egl10);
            javax.microedition.khronos.egl.EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, javax.microedition.khronos.egl.EGL10.EGL_NO_CONTEXT, new int[]{this.a, 2, 12344});
            a("After eglCreateContext", egl10);
            return eGLContextEglCreateContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(javax.microedition.khronos.egl.EGL10 egl10, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLContext eGLContext) {
            egl10.eglDestroyContext(eGLDisplay, eGLContext);
        }
    }

    public class e implements android.opengl.GLSurfaceView.Renderer {
        public java.util.Queue<f.a.i.n.c.b> b;

        /* renamed from: d, reason: collision with root package name */
        public boolean f3199d;
        public boolean a = false;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3198c = true;

        public e(net.easyconn.framework.video.SoftSurfaceView.a aVar) {
            new java.util.concurrent.atomic.AtomicBoolean(true);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl10) throws java.lang.InterruptedException {
            if (this.b == null) {
                return;
            }
            int i = 100;
            while (true) {
                if (this.f3199d) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        return;
                    } else {
                        i = i2;
                    }
                }
                try {
                    f.a.i.n.c.b bVarPoll = this.b.poll();
                    if (bVarPoll != null) {
                        int iDecord = net.easyconn.GL2JNILib.decord(bVarPoll.a(), bVarPoll.f2965c, this.f3198c ? 1 : 0);
                        bVarPoll.b();
                        if (iDecord == 1) {
                            net.easyconn.framework.video.SoftSurfaceView.a(net.easyconn.framework.video.SoftSurfaceView.this);
                            return;
                        }
                        return;
                    }
                    try {
                        java.lang.Thread.sleep(10L);
                    } catch (java.lang.InterruptedException unused) {
                    }
                } catch (java.lang.Exception e2) {
                    e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.o("onDrawFrame: Exception ")), new java.lang.Object[0]);
                    return;
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl10, int i, int i2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SoftSurfaceView onSurfaceChanged ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("SoftSurfaceView onSurfaceChanged width = ");
            sb.append(i);
            sb.append(" , height = ");
            e.a.c.a.a.A(sb, i2);
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null && !this.a) {
                callback.surfaceChanged(null, 0, i, i2);
            }
            if (this.a) {
                return;
            }
            this.a = true;
            this.f3199d = false;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), this.f3199d);
            net.easyconn.GL2JNILib.init(i, i2, i, i2, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl10, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SoftSurfaceView surfaceCreated ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null) {
                callback.surfaceCreated(null);
            }
        }
    }

    public class f implements android.opengl.GLSurfaceView.Renderer {
        public java.util.Queue<f.a.i.n.c.b> b;

        /* renamed from: d, reason: collision with root package name */
        public boolean f3202d;
        public boolean a = false;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3201c = true;

        public f(net.easyconn.framework.video.SoftSurfaceView.a aVar) {
            new java.util.concurrent.atomic.AtomicBoolean(true);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl10) throws java.lang.InterruptedException {
            if (net.easyconn.framework.video.SoftSurfaceView.this.f3183c) {
                gl10.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                gl10.glClear(16640);
            }
            if (this.b == null) {
                return;
            }
            int i = 100;
            while (true) {
                if (this.f3202d) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        return;
                    } else {
                        i = i2;
                    }
                }
                try {
                    f.a.i.n.c.b bVarPoll = this.b.poll();
                    if (bVarPoll != null) {
                        int iDecord = net.easyconn.GL2JNILib.decord(bVarPoll.a(), bVarPoll.f2965c, this.f3201c ? 1 : 0);
                        bVarPoll.b();
                        if (iDecord == 1) {
                            net.easyconn.framework.video.SoftSurfaceView.a(net.easyconn.framework.video.SoftSurfaceView.this);
                            return;
                        }
                        return;
                    }
                    try {
                        java.lang.Thread.sleep(10L);
                    } catch (java.lang.InterruptedException unused) {
                    }
                } catch (java.lang.Exception e2) {
                    e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.o("onDrawFrame: Exception ")), new java.lang.Object[0]);
                    return;
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl10, int i, int i2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SoftSurfaceView onSurfaceChanged ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("SoftSurfaceView onSurfaceChanged width = ");
            sb.append(i);
            sb.append(" , height = ");
            e.a.c.a.a.A(sb, i2);
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null && !this.a) {
                callback.surfaceChanged(null, 0, i, i2);
            }
            if (this.a) {
                return;
            }
            this.a = true;
            this.f3202d = false;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), this.f3202d);
            net.easyconn.GL2JNILib.init(i, i2, i, i2, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl10, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SoftSurfaceView surfaceCreated ");
            sbO.append(toString());
            e.e.a.g.a(sbO.toString());
            android.view.SurfaceHolder.Callback callback = net.easyconn.framework.video.SoftSurfaceView.this.b;
            if (callback != null) {
                callback.surfaceCreated(null);
            }
        }
    }

    public SoftSurfaceView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3183c = false;
        this.f3184d = 0;
        this.h = false;
        this.i = null;
        this.j = 1;
        setEGLContextFactory(new net.easyconn.framework.video.SoftSurfaceView.d(this, null));
        setEGLConfigChooser(new net.easyconn.framework.video.SoftSurfaceView.c(this, 5, 6, 5, 0, 0, 0));
    }

    public static void a(net.easyconn.framework.video.SoftSurfaceView softSurfaceView) {
        softSurfaceView.f3184d++;
        if (softSurfaceView.f3185e == 0) {
            softSurfaceView.f3185e = java.lang.System.currentTimeMillis();
        }
        if (softSurfaceView.f3184d == 30) {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            softSurfaceView.f3186f = 30000 / (jCurrentTimeMillis - softSurfaceView.f3185e);
            softSurfaceView.f3185e = jCurrentTimeMillis;
            softSurfaceView.f3184d = 0;
        }
    }

    public long getFps() {
        return this.f3186f;
    }

    public android.view.ViewGroup.LayoutParams getParams() {
        return getLayoutParams();
    }

    public android.opengl.GLSurfaceView.Renderer getRenderer() {
        return this.a;
    }

    public void setCallback(android.view.SurfaceHolder.Callback callback) {
        this.b = callback;
    }

    public void setDataSource(java.util.Queue queue) {
        boolean zBooleanValue;
        e.e.a.g.a("airplaytest SoftSurfaceView setDataSource");
        int i = this.j;
        if (i == 1) {
            net.easyconn.framework.video.SoftSurfaceView.f fVar = (net.easyconn.framework.video.SoftSurfaceView.f) this.a;
            fVar.b = queue;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), fVar.f3202d);
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            net.easyconn.framework.video.SoftSurfaceView.e eVar = (net.easyconn.framework.video.SoftSurfaceView.e) this.a;
            eVar.b = queue;
            e.a.c.a.a.C(e.a.c.a.a.o("m_stop="), eVar.f3199d);
            return;
        }
        net.easyconn.framework.video.SoftSurfaceView.b bVar = (net.easyconn.framework.video.SoftSurfaceView.b) this.a;
        bVar.b = queue;
        java.util.Properties properties = f.a.i.m.d.f2935c;
        if (properties == null) {
            zBooleanValue = f.a.i.m.g.f2938e;
        } else {
            java.lang.String property = properties.getProperty("enable_ios_decode_px3");
            try {
                zBooleanValue = !android.text.TextUtils.isEmpty(property) ? java.lang.Boolean.valueOf(property).booleanValue() : f.a.i.m.g.f2938e;
            } catch (java.lang.Exception unused) {
                zBooleanValue = false;
            }
        }
        bVar.f3192g = zBooleanValue;
        e.a.c.a.a.C(e.a.c.a.a.o("AirplayRenderer setH264Queue m_stop="), bVar.f3188c);
    }

    public void setParams(android.view.ViewGroup.LayoutParams layoutParams) {
        post(new net.easyconn.framework.video.SoftSurfaceView.a(layoutParams));
    }

    public void setRenderer(int i) {
        android.opengl.GLSurfaceView.Renderer fVar;
        this.j = i;
        if (i == 1) {
            fVar = new net.easyconn.framework.video.SoftSurfaceView.f(null);
        } else {
            if (i != 2) {
                if (i == 3) {
                    fVar = new net.easyconn.framework.video.SoftSurfaceView.e(null);
                }
                setRenderer(this.a);
            }
            fVar = new net.easyconn.framework.video.SoftSurfaceView.b(null);
        }
        this.a = fVar;
        setRenderer(this.a);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(android.view.SurfaceHolder surfaceHolder) {
        e.e.a.g.c("ECdebug surfaceDestroyed", new java.lang.Object[0]);
        android.view.SurfaceHolder.Callback callback = this.b;
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
        super.surfaceDestroyed(surfaceHolder);
    }
}
