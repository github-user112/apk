package f.a.i.i;

/* loaded from: classes.dex */
public class e {
    public android.hardware.usb.UsbManager a;
    public net.easyconn.ecsdk.ECTypes.ECTransportType b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f2887c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f2888d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f2889e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f2890f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f2891g;
    public java.lang.String h;
    public java.lang.String i;
    public android.hardware.usb.UsbDeviceConnection j = null;

    public e(android.content.Context context, net.easyconn.ecsdk.ECTypes.ECOptions eCOptions) {
        this.f2887c = context;
        this.a = (android.hardware.usb.UsbManager) context.getSystemService("usb");
        net.easyconn.ecsdk.ECTypes.ECConfig eCConfig = eCOptions.config;
        this.f2888d = eCConfig.aoaManufacturer;
        this.f2889e = eCConfig.aoaModel;
        this.f2891g = eCConfig.aoaVersion;
        this.h = eCConfig.aoaUri;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("aoaManufacturer=");
        sbO.append(this.f2888d);
        sbO.append(", aoaModel=");
        sbO.append(this.f2889e);
        sbO.append(", aoaVersion=");
        sbO.append(this.f2891g);
        sbO.append(", aoaUri=");
        sbO.append(this.h);
        e.e.a.g.a(sbO.toString());
        java.lang.String str = this.i;
        if (str == null || str.trim().length() == 0) {
            this.i = "123456789";
        }
        java.lang.String str2 = this.f2890f;
        if (str2 == null || str2.trim().length() == 0) {
            this.f2890f = "tips:";
        }
    }

    public void a() {
        e.a.c.a.a.C(e.a.c.a.a.o("closeUsbDeviceConnection conn is "), this.j != null);
        android.hardware.usb.UsbDeviceConnection usbDeviceConnection = this.j;
        if (usbDeviceConnection != null) {
            usbDeviceConnection.close();
        }
        this.j = null;
    }

    public boolean b(android.hardware.usb.UsbDevice usbDevice) {
        synchronized (this) {
            e.e.a.g.a("openDevice: device=" + usbDevice.toString());
            boolean z = true;
            if (usbDevice.getVendorId() == 1452) {
                this.b = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX;
                int iBindTransportDevice = net.easyconn.ecsdk.ECSDK.getInstance().bindTransportDevice(this.b, usbDevice);
                e.e.a.g.a("openDevice: ios usb bindTransportDevice, bindRet = " + iBindTransportDevice);
                if (iBindTransportDevice != 0) {
                    z = false;
                }
                return z;
            }
            try {
                java.lang.Thread.sleep(100L);
            } catch (java.lang.Exception unused) {
            }
            android.hardware.usb.UsbDeviceConnection usbDeviceConnectionOpenDevice = this.a.openDevice(usbDevice);
            this.j = usbDeviceConnectionOpenDevice;
            if (usbDeviceConnectionOpenDevice == null) {
                e.e.a.g.c("openDevice: failed to openDevice for usb device", new java.lang.Object[0]);
                return false;
            }
            int vendorId = usbDevice.getVendorId();
            int productId = usbDevice.getProductId();
            if (vendorId == 6353 && (11520 == productId || 11521 == productId)) {
                e.e.a.g.a("openDevice: AOA TRANSPORT TYPE");
                this.b = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDORID_USB_AOA;
                for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
                    android.hardware.usb.UsbInterface usbInterface = usbDevice.getInterface(i);
                    int interfaceClass = usbInterface.getInterfaceClass();
                    int interfaceSubclass = usbInterface.getInterfaceSubclass();
                    int interfaceProtocol = usbInterface.getInterfaceProtocol();
                    if (interfaceClass == 255 && interfaceSubclass == 255 && interfaceProtocol == 0) {
                        net.easyconn.ecsdk.ECSDK.getInstance().bindTransportDevice(this.b, usbDevice);
                        return true;
                    }
                }
                this.j.close();
                this.j = null;
                return false;
            }
            if (f.a.i.m.g.o(this.f2887c)) {
                for (int i2 = 0; i2 < usbDevice.getInterfaceCount(); i2++) {
                    android.hardware.usb.UsbInterface usbInterface2 = usbDevice.getInterface(i2);
                    int interfaceClass2 = usbInterface2.getInterfaceClass();
                    int interfaceSubclass2 = usbInterface2.getInterfaceSubclass();
                    int interfaceProtocol2 = usbInterface2.getInterfaceProtocol();
                    if (interfaceClass2 == 255 && interfaceSubclass2 == 66 && interfaceProtocol2 == 1) {
                        e.e.a.g.a("openDevice: ADB TYPE");
                        this.b = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_USB_ADB;
                        net.easyconn.ecsdk.ECSDK.getInstance().bindTransportDevice(this.b, usbDevice);
                        return true;
                    }
                }
            }
            if (d(this.j)) {
                e.e.a.g.a("openDevice: switchAoADevice ok");
                this.j.close();
                this.j = null;
                return false;
            }
            e.e.a.g.c("openDevice: failed to switchAoADevice", new java.lang.Object[0]);
            this.j.close();
            this.j = null;
            return false;
        }
    }

    public final boolean c(android.hardware.usb.UsbDeviceConnection usbDeviceConnection, int i, java.lang.String str) {
        byte[] bytes = str.getBytes();
        if (usbDeviceConnection.controlTransfer(64, 52, 0, i, bytes, bytes.length, 1000) >= 0) {
            return true;
        }
        e.e.a.g.c("sendAoAString: controlTransfer failed, index=" + i + ", ctrlStr" + str, new java.lang.Object[0]);
        return false;
    }

    public final boolean d(android.hardware.usb.UsbDeviceConnection usbDeviceConnection) {
        e.e.a.g.a("DeviceManager:switchAoADevice start");
        byte[] bArr = new byte[2];
        if (usbDeviceConnection.controlTransfer(192, 51, 0, 0, bArr, 2, 1000) < 0) {
            e.e.a.g.c("switchAoADevice: failed to get version", new java.lang.Object[0]);
            return false;
        }
        short s = (short) ((bArr[1] << 8) | (bArr[0] & 255));
        if (s < 1) {
            e.e.a.g.c(e.a.c.a.a.K("switchAoADevice: unsupported version=", s), new java.lang.Object[0]);
            return false;
        }
        c(usbDeviceConnection, 0, this.f2888d);
        c(usbDeviceConnection, 1, this.f2889e);
        c(usbDeviceConnection, 2, " ");
        c(usbDeviceConnection, 3, this.f2891g);
        c(usbDeviceConnection, 4, this.h);
        c(usbDeviceConnection, 5, this.i);
        if (usbDeviceConnection.controlTransfer(64, 53, 0, 0, null, 0, 1000) >= 0) {
            return true;
        }
        e.e.a.g.c("switchAoADevice: failed to controlTransfer, request=53", new java.lang.Object[0]);
        return false;
    }
}
