package com.huawei.hms.scankit;

/* renamed from: com.huawei.hms.scankit.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0111e implements com.huawei.hms.scankit.InterfaceC0112f, com.huawei.hms.scankit.InterfaceC0114h, com.huawei.hms.scankit.InterfaceC0113g {
    public static final java.lang.String a = "e";
    public static volatile com.huawei.hms.scankit.p.Kc b;
    public com.huawei.hms.feature.dynamic.IObjectWrapper A;
    public com.huawei.hms.scankit.A B;
    public com.huawei.hms.hmsscankit.api.IOnResultCallback C;
    public boolean F;
    public com.huawei.hms.hmsscankit.api.IOnErrorCallback G;

    /* renamed from: d, reason: collision with root package name */
    public final android.graphics.Rect f446d;

    /* renamed from: e, reason: collision with root package name */
    public final int f447e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f448f;

    /* renamed from: g, reason: collision with root package name */
    public android.content.Context f449g;
    public com.huawei.hms.scankit.HandlerC0101a h;
    public com.huawei.hms.scankit.B i;
    public com.huawei.hms.scankit.p.Aa j;
    public com.huawei.hms.scankit.ViewfinderView k;
    public android.view.TextureView l;
    public android.view.TextureView.SurfaceTextureListener m;
    public java.util.Collection<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> n;
    public java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> o;
    public java.lang.String p;
    public java.lang.String r;
    public float t;
    public boolean x;
    public boolean y;
    public boolean z;

    /* renamed from: c, reason: collision with root package name */
    public volatile com.huawei.hms.scankit.p.Hc f445c = null;
    public boolean s = true;
    public boolean u = true;
    public boolean v = false;
    public boolean w = true;
    public boolean D = false;
    public boolean E = false;
    public boolean H = true;
    public boolean q = false;

    public C0111e(android.content.Context context, android.view.TextureView textureView, com.huawei.hms.scankit.ViewfinderView viewfinderView, android.graphics.Rect rect, int i, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, boolean z, java.lang.String str, boolean z2) {
        this.F = false;
        this.f449g = context;
        this.k = viewfinderView;
        this.A = iObjectWrapper;
        this.l = textureView;
        this.f446d = rect;
        this.f447e = i;
        this.f448f = z;
        this.r = str;
        this.F = false;
        this.y = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.scankit.p.C0230xa a(android.content.Context r8) {
        /*
            r7 = this;
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            android.view.WindowManager r0 = r0.getWindowManager()
            android.view.Display r0 = r0.getDefaultDisplay()
            int r0 = r0.getRotation()
            java.lang.String r1 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r2 = "initCameraConfig:false"
            android.util.Log.i(r1, r2)
            r1 = 90
            r2 = 0
            r3 = 1080(0x438, float:1.513E-42)
            r4 = 1920(0x780, float:2.69E-42)
            r5 = 1
            if (r0 == 0) goto L74
            if (r0 == r5) goto L5d
            r6 = 2
            if (r0 == r6) goto L48
            r6 = 3
            if (r0 == r6) goto L33
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r6 = new android.graphics.Point
            r6.<init>(r4, r3)
            goto L7e
        L33:
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>(r4, r3)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r1)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r5)
            r1 = 180(0xb4, float:2.52E-43)
            goto L86
        L48:
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>(r4, r3)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r1)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r5)
            r1 = 270(0x10e, float:3.78E-43)
            goto L86
        L5d:
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>(r4, r3)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r1)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r5)
            com.huawei.hms.scankit.p.xa$a r0 = r0.b(r2)
            goto L8a
        L74:
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r6 = new android.graphics.Point
            r6.<init>(r4, r3)
        L7e:
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r6)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r5)
        L86:
            com.huawei.hms.scankit.p.xa$a r0 = r0.b(r1)
        L8a:
            com.huawei.hms.scankit.p.xa$a r0 = r0.b(r2)
            boolean r1 = com.huawei.hms.scankit.util.b.c(r8)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r1)
            com.huawei.hms.scankit.p.xa r0 = r0.a()
            java.lang.String r1 = android.os.Build.DEVICE
            java.lang.String r6 = "ceres-c3"
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto Lc6
            com.huawei.hms.scankit.p.xa$a r0 = new com.huawei.hms.scankit.p.xa$a
            r0.<init>()
            android.graphics.Point r1 = new android.graphics.Point
            r1.<init>(r3, r4)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r1)
            com.huawei.hms.scankit.p.xa$a r0 = r0.a(r5)
            com.huawei.hms.scankit.p.xa$a r0 = r0.b(r2)
            boolean r8 = com.huawei.hms.scankit.util.b.c(r8)
            com.huawei.hms.scankit.p.xa$a r8 = r0.a(r8)
            com.huawei.hms.scankit.p.xa r0 = r8.a()
        Lc6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.C0111e.a(android.content.Context):com.huawei.hms.scankit.p.xa");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.view.TextureView textureView) {
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            com.huawei.hms.scankit.util.a.d(a, "initCamera() no surface view");
            return;
        }
        try {
            this.j.a(textureView);
            this.j.a(java.util.Collections.singletonList(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(-150, -150, 150, 150), 1000)));
            this.j.b(1);
            try {
                this.j.m();
            } catch (java.lang.Exception e2) {
                com.huawei.hms.scankit.util.a.b(a, "initCamera() get exception");
                e2.printStackTrace();
            }
            if (this.h == null) {
                com.huawei.hms.scankit.HandlerC0101a handlerC0101a = new com.huawei.hms.scankit.HandlerC0101a(this.f449g, this.k, this.i, this.n, this.o, this.p, this.j, this.f446d, this.f447e, this.y, this.H);
                this.h = handlerC0101a;
                handlerC0101a.c(this.x);
                this.h.a(this.z);
                this.h.b(this.u);
                this.h.a(this.B);
            }
        } catch (java.lang.Exception e3) {
            if (this.f445c != null) {
                this.f445c.c(-1002);
            }
            com.huawei.hms.scankit.util.a.a(a, "initCamera IOException", e3);
            e3.printStackTrace();
        }
    }

    private void a(boolean z, com.huawei.hms.scankit.p.Aa aa) {
        try {
            com.huawei.hms.scankit.p.Ca caG = aa.g();
            if (!aa.i()) {
                com.huawei.hms.scankit.util.a.c(a, "zoom not supported");
                return;
            }
            int iC = caG.c();
            int iB = caG.b();
            if (z && iB < iC) {
                iB++;
            } else if (iB > 0) {
                iB--;
            } else {
                com.huawei.hms.scankit.util.a.c(a, "handleZoom  zoom not change");
            }
            aa.c(iB);
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.e(a, "handleZoom: RuntimeException");
        }
    }

    private float b(android.view.MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        double dSqrt = java.lang.Math.sqrt((y * y) + (x * x));
        if (java.lang.Double.isInfinite(dSqrt) || java.lang.Double.isNaN(dSqrt)) {
            return 0.0f;
        }
        return java.math.BigDecimal.valueOf(dSqrt).floatValue();
    }

    private void i() {
        com.huawei.hms.scankit.HandlerC0101a handlerC0101a = this.h;
        if (handlerC0101a != null) {
            handlerC0101a.e();
            this.h = null;
        }
        if (!this.q) {
            this.l.setSurfaceTextureListener(null);
        }
        this.j.k();
    }

    public com.huawei.hms.scankit.C0111e a(com.huawei.hms.scankit.A a2) {
        this.B = a2;
        return this;
    }

    public com.huawei.hms.scankit.C0111e a(boolean z) {
        this.z = z;
        com.huawei.hms.scankit.HandlerC0101a handlerC0101a = this.h;
        if (handlerC0101a != null) {
            handlerC0101a.a(z);
        }
        return this;
    }

    public com.huawei.hms.scankit.p.Aa a() {
        return this.j;
    }

    public void a(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback) {
        this.G = iOnErrorCallback;
    }

    public void a(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback) {
        this.C = iOnResultCallback;
    }

    public void a(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr, android.graphics.Bitmap bitmap) {
        java.lang.String str;
        java.lang.StringBuilder sb;
        java.lang.String str2;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("decode time:");
        sbO.append(java.lang.System.currentTimeMillis());
        com.huawei.hms.scankit.util.a.a("scan-time", sbO.toString());
        try {
            com.huawei.hms.scankit.util.a.c(a, "result onResult");
            if (this.B.a()) {
                com.huawei.hms.scankit.util.a.c(a, "result intercepted");
                return;
            }
            if (this.f445c != null) {
                this.f445c.a(hmsScanArr);
            }
            if (!this.f448f) {
                hmsScanArr = com.huawei.hms.scankit.util.b.a(hmsScanArr);
            }
            if (this.B != null) {
                if (this.k != null && hmsScanArr.length > 0 && hmsScanArr[0] != null) {
                    com.huawei.hms.scankit.util.a.c(a, "result draw result point");
                    if (this.f449g instanceof android.app.Activity) {
                        this.k.a(hmsScanArr[0].getBorderRect(), com.huawei.hms.scankit.util.b.c((android.app.Activity) this.f449g), this.j.e());
                    }
                    this.F = false;
                }
                this.B.a(hmsScanArr);
            }
            if (this.C != null) {
                try {
                    java.lang.String str3 = a;
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    sb2.append("result callback end: pauseStatus");
                    sb2.append(this.F);
                    com.huawei.hms.scankit.util.a.c(str3, sb2.toString());
                    if (this.F) {
                        return;
                    }
                    if (this.z && hmsScanArr != null && hmsScanArr.length > 0 && hmsScanArr[0] != null && (this.f449g instanceof android.app.Activity)) {
                        int rotation = ((android.app.Activity) this.f449g).getWindowManager().getDefaultDisplay().getRotation();
                        hmsScanArr[0].originalBitmap = com.huawei.hms.scankit.util.b.a(bitmap, rotation);
                    }
                    this.C.onResult(hmsScanArr);
                } catch (android.os.RemoteException e2) {
                    if (this.f445c != null) {
                        this.f445c.c(-1003);
                    }
                    java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                    sb3.append("onResult  RemoteException  e:");
                    sb3.append(e2);
                    com.huawei.hms.scankit.util.a.d("CaptureHelper", sb3.toString());
                }
            }
        } catch (java.lang.RuntimeException e3) {
            e = e3;
            str = a;
            sb = new java.lang.StringBuilder();
            str2 = "onResult:RuntimeException ";
            sb.append(str2);
            sb.append(e);
            android.util.Log.e(str, sb.toString());
        } catch (java.lang.Exception e4) {
            e = e4;
            str = a;
            sb = new java.lang.StringBuilder();
            str2 = "onResult:Exception: ";
            sb.append(str2);
            sb.append(e);
            android.util.Log.e(str, sb.toString());
        }
    }

    public boolean a(android.view.MotionEvent motionEvent) {
        float fB;
        if (!this.s || this.j.f().a() < com.huawei.hms.scankit.p.Aa.b.CAMERA_OPENED.a() || motionEvent.getPointerCount() <= 1) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 2) {
            if (action == 5) {
                fB = b(motionEvent);
            }
            return true;
        }
        fB = b(motionEvent);
        float f2 = this.t;
        if (fB > f2 + 6.0f) {
            a(true, this.j);
        } else if (fB < f2 - 6.0f) {
            a(false, this.j);
        } else {
            com.huawei.hms.scankit.util.a.c("CaptureHelper", "MotionEvent.ACTION_MOVE no handleZoom");
        }
        this.t = fB;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            r3 = this;
            r0 = 0
            r3.F = r0
            com.huawei.hms.feature.dynamic.IObjectWrapper r0 = r3.A     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            java.lang.Object r0 = com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(r0)     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            com.huawei.hms.scankit.p.Kc r1 = new com.huawei.hms.scankit.p.Kc     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            java.lang.String r2 = r3.r     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            r1.<init>(r0, r2)     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            com.huawei.hms.scankit.C0111e.b = r1     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            com.huawei.hms.scankit.p.Kc r0 = com.huawei.hms.scankit.C0111e.b     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            java.lang.String r1 = "single"
            r0.a(r1)     // Catch: java.lang.Exception -> L1c java.lang.RuntimeException -> L21
            goto L28
        L1c:
            java.lang.String r0 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r1 = "Exception"
            goto L25
        L21:
            java.lang.String r0 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r1 = "RuntimeException"
        L25:
            com.huawei.hms.scankit.util.a.b(r0, r1)
        L28:
            android.content.Context r0 = r3.f449g
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            if (r0 == 0) goto L46
            android.content.Context r0 = r3.f449g
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            java.lang.String r1 = "android.hardware.camera"
            boolean r0 = r0.hasSystemFeature(r1)
            if (r0 != 0) goto L46
            java.lang.String r0 = "scankit"
            java.lang.String r1 = "has no camera"
            android.util.Log.e(r0, r1)
            return
        L46:
            android.content.Context r0 = r3.f449g
            com.huawei.hms.scankit.p.xa r0 = r3.a(r0)
            java.lang.String r1 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r2 = "onCreate: CameraManageOncreate"
            android.util.Log.i(r1, r2)
            com.huawei.hms.scankit.p.Aa r1 = new com.huawei.hms.scankit.p.Aa
            android.content.Context r2 = r3.f449g
            r1.<init>(r2, r0)
            r3.j = r1
            com.huawei.hms.scankit.b r0 = new com.huawei.hms.scankit.b
            r0.<init>(r3)
            r1.a(r0)
            com.huawei.hms.scankit.c r0 = new com.huawei.hms.scankit.c
            r0.<init>(r3)
            r3.m = r0
            com.huawei.hms.scankit.d r0 = new com.huawei.hms.scankit.d
            r0.<init>(r3)
            r3.i = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.C0111e.b():void");
    }

    public void b(boolean z) {
        this.H = z;
    }

    public void c() {
        this.F = true;
        this.j.j();
        b = null;
    }

    public void d() {
        this.F = true;
        if (this.D) {
            return;
        }
        i();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e() {
        /*
            r5 = this;
            r0 = 0
            r5.F = r0
            com.huawei.hms.feature.dynamic.IObjectWrapper r1 = r5.A     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            java.lang.Object r1 = com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(r1)     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            android.os.Bundle r1 = (android.os.Bundle) r1     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            com.huawei.hms.scankit.p.Hc r2 = new com.huawei.hms.scankit.p.Hc     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            java.lang.String r3 = r5.r     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            r2.<init>(r1, r3)     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            r5.f445c = r2     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            com.huawei.hms.scankit.p.Hc r1 = r5.f445c     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            r1.b()     // Catch: java.lang.Exception -> L1a java.lang.RuntimeException -> L1f
            goto L26
        L1a:
            java.lang.String r1 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r2 = "Exception"
            goto L23
        L1f:
            java.lang.String r1 = com.huawei.hms.scankit.C0111e.a
            java.lang.String r2 = "RuntimeException"
        L23:
            com.huawei.hms.scankit.util.a.b(r1, r2)
        L26:
            boolean r1 = r5.D
            if (r1 != 0) goto L48
            boolean r1 = r5.q
            if (r1 != 0) goto L48
            android.view.TextureView r1 = r5.l
            if (r1 == 0) goto L48
            android.view.TextureView$SurfaceTextureListener r2 = r5.m
            r1.setSurfaceTextureListener(r2)
            boolean r1 = r5.q
            if (r1 == 0) goto L41
            android.view.TextureView r1 = r5.l
            r5.a(r1)
            goto L48
        L41:
            android.view.TextureView r1 = r5.l
            android.view.TextureView$SurfaceTextureListener r2 = r5.m
            r1.setSurfaceTextureListener(r2)
        L48:
            boolean r1 = r5.E
            if (r1 == 0) goto L67
            android.content.Context r1 = r5.f449g
            int r2 = android.os.Process.myPid()
            int r3 = android.os.Process.myUid()
            java.lang.String r4 = "android.permission.CAMERA"
            int r1 = r1.checkPermission(r4, r2, r3)
            if (r1 != 0) goto L67
            android.view.TextureView r1 = r5.l
            if (r1 == 0) goto L67
            r5.E = r0
            r5.a(r1)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.C0111e.e():void");
    }

    public void f() {
        this.F = false;
        android.view.TextureView textureView = this.l;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(this.m);
            this.D = true;
            if (this.q) {
                a(this.l);
            } else {
                this.l.setSurfaceTextureListener(this.m);
            }
        }
    }

    public void g() {
        this.F = true;
        if (this.f445c != null) {
            this.f445c.c();
        }
        this.f445c = null;
        if (this.D) {
            i();
        }
    }

    public void h() {
        java.lang.String str;
        java.lang.String str2;
        try {
            if (this.j != null) {
                this.j.c(1);
            }
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "RuntimeException in reset zoomValue";
            com.huawei.hms.scankit.util.a.b(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "Exception in reset zoomValue";
            com.huawei.hms.scankit.util.a.b(str, str2);
        }
    }
}
