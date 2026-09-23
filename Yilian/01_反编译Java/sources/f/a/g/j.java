package f.a.g;

/* loaded from: classes.dex */
public class j implements net.easyconn.ecsdk.ebt.IEBTHIDHandle, f.a.g.h.b {
    public f.a.g.h a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.g.j.d f2863c;

    /* renamed from: d, reason: collision with root package name */
    public f.a.g.j.b f2864d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f2865e;
    public f.a.g.j.c p;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2866f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2867g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    public int k = 0;
    public int l = -1;
    public boolean m = false;
    public boolean n = false;
    public boolean o = true;
    public boolean q = false;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iBindBLEHidDevice = net.easyconn.ecsdk.ECSDK.getInstance().bindBLEHidDevice(f.a.g.j.this);
            f.a.g.j.this.q = iBindBLEHidDevice == 0;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidManager bindBLEHidDevice bindBLEHidDeviceResult = ");
            sbO.append(f.a.g.j.this.q);
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        }
    }

    public class b extends android.content.BroadcastReceiver {
        public b() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            e.e.a.g.c(e.a.c.a.a.e("BlueBroadcastReceiver onReceive action= ", action), new java.lang.Object[0]);
            if (f.a.g.j.this == null) {
                throw null;
            }
            char c2 = 65535;
            switch (action.hashCode()) {
                case -1530327060:
                    if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -301431627:
                    if (action.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1821585647:
                    if (action.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 2116862345:
                    if (action.equals("android.bluetooth.device.action.BOND_STATE_CHANGED")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 != 0 && c2 != 1 && c2 != 2) {
                if (c2 != 3) {
                    return;
                }
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0);
                if (intExtra != 12 && intExtra != 10) {
                    return;
                }
            }
            f.a.g.j.this.k();
        }
    }

    public interface c {
    }

    public class d extends android.os.Handler {
        public d(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            boolean zConnect;
            f.a.g.j jVar = f.a.g.j.this;
            if (!jVar.f2866f) {
                jVar.f2863c.removeCallbacksAndMessages(null);
                return;
            }
            if (jVar == null) {
                throw null;
            }
            int i = message.what;
            if (i == 0) {
                f.a.g.h hVar = jVar.a;
                android.bluetooth.BluetoothAdapter bluetoothAdapter = hVar.f2861f;
                if (bluetoothAdapter != null) {
                    try {
                        e.e.a.g.c("BtHidHelper.profileProxy = " + bluetoothAdapter.getProfileProxy(hVar.f2859d, hVar.l, hVar.b()), new java.lang.Object[0]);
                    } catch (java.lang.Exception e2) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidHelper.getProfileProxyHid");
                        sbO.append(android.util.Log.getStackTraceString(e2));
                        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
                    }
                }
            } else if (i == 1) {
                f.a.g.h hVar2 = jVar.a;
                if (hVar2.i != null) {
                    e.e.a.g.c("BtHidHelper registerBluetoothHid start", new java.lang.Object[0]);
                    hVar2.k = true;
                    if (!hVar2.i.registerApp(hVar2.b, null, hVar2.a, java.util.concurrent.Executors.newCachedThreadPool(), new f.a.g.i(hVar2))) {
                        e.e.a.g.c("BtHidHelper registerApp fail", new java.lang.Object[0]);
                        hVar2.j = false;
                        hVar2.k = false;
                    }
                }
            } else if (i == 2) {
                jVar.f2865e = jVar.a.a();
                if (android.text.TextUtils.isEmpty(f.a.g.j.this.f2865e)) {
                    e.e.a.g.c("BtHidManager getConnectedBtDeviceAddress fail", new java.lang.Object[0]);
                    f.a.g.j jVar2 = f.a.g.j.this;
                    f.a.g.j.d dVar = jVar2.f2863c;
                    if (jVar2 == null) {
                        throw null;
                    }
                    dVar.sendEmptyMessageDelayed(2, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                } else {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("BtHidManager getConnectedBtDeviceAddress success, address is ");
                    sbO2.append(f.a.g.j.this.f2865e);
                    e.e.a.g.c(sbO2.toString(), new java.lang.Object[0]);
                    f.a.g.j.this.f2863c.removeMessages(2);
                    f.a.g.j.this.f2863c.sendEmptyMessage(3);
                }
            } else if (i == 3) {
                f.a.g.h hVar3 = jVar.a;
                java.lang.String str = jVar.f2865e;
                if (hVar3 == null) {
                    throw null;
                }
                if (android.text.TextUtils.isEmpty(str) || hVar3.f2861f == null || hVar3.i == null) {
                    zConnect = false;
                } else {
                    e.e.a.g.c(e.a.c.a.a.e("BtHidHelper connect deviceAddress = ", str), new java.lang.Object[0]);
                    android.bluetooth.BluetoothDevice remoteDevice = hVar3.f2861f.getRemoteDevice(str);
                    hVar3.h = remoteDevice;
                    zConnect = hVar3.i.connect(remoteDevice);
                }
                f.a.g.j.this.f2863c.sendEmptyMessageDelayed(5, 10000L);
                if (zConnect) {
                    e.e.a.g.c("BtHidManager connect success", new java.lang.Object[0]);
                    f.a.g.j.this.f2863c.removeMessages(3);
                } else {
                    e.e.a.g.c("BtHidManager connect fail", new java.lang.Object[0]);
                    f.a.g.j jVar3 = f.a.g.j.this;
                    f.a.g.j.d dVar2 = jVar3.f2863c;
                    if (jVar3 == null) {
                        throw null;
                    }
                    dVar2.sendEmptyMessageDelayed(3, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                }
            } else if (i == 4) {
                e.e.a.g.c("BtHidManager MSG_CHECK_CONNECT_HID_STATUS", new java.lang.Object[0]);
                f.a.g.j jVar4 = f.a.g.j.this;
                if (jVar4.k == 1) {
                    jVar4.l = 0;
                    jVar4.f2863c.removeMessages(4);
                    jVar4.a();
                }
            } else if (i == 5) {
                e.e.a.g.c("BtHidManager MSG_CHECK_CONNECT_HID_CALLBACK", new java.lang.Object[0]);
                f.a.g.j jVar5 = f.a.g.j.this;
                if (jVar5 == null) {
                    throw null;
                }
                e.a.c.a.a.A(e.a.c.a.a.o("BtHidManager checkHidConnectCallBack mHidConnectionState = "), jVar5.k);
                if (jVar5.k == 0) {
                    jVar5.l = 0;
                    jVar5.f2863c.removeMessages(5);
                    jVar5.a();
                }
            }
            super.handleMessage(message);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j(android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.g.j.<init>(android.content.Context):void");
    }

    public void a() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidManager attemtBindBLEHidDevice mIsTransportOpen = ");
        sbO.append(this.h);
        sbO.append(" , mHidSupportStatus = ");
        sbO.append(this.l);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        if (!this.h || this.l != 1) {
            if (!this.h || this.l != 0) {
                e.e.a.g.c("BtHidManager attemtBindBLEHidDevice waitting ...", new java.lang.Object[0]);
                return;
            } else {
                b(false);
                e.e.a.g.c("BtHidManager attemtBindBLEHidDevice not support", new java.lang.Object[0]);
                return;
            }
        }
        b(true);
        e.e.a.g.c("BtHidManager attemtBindBLEHidDevice support", new java.lang.Object[0]);
        android.bluetooth.BluetoothAdapter bluetoothAdapter = this.a.f2861f;
        java.lang.String name = bluetoothAdapter == null ? "" : bluetoothAdapter.getName();
        android.bluetooth.BluetoothAdapter bluetoothAdapter2 = this.a.f2861f;
        java.lang.String address = bluetoothAdapter2 == null ? "" : bluetoothAdapter2.getAddress();
        e.e.a.g.c(e.a.c.a.a.g("BtHidManager attemtBindBLEHidDevice checkBtHidCorrect carBtName = ", name, " , carBtMac = ", address), new java.lang.Object[0]);
        if (android.text.TextUtils.isEmpty(address) || android.text.TextUtils.equals(com.umeng.commonsdk.statistics.idtracking.Envelope.dummyID2, address)) {
            e.e.a.g.c("BtHidManager attemtBindBLEHidDevice checkBtHidCorrect not need  beacause carBtMac is invalid", new java.lang.Object[0]);
            return;
        }
        f.a.g.j.c cVar = this.p;
        if (cVar != null) {
            f.a.i.i.i iVar = (f.a.i.i.i) cVar;
            if (iVar == null) {
                throw null;
            }
            e.e.a.g.a("EasyConnectService checkBtHidCorrect carBtName = " + name + " , carBtMac = " + address);
            if (iVar.a.a != null) {
                f.a.i.i.q qVar = iVar.a.a;
                if (qVar == null) {
                    throw null;
                }
                e.e.a.g.a("setConnectedBtAddress carBtName = " + name + " carBtMac = " + address + " phoneBtName =  phoneBtMac = ");
                android.os.Message messageObtain = android.os.Message.obtain();
                android.os.Bundle bundle = new android.os.Bundle();
                bundle.putString("carBtName", name);
                bundle.putString("carBtMac", address);
                bundle.putString("phoneBtName", "");
                bundle.putString("phoneBtMac", "");
                messageObtain.obj = bundle;
                messageObtain.what = 52;
                qVar.r.sendMessage(messageObtain);
            }
        }
    }

    public void b(boolean z) {
        this.f2863c.post(z ? new f.a.g.j.a() : new java.lang.Runnable() { // from class: f.a.g.c
            @Override // java.lang.Runnable
            public final void run() {
                net.easyconn.ecsdk.ECSDK.getInstance().bindBLEHidDeviceError();
            }
        });
        e.e.a.g.c("BtHidManager bindBLEHidDevice end , isSupoort = " + z, new java.lang.Object[0]);
    }

    public boolean c() {
        if (!this.m) {
            e.e.a.g.c("BtHidManager start return becasue bt not open", new java.lang.Object[0]);
            return false;
        }
        if (!this.n) {
            e.e.a.g.c("BtHidManager start return becasue bt not connect", new java.lang.Object[0]);
            return false;
        }
        if (this.f2866f) {
            return true;
        }
        e.e.a.g.c("BtHidManager start return becasue ui not foreground", new java.lang.Object[0]);
        return false;
    }

    public /* synthetic */ void f(int i) {
        this.a.d(i);
    }

    public /* synthetic */ void h(net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData, net.easyconn.ecsdk.ECTypes.ECTouchEventType eCTouchEventType) {
        this.a.c(eCTouchEventData.pointX, eCTouchEventData.pointY, eCTouchEventData.slot, eCTouchEventType == net.easyconn.ecsdk.ECTypes.ECTouchEventType.EC_TOUCH_UP);
    }

    public void j(boolean z) {
        e.e.a.g.c("BtHidManager onAppRegisterStatusChanged registered = " + z, new java.lang.Object[0]);
        this.j = z;
        g();
    }

    public void k() {
        boolean zIsEnabled = this.a.f2861f.isEnabled();
        boolean z = this.a.a() != null;
        e.e.a.g.c("BtHidManager onBluetoothStatusChange bluetoothOpen = " + zIsEnabled + ", bluetoothConnect = " + z, new java.lang.Object[0]);
        if (!zIsEnabled) {
            o();
            this.a.e();
            this.i = false;
            this.j = false;
            this.l = -1;
            this.k = 0;
            n();
        } else {
            if (this.n && !z) {
                e.e.a.g.c("BtHidManager onBluetoothStatusChange connect to disconnet", new java.lang.Object[0]);
                this.m = zIsEnabled;
                this.n = z;
                o();
                this.a.e();
                this.i = false;
                this.j = false;
                this.l = -1;
                this.k = 0;
                n();
                return;
            }
            if (!this.n && z) {
                e.e.a.g.c("BtHidManager onBluetoothStatusChange disconnet to connect", new java.lang.Object[0]);
                this.m = zIsEnabled;
                this.n = z;
                g();
                return;
            }
        }
        this.m = zIsEnabled;
        this.n = z;
    }

    public void l(boolean z) {
        this.f2866f = z;
        if (!this.f2867g && z) {
            e.e.a.g.c("BtHidManager setAppForeground to Foreground", new java.lang.Object[0]);
            g();
        }
        if (this.f2867g && !z) {
            e.e.a.g.c("BtHidManager setAppForeground to Background", new java.lang.Object[0]);
            n();
        }
        this.f2867g = z;
    }

    /* renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void g() {
        if (c()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidManager start mProfileServiceConnected :");
            sbO.append(this.i);
            sbO.append(", mAppRegistered :");
            sbO.append(this.j);
            sbO.append(", mHidConnectionState :");
            sbO.append(this.k);
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            if (!this.i) {
                f.a.g.j.d dVar = this.f2863c;
                if (dVar != null) {
                    dVar.removeMessages(0);
                    this.f2863c.sendEmptyMessage(0);
                }
                e.e.a.g.c("BtHidManager firstStep", new java.lang.Object[0]);
                return;
            }
            if (this.j) {
                if (this.k == 0) {
                    f.a.g.j.d dVar2 = this.f2863c;
                    if (dVar2 != null) {
                        dVar2.removeMessages(2);
                        this.f2863c.sendEmptyMessage(2);
                    }
                    e.e.a.g.c("BtHidManager thirdStep", new java.lang.Object[0]);
                    return;
                }
                return;
            }
            f.a.g.h hVar = this.a;
            if (hVar.j) {
                e.e.a.g.c("BtHidManager secondStep return because registed", new java.lang.Object[0]);
                return;
            }
            if (hVar.k) {
                e.e.a.g.c("BtHidManager secondStep return because registing", new java.lang.Object[0]);
                return;
            }
            f.a.g.j.d dVar3 = this.f2863c;
            if (dVar3 != null) {
                dVar3.removeMessages(1);
                this.f2863c.sendEmptyMessage(1);
            }
            e.e.a.g.c("BtHidManager secondStep", new java.lang.Object[0]);
        }
    }

    public void n() {
        f.a.g.j.d dVar = this.f2863c;
        if (dVar != null) {
            dVar.removeCallbacksAndMessages(null);
        }
    }

    public void o() {
        if (!this.q) {
            e.e.a.g.c("BtHidManager unBindBLEHidDevice return because not bind", new java.lang.Object[0]);
            return;
        }
        this.f2863c.post(new java.lang.Runnable() { // from class: f.a.g.d
            @Override // java.lang.Runnable
            public final void run() {
                net.easyconn.ecsdk.ECSDK.getInstance().unbindHidDevice();
            }
        });
        this.q = false;
        e.e.a.g.c("BtHidManager unBindBLEHidDevice end", new java.lang.Object[0]);
    }

    @Override // net.easyconn.ecsdk.ebt.IEBTHIDHandle
    public void onKeyCodeData(final int i) {
        if (!this.o) {
            e.e.a.g.c("BtHidManager onTouchEventData return because mirror-Phone is not bt-Phone", new java.lang.Object[0]);
        } else {
            e.e.a.g.c(e.a.c.a.a.K("BtHidManager onKeyCodeData i = ", i), new java.lang.Object[0]);
            this.f2863c.post(new java.lang.Runnable() { // from class: f.a.g.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.f(i);
                }
            });
        }
    }

    @Override // net.easyconn.ecsdk.ebt.IEBTHIDHandle
    public void onTouchEventData(final net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData, final net.easyconn.ecsdk.ECTypes.ECTouchEventType eCTouchEventType) {
        if (!this.o) {
            e.e.a.g.c("BtHidManager onTouchEventData return because mirror-Phone is not bt-Phone", new java.lang.Object[0]);
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidManager onTouchEventData pointX = ");
        sbO.append(eCTouchEventData.pointX);
        sbO.append(", pointY = ");
        sbO.append(eCTouchEventData.pointY);
        sbO.append(", slot = ");
        sbO.append(eCTouchEventData.slot);
        sbO.append(" , ecTouchEventType = ");
        sbO.append(eCTouchEventType);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        this.f2863c.post(new java.lang.Runnable() { // from class: f.a.g.f
            @Override // java.lang.Runnable
            public final void run() {
                this.a.h(eCTouchEventData, eCTouchEventType);
            }
        });
    }
}
