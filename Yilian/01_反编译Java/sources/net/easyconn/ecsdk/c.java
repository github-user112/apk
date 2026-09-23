package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class c {
    public net.easyconn.ecsdk.IUsbDevice a;
    public net.easyconn.ecsdk.ECTypes.ECTransportType b;

    /* renamed from: c, reason: collision with root package name */
    public android.net.LocalServerSocket f3161c;

    /* renamed from: d, reason: collision with root package name */
    public android.net.LocalSocket f3162d;

    /* renamed from: e, reason: collision with root package name */
    public java.io.InputStream f3163e;

    /* renamed from: f, reason: collision with root package name */
    public java.io.OutputStream f3164f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.Thread f3165g;
    public java.lang.Thread h;
    public java.lang.Thread i;
    public volatile boolean j = false;
    public java.nio.ByteBuffer k = java.nio.ByteBuffer.allocate(4096);
    public java.nio.ByteBuffer l = java.nio.ByteBuffer.allocate(4096);

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            net.easyconn.ecsdk.c.this.d();
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.ecsdk.c.this.e();
        }
    }

    /* renamed from: net.easyconn.ecsdk.c$c, reason: collision with other inner class name */
    public class RunnableC0097c implements java.lang.Runnable {
        public RunnableC0097c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.ecsdk.c.this.f();
        }
    }

    public static /* synthetic */ class d {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[net.easyconn.ecsdk.ECTypes.ECTransportType.values().length];
            a = iArr;
            try {
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_USB_ADB;
                iArr[0] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType2 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDORID_USB_AOA;
                iArr2[1] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType3 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_WIFI;
                iArr3[2] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType4 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_EAP;
                iArr4[3] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType5 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX;
                iArr5[4] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType6 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_APP;
                iArr6[6] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = a;
                net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType7 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_AIRPLAY;
                iArr7[5] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
        }
    }

    public c(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType) {
        this.b = eCTransportType;
    }

    private int a(java.lang.String str) throws java.lang.InterruptedException, java.io.IOException {
        try {
            this.f3161c = new android.net.LocalServerSocket(str);
            java.lang.Thread thread = new java.lang.Thread(new net.easyconn.ecsdk.c.a());
            this.f3165g = thread;
            thread.start();
            try {
                java.lang.Thread.sleep(100L);
            } catch (java.lang.InterruptedException e2) {
                e2.printStackTrace();
            }
            java.lang.String strE = e.a.c.a.a.e("connect ", str);
            java.lang.String strAdbCommand = net.easyconn.ecsdk.ECSDK.getInstance().adbCommand(strE);
            android.util.Log.d("UsbTransport", strE + " result=" + strAdbCommand);
            if (strAdbCommand.contains("connected to")) {
                return 0;
            }
            android.util.Log.d("UsbTransport", "failed to connected to " + str);
            try {
                this.f3161c.close();
            } catch (java.io.IOException e3) {
                e3.printStackTrace();
            }
            return -1;
        } catch (java.io.IOException e4) {
            e4.printStackTrace();
            android.util.Log.e("UsbTransport", "failed to create localServerSocket of " + str);
            return -1;
        }
    }

    private int a(byte[] bArr, int i) {
        int i2 = 0;
        while (this.j && i2 < i) {
            this.k.clear();
            int i3 = this.a.read(this.k, i - i2);
            this.k.flip();
            if (i3 > 0) {
                this.k.get(bArr, i2, i3);
                i2 += i3;
            }
        }
        return i2;
    }

    private int b(byte[] bArr, int i) throws java.io.IOException {
        int i2 = 0;
        while (this.j && i2 < i) {
            try {
                int i3 = this.f3163e.read(bArr, i2, i - i2);
                if (i3 > 0) {
                    i2 += i3;
                }
            } catch (java.io.IOException e2) {
                java.lang.String message = e2.getMessage();
                if (message == null || !message.equals("Try again")) {
                    return -1;
                }
            }
        }
        return i2;
    }

    private void b() {
        int i;
        do {
            i = this.a.read(java.nio.ByteBuffer.allocate(4096), 4096);
            android.util.Log.d("UsbTransport", "emptyUsb ret=" + i);
        } while (i > 0);
    }

    private int c(byte[] bArr, int i) throws java.io.IOException {
        try {
            this.f3164f.write(bArr, 0, i);
            this.f3164f.flush();
            return i;
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private java.lang.String c() {
        switch (net.easyconn.ecsdk.c.d.a[this.b.ordinal()]) {
            case 1:
                return "EC_TRANSPORT_ANDROID_USB_ADB";
            case 2:
                return "EC_TRANSPORT_ANDORID_USB_AOA";
            case 3:
                return "EC_TRANSPORT_ANDROID_WIFI";
            case 4:
                return "EC_TRANSPORT_IOS_USB_EAP";
            case 5:
                return "EC_TRANSPORT_IOS_USB_MUX";
            case 6:
                return "EC_TRANSPORT_IOS_WIFI_APP";
            case 7:
                return "EC_TRANSPORT_IOS_USB_AIRPLAY";
            default:
                return "EC_TRANSPORT_UNKNOWN";
        }
    }

    private int d(byte[] bArr, int i) {
        int i2 = 0;
        while (this.j && i2 < i) {
            this.l.clear();
            int i3 = i - i2;
            this.l.put(bArr, i2, i3);
            this.l.flip();
            int iWrite = this.a.write(this.l, i3);
            if (iWrite > 0) {
                i2 += iWrite;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws java.io.IOException {
        try {
            b();
            android.net.LocalSocket localSocketAccept = this.f3161c.accept();
            this.f3162d = localSocketAccept;
            localSocketAccept.setSoTimeout(1000);
            this.f3164f = this.f3162d.getOutputStream();
            this.f3163e = this.f3162d.getInputStream();
            this.j = true;
            this.h = new java.lang.Thread(new net.easyconn.ecsdk.c.b());
            this.i = new java.lang.Thread(new net.easyconn.ecsdk.c.RunnableC0097c());
            this.h.start();
            this.i.start();
        } catch (java.io.IOException e2) {
            e2.printStackTrace();
            android.util.Log.e("UsbTransport", "failed to accept");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        java.lang.StringBuilder sb;
        int iC;
        int iA;
        android.util.Log.d("UsbTransport", "readThread: begin");
        net.easyconn.ecsdk.a aVar = new net.easyconn.ecsdk.a();
        try {
            android.util.Log.d("UsbTransport", "begin to read usb data then proxy to adb");
            while (this.j) {
                byte[] bArr = aVar.f3160g;
                int iA2 = a(bArr, bArr.length);
                if (iA2 != aVar.f3160g.length) {
                    sb = new java.lang.StringBuilder();
                    sb.append("[UsbTransport]readThread: failed to read header from device, length=");
                    sb.append(iA2);
                } else {
                    aVar.a();
                    a("readThread", aVar);
                    int i = aVar.f3157d;
                    if (i <= 0 || (iA = a(aVar.h, i)) == aVar.f3157d) {
                        byte[] bArr2 = aVar.f3160g;
                        int iC2 = c(bArr2, bArr2.length);
                        if (iC2 != aVar.f3160g.length) {
                            sb = new java.lang.StringBuilder();
                            sb.append("[UsbTransport]readThread: failed to send header to socket, length=");
                            sb.append(iC2);
                        } else {
                            int i2 = aVar.f3157d;
                            if (i2 > 0 && (iC = c(aVar.h, i2)) != aVar.f3157d) {
                                sb = new java.lang.StringBuilder();
                                sb.append("[UsbTransport]readThread: failed to send data to socket, length=");
                                sb.append(iC);
                            }
                        }
                    } else {
                        sb = new java.lang.StringBuilder();
                        sb.append("[UsbTransport]readThread: failed to read data from device, length=%d");
                        sb.append(iA);
                    }
                }
                android.util.Log.e("UsbTransport", sb.toString());
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        android.util.Log.d("UsbTransport", "readThread: end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        java.lang.StringBuilder sb;
        int iD;
        int iB;
        android.util.Log.d("UsbTransport", "writeThread: begin");
        net.easyconn.ecsdk.a aVar = new net.easyconn.ecsdk.a();
        try {
            android.util.Log.d("UsbTransport", "writeThread begin to read adb data then proxy to usb");
            while (this.j) {
                byte[] bArr = aVar.f3160g;
                int iB2 = b(bArr, bArr.length);
                if (iB2 != aVar.f3160g.length) {
                    sb = new java.lang.StringBuilder();
                    sb.append("[UsbTransport]writeThread: failed to read header from socket, length=");
                    sb.append(iB2);
                } else {
                    aVar.a();
                    a("writeThread", aVar);
                    int i = aVar.f3157d;
                    if (i <= 0 || (iB = b(aVar.h, i)) == aVar.f3157d) {
                        byte[] bArr2 = aVar.f3160g;
                        int iD2 = d(bArr2, bArr2.length);
                        if (iD2 != aVar.f3160g.length) {
                            sb = new java.lang.StringBuilder();
                            sb.append("[UsbTransport]readThread: failed to write header to device, length=");
                            sb.append(iD2);
                        } else {
                            int i2 = aVar.f3157d;
                            if (i2 > 0 && (iD = d(aVar.h, i2)) != aVar.f3157d) {
                                sb = new java.lang.StringBuilder();
                                sb.append("[UsbTransport]readThread: failed to write data to device, length=");
                                sb.append(iD);
                            }
                        }
                    } else {
                        sb = new java.lang.StringBuilder();
                        sb.append("[UsbTransport]writeThread: failed to read data from socket, length=");
                        sb.append(iB);
                    }
                }
                android.util.Log.e("UsbTransport", sb.toString());
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        android.util.Log.d("UsbTransport", "writeThread: end");
    }

    public int a(net.easyconn.ecsdk.IUsbDevice iUsbDevice) {
        java.lang.String str;
        if (iUsbDevice == null || this.a != null) {
            str = "device is null or mDevice is not null";
        } else {
            this.a = iUsbDevice;
            if (iUsbDevice.open() == 0) {
                return a(c());
            }
            str = "failed to open mDevice";
        }
        android.util.Log.e("UsbTransport", str);
        return -1;
    }

    public void a() {
        this.j = false;
        android.util.Log.d("UsbTransport", "UsbTransport: begin to close");
        try {
            android.util.Log.d("UsbTransport", "mServer: close 1");
            android.net.LocalServerSocket localServerSocket = this.f3161c;
            if (localServerSocket != null) {
                localServerSocket.close();
                this.f3161c = null;
            }
            android.util.Log.d("UsbTransport", "mServer: close 2");
            this.f3163e.close();
            this.f3164f.close();
            android.util.Log.d("UsbTransport", "mReader and mWriter: close 2");
            android.net.LocalSocket localSocket = this.f3162d;
            if (localSocket != null) {
                localSocket.close();
                this.f3162d = null;
            }
            android.util.Log.d("UsbTransport", "mClient: close 2");
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        android.util.Log.d("UsbTransport", "mDevice: close 1");
        net.easyconn.ecsdk.IUsbDevice iUsbDevice = this.a;
        if (iUsbDevice != null) {
            iUsbDevice.close();
        }
        android.util.Log.d("UsbTransport", "mDevice: close 2");
        try {
            android.util.Log.d("UsbTransport", "begin to stop ReadThread");
            java.lang.Thread thread = this.h;
            if (thread != null) {
                thread.join();
                this.h = null;
            }
            android.util.Log.d("UsbTransport", "begin to stop WriteThread");
            java.lang.Thread thread2 = this.i;
            if (thread2 != null) {
                thread2.join();
                this.i = null;
            }
            android.util.Log.d("UsbTransport", "end to stop WriteThread");
        } catch (java.lang.Exception e3) {
            e3.printStackTrace();
        }
        android.util.Log.d("UsbTransport", "UsbTransport: end to close");
        this.a = null;
    }

    public void a(java.lang.String str, net.easyconn.ecsdk.a aVar) {
        java.lang.String str2;
        switch (aVar.a) {
            case 1129208147:
                str2 = "SYNC";
                break;
            case 1163086915:
                str2 = "CLSE";
                break;
            case 1163154007:
                str2 = "WRTE";
                break;
            case 1213486401:
                str2 = "AUTH";
                break;
            case 1313165391:
                str2 = "OPEN";
                break;
            case 1314410051:
                str2 = "CNXN";
                break;
            case 1497451343:
                str2 = "OKAY";
                break;
            default:
                str2 = "????";
                break;
        }
        android.util.Log.d("UsbTransport", "UsbTransport " + str + ": " + str2 + ", arg0=" + aVar.b + ", arg1=" + aVar.f3156c + ", data_length=" + aVar.f3157d);
    }
}
