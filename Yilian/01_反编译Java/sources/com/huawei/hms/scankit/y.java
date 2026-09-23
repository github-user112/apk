package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class y extends com.huawei.hms.scankit.q {
    public android.widget.ImageView A;
    public android.widget.TextView B;
    public com.huawei.hms.feature.dynamic.IObjectWrapper C;
    public com.huawei.hms.scankit.ViewfinderView y;
    public android.widget.ImageView z;

    public y(android.content.Context context, int i, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, boolean z, boolean z2) {
        super(context, i, null, iObjectWrapper, z, false, z2);
        this.C = iObjectWrapper;
        this.f877e = context;
        this.f876d = i;
        this.r = z;
        this.p = new android.graphics.Rect(-1, -1, -1, -1);
        this.u = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        android.widget.ImageView imageView = this.A;
        if (imageView != null) {
            imageView.setSelected(false);
        }
        android.widget.TextView textView = this.B;
        if (textView != null) {
            textView.setText(com.huawei.hms.scankit.R.string.scankit_light);
        }
    }

    @Override // com.huawei.hms.scankit.q
    public void c() {
        super.c();
        if (this.l) {
            return;
        }
        this.w.setVisibility(0);
    }

    @Override // com.huawei.hms.scankit.q
    public com.huawei.hms.scankit.ProviderRemoteView d() {
        return new com.huawei.hms.scankit.ProviderRemoteView(com.huawei.hms.feature.DynamicModuleInitializer.getContext() == null ? this.f877e : com.huawei.hms.feature.DynamicModuleInitializer.getContext(), false);
    }

    @Override // com.huawei.hms.scankit.q
    public void f() {
        android.widget.RelativeLayout relativeLayout;
        com.huawei.hms.scankit.ProviderRemoteView providerRemoteViewD = d();
        this.f878f = providerRemoteViewD;
        if (android.os.Build.VERSION.SDK_INT >= 19 && (relativeLayout = (android.widget.RelativeLayout) providerRemoteViewD.findViewById(com.huawei.hms.scankit.R.id.scan_title)) != null) {
            android.widget.FrameLayout.LayoutParams layoutParams = new android.widget.FrameLayout.LayoutParams(relativeLayout.getLayoutParams().width, relativeLayout.getLayoutParams().height);
            layoutParams.setMargins(0, l(), 0, 0);
            relativeLayout.setLayoutParams(layoutParams);
        }
        this.f879g = (android.view.TextureView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.surfaceView);
        com.huawei.hms.scankit.ViewfinderView viewfinderView = (com.huawei.hms.scankit.ViewfinderView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.viewfinderView);
        this.y = viewfinderView;
        com.huawei.hms.scankit.C0111e c0111e = new com.huawei.hms.scankit.C0111e(this.f877e, this.f879g, viewfinderView, this.p, this.f876d, this.C, this.r, "DefaultView", false);
        this.h = c0111e;
        c0111e.b(this.u);
        android.widget.ImageView imageView = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.img_btn);
        this.z = imageView;
        imageView.setOnClickListener(new com.huawei.hms.scankit.w(this));
        this.w = (android.widget.LinearLayout) this.f878f.findViewById(com.huawei.hms.scankit.R.id.flash_light_ll);
        this.A = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.ivFlash);
        c();
        this.A.setOnClickListener(new com.huawei.hms.scankit.x(this));
        this.B = (android.widget.TextView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.flash_light_text);
        e();
        j();
        k();
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public com.huawei.hms.feature.dynamic.IObjectWrapper getView() {
        return com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(this.f878f);
    }

    public void j() {
        if ((java.util.Locale.getDefault() == null || !("ar".equals(java.util.Locale.getDefault().getLanguage()) || "ur".equals(java.util.Locale.getDefault().getLanguage()) || "ug".equals(java.util.Locale.getDefault().getLanguage()) || "iw".equals(java.util.Locale.getDefault().getLanguage()))) && !"fa".equals(java.util.Locale.getDefault().getLanguage())) {
            return;
        }
        android.widget.TextView textView = (android.widget.TextView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.title_scan);
        android.widget.ImageView imageView = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.back_img_in);
        if (imageView != null) {
            imageView.setRotation(180.0f);
        }
        if (textView != null) {
            android.view.ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            if (layoutParams instanceof android.widget.RelativeLayout.LayoutParams) {
                android.widget.RelativeLayout.LayoutParams layoutParams2 = (android.widget.RelativeLayout.LayoutParams) layoutParams;
                layoutParams2.addRule(1, com.huawei.hms.scankit.R.id.img_btn);
                layoutParams2.rightMargin = 200;
                textView.setLayoutParams(layoutParams);
            }
        }
        k();
    }

    public void k() {
        android.view.ViewGroup.LayoutParams layoutParams = this.w.getLayoutParams();
        android.content.Context context = this.f877e;
        if (context == null || context.getResources() == null || this.f877e.getResources().getDisplayMetrics() == null || this.f877e.getResources().getDisplayMetrics().widthPixels <= 1990 || this.f877e.getResources().getDisplayMetrics().widthPixels >= 2300 || this.f877e.getResources().getDisplayMetrics().heightPixels <= 2190 || this.f877e.getResources().getDisplayMetrics().heightPixels >= 2600 || !(layoutParams instanceof android.widget.FrameLayout.LayoutParams)) {
            return;
        }
        ((android.widget.FrameLayout.LayoutParams) layoutParams).bottomMargin = 150;
        this.w.setLayoutParams(layoutParams);
    }

    public int l() {
        int identifier;
        android.content.Context context = this.f877e;
        if (context == null || context.getResources() == null || (identifier = this.f877e.getResources().getIdentifier("status_bar_height", "dimen", "android")) <= 0) {
            return 0;
        }
        return this.f877e.getResources().getDimensionPixelSize(identifier);
    }

    @Override // com.huawei.hms.scankit.q, android.hardware.SensorEventListener
    public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onResume() {
        this.h.e();
        m();
        android.hardware.SensorManager sensorManager = this.j;
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(5), 2);
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        this.k = (android.view.View.OnClickListener) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void turnOffLight() {
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void turnOnLight() {
    }
}
