package net.easyconn.framework.sdkservice;

@android.annotation.SuppressLint({"MissingPermission"})
/* loaded from: classes.dex */
public class EcWifiManager {
    public android.content.Context a;
    public volatile boolean b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f3178c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f3179d;

    /* renamed from: f, reason: collision with root package name */
    public android.net.ConnectivityManager f3181f;

    /* renamed from: g, reason: collision with root package name */
    public f.a.i.i.q f3182g;
    public android.net.wifi.p2p.WifiP2pManager h;
    public android.net.wifi.WifiManager i;
    public android.net.wifi.p2p.WifiP2pManager.Channel j;
    public boolean k;
    public boolean l;
    public boolean m;
    public android.net.wifi.p2p.WifiP2pManager.GroupInfoListener p;
    public net.easyconn.framework.sdkservice.EasyConnectService r;
    public f.a.f.a s;
    public android.net.wifi.p2p.WifiP2pDevice v;
    public boolean w;
    public boolean y;
    public net.easyconn.framework.sdkservice.EasyConnectService.d z;

    /* renamed from: e, reason: collision with root package name */
    public java.util.concurrent.atomic.AtomicInteger f3180e = new java.util.concurrent.atomic.AtomicInteger(0);
    public boolean n = false;
    public android.net.wifi.p2p.WifiP2pDevice o = null;
    public boolean q = false;
    public android.os.Handler t = new android.os.Handler();
    public java.lang.Runnable u = new net.easyconn.framework.sdkservice.EcWifiManager.a();
    public net.easyconn.framework.sdkservice.EcWifiManager.c x = null;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = net.easyconn.framework.sdkservice.EcWifiManager.this;
            ecWifiManager.t.removeCallbacks(ecWifiManager.u);
            if (!ecWifiManager.f3182g.T) {
                e.e.a.g.a("retryStartP2pSearch");
                ecWifiManager.h();
            }
            ecWifiManager.t.postDelayed(ecWifiManager.u, 120000L);
        }
    }

    public class b implements android.net.wifi.p2p.WifiP2pManager.GroupInfoListener {
        public b() {
        }

        @Override // android.net.wifi.p2p.WifiP2pManager.GroupInfoListener
        public void onGroupInfoAvailable(android.net.wifi.p2p.WifiP2pGroup wifiP2pGroup) {
            if (wifiP2pGroup == null) {
                e.e.a.g.a("requestGroupInfo group is null");
                net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager = net.easyconn.framework.sdkservice.EcWifiManager.this;
                ecWifiManager.n = false;
                ecWifiManager.o = null;
                net.easyconn.framework.sdkservice.EcWifiManager.a(ecWifiManager);
                return;
            }
            if (!wifiP2pGroup.isGroupOwner()) {
                e.e.a.g.a("requestGroupInfo phone is owner");
                android.net.wifi.p2p.WifiP2pDevice owner = wifiP2pGroup.getOwner();
                if (owner == null) {
                    e.e.a.g.a("requestGroupInfo p2pDevice is null");
                    return;
                }
                java.lang.StringBuilder sbO = e.a.c.a.a.o("requestGroupInfo deviceName = ");
                sbO.append(owner.deviceName);
                e.e.a.g.a(sbO.toString());
                net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager2 = net.easyconn.framework.sdkservice.EcWifiManager.this;
                ecWifiManager2.n = true;
                ecWifiManager2.o = owner;
                net.easyconn.framework.sdkservice.EcWifiManager.a(ecWifiManager2);
                return;
            }
            e.e.a.g.a("requestGroupInfo car is owner");
            for (android.net.wifi.p2p.WifiP2pDevice wifiP2pDevice : wifiP2pGroup.getClientList()) {
                if (wifiP2pDevice != null) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("requestGroupInfo  WifiP2pDevice deviceName = ");
                    sbO2.append(wifiP2pDevice.deviceName);
                    sbO2.append(" deviceAddress = ");
                    sbO2.append(wifiP2pDevice.deviceAddress);
                    sbO2.append(" status = ");
                    e.a.c.a.a.A(sbO2, wifiP2pDevice.status);
                    net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager3 = net.easyconn.framework.sdkservice.EcWifiManager.this;
                    ecWifiManager3.n = true;
                    ecWifiManager3.o = wifiP2pDevice;
                    net.easyconn.framework.sdkservice.EcWifiManager.a(ecWifiManager3);
                }
            }
        }
    }

    public class c extends android.content.BroadcastReceiver {
        public c(net.easyconn.framework.sdkservice.EcWifiManager.a aVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:131:0x02a2  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x02a6  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0219 A[PHI: r8
  0x0219: PHI (r8v64 f.a.i.i.q) = (r8v63 f.a.i.i.q), (r8v65 f.a.i.i.q) binds: [B:98:0x0217, B:93:0x01c7] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r8, android.content.Intent r9) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                Method dump skipped, instructions count: 1219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.easyconn.framework.sdkservice.EcWifiManager.c.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public EcWifiManager(android.content.Context context, f.a.i.i.q qVar) {
        this.f3182g = qVar;
        this.r = (net.easyconn.framework.sdkservice.EasyConnectService) context;
        this.a = context.getApplicationContext();
        this.f3181f = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        this.i = (android.net.wifi.WifiManager) this.a.getSystemService("wifi");
        if (f.a.i.m.g.s(context)) {
            d(context);
            b();
        }
    }

    public static void a(net.easyconn.framework.sdkservice.EcWifiManager ecWifiManager) {
        net.easyconn.framework.sdkservice.EasyConnectService.d dVar = ecWifiManager.z;
        if (dVar == null) {
            e.e.a.g.a("notifyWifiP2pConnectDeviceChange fail because mWifiStateListener is null");
            return;
        }
        final boolean z = ecWifiManager.n;
        final android.net.wifi.p2p.WifiP2pDevice wifiP2pDevice = ecWifiManager.o;
        f.a.k.i0 i0Var = (f.a.k.i0) dVar;
        e.e.a.g.a("important_log wifiP2pConnectDeviceChange isConnected = " + z + " , p2pDevice = " + wifiP2pDevice);
        if (f.a.i.m.g.e(i0Var.a.getApplicationContext()) && f.a.i.m.g.s(i0Var.a.getApplicationContext())) {
            if (f.a.i.m.g.g(i0Var.a.getApplicationContext()) || f.a.i.m.g.a) {
                final f.a.k.g0 g0Var = i0Var.a;
                g0Var.runOnUiThread(new java.lang.Runnable() { // from class: f.a.k.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        g0Var.b0(z, wifiP2pDevice);
                    }
                });
            }
        }
    }

    public void b() {
        android.net.wifi.p2p.WifiP2pManager.Channel channel;
        if (this.p == null) {
            this.p = new net.easyconn.framework.sdkservice.EcWifiManager.b();
        }
        android.net.wifi.p2p.WifiP2pManager wifiP2pManager = this.h;
        if (wifiP2pManager == null || (channel = this.j) == null) {
            return;
        }
        wifiP2pManager.requestGroupInfo(channel, this.p);
    }

    public void c(android.net.wifi.p2p.WifiP2pInfo wifiP2pInfo) {
        f.a.i.i.q qVar;
        if (wifiP2pInfo == null) {
            e.e.a.g.a("dealWifiP2pInfoWhenConnected wifiP2pInfo is null");
            return;
        }
        e.e.a.g.a("dealWifiP2pInfoWhenConnected wifiP2pInfo = " + wifiP2pInfo);
        if (!wifiP2pInfo.groupFormed) {
            e.e.a.g.c("dealWifiP2pInfoWhenConnected group not formed!!!", new java.lang.Object[0]);
            return;
        }
        if (wifiP2pInfo.isGroupOwner) {
            e.e.a.g.a("dealWifiP2pInfoWhenConnected wifiP2pInfo reOpenWifiService");
            qVar = this.f3182g;
            if (qVar == null) {
                return;
            }
        } else {
            java.lang.String hostAddress = wifiP2pInfo.groupOwnerAddress.getHostAddress();
            e.a.c.a.a.w("dealWifiP2pInfoWhenConnected setWifiIpAddress address = ", hostAddress);
            f.a.i.i.q qVar2 = this.f3182g;
            net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_ANDROID_WIFI;
            if (qVar2 == null) {
                throw null;
            }
            e.e.a.g.a("setWifiIpAddress address = " + hostAddress + ", transportType = " + eCTransportType);
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putSerializable(com.umeng.analytics.pro.c.y, eCTransportType);
            bundle.putString("address", hostAddress);
            android.os.Message messageObtain = android.os.Message.obtain();
            messageObtain.obj = bundle;
            messageObtain.what = 45;
            qVar2.r.sendMessage(messageObtain);
            qVar = this.f3182g;
            if (qVar == null) {
                return;
            }
        }
        qVar.Y();
    }

    public void d(final android.content.Context context) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("initP2pInfo version = ");
        sbO.append(android.os.Build.VERSION.SDK_INT);
        e.e.a.g.a(sbO.toString());
        android.net.wifi.p2p.WifiP2pManager wifiP2pManager = (android.net.wifi.p2p.WifiP2pManager) context.getSystemService("wifip2p");
        this.h = wifiP2pManager;
        if (wifiP2pManager == null) {
            e.e.a.g.c("initP2pInfo mP2pManager is null, wifi p2p feature not supported on this device.", new java.lang.Object[0]);
            return;
        }
        android.content.Context context2 = this.a;
        android.net.wifi.p2p.WifiP2pManager.Channel channelInitialize = wifiP2pManager.initialize(context2, context2.getMainLooper(), null);
        this.j = channelInitialize;
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            this.h.requestDeviceInfo(channelInitialize, new android.net.wifi.p2p.WifiP2pManager.DeviceInfoListener() { // from class: net.easyconn.framework.sdkservice.EcWifiManager.2
                @Override // android.net.wifi.p2p.WifiP2pManager.DeviceInfoListener
                @androidx.annotation.Keep
                public void onDeviceInfoAvailable(android.net.wifi.p2p.WifiP2pDevice wifiP2pDevice) {
                    e.e.a.g.a("EcWifiManager onDeviceInfoAvailable wifiP2pDevice = " + wifiP2pDevice);
                    if (f.a.i.m.g.s(context) && wifiP2pDevice != null) {
                        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("EcWifiManager WifiP2pReceiver wifiP2pDeviceName = ");
                        sbO2.append(wifiP2pDevice.deviceName);
                        e.e.a.g.a(sbO2.toString());
                        if (!android.text.TextUtils.isEmpty(wifiP2pDevice.deviceName)) {
                            if (android.text.TextUtils.isEmpty(f.a.i.m.g.l(context))) {
                                e.e.a.g.a("EcWifiManager WifiP2pReceiver wifiP2pDeviceName changeCarNavigatorName");
                                net.easyconn.ecsdk.ECSDK.getInstance().changeCarNavigatorName(wifiP2pDevice.deviceName);
                                android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences("EC_DEVICE_NAME", 0).edit();
                                editorEdit.putString("EC_DEVICE_NAME", wifiP2pDevice.deviceName);
                                editorEdit.apply();
                                net.easyconn.framework.sdkservice.EasyConnectService.d dVar = net.easyconn.framework.sdkservice.EcWifiManager.this.z;
                                if (dVar != null) {
                                    ((f.a.k.i0) dVar).b(wifiP2pDevice.deviceName);
                                }
                            } else {
                                net.easyconn.framework.sdkservice.EasyConnectService.d dVar2 = net.easyconn.framework.sdkservice.EcWifiManager.this.z;
                                if (dVar2 != null) {
                                    e.a.c.a.a.w("important_log wifiP2pChanged deviceName = ", wifiP2pDevice.deviceName);
                                }
                            }
                        }
                        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("onDeviceInfoAvailable My Wi-Fi P2P name is : ");
                        sbO3.append(wifiP2pDevice.deviceName);
                        e.e.a.g.a(sbO3.toString());
                    }
                }
            });
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("error：initP2pInfo now android version is ");
        sbO2.append(android.os.Build.VERSION.SDK_INT);
        sbO2.append(", need android version >= ");
        sbO2.append(29);
        e.e.a.g.c(sbO2.toString(), new java.lang.Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0043, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e() throws java.net.SocketException {
        /*
            r11 = this;
            android.net.wifi.WifiManager r0 = r11.i
            r1 = 0
            if (r0 != 0) goto Lb
            java.lang.String r0 = "EcWifiManager mWifiManager is null"
            e.e.a.g.a(r0)
            return r1
        Lb:
            android.net.wifi.WifiInfo r0 = r0.getConnectionInfo()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "EcWifiManager isWifiConnect wifiInfo = "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            e.e.a.g.a(r2)
            if (r0 == 0) goto L2a
            int r0 = r0.getIpAddress()
            goto L2b
        L2a:
            r0 = 0
        L2b:
            java.lang.String r2 = "EcWifiManager isWifiConnect standard ipAddress = "
            e.a.c.a.a.v(r2, r0)
            r2 = 1
            if (r0 != 0) goto La4
            java.lang.String r3 = "wlan0"
            r4 = 0
            java.util.Enumeration r5 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.net.SocketException -> L98
            if (r5 != 0) goto L42
            java.lang.String r3 = "EcWifiManager Enumeration nis == null"
            e.e.a.g.a(r3)     // Catch: java.net.SocketException -> L98
            goto La1
        L42:
            r6 = r4
        L43:
            boolean r7 = r5.hasMoreElements()     // Catch: java.net.SocketException -> L95
            if (r7 == 0) goto L93
            java.lang.Object r7 = r5.nextElement()     // Catch: java.net.SocketException -> L95
            java.net.NetworkInterface r7 = (java.net.NetworkInterface) r7     // Catch: java.net.SocketException -> L95
            java.lang.String r8 = r7.getName()     // Catch: java.net.SocketException -> L95
            boolean r8 = r8.equals(r3)     // Catch: java.net.SocketException -> L95
            if (r8 == 0) goto L43
            java.util.Enumeration r7 = r7.getInetAddresses()     // Catch: java.net.SocketException -> L95
            if (r7 != 0) goto L62
            java.lang.String r3 = "EcWifiManager Enumeration ias == null"
            goto L72
        L62:
            boolean r8 = r7.hasMoreElements()     // Catch: java.net.SocketException -> L95
            if (r8 == 0) goto L43
            java.lang.Object r8 = r7.nextElement()     // Catch: java.net.SocketException -> L95
            java.net.InetAddress r8 = (java.net.InetAddress) r8     // Catch: java.net.SocketException -> L95
            if (r8 != 0) goto L76
            java.lang.String r3 = "EcWifiManager Enumeration ia == null"
        L72:
            e.e.a.g.a(r3)     // Catch: java.net.SocketException -> L95
            goto La1
        L76:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.net.SocketException -> L95
            r9.<init>()     // Catch: java.net.SocketException -> L95
            java.lang.String r10 = "EcWifiManager getIpAddressFromNetInterface ia = "
            r9.append(r10)     // Catch: java.net.SocketException -> L95
            r9.append(r8)     // Catch: java.net.SocketException -> L95
            java.lang.String r9 = r9.toString()     // Catch: java.net.SocketException -> L95
            e.e.a.g.a(r9)     // Catch: java.net.SocketException -> L95
            boolean r9 = r8 instanceof java.net.Inet6Address     // Catch: java.net.SocketException -> L95
            if (r9 == 0) goto L62
            java.lang.String r6 = r8.getHostAddress()     // Catch: java.net.SocketException -> L95
            goto L43
        L93:
            r4 = r6
            goto L9c
        L95:
            r3 = move-exception
            r4 = r6
            goto L99
        L98:
            r3 = move-exception
        L99:
            r3.printStackTrace()
        L9c:
            java.lang.String r3 = "EcWifiManager getIpAddressFromNetInterface hostIp = "
            e.a.c.a.a.w(r3, r4)
        La1:
            if (r4 == 0) goto La4
            r0 = 1
        La4:
            java.lang.String r3 = "EcWifiManager isWifiConnect ipAddress = "
            java.lang.String r4 = " , isWifiEnabled = "
            java.lang.StringBuilder r3 = e.a.c.a.a.p(r3, r0, r4)
            android.net.wifi.WifiManager r4 = r11.i
            boolean r4 = r4.isWifiEnabled()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            e.e.a.g.a(r3)
            android.net.wifi.WifiManager r3 = r11.i
            boolean r3 = r3.isWifiEnabled()
            if (r3 == 0) goto Lc7
            if (r0 == 0) goto Lc7
            return r2
        Lc7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.framework.sdkservice.EcWifiManager.e():boolean");
    }

    public /* synthetic */ void f(android.net.wifi.p2p.WifiP2pGroup wifiP2pGroup) {
        e.e.a.g.a("EcWifiManager requestGroupInfo group = " + wifiP2pGroup);
        if (wifiP2pGroup != null) {
            this.h.removeGroup(this.j, new f.a.i.i.t(this));
        }
    }

    public void g(net.easyconn.framework.sdkservice.EasyConnectService.d dVar) {
        this.z = dVar;
        if (dVar == null || this.y) {
            return;
        }
        this.y = true;
        if (this.x == null) {
            android.content.IntentFilter intentFilter = new android.content.IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            if (f.a.i.m.g.s(this.a)) {
                intentFilter.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
                intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
                intentFilter.addAction("android.net.wifi.p2p.STATE_CHANGED");
                intentFilter.addAction("android.net.wifi.p2p.DISCOVERY_STATE_CHANGE");
                intentFilter.addAction("android.net.wifi.p2p.PEERS_CHANGED");
            }
            net.easyconn.framework.sdkservice.EcWifiManager.c cVar = new net.easyconn.framework.sdkservice.EcWifiManager.c(null);
            this.x = cVar;
            this.a.registerReceiver(cVar, intentFilter);
            e.e.a.g.a("register wifiStatusBroadCastReceiver");
        }
    }

    public void h() {
        if (f.a.i.m.g.s(this.a)) {
            if (this.i == null) {
                e.e.a.g.a("startP2pSearch() wifiManager is null, return");
                return;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("startP2pSearch() step1, isWifiEnabled:");
            sbO.append(this.i.isWifiEnabled());
            sbO.append(" mWifiP2pSearching is ");
            sbO.append(this.k);
            sbO.append("; ecSdkManager.isTransportOpen() is ");
            sbO.append(this.f3182g.T);
            sbO.append(", isForceStopped = ");
            e.a.c.a.a.C(sbO, this.q);
            if (this.h == null || !this.i.isWifiEnabled() || this.k || this.f3182g.T || this.q) {
                return;
            }
            e.e.a.g.a("startP2pSearch() step2");
            this.h.discoverPeers(this.j, new f.a.i.i.u(this));
        }
    }
}
