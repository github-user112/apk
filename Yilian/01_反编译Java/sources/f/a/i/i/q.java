package f.a.i.i;

/* loaded from: classes.dex */
public class q implements f.a.i.h.f, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataReceiver {
    public static net.easyconn.ecsdk.ECTypes.ECAppPage a0;
    public static int b0;
    public static boolean c0;
    public f.a.i.p.e A;
    public f.a.i.h.g C;
    public java.util.Map<java.lang.Integer, f.a.i.i.x> D;
    public android.net.wifi.p2p.WifiP2pDevice F;
    public boolean G;
    public final f.a.i.h.i H;
    public boolean I;
    public net.easyconn.ecsdk.ECTypes.ECNetLinkInfo J;
    public f.a.i.h.d K;
    public f.a.i.h.e L;
    public f.a.i.h.c M;
    public volatile boolean O;
    public net.easyconn.netlink.service.NetLinkService R;
    public volatile boolean S;
    public volatile boolean T;
    public int U;
    public volatile boolean V;
    public int W;
    public int X;
    public boolean Y;
    public android.content.Context a;
    public f.a.i.i.m b;

    /* renamed from: c, reason: collision with root package name */
    public final android.net.wifi.WifiManager f2898c;

    /* renamed from: d, reason: collision with root package name */
    public f.a.i.i.n f2899d;

    /* renamed from: e, reason: collision with root package name */
    public android.os.HandlerThread f2900e;

    /* renamed from: f, reason: collision with root package name */
    public android.os.HandlerThread f2901f;

