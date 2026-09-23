package f.a.k.l0;

/* loaded from: classes.dex */
public class x3 extends android.net.ConnectivityManager.NetworkCallback {
    public final /* synthetic */ f.a.k.l0.z3 a;

    public x3(f.a.k.l0.z3 z3Var) {
        this.a = z3Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(android.net.Network network) {
        e.e.a.g.a("QrRegisterFragment onAvailable");
        super.onAvailable(network);
        this.a.n0(true);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLosing(android.net.Network network, int i) {
        e.e.a.g.a("QrRegisterFragment onLosing");
        super.onLosing(network, i);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(android.net.Network network) {
        e.e.a.g.a("QrRegisterFragment onLost");
        super.onLost(network);
        this.a.n0(false);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        e.e.a.g.a("QrRegisterFragment onUnavailable");
        super.onUnavailable();
    }
}
