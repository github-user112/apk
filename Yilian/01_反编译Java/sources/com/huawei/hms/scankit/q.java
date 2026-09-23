package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class q extends com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub implements com.huawei.hms.scankit.A, android.hardware.SensorEventListener {
    public static final java.lang.String a = "q";
    public static boolean b = false;

    /* renamed from: d, reason: collision with root package name */
    public int f876d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f877e;

    /* renamed from: f, reason: collision with root package name */
    public com.huawei.hms.scankit.ProviderRemoteView f878f;

    /* renamed from: g, reason: collision with root package name */
    public android.view.TextureView f879g;
    public com.huawei.hms.scankit.C0111e h;
    public com.huawei.hms.hmsscankit.api.IOnResultCallback i;
    public android.hardware.SensorManager j;
    public android.view.View.OnClickListener k;
    public java.lang.Boolean n;
    public android.app.AlertDialog o;
    public android.graphics.Rect p;
    public com.huawei.hms.feature.dynamic.IObjectWrapper q;
    public boolean r;
    public android.view.OrientationEventListener s;
    public boolean t;
    public boolean u;
    public com.huawei.hms.hmsscankit.api.IOnLightCallback v;
    public android.widget.LinearLayout w;

    /* renamed from: c, reason: collision with root package name */
    public volatile com.huawei.hms.scankit.p.Kc f875c = null;
    public boolean l = false;
    public final java.lang.Float m = java.lang.Float.valueOf(40.0f);
    public boolean x = false;

    public q(android.content.Context context, int i, java.lang.Object obj, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, boolean z, boolean z2, boolean z3) {
        this.f876d = 0;
        this.r = false;
        this.f877e = context;
        this.f876d = i;
        this.q = iObjectWrapper;
        if (obj instanceof android.graphics.Rect) {
            this.p = (android.graphics.Rect) obj;
        } else {
            this.p = null;
        }
        this.r = z;
        this.t = z2;
        this.u = z3;
    }

    public static android.graphics.Point a(android.content.Context context) {
        android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
        android.graphics.Point point = new android.graphics.Point();
        if (com.huawei.hms.scankit.util.b.d(context)) {
            android.util.Log.i(a, "initSurfaceView: is in MultiWindowMode");
            defaultDisplay.getSize(point);
        } else {
            defaultDisplay.getRealSize(point);
        }
        return point;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        android.widget.FrameLayout.LayoutParams layoutParams;
        com.huawei.hms.scankit.C0111e c0111e = this.h;
        if (c0111e == null || c0111e.a() == null || i == this.h.a().d()) {
            return;
        }
        this.h.a().a(i);
        if (!com.huawei.hms.scankit.util.b.d(this.f877e) || com.huawei.hms.scankit.util.b.b((android.app.Activity) this.f877e)) {
            e();
            return;
        }
        if (com.huawei.hms.scankit.util.b.c((android.app.Activity) this.f877e)) {
            layoutParams = (android.widget.FrameLayout.LayoutParams) this.f879g.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = (int) ((a(this.f877e).x / 1080.0f) * 1920.0f);
        } else {
            layoutParams = (android.widget.FrameLayout.LayoutParams) this.f879g.getLayoutParams();
            layoutParams.gravity = 17;
            layoutParams.height = -1;
            layoutParams.width = (int) ((a(this.f877e).x / 1080.0f) * 1920.0f);
        }
        layoutParams.gravity = 17;
    }

    private com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        boolean z;
        int iB;
        if (iObjectWrapper == null) {
            com.huawei.hms.scankit.util.a.b("ScankitRemoteS", "bitmap is null");
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        if (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) {
            z = false;
            iB = 0;
        } else {
            iB = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG);
            int i = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 0);
            com.huawei.hms.hmsscankit.DetailRect.HMSSCAN_SDK_VALUE = i;
            z = i >= 2;
            if (z) {
                iB = com.huawei.hms.scankit.util.b.b(iB);
            }
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrB = com.huawei.hms.scankit.D.a().b((android.graphics.Bitmap) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper), iB, true, this.f875c);
        if (!z) {
            hmsScanArrB = com.huawei.hms.scankit.util.b.a(hmsScanArrB);
        }
        if (hmsScanArrB.length == 0 || (hmsScanArrB[0] != null && android.text.TextUtils.isEmpty(hmsScanArrB[0].originalValue))) {
            i();
        }
        return hmsScanArrB;
    }

    public void a(android.graphics.Point point) {
        int i;
        int i2;
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) this.f879g.getLayoutParams();
        float f2 = point.x;
        float f3 = point.y;
        if (com.huawei.hms.scankit.util.b.c((android.app.Activity) this.f877e)) {
            b = false;
            int i3 = 1080;
            int i4 = 1920;
            if ("ceres-c3".equals(android.os.Build.DEVICE)) {
                i3 = 1280;
                i4 = 1280;
            }
            float f4 = i3;
            float f5 = f2 / f4;
            float f6 = i4;
            float f7 = f3 / f6;
            if (f5 > f7) {
                i2 = (int) (f6 * f5);
                layoutParams.width = -1;
                layoutParams.height = i2;
            } else {
                i = (int) (f4 * f7);
                layoutParams.height = -1;
                layoutParams.width = i;
            }
        } else {
            b = true;
            float f8 = f2 / 1920.0f;
            float f9 = f3 / 1080.0f;
            if (f8 > f9) {
                i2 = (int) (f8 * 1080.0f);
                layoutParams.width = -1;
                layoutParams.height = i2;
            } else {
                i = (int) (f9 * 1920.0f);
                layoutParams.height = -1;
                layoutParams.width = i;
            }
        }
        layoutParams.gravity = 17;
    }

    @Override // com.huawei.hms.scankit.A
    public boolean a() {
        return this.x;
    }

    @Override // com.huawei.hms.scankit.A
    public boolean a(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr) {
        android.app.AlertDialog alertDialog;
        if (hmsScanArr == null || hmsScanArr.length <= 0 || (alertDialog = this.o) == null || !alertDialog.isShowing()) {
            return false;
        }
        this.o.dismiss();
        return false;
    }

    public boolean b() {
        java.lang.String str;
        java.lang.String str2;
        try {
            return this.h.a().h().equals("torch");
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "getFlashStatusRuntimeException";
            com.huawei.hms.scankit.util.a.b(str, str2);
            return false;
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "getFlashStatusException";
            com.huawei.hms.scankit.util.a.b(str, str2);
            return false;
        }
    }

    public void c() {
        java.lang.Object systemService = this.f877e.getSystemService(com.umeng.analytics.pro.ai.ac);
        if (systemService instanceof android.hardware.SensorManager) {
            android.hardware.SensorManager sensorManager = (android.hardware.SensorManager) systemService;
            this.j = sensorManager;
            java.util.Iterator<android.hardware.Sensor> it = sensorManager.getSensorList(-1).iterator();
            while (it.hasNext()) {
                if (5 == it.next().getType()) {
                    this.l = true;
                    return;
                }
            }
        }
    }

    public com.huawei.hms.scankit.ProviderRemoteView d() {
        return new com.huawei.hms.scankit.ProviderRemoteView(com.huawei.hms.feature.DynamicModuleInitializer.getContext() == null ? this.f877e : com.huawei.hms.feature.DynamicModuleInitializer.getContext(), true);
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        java.lang.String str;
        java.lang.String str2;
        android.os.Bundle bundle = (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) ? new android.os.Bundle() : (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2);
        if (this.f875c == null) {
            try {
                this.f875c = new com.huawei.hms.scankit.p.Kc(bundle, com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE);
            } catch (java.lang.RuntimeException unused) {
                str = a;
                str2 = "RuntimeException";
                com.huawei.hms.scankit.util.a.b(str, str2);
                return a(iObjectWrapper, iObjectWrapper2);
            } catch (java.lang.Exception unused2) {
                str = a;
                str2 = "Exception";
                com.huawei.hms.scankit.util.a.b(str, str2);
                return a(iObjectWrapper, iObjectWrapper2);
            }
        }
        return a(iObjectWrapper, iObjectWrapper2);
    }

    public void e() {
        java.lang.String str;
        java.lang.String str2;
        try {
            if (this.f877e.getSystemService("window") != null) {
                a(a(this.f877e));
            }
        } catch (java.lang.NullPointerException unused) {
            str = a;
            str2 = "initSurfaceView: nullpoint";
            com.huawei.hms.scankit.util.a.d(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "initSurfaceView: Exception";
            com.huawei.hms.scankit.util.a.d(str, str2);
        }
    }

    public void f() {
        com.huawei.hms.scankit.ProviderRemoteView providerRemoteViewD = d();
        this.f878f = providerRemoteViewD;
        android.view.TextureView textureView = (android.view.TextureView) providerRemoteViewD.findViewById(com.huawei.hms.scankit.R.id.surfaceView);
        this.f879g = textureView;
        com.huawei.hms.scankit.C0111e c0111e = new com.huawei.hms.scankit.C0111e(this.f877e, textureView, null, this.p, this.f876d, this.q, this.r, "CustomizedView", true);
        this.h = c0111e;
        c0111e.b(this.u);
        c();
        e();
    }

    public void g() {
        java.lang.String str;
        java.lang.String str2;
        try {
            if (this.h == null || this.h.a() == null) {
                return;
            }
            this.h.a().a("off");
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "offFlashRuntimeException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "offFlashException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public boolean getLightStatus() {
        return b();
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public com.huawei.hms.feature.dynamic.IObjectWrapper getView() {
        return com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(this.f878f);
    }

    public void h() {
        java.lang.String str;
        java.lang.String str2;
        try {
            if (this.h == null || this.h.a() == null) {
                return;
            }
            this.h.a().a("torch");
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "openFlashRuntimeException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "openFlashException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        }
    }

    public void i() {
        android.app.AlertDialog alertDialogCreate = new android.app.AlertDialog.Builder(this.f877e).create();
        this.o = alertDialogCreate;
        alertDialogCreate.show();
        android.view.View viewInflate = android.view.LayoutInflater.from(com.huawei.hms.feature.DynamicModuleInitializer.getContext() == null ? this.f877e : com.huawei.hms.feature.DynamicModuleInitializer.getContext()).inflate(com.huawei.hms.scankit.R.layout.scankit_dialog_layout, (android.view.ViewGroup) null);
        android.view.Window window = this.o.getWindow();
        android.view.WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.y = 60;
        window.setAttributes(attributes);
        window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0));
        window.setContentView(viewInflate);
        window.setGravity(80);
        viewInflate.findViewById(com.huawei.hms.scankit.R.id.dialog_sure_btn).setOnClickListener(new com.huawei.hms.scankit.p(this));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onCreate(android.os.Bundle bundle) {
        android.content.Context context = this.f877e;
        if ((context instanceof android.app.Activity) && ((android.app.Activity) context).getWindow() != null) {
            ((android.app.Activity) this.f877e).getWindow().setFlags(16777216, 16777216);
        }
        f();
        this.h.a(this);
        this.f878f.setOnTouchListener(new com.huawei.hms.scankit.n(this));
        com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback = this.i;
        if (iOnResultCallback != null) {
            this.h.a(iOnResultCallback);
        }
        this.h.a(this.t);
        this.h.b();
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            android.content.Context context2 = this.f877e;
            if ((context2 instanceof android.app.Activity) && ((android.app.Activity) context2).isInMultiWindowMode()) {
                com.huawei.hms.scankit.o oVar = new com.huawei.hms.scankit.o(this, this.f877e);
                this.s = oVar;
                if (oVar.canDetectOrientation()) {
                    this.s.enable();
                } else {
                    this.s.disable();
                }
            }
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onDestroy() {
        java.lang.String str;
        java.lang.String str2;
        try {
            this.h.c();
            if (this.s == null || !this.s.canDetectOrientation()) {
                return;
            }
            this.s.disable();
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "onDestroyRuntimeException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "onDestroyException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onPause() {
        java.lang.String str;
        java.lang.String str2;
        try {
            this.h.d();
            this.j.unregisterListener(this);
        } catch (java.lang.RuntimeException unused) {
            str = a;
            str2 = "onPauseRuntimeException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        } catch (java.lang.Exception unused2) {
            str = a;
            str2 = "onPauseException";
            com.huawei.hms.scankit.util.a.b(str, str2);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onResume() {
        try {
            this.h.e();
            this.j.registerListener(this, this.j.getDefaultSensor(5), 2);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.scankit.util.a.b(a, "onResumeRuntimeException");
            e2.printStackTrace();
        } catch (java.lang.Exception e3) {
            com.huawei.hms.scankit.util.a.b(a, "onResumeException");
            e3.printStackTrace();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
        android.content.Context context = this.f877e;
        boolean zHasSystemFeature = (context == null || context.getPackageManager() == null) ? true : this.f877e.getPackageManager().hasSystemFeature("android.hardware.camera.flash");
        if (this.l && sensorEvent.sensor.getType() == 5 && zHasSystemFeature) {
            java.lang.Boolean boolValueOf = java.lang.Boolean.valueOf(sensorEvent.values[0] > this.m.floatValue());
            this.n = boolValueOf;
            try {
                if (!boolValueOf.booleanValue()) {
                    android.widget.LinearLayout linearLayout = this.w;
                    if (linearLayout != null) {
                        linearLayout.setVisibility(0);
                    }
                    com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback = this.v;
                    if (iOnLightCallback == null) {
                    } else {
                        iOnLightCallback.onVisibleChanged(true);
                    }
                } else {
                    if (sensorEvent.values[0] <= 600.0f) {
                        return;
                    }
                    if (this.w != null && !b()) {
                        this.w.setVisibility(8);
                    }
                    com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback2 = this.v;
                    if (iOnLightCallback2 == null) {
                    } else {
                        iOnLightCallback2.onVisibleChanged(false);
                    }
                }
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.d(a, "onSensorChanged RemoteException");
            }
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onStart() {
        try {
            this.h.f();
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.scankit.util.a.b(a, "onStartRuntimeException");
            e2.printStackTrace();
        } catch (java.lang.Exception e3) {
            com.huawei.hms.scankit.util.a.b(a, "onStartException");
            e3.printStackTrace();
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onStop() {
        try {
            this.h.g();
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.scankit.util.a.b(a, "onStopRuntimeException");
            e2.printStackTrace();
        } catch (java.lang.Exception e3) {
            com.huawei.hms.scankit.util.a.b(a, "onStopException");
            e3.printStackTrace();
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void pauseContinuouslyScan() {
        com.huawei.hms.scankit.C0111e c0111e = this.h;
        if (c0111e != null) {
            c0111e.h();
        }
        this.x = true;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void resumeContinuouslyScan() {
        this.x = false;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper != null) {
            this.k = (android.view.View.OnClickListener) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void setOnErrorCallback(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback) {
        com.huawei.hms.scankit.C0111e c0111e = this.h;
        if (c0111e != null) {
            c0111e.a(iOnErrorCallback);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void setOnLightVisbleCallBack(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback) {
        this.v = iOnLightCallback;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void setOnResultCallback(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback) {
        this.i = iOnResultCallback;
        com.huawei.hms.scankit.C0111e c0111e = this.h;
        if (c0111e != null) {
            c0111e.a(iOnResultCallback);
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void turnOffLight() {
        g();
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void turnOnLight() {
        h();
    }
}
