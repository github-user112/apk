package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECAirplay {
    public static final java.lang.String TAG = "ecsdk:ECAirplay";
    public static final net.easyconn.ecsdk.ECAirplay mInstance = new net.easyconn.ecsdk.ECAirplay();
    public java.net.InetAddress S_ADDR_ANY;
    public int mHeight;
    public java.lang.String mMirrorName;
    public java.util.Timer mRepublishTimer;
    public int mWidth;
    public boolean mIsInitialize = false;
    public boolean misPublish = false;
    public int mRoapPort = 47000;
    public int mAirPlayPort = com.google.android.exoplayer2.audio.AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND;
    public java.util.ArrayList<javax.jmdns.ServiceInfo> mServiceInfos = new java.util.ArrayList<>();
    public java.util.ArrayList<javax.jmdns.JmDNS> mJmdnsMap = new java.util.ArrayList<>();
    public android.content.Context mContext = null;
    public android.net.wifi.WifiManager.MulticastLock mLock = null;

    public class a {
        public boolean a;
        public java.net.InetAddress b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f3147c;

        public a() {
        }
    }

    private java.lang.String getHardAddress(java.net.NetworkInterface networkInterface) throws java.net.SocketException {
        java.lang.String macAddress = "";
        try {
            byte[] hardwareAddress = networkInterface.getHardwareAddress();
            if (hardwareAddress == 0) {
                android.util.Log.d(TAG, "publishMdns filter  not found valid hardwareAddress");
                android.util.Log.d(TAG, "getHardAddress: ");
                macAddress = ((android.net.wifi.WifiManager) this.mContext.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
                if (macAddress != null && macAddress.length() != 0) {
                    return macAddress;
                }
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("publishMdns filter ipV4");
                sb.append(networkInterface.getDisplayName());
                sb.append(" wifiManager not found valid hardwareAddress.macAddr=");
                sb.append(macAddress);
                android.util.Log.d(TAG, sb.toString() == null ? "null" : macAddress);
                return macAddress;
            }
            int i = 0;
            java.lang.String string = "";
            while (i < hardwareAddress.length) {
                try {
                    java.lang.String hexString = java.lang.Integer.toHexString(hardwareAddress[i] >= 0 ? hardwareAddress[i] : hardwareAddress[i] + 256);
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    sb2.append(string);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    sb2.append(hexString);
                    sb2.append(i < hardwareAddress.length - 1 ? ":" : "");
                    string = sb2.toString();
                    i++;
                } catch (java.lang.Exception e2) {
                    e = e2;
                    macAddress = string;
                    e.printStackTrace();
                    return macAddress;
                }
            }
            return string;
        } catch (java.lang.Exception e3) {
            e = e3;
        }
    }

    public static net.easyconn.ecsdk.ECAirplay getInstance() {
        return mInstance;
    }

    private boolean isPortOpen(int i) throws java.io.IOException {
        try {
            java.net.Socket socket = new java.net.Socket();
            if (this.S_ADDR_ANY == null) {
                this.S_ADDR_ANY = java.net.InetAddress.getByName("0.0.0.0");
            }
            socket.connect(new java.net.InetSocketAddress(this.S_ADDR_ANY, i), 100);
            socket.close();
            return true;
        } catch (java.net.ConnectException unused) {
            return false;
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean isValidIpAddress(java.lang.String str) {
        return (str == null || str.isEmpty() || str.equals("0.0.0.0") || str.equals("127.0.0.1") || !str.matches("^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$")) ? false : true;
    }

    public static boolean isValidIpv6Address(java.lang.String str) {
        if (str != null && !str.isEmpty() && !str.equals("0.0.0.0") && !str.equals("127.0.0.1") && !str.equals("::1") && !str.equals("0:0:0:0:0:0:0:1")) {
            if (str.matches("(^((([0-9A-Fa-f]{1,4}:){7}(([0-9A-Fa-f]{1,4}){1}|:))|(([0-9A-Fa-f]{1,4}:){6}((:[0-9A-Fa-f]{1,4}){1}|((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(([0-9A-Fa-f]{1,4}:){5}((:[0-9A-Fa-f]{1,4}){1,2}|:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(([0-9A-Fa-f]{1,4}:){4}((:[0-9A-Fa-f]{1,4}){1,3}|:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(([0-9A-Fa-f]{1,4}:){3}((:[0-9A-Fa-f]{1,4}){1,4}|:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(([0-9A-Fa-f]{1,4}:){2}((:[0-9A-Fa-f]{1,4}){1,5}|:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(([0-9A-Fa-f]{1,4}:){1}((:[0-9A-Fa-f]{1,4}){1,6}|:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:))|(:((:[0-9A-Fa-f]{1,4}){1,7}|(:[fF]{4}){0,1}:((22[0-3]|2[0-1][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})([.](25[0-5]|2[0-4][0-9]|[0-1][0-9][0-9]|([0-9]){1,2})){3})|:)))$)")) {
                return true;
            }
            android.util.Log.d(TAG, "publishMdns filter isValidIpv6Address: ip[" + str + "] is invalid!!");
        }
        return false;
    }

    private native int native_initialize(net.easyconn.ecsdk.IECAirplayCallback iECAirplayCallback);

    private native void native_pauseMirror();

    private native void native_resumeMirror();

    private native int native_startAirplay(java.lang.String str, int i, int i2);

    private native void native_stopAirplay();

    private void publishAirplayOnIp(net.easyconn.ecsdk.ECAirplay.a aVar, java.lang.String str) {
        try {
            if (this.mLock == null) {
                android.net.wifi.WifiManager.MulticastLock multicastLockCreateMulticastLock = ((android.net.wifi.WifiManager) this.mContext.getApplicationContext().getSystemService("wifi")).createMulticastLock(getClass().getSimpleName());
                this.mLock = multicastLockCreateMulticastLock;
                multicastLockCreateMulticastLock.setReferenceCounted(false);
                android.net.wifi.WifiManager.MulticastLock multicastLock = this.mLock;
                if (multicastLock != null) {
                    multicastLock.acquire();
                }
            }
            javax.jmdns.JmDNS jmDNSCreate = javax.jmdns.JmDNS.create(aVar.b, aVar.f3147c + "-jmdns");
            android.util.Log.d(TAG, "publishMdns, mRoapPort=" + this.mRoapPort + " mAirPlayPort=" + this.mAirPlayPort + " address=" + aVar.b.getHostAddress() + " macAddress=" + aVar.f3147c);
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            linkedHashMap.put("ch", "2");
            linkedHashMap.put("cn", "0,1,2,3");
            linkedHashMap.put("da", "true");
            linkedHashMap.put("et", "0,3,5");
            linkedHashMap.put("vv", "2");
            linkedHashMap.put("ft", "0x5A7FFFF0,0x1E");
            linkedHashMap.put("am", "AppleTV3,2");
            linkedHashMap.put("md", "0,1,2");
            linkedHashMap.put("rhd", "2.0.0.3");
            linkedHashMap.put("pw", "false");
            linkedHashMap.put("sr", "44100");
            linkedHashMap.put(com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_SS, "16");
            linkedHashMap.put("sv", "false");
            linkedHashMap.put("tp", "UDP");
            linkedHashMap.put("txtvers", "1");
            linkedHashMap.put("sf", "44");
            linkedHashMap.put("vn", "65537");
            linkedHashMap.put("vs", "220.68");
            linkedHashMap.put("pk", "99FD4299889422515FBD27949E4E1E21B2AF50A454499E3D4BE75A4E0F55FE63");
            javax.jmdns.ServiceInfo serviceInfoCreate = javax.jmdns.ServiceInfo.create("_raop._tcp.local.", aVar.f3147c.replace(":", "") + "@" + str, "", this.mRoapPort, 0, 0, true, (java.util.Map<java.lang.String, ?>) linkedHashMap);
            this.mServiceInfos.add(serviceInfoCreate);
            java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
            linkedHashMap2.put("deviceid", aVar.f3147c);
            linkedHashMap2.put("features", "0x5A7FFFF0,0x1E");
            linkedHashMap2.put("srcvers", "220.68");
            linkedHashMap2.put("flags", "0x44");
            linkedHashMap2.put("vv", "2");
            linkedHashMap2.put("model", "AppleTV3,2");
            linkedHashMap2.put("pw", "false");
            linkedHashMap.put("rhd", "2.0.0.3");
            linkedHashMap.put("pi", "b08f5a79-db29-4384-b456-a4784d9e6055");
            linkedHashMap.put("pk", "99FD4299889422515FBD27949E4E1E21B2AF50A454499E3D4BE75A4E0F55FE63");
            javax.jmdns.ServiceInfo serviceInfoCreate2 = javax.jmdns.ServiceInfo.create("_airplay._tcp.local.", str, "", this.mAirPlayPort, 0, 1, true, (java.util.Map<java.lang.String, ?>) linkedHashMap2);
            this.mServiceInfos.add(serviceInfoCreate2);
            jmDNSCreate.registerService(serviceInfoCreate);
            jmDNSCreate.registerService(serviceInfoCreate2);
            this.mJmdnsMap.add(jmDNSCreate);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    private void publishIP(java.net.NetworkInterface networkInterface, java.net.InetAddress inetAddress, java.lang.String str) throws java.net.SocketException {
        java.lang.Object obj;
        java.lang.String str2;
        java.lang.String str3;
        java.lang.String str4;
        java.lang.String str5;
        java.lang.String macAddress;
        java.lang.String str6 = "220.68";
        java.lang.String str7 = "pw";
        try {
            byte[] hardwareAddress = networkInterface.getHardwareAddress();
            if (hardwareAddress == 0) {
                android.util.Log.d(TAG, "publishMdns filter  not found valid hardwareAddress");
                macAddress = ((android.net.wifi.WifiManager) this.mContext.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
                if (macAddress != null && macAddress.length() != 0) {
                    obj = "pk";
                    str4 = "220.68";
                    str5 = "pw";
                    str2 = ":";
                    str3 = "";
                }
                if (("publishMdns filter ipV4" + networkInterface.getDisplayName() + " wifiManager not found valid hardwareAddress.macAddr=" + macAddress) == null) {
                    macAddress = "null";
                }
                android.util.Log.d(TAG, macAddress);
                return;
            }
            obj = "pk";
            str2 = ":";
            java.lang.String string = "";
            str3 = string;
            int i = 0;
            while (i < hardwareAddress.length) {
                java.lang.String hexString = java.lang.Integer.toHexString(hardwareAddress[i] >= 0 ? hardwareAddress[i] : hardwareAddress[i] + 256);
                java.lang.String str8 = str6;
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(string);
                java.lang.String str9 = str7;
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
                sb.append(i < hardwareAddress.length - 1 ? str2 : str3);
                string = sb.toString();
                i++;
                str6 = str8;
                str7 = str9;
            }
            str4 = str6;
            str5 = str7;
            macAddress = string;
            if (this.mLock == null) {
                android.net.wifi.WifiManager.MulticastLock multicastLockCreateMulticastLock = ((android.net.wifi.WifiManager) this.mContext.getApplicationContext().getSystemService("wifi")).createMulticastLock(getClass().getSimpleName());
                this.mLock = multicastLockCreateMulticastLock;
                multicastLockCreateMulticastLock.setReferenceCounted(false);
                android.net.wifi.WifiManager.MulticastLock multicastLock = this.mLock;
                if (multicastLock != null) {
                    multicastLock.acquire();
                }
            }
            javax.jmdns.JmDNS jmDNSCreate = javax.jmdns.JmDNS.create(inetAddress, macAddress + "-jmdns");
            android.util.Log.d(TAG, "publishMdns, mRoapPort=" + this.mRoapPort + " mAirPlayPort=" + this.mAirPlayPort + " address=" + inetAddress.getHostAddress() + " macAddress=" + macAddress);
            java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
            linkedHashMap.put("ch", "2");
            linkedHashMap.put("cn", "0,1,2,3");
            linkedHashMap.put("da", "true");
            linkedHashMap.put("et", "0,3,5");
            linkedHashMap.put("vv", "2");
            linkedHashMap.put("ft", "0x5A7FFFF0,0x1E");
            linkedHashMap.put("am", "AppleTV3,2");
            linkedHashMap.put("md", "0,1,2");
            linkedHashMap.put("rhd", "2.0.0.3");
            java.lang.String str10 = str5;
            linkedHashMap.put(str10, "false");
            linkedHashMap.put("sr", "44100");
            linkedHashMap.put(com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_SS, "16");
            linkedHashMap.put("sv", "false");
            linkedHashMap.put("tp", "UDP");
            linkedHashMap.put("txtvers", "1");
            linkedHashMap.put("sf", "44");
            linkedHashMap.put("vn", "65537");
            java.lang.String str11 = str4;
            linkedHashMap.put("vs", str11);
            java.lang.Object obj2 = obj;
            linkedHashMap.put(obj2, "99FD4299889422515FBD27949E4E1E21B2AF50A454499E3D4BE75A4E0F55FE63");
            javax.jmdns.ServiceInfo serviceInfoCreate = javax.jmdns.ServiceInfo.create("_raop._tcp.local.", macAddress.replace(str2, str3) + "@" + str, "", this.mRoapPort, 0, 0, true, (java.util.Map<java.lang.String, ?>) linkedHashMap);
            this.mServiceInfos.add(serviceInfoCreate);
            java.util.LinkedHashMap linkedHashMap2 = new java.util.LinkedHashMap();
            linkedHashMap2.put("deviceid", macAddress);
            linkedHashMap2.put("features", "0x5A7FFFF0,0x1E");
            linkedHashMap2.put("srcvers", str11);
            linkedHashMap2.put("flags", "0x44");
            linkedHashMap2.put("vv", "2");
            linkedHashMap2.put("model", "AppleTV3,2");
            linkedHashMap2.put(str10, "false");
            linkedHashMap.put("rhd", "2.0.0.3");
            linkedHashMap.put("pi", "b08f5a79-db29-4384-b456-a4784d9e6055");
            linkedHashMap.put(obj2, "99FD4299889422515FBD27949E4E1E21B2AF50A454499E3D4BE75A4E0F55FE63");
            javax.jmdns.ServiceInfo serviceInfoCreate2 = javax.jmdns.ServiceInfo.create("_airplay._tcp.local.", str, "", this.mAirPlayPort, 0, 1, true, (java.util.Map<java.lang.String, ?>) linkedHashMap2);
            this.mServiceInfos.add(serviceInfoCreate2);
            jmDNSCreate.registerService(serviceInfoCreate);
            jmDNSCreate.registerService(serviceInfoCreate2);
            this.mJmdnsMap.add(jmDNSCreate);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    private void publishmDNS(java.net.NetworkInterface networkInterface, java.lang.String str) {
        try {
            synchronized (javax.jmdns.JmDNS.class) {
                java.net.InetAddress inetAddress = null;
                java.util.ArrayList arrayList = new java.util.ArrayList();
                int size = networkInterface.getInterfaceAddresses().size();
                android.util.Log.d(TAG, "publishMdns filter " + networkInterface.getDisplayName() + " address,size=" + size);
                if (size <= 0) {
                    android.util.Log.d(TAG, "publishMdns filter " + networkInterface.getDisplayName() + " not found valid address");
                    return;
                }
                java.util.Enumeration<java.net.InetAddress> inetAddresses = networkInterface.getInetAddresses();
                while (true) {
                    if (!inetAddresses.hasMoreElements()) {
                        break;
                    }
                    java.net.InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    android.util.Log.d(TAG, networkInterface.getDisplayName() + ":" + inetAddressNextElement.getHostAddress());
                    if (isValidIpAddress(inetAddressNextElement.getHostAddress())) {
                        android.util.Log.d(TAG, "publishMdns discovery NetworkInterface/InetAddress: " + inetAddressNextElement);
                        inetAddress = inetAddressNextElement;
                        break;
                    }
                    if (isValidIpv6Address(inetAddressNextElement.getHostAddress())) {
                        android.util.Log.d(TAG, "publishMdns discovery ipv6 NetworkInterface/InetAddress: " + inetAddressNextElement);
                        arrayList.add(inetAddressNextElement);
                    }
                }
                publishIP(networkInterface, inetAddress, str);
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public int initialize(android.content.Context context, net.easyconn.ecsdk.IECAirplayCallback iECAirplayCallback, java.lang.String str, int i, int i2) {
        synchronized (mInstance) {
            if (context != null && iECAirplayCallback != null && str != null) {
                if (!str.isEmpty()) {
                    if (this.mIsInitialize) {
                        android.util.Log.e(TAG, "initialize:  already initialized");
                        return -1;
                    }
                    this.mContext = context;
                    this.mMirrorName = str;
                    this.mWidth = i;
                    this.mHeight = i2;
                    this.mIsInitialize = true;
                    return native_initialize(iECAirplayCallback);
                }
            }
            android.util.Log.w(TAG, "initialize: invalid parameters");
            return -2;
        }
    }

    public void pauseMirror() {
        synchronized (mInstance) {
            native_pauseMirror();
        }
    }

    public int publishAirplayService() {
        android.util.Log.d(TAG, "openService: begin");
        synchronized (mInstance) {
            if (!this.mIsInitialize) {
                android.util.Log.e(TAG, "ECAirplay: publishAirplayService is not  initialized");
                return -1;
            }
            if (this.misPublish) {
                android.util.Log.e(TAG, "ECAirplay: publishAirplayService Service is running");
                return -1;
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            android.util.Log.d(TAG, "begin to publishMdns");
            publishMdns();
            long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
            this.misPublish = true;
            android.util.Log.d(TAG, "finish to publishMdns, time=" + (jCurrentTimeMillis2 - jCurrentTimeMillis) + "ms");
            android.util.Log.d(TAG, "openService: end");
            return 0;
        }
    }

    public void publishMdns() throws java.net.SocketException {
        java.lang.StringBuilder sb;
        java.lang.StringBuilder sb2;
        android.util.Log.d(TAG, "publishMdns jmdns_version=3.4.1");
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            android.util.Log.d(TAG, "publishMdns begin filter address.");
            java.util.Enumeration<java.net.NetworkInterface> networkInterfaces = java.net.NetworkInterface.getNetworkInterfaces();
            boolean z = false;
            while (networkInterfaces.hasMoreElements()) {
                java.net.NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                java.util.Enumeration<java.net.InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    java.net.InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    android.util.Log.d(TAG, "publishMdns: deal with interface[" + networkInterfaceNextElement.getDisplayName() + "],ip[" + inetAddressNextElement.getHostAddress() + "]");
                    if (isValidIpAddress(inetAddressNextElement.getHostAddress())) {
                        java.lang.String hardAddress = getHardAddress(networkInterfaceNextElement);
                        if ("" != hardAddress && hardAddress != null && hardAddress.length() != 0) {
                            net.easyconn.ecsdk.ECAirplay.a aVar = new net.easyconn.ecsdk.ECAirplay.a();
                            aVar.a = true;
                            aVar.b = inetAddressNextElement;
                            aVar.f3147c = hardAddress;
                            arrayList.add(aVar);
                            z = true;
                        }
                        sb2 = new java.lang.StringBuilder();
                        sb2.append("publishMdns filter ipV4[");
                        sb2.append(networkInterfaceNextElement.getDisplayName());
                        sb2.append("],[");
                        sb2.append(inetAddressNextElement.getHostAddress());
                        sb2.append("] not found valid hardwareAddress.");
                        android.util.Log.d(TAG, sb2.toString());
                    } else if (isValidIpv6Address(inetAddressNextElement.getHostAddress())) {
                        java.lang.String hardAddress2 = getHardAddress(networkInterfaceNextElement);
                        if ("" != hardAddress2 && hardAddress2 != null && hardAddress2.length() != 0) {
                            net.easyconn.ecsdk.ECAirplay.a aVar2 = new net.easyconn.ecsdk.ECAirplay.a();
                            aVar2.a = false;
                            aVar2.b = inetAddressNextElement;
                            aVar2.f3147c = hardAddress2;
                            arrayList.add(aVar2);
                        }
                        sb2 = new java.lang.StringBuilder();
                        sb2.append("publishMdns filter ipV6[");
                        sb2.append(networkInterfaceNextElement.getDisplayName());
                        sb2.append("],[");
                        sb2.append(inetAddressNextElement.getHostAddress());
                        sb2.append("] not found valid hardwareAddress.");
                        android.util.Log.d(TAG, sb2.toString());
                    }
                }
            }
            android.util.Log.d(TAG, "publishMdns end filter address. get [" + arrayList.size() + "] ip");
            java.util.Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                net.easyconn.ecsdk.ECAirplay.a aVar3 = (net.easyconn.ecsdk.ECAirplay.a) it.next();
                if (z && aVar3.a) {
                    android.util.Log.d(TAG, "publishMdns publish on ipv4[" + aVar3.b.getHostAddress() + "],macAddr[" + aVar3.f3147c + "]");
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    publishAirplayOnIp(aVar3, this.mMirrorName);
                    long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                    sb = new java.lang.StringBuilder();
                    sb.append("finish to publishMdns on ");
                    sb.append(aVar3.b.getHostAddress());
                    sb.append(", time=");
                    sb.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
                    sb.append("ms");
                } else if (!z && !aVar3.a) {
                    android.util.Log.d(TAG, "publishMdns publish on ipv6[" + aVar3.b.getHostAddress() + "],macAddr[" + aVar3.f3147c + "]");
                    long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
                    publishAirplayOnIp(aVar3, this.mMirrorName);
                    long jCurrentTimeMillis4 = java.lang.System.currentTimeMillis();
                    sb = new java.lang.StringBuilder();
                    sb.append("finish to publishMdns on ");
                    sb.append(aVar3.b.getHostAddress());
                    sb.append(", time=");
                    sb.append(jCurrentTimeMillis4 - jCurrentTimeMillis3);
                    sb.append("ms");
                }
                android.util.Log.d(TAG, sb.toString());
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public void release() {
        synchronized (mInstance) {
            if (this.mIsInitialize) {
                stopPublishAirplayService();
                stopAirplay();
                this.mIsInitialize = false;
            }
        }
    }

    public void resumeMirror() {
        synchronized (mInstance) {
            native_resumeMirror();
        }
    }

    public int startAirplay() {
        android.util.Log.d(TAG, "startAirplay: begin");
        synchronized (mInstance) {
            if (!this.mIsInitialize) {
                android.util.Log.e(TAG, "ECAirplay: is not  initialized");
                return -1;
            }
            int iNative_startAirplay = native_startAirplay(this.mMirrorName, this.mWidth, this.mHeight);
            android.util.Log.d(TAG, "startAirplay: end");
            return iNative_startAirplay;
        }
    }

    public void stopAirplay() {
        android.util.Log.d(TAG, "stopAirplay: begin");
        synchronized (mInstance) {
            if (!this.mIsInitialize) {
                android.util.Log.e(TAG, "ECAirplay: is not  initialized");
            } else {
                native_stopAirplay();
                android.util.Log.d(TAG, "stopAirplay: end");
            }
        }
    }

    public void stopPublishAirplayService() {
        android.util.Log.d(TAG, "closeService: begin");
        synchronized (mInstance) {
            if (!this.mIsInitialize) {
                android.util.Log.w(TAG, "ECAirplay: is not  initialized");
            }
            try {
                synchronized (javax.jmdns.JmDNS.class) {
                    android.net.wifi.WifiManager.MulticastLock multicastLock = this.mLock;
                    if (multicastLock != null) {
                        multicastLock.release();
                        this.mLock = null;
                    }
                    java.util.Iterator<javax.jmdns.JmDNS> it = this.mJmdnsMap.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().close();
                        } catch (java.io.IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    this.mJmdnsMap.clear();
                    this.mServiceInfos.clear();
                }
            } catch (java.lang.Exception e3) {
                android.util.Log.e(TAG, "closeService error");
                e3.printStackTrace();
            }
            this.misPublish = false;
        }
        android.util.Log.d(TAG, "closeService: end");
    }
}
