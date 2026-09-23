package f.a.i.p;

/* loaded from: classes.dex */
public class d extends java.lang.Thread {
    public java.net.Socket a;
    public boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Boolean f2974c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f2975d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f2976e;

    /* renamed from: f, reason: collision with root package name */
    public f.a.i.p.e f2977f;

    public class a {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2978c;

        /* renamed from: d, reason: collision with root package name */
        public int f2979d;

        public a(f.a.i.p.d dVar) {
            this.a = 0;
            this.b = 0;
            this.f2978c = 0;
            this.f2979d = 0;
        }

        public a(f.a.i.p.d dVar, byte[] bArr) {
            this.a = ((bArr[3] & 255) << 24) + ((bArr[2] & 255) << 16) + ((bArr[1] & 255) << 8) + (bArr[0] & 255);
            this.b = ((bArr[7] & 255) << 24) + ((bArr[6] & 255) << 16) + ((bArr[5] & 255) << 8) + (bArr[4] & 255);
            this.f2978c = ((bArr[11] & 255) << 24) + ((bArr[10] & 255) << 16) + ((bArr[9] & 255) << 8) + (bArr[8] & 255);
            this.f2979d = ((bArr[15] & 255) << 24) + ((bArr[14] & 255) << 16) + ((bArr[13] & 255) << 8) + (bArr[12] & 255);
        }

