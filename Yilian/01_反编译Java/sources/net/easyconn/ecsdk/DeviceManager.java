package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class DeviceManager {
    public java.lang.String a;
    public android.hardware.usb.UsbManager b;

    /* renamed from: c, reason: collision with root package name */
    public android.hardware.usb.UsbDeviceConnection f3134c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f3135d;

    /* renamed from: e, reason: collision with root package name */
    public net.easyconn.ecsdk.IECCallback f3136e;

    /* renamed from: f, reason: collision with root package name */
    public net.easyconn.ecsdk.DeviceManager.d f3137f;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public java.lang.String m;
    public boolean n;
    public boolean r;
    public java.lang.String s;
    public java.lang.String t;
    public java.lang.String u;
    public java.lang.String v;
    public java.lang.String w;
    public java.lang.String x;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3138g = false;
    public net.easyconn.ecsdk.ECTypes.ECTransportType h = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_MAX;
    public int o = 0;
    public net.easyconn.ecsdk.AOAHIDDevice p = null;
    public boolean q = false;
    public net.easyconn.ecsdk.DeviceManager.c y = new net.easyconn.ecsdk.DeviceManager.c();
    public java.lang.String z = "";

    public class b implements net.easyconn.ecsdk.IUsbDevice {
        public static final /* synthetic */ boolean m = !net.easyconn.ecsdk.DeviceManager.class.desiredAssertionStatus();
        public android.hardware.usb.UsbDeviceConnection a;
        public android.hardware.usb.UsbInterface b;

        /* renamed from: c, reason: collision with root package name */
        public android.hardware.usb.UsbEndpoint f3139c;

        /* renamed from: d, reason: collision with root package name */
        public android.hardware.usb.UsbEndpoint f3140d;

        /* renamed from: e, reason: collision with root package name */
        public final int f3141e = 131072;

        /* renamed from: f, reason: collision with root package name */
        public final int f3142f = 16384;

        /* renamed from: g, reason: collision with root package name */
        public byte[] f3143g = new byte[131072];
        public byte[] h = new byte[131072];
        public int i = 500;
        public int j = 0;
        public int k = 0;

        public b(android.hardware.usb.UsbDeviceConnection usbDeviceConnection, android.hardware.usb.UsbInterface usbInterface) {
            this.b = usbInterface;
            this.a = usbDeviceConnection;
        }

        private boolean a() {
            android.hardware.usb.UsbInterface usbInterface = this.b;
            if (usbInterface != null) {
                return usbInterface.getInterfaceClass() == 255 && this.b.getInterfaceSubclass() == 66 && this.b.getInterfaceProtocol() == 1;
            }
            if (m || usbInterface != null) {
                return false;
            }
            throw new java.lang.AssertionError();
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public void close() {
            if (this.a != null) {
                android.util.Log.d("ecsdk", "UsbDevices close start");
                this.a.releaseInterface(this.b);
                this.a.close();
                this.a = null;
                android.util.Log.d("ecsdk", "UsbDevices close successful device");
            }
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int open() {
            if (this.a != null && this.b != null) {
                for (int i = 0; i < this.b.getEndpointCount(); i++) {
                    android.hardware.usb.UsbEndpoint endpoint = this.b.getEndpoint(i);
                    if (endpoint.getDirection() == 128) {
                        this.f3139c = endpoint;
                    } else {
                        this.f3140d = endpoint;
                    }
                }
                if (this.f3139c != null && this.f3140d != null) {
                    if (a()) {
                        int maxPacketSize = this.f3140d.getMaxPacketSize();
                        this.j = maxPacketSize;
                        this.k = maxPacketSize - 1;
                    }
                    return 0;
                }
                android.util.Log.d("ecsdk", "cann't find in and out endpoint");
            }
            return -1;
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int read(java.nio.ByteBuffer byteBuffer, int i) {
            android.hardware.usb.UsbDeviceConnection usbDeviceConnection = this.a;
            if (usbDeviceConnection == null) {
                return -1;
            }
            try {
                int iBulkTransfer = usbDeviceConnection.bulkTransfer(this.f3139c, this.f3143g, i, this.i);
                if (iBulkTransfer <= 0) {
                    return 0;
                }
                byteBuffer.put(this.f3143g, 0, iBulkTransfer);
                return iBulkTransfer;
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int write(java.nio.ByteBuffer byteBuffer, int i) {
            android.hardware.usb.UsbDeviceConnection usbDeviceConnection = this.a;
            if (usbDeviceConnection == null) {
                return -1;
            }
            int i2 = this.k;
            boolean z = i2 > 0 && (i2 & i) <= 0;
            int i3 = 0;
            while (i > 0) {
                try {
                    int iMin = java.lang.Math.min(i, 131072);
                    byteBuffer.get(this.h, 0, iMin);
                    int iBulkTransfer = usbDeviceConnection.bulkTransfer(this.f3140d, this.h, iMin, this.i);
                    if (iBulkTransfer != iMin) {
                        break;
                    }
                    i -= iMin;
                    i3 += iBulkTransfer;
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (i == 0 && z) {
                int iBulkTransfer2 = usbDeviceConnection.bulkTransfer(this.f3140d, new byte[]{0}, 0, this.i);
                if (iBulkTransfer2 <= 0 && iBulkTransfer2 != 0) {
                    return 0;
                }
            }
            return i3;
        }
    }

    public class c {
        public java.util.HashMap<java.lang.String, net.easyconn.ecsdk.DeviceManager.c.a> a = new java.util.HashMap<>();
        public volatile boolean b = false;

        /* renamed from: c, reason: collision with root package name */
        public final int f3144c = 500;

        public class a {
            public android.hardware.usb.UsbDevice a;
            public java.util.Timer b = null;

            /* renamed from: net.easyconn.ecsdk.DeviceManager$c$a$a, reason: collision with other inner class name */
            public class C0096a extends java.util.TimerTask {
                public C0096a() {
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    net.easyconn.ecsdk.DeviceManager.c.a aVar = net.easyconn.ecsdk.DeviceManager.c.a.this;
                    net.easyconn.ecsdk.DeviceManager.this.d(aVar.a);
                }
            }

            public a(android.hardware.usb.UsbDevice usbDevice) {
                this.a = usbDevice;
                b();
            }

            public void a() {
                synchronized (this) {
                    java.util.Timer timer = this.b;
                    if (timer != null) {
                        timer.cancel();
                        this.b = null;
                    }
                }
            }

            public void b() {
                synchronized (this) {
                    android.util.Log.d("ecsdk", "QTDeviceTimer launchTimer deviceName=" + this.a.getDeviceName());
                    java.util.Timer timer = this.b;
                    if (timer != null) {
                        timer.cancel();
                    }
                    java.util.Timer timer2 = new java.util.Timer();
                    this.b = timer2;
                    timer2.schedule(new net.easyconn.ecsdk.DeviceManager.c.a.C0096a(), 500L);
                }
            }
        }

        public c() {
        }

        public void a() {
            synchronized (this.a) {
                for (java.util.Map.Entry<java.lang.String, net.easyconn.ecsdk.DeviceManager.c.a> entry : this.a.entrySet()) {
                    if (entry.getValue() != null) {
                        entry.getValue().a();
                    }
                }
                this.a.clear();
            }
        }

        public void a(android.hardware.usb.UsbDevice usbDevice) {
            java.lang.String deviceName = usbDevice == null ? "" : usbDevice.getDeviceName();
            if (deviceName == null || deviceName.isEmpty()) {
                return;
            }
            synchronized (this.a) {
                this.a.put(deviceName, new net.easyconn.ecsdk.DeviceManager.c.a(usbDevice));
                android.util.Log.d("ecsdk", "add " + deviceName + " timer, size=" + this.a.size());
            }
        }

        public void a(java.lang.String str) {
            if (str == null || str.isEmpty()) {
                return;
            }
            synchronized (this.a) {
                if (this.a.containsKey(str)) {
                    net.easyconn.ecsdk.DeviceManager.c.a aVar = this.a.get(str);
                    if (aVar != null) {
                        aVar.a();
                    }
                    this.a.remove(str);
                    android.util.Log.d("ecsdk", "remove " + str + " timer, size=" + this.a.size());
                }
            }
        }

        public void a(boolean z) {
            this.b = z;
        }

        public boolean b() {
            return this.b;
        }
    }

    public class d extends android.content.BroadcastReceiver {
        public d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            android.util.Log.d("ecsdk", "[DeviceManager]UsbBroadcastReceiver: " + action);
            if (action.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                net.easyconn.ecsdk.DeviceManager.this.a(intent);
            } else if (action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                net.easyconn.ecsdk.DeviceManager.this.b(intent);
            } else if (action.equals("net.easyconn.ecsdk.USB_PERMISSION")) {
                net.easyconn.ecsdk.DeviceManager.this.c(intent);
            }
        }
    }

    public DeviceManager(android.content.Context context, net.easyconn.ecsdk.IECCallback iECCallback, net.easyconn.ecsdk.ECTypes.ECOptions eCOptions, net.easyconn.ecsdk.ECTypes.ECCarDescription eCCarDescription) {
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = "";
        this.n = false;
        this.r = false;
        this.s = "";
        this.t = "";
        this.u = " ";
        this.v = "";
        this.w = "";
        this.x = "";
        this.b = (android.hardware.usb.UsbManager) context.getSystemService("usb");
        this.f3135d = context.getApplicationContext();
        this.f3136e = iECCallback;
        net.easyconn.ecsdk.ECTypes.ECConfig eCConfig = eCOptions.config;
        if (eCConfig != null) {
            this.s = eCConfig.aoaManufacturer;
            this.t = eCConfig.aoaModel;
            this.v = eCConfig.aoaVersion;
            this.w = eCOptions.config.aoaUri + (eCConfig.aoaUri.endsWith("?") ? com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER : "?") + "modelid=" + eCOptions.config.channel;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("AOA_MANUFACTURER=");
            sbO.append(this.s);
            sbO.append(", AOA_MODEL=");
            sbO.append(this.t);
            sbO.append(", AOA_VERSION=");
            sbO.append(this.v);
            sbO.append(", AOA_URI=");
            sbO.append(this.w);
            android.util.Log.d("ecsdk", sbO.toString());
            java.lang.String str = this.x;
            if (str == null || str.trim().length() == 0) {
                this.x = "123456789";
            }
            this.u = " ";
        }
        this.n = eCOptions.useBindTransport;
        java.lang.String str2 = eCOptions.usbFilterPath;
        this.m = str2;
        this.i = eCOptions.enableAndroidUsbForADB;
        this.j = eCOptions.enableAndroidUsbForAOA;
        this.k = eCOptions.enableIOSUsb;
        this.l = eCOptions.enableUsbBroadcastReceiver;
        if (str2 != null) {
            this.m = str2.trim();
        }
        if (this.l) {
            b();
        }
        this.r = (eCCarDescription.supportConnect & 128) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(android.hardware.usb.UsbDevice r13) {
        /*
            r12 = this;
            int r0 = r13.getVendorId()
            r1 = 1
            r2 = 0
            r3 = 6353(0x18d1, float:8.902E-42)
            if (r0 != r3) goto L1c
            int r0 = r13.getProductId()
            r3 = 11520(0x2d00, float:1.6143E-41)
            if (r3 == r0) goto L1a
            int r0 = r13.getProductId()
            r3 = 11521(0x2d01, float:1.6144E-41)
            if (r3 != r0) goto L1c
        L1a:
            r0 = 1
            goto L38
        L1c:
            int r0 = r13.getVendorId()
            r3 = 1452(0x5ac, float:2.035E-42)
            if (r0 != r3) goto L37
            int r0 = r13.getProductId()
            r3 = 4783(0x12af, float:6.702E-42)
            if (r0 >= r3) goto L37
            int r0 = r13.getProductId()
            r3 = 4752(0x1290, float:6.659E-42)
            if (r0 <= r3) goto L37
            r0 = 0
            r3 = 1
            goto L39
        L37:
            r0 = 0
        L38:
            r3 = 0
        L39:
            r4 = 0
            r6 = r4
            r5 = 0
        L3c:
            int r7 = r13.getInterfaceCount()
            if (r5 >= r7) goto L6c
            android.hardware.usb.UsbInterface r7 = r13.getInterface(r5)
            int r8 = r7.getInterfaceClass()
            int r9 = r7.getInterfaceSubclass()
            int r10 = r7.getInterfaceProtocol()
            r11 = 255(0xff, float:3.57E-43)
            if (r0 == 0) goto L5d
            if (r8 != r11) goto L5d
            if (r9 != r11) goto L5d
            if (r10 != 0) goto L5d
            goto L68
        L5d:
            if (r3 == 0) goto L60
            goto L69
        L60:
            if (r8 != r11) goto L69
            r8 = 66
            if (r9 != r8) goto L69
            if (r10 != r1) goto L69
        L68:
            r6 = r7
        L69:
            int r5 = r5 + 1
            goto L3c
        L6c:
            if (r6 != 0) goto L6f
            return r2
        L6f:
            r13 = r4
        L70:
            int r0 = r6.getEndpointCount()
            if (r2 >= r0) goto L88
            android.hardware.usb.UsbEndpoint r0 = r6.getEndpoint(r2)
            int r1 = r0.getDirection()
            r3 = 128(0x80, float:1.794E-43)
            if (r1 != r3) goto L84
            r4 = r0
            goto L85
        L84:
            r13 = r0
        L85:
            int r2 = r2 + 1
            goto L70
        L88:
            if (r4 == 0) goto L92
            if (r13 != 0) goto L8d
            goto L92
        L8d:
            int r13 = r13.getMaxPacketSize()
            return r13
        L92:
            java.lang.String r13 = "ecsdk"
            java.lang.String r0 = "cann't find in and out endpoint"
            android.util.Log.d(r13, r0)
            r13 = -1
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.ecsdk.DeviceManager.a(android.hardware.usb.UsbDevice):int");
    }

    private void a() {
        android.util.Log.d("ecsdk", "closeDevice");
        android.hardware.usb.UsbDeviceConnection usbDeviceConnection = this.f3134c;
        if (usbDeviceConnection != null) {
            usbDeviceConnection.close();
            this.f3134c = null;
            this.a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.content.Intent intent) {
        android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
        if (c(usbDevice)) {
            if (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) {
                android.util.Log.d("ecsdk", "the attached usb device is Mass Storage Device");
            } else if (this.b.hasPermission(usbDevice)) {
                this.f3138g = true;
                d(usbDevice);
            } else {
                android.util.Log.d("ecsdk", "UsbBroadcastReceiver requestPermission");
                this.b.requestPermission(usbDevice, android.app.PendingIntent.getBroadcast(this.f3135d, 0, new android.content.Intent("net.easyconn.ecsdk.USB_PERMISSION"), 0));
            }
        }
    }

    private boolean a(android.hardware.usb.UsbDeviceConnection usbDeviceConnection) {
        java.lang.String str;
        android.util.Log.d("ecsdk", "DeviceManager:switchAoADevice start");
        byte[] bArr = new byte[2];
        if (usbDeviceConnection.controlTransfer(192, 51, 0, 0, bArr, 2, 1000) < 0) {
            str = "switchAoADevice: failed to get version";
        } else {
            short s = (short) ((bArr[1] << 8) | (bArr[0] & 255));
            if (s >= 1) {
                a(usbDeviceConnection, 0, this.s);
                a(usbDeviceConnection, 1, this.t);
                a(usbDeviceConnection, 2, this.u);
                a(usbDeviceConnection, 3, this.v);
                a(usbDeviceConnection, 4, this.w);
                a(usbDeviceConnection, 5, this.x);
                if (usbDeviceConnection.controlTransfer(64, 53, 0, 0, null, 0, 1000) >= 0) {
                    return true;
                }
                str = "switchAoADevice: failed to controlTransfer, request=53";
            } else {
                str = "switchAoADevice: unsupported version=" + ((int) s);
            }
        }
        android.util.Log.e("ecsdk", str);
        return false;
    }

    private boolean a(android.hardware.usb.UsbDeviceConnection usbDeviceConnection, int i, java.lang.String str) {
        byte[] bytes = str.getBytes();
        if (usbDeviceConnection.controlTransfer(64, 52, 0, i, bytes, bytes.length, 1000) >= 0) {
            return true;
        }
        android.util.Log.e("ecsdk", "sendAoAString: controlTransfer failed, index=" + i + ", ctrlStr" + str);
        return false;
    }

    private void b() {
        java.util.HashMap<java.lang.String, android.hardware.usb.UsbDevice> deviceList = this.b.getDeviceList();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("discoverDevice: deviceList.size=");
        sbO.append(deviceList.size());
        android.util.Log.d("ecsdk", sbO.toString());
        for (android.hardware.usb.UsbDevice usbDevice : deviceList.values()) {
            if (c(usbDevice)) {
                if (!this.b.hasPermission(usbDevice)) {
                    android.util.Log.d("ecsdk", "discoverDevice requestPermission");
                    this.b.requestPermission(usbDevice, android.app.PendingIntent.getBroadcast(this.f3135d, 0, new android.content.Intent("net.easyconn.ecsdk.USB_PERMISSION"), 0));
                } else if (d(usbDevice)) {
                    break;
                } else {
                    android.util.Log.e("ecsdk", "discoverDevice: failed to openDevice");
                }
            }
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(android.content.Intent intent) {
        android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
        android.util.Log.d("ecsdk", "[handleUsbDeviceDetached]UsbDevice=" + usbDevice);
        if (c(usbDevice)) {
            this.y.a(usbDevice.getDeviceName());
            if (this.a != null) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("[handleUsbDeviceDetached]DeviceName=");
                sbO.append(this.a);
                android.util.Log.d("ecsdk", sbO.toString());
                if (!usbDevice.getDeviceName().equals(this.a)) {
                    android.util.Log.d("ecsdk", "[handleUsbDeviceDetached]detached device is not connected device");
                    return;
                }
                this.f3138g = false;
                if (this.n) {
                    net.easyconn.ecsdk.ECSDK.getInstance().unbindTransportDevice(this.h);
                }
                a();
            }
        }
    }

    private void c() {
        synchronized (this) {
            if (this.f3137f == null) {
                this.f3137f = new net.easyconn.ecsdk.DeviceManager.d();
                android.content.IntentFilter intentFilter = new android.content.IntentFilter("net.easyconn.ecsdk.USB_PERMISSION");
                intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
                intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
                this.f3135d.registerReceiver(this.f3137f, intentFilter);
            } else {
                android.util.Log.w("ecsdk", "registerUsbReceiver: already registered");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(android.content.Intent intent) {
        android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
        android.util.Log.d("ecsdk", "[handleUsbDevicePermission]UsbDevice=" + usbDevice);
        if (intent.getBooleanExtra("permission", false)) {
            if (usbDevice != null) {
                d(usbDevice);
            }
        } else {
            android.util.Log.w("ecsdk", "permission denied for device " + usbDevice);
        }
    }

    private boolean c(android.hardware.usb.UsbDevice usbDevice) {
        java.lang.String str = this.m;
        if (str != null && !str.isEmpty()) {
            for (java.lang.String str2 : this.m.split(",")) {
                if (str2.trim().length() > 0 && usbDevice.getDeviceName().contains(str2.trim())) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("the discovered usb device is in the blacklist of ");
                    sbO.append(this.m);
                    android.util.Log.w("ecsdk", sbO.toString());
                    return false;
                }
            }
        }
        if (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) {
            android.util.Log.d("ecsdk", "the usb device is Mass Storage Device");
            return false;
        }
        if (usbDevice.getVendorId() != 1452 || usbDevice.getProductId() >= 4783 || usbDevice.getProductId() <= 4752) {
            return this.i || this.j;
        }
        android.util.Log.d("ecsdk", "the usb device is iOS device");
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(android.hardware.usb.UsbDevice usbDevice) {
        synchronized (this) {
            android.util.Log.d("ecsdk", "openDevice: device=" + usbDevice);
            if (this.f3134c != null) {
                android.util.Log.w("ecsdk", "openDevice: already opened");
                return true;
            }
            try {
                java.lang.Thread.sleep(100L);
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
            android.hardware.usb.UsbDeviceConnection usbDeviceConnectionOpenDevice = this.b.openDevice(usbDevice);
            if (usbDeviceConnectionOpenDevice == null) {
                android.util.Log.e("ecsdk", "openDevice: failed to openDevice for adb device");
                return false;
            }
            this.o = a(usbDevice);
            if (usbDevice.getVendorId() == 1452 && usbDevice.getProductId() < 4783 && usbDevice.getProductId() > 4752) {
                if (!this.k) {
                    usbDeviceConnectionOpenDevice.close();
                    return false;
                }
                if (this.r) {
                    android.util.Log.d("ecsdk", "begin to hasValeria");
                    if (b(usbDevice)) {
                        android.util.Log.d("ecsdk", "QTAvailable is true");
                        native_setQTAvailable(true);
                    } else {
                        native_setQTAvailable(false);
                        android.util.Log.d("ecsdk", "QTAvailable is false");
                        if (!this.y.b()) {
                            b(usbDeviceConnectionOpenDevice);
                            this.y.a(true);
                            this.z = usbDevice.getDeviceName();
                            this.y.a(usbDevice);
                            usbDeviceConnectionOpenDevice.close();
                            return true;
                        }
                    }
                }
                this.y.a(false);
                android.util.Log.d("ecsdk", "begin to native_addIosDevice|mSwitchIphoneDevice:" + this.q);
                this.h = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX;
                if (native_addIosDevice(usbDeviceConnectionOpenDevice.getFileDescriptor(), usbDevice.getDeviceName(), this.q) != 0) {
                    android.util.Log.e("ecsdk", "openDevice: failed to native_addIosDevice for ios device");
                    this.q = false;
                    usbDeviceConnectionOpenDevice.close();
                    return false;
                }
                android.util.Log.d("ecsdk", "openDevice: ios device");
                this.q = false;
                this.f3134c = usbDeviceConnectionOpenDevice;
                this.a = usbDevice.getDeviceName();
                return true;
            }
            if (!this.j || usbDevice.getVendorId() != 6353 || (11520 != usbDevice.getProductId() && 11521 != usbDevice.getProductId())) {
                if (this.i) {
                    for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
                        android.hardware.usb.UsbInterface usbInterface = usbDevice.getInterface(i);
                        int interfaceClass = usbInterface.getInterfaceClass();
                        int interfaceSubclass = usbInterface.getInterfaceSubclass();
                        int interfaceProtocol = usbInterface.getInterfaceProtocol();
                        if (interfaceClass == 255 && interfaceSubclass == 66 && interfaceProtocol == 1) {
                            net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_USB_ADB;
                            this.h = eCTransportType;
                            if (this.n) {
                                net.easyconn.ecsdk.ECSDK.getInstance().bindTransportDevice(this.h, new net.easyconn.ecsdk.DeviceManager.b(usbDeviceConnectionOpenDevice, usbInterface));
                                this.f3134c = usbDeviceConnectionOpenDevice;
                                this.a = usbDevice.getDeviceName();
                                return true;
                            }
                            if (native_addAndroidDevice(usbDeviceConnectionOpenDevice.getFileDescriptor(), usbDevice.getDeviceName(), eCTransportType) != 0) {
                                android.util.Log.e("ecsdk", "openDevice: failed to native_addAndroidDevice for adb device");
                                usbDeviceConnectionOpenDevice.close();
                                return false;
                            }
                            android.util.Log.d("ecsdk", "openDevice: adb device");
                            this.f3134c = usbDeviceConnectionOpenDevice;
                            this.a = usbDevice.getDeviceName();
                            return true;
                        }
                    }
                }
                if (!this.j) {
                    usbDeviceConnectionOpenDevice.close();
                    return false;
                }
                if (a(usbDeviceConnectionOpenDevice)) {
                    android.util.Log.d("ecsdk", "openDevice: switchAoADevice ok");
                    usbDeviceConnectionOpenDevice.close();
                    return true;
                }
                android.util.Log.e("ecsdk", "openDevice: failed to switchAoADevice");
                usbDeviceConnectionOpenDevice.close();
                net.easyconn.ecsdk.IECCallback iECCallback = this.f3136e;
                if (iECCallback != null && this.f3138g) {
                    iECCallback.onECStatusMessage(net.easyconn.ecsdk.ECTypes.ECStatusMessage.EC_STATUS_MESSAGE_SWITCH_AOA_FAIL);
                }
                return false;
            }
            net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType2 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDORID_USB_AOA;
            this.h = eCTransportType2;
            if (!this.n) {
                if (native_addAndroidDevice(usbDeviceConnectionOpenDevice.getFileDescriptor(), usbDevice.getDeviceName(), eCTransportType2) != 0) {
                    android.util.Log.e("ecsdk", "openDevice: failed to native_addAndroidDevice for aoa device");
                    usbDeviceConnectionOpenDevice.close();
                    return false;
                }
                android.util.Log.d("ecsdk", "openDevice: aoa device");
                this.f3134c = usbDeviceConnectionOpenDevice;
                this.a = usbDevice.getDeviceName();
                for (int i2 = 0; i2 < usbDevice.getInterfaceCount(); i2++) {
                    android.hardware.usb.UsbInterface usbInterface2 = usbDevice.getInterface(i2);
                    int interfaceClass2 = usbInterface2.getInterfaceClass();
                    int interfaceSubclass2 = usbInterface2.getInterfaceSubclass();
                    int interfaceProtocol2 = usbInterface2.getInterfaceProtocol();
                    if (interfaceClass2 == 255 && interfaceSubclass2 == 255 && interfaceProtocol2 == 0) {
                        this.p = new net.easyconn.ecsdk.AOAHIDDevice(this.f3134c, usbInterface2);
                        if (e()) {
                            return true;
                        }
                        android.util.Log.e("ecsdk", "openDevice: failed to registHid");
                    }
                }
                return true;
            }
            for (int i3 = 0; i3 < usbDevice.getInterfaceCount(); i3++) {
                android.hardware.usb.UsbInterface usbInterface3 = usbDevice.getInterface(i3);
                int interfaceClass3 = usbInterface3.getInterfaceClass();
                int interfaceSubclass3 = usbInterface3.getInterfaceSubclass();
                int interfaceProtocol3 = usbInterface3.getInterfaceProtocol();
                if (interfaceClass3 == 255 && interfaceSubclass3 == 255 && interfaceProtocol3 == 0) {
                    if (net.easyconn.ecsdk.ECSDK.getInstance().bindTransportDevice(this.h, new net.easyconn.ecsdk.DeviceManager.b(usbDeviceConnectionOpenDevice, usbInterface3)) != 0) {
                        android.util.Log.e("ecsdk", "openDevice: failed to bindTransportDevice for AOA device");
                        usbDeviceConnectionOpenDevice.close();
                        return false;
                    }
                    this.f3134c = usbDeviceConnectionOpenDevice;
                    this.a = usbDevice.getDeviceName();
                    this.p = new net.easyconn.ecsdk.AOAHIDDevice(this.f3134c, usbInterface3);
                    if (e()) {
                        return true;
                    }
                    android.util.Log.e("ecsdk", "openDevice: failed to registHid");
                    return true;
                }
            }
            usbDeviceConnectionOpenDevice.close();
            return false;
        }
    }

    private void f() {
        synchronized (this) {
            net.easyconn.ecsdk.DeviceManager.d dVar = this.f3137f;
            if (dVar != null) {
                this.f3135d.unregisterReceiver(dVar);
                this.f3137f = null;
            }
        }
    }

    private native int native_addAndroidDevice(int i, java.lang.String str, net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType);

    private native int native_addIosDevice(int i, java.lang.String str, boolean z);

    private native int native_resetUsbDevice(int i, java.lang.String str);

    private native void native_setQTAvailable(boolean z);

    public int a(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, android.hardware.usb.UsbDevice usbDevice) {
        java.lang.String str;
        if (usbDevice == null) {
            android.util.Log.e("ecsdk", "[DeviceManager]bindTransportDevice: the usb device is null.");
            return -2;
        }
        if (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) {
            str = "[DeviceManager]the usb device is Mass Storage Device";
        } else {
            if (this.b.hasPermission(usbDevice)) {
                return d(usbDevice) ? 0 : -3;
            }
            str = "[DeviceManager]bindTransportDevice: the usb device has no permission.";
        }
        android.util.Log.d("ecsdk", str);
        return -3;
    }

    public void a(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        if (eCTransportType == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX || eCTransportType == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            this.y.a(this.z);
            this.z = "";
        }
        if (this.h == eCTransportType) {
            a();
        }
    }

    public boolean b(android.hardware.usb.UsbDevice usbDevice) {
        for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
            android.hardware.usb.UsbInterface usbInterface = usbDevice.getInterface(i);
            int interfaceClass = usbInterface.getInterfaceClass();
            int interfaceSubclass = usbInterface.getInterfaceSubclass();
            int interfaceProtocol = usbInterface.getInterfaceProtocol();
            if (interfaceClass == 255 && interfaceSubclass == 42 && interfaceProtocol == 255) {
                return true;
            }
        }
        return false;
    }

    public boolean b(android.hardware.usb.UsbDeviceConnection usbDeviceConnection) {
        android.util.Log.d("ecsdk", "DeviceManager: switchIphoneDevice start");
        if (usbDeviceConnection.controlTransfer(64, 82, 0, 2, null, 0, 1000) < 0) {
            android.util.Log.e("ecsdk", "switchIphoneDevice: failed to controlTransfer, request=0x52");
            return false;
        }
        this.q = true;
        android.util.Log.d("ecsdk", "DeviceManager: success switchIphoneDevice end");
        return true;
    }

    public void d() {
        if (this.n) {
            net.easyconn.ecsdk.ECSDK.getInstance().unbindTransportDevice(this.h);
        }
        f();
        a();
        this.f3136e = null;
        this.y.a();
    }

    public int e(android.hardware.usb.UsbDevice usbDevice) {
        if (usbDevice == null) {
            android.util.Log.e("ecsdk", "[DeviceManager]resetTransportDevice: the usb device is null.");
            return -2;
        }
        if (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) {
            android.util.Log.d("ecsdk", "[DeviceManager]the usb device is Mass Storage Device");
            return -3;
        }
        if (!this.b.hasPermission(usbDevice)) {
            android.util.Log.d("ecsdk", "[DeviceManager]resetTransportDevice: the usb device has no permission.");
            return -3;
        }
        android.hardware.usb.UsbDeviceConnection usbDeviceConnectionOpenDevice = this.b.openDevice(usbDevice);
        if (usbDeviceConnectionOpenDevice == null) {
            android.util.Log.e("ecsdk", "[DeviceManager]resetTransportDevice: openDevice failed");
            return -3;
        }
        int iNative_resetUsbDevice = native_resetUsbDevice(usbDeviceConnectionOpenDevice.getFileDescriptor(), usbDevice.getDeviceName());
        usbDeviceConnectionOpenDevice.close();
        return iNative_resetUsbDevice;
    }

    public boolean e() {
        android.util.Log.d("ecsdk", "[DeviceManager]rigistHidDevice start");
        if (this.p == null) {
            android.util.Log.d("ecsdk", "[DeviceManager]mAOAHIDDevice is null");
        }
        if (net.easyconn.ecsdk.ECSDK.getInstance().bindAoaHidDevice(this.p) != 0) {
            android.util.Log.e("ecsdk", "[DeviceManager]rigistHidDevice: failed to bindAoaHidDevice");
            return false;
        }
        android.util.Log.d("ecsdk", "[DeviceManager]rigistHidDevice success");
        return true;
    }
}
