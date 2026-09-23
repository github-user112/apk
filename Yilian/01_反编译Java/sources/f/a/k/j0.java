package f.a.k;

/* loaded from: classes.dex */
public class j0 {
    public java.lang.ref.WeakReference<android.content.Context> a;
    public f.a.i.i.q b;

    /* renamed from: c, reason: collision with root package name */
    public android.hardware.usb.UsbManager f3035c;

    /* renamed from: d, reason: collision with root package name */
    public android.hardware.usb.UsbDevice f3036d;

    /* renamed from: e, reason: collision with root package name */
    public f.a.k.j0.b f3037e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f3038f = false;

    public class b extends android.content.BroadcastReceiver {
        public b(f.a.k.j0.a aVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            f.a.i.i.q qVar;
            java.lang.String string;
            java.lang.String action = intent.getAction();
            if (android.text.TextUtils.isEmpty(action)) {
                string = "[UsbAttachManager] action Empty return";
            } else {
                char c2 = 65535;
                if (action.hashCode() == -1608292967 && action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                    c2 = 0;
                }
                if (c2 != 0) {
                    return;
                }
                e.e.a.g.a("[UsbAttachManager] ACTION_USB_DEVICE_DETACHED");
                android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
                if (usbDevice == null || (qVar = f.a.k.j0.this.b) == null || qVar.P == usbDevice.getVendorId() || f.a.k.j0.this.b.Q == usbDevice.getProductId()) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("[UsbBroadcastReceiver]有USB设备拔出, isDeviceOpen is ");
                    sbO.append(f.a.k.j0.this.f3038f);
                    sbO.append("; ecSdkManager is ");
                    sbO.append(f.a.k.j0.this.b);
                    e.e.a.g.a(sbO.toString());
                    f.a.k.j0 j0Var = f.a.k.j0.this;
                    j0Var.f3036d = null;
                    f.a.i.i.q qVar2 = j0Var.b;
                    if (qVar2 != null) {
                        qVar2.C();
                        f.a.k.j0.this.b.f0(false);
                        f.a.k.j0.this.f3038f = false;
                        return;
                    }
                    return;
                }
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("UsbBroadcastReceiver the detached device is not current connected phone! ecSdkManager.getConnectedVendorID() = ");
                sbO2.append(f.a.k.j0.this.b.P);
                sbO2.append(", device.getVendorId() = ");
                sbO2.append(usbDevice.getVendorId());
                sbO2.append(", ecSdkManager.getConnectedProductID() = ");
                sbO2.append(f.a.k.j0.this.b.Q);
                sbO2.append(", device.getProductId() = ");
                sbO2.append(usbDevice.getProductId());
                string = sbO2.toString();
            }
            e.e.a.g.a(string);
        }
    }

    public j0(android.content.Context context) {
        this.a = new java.lang.ref.WeakReference<>(context);
    }

    public void b(boolean z) {
        if (this.b.O) {
            e.e.a.g.c(">>error openDevice ecSdkManager.isDeviceOpen() = true, return", new java.lang.Object[0]);
            return;
        }
        boolean zU = this.b.U(this.f3036d);
        this.b.f0(zU);
        this.f3038f = zU;
        if (!zU) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("[UsbBroadcastReceiver]openDevice failed! Device is ");
            sbO.append(this.f3036d);
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            return;
        }
        e.a.c.a.a.C(e.a.c.a.a.o("[UsbBroadcastReceiver]isForeground is "), net.easyconn.EcApplication.isForeground);
        if (net.easyconn.EcApplication.isForeground || !z) {
            return;
        }
        e.e.a.g.a("[UsbAttachManager] toast background_connect_tip3");
        final java.lang.String strReplace = this.a.get().getString(net.easyconn.R.string.background_connect_tip3).replace("Easyconnection", this.a.get().getString(net.easyconn.R.string.app_name));
        ((android.app.Activity) this.a.get()).runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.z
            @Override // java.lang.Runnable
            public final void run() {
                net.easyconn.EcApplication.getInstance().showToast(strReplace, 0);
            }
        });
    }

    public void c() {
        e.e.a.g.a("start openDevice showBackgroundTip = true");
        final boolean z = true;
        ((net.easyconn.EcApplication) ((android.app.Activity) this.a.get()).getApplication()).executeTask(new java.lang.Runnable() { // from class: f.a.k.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(z);
            }
        });
    }

    public void d(android.content.Intent intent, f.a.i.i.q qVar) {
        java.lang.String str;
        this.b = qVar;
        if (this.f3037e != null) {
            this.f3037e = new f.a.k.j0.b(null);
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            this.a.get().getApplicationContext().registerReceiver(this.f3037e, intentFilter);
        }
        this.f3035c = (android.hardware.usb.UsbManager) this.a.get().getSystemService("usb");
        android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
        java.lang.String strE0 = f.a.i.m.g.e0(this.a.get().getApplicationContext());
        if (usbDevice == null || !this.f3035c.hasPermission(usbDevice)) {
            return;
        }
        if (android.text.TextUtils.isEmpty(strE0) || !usbDevice.getDeviceName().contains(strE0)) {
            this.f3036d = usbDevice;
            str = "[UsbAttachManager]not filter1";
        } else {
            str = "[UsbAttachManager]device filter1";
        }
        e.e.a.g.a(str);
    }
}