        public byte[] a() {
            int i = this.a;
            int i2 = this.b;
            int i3 = this.f2978c;
            int i4 = this.f2979d;
            return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255), (byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255), (byte) (i3 & 255), (byte) ((i3 >> 8) & 255), (byte) ((i3 >> 16) & 255), (byte) ((i3 >> 24) & 255), (byte) (i4 & 255), (byte) ((i4 >> 8) & 255), (byte) ((i4 >> 16) & 255), (byte) ((i4 >> 24) & 255)};
        }
    }

    public d(android.content.Context context, java.lang.String str, f.a.i.p.e eVar) {
        this.f2976e = "127.0.0.1";
        this.f2975d = context;
        this.f2976e = str;
        this.f2977f = eVar;
    }

    public final boolean a() throws java.io.IOException {
        java.net.Socket socket = this.a;
        if (socket != null) {
            try {
                socket.close();
            } catch (java.lang.Exception e2) {
                e.e.a.g.c(e.a.c.a.a.J(e2, e.a.c.a.a.o("C2PThread: ")), new java.lang.Object[0]);
            }
        }
        try {
            java.net.Socket socket2 = new java.net.Socket(this.f2976e, 10922);
            this.a = socket2;
            socket2.setSoTimeout(3000);
            if (h()) {
                return true;
            }
            e.e.a.g.c("C2PThread: failed to sendConnType", new java.lang.Object[0]);
            return false;
        } catch (java.lang.Exception e3) {
            e.e.a.g.c(e.a.c.a.a.J(e3, e.a.c.a.a.o("C2PThread: ")), new java.lang.Object[0]);
            return false;
        }
    }

    public final int b() {
        try {
            f.a.i.p.d.a aVar = new f.a.i.p.d.a(this);
            aVar.a = 66576;
            aVar.b = 16;
            aVar.f2978c = 66560;
            if (!g(aVar.a())) {
                e.e.a.g.c("checkNetwork: failed to send req", new java.lang.Object[0]);
                return -1;
            }
            byte[] bArr = new byte[16];
            if (!f(bArr)) {
                e.e.a.g.c("checkNetwork: failed to recv rly header", new java.lang.Object[0]);
                return -1;
            }
            f.a.i.p.d.a aVar2 = new f.a.i.p.d.a(this, bArr);
            if (aVar2.f2978c != (aVar2.a ^ aVar2.b)) {
                e.e.a.g.c("checkNetwork: recv invalid header, cmdType=0x" + java.lang.Integer.toHexString(aVar2.a) + ", length=" + aVar2.b + ", magic=0x" + java.lang.Integer.toHexString(aVar2.f2978c), new java.lang.Object[0]);
                return -1;
            }
            byte[] bArr2 = null;
            if (aVar2.b > 16) {
                bArr2 = new byte[aVar2.b - 16];
                if (!f(bArr2)) {
                    e.e.a.g.c("checkNetwork: failed to recv rly data", new java.lang.Object[0]);
                    return -1;
                }
            }
            if (aVar2.a != 66577) {
                e.e.a.g.c("checkNetwork: recv unexpected cmd=0x" + java.lang.Integer.toHexString(aVar2.a), new java.lang.Object[0]);
                return -1;
            }
            if (bArr2 == null) {
                e.e.a.g.c("checkNetwork: no rly data", new java.lang.Object[0]);
                return -1;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject(new java.lang.String(bArr2));
            if (jSONObject.isNull(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS)) {
                e.e.a.g.c("checkNetwork: no opt \"status\" in data", new java.lang.Object[0]);
                return -1;
            }
            if (jSONObject.optBoolean(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS)) {
                return 1;
            }
            e.e.a.g.a("checkNetwork: network status is not ok");
            return 0;
        } catch (java.lang.Exception e2) {
            e.e.a.g.c(e.a.c.a.a.J(e2, e.a.c.a.a.o("checkNetwork: ")), new java.lang.Object[0]);
            return -1;
        }
    }

    public void c() {
        e.e.a.g.a("exit");
        this.b = false;
        interrupt();
    }

    public void d() {
        e.e.a.g.a("notifyConnected");
        android.content.Intent intent = new android.content.Intent("net.easyconn.usb.netlink.status");
        intent.putExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 1);
        this.f2975d.sendBroadcast(intent);
    }

    public void e() {
        e.e.a.g.a("notifyDisconnected");
        android.content.Intent intent = new android.content.Intent("net.easyconn.usb.netlink.status");
        intent.putExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 0);
        intent.putExtra("error_code", 0);
        this.f2975d.sendBroadcast(intent);
    }

    public final boolean f(byte[] bArr) throws java.io.IOException {
        int i;
        try {
            if (this.a == null || this.a.isClosed()) {
                return true;
            }
            java.io.InputStream inputStream = this.a.getInputStream();
            int i2 = 0;
            while (i2 < bArr.length && (i = inputStream.read(bArr, i2, bArr.length - i2)) > 0) {
                i2 += i;
            }
            if (i2 >= bArr.length) {
                return true;
            }
            e.e.a.g.c("recv: failed to recv data, len=" + i2, new java.lang.Object[0]);
            return false;
        } catch (java.io.IOException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("recv: ioe=");
            sbO.append(e2.toString());
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            try {
                this.a.close();
                return true;
            } catch (java.lang.Exception e3) {
                e.e.a.g.c(e.a.c.a.a.J(e3, e.a.c.a.a.o("recv: e1=")), new java.lang.Object[0]);
                return true;
            }
        } catch (java.lang.Exception e4) {
            e.e.a.g.c(e.a.c.a.a.J(e4, e.a.c.a.a.o("recv: ")), new java.lang.Object[0]);
            return false;
        }
    }

    public final boolean g(byte[] bArr) throws java.io.IOException {
        try {
            if (this.a == null || this.a.isClosed()) {
                e.e.a.g.c("send: socket is closed", new java.lang.Object[0]);
                return false;
            }
            this.a.getOutputStream().write(bArr);
            return true;
        } catch (java.io.IOException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("send: ioe=");
            sbO.append(e2.toString());
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            try {
                this.a.close();
            } catch (java.lang.Exception e3) {
                e.e.a.g.c(e.a.c.a.a.J(e3, e.a.c.a.a.o("send: e1=")), new java.lang.Object[0]);
            }
            return false;
        } catch (java.lang.Exception e4) {
            e.e.a.g.c(e.a.c.a.a.J(e4, e.a.c.a.a.o("send: e=")), new java.lang.Object[0]);
            return false;
        }
    }

    public final boolean h() {
        f.a.i.p.d.a aVar = new f.a.i.p.d.a(this);
        aVar.a = 65536;
        aVar.b = 16;
        aVar.f2978c = 65552;
        aVar.f2979d = 0;
        if (!g(aVar.a())) {
            e.e.a.g.c("C2PThread:: failed to send req", new java.lang.Object[0]);
            return false;
        }
        byte[] bArr = new byte[16];
        if (!f(bArr)) {
            e.e.a.g.c("C2PThread:: failed to recv rlyBytes", new java.lang.Object[0]);
            return false;
        }
        f.a.i.p.d.a aVar2 = new f.a.i.p.d.a(this, bArr);
        int i = aVar2.f2978c;
        int i2 = aVar2.a;
        int i3 = aVar2.b;
        if (i != (i2 ^ i3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("C2PThread:: recv invalid rly header, cmdType=0x");
            sbO.append(java.lang.Integer.toHexString(aVar2.a));
            sbO.append(", length=");
            sbO.append(aVar2.b);
            sbO.append(", magic=0x");
            sbO.append(java.lang.Integer.toHexString(aVar2.f2978c));
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            return false;
        }
        if (i3 > 16 && !f(new byte[i3 - 16])) {
            e.e.a.g.c("C2PThread:: failed to recv data", new java.lang.Object[0]);
            return false;
        }
        if (aVar2.a == 65537) {
            e.e.a.g.a("C2PThread: sendConnType ok");
            return true;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("C2PThread:: recv unexpected cmd=0x");
        sbO2.append(java.lang.Integer.toHexString(aVar2.a));
        e.e.a.g.c(sbO2.toString(), new java.lang.Object[0]);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8 A[Catch: InterruptedException -> 0x0170, TRY_LEAVE, TryCatch #1 {InterruptedException -> 0x0170, blocks: (B:15:0x003e, B:17:0x0043, B:24:0x0056, B:29:0x0075, B:31:0x008e, B:33:0x009a, B:39:0x00b4, B:41:0x00b8, B:45:0x00c3, B:46:0x00c6, B:51:0x00d3, B:53:0x00db, B:55:0x00e4, B:57:0x00ec, B:61:0x0122, B:58:0x0104, B:60:0x010a, B:63:0x0129, B:64:0x012a, B:65:0x012d, B:68:0x0138, B:72:0x0142, B:76:0x014b, B:84:0x0169, B:34:0x00ab, B:36:0x00af, B:78:0x0150, B:80:0x0154, B:82:0x0158, B:19:0x004b), top: B:95:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d3 A[Catch: InterruptedException -> 0x0170, TryCatch #1 {InterruptedException -> 0x0170, blocks: (B:15:0x003e, B:17:0x0043, B:24:0x0056, B:29:0x0075, B:31:0x008e, B:33:0x009a, B:39:0x00b4, B:41:0x00b8, B:45:0x00c3, B:46:0x00c6, B:51:0x00d3, B:53:0x00db, B:55:0x00e4, B:57:0x00ec, B:61:0x0122, B:58:0x0104, B:60:0x010a, B:63:0x0129, B:64:0x012a, B:65:0x012d, B:68:0x0138, B:72:0x0142, B:76:0x014b, B:84:0x0169, B:34:0x00ab, B:36:0x00af, B:78:0x0150, B:80:0x0154, B:82:0x0158, B:19:0x004b), top: B:95:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013d  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.InterruptedException, java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.p.d.run():void");
    }
}
