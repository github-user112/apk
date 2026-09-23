package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class v extends com.huawei.hms.scankit.y {
    public com.huawei.hms.scankit.drawable.ScanDrawable D;
    public android.widget.ImageView E;
    public android.widget.ImageView F;

    public v(android.content.Context context, int i, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, boolean z, boolean z2) {
        super(context, i, iObjectWrapper, z, z2);
    }

    @Override // com.huawei.hms.scankit.y, com.huawei.hms.scankit.q
    public com.huawei.hms.scankit.ProviderRemoteView d() {
        return new com.huawei.hms.scankit.ProviderRemoteView(com.huawei.hms.feature.DynamicModuleInitializer.getContext() == null ? this.f877e : com.huawei.hms.feature.DynamicModuleInitializer.getContext(), false, false);
    }

    @Override // com.huawei.hms.scankit.y, com.huawei.hms.scankit.q
    public void f() {
        android.widget.RelativeLayout.LayoutParams layoutParams;
        android.widget.ImageView imageView;
        super.f();
        this.E = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.ivScan);
        this.F = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.back_img_in);
        android.widget.ImageView imageView2 = this.E;
        if (imageView2 != null) {
            android.view.ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
            layoutParams2.width = com.huawei.hms.scankit.util.c.a(this.f877e).x > com.huawei.hms.scankit.util.c.a(this.f877e, 520) ? com.huawei.hms.scankit.util.c.a(this.f877e).x / 2 : com.huawei.hms.scankit.util.c.a(this.f877e).x;
            this.E.setLayoutParams(layoutParams2);
            com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable = new com.huawei.hms.scankit.drawable.ScanDrawable(this.f877e.getResources());
            this.D = scanDrawable;
            this.E.setImageDrawable(scanDrawable);
        }
        android.widget.ImageView imageView3 = this.F;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new com.huawei.hms.scankit.u(this));
        }
        int i = 12;
        if (!com.huawei.hms.scankit.util.b.c((android.app.Activity) this.f877e)) {
            android.widget.TextView textView = (android.widget.TextView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.title_scan);
            android.widget.RelativeLayout.LayoutParams layoutParams3 = (android.widget.RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams3.setMargins(0, 0, 0, 0);
            layoutParams3.addRule(12);
            textView.setLayoutParams(layoutParams3);
        }
        if (com.huawei.hms.scankit.util.b.d(this.f877e)) {
            android.widget.TextView textView2 = (android.widget.TextView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.title_scan);
            android.widget.RelativeLayout.LayoutParams layoutParams4 = (android.widget.RelativeLayout.LayoutParams) textView2.getLayoutParams();
            if (com.huawei.hms.scankit.util.b.b((android.app.Activity) this.f877e)) {
                layoutParams4.setMargins(0, com.huawei.hms.scankit.util.c.a(this.f877e, 48), 0, 0);
                i = 10;
            } else {
                layoutParams4.setMargins(0, 0, 0, 0);
            }
            layoutParams4.addRule(i);
            textView2.setLayoutParams(layoutParams4);
            textView2.bringToFront();
        }
        if (com.huawei.hms.scankit.util.b.c((android.app.Activity) this.f877e) || !com.huawei.hms.scankit.util.b.a(this.f877e)) {
            return;
        }
        if ((java.util.Locale.getDefault() == null || !("ar".equals(java.util.Locale.getDefault().getLanguage()) || "ur".equals(java.util.Locale.getDefault().getLanguage()) || "ug".equals(java.util.Locale.getDefault().getLanguage()) || "iw".equals(java.util.Locale.getDefault().getLanguage()))) && !"fa".equals(java.util.Locale.getDefault().getLanguage())) {
            android.widget.ImageView imageView4 = this.z;
            if (imageView4 == null) {
                return;
            }
            layoutParams = (android.widget.RelativeLayout.LayoutParams) imageView4.getLayoutParams();
            layoutParams.setMarginEnd(com.huawei.hms.scankit.util.c.a(this.f877e, 40));
            imageView = this.z;
        } else {
            android.widget.ImageView imageView5 = this.F;
            if (imageView5 == null) {
                return;
            }
            layoutParams = (android.widget.RelativeLayout.LayoutParams) imageView5.getLayoutParams();
            layoutParams.setMarginStart(com.huawei.hms.scankit.util.c.a(this.f877e, 40));
            imageView = this.F;
        }
        imageView.setLayoutParams(layoutParams);
    }

    @Override // com.huawei.hms.scankit.y
    public void j() {
        if ((java.util.Locale.getDefault() == null || !("ar".equals(java.util.Locale.getDefault().getLanguage()) || "ur".equals(java.util.Locale.getDefault().getLanguage()) || "ug".equals(java.util.Locale.getDefault().getLanguage()) || "iw".equals(java.util.Locale.getDefault().getLanguage()))) && !"fa".equals(java.util.Locale.getDefault().getLanguage())) {
            return;
        }
        android.widget.ImageView imageView = (android.widget.ImageView) this.f878f.findViewById(com.huawei.hms.scankit.R.id.back_img_in);
        this.F = imageView;
        if (imageView != null) {
            imageView.setRotation(180.0f);
        }
        k();
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onStart() {
        super.onStart();
        com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable = this.D;
        if (scanDrawable == null || scanDrawable.isRunning()) {
            return;
        }
        this.D.start();
    }

    @Override // com.huawei.hms.scankit.q, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
    public void onStop() {
        super.onStop();
        com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable = this.D;
        if (scanDrawable != null && scanDrawable.isRunning()) {
            this.D.stop();
        }
    }
}
