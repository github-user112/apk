package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class La implements android.hardware.Camera.PreviewCallback {
    public com.huawei.hms.scankit.p.Aa.d a;
    public com.huawei.hms.scankit.p.Ka b;

    public La(com.huawei.hms.scankit.p.Ka ka, com.huawei.hms.scankit.p.Aa.d dVar) {
        this.a = dVar;
        this.b = ka;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, android.hardware.Camera camera) {
        android.os.Handler handler = this.b.b;
        if (handler == null) {
            this.a.a(bArr);
            return;
        }
        android.os.Message.obtain(handler, net.easyconn.R.interpolator.btn_radio_to_on_mtrl_animation_interpolator_0, "MLKitCamera").sendToTarget();
        this.a.a(bArr);
        android.os.Message.obtain(handler, net.easyconn.R.interpolator.fast_out_slow_in).sendToTarget();
    }
}
