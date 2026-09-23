package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class c {
    public static java.util.HashMap<java.lang.Long, java.lang.String> a = new java.util.HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f933c;
    public com.tencent.bugly.beta.utils.a b = null;

    /* renamed from: d, reason: collision with root package name */
    public long f934d = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f935e = 0;

    /* renamed from: f, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> f936f = null;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f937g = new byte[16];
    public long h = 0;
    public long i = 0;
    public java.lang.String j = null;
    public long k = 0;
    public long l = 0;
    public long m = 0;
    public long n = 0;
    public long o = 0;
    public long p = 0;
    public long q = 0;
    public long r = 0;
    public long s = 0;
    public long t = 0;
    public long u = 0;

    public static class a {
        public long a = -1;
        public long b = 0;

        /* renamed from: c, reason: collision with root package name */
        public long f938c = 0;

        /* renamed from: d, reason: collision with root package name */
        public long f939d = -1;

        /* renamed from: e, reason: collision with root package name */
        public long f940e = -1;

        /* renamed from: f, reason: collision with root package name */
        public long f941f = 0;

        /* renamed from: g, reason: collision with root package name */
        public long f942g = 0;
        public long h = 0;
        public long i = 0;
        public long j = 0;

        public long a() {
            return this.f939d;
        }

        public synchronized void a(long j) {
            this.f939d = j;
        }

        public long b() {
            return this.j;
        }

        public synchronized void b(long j) {
            this.i = j;
        }

        public long c() {
            return this.a;
        }

        public synchronized void c(long j) {
            this.j = j;
        }

        public long d() {
            return this.f940e;
        }

        public synchronized void d(long j) {
            this.f938c = j;
        }

        public long e() {
            return this.f941f;
        }

        public synchronized void e(long j) {
            this.h = j;
        }

        public synchronized void f(long j) {
            this.f942g = j;
        }

        public synchronized void g(long j) {
            this.a = j;
        }

        public synchronized void h(long j) {
            this.f940e = j;
        }

        public synchronized void i(long j) {
            this.f941f = j;
        }

        public synchronized void j(long j) {
            this.b = j;
        }
    }

    public static class b {
        public java.lang.String a = null;
        public long b = -1;

        /* renamed from: c, reason: collision with root package name */
        public long f943c = -1;

        /* renamed from: d, reason: collision with root package name */
        public long f944d = 0;

        /* renamed from: e, reason: collision with root package name */
        public long f945e = 0;

        public long a() {
            return this.f943c;
        }

        public synchronized void a(long j) {
            this.b = j;
        }

        public synchronized void a(java.lang.String str) {
            this.a = str;
        }

        public synchronized void b(long j) {
            this.f945e = j;
        }

        public synchronized void c(long j) {
            this.f943c = j;
        }

        public synchronized void d(long j) {
            this.f944d = j;
        }
    }

    public c(java.lang.String str) {
        this.f933c = null;
        this.f933c = str;
        a.put(3L, "x86");
        a.put(7L, "x86");
        a.put(8L, "mips");
        a.put(10L, "mips");
        a.put(40L, "armeabi");
        a.put(62L, "x86_64");
        a.put(183L, "arm64-v8a");
    }

    private long a(byte b2) {
        return 1 == b2 ? com.tencent.bugly.beta.utils.a.f924c : 2 == b2 ? com.tencent.bugly.beta.utils.a.b : com.tencent.bugly.beta.utils.a.a;
    }

    public static java.lang.String a(long j, long j2) {
        java.lang.String str = a.get(java.lang.Long.valueOf(j));
        return (64 == j2 && str.equals("mips")) ? "mips64" : str;
    }

    private synchronized java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> a(long j, long j2, long j3) {
        if (!g()) {
            b();
            return null;
        }
        if (!this.b.b(j)) {
            b();
            return null;
        }
        java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> mapB = b(j2, j3);
        b();
        return mapB;
    }

    public static boolean a(byte[] bArr) {
        return bArr.length >= 3 && 127 == bArr[0] && 69 == bArr[1] && 76 == bArr[2] && 70 == bArr[3];
    }

    private long b(byte b2) {
        if (1 == b2) {
            return 32L;
        }
        return 2 == b2 ? 64L : 0L;
    }

    private synchronized java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> b(long j, long j2) {
        if (j <= 0 || j2 <= 0) {
            com.tencent.bugly.proguard.aa.e("The SO file is invalid or has a shell.", new java.lang.Object[0]);
            return null;
        }
        java.util.Vector vector = new java.util.Vector();
        for (int i = 0; i < j; i++) {
            vector.add(l());
        }
        com.tencent.bugly.beta.utils.c.a aVar = (com.tencent.bugly.beta.utils.c.a) vector.get((int) j2);
        long length = new java.io.File(this.f933c).length();
        com.tencent.bugly.proguard.aa.a("File length = %d", java.lang.Long.valueOf(length));
        if (aVar.d() >= length) {
            com.tencent.bugly.proguard.aa.e("The SO file is invalid or has a shell.", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.beta.utils.d dVar = new com.tencent.bugly.beta.utils.d(this.f933c, aVar.d(), aVar.e());
        java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> map = new java.util.HashMap<>();
        java.util.Iterator it = vector.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.beta.utils.c.a aVar2 = (com.tencent.bugly.beta.utils.c.a) it.next();
            java.lang.String strA = dVar.a(aVar2.c());
            com.tencent.bugly.beta.utils.c.b bVar = new com.tencent.bugly.beta.utils.c.b();
            bVar.a(strA);
            bVar.a(aVar2.a());
            bVar.c(aVar2.d());
            bVar.d(aVar2.e());
            bVar.b(aVar2.b());
            map.put(strA, bVar);
        }
        dVar.a();
        return map;
    }

    private synchronized void b() {
        com.tencent.bugly.beta.utils.a aVar = this.b;
        if (aVar == null) {
            return;
        }
        if (aVar.a()) {
            this.b = null;
        }
    }

    private java.lang.String c() {
        return this.j;
    }

    private long d() {
        return this.n;
    }

    private long e() {
        return this.t;
    }

    private long f() {
        return this.u;
    }

    private synchronized boolean g() {
        boolean z;
        if (this.b != null) {
            b();
        }
        try {
            this.b = new com.tencent.bugly.beta.utils.a(this.f933c, this.f935e);
            z = true;
        } catch (java.lang.Exception e2) {
            android.util.Log.e("ElfParser", e2.getMessage());
            z = false;
        }
        return z;
    }

    private synchronized boolean h() {
        boolean z;
        if (this.b != null) {
            b();
        }
        try {
            this.b = new com.tencent.bugly.beta.utils.a(this.f933c);
            z = true;
        } catch (java.lang.Exception e2) {
            android.util.Log.e("ElfParser", e2.getMessage());
            z = false;
        }
        return z;
    }

    private boolean i() {
        if (!h()) {
            return false;
        }
        boolean zJ = j();
        b();
        return zJ;
    }

    private synchronized boolean j() {
        long jH;
        if (!k()) {
            android.util.Log.e("ElfParser", "Faile to parseElfHeader header indent of elf");
            return false;
        }
        try {
            this.h = this.b.i();
            long jI = this.b.i();
            this.i = jI;
            this.j = a(jI, this.f934d);
            this.k = this.b.g();
            if (32 == this.f934d) {
                long jG = this.b.g();
                this.k = jG;
                this.l = jG;
                this.m = this.b.g();
                jH = this.b.g();
            } else {
                if (64 != this.f934d) {
                    android.util.Log.e("ElfParser", "File format error");
                    return false;
                }
                long jH2 = this.b.h();
                this.k = jH2;
                this.l = jH2;
                this.m = this.b.h();
                jH = this.b.h();
            }
            this.n = jH;
            this.o = this.b.g();
            this.p = this.b.i();
            this.q = this.b.i();
            this.r = this.b.i();
            this.s = this.b.i();
            this.t = this.b.i();
            this.u = this.b.i();
            return true;
        } catch (java.io.IOException e2) {
            android.util.Log.e("ElfParser", e2.getMessage());
            return false;
        }
    }

    private synchronized boolean k() {
        if (!this.b.a(this.f937g)) {
            android.util.Log.e("ElfParser", "Fail to parseElfHeader elf indentification");
            return false;
        }
        if (!a(this.f937g)) {
            android.util.Log.e("ElfParser", "Not a elf file: " + this.f933c);
            return false;
        }
        long jB = b(this.f937g[4]);
        this.f934d = jB;
        if (0 == jB) {
            android.util.Log.e("ElfParser", "File format error: " + ((int) this.f937g[4]));
            return false;
        }
        long jA = a(this.f937g[5]);
        this.f935e = jA;
        if (com.tencent.bugly.beta.utils.a.a != jA) {
            this.b.a(jA);
            return true;
        }
        android.util.Log.e("ElfParser", "Endian error: " + ((int) this.f937g[5]));
        return false;
    }

    private synchronized com.tencent.bugly.beta.utils.c.a l() {
        long jH;
        long jH2;
        com.tencent.bugly.beta.utils.c.a aVar = new com.tencent.bugly.beta.utils.c.a();
        try {
            aVar.g(this.b.g());
            aVar.j(this.b.g());
            if (32 == this.f934d) {
                aVar.d(this.b.g());
                aVar.a(this.b.g());
                aVar.h(this.b.g());
                jH = this.b.g();
            } else {
                if (64 != this.f934d) {
                    android.util.Log.e("ElfParser", "File format error");
                    return null;
                }
                aVar.d(this.b.h());
                aVar.a(this.b.h());
                aVar.h(this.b.h());
                jH = this.b.h();
            }
            aVar.i(jH);
            aVar.f(this.b.g());
            aVar.e(this.b.g());
            if (32 == this.f934d) {
                aVar.b(this.b.g());
                jH2 = this.b.g();
            } else {
                if (64 != this.f934d) {
                    android.util.Log.e("ElfParser", "File format error");
                    return null;
                }
                aVar.b(this.b.h());
                jH2 = this.b.h();
            }
            aVar.c(jH2);
            return aVar;
        } catch (java.io.IOException e2) {
            android.util.Log.e("ElfParser", e2.getMessage());
            return null;
        }
    }

    private synchronized boolean m() {
        java.util.HashMap<java.lang.String, com.tencent.bugly.beta.utils.c.b> mapA;
        mapA = a(d(), e(), f());
        this.f936f = mapA;
        return mapA != null;
    }

    public synchronized java.lang.String a() {
        if (!i()) {
            android.util.Log.e("ElfParser", "Failed to parseElfHeader elf header");
            return null;
        }
        java.lang.String strC = c();
        if (!strC.equals("armeabi")) {
            return strC;
        }
        if (!m()) {
            android.util.Log.e("ElfParser", "Failed to parseElfHeader section table");
            return strC;
        }
        com.tencent.bugly.beta.utils.c.b bVar = this.f936f.get(".ARM.attributes");
        if (bVar == null) {
            android.util.Log.e("ElfParser", "No .ARM.attributes section in the elf file");
            return strC;
        }
        return com.tencent.bugly.beta.utils.b.a(this.f933c, this.f935e, bVar.a());
    }
}
