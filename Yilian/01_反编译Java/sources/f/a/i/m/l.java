package f.a.i.m;

/* loaded from: classes.dex */
public class l implements f.a.i.h.i {
    public long a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f2947c;

    /* renamed from: d, reason: collision with root package name */
    public long f2948d;

    /* renamed from: e, reason: collision with root package name */
    public long f2949e;

    /* renamed from: f, reason: collision with root package name */
    public long f2950f;
    public boolean i;

    /* renamed from: g, reason: collision with root package name */
    public long f2951g = 0;
    public long h = 0;
    public final java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.reflect.Method> j = new java.util.concurrent.ConcurrentHashMap<>();

    public final void a() {
        this.f2951g = 0L;
        this.h = 0L;
        this.f2949e = 0L;
        this.f2950f = 0L;
    }

    public long b() {
        return this.a + this.f2947c;
    }

    public long c() {
        return this.b + this.f2948d;
    }

    public final void d(long j, long j2) {
        long j3 = this.f2951g;
        if (j < j3 || j2 < this.h) {
            e.e.a.g.c("interfaceName rtxTraffic rxBytes < lastRx or txBytes < lastTx, return", new java.lang.Object[0]);
            return;
        }
        if (j3 > 0) {
            long j4 = j - j3;
            if (j4 > 0) {
                this.f2947c += j4;
                this.f2949e = j4 / 2;
            }
        }
        this.f2951g = j;
        long j5 = this.h;
        if (j5 > 0) {
            long j6 = j2 - j5;
            if (j6 > 0) {
                this.f2948d += j6;
                this.f2950f = j6 / 2;
            }
        }
        this.h = j2;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("interfaceName totalThisRx ");
        sbO.append(this.f2947c);
        sbO.append(" totalThisTx = ");
        sbO.append(this.f2948d);
        sbO.append(" rxBytes = ");
        sbO.append(j);
        sbO.append(" txBytes = ");
        sbO.append(j2);
        e.e.a.g.a(sbO.toString());
    }

    public void e(boolean z) {
        e.e.a.g.c("VpnTrafficStats setDisConnected = " + z, new java.lang.Object[0]);
        this.i = z;
    }

    public final void f(boolean z) {
        long j;
        if (z) {
            j = 0;
            this.a = 0L;
        } else {
            this.a += this.f2947c;
            j = this.b + this.f2948d;
        }
        this.b = j;
    }
}
