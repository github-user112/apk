package f.a.f;

/* loaded from: classes.dex */
public class d extends android.bluetooth.le.AdvertiseCallback {
    public final /* synthetic */ f.a.f.e a;

    public d(f.a.f.e eVar) {
        this.a = eVar;
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public void onStartFailure(int i) {
        e.e.a.g.c(e.a.c.a.a.K("BleTransManager onStartFailure errorCode: ", i), new java.lang.Object[0]);
        this.a.b.sendEmptyMessage(2);
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public void onStartSuccess(android.bluetooth.le.AdvertiseSettings advertiseSettings) {
        e.e.a.g.c("BleTransManager onStartSuccess", new java.lang.Object[0]);
        this.a.b.sendEmptyMessage(3);
    }
}
