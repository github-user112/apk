package f.a.g;

/* loaded from: classes.dex */
public class i extends android.bluetooth.BluetoothHidDevice.Callback {
    public final /* synthetic */ f.a.g.h a;

    public i(f.a.g.h hVar) {
        this.a = hVar;
    }

    @Override // android.bluetooth.BluetoothHidDevice.Callback
    public void onAppStatusChanged(android.bluetooth.BluetoothDevice bluetoothDevice, boolean z) {
        e.e.a.g.c("BtHidHelper onAppStatusChanged pluggedDevice = " + bluetoothDevice + " , registered = " + z, new java.lang.Object[0]);
        f.a.g.h hVar = this.a;
        if (z) {
            hVar.j = true;
            hVar.k = false;
            f.a.g.h.b bVar = hVar.f2858c;
            if (bVar != null) {
                ((f.a.g.j) bVar).j(true);
                return;
            }
            return;
        }
        hVar.j = false;
        hVar.k = false;
        f.a.g.h.b bVar2 = hVar.f2858c;
        if (bVar2 != null) {
            ((f.a.g.j) bVar2).j(false);
        }
    }

    @Override // android.bluetooth.BluetoothHidDevice.Callback
    public void onConnectionStateChanged(android.bluetooth.BluetoothDevice bluetoothDevice, int i) {
        e.e.a.g.c(e.a.c.a.a.K("BtHidHelper onConnectionStateChanged state = ", i), new java.lang.Object[0]);
        if (i == 0) {
            f.a.g.h hVar = this.a;
            hVar.j = false;
            hVar.k = false;
        }
        f.a.g.h.b bVar = this.a.f2858c;
        if (bVar != null) {
            final f.a.g.j jVar = (f.a.g.j) bVar;
            if (jVar == null) {
                throw null;
            }
            e.e.a.g.c(e.a.c.a.a.K("BtHidManager onAppConnectionStateChanged state = ", i), new java.lang.Object[0]);
            jVar.f2863c.removeMessages(5);
            if (jVar.k == 1 && i == 2) {
                jVar.l = 1;
                jVar.f2863c.removeMessages(4);
                jVar.a();
            }
            if (jVar.k == 1 && (i == 0 || i == 3)) {
                jVar.l = 0;
                jVar.f2863c.removeMessages(4);
                jVar.a();
            }
            if (jVar.k != 1 && i == 0) {
                jVar.l = -1;
                jVar.o();
                if (jVar.c()) {
                    jVar.f2863c.postDelayed(new java.lang.Runnable() { // from class: f.a.g.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            jVar.e();
                        }
                    }, 5000L);
                }
            }
            jVar.k = i;
            if (i == 1) {
                jVar.f2863c.removeMessages(4);
                jVar.f2863c.sendEmptyMessageDelayed(4, 5000L);
            }
        }
    }
}
