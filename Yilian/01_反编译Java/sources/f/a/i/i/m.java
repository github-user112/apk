package f.a.i.i;

/* loaded from: classes.dex */
public class m implements net.easyconn.ecsdk.IECCallback {
    public static final java.util.concurrent.ScheduledExecutorService G = new java.util.concurrent.ScheduledThreadPoolExecutor(1, new f.a.i.i.m.a());
    public volatile java.io.File C;
    public f.a.i.h.e F;
    public final android.net.wifi.WifiManager a;
    public boolean b;

    /* renamed from: e, reason: collision with root package name */
    public android.os.Handler f2894e;

    /* renamed from: f, reason: collision with root package name */
    public android.os.HandlerThread f2895f;

    /* renamed from: g, reason: collision with root package name */
    public android.os.Handler f2896g;
    public f.a.i.i.q h;
    public android.content.Context i;
    public f.a.i.h.c m;
    public f.a.i.h.d n;
    public f.a.i.h.a o;
    public f.a.i.h.b p;
    public f.a.i.h.g q;
    public boolean r;
    public boolean s;
    public long v;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2892c = false;

    /* renamed from: d, reason: collision with root package name */
    public volatile net.easyconn.ecsdk.ECTypes.ECTransportType f2893d = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_MAX;
    public boolean j = false;
    public boolean k = false;
    public java.util.List<net.easyconn.ecsdk.ECTypes.ECPageInfo> l = null;
    public boolean t = true;
    public int u = -1;
    public int w = -1;
    public int x = -1;
    public long y = 0;
    public int z = 0;
    public long A = 0;
    public final java.lang.StringBuilder B = new java.lang.StringBuilder();
    public final java.lang.Object D = new java.lang.Object();
    public final java.util.HashSet<java.lang.String> E = new java.util.HashSet<>();

