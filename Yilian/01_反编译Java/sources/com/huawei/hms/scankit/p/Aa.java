package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Aa {
    public final boolean a;
    public com.huawei.hms.scankit.p.C0230xa b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.Aa.c f480c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p.Aa.a f481d;

    /* renamed from: e, reason: collision with root package name */
    public android.hardware.Camera.PreviewCallback f482e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.ref.WeakReference<android.content.Context> f483f;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.scankit.p.Ha f484g;
    public com.huawei.hms.scankit.p.Ga h;
    public com.huawei.hms.scankit.p.Ja i;
    public com.huawei.hms.scankit.p.Ia j;
    public android.hardware.Camera k;
    public com.huawei.hms.scankit.p.Fa l;
    public com.huawei.hms.scankit.p.Ka m;
    public java.lang.String n;
    public com.huawei.hms.scankit.p.Aa.b o = com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED;
    public boolean p = false;
    public int q = -1;

    public interface a {
        void a(android.graphics.Point point);
    }

    public enum b {
        CAMERA_CLOSED(1),
        CAMERA_OPENED(2),
        CAMERA_INITIALED(3),
        PREVIEW_STARTED(4),
        PREVIEW_STOPPED(5);


        /* renamed from: g, reason: collision with root package name */
        public final int f489g;

        b(int i) {
            this.f489g = i;
        }

        public final int a() {
            return this.f489g;
        }
    }

    public interface c {
        void a();

        void b();

        void c();
    }

    public interface d {
        void a(byte[] bArr);
    }

    public static class e implements android.hardware.Camera.PreviewCallback {
        public e() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, android.hardware.Camera camera) {
        }
    }

    public Aa(android.content.Context context, com.huawei.hms.scankit.p.C0230xa c0230xa) {
        if (context == null || c0230xa == null) {
            throw new java.lang.IllegalArgumentException("CameraManager constructor param invalid");
        }
        this.f483f = new java.lang.ref.WeakReference<>(context);
        this.b = c0230xa;
        this.n = c0230xa.f();
        this.l = new com.huawei.hms.scankit.p.Fa();
        this.h = new com.huawei.hms.scankit.p.Ga();
        this.i = new com.huawei.hms.scankit.p.Ja();
        this.j = new com.huawei.hms.scankit.p.Ia();
        this.m = new com.huawei.hms.scankit.p.Ka(context);
        this.a = c0230xa.g();
        r();
    }

    private int d(int i) {
        if (i != 0 && i != 1) {
            return 0;
        }
        int numberOfCameras = android.hardware.Camera.getNumberOfCameras();
        android.hardware.Camera.CameraInfo cameraInfo = new android.hardware.Camera.CameraInfo();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            android.hardware.Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == i) {
                android.util.Log.i("CameraManager", "findCameraId: ".concat(java.lang.String.valueOf(i2)));
                return i2;
            }
        }
        return 0;
    }

    private void q() {
        if (this.a) {
            return;
        }
        if (com.huawei.hms.scankit.p.Na.b().b(this.f483f.get())) {
            android.util.Log.w("CameraManager", "CameraManager::closeHaTimer failed");
            return;
        }
        com.huawei.hms.scankit.p.Na.b().b("MLKitCamera");
        if (this.p) {
            android.os.Handler handler = this.m.b;
            if (handler != null) {
                android.os.Message.obtain(handler, net.easyconn.R.interpolator.btn_checkbox_unchecked_mtrl_animation_interpolator_0).sendToTarget();
            }
            this.p = false;
        }
    }

    private void r() {
        if (this.a) {
            return;
        }
        if (com.huawei.hms.scankit.p.Na.b().b(this.f483f.get())) {
            android.util.Log.w("CameraManager", "CameraManager::initialHaTimer failed");
            return;
        }
        com.huawei.hms.scankit.p.Na.b().a("MLKitCamera");
        if (this.p) {
            return;
        }
        this.m.start();
        this.p = true;
    }

    public synchronized void a() {
        com.huawei.hms.scankit.p.Ha ha = this.f484g;
        if (ha != null) {
            ha.a();
            throw null;
        }
    }

    public synchronized void a(int i) {
        if (this.b != null && this.k != null && this.o.a() >= com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED.a()) {
            this.b.a(i);
            this.k.setDisplayOrientation(i);
        }
    }

    public synchronized void a(android.view.TextureView textureView) {
        if (textureView == null) {
            throw new java.lang.IllegalArgumentException("CameraManager::initCamera SurfaceHolder is null");
        }
        if (this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED.a()) {
            android.util.Log.w("CameraManager", "CameraManager::initCamera camera is not opened yet");
            l();
        }
        this.h.a(this.k);
        this.i.a(this.k);
        this.j.a(this.k);
        android.hardware.Camera camera = this.k;
        if (camera != null) {
            camera.setPreviewTexture(textureView.getSurfaceTexture());
        }
        this.l.a(this.k, this.b);
        android.hardware.Camera camera2 = this.k;
        if (camera2 != null) {
            camera2.setDisplayOrientation(this.b.d());
        }
        com.huawei.hms.scankit.p.Aa.a aVar = this.f481d;
        if (aVar != null) {
            aVar.a(this.l.b);
        }
        this.o = com.huawei.hms.scankit.p.Aa.b.CAMERA_INITIALED;
    }

    public synchronized void a(com.huawei.hms.scankit.p.Aa.c cVar) {
        if (cVar == null) {
            throw new java.lang.IllegalArgumentException("CameraManager::setCameraStatusListener param invalid");
        }
        this.f480c = cVar;
    }

    public synchronized void a(com.huawei.hms.scankit.p.Aa.d dVar) {
        if (dVar == null) {
            throw new java.lang.IllegalArgumentException("CameraManager::setFrameCallback param invalid");
        }
        this.f482e = new com.huawei.hms.scankit.p.La(this.m, dVar);
    }

    public synchronized void a(java.lang.String str) {
        try {
            if (this.k == null || this.o.a() == com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
                return;
            }
            if ("off".equals(str) || "torch".equals(str)) {
                android.hardware.Camera.Parameters parameters = this.k.getParameters();
                parameters.setFlashMode(str);
                this.k.setParameters(parameters);
                this.n = str;
            }
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.w("CameraManager", "CameraManager::setTorchStatus error");
        }
    }

    public synchronized void a(java.util.List<com.huawei.hms.scankit.p.Ba.a> list) {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            this.j.a(list);
        }
    }

    public synchronized com.huawei.hms.scankit.p.C0235ya b() {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            return this.h.a();
        }
        return null;
    }

    public synchronized void b(int i) {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            this.h.a(i);
        }
    }

    public synchronized com.huawei.hms.scankit.p.Ba c() {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            return this.j.a();
        }
        return null;
    }

    public synchronized void c(int i) {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            this.i.a(i);
        }
    }

    public synchronized int d() {
        return this.b.d();
    }

    public synchronized android.graphics.Point e() {
        return this.l.b;
    }

    public synchronized com.huawei.hms.scankit.p.Aa.b f() {
        return this.o;
    }

    public synchronized com.huawei.hms.scankit.p.Ca g() {
        if (this.k != null && this.o.a() != com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED.a()) {
            return this.i.a();
        }
        return null;
    }

    public synchronized java.lang.String h() {
        return this.n;
    }

    public synchronized boolean i() {
        return this.i.b();
    }

    public synchronized void j() {
        q();
        this.f481d = null;
    }

    public synchronized void k() {
        try {
            if (this.o.a() == com.huawei.hms.scankit.p.Aa.b.PREVIEW_STARTED.a()) {
                a();
                p();
                this.o = com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED;
            }
            if (h().equals("torch")) {
                a("off");
            }
            if (this.o.a() >= com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED.a()) {
                this.o = com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED;
                if (this.k != null) {
                    this.k.release();
                    this.k = null;
                }
                if (this.f480c != null) {
                    this.f480c.a();
                }
            }
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.e("CameraManager", "CameraManager::onPause failed");
        }
    }

    public synchronized void l() {
        com.huawei.hms.scankit.p.Aa.b bVar = this.o;
        if (bVar == com.huawei.hms.scankit.p.Aa.b.CAMERA_CLOSED || bVar == com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED) {
            try {
                this.k = android.hardware.Camera.open(d(this.b.b()));
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.e("CameraManager", "CameraManager::Camera open failed, " + e2.getMessage());
            }
            if (this.k == null) {
                android.util.Log.e("CameraManager", "CameraManager::initCamera failed");
                com.huawei.hms.scankit.p.Aa.c cVar = this.f480c;
                if (cVar != null) {
                    cVar.c();
                }
            } else {
                com.huawei.hms.scankit.p.Aa.c cVar2 = this.f480c;
                if (cVar2 != null) {
                    cVar2.b();
                }
                this.o = com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED;
            }
        }
    }

    public synchronized void m() {
        android.hardware.Camera camera;
        if (this.o.a() < com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED.a()) {
            return;
        }
        if (this.b.c() != 0 && (camera = this.k) != null) {
            camera.setPreviewCallback(new com.huawei.hms.scankit.p.Aa.e());
        }
    }

    public synchronized void n() {
        if (this.b.c() == 1) {
            android.util.Log.d("CameraManager", "CameraManager::requestPreviewFrame PREVIEW_ONE_SHOT");
            if (this.o == com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED) {
                return;
            }
            android.hardware.Camera camera = this.k;
            if (camera != null) {
                camera.setOneShotPreviewCallback(this.f482e);
            }
        } else if (this.b.c() == 0) {
            android.util.Log.d("CameraManager", "CameraManager::requestPreviewFrame PICTURE_MODE");
            if (this.o == com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED) {
                o();
            }
        } else if (this.b.c() == 2) {
            android.util.Log.d("CameraManager", "CameraManager::requestPreviewFrame PREVIEW_MULTI_SHOT");
            if (this.o == com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED) {
                return;
            }
            android.hardware.Camera camera2 = this.k;
            if (camera2 != null) {
                camera2.setPreviewCallback(this.f482e);
            }
        } else {
            android.util.Log.w("CameraManager", "CameraManager::requestPreviewFrame unknown mode");
        }
    }

    public synchronized void o() {
        try {
            if (this.o.a() < com.huawei.hms.scankit.p.Aa.b.CAMERA_INITIALED.a()) {
                android.util.Log.w("CameraManager", "CameraManager::startPreview camera is not initialed yet");
                return;
            }
            if (this.k != null) {
                this.k.startPreview();
                this.o = com.huawei.hms.scankit.p.Aa.b.PREVIEW_STARTED;
            }
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.w("CameraManager", "stopPreview error");
        }
    }

    public synchronized void p() {
        try {
            if (this.o.a() < com.huawei.hms.scankit.p.Aa.b.PREVIEW_STARTED.a()) {
                android.util.Log.w("CameraManager", "CameraManager::startPreview camera is not startPreview yet");
                return;
            }
            if (this.k != null) {
                this.k.setPreviewCallback(null);
                this.k.stopPreview();
                this.o = com.huawei.hms.scankit.p.Aa.b.PREVIEW_STOPPED;
            }
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.w("CameraManager", "stopPreview error");
        }
    }
}
