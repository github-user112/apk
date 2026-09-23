package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class BetaActiveAlertActivity extends android.app.Activity {
    @Override // android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.tencent.bugly.beta.R.layout.activity_beta_active_alert);
        try {
            java.lang.String stringExtra = getIntent().getStringExtra("h5");
            com.tencent.bugly.beta.ui.H5WebView h5WebView = new com.tencent.bugly.beta.ui.H5WebView(this);
            addContentView(h5WebView, new android.view.ViewGroup.LayoutParams(-1, -1));
            h5WebView.loadUrl(stringExtra);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }
}