    public class a implements java.util.concurrent.ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new java.lang.Thread(runnable, "EcCallBack_work_thread");
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.ecsdk.ECSDK.getInstance().closeTransport();
            f.a.i.i.q qVar = f.a.i.i.m.this.h;
            synchronized (qVar) {
                qVar.T = false;
            }
            net.easyconn.ecsdk.ECSDK.getInstance().closeMirrorConnection();
        }
    }

    public class c implements java.lang.Runnable {
        public c(f.a.i.i.m mVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.ecsdk.ECSDK.getInstance().closeTransport();
            net.easyconn.ecsdk.ECSDK.getInstance().closeMirrorConnection();
        }
    }

    public class d implements java.lang.Runnable {
        public d(f.a.i.i.m mVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.ecsdk.ECSDK.getInstance().closeTransport();
            net.easyconn.ecsdk.ECSDK.getInstance().closeMirrorConnection();
        }
    }

    public class e extends android.os.Handler {
        public e(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            f.a.i.i.m mVar;
            java.util.List list;
            java.lang.String str;
            e.a.c.a.a.A(e.a.c.a.a.o("PageListHandler msg.what = "), message.what);
            int i = message.what;
            if (i == 1) {
                mVar = f.a.i.i.m.this;
                list = (java.util.List) message.obj;
                str = "PAGE_LIST_RECEIVED";
            } else {
                if (i != 2) {
                    if (i == 3) {
                        f.a.i.i.m mVar2 = f.a.i.i.m.this;
                        net.easyconn.ecsdk.ECTypes.ECPageInstallResult eCPageInstallResult = (net.easyconn.ecsdk.ECTypes.ECPageInstallResult) message.obj;
                        f.a.i.h.c cVar = mVar2.m;
                        if (cVar != null) {
                            cVar.i(eCPageInstallResult);
                        }
                    }
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("PageListHandler msg.what = ");
                    sbO.append(message.what);
                    sbO.append(" end");
                    e.e.a.g.a(sbO.toString());
                }
                mVar = f.a.i.i.m.this;
                list = (java.util.List) message.obj;
                str = "PAGE_LIST_ICON_RECEIVED";
            }
            f.a.i.i.m.a(mVar, str, list);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("PageListHandler msg.what = ");
            sbO2.append(message.what);
            sbO2.append(" end");
            e.e.a.g.a(sbO2.toString());
        }
    }

    public m(android.content.Context context, f.a.i.i.q qVar) {
        this.i = context;
        this.h = qVar;
        this.a = qVar.f2898c;
    }

    public static void a(f.a.i.i.m mVar, java.lang.String str, java.util.List list) {
        if (mVar == null) {
            throw null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            final net.easyconn.ecsdk.ECTypes.ECPageInfo eCPageInfo = (net.easyconn.ecsdk.ECTypes.ECPageInfo) it.next();
            net.easyconn.ecsdk.ECTypes.ECPageInfo eCPageInfo2 = new net.easyconn.ecsdk.ECTypes.ECPageInfo(eCPageInfo.page, eCPageInfo.type, eCPageInfo.name, "", eCPageInfo.installState, eCPageInfo.packageSize, eCPageInfo.sequence);
            arrayList.add(eCPageInfo2);
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
            jSONObject.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName, (java.lang.Object) eCPageInfo.name);
            jSONObject.put(net.easyconn.framework.broadcast.BroadcastManager.EC_APP_TYPE, (java.lang.Object) java.lang.Integer.valueOf(eCPageInfo.page));
            jSONObject.put(com.google.android.exoplayer2.offline.DefaultDownloadIndex.COLUMN_STATE, (java.lang.Object) java.lang.Integer.valueOf(eCPageInfo.installState));
            jSONArray.add(jSONObject);
            if (mVar.C != null && !mVar.C.exists()) {
                mVar.C.mkdirs();
            }
            java.io.File[] fileArrListFiles = mVar.C.listFiles(new java.io.FilenameFilter() { // from class: f.a.i.i.b
                @Override // java.io.FilenameFilter
                public final boolean accept(java.io.File file, java.lang.String str2) {
                    return str2.contains(eCPageInfo.iconMd5.toLowerCase());
                }
            });
            int i = 0;
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, " generateShortcutList page = ");
                sbQ.append(eCPageInfo.page);
                sbQ.append(" name = ");
                e.e.a.g.c(e.a.c.a.a.j(sbQ, eCPageInfo.name, " not find icon"), new java.lang.Object[0]);
            } else {
                int length = fileArrListFiles.length;
                while (true) {
                    if (i < length) {
                        java.io.File file = fileArrListFiles[i];
                        if (file.getName().contains(eCPageInfo.iconMd5.toLowerCase())) {
                            java.lang.String absolutePath = file.getAbsolutePath();
                            eCPageInfo2.iconMd5 = absolutePath;
                            jSONObject.put("appIcon", (java.lang.Object) absolutePath);
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject();
        jSONObject2.put("ecapps", (java.lang.Object) jSONArray);
        f.a.i.h.b bVar = mVar.p;
        if (bVar != null) {
            bVar.onShortcutListReceived(jSONObject2.toJSONString());
        }
        java.lang.StringBuilder sbQ2 = e.a.c.a.a.q(str, " iMirrorConnectionListener = ");
        sbQ2.append(mVar.m);
        sbQ2.append(" originalPageInfos = ");
        sbQ2.append(arrayList);
        e.e.a.g.a(sbQ2.toString());
        f.a.i.h.c cVar = mVar.m;
        if (cVar != null) {
            cVar.c0(arrayList);
        }
    }

    public net.easyconn.ecsdk.ECTypes.ECTransportType b() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("ecTransportType = ");
        sbO.append(this.f2893d);
        e.e.a.g.a(sbO.toString());
        return this.f2893d;
    }

    public boolean c() {
        return this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_EAP || this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_APP || this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_AIRPLAY || this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_MUX || this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING || this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_AIRPLAY;
    }

    public final void f(boolean z) {
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).n = z;
        }
        if (this.k != z) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("notifyAccessibilityStatus status changed, current is ");
            sbO.append(this.k);
            sbO.append(", target is ");
            sbO.append(z);
            e.e.a.g.a(sbO.toString());
            this.k = z;
            i();
        }
    }

    public void g(boolean z, int i, int i2) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("notifyAppForegroundStatus isMirrorSuccess = ");
        sbO.append(this.j);
        sbO.append(", type = ");
        sbO.append(i);
        sbO.append(" mirrorType = ");
        e.a.c.a.a.A(sbO, i2);
        if (!this.j) {
            if (!(!f.a.i.m.g.h0(this.i) ? false : java.lang.Boolean.parseBoolean(f.a.i.m.g.f2936c.getProperty("NOT_MIRROR_NOTIFY_APP_MIRROR_STATUS", "false")))) {
                return;
            }
        }
        if (i != this.u) {
            this.t = z;
            f.a.i.h.d dVar = this.n;
            if (dVar == null) {
                if (c()) {
                    this.u = i;
                }
            } else {
                this.u = i;
                ((f.a.k.m0.r0) dVar).d(z, i);
                if (((f.a.k.m0.r0) this.n) == null) {
                    throw null;
                }
            }
        }
    }

    public boolean h(int i) {
        this.b = false;
        e.a.c.a.a.v("notifyPhoneDisconnect reason is ", i);
        if (!this.h.j) {
            e.e.a.g.a("notifyPhoneDisconnect return");
            return false;
        }
        this.h.p0(true);
        f.a.i.h.e eVar = this.F;
        if (eVar != null) {
            ((f.a.k.g0) eVar).i0(i);
        } else {
            this.h.M();
        }
        f.a.i.i.q qVar = this.h;
        int i2 = qVar.U;
        qVar.U = 0;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("notifyPhoneDisconnect iMirrorConnectionListener = ");
        sbO.append(this.m);
        sbO.append(" openTransportRt = ");
        sbO.append(i2);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.e(false, null);
        }
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).x(i);
        }
        f.a.i.h.d dVar2 = this.n;
        if (dVar2 != null && ((f.a.k.m0.r0) dVar2) == null) {
            throw null;
        }
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.notifyPhoneDisconnect(i);
        }
        ((net.easyconn.framework.sdkservice.EasyConnectService) this.i).f3176f.sendLinkOutBroadcast();
        ((net.easyconn.framework.sdkservice.EasyConnectService) this.i).d(false);
        e.e.a.g.a("notifyPhoneDisconnect end");
        this.t = true;
        this.j = false;
        this.E.clear();
        return false;
    }

    public void i() {
        this.u = -1;
        if (c()) {
            this.j = true;
        }
    }

    public void j(f.a.i.h.d dVar) {
        e.e.a.g.a("EcCallBack setVideoEventListener iMirrorEventListener = " + dVar);
        this.n = dVar;
        if (dVar != null && c()) {
            if (this.f2893d != net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING || this.u == -1) {
                ((f.a.k.m0.r0) dVar).d(this.t, this.u);
            }
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onBulkDataReceived(java.nio.ByteBuffer byteBuffer, int i) {
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onCallAction(net.easyconn.ecsdk.ECTypes.ECCallType eCCallType, java.lang.String str, java.lang.String str2) {
        e.e.a.g.a("onCallAction type is " + eCCallType + "; name is " + str + "; number is" + str2);
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onPhoneCallAction(eCCallType, str, str2);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onCarCmdNotified(net.easyconn.ecsdk.ECTypes.ECCarCmd eCCarCmd) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onCarCmdNotified carCmd.cmd:");
        sbO.append(eCCarCmd.cmd);
        sbO.append(" carCmd.id:");
        sbO.append(eCCarCmd.id);
        sbO.append(" carCmd.pauseMusic:");
        e.a.c.a.a.C(sbO, eCCarCmd.pauseMusic);
        f.a.i.h.a aVar = this.o;
        if (aVar != null) {
            aVar.onVoiceCMD(eCCarCmd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x01ab A[PHI: r0
  0x01ab: PHI (r0v29 f.a.i.h.e) = (r0v28 f.a.i.h.e), (r0v32 f.a.i.h.e) binds: [B:75:0x01a9, B:69:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // net.easyconn.ecsdk.IECCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onECStatusMessage(net.easyconn.ecsdk.ECTypes.ECStatusMessage r6) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.m.onECStatusMessage(net.easyconn.ecsdk.ECTypes$ECStatusMessage):void");
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onInputCancel() {
        e.e.a.g.a("onInputCancel");
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).a.p();
        } else {
            e.e.a.g.a("iMirrorEventListener is null");
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onInputSelection(int i, int i2) {
        e.e.a.g.a("onInputSelection->start:" + i + ",end:" + i2);
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).a.y(i, i2);
        } else {
            e.e.a.g.a("iMirrorEventListener is null");
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onInputStart(net.easyconn.ecsdk.ECTypes.ECInputInfo eCInputInfo) {
        e.e.a.g.a("onInputStart->ecInputInfo:" + eCInputInfo);
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).a.D(eCInputInfo);
        } else {
            e.e.a.g.a("iMirrorEventListener is null");
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onInputText(java.lang.String str) {
        e.a.c.a.a.w("onInputText->s = ", str);
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).a.c(str);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onLicenseAuthFail(int i, java.lang.String str) throws java.lang.NoSuchFieldException {
        com.alibaba.fastjson.JSONObject object;
        f.a.i.h.c cVar;
        e.e.a.g.a("onLicenseAuthFail->errCode=" + i + ",errMsg=" + str);
        f.a.i.i.q qVar = this.h;
        qVar.l = true;
        qVar.o = i;
        qVar.p = str;
        try {
            object = com.alibaba.fastjson.JSON.parseObject(str);
        } catch (com.alibaba.fastjson.JSONException e2) {
            e2.printStackTrace();
            e.e.a.g.c("parseLicenseAuthFailQueryType exception, e = " + e2.toString(), new java.lang.Object[0]);
            object = null;
        }
        int intValue = object != null ? object.getIntValue("queryType") : 0;
        if (intValue != net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType.EC_CAR_AUTH_QUERY_TYPE_DEFAULT.getValue()) {
            if (intValue != net.easyconn.ecsdk.ECTypes.ECCarAuthQueryType.EC_CAR_AUTH_QUERY_TYPE_QUICK.getValue() || (cVar = this.m) == null) {
                return;
            }
            cVar.P(i, str);
            return;
        }
        this.h.Z();
        f.a.i.h.c cVar2 = this.m;
        if (cVar2 != null) {
            cVar2.onLicenseAuthFail(i, str);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onLicenseAuthSuccess(int i, java.lang.String str) {
        e.e.a.g.a("onLicenseAuthSuccess");
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.onLicenseAuthSuccess(i, str);
        }
        f.a.i.h.e eVar = this.F;
        if (eVar != null && ((f.a.k.g0) eVar) == null) {
            throw null;
        }
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onLicenseAuthSuccess();
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onMirrorDisconnected() {
        e.e.a.g.e("onMirrorDisconnected()", new java.lang.Object[0]);
        f.a.i.h.e eVar = this.F;
        if (eVar != null) {
            ((f.a.k.g0) eVar).i0(4);
        }
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).x(4);
        }
        this.j = false;
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onMirrorRequestReconnect() {
        f.a.k.g0 g0Var;
        f.a.i.i.q qVar;
        e.e.a.g.e("onMirrorRequestReconnect()", new java.lang.Object[0]);
        e.e.a.g.e("ecSdkManager.isAppForeground()->" + this.h.Z, new java.lang.Object[0]);
        f.a.i.h.e eVar = this.F;
        if (eVar != null && (qVar = (g0Var = (f.a.k.g0) eVar).s) != null && qVar.Z && !(g0Var.r instanceof f.a.k.l0.g3)) {
            qVar.k0();
        }
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            f.a.k.m0.r0 r0Var = (f.a.k.m0.r0) dVar;
            android.os.Handler handler = r0Var.b;
            final f.a.k.k0.d dVar2 = r0Var.a;
            dVar2.getClass();
            handler.post(new java.lang.Runnable() { // from class: f.a.k.m0.i0
                @Override // java.lang.Runnable
                public final void run() {
                    dVar2.onMirrorRequestReconnect();
                }
            });
            e.e.a.g.a(" MirrorPresenter onMirrorRequestReconnect");
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onMirrorVideoInfoChanged(int i, int i2, int i3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("onMirrorVideoInfoChanged i = ");
        sb.append(i);
        sb.append(" i1 = ");
        sb.append(i2);
        sb.append(" i2 = ");
        e.a.c.a.a.A(sb, i3);
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onMirrorVideoReceived(byte[] bArr, int i, int i2, net.easyconn.ecsdk.ECTypes.ECVideoInfo eCVideoInfo) throws java.lang.InterruptedException, java.io.IOException {
        if (!this.b) {
            e.e.a.g.a("onMirrorVideoReceived() firstFrame start");
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        long jCurrentTimeMillis2 = 0;
        if (f.a.i.n.b.I) {
            long j = jCurrentTimeMillis - this.y;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("onMirrorVideoReceived decode time start = ");
            sb.append(jCurrentTimeMillis);
            sb.append(" frame len = ");
            sb.append(i2);
            sb.append(" from last end time = ");
            long j2 = this.y;
            if (j2 != 0) {
                j2 = j;
            }
            sb.append(j2);
            e.e.a.g.a(sb.toString());
            if (this.y > 0 && j < 8 && j >= 0) {
                try {
                    java.lang.Thread.sleep(8 - j);
                } catch (java.lang.InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            if (this.B.length() > 0) {
                java.lang.StringBuilder sb2 = this.B;
                sb2.delete(0, sb2.length());
            }
            for (int i3 = 0; i3 < bArr.length; i3++) {
                this.B.append((int) bArr[i3]);
                if (i3 >= 100) {
                    break;
                }
                this.B.append(" ");
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onMirrorVideoReceived H264 type = ");
            sbO.append((java.lang.Object) this.B);
            e.e.a.g.a(sbO.toString());
            java.lang.StringBuilder sb3 = this.B;
            sb3.delete(0, sb3.length());
        }
        if (this.f2892c || this.s || this.r) {
            try {
                java.io.File file = new java.io.File("/mnt/sdcard/h264/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (this.z != 0) {
                    jCurrentTimeMillis2 = java.lang.System.currentTimeMillis() - this.A;
                }
                java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                int i4 = this.z + 1;
                this.z = i4;
                sb4.append(java.lang.String.format("%05d", java.lang.Integer.valueOf(i4)));
                sb4.append("-");
                sb4.append(jCurrentTimeMillis2);
                sb4.append(".h264");
                java.lang.String string = sb4.toString();
                this.A = java.lang.System.currentTimeMillis();
                java.io.File file2 = new java.io.File("/mnt/sdcard/h264/" + string);
                file2.createNewFile();
                java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file2.getAbsolutePath(), true);
                fileOutputStream.write(bArr, 0, i2);
                fileOutputStream.close();
            } catch (java.lang.Exception e3) {
                e3.printStackTrace();
            }
        }
        if (this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            f.a.i.h.d dVar = this.n;
            if (dVar != null) {
                ((f.a.k.m0.r0) dVar).a.F(bArr, i, i2, eCVideoInfo.mirrorWidth, eCVideoInfo.mirrorHeight, eCVideoInfo.direction);
            }
        } else {
            f.a.i.h.d dVar2 = this.n;
            if (dVar2 != null) {
                ((f.a.k.m0.r0) dVar2).a.H(bArr, i, i2);
            }
        }
        if (this.w != eCVideoInfo.realWidth || this.x != eCVideoInfo.realHeight) {
            if (this.n != null) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("onMirrorVideoInfoChanged w=");
                sbO2.append(eCVideoInfo.realWidth);
                sbO2.append(" h=");
                sbO2.append(eCVideoInfo.realHeight);
                sbO2.append(" i2=");
                e.a.c.a.a.A(sbO2, eCVideoInfo.direction);
                ((f.a.k.m0.r0) this.n).a.l(eCVideoInfo.realWidth, eCVideoInfo.realHeight, eCVideoInfo.direction);
            } else {
                e.e.a.g.c("onMirrorVideoReceived iMirrorEventListener is null, can not callback to ui", new java.lang.Object[0]);
            }
        }
        this.w = eCVideoInfo.realWidth;
        this.x = eCVideoInfo.realHeight;
        this.j = true;
        long jCurrentTimeMillis3 = java.lang.System.currentTimeMillis();
        long j3 = jCurrentTimeMillis3 - jCurrentTimeMillis;
        if (j3 > 100 || f.a.i.n.b.I) {
            this.y = jCurrentTimeMillis3;
            e.e.a.g.a("decode time total consume  time = " + j3);
        }
        if (this.b) {
            return;
        }
        this.b = true;
        e.e.a.g.a("onMirrorVideoReceived() firstFrame end");
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onOTAUpdateCheckResult(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i, net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr2, int i2) {
        e.e.a.g.a("onOTAUpdateCheckResult ecotaUpdateSoftwares=" + eCOTAUpdateSoftwareArr + ",i=" + i + ",ecotaUpdateSoftwares1=" + eCOTAUpdateSoftwareArr2 + ",i1=" + i2);
        f.a.i.h.g gVar = this.q;
        if (gVar != null) {
            gVar.u(eCOTAUpdateSoftwareArr, i, eCOTAUpdateSoftwareArr2, i2);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onOTAUpdateCompleted(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("onOTAUpdateCompleted s=");
        sb.append(str);
        sb.append(",s1=");
        sb.append(str2);
        sb.append(",s2=");
        e.a.c.a.a.B(sb, str3, ",s3=", str4, ",i=");
        e.a.c.a.a.A(sb, i);
        f.a.i.h.g gVar = this.q;
        if (gVar != null) {
            gVar.S(str, str2, str3, str4, i);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onOTAUpdateError(int i, java.lang.String str) {
        e.e.a.g.a("onOTAUpdateError s=" + str + ",i=" + i);
        f.a.i.h.g gVar = this.q;
        if (gVar != null) {
            gVar.M(i, str);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onOTAUpdateProgress(java.lang.String str, float f2, int i, int i2) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onOTAUpdateProgress->iOTAUpdateListener:");
        sbO.append(this.q);
        sbO.append(" s:");
        sbO.append(str);
        sbO.append(" v:");
        sbO.append(f2);
        sbO.append(" i:");
        sbO.append(i);
        sbO.append(" i1:");
        e.a.c.a.a.A(sbO, i2);
        f.a.i.h.g gVar = this.q;
        if (gVar != null) {
            gVar.j(str, f2, i, i2);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onOTAUpdateRequestDownload(net.easyconn.ecsdk.ECTypes.ECOTAUpdateSoftware[] eCOTAUpdateSoftwareArr, int i) {
        e.e.a.g.a("onOTAUpdateRequestDownload");
        f.a.i.h.g gVar = this.q;
        if (gVar != null) {
            gVar.onOTAUpdateRequestDownload(eCOTAUpdateSoftwareArr, i);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPageIconReceived(net.easyconn.ecsdk.ECTypes.ECIconInfo[] eCIconInfoArr) {
        if (eCIconInfoArr == null) {
            e.e.a.g.c("onPageIconReceived ecIconInfos is null", new java.lang.Object[0]);
            return;
        }
        if (!this.h.T) {
            e.e.a.g.c("onPageIconReceived ecIconInfos, but not TransportOpen, return", new java.lang.Object[0]);
            return;
        }
        e.e.a.g.a("onPageIconReceived begin");
        synchronized (this.D) {
            if (this.C != null && !this.C.exists()) {
                this.C.mkdirs();
            }
            if (this.l == null) {
                e.e.a.g.c("onPageIconReceived pageInfoList is null", new java.lang.Object[0]);
                return;
            }
            for (net.easyconn.ecsdk.ECTypes.ECIconInfo eCIconInfo : eCIconInfoArr) {
                java.util.Iterator<net.easyconn.ecsdk.ECTypes.ECPageInfo> it = this.l.iterator();
                while (true) {
                    if (it.hasNext()) {
                        net.easyconn.ecsdk.ECTypes.ECPageInfo next = it.next();
                        if (eCIconInfo.page == next.page) {
                            java.io.File fileZ = d.s.y.Z(this.C, eCIconInfo.iconData, next.iconMd5.toLowerCase(), eCIconInfo.iconFormat);
                            e.e.a.g.a("onPageIconReceived save icon page = " + eCIconInfo.page + ", saveFile = " + fileZ);
                            if (fileZ != null) {
                                java.lang.String strF = d.s.y.F(fileZ);
                                if (!next.iconMd5.toLowerCase().equals(strF)) {
                                    e.e.a.g.c("onPageIconReceived saveIcon md5 not correct, saveFileMd5 = " + strF + ", pageInfo.iconMd5 = " + next.iconMd5, new java.lang.Object[0]);
                                    if (fileZ.exists()) {
                                        fileZ.delete();
                                    }
                                }
                            }
                        }
                    }
                }
                e.e.a.g.a("onPageListReceived onPageListDownloads remove " + eCIconInfo.page);
                this.E.remove("" + eCIconInfo.page);
            }
            e.e.a.g.a("onPageIconReceived handle completed lock end send PAGE_LIST_ICON_RECEIVED");
            android.os.Handler handler = this.f2896g;
            handler.sendMessage(handler.obtainMessage(2, this.l));
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPageInstallResult(net.easyconn.ecsdk.ECTypes.ECPageInstallResult[] eCPageInstallResultArr) {
        e.e.a.g.a("onPageInstallResult->ecPageInstallResults");
        if (eCPageInstallResultArr == null || eCPageInstallResultArr.length == 0) {
            e.e.a.g.c("onPageInstallResult ecPageInstallResults is null", new java.lang.Object[0]);
            return;
        }
        net.easyconn.ecsdk.ECTypes.ECPageInstallResult eCPageInstallResult = eCPageInstallResultArr[0];
        e.e.a.g.a("onPageInstallResult  send PAGE_LIST_INSTALL_RESULT ecPageInstallResults = " + eCPageInstallResult);
        android.os.Handler handler = this.f2896g;
        handler.sendMessage(handler.obtainMessage(3, eCPageInstallResult));
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPageListReceived(net.easyconn.ecsdk.ECTypes.ECPageInfo[] eCPageInfoArr) {
        java.lang.String string;
        boolean z;
        if (eCPageInfoArr == null) {
            e.e.a.g.c("onPageListReceived ecPageInfos is null", new java.lang.Object[0]);
            return;
        }
        if (!this.h.T) {
            e.e.a.g.c("onPageListReceived ecPageInfos, but not TransportOpen, return", new java.lang.Object[0]);
            return;
        }
        e.e.a.g.a("onPageListReceived begin");
        if (this.C == null) {
            android.content.Context context = this.i;
            java.lang.String absolutePath = null;
            java.io.File externalCacheDir = "mounted".equals(android.os.Environment.getExternalStorageState()) ? context.getExternalCacheDir() : null;
            if (externalCacheDir == null) {
                externalCacheDir = context.getCacheDir();
            }
            if (externalCacheDir != null) {
                java.io.File file = new java.io.File(externalCacheDir.getAbsolutePath() + "/shortcut");
                if (!file.exists()) {
                    file.mkdirs();
                }
                absolutePath = file.getAbsolutePath();
            }
            if (absolutePath == null) {
                e.e.a.g.c("onPageListReceived shortcutPath is null !!!", new java.lang.Object[0]);
                return;
            }
            this.C = new java.io.File(absolutePath);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onPageListReceived shortcutPath = ");
        sbO.append(this.C);
        if (this.C != null) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o(" exist = ");
            sbO2.append(this.C.exists());
            sbO2.append(" isWrite = ");
            sbO2.append(this.C.canWrite());
            sbO2.append(" isRead = ");
            sbO2.append(this.C.canRead());
            string = sbO2.toString();
        } else {
            string = "";
        }
        sbO.append(string);
        e.e.a.g.a(sbO.toString());
        java.util.List<net.easyconn.ecsdk.ECTypes.ECPageInfo> listAsList = java.util.Arrays.asList(eCPageInfoArr);
        synchronized (this.D) {
            if (this.C != null && !this.C.exists()) {
                this.C.mkdirs();
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (final net.easyconn.ecsdk.ECTypes.ECPageInfo eCPageInfo : eCPageInfoArr) {
                java.io.File[] fileArrListFiles = this.C.listFiles(new java.io.FilenameFilter() { // from class: f.a.i.i.a
                    @Override // java.io.FilenameFilter
                    public final boolean accept(java.io.File file2, java.lang.String str) {
                        return str.contains(eCPageInfo.iconMd5.toLowerCase());
                    }
                });
                e.e.a.g.a("onPageListReceived pageInfo page = " + eCPageInfo.page + " name = " + eCPageInfo.name + " iconMd5 = " + eCPageInfo.iconMd5 + " packageSize = " + eCPageInfo.packageSize + " type = " + eCPageInfo.type + " installState = " + eCPageInfo.installState);
                if (fileArrListFiles == null || fileArrListFiles.length <= 0 || !eCPageInfo.iconMd5.toLowerCase().equals(d.s.y.F(fileArrListFiles[0]))) {
                    arrayList.add(java.lang.Integer.valueOf(eCPageInfo.page));
                }
            }
            e.e.a.g.a("onPageListReceived iconQueryList size = " + arrayList.size());
            if (arrayList.isEmpty()) {
                e.e.a.g.a("onPageListReceived pageList send PAGE_LIST_RECEIVED");
                android.os.Handler handler = this.f2896g;
                handler.sendMessage(handler.obtainMessage(1, listAsList));
                return;
            }
            this.l = listAsList;
            int i = 0;
            while (i < arrayList.size()) {
                int iIntValue = ((java.lang.Integer) arrayList.get(i)).intValue();
                java.util.Iterator<java.lang.String> it = this.E.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (iIntValue == java.lang.Integer.parseInt(it.next())) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    arrayList.remove(i);
                    i--;
                } else {
                    e.e.a.g.a("onPageListReceived onPageListDownloads add " + iIntValue);
                    this.E.add("" + iIntValue);
                }
                i++;
            }
            e.e.a.g.a("onPageListReceived iconQueryList handle completed size = " + arrayList.size());
            if (arrayList.isEmpty()) {
                return;
            }
            this.f2894e.sendMessage(this.f2894e.obtainMessage(41, arrayList));
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPageStatusChanged(int i, int i2, int i3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("onPageStatusChanged-> page = ");
        sb.append(i);
        sb.append(" status = ");
        sb.append(i2);
        sb.append(" type = ");
        e.a.c.a.a.A(sb, i3);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.onPageStatusChanged(i, i2, i3);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onParallelWorldAudioSource(int i) {
        e.a.c.a.a.v("onParallelWorldAudioSource = ", i);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.onParallelWorldAudioSource(i);
        }
        e.e.a.g.a("onParallelWorldAudioSource end");
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onParallelWorldCache(net.easyconn.ecsdk.ECTypes.ECParallelWorldCache eCParallelWorldCache) {
        e.e.a.g.a("onParallelWorldCache = " + eCParallelWorldCache);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.o(eCParallelWorldCache.noticeType, eCParallelWorldCache.parallelWorldUsedCache, eCParallelWorldCache.phoneLeftSpace);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppExited() {
        e.e.a.g.a("onPhoneAppExited");
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportTypeB = b();
        h(2);
        G.execute(new f.a.i.i.m.d(this));
        if (eCTransportTypeB.name().contains("USB")) {
            if (!(!f.a.i.m.g.h0(this.i) ? false : java.lang.Boolean.parseBoolean(f.a.i.m.g.f2936c.getProperty("APP_USB_EXITED_RECONNECT", "true")))) {
                e.e.a.g.a("onPhoneAppExited usb can't reopenTransport, return");
                return;
            }
        }
        e.e.a.g.a("onPhoneAppExited wait 2000 openTransport");
        this.f2894e.removeMessages(1);
        android.os.Handler handler = this.f2894e;
        handler.sendMessageDelayed(handler.obtainMessage(1, this.f2893d), 2000L);
        this.h.B = true;
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppHUD(net.easyconn.ecsdk.ECTypes.ECNavigationHudInfo eCNavigationHudInfo) {
        e.e.a.g.a("onPhoneAppHUD->data = " + eCNavigationHudInfo);
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onNavigationInfo(eCNavigationHudInfo);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppHUDLaneGuidancePicture(net.easyconn.ecsdk.ECTypes.ECHudLaneGuidancePictureInfo eCHudLaneGuidancePictureInfo) {
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppHUDRoadJunctionPicture(net.easyconn.ecsdk.ECTypes.ECHudRoadJunctionPictureInfo eCHudRoadJunctionPictureInfo) {
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppInfo(java.lang.String str) {
        e.a.c.a.a.w("onPhoneAppInfo data=", str);
        android.os.Handler handler = this.f2894e;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(20, 0, 0, str));
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
        e.e.a.g.e("onPhoneAppMusicInfo->ecAppMusicInfo = " + eCAppMusicInfo, new java.lang.Object[0]);
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onAppMusicStatus(eCAppMusicInfo);
        }
        f.a.i.h.a aVar = this.o;
        if (aVar != null) {
            aVar.onMusicInfo(eCAppMusicInfo);
        }
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.onMusicInfo(eCAppMusicInfo);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAppMusicInfoCover(net.easyconn.ecsdk.ECTypes.ECMusicInfoCover eCMusicInfoCover) {
        byte[] bArr;
        e.e.a.g.a("onMusicInfoCover = " + eCMusicInfoCover);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            if (eCMusicInfoCover == null || (bArr = eCMusicInfoCover.data) == null || bArr.length == 0) {
                this.m.m0(null, 0);
            } else {
                cVar.m0(bArr, bArr.length);
            }
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAudioData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2) {
        long jUptimeMillis = android.os.SystemClock.uptimeMillis();
        if (jUptimeMillis - this.v > 2000) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneAudioData-name=");
            sbO.append(eCAudioType.name());
            sbO.append(",length=");
            sbO.append(i2);
            e.e.a.g.a(sbO.toString());
        }
        this.v = jUptimeMillis;
        if (this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            f.a.i.h.a aVar = this.o;
            if (aVar != null) {
                aVar.onQtData(eCAudioType, bArr, i, i2);
                return;
            }
            return;
        }
        f.a.i.h.a aVar2 = this.o;
        if (aVar2 != null) {
            aVar2.onData(eCAudioType, bArr, i, i2);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAudioInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneAudioInterrupt:type = ");
        sbO.append(eCAudioType.name());
        e.e.a.g.a(sbO.toString());
        f.a.i.h.a aVar = this.o;
        if (aVar != null) {
            aVar.onInterrupt(eCAudioType);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAudioSetVolume(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneAudioSetVolume type = ");
        sbO.append(eCAudioType.name());
        sbO.append(", volume = ");
        sbO.append(i);
        e.e.a.g.a(sbO.toString());
        f.a.i.h.a aVar = this.o;
        if (aVar != null) {
            aVar.onVolume(eCAudioType, i / 100.0f);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneAudioStart:type = ");
        sbO.append(eCAudioType.name());
        e.e.a.g.a(sbO.toString());
        e.e.a.g.a("ECAudioInfo = (sampleRate:" + eCAudioInfo.sampleRate + ",channel:" + eCAudioInfo.channel + ",format:" + eCAudioInfo.format + ")");
        if (this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            f.a.i.h.a aVar = this.o;
            if (aVar != null) {
                aVar.onQtStart(eCAudioType, eCAudioInfo);
            }
        } else {
            f.a.i.h.a aVar2 = this.o;
            if (aVar2 != null) {
                aVar2.onStart(eCAudioType, eCAudioInfo);
            }
        }
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onPhoneAudioStart(eCAudioType);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneAudioStop:type = ");
        sbO.append(eCAudioType.name());
        e.e.a.g.a(sbO.toString());
        if (this.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING) {
            f.a.i.h.a aVar = this.o;
            if (aVar != null) {
                aVar.onQtStop(eCAudioType);
            }
        } else {
            f.a.i.h.a aVar2 = this.o;
            if (aVar2 != null) {
                aVar2.onStop(eCAudioType);
            }
        }
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onPhoneAudioStop(eCAudioType);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneBluetoothState(int i, java.lang.String str) {
        e.e.a.g.a("onPhoneBluetoothState state = " + i + " phoneBtMac = " + str);
        f.a.i.h.c cVar = this.m;
        if (cVar != null) {
            cVar.onPhoneBluetoothState(i, str);
        }
        ((net.easyconn.framework.sdkservice.EasyConnectService) this.i).e(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @Override // net.easyconn.ecsdk.IECCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPhoneConnected(net.easyconn.ecsdk.ECTypes.ECTransportType r13) throws java.net.SocketException {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.i.m.onPhoneConnected(net.easyconn.ecsdk.ECTypes$ECTransportType):void");
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneControlCarRequest(java.lang.String str) {
        e.a.c.a.a.w("onPhoneControlCarRequest s = ", str);
        f.a.i.h.e eVar = this.F;
        if (eVar != null && ((f.a.k.g0) eVar) == null) {
            throw null;
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneDisconnected(int i) {
        this.b = false;
        e.e.a.g.c("EcSdkManager msg.what = removeAll", new java.lang.Object[0]);
        this.f2894e.removeCallbacksAndMessages(null);
        if (this.f2893d == null) {
            e.e.a.g.c("onPhoneDisconnected type is null", new java.lang.Object[0]);
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onPhoneDisconnected type is ");
            sbO.append(this.f2893d);
            e.e.a.g.a(sbO.toString());
        }
        h(1);
        G.execute(new f.a.i.i.m.b());
        f.a.i.h.d dVar = this.n;
        if (dVar != null) {
            ((f.a.k.m0.r0) dVar).a.p();
        }
        this.f2893d = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_MAX;
        e.e.a.g.a("resetMirrorSize");
        this.w = -1;
        this.x = -1;
        this.k = false;
        i();
        e.e.a.g.a("onPhoneDisconnected end");
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onPhoneNotification(net.easyconn.ecsdk.ECTypes.ECPhoneNotification eCPhoneNotification) {
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public int onStartCarMicRecord(net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) {
        f.a.i.h.a aVar = this.o;
        int iOnCarMicRecord = aVar != null ? aVar.onCarMicRecord(true, eCAudioInfo) : 0;
        e.a.c.a.a.v("onStartCarMicRecord ret = ", iOnCarMicRecord);
        return iOnCarMicRecord;
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onStopCarMicRecord() {
        e.e.a.g.a("onStopCarMicRecord ");
        f.a.i.h.a aVar = this.o;
        if (aVar != null) {
            aVar.onCarMicRecord(false, null);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onTransportStopedByApp() {
        e.e.a.g.a("onTransportStopedByApp");
        h(3);
        G.execute(new f.a.i.i.m.c(this));
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onVRTextReceived(net.easyconn.ecsdk.ECTypes.ECVRTextInfo eCVRTextInfo) {
        e.e.a.g.a("onVRTextReceived->vrTextInfo = " + eCVRTextInfo);
        f.a.i.h.b bVar = this.p;
        if (bVar != null) {
            bVar.onPhoneVRText(eCVRTextInfo);
        }
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onVRTipsReceived(java.lang.String str) {
        f.a.i.h.b bVar;
        e.a.c.a.a.w("onVRTipsReceived->s = ", str);
        boolean zB = f.a.i.m.g.B(this.i);
        e.a.c.a.a.z(" onVRTipsReceived enableVRTips = ", zB);
        if (!zB || (bVar = this.p) == null) {
            return;
        }
        bVar.onVRTips(str);
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onVirtualInstStateChanged(net.easyconn.ecsdk.ECTypes.ECVirtualInstStateData eCVirtualInstStateData) {
    }

    @Override // net.easyconn.ecsdk.IECCallback
    public void onWeatherReceived(java.lang.String str) {
        f.a.i.h.b bVar;
        e.a.c.a.a.w("onWeatherReceived->info = ", str);
        boolean zC = f.a.i.m.g.C(this.i);
        e.a.c.a.a.z(" onWeatherReceived enableWeatherInfo = ", zC);
        if (!zC || (bVar = this.p) == null) {
            return;
        }
        bVar.onWeatherInfo(str);
    }
}
