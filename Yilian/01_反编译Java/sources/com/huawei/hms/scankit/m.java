package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public final class m extends java.lang.Thread {
    public android.content.Context a;
    public final com.huawei.hms.scankit.p.Aa b;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> f475c;

    /* renamed from: d, reason: collision with root package name */
    public android.os.Handler f476d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.scankit.HandlerC0101a f477e;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.Rect f479g;
    public boolean h = true;

    /* renamed from: f, reason: collision with root package name */
    public final java.util.concurrent.CountDownLatch f478f = new java.util.concurrent.CountDownLatch(1);

    public m(android.content.Context context, com.huawei.hms.scankit.p.Aa aa, com.huawei.hms.scankit.HandlerC0101a handlerC0101a, java.util.Collection<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> collection, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, java.lang.String str, com.huawei.hms.scankit.aiscan.common.A a) {
        this.a = context;
        this.b = aa;
        this.f477e = handlerC0101a;
        java.util.EnumMap enumMap = new java.util.EnumMap(com.huawei.hms.scankit.aiscan.common.EnumC0105d.class);
        this.f475c = enumMap;
        if (map != null) {
            enumMap.putAll(map);
        }
        if (collection == null || collection.isEmpty()) {
            android.content.SharedPreferences defaultSharedPreferences = android.preference.PreferenceManager.getDefaultSharedPreferences(context);
            collection = java.util.EnumSet.noneOf(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.class);
            if (defaultSharedPreferences.getBoolean("preferences_decode_1D_product", true)) {
                collection.addAll(com.huawei.hms.scankit.i.a);
            }
            if (defaultSharedPreferences.getBoolean("preferences_decode_1D_industrial", true)) {
                collection.addAll(com.huawei.hms.scankit.i.b);
            }
            if (defaultSharedPreferences.getBoolean("preferences_decode_QR", true)) {
                collection.addAll(com.huawei.hms.scankit.i.f451d);
            }
            if (defaultSharedPreferences.getBoolean("preferences_decode_Data_Matrix", true)) {
                collection.addAll(com.huawei.hms.scankit.i.f452e);
            }
            if (defaultSharedPreferences.getBoolean("preferences_decode_Aztec", false)) {
                collection.addAll(com.huawei.hms.scankit.i.f453f);
            }
            if (defaultSharedPreferences.getBoolean("preferences_decode_PDF417", false)) {
                collection.addAll(com.huawei.hms.scankit.i.f454g);
            }
        }
        this.f475c.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS, collection);
        if (str != null) {
            this.f475c.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.CHARACTER_SET, str);
        }
        this.f475c.put(com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK, a);
        com.huawei.hms.scankit.util.a.c("DecodeThread", "Hints: " + this.f475c);
    }

    public android.os.Handler a() throws java.lang.InterruptedException {
        try {
            this.f478f.await();
        } catch (java.lang.InterruptedException unused) {
            com.huawei.hms.scankit.util.a.b("exception", "InterruptedException");
        }
        return this.f476d;
    }

    public void a(android.graphics.Rect rect) {
        this.f479g = rect;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void b() {
        this.a = null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        android.os.Looper.prepare();
        this.f476d = new com.huawei.hms.scankit.j(this.a, this.b, this.f477e, this.f475c, this.f479g, this.h);
        this.f478f.countDown();
        android.os.Looper.loop();
    }
}
