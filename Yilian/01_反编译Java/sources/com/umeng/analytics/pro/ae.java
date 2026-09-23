package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ae implements com.umeng.analytics.pro.y {
    public static final java.lang.String a = "DeviceIdService";
    public static final java.lang.String b = "com.samsung.android.deviceidservice";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1212c = "com.samsung.android.deviceidservice.DeviceIdService";

    /* renamed from: e, reason: collision with root package name */
    public java.util.concurrent.CountDownLatch f1214e;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1213d = "";

    /* renamed from: f, reason: collision with root package name */
    public final android.content.ServiceConnection f1215f = new android.content.ServiceConnection() { // from class: com.umeng.analytics.pro.ae.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            try {
                com.umeng.analytics.pro.a aVarA = com.umeng.analytics.pro.a.AbstractBinderC0012a.a(iBinder);
                com.umeng.analytics.pro.ae.this.f1213d = aVarA.a();
                android.util.Log.d(com.umeng.analytics.pro.ae.a, "onServiceConnected");
            } catch (android.os.RemoteException | java.lang.NullPointerException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("onServiceConnected failed e=");
                sbO.append(e2.getMessage());
                android.util.Log.e(com.umeng.analytics.pro.ae.a, sbO.toString());
            }
            com.umeng.analytics.pro.ae.this.f1214e.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            android.util.Log.d(com.umeng.analytics.pro.ae.a, "onServiceDisconnected");
        }
    };

    private void b(android.content.Context context) {
        try {
            android.content.Intent intent = new android.content.Intent();
            intent.setClassName(b, f1212c);
            if (context.bindService(intent, this.f1215f, 1)) {
            } else {
                throw new java.lang.UnsupportedOperationException("not supported service");
            }
        } catch (java.lang.Error | java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("bindService failed. e=");
            sbO.append(e2.getMessage());
            android.util.Log.e(a, sbO.toString());
            this.f1214e.countDown();
        }
    }

    private void c(android.content.Context context) {
        try {
            context.unbindService(this.f1215f);
        } catch (java.lang.Error | java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("unbindService failed. e=");
            sbO.append(e2.getMessage());
            android.util.Log.e(a, sbO.toString());
        }
    }

    @Override // com.umeng.analytics.pro.y
    public java.lang.String a(android.content.Context context) {
        this.f1214e = new java.util.concurrent.CountDownLatch(1);
        try {
            try {
                b(context);
                if (!this.f1214e.await(500L, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                    android.util.Log.e(a, "getOAID time-out");
                }
                return this.f1213d;
            } catch (java.lang.InterruptedException e2) {
                android.util.Log.e(a, "getOAID interrupted. e=" + e2.getMessage());
                c(context);
                return null;
            }
        } finally {
            c(context);
        }
    }
}
