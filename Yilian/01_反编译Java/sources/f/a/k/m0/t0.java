package f.a.k.m0;

/* loaded from: classes.dex */
public class t0 implements f.a.k.k0.e, f.a.i.h.c, f.a.i.h.g {

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.Object f3102f = new java.lang.Object();
    public final f.a.k.k0.f a;
    public final android.os.Handler b;

    /* renamed from: c, reason: collision with root package name */
    public final f.a.i.j.c f3103c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3104d = true;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f3105e;

    public t0(f.a.k.k0.f fVar, android.os.Handler handler, f.a.i.j.c cVar) {
        this.a = fVar;
        f.a.k.l0.v3 v3Var = (f.a.k.l0.v3) fVar;
        if (v3Var == null) {
            throw null;
        }
        v3Var.I = this;
        this.b = handler;
        this.f3103c = cVar;
    }

    @Override // f.a.i.h.c
    public void A() {
    }

    @Override // f.a.i.h.c
    public void C() {
    }

    @Override // f.a.i.h.c
    public void D() {
    }

    @Override // f.a.i.h.c
    public void F() {
    }

    @Override // f.a.i.h.c
    public void G(int i) {
        e.e.a.g.c(e.a.c.a.a.K("onConfigFailed : type = ", i), new java.lang.Object[0]);
        android.os.Handler handler = this.b;
        f.a.k.k0.f fVar = this.a;
        fVar.getClass();
        handler.post(new f.a.k.m0.m0(fVar));
        this.f3103c.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 20, java.lang.String.valueOf(i));
    }

    @Override // f.a.i.h.c
    public void J() {
    }

    @Override // f.a.i.h.g
    public void M(int i, java.lang.String str) {
    }

    @Override // f.a.i.h.c
    public void P(int i, java.lang.String str) {
    }

    @Override // f.a.i.h.c
    public void Q(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, java.lang.String str8, java.lang.String str9) {
    }

    @Override // f.a.i.h.g
    public void S(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i) {
    }

    @Override // f.a.i.h.c
    public void Z(int i) {
        e.e.a.g.c(e.a.c.a.a.K("onTransportFailed : type = ", i), new java.lang.Object[0]);
        this.b.removeCallbacksAndMessages(f3102f);
        android.os.Handler handler = this.b;
        f.a.k.k0.f fVar = this.a;
        fVar.getClass();
        handler.post(new f.a.k.m0.m0(fVar));
        this.f3103c.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 20, java.lang.String.valueOf(i));
    }

    @Override // f.a.k.k0.e
    public void a(int i, int i2, java.lang.String str) {
        f.a.i.j.c cVar = this.f3103c;
        if (cVar != null) {
            cVar.a(i, i2, str);
        }
    }

    @Override // f.a.i.h.g
    public void c() {
    }

    @Override // f.a.i.h.c
    public void c0(java.util.List<net.easyconn.ecsdk.ECTypes.ECPageInfo> list) {
    }

    @Override // f.a.i.h.c
    public void d() {
    }

    @Override // f.a.i.h.c
    public void e(boolean z, net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        e.a.c.a.a.z("onPhoneConnectStatus : isConnected = ", z);
        this.b.removeCallbacksAndMessages(f3102f);
        if (!z) {
            android.os.Handler handler = this.b;
            final f.a.k.k0.f fVar = this.a;
            fVar.getClass();
            handler.post(new java.lang.Runnable() { // from class: f.a.k.m0.h
                @Override // java.lang.Runnable
                public final void run() {
                    if (((f.a.k.l0.v3) fVar) == null) {
                        throw null;
                    }
                    e.e.a.g.a("==> show QrCodeFragment !");
                }
            });
            return;
        }
        if (this.a != null) {
            e.e.a.g.a("statusTipConnectingAtTime start");
            this.b.post(new java.lang.Runnable() { // from class: f.a.k.m0.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.v0();
                }
            });
            this.b.postAtTime(new java.lang.Runnable() { // from class: f.a.k.m0.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.w0();
                }
            }, f3102f, android.os.SystemClock.uptimeMillis() + 10000);
        }
    }

    @Override // f.a.i.h.c
    public void e0() {
    }

    @Override // f.a.i.h.c
    public void f(boolean z) {
    }

    @Override // f.a.i.h.c
    public void f0(boolean z) {
    }

    @Override // f.a.i.h.c
    public void g(long j) {
    }

    @Override // f.a.i.h.c
    public void h(int i) {
        f.a.i.j.c cVar = this.f3103c;
        if (cVar != null) {
            cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 20, java.lang.String.valueOf(i));
        }
        e.e.a.g.c(e.a.c.a.a.K("onInitFailed : type = ", i), new java.lang.Object[0]);
        android.os.Handler handler = this.b;
        f.a.k.k0.f fVar = this.a;
        fVar.getClass();
        handler.post(new f.a.k.m0.m0(fVar));
    }

    @Override // f.a.i.h.c
    public void h0(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData) {
    }

    @Override // f.a.i.h.c
    public void i(net.easyconn.ecsdk.ECTypes.ECPageInstallResult eCPageInstallResult) {
    }

    @Override // f.a.i.h.g
    public void j(java.lang.String str, float f2, int i, int i2) {
    }

    @Override // f.a.i.h.c
    public void j0() {
    }

    @Override // f.a.i.h.c
    public void m(boolean z) {
    }

    @Override // f.a.i.h.c
    public void m0(byte[] bArr, int i) {
    }

    @Override // f.a.i.h.c
    public void n0(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
    }

    @Override // f.a.i.h.c
    public void o(int i, int i2, int i3) {
    }

    @Override // f.a.c
    public void onDestroy() {
        f.a.i.j.c cVar = this.f3103c;
        if (cVar != null) {
            cVar.g();
        }
        this.b.removeCallbacksAndMessages(null);
        f.a.k.l0.v3 v3Var = (f.a.k.l0.v3) this.a;
        if (v3Var == null) {
            throw null;
        }
        v3Var.I = null;
    }

    @Override // f.a.i.h.c
    public void onLicenseAuthFail(final int i, final java.lang.String str) {
        this.b.post(new java.lang.Runnable() { // from class: f.a.k.m0.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.t0(i, str);
            }
        });
    }

    @Override // f.a.i.h.c
    public void onLicenseAuthSuccess(final int i, final java.lang.String str) {
        this.b.post(new java.lang.Runnable() { // from class: f.a.k.m0.z
            @Override // java.lang.Runnable
            public final void run() {
                this.a.u0(i, str);
            }
        });
    }

    @Override // f.a.i.h.c
    public void onMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
    }

    @Override // f.a.i.h.g
    public void onOTAUpdateRequestDownload(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i) {
    }

    @Override // f.a.i.h.c
    public void onPageStatusChanged(int i, int i2, int i3) {
    }

    @Override // f.a.i.h.c
    public void onParallelWorldAudioSource(int i) {
    }

    @Override // f.a.i.h.c
    public void onPhoneBluetoothState(int i, java.lang.String str) {
    }

    @Override // f.a.c
    public void onStart() {
    }

    @Override // f.a.i.h.c
    public void q(boolean z, boolean z2) {
    }

    public void q0(android.content.Context context, f.a.i.i.q qVar) {
        if (qVar.T) {
            return;
        }
        f.a.i.i.m mVar = qVar.b;
        if (mVar != null) {
            mVar.q = this;
        }
        qVar.C = this;
        this.f3105e = f.a.i.l.a.s(context);
        qVar.z(f.a.i.l.a.k(context), f.a.i.l.a.q(context), net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode.EC_OTA_CHECK_ONLY_LOCAL);
        if (this.f3104d) {
            return;
        }
        final java.lang.String strZ = f.a.i.l.a.z(context);
        e.a.c.a.a.w("checkLocalUpdatePackageAvailable packageFile = ", strZ);
        if (strZ != null) {
            this.b.post(new java.lang.Runnable() { // from class: f.a.k.m0.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.r0(strZ);
                }
            });
        }
    }

    public /* synthetic */ void r0(java.lang.String str) {
        ((f.a.k.l0.v3) this.a).k0(str, null);
    }

    public /* synthetic */ void s0(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware) {
        ((f.a.k.l0.v3) this.a).k0(eCOTAUpdateSoftware.packagePath, eCOTAUpdateSoftware.vcDetail);
    }

    @Override // f.a.i.h.c
    public void t(long j, long j2, long j3, long j4) {
    }

    public /* synthetic */ void t0(int i, java.lang.String str) {
        ((f.a.k.l0.v3) this.a).i0(i, str);
    }

    @Override // f.a.i.h.g
    public void u(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i, net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr2, int i2) {
        if (i2 <= 0) {
            return;
        }
        for (final net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware eCOTAUpdateSoftware : eCOTAUpdateSoftwareArr2) {
            if (eCOTAUpdateSoftware.softwareId.equals(this.f3105e)) {
                this.b.post(new java.lang.Runnable() { // from class: f.a.k.m0.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.s0(eCOTAUpdateSoftware);
                    }
                });
                return;
            }
        }
    }

    public /* synthetic */ void u0(int i, java.lang.String str) {
        ((f.a.k.l0.v3) this.a).j0(i, str);
    }

    @Override // f.a.i.h.c
    public void v(int i) {
    }

    public void v0() {
        if (((f.a.k.l0.v3) this.a) == null) {
            throw null;
        }
    }

    public /* synthetic */ void w0() {
        f.a.k.k0.f fVar = this.a;
        if (fVar != null) {
            ((f.a.k.l0.v3) fVar).e();
        }
    }

    @Override // f.a.i.h.c
    public void x(boolean z) {
    }
}