    /* renamed from: g, reason: collision with root package name */
    public android.os.HandlerThread f2902g;
    public android.os.HandlerThread h;
    public f.a.i.i.e i;
    public volatile boolean j;
    public volatile boolean k;
    public volatile boolean l;
    public volatile boolean m;
    public volatile boolean n;
    public int o;
    public java.lang.String p;
    public android.os.Handler q;
    public android.os.Handler r;
    public android.os.Handler s;
    public android.os.Handler t;
    public f.a.i.i.q.c u;
    public android.content.SharedPreferences v;
    public java.lang.String w;
    public java.lang.String x;
    public int y;
    public int z;
    public boolean B = false;
    public f.a.i.i.q.e E = new f.a.i.i.q.e(null);
    public android.hardware.usb.UsbDevice N = null;
    public int P = 0;
    public int Q = 0;
    public boolean Z = false;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((net.easyconn.framework.sdkservice.EasyConnectService) f.a.i.i.q.this.a).i();
        }
    }

    public class b extends android.os.Handler {
        public int a;
        public final net.easyconn.ecsdk.ECCustomProtocol.ECCustomData b;

        /* renamed from: c, reason: collision with root package name */
        public java.time.format.DateTimeFormatter f2903c;

        /* renamed from: d, reason: collision with root package name */
        public long f2904d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2905e;

        public b(android.os.Looper looper) {
            super(looper);
            this.a = 0;
            net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData = new net.easyconn.ecsdk.ECCustomProtocol.ECCustomData();
            this.b = eCCustomData;
            eCCustomData.setCmdType(-2);
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x01a4  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x01b5  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r13) {
            /*
                Method dump skipped, instructions count: 468
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.b.handleMessage(android.os.Message):void");
        }
    }

    public interface c {
    }

    public class d extends android.os.Handler {
        public final java.lang.String a;

        public d(android.os.Looper looper) {
            super(looper);
            this.a = java.lang.String.valueOf(hashCode());
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:241:0x0807
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
            	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
            */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:204:0x0721  */
        /* JADX WARN: Removed duplicated region for block: B:207:0x072e  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x0737  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x0740  */
        /* JADX WARN: Removed duplicated region for block: B:216:0x0749  */
        /* JADX WARN: Removed duplicated region for block: B:217:0x0751  */
        /* JADX WARN: Removed duplicated region for block: B:221:0x0760  */
        /* JADX WARN: Removed duplicated region for block: B:224:0x0772  */
        /* JADX WARN: Removed duplicated region for block: B:225:0x0775  */
        /* JADX WARN: Removed duplicated region for block: B:235:0x07b5  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x07b7  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x0871  */
        /* JADX WARN: Removed duplicated region for block: B:251:0x08ba  */
        /* JADX WARN: Removed duplicated region for block: B:254:0x08c5  */
        /* JADX WARN: Removed duplicated region for block: B:257:0x08e6  */
        /* JADX WARN: Removed duplicated region for block: B:342:0x0780 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r21) {
            /*
                Method dump skipped, instructions count: 3004
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.d.handleMessage(android.os.Message):void");
        }
    }

    public class e extends android.content.BroadcastReceiver {
        public e(f.a.i.i.o oVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            e.a.c.a.a.w("WifiP2pReceiver onReceive: ", action);
            if (f.a.i.i.q.this.G && "android.net.wifi.p2p.THIS_DEVICE_CHANGED".equals(action)) {
                f.a.i.i.q.this.F = (android.net.wifi.p2p.WifiP2pDevice) intent.getParcelableExtra("wifiP2pDevice");
                java.lang.StringBuilder sbO = e.a.c.a.a.o("WifiP2pReceiver wifiP2pDevice = ");
                sbO.append(f.a.i.i.q.this.F);
                e.e.a.g.a(sbO.toString());
                android.net.wifi.p2p.WifiP2pDevice wifiP2pDevice = f.a.i.i.q.this.F;
                if (wifiP2pDevice == null || android.text.TextUtils.isEmpty(wifiP2pDevice.deviceName)) {
                    return;
                }
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("EcSdkManager WifiP2pReceiver wifiP2pDeviceName = ");
                sbO2.append(f.a.i.i.q.this.F.deviceName);
                e.e.a.g.a(sbO2.toString());
                if (android.text.TextUtils.isEmpty(f.a.i.m.g.l(f.a.i.i.q.this.a))) {
                    e.e.a.g.a("EcSdkManager WifiP2pReceiver wifiP2pDeviceName changeCarNavigatorName");
                    net.easyconn.ecsdk.ECSDK.getInstance().changeCarNavigatorName(f.a.i.i.q.this.F.deviceName);
                    f.a.i.i.q qVar = f.a.i.i.q.this;
                    java.lang.String str = qVar.F.deviceName;
                    if (qVar == null) {
                        throw null;
                    }
                    e.a.c.a.a.w("EcSdkManager putDeviceName = ", str);
                    android.content.SharedPreferences.Editor editorEdit = qVar.v.edit();
                    editorEdit.putString("EC_DEVICE_NAME", str);
                    editorEdit.apply();
                }
            }
        }
    }

    static {
        f.a.i.m.c.b(4, false);
        b0 = 0;
        c0 = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0101 A[Catch: IOException -> 0x00fd, PHI: r4 r5
  0x0101: PHI (r4v14 ??) = (r4v11 ??), (r4v12 ??), (r4v15 ??) binds: [B:52:0x00ed, B:61:0x00ff, B:31:0x00c6] A[DONT_GENERATE, DONT_INLINE]
  0x0101: PHI (r5v22 ??) = (r5v19 ??), (r5v20 ??), (r5v28 ??) binds: [B:52:0x00ed, B:61:0x00ff, B:31:0x00c6] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #13 {IOException -> 0x00fd, blocks: (B:31:0x00c6, B:62:0x0101, B:51:0x00ea, B:58:0x00f9), top: B:109:0x00ad }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0115 A[Catch: IOException -> 0x0111, TRY_LEAVE, TryCatch #2 {IOException -> 0x0111, blocks: (B:68:0x010d, B:72:0x0115), top: B:106:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c6  */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q(android.content.Context r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.<init>(android.content.Context):void");
    }

    public static long I() {
        return net.easyconn.ecsdk.ECSDK.getInstance().getVersionCode();
    }

    public static boolean a(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        android.os.Bundle bundle = (android.os.Bundle) message.obj;
        if (bundle == null) {
            return false;
        }
        net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode = (net.easyconn.ecsdk.ECTypes.ECBtnCode) bundle.get("btnCode");
        net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType = (net.easyconn.ecsdk.ECTypes.ECBtnEventType) bundle.get(com.umeng.analytics.pro.c.y);
        net.easyconn.ecsdk.ECSDK.getInstance().sendBtnEvent(eCBtnCode, eCBtnEventType);
        e.e.a.g.a("sendBtnEvent btnCode = " + eCBtnCode + " type = " + eCBtnEventType);
        return true;
    }

    public static boolean b(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().uploadAudioData((byte[]) message.obj, message.arg1);
        return true;
    }

    public static boolean c(f.a.i.i.q qVar) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("onStopPhoneNavigation ");
        net.easyconn.ecsdk.ECSDK.getInstance().stopPhoneNavigation();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(f.a.i.i.q r5, android.os.Message r6) {
        /*
            if (r5 == 0) goto L5f
            java.lang.String r5 = "bindTransportDevice: type="
            java.lang.StringBuilder r5 = e.a.c.a.a.o(r5)
            int r0 = r6.arg1
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            e.e.a.g.a(r5)
            net.easyconn.ecsdk.ECTypes$ECTransportType[] r5 = net.easyconn.ecsdk.ECTypes.ECTransportType.values()
            int r0 = r6.arg1
            r5 = r5[r0]
            int r0 = r6.arg2
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            java.lang.Object r3 = r6.obj
            boolean r4 = r3 instanceof java.lang.String
            if (r4 == 0) goto L3a
            net.easyconn.ecsdk.ECSDK r2 = net.easyconn.ecsdk.ECSDK.getInstance()
            java.lang.Object r6 = r6.obj
            java.lang.String r6 = (java.lang.String) r6
            int r5 = r2.bindTransportDevice(r5, r6, r0)
            if (r5 != 0) goto L5c
            goto L5d
        L3a:
            boolean r0 = r3 instanceof net.easyconn.ecsdk.IUsbDevice
            if (r0 == 0) goto L4d
            net.easyconn.ecsdk.ECSDK r0 = net.easyconn.ecsdk.ECSDK.getInstance()
            java.lang.Object r6 = r6.obj
            net.easyconn.ecsdk.IUsbDevice r6 = (net.easyconn.ecsdk.IUsbDevice) r6
            int r5 = r0.bindTransportDevice(r5, r6)
            if (r5 != 0) goto L5c
            goto L5d
        L4d:
            net.easyconn.ecsdk.ECTypes$ECTransportType r6 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_AIRPLAY
            if (r5 != r6) goto L5e
            net.easyconn.ecsdk.ECSDK r6 = net.easyconn.ecsdk.ECSDK.getInstance()
            int r5 = r6.bindTransportDevice(r5)
            if (r5 != 0) goto L5c
            goto L5d
        L5c:
            r1 = 0
        L5d:
            r2 = r1
        L5e:
            return r2
        L5f:
            r5 = 0
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.d(f.a.i.i.q, android.os.Message):boolean");
    }

    public static boolean e(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("unbindTransportDevice: type=");
        sbO.append(message.obj);
        e.e.a.g.a(sbO.toString());
        net.easyconn.ecsdk.ECSDK.getInstance().unbindTransportDevice((net.easyconn.ecsdk.ECTypes.ECTransportType) message.obj);
        return true;
    }

    public static void f(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage = (net.easyconn.ecsdk.ECTypes.ECAppPage) message.obj;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("openAppPage handler page = ");
        sbO.append(eCAppPage.name());
        e.e.a.g.a(sbO.toString());
        net.easyconn.ecsdk.ECSDK.getInstance().openAppPage(eCAppPage);
    }

    public static void g(f.a.i.i.q qVar, android.os.Message message) {
        int iK = f.a.i.m.g.k(qVar.a);
        java.lang.StringBuilder sbO = e.a.c.a.a.o("openAppPageByChannel handler page = ");
        sbO.append(message.obj);
        sbO.append(" propertyChannel = ");
        sbO.append(iK);
        e.e.a.g.a(sbO.toString());
        net.easyconn.ecsdk.ECSDK.getInstance().openAppPage(((java.lang.Integer) message.obj).intValue(), iK);
    }

    public static void g0(boolean z) {
        c0 = z;
    }

    public static void h(f.a.i.i.q qVar, java.lang.String str) {
        java.lang.String str2;
        if (qVar == null) {
            throw null;
        }
        if (str != null) {
            try {
                e.e.a.g.a("saveAppInfo recv = " + str);
                org.json.JSONObject jSONObject = new org.json.JSONObject(str);
                java.lang.String strOptString = jSONObject.optString("phoneSignal");
                if (android.text.TextUtils.isEmpty(strOptString) || strOptString.indexOf(",") <= 0) {
                    qVar.y = 0;
                    qVar.z = 0;
                    try {
                        jSONObject.optInt("supportFunction");
                    } catch (java.lang.Exception e2) {
                        e2.printStackTrace();
                    }
                    qVar.w = jSONObject.optString("bluetoothName");
                    d.s.y.n = jSONObject.optString("ip");
                    d.s.y.o = jSONObject.optString("phoneAppPackage");
                    d.s.y.p = jSONObject.optString("phoneAppVersionCode");
                    d.s.y.q = jSONObject.optString("phoneModel");
                    d.s.y.r = jSONObject.optString("phoneOs");
                    d.s.y.s = jSONObject.optString("phoneOsVersion");
                    d.s.y.t = jSONObject.optString("phoneBrand");
                    java.lang.String strOptString2 = jSONObject.optString("phoneUuid");
                    qVar.x = strOptString2;
                    d.s.y.u = strOptString2;
                    if (qVar.M != null) {
                        qVar.M.Q(qVar.w, d.s.y.r, d.s.y.s, d.s.y.q, d.s.y.o, d.s.y.n, strOptString2, d.s.y.p, d.s.y.t);
                    }
                    str2 = "saveAppInfo data = " + jSONObject;
                } else {
                    java.lang.String[] strArrSplit = strOptString.split(",");
                    qVar.y = java.lang.Integer.parseInt(strArrSplit[0]);
                    qVar.z = java.lang.Integer.parseInt(strArrSplit[1]);
                    str2 = "saveAppInfo phoneSignal phoneMaxSignal = " + qVar.z + " phoneCurrentSignal = " + qVar.y + ", return";
                }
                e.e.a.g.a(str2);
            } catch (java.lang.Exception e3) {
                e.e.a.g.c(e.a.c.a.a.I(e3, e.a.c.a.a.o("saveAppInfo error:")), new java.lang.Object[0]);
            }
        }
    }

    public static void i(f.a.i.i.q qVar, java.lang.Object[] objArr) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().checkOTAUpdate((java.lang.String) objArr[0], (java.lang.String) objArr[1], (java.lang.String) objArr[2], (net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode) objArr[3]);
    }

    public static void j(f.a.i.i.q qVar, java.lang.String[] strArr, int i) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().startOTAUpdate(strArr, i);
    }

    public static void k(f.a.i.i.q qVar) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().stopOTAUpdate();
        f.a.i.h.g gVar = qVar.C;
        if (gVar != null) {
            gVar.c();
        }
    }

    public static void l(f.a.i.i.q qVar, net.easyconn.ecsdk.ECTypes.ECSystemKeyCode eCSystemKeyCode) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().sendSystemKeyEvent(eCSystemKeyCode);
    }

    public static void m(f.a.i.i.q qVar) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().closeTransport();
    }

    public static void n(f.a.i.i.q qVar) {
        if (qVar == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECTypes.ECTimeInfo eCTimeInfoQueryTime = net.easyconn.ecsdk.ECSDK.getInstance().queryTime();
        android.content.Context context = qVar.a;
        if (context != null) {
            ((net.easyconn.framework.sdkservice.EasyConnectService) context).f3176f.sendPhoneTimeBroadcast(eCTimeInfoQueryTime);
        }
    }

    public static boolean o(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("bindProxyTransportDevice: type=");
        sbO.append(message.arg1);
        e.e.a.g.a(sbO.toString());
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.values()[message.arg1];
        return true;
    }

    public static void p(f.a.i.i.q qVar, java.lang.String str) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("ECSDK.getInstance().sendInputText:" + str);
        net.easyconn.ecsdk.ECSDK.getInstance().sendInputText(str);
    }

    public static void q(f.a.i.i.q qVar, int i, int i2) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("ECSDK.getInstance().sendInputSelection->start:" + i + ",end:" + i2);
        net.easyconn.ecsdk.ECSDK.getInstance().sendInputSelection(i, i2);
    }

    public static void r(f.a.i.i.q qVar, int i, int i2) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("ECSDK.getInstance().sendInputAction->actionId:" + i + ",keyCode:" + i2);
        net.easyconn.ecsdk.ECSDK.getInstance().sendInputAction(i, i2);
    }

    public static void s(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        android.os.Bundle bundle = (android.os.Bundle) message.obj;
        if (bundle == null) {
            return;
        }
        net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType = (net.easyconn.ecsdk.ECTypes.ECCarStatusType) bundle.get(com.umeng.analytics.pro.c.y);
        net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue = (net.easyconn.ecsdk.ECTypes.ECCarStatusValue) bundle.get("value");
        e.e.a.g.a("sendCarStatus type = " + eCCarStatusType + " value = " + eCCarStatusValue);
        net.easyconn.ecsdk.ECSDK.getInstance().sendCarStatus(eCCarStatusType, eCCarStatusValue);
    }

    public static void t(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        java.util.List list = (java.util.List) message.obj;
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((java.lang.Integer) list.get(i)).intValue();
        }
        e.e.a.g.a("queryPageIcon icons = " + list);
        net.easyconn.ecsdk.ECSDK.getInstance().queryPageIcon(iArr);
    }

    public static void u(f.a.i.i.q qVar, java.lang.String str) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("sendCarControlMsgToPhone s = " + str);
        net.easyconn.ecsdk.ECSDK.getInstance().sendPhoneControlCarResult(str);
    }

    public static void v(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        e.e.a.g.a("handleSetWifiIpAddress msg = " + message);
        android.os.Bundle bundle = (android.os.Bundle) message.obj;
        if (bundle == null) {
            return;
        }
        e.a.c.a.a.v("bindTransportWifiDevice ret = ", net.easyconn.ecsdk.ECSDK.getInstance().bindTransportWifiDevice((net.easyconn.ecsdk.ECTypes.ECTransportType) bundle.get(com.umeng.analytics.pro.c.y), (java.lang.String) bundle.get("address")));
    }

    public static void w(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        java.util.List list = (java.util.List) message.obj;
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((java.lang.Integer) list.get(i)).intValue();
        }
        int i2 = message.arg1;
        e.e.a.g.a("requestInstallPage type = " + i2 + " pages = " + list);
        net.easyconn.ecsdk.ECSDK.getInstance().requestInstallPage(i2, iArr);
    }

    public static boolean x(f.a.i.i.q qVar, android.os.Message message) {
        if (qVar == null) {
            throw null;
        }
        android.os.Bundle bundle = (android.os.Bundle) message.obj;
        if (bundle == null) {
            return false;
        }
        java.lang.String str = (java.lang.String) bundle.get("name");
        java.lang.String str2 = (java.lang.String) bundle.get("address");
        java.lang.String str3 = (java.lang.String) bundle.get("pin");
        net.easyconn.ecsdk.ECSDK.getInstance().sendCarBluetooth(str, str2, str3);
        e.e.a.g.a("sendCarBluetooth name = " + str + " address = " + str2 + " pin = " + str3);
        return true;
    }

    public void A(android.os.Message message) {
        net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage = (net.easyconn.ecsdk.ECTypes.ECAppPage) message.obj;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("closeAppPage handler page = ");
        sbO.append(eCAppPage.name());
        e.e.a.g.a(sbO.toString());
        net.easyconn.ecsdk.ECSDK.getInstance().closeAppPage(eCAppPage);
    }

    public void B(android.os.Message message) {
        if (message.arg1 > 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("closeAppPageByChannel handler pageType = ");
            sbO.append(message.arg1);
            e.e.a.g.a(sbO.toString());
            net.easyconn.ecsdk.ECSDK.getInstance().closeAppPage(message.arg1);
            return;
        }
        int iK = f.a.i.m.g.k(this.a);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("closeAppPageByChannel handler page = ");
        sbO2.append(message.obj);
        sbO2.append("propertyChannel = ");
        sbO2.append(iK);
        e.e.a.g.a(sbO2.toString());
        net.easyconn.ecsdk.ECSDK.getInstance().closeAppPage(((java.lang.Integer) message.obj).intValue(), iK);
    }

    public void C() {
        e.e.a.g.a("closeDevice");
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = this.i.b;
        e.e.a.g.a("ECSDK.getInstance().unbindTransportDevice; type is " + eCTransportType);
        if (eCTransportType != null) {
            synchronized (this) {
                e.e.a.g.a("ECSDK.getInstance().unbindTransportDevice; begin type is " + eCTransportType);
                net.easyconn.ecsdk.ECSDK.getInstance().unbindTransportDevice(eCTransportType);
                e.e.a.g.a("ECSDK.getInstance().unbindTransportDevice; end type is " + eCTransportType);
                this.k = false;
                this.i.b = null;
                this.i.a();
            }
        }
        e.e.a.g.a("closeDevice end");
    }

    public void D() {
        e.e.a.g.a("closeDeviceWithoutUnbindTransportDevice");
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType = this.i.b;
        e.e.a.g.a("closeDeviceWithoutUnbindTransportDevice; transportType is " + eCTransportType);
        if (eCTransportType != null) {
            synchronized (this) {
                this.k = false;
                this.i.b = null;
                this.i.a();
            }
        }
        e.e.a.g.a("closeDeviceWithoutUnbindTransportDevice end");
    }

    public int E() {
        if (!f.a.i.m.g.F(this.a)) {
            return -1;
        }
        e.e.a.g.a("sendEmptyMessage closeWifiService");
        this.r.sendEmptyMessage(19);
        return 0;
    }

    public final java.lang.String F() {
        java.lang.String string = android.provider.Settings.Secure.getString(this.a.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
        if (android.text.TextUtils.isEmpty(string)) {
            string = android.os.Build.SERIAL;
        }
        if (string.length() < 4) {
            return "";
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Carbit-");
        sbO.append(string.substring(0, 4));
        return sbO.toString();
    }

    public java.lang.String G() {
        if (f.a.i.m.g.s(this.a)) {
            return this.v.getString("EC_DEVICE_NAME", F());
        }
        int iG = f.a.i.m.g.G(this.a);
        if (iG == 1 || iG == 2) {
            java.lang.String strO = f.a.i.m.g.O(this.a);
            if (!e.a.c.a.a.D("getEcDeviceName() desc = ", strO, strO)) {
                java.lang.String string = android.provider.Settings.Secure.getString(this.a.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                if (android.text.TextUtils.isEmpty(string)) {
                    string = android.os.Build.SERIAL;
                }
                e.e.a.g.a("getEcDeviceName() android_id = " + string);
                if (string.length() < 4) {
                    return "";
                }
                java.lang.StringBuilder sbQ = e.a.c.a.a.q(strO, "-");
                sbQ.append(string.substring(0, 4));
                return sbQ.toString();
            }
        } else {
            java.lang.String strA = f.a.i.m.d.a();
            if (!android.text.TextUtils.isEmpty(strA)) {
                return strA;
            }
        }
        return F();
    }

    public net.easyconn.ecsdk.ECTypes.ECTransportType H() {
        return this.b.b();
    }

    public java.lang.String J() {
        return net.easyconn.ecsdk.ECSDK.getInstance().getWifiPhoneIp();
    }

    public void K(android.os.Message message) {
        android.os.Bundle bundle = (android.os.Bundle) message.obj;
        java.lang.String string = bundle.getString("carBtName");
        java.lang.String string2 = bundle.getString("carBtMac");
        java.lang.String string3 = bundle.getString("phoneBtName");
        java.lang.String string4 = bundle.getString("phoneBtMac");
        e.e.a.g.a("sendCarBluetooth carBtName = " + string + " carBtMac = " + string2 + " phoneBtName = " + string3 + " phoneBtMac = " + string4);
        net.easyconn.ecsdk.ECSDK.getInstance().setConnectedBTAddress(string, string2, string3, string4);
    }

    public void L(java.lang.String str, boolean z) throws org.json.JSONException {
        e.e.a.g.e(e.a.c.a.a.e("handlerVoiceCmd cmd = ", str), new java.lang.Object[0]);
        try {
            org.json.JSONArray jSONArrayOptJSONArray = new org.json.JSONObject(str).optJSONArray("cmds");
            net.easyconn.ecsdk.ECTypes.ECCarCmd[] eCCarCmdArr = new net.easyconn.ecsdk.ECTypes.ECCarCmd[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                org.json.JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                eCCarCmdArr[i] = new net.easyconn.ecsdk.ECTypes.ECCarCmd(jSONObject.optString("FunId"), jSONObject.optString("RegCmd"), "", jSONObject.optBoolean("PauseMusic"), 0, 0);
            }
            net.easyconn.ecsdk.ECSDK.getInstance().registerCarCmds(eCCarCmdArr, z ? net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType.EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL_NO_WAKEUP : net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType.EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL);
        } catch (org.json.JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void M() {
        this.T = false;
        if (this.V) {
            e.e.a.g.a("mirrorDisconnect......");
            this.V = false;
            ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3176f.onAppVRStatus(false);
            ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3176f.onAppNaviStatus(false);
            net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportTypeB = this.b.b();
            e.e.a.g.a("mirrorDisconnect openType = " + eCTransportTypeB);
            if (eCTransportTypeB != null && eCTransportTypeB.getValue() != net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING.getValue()) {
                ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3176f.sendMirrorOutBroadcast();
                ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3176f.sendLinkOutBroadcast();
            }
        }
        android.os.Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        e.e.a.g.a("mirrorDisconnect releaseFocus");
        android.content.Context context = this.a;
        if (((net.easyconn.framework.sdkservice.EasyConnectService) context).f3175e != null) {
            ((net.easyconn.framework.sdkservice.EasyConnectService) context).f3175e.releaseFocus();
            ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3175e.releasePlayer();
            e.e.a.g.a("mirrorDisconnect stopRecord");
            ((net.easyconn.framework.sdkservice.EasyConnectService) this.a).f3175e.stopRecord();
        }
        this.k = false;
        this.B = false;
        android.os.Handler handler2 = this.t;
        if (handler2 != null) {
            handler2.removeMessages(25);
        }
        this.D.clear();
        e.e.a.g.a("mirrorDisconnect end.");
    }

    public void N(boolean z) {
        this.I = false;
        f.a.i.m.l lVar = (f.a.i.m.l) this.H;
        boolean z2 = lVar.i;
        lVar.f(false);
        lVar.f2947c = 0L;
        lVar.f2948d = 0L;
        lVar.a();
        if (this.J == null) {
            this.J = new net.easyconn.ecsdk.ECTypes.ECNetLinkInfo(true, 0);
        }
        net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo = this.J;
        eCNetLinkInfo.state = false;
        eCNetLinkInfo.netFlow = (int) ((((f.a.i.m.l) this.H).c() + ((f.a.i.m.l) this.H).b()) / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        q0(this.J);
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.f(z);
        }
    }

    public void O(boolean z, boolean z2) {
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.q(z, z2);
        }
    }

    public void P(boolean z) {
        this.I = true;
        if (this.J == null) {
            this.J = new net.easyconn.ecsdk.ECTypes.ECNetLinkInfo(true, 0);
        }
        net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo = this.J;
        eCNetLinkInfo.state = true;
        eCNetLinkInfo.netFlow = (int) ((((f.a.i.m.l) this.H).c() + ((f.a.i.m.l) this.H).b()) / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        q0(this.J);
        ((f.a.i.m.l) this.H).a();
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.x(z);
        }
    }

    public void Q(boolean z) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        f.a.i.m.l lVar = (f.a.i.m.l) this.H;
        if (lVar == null) {
            throw null;
        }
        if (z) {
            try {
                java.lang.reflect.Method declaredMethod = lVar.j.get("getTxBytes");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = android.net.TrafficStats.class.getDeclaredMethod("getTxBytes", java.lang.String.class);
                        declaredMethod.setAccessible(true);
                        lVar.j.put("getTxBytes", declaredMethod);
                    } catch (java.lang.Exception e2) {
                        e2.printStackTrace();
                    }
                }
                long jLongValue = ((java.lang.Long) declaredMethod.invoke(null, "tun0")).longValue();
                java.lang.reflect.Method declaredMethod2 = lVar.j.get("getRxBytes");
                if (declaredMethod2 == null) {
                    try {
                        declaredMethod2 = android.net.TrafficStats.class.getDeclaredMethod("getRxBytes", java.lang.String.class);
                        declaredMethod2.setAccessible(true);
                        lVar.j.put("getRxBytes", declaredMethod2);
                    } catch (java.lang.Exception e3) {
                        e3.printStackTrace();
                    }
                }
                lVar.d(((java.lang.Long) declaredMethod2.invoke(null, "tun0")).longValue(), jLongValue);
            } catch (java.lang.Exception e4) {
                e4.printStackTrace();
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("getTrafficRxTxBytes error = ");
                e.e.a.g.c(e.a.c.a.a.I(e4, sb), new java.lang.Object[0]);
            }
        } else {
            lVar.a();
        }
        if (this.J == null) {
            this.J = new net.easyconn.ecsdk.ECTypes.ECNetLinkInfo(true, 0);
        }
        net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo = this.J;
        eCNetLinkInfo.state = true;
        eCNetLinkInfo.netFlow = (int) ((((f.a.i.m.l) this.H).c() + ((f.a.i.m.l) this.H).b()) / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        q0(this.J);
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            long jB = ((f.a.i.m.l) this.H).b();
            long jC = ((f.a.i.m.l) this.H).c();
            f.a.i.h.i iVar = this.H;
            cVar.t(jB, jC, ((f.a.i.m.l) iVar).f2949e, ((f.a.i.m.l) iVar).f2950f);
        }
    }

    public void R() {
        if (this.J == null) {
            this.J = new net.easyconn.ecsdk.ECTypes.ECNetLinkInfo(true, 0);
        }
        net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo = this.J;
        eCNetLinkInfo.state = false;
        eCNetLinkInfo.netFlow = (int) ((((f.a.i.m.l) this.H).c() + ((f.a.i.m.l) this.H).b()) / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        q0(this.J);
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.J();
        }
    }

    public void S(net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage) {
        e.e.a.g.a("openAppPage appPage = " + eCAppPage);
        if (eCAppPage == null) {
            return;
        }
        if (!this.V) {
            a0 = eCAppPage;
            return;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = eCAppPage;
        messageObtain.what = 16;
        this.r.sendMessage(messageObtain);
        a0 = null;
    }

    public void T(int i) {
        e.a.c.a.a.v("openAppPageByChannel appPage = ", i);
        if (i <= 0) {
            return;
        }
        if (!this.V) {
            b0 = i;
            return;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = java.lang.Integer.valueOf(i);
        messageObtain.what = 42;
        this.r.sendMessage(messageObtain);
        b0 = 0;
    }

    public synchronized boolean U(android.hardware.usb.UsbDevice usbDevice) {
        boolean z = false;
        if (usbDevice == null) {
            e.e.a.g.c("[openDevice] error, usbDevice = null, return", new java.lang.Object[0]);
            return false;
        }
        if (!f.a.i.m.g.r(this.a) && usbDevice.getVendorId() == 1452) {
            e.e.a.g.c("[openDevice] enableIOSUsb = false", new java.lang.Object[0]);
            return false;
        }
        if (!f.a.i.m.g.q(this.a) && usbDevice.getVendorId() != 1452) {
            e.e.a.g.c("[openDevice] enableAndroidUsb = false", new java.lang.Object[0]);
            return false;
        }
        e.e.a.g.a("[openDevice] isTransportOpen is " + this.T + " usbDevice = " + usbDevice);
        if (!this.T) {
            if (this.j) {
                this.N = null;
                this.P = usbDevice.getVendorId();
                this.Q = usbDevice.getProductId();
                boolean zB = this.i.b(usbDevice);
                if (!zB) {
                    this.P = 0;
                    this.Q = 0;
                }
                e.e.a.g.a("[openDevice] openDevice ret is " + zB);
                z = zB;
            } else {
                this.N = usbDevice;
                e.e.a.g.a("[openDevice] openDevice ret is false, for SDK not init yet!");
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void V(net.easyconn.ecsdk.ECTypes.ECTransportType r14) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.V(net.easyconn.ecsdk.ECTypes$ECTransportType):void");
    }

    public int W() {
        if (!f.a.i.m.g.F(this.a)) {
            return -1;
        }
        e.e.a.g.a("sendEmptyMessage openWifiService");
        this.r.sendEmptyMessage(8);
        return 0;
    }

    public int X(int i) {
        if (!f.a.i.m.g.F(this.a)) {
            return -1;
        }
        e.e.a.g.a("sendEmptyMessageDelayed " + i + "ms openWifiService");
        this.r.sendEmptyMessageDelayed(58, (long) i);
        return 0;
    }

    public int Y() {
        if (!f.a.i.m.g.F(this.a)) {
            return -1;
        }
        if (this.j && !this.T) {
            e.e.a.g.a("sendEmptyMessage reOpenWifiService");
            this.r.sendEmptyMessage(39);
            return 0;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("reOpenWifiService return, because isSdkInit = ");
        sbO.append(this.j);
        sbO.append(" and isTransportOpen = ");
        e.a.c.a.a.C(sbO, this.T);
        return 0;
    }

    public void Z() throws java.lang.NoSuchFieldException {
        e.e.a.g.a("EcSdkManager release()");
        this.u = null;
        this.k = false;
        this.T = false;
        this.V = false;
        this.j = false;
        if (this.G) {
            try {
                this.a.unregisterReceiver(this.E);
            } catch (java.lang.Exception unused) {
                e.e.a.g.c("unregisterReceiver wifiP2PReceiver Exception", new java.lang.Object[0]);
            }
        }
        android.os.Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        f.a.i.m.f.b(this.r.getLooper());
        e.e.a.g.a("EcSdkManager sendMessage RELEASE");
        net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(this.a, new android.content.Intent(net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_CORE_SERVICE_RELEASE));
        this.r.sendEmptyMessage(-1);
    }

    public void a0() {
        this.K = null;
        f.a.i.i.m mVar = this.b;
        if (mVar != null) {
            mVar.j(null);
        }
        if (this.f2899d != null) {
            e.e.a.g.a("EcQtCallBack setVideoEventListener = null");
        }
    }

    public void b0(net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode, net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType) {
        boolean z;
        if (eCBtnCode == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PLAY || eCBtnCode == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PAUSE || eCBtnCode == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_STOP || eCBtnCode == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_NEXT || eCBtnCode == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PREVIOUS) {
            long timeInMillis = java.util.Calendar.getInstance().getTimeInMillis();
            if (timeInMillis - f.a.i.m.e.a > 200) {
                f.a.i.m.e.a = timeInMillis;
                z = false;
            } else {
                z = true;
            }
            if (z) {
                e.e.a.g.a("sendBtnEvent in shake btnCode = " + eCBtnCode);
                return;
            }
        }
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putSerializable("btnCode", eCBtnCode);
        bundle.putSerializable(com.umeng.analytics.pro.c.y, eCBtnEventType);
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = bundle;
        messageObtain.what = 10;
        this.r.sendMessage(messageObtain);
    }

    public void c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType, net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putSerializable(com.umeng.analytics.pro.c.y, eCCarStatusType);
        bundle.putSerializable("value", eCCarStatusValue);
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = bundle;
        messageObtain.what = 36;
        this.r.sendMessage(messageObtain);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean d0(android.os.Message r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.d0(android.os.Message):boolean");
    }

    public void e0(boolean z) {
        f.a.g.j jVar;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("setAppForground->");
        sb.append(z);
        sb.append(", isMirrorConnectionOpen = ");
        e.a.c.a.a.C(sb, this.V);
        if (this.V) {
            e.a.c.a.a.z("sendCarStatus EC_CAR_RUN_STATUS ->", z);
            c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_RUN_STATUS, z ? net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_RUN_FOREGROUND : net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_RUN_BACKGROUND);
        }
        this.Z = z;
        net.easyconn.netlink.service.NetLinkService netLinkService = this.R;
        if (netLinkService != null) {
            e.a.c.a.a.z("NetLinkService setAppForground->", z);
            netLinkService.j = z;
        }
        android.content.Context context = this.a;
        if (context != null) {
            net.easyconn.framework.sdkservice.EasyConnectService easyConnectService = (net.easyconn.framework.sdkservice.EasyConnectService) context;
            if (android.os.Build.VERSION.SDK_INT >= 28 && (jVar = easyConnectService.q) != null) {
                jVar.l(z);
            }
        }
    }

    public synchronized void f0(boolean z) {
        e.e.a.g.a("set deviceOpen = " + z);
        this.O = z;
    }

    public void h0(f.a.i.h.c cVar) {
        int i;
        this.M = cVar;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("EcSdkManager setMirrorConnectionListener, sdkCallBack is ");
        sbO.append(this.b);
        e.e.a.g.a(sbO.toString());
        f.a.i.i.m mVar = this.b;
        if (mVar != null) {
            mVar.m = this.M;
        }
        f.a.i.h.c cVar2 = this.M;
        if (cVar2 == null || (i = this.o) == 0) {
            return;
        }
        cVar2.onLicenseAuthFail(i, this.p);
    }

    public void i0(boolean z) {
        e.a.c.a.a.z("setScreenRotations:", z);
        this.n = z;
    }

    public void j0(f.a.i.h.d dVar) {
        e.e.a.g.a("EcSdkManager setVideoEventListener() iMirrorEventListener = " + dVar);
        this.K = dVar;
        f.a.i.i.m mVar = this.b;
        if (mVar != null) {
            mVar.j(dVar);
        }
        if (this.f2899d != null) {
            e.e.a.g.a("EcQtCallBack setVideoEventListener = " + dVar);
        }
    }

    public void k0() {
        if (this.b.b() == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            this.r.sendEmptyMessage(34);
        }
        e.a.c.a.a.C(e.a.c.a.a.o("startMirror begin isMirrorConnectionOpen = "), this.V);
        if (!this.V) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("do not startMirror isMirrorConnectionOpen = ");
            sbO.append(this.V);
            sbO.append(" isOtaTransporting = ");
            e.a.c.a.a.C(sbO, this.m);
            return;
        }
        if (this.m) {
            e.a.c.a.a.C(e.a.c.a.a.o("isScreenRotations:"), this.n);
            if (!this.n) {
                return;
            }
            i0(false);
            this.m = false;
            f.a.i.i.m mVar = this.b;
            f.a.i.i.q.a aVar = new f.a.i.i.q.a();
            if (mVar == null) {
                throw null;
            }
            f.a.i.i.m.G.execute(aVar);
        } else {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("isOtaTransporting:");
            sbO2.append(this.m);
            e.e.a.g.a(sbO2.toString());
            i0(false);
        }
        e.e.a.g.a("startMirror");
        this.r.removeMessages(4);
        this.r.sendEmptyMessage(3);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0258 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean l0() {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.q.l0():boolean");
    }

    public boolean m0() {
        if (this.A == null && this.R == null) {
            e.e.a.g.c("startNetworkShare not support, return", new java.lang.Object[0]);
            return false;
        }
        if (this.I) {
            e.e.a.g.c("startNetworkShare ShareNetOpened, return", new java.lang.Object[0]);
            return false;
        }
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportTypeH = H();
        if (eCTransportTypeH == null || eCTransportTypeH.name().contains("AIRPLAY")) {
            e.e.a.g.c("startNetworkShare ecTransportType = " + eCTransportTypeH + "not support, return", new java.lang.Object[0]);
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("startNetworkShare begin type = ");
        sbO.append(eCTransportTypeH.name());
        e.e.a.g.a(sbO.toString());
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            if (!f.a.i.m.g.y(this.a)) {
                e.e.a.g.c("startNetworkShare not support Netlink, return false", new java.lang.Object[0]);
                return false;
            }
            if (!f.a.i.m.g.z(this.a) && !eCTransportTypeH.name().contains("USB")) {
                e.e.a.g.c("startNetworkShare not support NetlinkWiFi, return false", new java.lang.Object[0]);
                return false;
            }
        } else if (!f.a.i.m.g.x(this.a)) {
            e.e.a.g.c("startNetworkShare not support IpTableNetlink, return false", new java.lang.Object[0]);
            return false;
        }
        ((f.a.i.m.l) this.H).e(false);
        this.r.removeMessages(17);
        android.os.Handler handler = this.r;
        handler.sendMessageDelayed(handler.obtainMessage(17, eCTransportTypeH.name()), 1000L);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("startNetworkShare end type = ");
        sb.append(eCTransportTypeH.name());
        sb.append(" mNetShareManager == null is ");
        sb.append(this.A == null);
        sb.append(" netLinkService == null is ");
        e.a.c.a.a.C(sb, this.R == null);
        return true;
    }

    public void n0(java.lang.String[] strArr, int i) {
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = strArr;
        messageObtain.arg1 = i;
        messageObtain.what = 23;
        this.r.sendMessage(messageObtain);
    }

    public void o0() {
        e.e.a.g.a("stopMirror");
        this.r.removeMessages(3);
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.m(false);
        }
        android.os.Handler handler = this.r;
        handler.sendMessageAtFrontOfQueue(handler.obtainMessage(4));
    }

    @Override // net.easyconn.ecsdk.ECCustomProtocol.ICustomDataReceiver
    public void onReceive(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData) {
        e.e.a.g.a("CustomProtocol onReceive = " + eCCustomData);
        if (eCCustomData != null && eCCustomData.getData() != null) {
            try {
                e.e.a.g.a("CustomProtocol onReceive cmdType = " + eCCustomData.getCmdType() + " data = " + new java.lang.String(eCCustomData.getData(), 0, eCCustomData.getData().length));
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                e.e.a.g.c("CustomProtocol onReceive data not str, cmdType = " + eCCustomData.getCmdType(), new java.lang.Object[0]);
            }
        }
        f.a.i.h.c cVar = this.M;
        if (cVar != null) {
            cVar.h0(eCCustomData);
        }
    }

    public boolean p0(boolean z) {
        if (this.A == null && this.R == null) {
            e.e.a.g.c("stopNetworkShare not support, return", new java.lang.Object[0]);
            return false;
        }
        if (!this.I) {
            e.e.a.g.c("stopNetworkShare notShareNetOpened, return", new java.lang.Object[0]);
            return false;
        }
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportTypeH = H();
        if (eCTransportTypeH == null || eCTransportTypeH.name().contains("AIRPLAY")) {
            e.e.a.g.c("stopNetworkShare ecTransportType = " + eCTransportTypeH + "not support, return", new java.lang.Object[0]);
            return false;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("stopNetworkShare begin type = ");
        sbO.append(eCTransportTypeH.name());
        e.e.a.g.a(sbO.toString());
        this.r.removeMessages(17);
        ((f.a.i.m.l) this.H).e(z);
        this.r.sendEmptyMessage(18);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("stopNetworkShare end type = ");
        sb.append(eCTransportTypeH.name());
        sb.append(" mNetShareManager == null is ");
        sb.append(this.A == null);
        sb.append(" netLinkService == null is ");
        e.a.c.a.a.C(sb, this.R == null);
        return true;
    }

    public final void q0(net.easyconn.ecsdk.ECTypes.ECNetLinkInfo eCNetLinkInfo) {
        e.e.a.g.a("EcSdkManager updateNetLinkData info = " + eCNetLinkInfo);
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 49;
        messageObtain.obj = eCNetLinkInfo;
        this.r.sendMessage(messageObtain);
    }

    public void r0(java.lang.String str) {
        net.easyconn.ecsdk.ECSDK.getInstance().uploadStatistics("content", str);
    }

    public void y(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IUsbDevice iUsbDevice) {
        e.e.a.g.a("BleAP bindBleApDevice");
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.umeng.analytics.pro.c.y, eCTransportType);
        map.put("iDevice", iUsbDevice);
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = map;
        messageObtain.what = 62;
        this.r.sendMessage(messageObtain);
    }

    public void z(java.lang.String str, java.lang.String str2, net.easyconn.ecsdk.ECTypes.ECOTAUpdateCheckMode eCOTAUpdateCheckMode) {
        java.lang.String language = java.util.Locale.getDefault().getLanguage();
        if (java.util.Locale.CHINESE.getLanguage().equals(language)) {
            java.lang.String country = java.util.Locale.getDefault().getCountry();
            if (!country.isEmpty()) {
                java.lang.StringBuilder sbQ = e.a.c.a.a.q(language, "-");
                sbQ.append(country.toLowerCase());
                language = sbQ.toString();
            }
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = new java.lang.Object[]{str, str2, language, eCOTAUpdateCheckMode};
        messageObtain.what = 22;
        this.r.sendMessage(messageObtain);
        e.e.a.g.a("checkOTAUpdate language = " + language);
    }
}
