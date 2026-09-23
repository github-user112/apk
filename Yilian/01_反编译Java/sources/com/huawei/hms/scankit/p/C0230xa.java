package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.xa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0230xa {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f851c;

    /* renamed from: d, reason: collision with root package name */
    public android.graphics.Point f852d;

    /* renamed from: e, reason: collision with root package name */
    public int f853e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f854f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f855g;

    /* renamed from: com.huawei.hms.scankit.p.xa$a */
    public static class a {

        /* renamed from: e, reason: collision with root package name */
        public android.graphics.Point f858e;
        public int a = 0;
        public int b = 1;

        /* renamed from: c, reason: collision with root package name */
        public int f856c = 0;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f857d = "off";

        /* renamed from: f, reason: collision with root package name */
        public boolean f859f = true;

        /* renamed from: g, reason: collision with root package name */
        public boolean f860g = false;

        public com.huawei.hms.scankit.p.C0230xa.a a(int i) {
            this.b = i;
            return this;
        }

        public com.huawei.hms.scankit.p.C0230xa.a a(android.graphics.Point point) {
            this.f858e = point;
            return this;
        }

        public com.huawei.hms.scankit.p.C0230xa.a a(boolean z) {
            this.f860g = z;
            return this;
        }

        public com.huawei.hms.scankit.p.C0230xa a() {
            return new com.huawei.hms.scankit.p.C0230xa(this.a, this.b, this.f856c, this.f857d, this.f858e, this.f859f).a(this.f860g);
        }

        public com.huawei.hms.scankit.p.C0230xa.a b(int i) {
            this.f856c = i;
            return this;
        }

        public com.huawei.hms.scankit.p.C0230xa.a b(boolean z) {
            this.f859f = z;
            return this;
        }
    }

    public C0230xa(int i, int i2, int i3, java.lang.String str, android.graphics.Point point, boolean z) {
        this.a = i;
        this.b = i2;
        this.f853e = i3;
        this.f851c = str;
        this.f852d = point;
        this.f854f = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.huawei.hms.scankit.p.C0230xa a(boolean z) {
        this.f855g = z;
        return this;
    }

    public android.graphics.Point a() {
        return this.f852d;
    }

    public void a(int i) {
        this.f853e = i;
    }

    public int b() {
        return this.a;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.f853e;
    }

    public boolean e() {
        return this.f854f;
    }

    public java.lang.String f() {
        return this.f851c;
    }

    public boolean g() {
        return this.f855g;
    }
}
