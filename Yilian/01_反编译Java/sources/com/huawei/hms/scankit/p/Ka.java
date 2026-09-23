package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ka extends java.lang.Thread {
    public java.lang.ref.WeakReference<android.content.Context> a;
    public android.os.Handler b;

    public static class a extends android.os.Handler {
        public java.lang.ref.WeakReference<android.content.Context> b;
        public boolean a = true;

        /* renamed from: c, reason: collision with root package name */
        public java.util.HashMap<java.lang.String, com.huawei.hms.scankit.p.Ma> f557c = new java.util.HashMap<>();

        public a(java.lang.ref.WeakReference<android.content.Context> weakReference) {
            this.b = weakReference;
        }

        private com.huawei.hms.scankit.p.Ma a(java.lang.String str) {
            if (com.huawei.hms.scankit.p.Na.b().b(this.b.get())) {
                return null;
            }
            return com.huawei.hms.scankit.p.Na.b().a(this.b.get(), new com.huawei.hms.scankit.p.Ea(this.b.get()).a()).s(str).q(str).r("1.0.2.300");
        }

        public static void a(com.huawei.hms.scankit.p.Ma ma) {
            if (ma != null) {
                com.huawei.hms.scankit.p.Na.b().b(ma);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(android.os.Message message) {
            if (this.a) {
                int i = message.what;
                if (i == net.easyconn.R.interpolator.btn_radio_to_on_mtrl_animation_interpolator_0) {
                    this.f557c.put("preview", a((java.lang.String) message.obj));
                    return;
                }
                if (i == net.easyconn.R.interpolator.fast_out_slow_in) {
                    a(this.f557c.get("preview"));
                    this.f557c.put("preview", null);
                    return;
                }
                if (i == net.easyconn.R.interpolator.btn_checkbox_unchecked_mtrl_animation_interpolator_1) {
                    this.f557c.put("picture", a((java.lang.String) message.obj));
                } else if (i == net.easyconn.R.interpolator.btn_radio_to_off_mtrl_animation_interpolator_0) {
                    a(this.f557c.get("picture"));
                    this.f557c.put("picture", null);
                } else if (i != net.easyconn.R.interpolator.btn_checkbox_unchecked_mtrl_animation_interpolator_0) {
                    android.util.Log.w("CameraManager", "HiAnalyticsThread::handleMessage unknown message");
                } else {
                    this.a = false;
                    android.os.Looper.myLooper().quit();
                }
            }
        }
    }

    public Ka(android.content.Context context) {
        this.a = new java.lang.ref.WeakReference<>(context);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        android.os.Looper.prepare();
        this.b = new com.huawei.hms.scankit.p.Ka.a(this.a);
        android.os.Looper.loop();
    }
}
