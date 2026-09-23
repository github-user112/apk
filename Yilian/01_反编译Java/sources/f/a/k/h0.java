package f.a.k;

/* loaded from: classes.dex */
public class h0 implements net.easyconn.framework.sdkservice.EasyConnectService.a {
    public final /* synthetic */ f.a.k.g0 a;

    public h0(f.a.k.g0 g0Var) {
        this.a = g0Var;
    }

    public void a() {
        e.e.a.g.c("onEasyconnServiceConnected OnInitComplete", new java.lang.Object[0]);
        f.a.k.g0 g0Var = this.a;
        g0Var.t.f3176f.setOnBroadcastListener(g0Var);
        if (this.a == null) {
            throw null;
        }
    }
}
