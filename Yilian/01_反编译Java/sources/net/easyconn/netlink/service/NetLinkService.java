package net.easyconn.netlink.service;

/* loaded from: classes.dex */
public class NetLinkService extends android.net.VpnService implements f.a.i.p.c.a {
    public static android.os.ParcelFileDescriptor n;
    public static f.a.i.p.c o;
    public f.a.i.p.a a;
    public net.easyconn.netlink.service.NetLinkService.b b;

    /* renamed from: g, reason: collision with root package name */
    public f.a.i.h.f f3208g;
    public java.lang.String h;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3204c = false;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f3205d = false;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3206e = false;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f3207f = false;
    public android.os.IBinder i = new net.easyconn.netlink.service.NetLinkService.c();
    public boolean j = false;
    public boolean k = false;
    public java.lang.String l = "127.0.0.1";
    public final android.content.BroadcastReceiver m = new net.easyconn.netlink.service.NetLinkService.a();

    public class a extends android.content.BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            e.e.a.g.a("NetLinkService broadcast action = " + action);
            if ("net.easyconn.android.netlink.stop".equals(action)) {
                net.easyconn.netlink.service.NetLinkService.this.f3207f = true;
                net.easyconn.netlink.service.NetLinkService.this.j();
            }
        }
    }

    public class b extends java.lang.Thread {
        public b(net.easyconn.netlink.service.NetLinkService.a aVar) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            e.e.a.g.a("NetLinkService dns thread start");
            if (android.text.TextUtils.isEmpty(net.easyconn.netlink.service.NetLinkService.this.l)) {
                e.e.a.g.c(e.a.c.a.a.j(e.a.c.a.a.o("NetLinkService dns thread mRemoteIP = "), net.easyconn.netlink.service.NetLinkService.this.l, ", return"), new java.lang.Object[0]);
                net.easyconn.netlink.service.NetLinkService.this.f();
                return;
            }
            e.a.c.a.a.C(e.a.c.a.a.o("NetLinkService dns thread start begin mCtrlFromEC = "), net.easyconn.netlink.service.NetLinkService.this.f3207f);
            if (!net.easyconn.netlink.service.NetLinkService.this.f3207f) {
                net.easyconn.netlink.service.NetLinkService.this.f3205d = true;
            }
            android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(net.easyconn.netlink.service.NetLinkService.this).a.edit();
            editorEdit.putBoolean("EC_AUTO_NET_LINK_KEY", true);
            editorEdit.apply();
            net.easyconn.netlink.service.NetLinkService netLinkService = net.easyconn.netlink.service.NetLinkService.this;
            netLinkService.native_startDnsProxy("0.0.0.0", 8053, netLinkService.l, 10924);
            e.e.a.g.a("NetLinkService dns thread start end");
        }
    }

    public class c extends android.os.Binder {
        public c() {
        }
    }

    static {
        android.os.Process.myPid();
        java.lang.System.loadLibrary("DnsProxy");
    }

    public static void l() throws java.lang.InterruptedException, java.io.IOException {
        e.e.a.g.a("NetLinkService stopVpnProxy.");
        try {
            if (n != null) {
                n.close();
                n = null;
            }
            if (o != null) {
                f.a.i.p.c cVar = o;
                cVar.b = true;
                java.lang.Thread thread = cVar.a;
                if (thread != null) {
                    thread.interrupt();
                }
                java.lang.Process process = cVar.f2973c;
                if (process != null) {
                    process.destroy();
                }
                try {
                    cVar.a.join();
                } catch (java.lang.InterruptedException unused) {
                    android.util.Log.d("GuardedProcess", "interrupted thread");
                }
                o = null;
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public final synchronized void a() {
        if (!this.f3206e) {
            e.e.a.g.a("NetLinkService startAll");
            synchronized (this) {
                android.content.IntentFilter intentFilter = new android.content.IntentFilter();
                intentFilter.addAction("net.easyconn.android.netlink.stop");
                registerReceiver(this.m, intentFilter);
                this.f3206e = true;
            }
        }
    }

    public void b() {
        e.e.a.g.a("NetLinkService notifyDisconnected");
        android.content.Intent intent = new android.content.Intent("net.easyconn.usb.netlink.status");
        intent.putExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 0);
        intent.putExtra("error_code", 0);
        sendBroadcast(intent);
    }

    public void c() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("NetLinkService onNetworkConnected: mVpnOpened = ");
        sbO.append(this.f3205d);
        sbO.append(" mNetLinked = ");
        e.a.c.a.a.C(sbO, this.f3204c);
        if (!this.f3205d || this.f3204c) {
            return;
        }
        this.f3204c = true;
        e.e.a.g.a("NetLinkService notifyConnected");
        android.content.Intent intent = new android.content.Intent("net.easyconn.usb.netlink.status");
        intent.putExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 1);
        sendBroadcast(intent);
    }

    public void d() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("NetLinkService onNetworkDisconnected: mVpnOpened = ");
        sbO.append(this.f3205d);
        sbO.append(" mNetLinked=");
        e.a.c.a.a.C(sbO, this.f3204c);
        synchronized (this) {
            if (this.f3205d && this.f3204c) {
                this.f3204c = false;
                this.f3207f = false;
                b();
            }
        }
    }

    public void e(java.lang.String str) {
        this.l = str;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("NetLinkService onUsbConnected: begin mRemoteIP = ");
        sbO.append(this.l);
        e.e.a.g.a(sbO.toString());
        synchronized (this) {
            if (this.a != null) {
                f.a.i.p.a aVar = this.a;
                if (aVar == null) {
                    throw null;
                }
                e.e.a.g.a("C2PThread exit");
                aVar.b = false;
                aVar.interrupt();
            }
            f.a.i.p.a aVar2 = new f.a.i.p.a(this);
            this.a = aVar2;
            aVar2.f2970d = str;
            aVar2.start();
        }
        e.e.a.g.a("NetLinkService onUsbConnected: end");
    }

    public void f() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("NetLinkService onUsbDisconnected: begin mVpnOpened = ");
        sbO.append(this.f3205d);
        sbO.append(" mNetLinked=");
        e.a.c.a.a.C(sbO, this.f3204c);
        this.f3207f = false;
        synchronized (this) {
            if (this.a != null) {
                f.a.i.p.a aVar = this.a;
                if (aVar == null) {
                    throw null;
                }
                e.e.a.g.a("C2PThread exit");
                aVar.b = false;
                aVar.interrupt();
                this.a = null;
            }
            l();
            if (this.f3205d) {
                k();
                b();
            }
            this.f3204c = false;
        }
        e.e.a.g.a("NetLinkService onUsbDisconnected: end");
    }

    public void g(boolean z) {
        e.a.c.a.a.z("NetLinkService onVpnPrepareDone: prepareOk=", z);
        synchronized (this) {
            if (!h()) {
                e.e.a.g.c("NetLinkService onVpnPrepareDone: failed to establishVPN", new java.lang.Object[0]);
                if (this.f3208g != null) {
                    ((f.a.i.i.q) this.f3208g).R();
                }
                f();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0324  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h() throws java.lang.InterruptedException, android.content.res.Resources.NotFoundException, android.content.pm.PackageManager.NameNotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.netlink.service.NetLinkService.h():boolean");
    }

    public final void i() {
        this.k = this.j;
        if (!f.a.i.m.g.h0(this) ? false : java.lang.Boolean.parseBoolean(f.a.i.m.g.f2936c.getProperty("NETLINK_NOT_POP_VPN_DIALOG", "false"))) {
            e.e.a.g.c("NetLinkService startVpnPrepare: failed to establishVPN", new java.lang.Object[0]);
            f.a.i.h.f fVar = this.f3208g;
            if (fVar != null) {
                ((f.a.i.i.q) fVar).R();
            }
            f();
            return;
        }
        e.e.a.g.a("NetLinkService startVpnPrepare");
        android.content.Intent intent = new android.content.Intent();
        intent.setClass(getApplicationContext(), net.easyconn.netlink.ui.NetlinkActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("prepareVpn", true);
        startActivity(intent);
    }

    public final void j() {
        e.a.c.a.a.C(e.a.c.a.a.o("NetLinkService stopAll mStarted = "), this.f3206e);
        try {
            if (this.f3206e) {
                this.f3206e = false;
                unregisterReceiver(this.m);
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        f();
    }

    public final void k() {
        e.e.a.g.a("NetLinkService stopDnsProxy start");
        synchronized (this) {
            if (this.b != null) {
                try {
                    e.e.a.g.a("NetLinkService stopDnsProxy mDnsThread = " + this.b + " begin");
                    native_stopDnsProxy();
                    e.e.a.g.a("NetLinkService stopDnsProxy end");
                    if (!this.b.isAlive()) {
                        e.e.a.g.a("NetLinkService stopDnsProxy mDnsThread interrupt");
                        this.b.join();
                    }
                    e.e.a.g.a("NetLinkService stopDnsProxy mDnsThread stop");
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
                this.b = null;
            }
        }
        this.f3205d = false;
        e.e.a.g.a("NetLinkService stopDnsProxy stop");
    }

    public final native int native_startDnsProxy(java.lang.String str, int i, java.lang.String str2, int i2);

    public final native int native_stopDnsProxy();

    @Override // android.net.VpnService, android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        e.e.a.g.a("NetLinkService onBind: intent=" + intent + ", mStarted=" + this.f3206e + ", mTun2SockProcess=" + o);
        a();
        e.e.a.g.a("NetLinkService onBind end");
        return this.i;
    }

    @Override // android.app.Service
    public void onCreate() {
        e.e.a.g.a("NetLinkService onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        e.e.a.g.a("NetLinkService onDestroy");
        j();
        e.e.a.g.a("NetLinkService onDestroy end");
    }

    @Override // android.app.Service
    public void onRebind(android.content.Intent intent) {
        e.e.a.g.a("NetLinkService onRebind");
    }

    @Override // android.net.VpnService
    public void onRevoke() {
        e.e.a.g.a("NetLinkService onRevoke");
        j();
        super.onRevoke();
    }

    @Override // f.a.i.p.c.a
    public void onStart() throws java.lang.InterruptedException {
        android.os.ParcelFileDescriptor parcelFileDescriptor = n;
        if (parcelFileDescriptor == null) {
            e.e.a.g.a("NetLinkService mVpnPfd null, return!");
            return;
        }
        int fd = parcelFileDescriptor.getFd();
        if (fd <= 0) {
            return;
        }
        int i = 5;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            try {
                java.lang.Thread.sleep(i2 * 1000);
            } catch (java.lang.Exception e2) {
                e.e.a.g.c(e.a.c.a.a.J(e2, e.a.c.a.a.o("NetLinkService sendFd: ")), new java.lang.Object[0]);
            }
            if (net.easyconn.netlink.service.JniHelper.sendFd(fd, new java.io.File(getFilesDir(), "sock_path").getAbsolutePath()) != -1) {
                e.e.a.g.a("NetLinkService startVpnProxy: sendFd ok");
                return;
            } else {
                e.e.a.g.c("NetLinkService startVpnProxy: sendFd fail", new java.lang.Object[0]);
                i = i2;
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        e.e.a.g.a("NetLinkService onStartCommand: intent=" + intent + ", mStarted=" + this.f3206e + ", mTun2SockProcess=" + o);
        a();
        e.e.a.g.a("NetLinkService onStartCommand end");
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(android.content.Intent intent) {
        e.e.a.g.a("NetLinkService onUnbind: " + intent);
        return true;
    }
}
