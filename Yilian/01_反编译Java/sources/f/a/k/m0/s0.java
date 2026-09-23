package f.a.k.m0;

/* loaded from: classes.dex */
public class s0 extends f.a.k.m0.v0 {
    public static final java.lang.Object i = new java.lang.Object();

    public s0(f.a.k.k0.j jVar, android.os.Handler handler, f.a.i.j.c cVar) {
        super(jVar, handler, cVar);
    }

    @Override // f.a.k.m0.v0, f.a.i.h.c
    public void e(boolean z, net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        e.e.a.g.c("onPhoneConnectStatus : isConnected = " + z, new java.lang.Object[0]);
        this.b.removeCallbacksAndMessages(f.a.k.m0.v0.h);
        this.f3109f = z;
        if (z) {
            y0();
            return;
        }
        android.os.Handler handler = this.b;
        f.a.k.k0.j jVar = this.a;
        jVar.getClass();
        handler.post(new f.a.k.m0.o0(jVar));
        android.os.Handler handler2 = this.b;
        f.a.k.k0.j jVar2 = this.a;
        jVar2.getClass();
        handler2.post(new f.a.k.m0.k0(jVar2));
        this.f3110g = false;
        this.b.removeCallbacksAndMessages(i);
    }

    @Override // f.a.k.m0.v0, f.a.i.h.c
    public void e0() {
        f.a.k.k0.j jVar = this.a;
        if (jVar != null) {
            android.os.Handler handler = this.b;
            jVar.getClass();
            handler.post(new f.a.k.m0.k0(jVar));
        }
    }

    @Override // f.a.k.m0.v0
    public void y0() {
        final f.a.k.k0.j jVar = this.a;
        if (jVar != null) {
            android.os.Handler handler = this.b;
            jVar.getClass();
            handler.post(new java.lang.Runnable() { // from class: f.a.k.m0.l0
                @Override // java.lang.Runnable
                public final void run() {
                    jVar.t();
                }
            });
            this.b.postAtTime(new java.lang.Runnable() { // from class: f.a.k.m0.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.z0();
                }
            }, i, android.os.SystemClock.uptimeMillis() + 10000);
        }
    }

    public /* synthetic */ void z0() {
        this.a.q();
        this.a.I();
    }
}
