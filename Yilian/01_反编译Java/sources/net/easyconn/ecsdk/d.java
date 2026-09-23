package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class d implements android.net.wifi.p2p.WifiP2pManager.ActionListener, android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener {
    public static final java.lang.String j = net.easyconn.ecsdk.d.class.getSimpleName();
    public android.content.Context a;
    public android.net.wifi.p2p.WifiP2pManager b;

    /* renamed from: c, reason: collision with root package name */
    public android.net.wifi.p2p.WifiP2pManager.Channel f3166c;

    /* renamed from: d, reason: collision with root package name */
    public net.easyconn.ecsdk.d.f f3167d;

    /* renamed from: f, reason: collision with root package name */
    public android.net.wifi.p2p.nsd.WifiP2pDnsSdServiceInfo f3169f;

    /* renamed from: g, reason: collision with root package name */
    public android.net.wifi.p2p.WifiP2pInfo f3170g;
    public net.easyconn.ecsdk.WifiManager h;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3168e = false;
    public java.util.Map<java.lang.String, java.lang.String> i = new java.util.HashMap(10);

    public class a implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
        public a() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i) {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            net.easyconn.ecsdk.d.this.b();
        }
    }

    public class b implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
        public b() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i) {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "clearLocalServices onFailure, reason=" + i);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "clearLocalServices onSuccess");
        }
    }

    public class c implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
        public c() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i) {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "removeGroup onFailure, reason=" + i);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "removeGroup onSuccess");
        }
    }

    /* renamed from: net.easyconn.ecsdk.d$d, reason: collision with other inner class name */
    public class C0098d implements android.net.wifi.p2p.WifiP2pManager.ActionListener {

        /* renamed from: net.easyconn.ecsdk.d$d$a */
        public class a implements android.net.wifi.p2p.WifiP2pManager.ActionListener {

            /* renamed from: net.easyconn.ecsdk.d$d$a$a, reason: collision with other inner class name */
            public class C0099a implements android.net.wifi.p2p.WifiP2pManager.ActionListener {
                public C0099a() {
                }

                @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                public void onFailure(int i) {
                    android.util.Log.d(net.easyconn.ecsdk.d.j, "createGroup onFailure, reason=" + i);
                }

                @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
                public void onSuccess() {
                    android.util.Log.d(net.easyconn.ecsdk.d.j, "createGroup onSuccess");
                }
            }

            public a() {
            }

            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onFailure(int i) {
                android.util.Log.d(net.easyconn.ecsdk.d.j, "discoverPeers onFailure, reason=" + i);
            }

            @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
            public void onSuccess() {
                android.util.Log.d(net.easyconn.ecsdk.d.j, "discoverPeers onSuccess");
                net.easyconn.ecsdk.d.this.b.createGroup(net.easyconn.ecsdk.d.this.f3166c, new net.easyconn.ecsdk.d.C0098d.a.C0099a());
            }
        }

        public C0098d() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onFailure(int i) {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "failed to addLocalService, reason=" + i);
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
        public void onSuccess() {
            android.util.Log.d(net.easyconn.ecsdk.d.j, "succeed in addLocalService");
            try {
                if (net.easyconn.ecsdk.d.this.b != null) {
                    net.easyconn.ecsdk.d.this.b.discoverPeers(net.easyconn.ecsdk.d.this.f3166c, new net.easyconn.ecsdk.d.C0098d.a());
                    if (net.easyconn.ecsdk.d.this.f3170g != null) {
                        net.easyconn.ecsdk.d.this.b.requestConnectionInfo(net.easyconn.ecsdk.d.this.f3166c, net.easyconn.ecsdk.d.this);
                    }
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements java.lang.Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.net.SocketException, org.json.JSONException, java.lang.InterruptedException {
            net.easyconn.ecsdk.d.this.h.d();
        }
    }

    public class f extends android.content.BroadcastReceiver {
        public f() {
        }

        public /* synthetic */ f(net.easyconn.ecsdk.d dVar, net.easyconn.ecsdk.d.a aVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            android.util.Log.d(net.easyconn.ecsdk.d.j, "WifiP2pBroadcastReceiver action=" + action);
            if (!action.equals("android.net.wifi.p2p.CONNECTION_STATE_CHANGE")) {
                if (action.equals("android.net.wifi.p2p.STATE_CHANGED")) {
                    int intExtra = intent.getIntExtra("wifi_p2p_state", -1);
                    java.lang.String str = net.easyconn.ecsdk.d.j;
                    java.lang.StringBuilder sbP = e.a.c.a.a.p("WIFI_P2P_STATE_CHANGED_ACTION state=", intExtra, ", ");
                    sbP.append(intExtra == 2);
                    android.util.Log.d(str, sbP.toString());
                    return;
                }
                return;
            }
            android.net.NetworkInfo networkInfo = (android.net.NetworkInfo) intent.getParcelableExtra("networkInfo");
            android.net.wifi.p2p.WifiP2pInfo wifiP2pInfo = (android.net.wifi.p2p.WifiP2pInfo) intent.getParcelableExtra("wifiP2pInfo");
            java.lang.String str2 = net.easyconn.ecsdk.d.j;
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(action, " networkInfo.isConnected ");
            sbQ.append(networkInfo.isConnected());
            android.util.Log.d(str2, sbQ.toString());
            java.lang.String str3 = net.easyconn.ecsdk.d.j;
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" wifiP2pInfo=");
            sbO.append(wifiP2pInfo.toString());
            android.util.Log.d(str3, sbO.toString());
            if (networkInfo.isConnected()) {
                net.easyconn.ecsdk.d.this.b.requestConnectionInfo(net.easyconn.ecsdk.d.this.f3166c, net.easyconn.ecsdk.d.this);
                return;
            }
            synchronized (android.net.wifi.p2p.WifiP2pInfo.class) {
                if (net.easyconn.ecsdk.d.this.f3170g != null) {
                    android.util.Log.d(net.easyconn.ecsdk.d.j, " wifiP2pInfo=" + wifiP2pInfo.toString() + ", mWifiP2pInfo=" + net.easyconn.ecsdk.d.this.f3170g.toString());
                    net.easyconn.ecsdk.d.this.f3170g = null;
                    net.easyconn.ecsdk.d.this.d();
                }
            }
        }
    }

    public d(android.content.Context context) {
        android.content.Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        android.net.wifi.p2p.WifiP2pManager wifiP2pManager = (android.net.wifi.p2p.WifiP2pManager) applicationContext.getSystemService("wifip2p");
        this.b = wifiP2pManager;
        android.content.Context context2 = this.a;
        this.f3166c = wifiP2pManager.initialize(context2, context2.getMainLooper(), null);
        android.util.Log.d(j, "initialize ok");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        android.util.Log.d(j, "addLocalService");
        synchronized (android.net.wifi.p2p.nsd.WifiP2pServiceInfo.class) {
            net.easyconn.ecsdk.WifiManager wifiManager = this.h;
            if (wifiManager != null) {
                wifiManager.a(this.i, "");
            }
            java.util.HashMap map = new java.util.HashMap();
            if (this.i.containsKey("huid")) {
                map.put("i", this.i.get("huid"));
            }
            if (this.i.containsKey("huname")) {
                map.put("n", this.i.get("huname"));
            }
            if (this.i.containsKey("flavor")) {
                map.put("f", this.i.get("flavor"));
            }
            if (this.i.containsKey("channel")) {
                map.put("c", this.i.get("channel"));
            }
            if (this.i.containsKey("port")) {
                map.put("p", this.i.get("port"));
            }
            map.put("e", "EC_MIRROR_CARBIT");
            android.net.wifi.p2p.nsd.WifiP2pDnsSdServiceInfo wifiP2pDnsSdServiceInfoNewInstance = android.net.wifi.p2p.nsd.WifiP2pDnsSdServiceInfo.newInstance("EC_MIRROR", "_presence._tcp", map);
            this.f3169f = wifiP2pDnsSdServiceInfoNewInstance;
            this.b.addLocalService(this.f3166c, wifiP2pDnsSdServiceInfoNewInstance, new net.easyconn.ecsdk.d.C0098d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        android.util.Log.d(j, "discoverPeers");
        if (this.f3168e) {
            this.b.clearLocalServices(this.f3166c, new net.easyconn.ecsdk.d.a());
        }
    }

    private void e() {
        android.util.Log.d(j, "registerP2pReceiver");
        if (this.f3167d == null) {
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.net.wifi.p2p.STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
            net.easyconn.ecsdk.d.f fVar = new net.easyconn.ecsdk.d.f(this, null);
            this.f3167d = fVar;
            this.a.registerReceiver(fVar, intentFilter);
        }
    }

    private void f() {
        android.net.wifi.p2p.WifiP2pManager wifiP2pManager = this.b;
        if (wifiP2pManager != null) {
            wifiP2pManager.clearLocalServices(this.f3166c, new net.easyconn.ecsdk.d.b());
            this.b.stopPeerDiscovery(this.f3166c, this);
            this.b.removeGroup(this.f3166c, new net.easyconn.ecsdk.d.c());
        }
    }

    private void g() {
        android.util.Log.d(j, "unregisterP2pReceiver");
        net.easyconn.ecsdk.d.f fVar = this.f3167d;
        if (fVar != null) {
            this.a.unregisterReceiver(fVar);
            this.f3167d = null;
        }
    }

    public void a(net.easyconn.ecsdk.WifiManager wifiManager) {
        synchronized (this) {
            this.h = wifiManager;
            this.f3168e = true;
            android.util.Log.d(j, "openWifiDirect");
            e();
            d();
        }
    }

    public void c() {
        android.util.Log.d(j, "closeWifiDirect");
        synchronized (this) {
            this.f3168e = false;
            g();
            this.f3167d = null;
            f();
            this.f3170g = null;
        }
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
    public void onConnectionInfoAvailable(android.net.wifi.p2p.WifiP2pInfo wifiP2pInfo) {
        android.util.Log.d(j, "onConnectionInfoAvailable info=" + wifiP2pInfo);
        synchronized (android.net.wifi.p2p.WifiP2pInfo.class) {
            this.f3170g = new android.net.wifi.p2p.WifiP2pInfo(wifiP2pInfo);
        }
        new java.lang.Thread(new net.easyconn.ecsdk.d.e()).start();
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onFailure(int i) {
        android.util.Log.d(j, "onFailure reason=" + i);
    }

    @Override // android.net.wifi.p2p.WifiP2pManager.ActionListener
    public void onSuccess() {
        android.util.Log.d(j, "onSuccess");
    }
}
