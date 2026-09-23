package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class H5WebView extends android.webkit.WebView {
    public android.content.Context mContext;

    public static class BaseWebChromeClient extends android.webkit.WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(android.webkit.WebView webView, boolean z, boolean z2, android.os.Message message) {
            ((android.webkit.WebView.WebViewTransport) message.obj).setWebView(webView);
            message.sendToTarget();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            super.onGeolocationPermissionsHidePrompt();
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(java.lang.String str, android.webkit.GeolocationPermissions.Callback callback) {
            callback.invoke(str, true, false);
            super.onGeolocationPermissionsShowPrompt(str, callback);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedIcon(android.webkit.WebView webView, android.graphics.Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
        }
    }

    public static class a extends android.webkit.WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(android.webkit.WebView webView, java.lang.String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    public H5WebView(android.content.Context context) {
        super(context);
        this.mContext = context;
        init();
    }

    public H5WebView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public H5WebView(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void init() {
        android.webkit.WebSettings settings = getSettings();
        settings.setSupportZoom(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setLoadsImagesAutomatically(true);
        settings.setJavaScriptEnabled(true);
        settings.setSupportMultipleWindows(true);
        if (android.os.Build.VERSION.SDK_INT > 21) {
            settings.setMixedContentMode(0);
        }
        settings.setBlockNetworkImage(false);
        newWin(settings);
        setWebChromeClient(new com.tencent.bugly.beta.ui.H5WebView.BaseWebChromeClient());
        setWebViewClient(new com.tencent.bugly.beta.ui.H5WebView.a());
        removeJavascriptInterface("searchBoxJavaBridge_");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
    }

    private void newWin(android.webkit.WebSettings webSettings) {
        webSettings.setSupportMultipleWindows(false);
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    }
}
