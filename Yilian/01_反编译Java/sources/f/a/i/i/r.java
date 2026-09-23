package f.a.i.i;

/* loaded from: classes.dex */
public class r {
    public java.lang.ref.WeakReference<android.content.Context> a;
    public f.a.i.i.q b;

    /* renamed from: c, reason: collision with root package name */
    public android.hardware.usb.UsbDevice f2907c;

    /* renamed from: d, reason: collision with root package name */
    public f.a.i.i.r.b f2908d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f2909e = false;

    public class b extends android.content.BroadcastReceiver {
        public b(f.a.i.i.r.a aVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            f.a.i.i.q qVar;
            java.lang.String string;
            java.lang.String action = intent.getAction();
            if (android.text.TextUtils.isEmpty(action)) {
                string = "[EcUsbAttachManager] action Empty return";
            } else {
                char c2 = 65535;
                if (action.hashCode() == -1608292967 && action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                    c2 = 0;
                }
                if (c2 != 0) {
                    return;
                }
                e.e.a.g.a("[EcUsbAttachManager] ACTION_USB_DEVICE_DETACHED");
                android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
                if (usbDevice == null || (qVar = f.a.i.i.r.this.b) == null || qVar.P == usbDevice.getVendorId() || f.a.i.i.r.this.b.Q == usbDevice.getProductId()) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("[EcUsbAttachManager]有USB设备拔出, isDeviceOpen is ");
                    sbO.append(f.a.i.i.r.this.f2909e);
                    sbO.append("; ecSdkManager is ");
                    sbO.append(f.a.i.i.r.this.b);
                    e.e.a.g.a(sbO.toString());
                    f.a.i.i.r rVar = f.a.i.i.r.this;
                    rVar.f2907c = null;
                    f.a.i.i.q qVar2 = rVar.b;
                    if (qVar2 != null) {
                        qVar2.C();
                        f.a.i.i.r.this.b.f0(false);
                        f.a.i.i.r.this.f2909e = false;
                        return;
                    }
                    return;
                }
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("EcUsbAttachManager UsbBroadcastReceiver the detached device is not current connected phone! ecSdkManager.getConnectedVendorID() = ");
                sbO2.append(f.a.i.i.r.this.b.P);
                sbO2.append(", device.getVendorId() = ");
                sbO2.append(usbDevice.getVendorId());
                sbO2.append(", ecSdkManager.getConnectedProductID() = ");
                sbO2.append(f.a.i.i.r.this.b.Q);
                sbO2.append(", device.getProductId() = ");
                sbO2.append(usbDevice.getProductId());
                string = sbO2.toString();
            }
            e.e.a.g.a(string);
        }
    }

    public r(android.content.Context context) {
        this.a = new java.lang.ref.WeakReference<>(context);
    }

    public void a(f.a.i.i.q qVar) {
        this.b = qVar;
        if (this.f2908d != null) {
            this.f2908d = new f.a.i.i.r.b(null);
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            this.a.get().getApplicationContext().registerReceiver(this.f2908d, intentFilter);
        }
    }
}
