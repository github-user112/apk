package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class WifiManager {

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f3152d;
    public boolean j;
    public java.lang.Thread a = null;
    public volatile boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f3151c = false;

    /* renamed from: e, reason: collision with root package name */
    public android.net.wifi.WifiManager.MulticastLock f3153e = null;

    /* renamed from: f, reason: collision with root package name */
    public javax.jmdns.ServiceListener f3154f = null;

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<javax.jmdns.ServiceInfo> f3155g = new java.util.ArrayList<>();
    public java.util.HashMap<java.lang.String, javax.jmdns.JmDNS> h = new java.util.HashMap<>();
    public java.util.Map<java.lang.String, java.lang.String> i = new java.util.HashMap();
    public java.util.List<java.lang.String> k = new java.util.ArrayList();
    public boolean l = false;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.net.SocketException, org.json.JSONException, java.lang.InterruptedException {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            android.util.Log.d("ecsdk", "begin to publishMdns");
            net.easyconn.ecsdk.WifiManager.this.d();
            net.easyconn.ecsdk.WifiManager.this.f3151c = false;
            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("finish to publishMdns, time=");
            sbO.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
            sbO.append("ms");
            android.util.Log.d("ecsdk", sbO.toString());
        }
    }

    public class b implements javax.jmdns.ServiceListener {
        public b() {
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceAdded(javax.jmdns.ServiceEvent serviceEvent) {
            android.util.Log.d("ecsdk", "publishMdns: serviceAdded");
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceRemoved(javax.jmdns.ServiceEvent serviceEvent) {
            android.util.Log.d("ecsdk", "publishMdns: serviceRemoved");
        }

        @Override // javax.jmdns.ServiceListener
        public void serviceResolved(javax.jmdns.ServiceEvent serviceEvent) {
            android.util.Log.d("ecsdk", "publishMdns: serviceResolved");
        }
    }

    @java.lang.Deprecated
    public WifiManager(android.content.Context context, boolean z) {
        this.j = true;
        this.f3152d = context;
        this.j = z;
        javax.jmdns.JmDNS.setUseDefaultMdnsPort(z);
    }

    private java.lang.String a(java.lang.String str) {
        if (str != null && !str.isEmpty()) {
            try {
                java.lang.String str2 = "";
                for (byte b2 : java.security.MessageDigest.getInstance("MD5").digest(str.getBytes())) {
                    java.lang.String hexString = java.lang.Integer.toHexString(b2 & 255);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    str2 = str2 + hexString;
                }
                return str2;
            } catch (java.security.NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
        }
        return "";
    }

    private javax.jmdns.JmDNS a(java.net.InetAddress inetAddress, int i) {
        javax.jmdns.JmDNS jmDNSCreate = null;
        try {
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        synchronized (javax.jmdns.JmDNS.class) {
            android.util.Log.d("ecsdk", "publishMdns, port=" + i);
            if (!this.j) {
                android.util.Log.d("ecsdk", "publishMdns: donn't use default mdns port");
            }
            android.util.Log.d("ecsdk", "publishMdns Addr : " + inetAddress.getHostAddress());
            if (i <= 0) {
                return null;
            }
            if (this.f3153e == null) {
                android.net.wifi.WifiManager.MulticastLock multicastLockCreateMulticastLock = ((android.net.wifi.WifiManager) this.f3152d.getApplicationContext().getSystemService("wifi")).createMulticastLock(getClass().getSimpleName());
                this.f3153e = multicastLockCreateMulticastLock;
                multicastLockCreateMulticastLock.setReferenceCounted(false);
                android.net.wifi.WifiManager.MulticastLock multicastLock = this.f3153e;
                if (multicastLock != null) {
                    multicastLock.acquire();
                }
            }
            jmDNSCreate = javax.jmdns.JmDNS.create(inetAddress, inetAddress.getHostAddress());
            if (this.f3154f == null) {
                this.f3154f = new net.easyconn.ecsdk.WifiManager.b();
            }
            jmDNSCreate.addServiceListener("_EasyConn._tcp.local.", this.f3154f);
            javax.jmdns.ServiceInfo serviceInfoCreate = javax.jmdns.ServiceInfo.create("_EasyConn._tcp.local.", "EasyConn", i, "Wifi Discovery Service for EC");
            serviceInfoCreate.setText(a(this.i, inetAddress.getHostAddress()));
            this.f3155g.add(serviceInfoCreate);
            jmDNSCreate.registerService(serviceInfoCreate);
            android.util.Log.d("ecsdk", "Service Registration thread complete");
            return jmDNSCreate;
        }
    }

    public static void a(int i) {
        javax.jmdns.JmDNSLogger.getJmDNSLogger();
        javax.jmdns.JmDNSLogger.setLevel(i < net.easyconn.ecsdk.ECTypes.ECLogLevel.EC_LOG_LEVEL_WARN.getValue() ? java.util.logging.Level.FINE : java.util.logging.Level.OFF);
    }

    public static void a(boolean z) {
        javax.jmdns.JmDNSLogger.getJmDNSLogger();
        javax.jmdns.JmDNSLogger.setLogStatus(z);
    }

    private boolean b(java.lang.String str) {
        return (str == null || str.isEmpty() || str.equals("0.0.0.0") || !str.matches("^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$")) ? false : true;
    }

    public int a(java.lang.String str, boolean z) {
        if (str == null || str.equals("") || str.isEmpty()) {
            android.util.Log.w("ecsdk", "openWifiService interface invalid");
        }
        this.l = z;
        java.lang.String[] strArrSplit = str.split("\\;");
        if (strArrSplit.length > 0) {
            this.k.clear();
            android.util.Log.d("ecsdk", "openWifiService on interface=" + str + ",force=" + z);
        }
        for (java.lang.String str2 : strArrSplit) {
            this.k.add(str2);
        }
        return c();
    }

    public java.util.Map a(java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str) throws org.json.JSONException {
        try {
            java.lang.String upperCase = ("EC_MIRROR_" + android.provider.Settings.Secure.getString(this.f3152d.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a).substring(0, 4)).toUpperCase();
            java.lang.String strNative_getLocalServiceInfo = net.easyconn.ecsdk.ECSDK.getInstance().native_getLocalServiceInfo();
            map.put("ec_name", upperCase);
            org.json.JSONObject jSONObject = new org.json.JSONObject(strNative_getLocalServiceInfo);
            java.lang.String string = jSONObject.getString("huid");
            java.lang.String string2 = jSONObject.getString("huname");
            java.lang.String string3 = jSONObject.getString("flavor");
            java.lang.String string4 = jSONObject.getString("channel");
            java.lang.String string5 = jSONObject.getString("packagename");
            java.lang.String string6 = jSONObject.getString("port");
            android.util.Log.d("ecsdk", "setLocalServiceInfo port=" + string6);
            map.put("huid", a(string));
            map.put("huname", string2);
            map.put("flavor", string3);
            map.put("channel", string4);
            map.put("packagename", string5);
            map.put("port", string6);
            if (str != null && !str.isEmpty()) {
                map.put("ip", str);
            }
            android.util.Log.d("ecsdk", "setLocalServiceInfo map=" + map.toString());
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        return map;
    }

    public void a() {
        synchronized (this) {
            android.util.Log.d("ecsdk", "closeWifiService: begin tid=" + android.os.Process.myTid());
            this.b = true;
            try {
                java.lang.Thread thread = this.a;
                if (thread != null) {
                    thread.join();
                    this.a = null;
                }
                this.f3151c = false;
                synchronized (javax.jmdns.JmDNS.class) {
                    android.net.wifi.WifiManager.MulticastLock multicastLock = this.f3153e;
                    if (multicastLock != null) {
                        multicastLock.release();
                        this.f3153e = null;
                    }
                    for (java.util.Map.Entry<java.lang.String, javax.jmdns.JmDNS> entry : this.h.entrySet()) {
                        entry.getValue().removeServiceListener("_EasyConn._tcp.local.", this.f3154f);
                        entry.getValue().close();
                    }
                    this.h.clear();
                    this.f3155g.clear();
                }
            } catch (java.lang.Exception e2) {
                android.util.Log.d("ecsdk", "closeWifiService: error");
                e2.printStackTrace();
            }
            android.util.Log.d("ecsdk", "closeWifiService: end");
        }
    }

    public int b() {
        this.k.clear();
        this.l = false;
        return c();
    }

    public int c() {
        synchronized (this) {
            android.util.Log.d("ecsdk", "openWifiService: begin tid=" + android.os.Process.myTid());
            this.b = false;
            if (this.f3151c) {
                android.util.Log.d("ecsdk", "publishMdns is running");
            } else {
                this.f3151c = true;
                java.lang.Thread thread = new java.lang.Thread(new net.easyconn.ecsdk.WifiManager.a());
                this.a = thread;
                thread.start();
            }
        }
        return 0;
    }

    public void d() throws java.net.SocketException, org.json.JSONException, java.lang.InterruptedException {
        int i;
        java.lang.String str;
        android.util.Log.d("ecsdk", "publishMdns jmdns_version=3.4.1");
        java.net.InetAddress[] inetAddresses = null;
        while (true) {
            if (this.b) {
                break;
            }
            android.util.Log.d("ecsdk", "NetworkTopologyDiscovery get net address");
            inetAddresses = javax.jmdns.NetworkTopologyDiscovery.Factory.getInstance().getInetAddresses();
            if (inetAddresses != null && inetAddresses.length > 0) {
                int i2 = 0;
                for (java.net.InetAddress inetAddress : inetAddresses) {
                    if (b(inetAddress.getHostAddress())) {
                        i2++;
                    }
                }
                if (i2 > 0) {
                    break;
                } else {
                    android.util.Log.d("ecsdk", "no valid ip continue to getInetAddresses");
                }
            }
            try {
                java.lang.Thread.sleep(500L);
            } catch (java.lang.InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        if (inetAddresses == null || inetAddresses.length == 0) {
            str = "publishMdns failed,addresses is empty,please keep wifi is connected,and call openWifiService again";
        } else {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            try {
                java.util.Enumeration<java.net.NetworkInterface> networkInterfaces = java.net.NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    java.net.NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    android.util.Log.d("ecsdk", "publishMdns discovery ifname=" + networkInterfaceNextElement.getName() + ",displayName=" + networkInterfaceNextElement.getDisplayName());
                    if (this.k.contains(networkInterfaceNextElement.getDisplayName())) {
                        int size = networkInterfaceNextElement.getInterfaceAddresses().size();
                        android.util.Log.d("ecsdk", "publishMdns filter " + networkInterfaceNextElement.getDisplayName() + " address,size=" + size);
                        java.util.Enumeration<java.net.InetAddress> inetAddresses2 = networkInterfaceNextElement.getInetAddresses();
                        while (inetAddresses2.hasMoreElements()) {
                            java.net.InetAddress inetAddressNextElement = inetAddresses2.nextElement();
                            android.util.Log.d("ecsdk", networkInterfaceNextElement.getDisplayName() + ":" + inetAddressNextElement.getHostAddress());
                            for (java.net.InetAddress inetAddress2 : inetAddresses) {
                                if (inetAddress2.getHostAddress().equals(inetAddressNextElement.getHostAddress())) {
                                    arrayList.add(inetAddressNextElement);
                                }
                            }
                            android.util.Log.d("ecsdk", "publishMdns discovery NetworkInterface/InetAddress: " + networkInterfaceNextElement + " -- " + inetAddressNextElement);
                        }
                        if (size <= 0) {
                            android.util.Log.d("ecsdk", "publishMdns filter " + networkInterfaceNextElement.getDisplayName() + " not found valid address");
                        }
                    }
                }
            } catch (java.net.SocketException e3) {
                android.util.Log.w("ecsdk", "publishMdns Error while fetching network interfaces addresses: " + e3);
            }
            if (arrayList.size() > 0) {
                inetAddresses = new java.net.InetAddress[arrayList.size()];
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    inetAddresses[i3] = (java.net.InetAddress) arrayList.get(i3);
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("publishMdns filter end ,expected interface address:");
                    sbO.append(inetAddresses[i3].getHostAddress());
                    android.util.Log.d("ecsdk", sbO.toString());
                }
            }
            if (arrayList.size() > 0 || !this.l) {
                if (arrayList.size() <= 0) {
                    android.util.Log.d("ecsdk", "publishMdns use default address for mdns");
                }
                for (i = 0; !this.b && i < inetAddresses.length; i++) {
                    java.lang.String hostAddress = inetAddresses[i].getHostAddress();
                    if (b(hostAddress) && !(this.j && this.h.containsKey(hostAddress))) {
                        try {
                            java.lang.String string = new org.json.JSONObject(net.easyconn.ecsdk.ECSDK.getInstance().native_getLocalServiceInfo()).getString("port");
                            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                            javax.jmdns.JmDNS jmDNSA = a(inetAddresses[i], java.lang.Integer.parseInt(string));
                            android.util.Log.d("ecsdk", "finish to publishMdns on " + hostAddress + ", time=" + (java.lang.System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                            if (jmDNSA != null) {
                                this.h.put(hostAddress, jmDNSA);
                            }
                        } catch (java.lang.Exception e4) {
                            e4.printStackTrace();
                        }
                    } else if (this.h.containsKey(hostAddress)) {
                        android.util.Log.d("ecsdk", "repeat to publishMdns on " + hostAddress + " so ignore it");
                    }
                }
                return;
            }
            str = "publishMdns error while not found any valid address on expected interface,please check the interface's value or waiting for the network changed and try to openWifiService again";
        }
        android.util.Log.e("ecsdk", str);
    }

    public void e() {
        try {
            a();
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }
}
