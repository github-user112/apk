package f.a.k;

/* loaded from: classes.dex */
public class i0 implements net.easyconn.framework.sdkservice.EasyConnectService.d {
    public final /* synthetic */ f.a.k.g0 a;

    public i0(f.a.k.g0 g0Var) {
        this.a = g0Var;
    }

    public void a(boolean z) {
        if (this.a.u != null) {
            this.a.u.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 50, java.lang.String.valueOf(z ? 1 : 2));
        }
        if (z && this.a.t.f3174d.e()) {
            this.a.L = true;
            e.a.c.a.a.C(e.a.c.a.a.o("important_log networkEnable mIsWifiConnected"), this.a.L);
            if (this.a == null) {
                throw null;
            }
        }
    }

    public void b(final java.lang.String str) {
        if (f.a.i.m.g.s(this.a.getApplicationContext())) {
            final f.a.k.g0 g0Var = this.a;
            g0Var.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.j
                @Override // java.lang.Runnable
                public final void run() {
                    g0Var.c0(str);
                }
            });
        }
    }

    public void c(boolean z) {
        f.a.i.j.c cVar = this.a.u;
        if (cVar != null && z) {
            cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 52, "EC_HU_HOTSPOT_OPEN");
        }
        this.a.M = z;
        e.a.c.a.a.C(e.a.c.a.a.o("important_log openHotPort mIsHotPortOpen"), this.a.M);
        if (this.a == null) {
            throw null;
        }
    }

    public void d(boolean z) {
        this.a.L = z;
        e.a.c.a.a.C(e.a.c.a.a.o("important_log wifiConnected mIsWifiConnected"), this.a.L);
        if (this.a == null) {
            throw null;
        }
    }

    public void e(boolean z) {
        this.a.K = z;
        e.a.c.a.a.C(e.a.c.a.a.o("important_log wifiOpened mIsWifiOpened"), this.a.K);
        f.a.k.g0 g0Var = this.a;
        if (g0Var == null) {
            throw null;
        }
        f.a.i.j.c cVar = g0Var.u;
        if (cVar == null || !z) {
            return;
        }
        cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 51, "EC_HU_WIFI_OPEN");
    }
}
