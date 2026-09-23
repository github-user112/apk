package com.huawei.hms.scankit;

/* renamed from: com.huawei.hms.scankit.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class HandlerC0101a extends android.os.Handler implements com.huawei.hms.scankit.aiscan.common.A {
    public final com.huawei.hms.scankit.B a;
    public final com.huawei.hms.scankit.m b;

    /* renamed from: c, reason: collision with root package name */
    public final int f364c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.HandlerC0101a.EnumC0005a f365d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f366e;

    /* renamed from: f, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Aa f367f;

    /* renamed from: g, reason: collision with root package name */
    public final com.huawei.hms.scankit.ViewfinderView f368g;
    public boolean h;
    public boolean i;
    public boolean j;
    public com.huawei.hms.scankit.A k;
    public boolean l;

    /* renamed from: com.huawei.hms.scankit.a$a, reason: collision with other inner class name */
    public enum EnumC0005a {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public HandlerC0101a(android.content.Context context, com.huawei.hms.scankit.ViewfinderView viewfinderView, com.huawei.hms.scankit.B b, java.util.Collection<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> collection, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, java.lang.String str, com.huawei.hms.scankit.p.Aa aa, android.graphics.Rect rect, int i, boolean z, boolean z2) {
        this.f368g = viewfinderView;
        this.a = b;
        this.f364c = i;
        this.f366e = context;
        com.huawei.hms.scankit.m mVar = new com.huawei.hms.scankit.m(context, aa, this, collection, map, str, this);
        this.b = mVar;
        mVar.a(rect);
        this.b.a(z2);
        this.b.start();
        this.l = z;
        aa.a(new com.huawei.hms.scankit.C(this.b));
        this.f365d = com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.SUCCESS;
        this.f367f = aa;
        aa.o();
        com.huawei.hms.scankit.util.a.a("scan-time", "start preview time:" + java.lang.System.currentTimeMillis());
        f();
        com.huawei.hms.scankit.p.AbstractC0149gd.c(null);
    }

    private com.huawei.hms.scankit.aiscan.common.z b(com.huawei.hms.scankit.aiscan.common.z zVar) {
        float fB;
        float fC;
        int iMax;
        android.graphics.Point pointA = com.huawei.hms.scankit.util.c.a(this.f366e);
        android.graphics.Point pointE = this.f367f.e();
        int i = pointA.x;
        int i2 = pointA.y;
        if (i < i2) {
            fB = (zVar.b() * ((i * 1.0f) / pointE.y)) - (java.lang.Math.max(pointA.x, pointE.y) / 2.0f);
            fC = zVar.c() * ((i2 * 1.0f) / pointE.x);
            iMax = java.lang.Math.min(pointA.y, pointE.x);
        } else {
            fB = (zVar.b() * ((i * 1.0f) / pointE.x)) - (java.lang.Math.min(pointA.y, pointE.y) / 2.0f);
            fC = zVar.c() * ((i2 * 1.0f) / pointE.y);
            iMax = java.lang.Math.max(pointA.x, pointE.x);
        }
        return new com.huawei.hms.scankit.aiscan.common.z(fB, fC - (iMax / 2.0f));
    }

    public void a(com.huawei.hms.scankit.A a) {
        this.k = a;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.A
    public void a(com.huawei.hms.scankit.aiscan.common.z zVar) {
        if (this.f368g != null) {
            this.f368g.a(b(zVar));
        }
    }

    public void a(boolean z) {
        this.i = z;
    }

    public boolean a() {
        com.huawei.hms.scankit.A a = this.k;
        if (a != null) {
            return a.a();
        }
        return false;
    }

    public int b() {
        return this.f364c;
    }

    public void b(boolean z) {
        this.j = z;
    }

    public void c(boolean z) {
        this.h = z;
    }

    public boolean c() {
        return this.i;
    }

    public boolean d() {
        return this.j;
    }

    public void e() {
        this.f365d = com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.DONE;
        this.f367f.p();
        android.os.Message.obtain(this.b.a(), com.huawei.hms.scankit.R.id.scankit_quit).sendToTarget();
        try {
            this.b.b();
            this.b.join(50L);
        } catch (java.lang.InterruptedException unused) {
            com.huawei.hms.scankit.util.a.d("CaptureHandler", "quitSynchronously   wait interrupt");
        }
        removeMessages(com.huawei.hms.scankit.R.id.scankit_decode_succeeded);
        removeMessages(com.huawei.hms.scankit.R.id.scankit_decode_failed);
    }

    public void f() {
        if (this.f365d == com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.SUCCESS) {
            this.f365d = com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.PREVIEW;
            this.f367f.n();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        int i = message.what;
        if (i != com.huawei.hms.scankit.R.id.scankit_restart_preview) {
            if (i != com.huawei.hms.scankit.R.id.scankit_decode_succeeded) {
                if (i == com.huawei.hms.scankit.R.id.scankit_decode_failed) {
                    this.f365d = com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.PREVIEW;
                    this.f367f.n();
                    return;
                }
                return;
            }
            this.f365d = com.huawei.hms.scankit.HandlerC0101a.EnumC0005a.SUCCESS;
            java.lang.Object obj = message.obj;
            if (!(obj instanceof com.huawei.hms.ml.scan.HmsScan[])) {
                return;
            }
            com.huawei.hms.ml.scan.HmsScan[] hmsScanArr = (com.huawei.hms.ml.scan.HmsScan[]) obj;
            if (hmsScanArr.length <= 0 || hmsScanArr[0] == null || android.text.TextUtils.isEmpty(hmsScanArr[0].originalValue)) {
                com.huawei.hms.scankit.util.a.c("CaptureHandler", "retrieve  HmsScan lenth is 0");
            } else {
                com.huawei.hms.scankit.util.a.c("CaptureHandler", "scan successful");
                android.graphics.Bitmap bitmapDecodeByteArray = null;
                float f2 = 0.0f;
                if (this.i) {
                    com.huawei.hms.scankit.util.a.c("CaptureHandler", "scan successful & return bitmap");
                    android.os.Bundle data = message.getData();
                    if (data != null) {
                        byte[] byteArray = data.getByteArray("barcode_bitmap");
                        f2 = data.getFloat("barcode_scaled_factor", 0.0f);
                        if (byteArray != null && byteArray.length > 0) {
                            bitmapDecodeByteArray = android.graphics.BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                        }
                    }
                }
                this.a.a(hmsScanArr, bitmapDecodeByteArray, f2);
                if (!this.l) {
                    return;
                }
            }
        }
        f();
    }
}
