package f.a.k.m0;

/* loaded from: classes.dex */
public class u0 implements f.a.k.k0.g, f.a.i.h.c {
    public final net.easyconn.framework.sdkservice.EasyConnectService a;
    public f.a.k.k0.h b;

    public u0(android.content.Context context, f.a.k.k0.h hVar, net.easyconn.framework.sdkservice.EasyConnectService easyConnectService) {
        this.a = easyConnectService;
        this.b = hVar;
        hVar.E(this);
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
    }

    @Override // f.a.i.h.c
    public void J() {
    }

    @Override // f.a.k.k0.g
    public int L() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null || easyConnectService.a == null) {
            return 0;
        }
        return this.a.a.o;
    }

    @Override // f.a.i.h.c
    public void P(int i, java.lang.String str) {
        e.e.a.g.c("QrRegisterPresenter onLicenseAuthFailForQuickCheck, errCode = " + i + ", errMsg = " + str, new java.lang.Object[0]);
        this.b.r(i, str);
    }

    @Override // f.a.i.h.c
    public void Q(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, java.lang.String str8, java.lang.String str9) {
    }

    @Override // f.a.k.k0.g
    public java.lang.String V() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null) {
            return "";
        }
        if (easyConnectService.f3177g == null) {
            easyConnectService.b();
        }
        return easyConnectService.f3177g.getLicensePwd();
    }

    @Override // f.a.i.h.c
    public void Z(int i) {
    }

    @Override // f.a.k.k0.g
    public java.lang.String b() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        return easyConnectService != null ? easyConnectService.a() : "";
    }

    @Override // f.a.k.k0.g
    public java.lang.String b0() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        return (easyConnectService == null || easyConnectService.a == null) ? "" : this.a.a.p;
    }

    @Override // f.a.i.h.c
    public void c0(java.util.List<net.easyconn.ecsdk.ECTypes.ECPageInfo> list) {
    }

    @Override // f.a.i.h.c
    public void d() {
    }

    @Override // f.a.i.h.c
    public void e(boolean z, net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
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

    @Override // f.a.k.k0.g
    public boolean g0() {
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null || easyConnectService.a == null) {
            return false;
        }
        return this.a.a.l;
    }

    @Override // f.a.i.h.c
    public void h(int i) {
    }

    @Override // f.a.i.h.c
    public void h0(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData) {
    }

    @Override // f.a.i.h.c
    public void i(net.easyconn.ecsdk.ECTypes.ECPageInstallResult eCPageInstallResult) {
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
    }

    @Override // f.a.i.h.c
    public void onLicenseAuthFail(int i, java.lang.String str) {
        e.e.a.g.c("QrRegisterPresenter onLicenseAuthFail, errCode = " + i + ", errMsg = " + str, new java.lang.Object[0]);
        this.b.k(i, str);
    }

    @Override // f.a.i.h.c
    public void onLicenseAuthSuccess(int i, java.lang.String str) {
        e.e.a.g.c("QrRegisterPresenter onLicenseAuthSuccess, authCode = " + i + ", authMsg = " + str, new java.lang.Object[0]);
        this.b.G();
    }

    @Override // f.a.i.h.c
    public void onMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
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

    @Override // f.a.k.k0.g
    public void s() {
        e.e.a.g.c("QrRegisterPresenter startQuickCheckLicense", new java.lang.Object[0]);
        net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = this.a;
        if (easyConnectService == null) {
            e.e.a.g.c("QrRegisterPresenter startQuickCheckLicense fail, ecConnectService is null", new java.lang.Object[0]);
            return;
        }
        f.a.i.i.q qVar = easyConnectService.a;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 43;
        qVar.r.sendMessage(messageObtain);
        this.b.J();
    }

    @Override // f.a.i.h.c
    public void t(long j, long j2, long j3, long j4) {
    }

    @Override // f.a.i.h.c
    public void v(int i) {
    }

    @Override // f.a.i.h.c
    public void x(boolean z) {
    }
}
