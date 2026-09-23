package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public final class j extends android.os.Handler {
    public static long a;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Aa f455c;

    /* renamed from: d, reason: collision with root package name */
    public final com.huawei.hms.scankit.HandlerC0101a f456d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f457e = true;

    /* renamed from: f, reason: collision with root package name */
    public int f458f = 50;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.scankit.j.a f459g;
    public android.graphics.Rect h;
    public int i;
    public com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate j;
    public boolean k;

    public static class a extends android.os.AsyncTask<java.lang.Object, java.lang.Object, java.lang.Object> {
        public java.lang.ref.WeakReference<com.huawei.hms.scankit.j> a;

        /* renamed from: e, reason: collision with root package name */
        public java.util.List<com.huawei.hms.scankit.p.Ba.a> f462e;

        /* renamed from: f, reason: collision with root package name */
        public java.util.List<com.huawei.hms.scankit.p.Ba.a> f463f;
        public boolean b = true;

        /* renamed from: c, reason: collision with root package name */
        public boolean f460c = false;

        /* renamed from: d, reason: collision with root package name */
        public int f461d = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f464g = 0;
        public int h = 0;

        public a(com.huawei.hms.scankit.j jVar) {
            this.a = new java.lang.ref.WeakReference<>(jVar);
        }

        private void a() {
            this.f461d = 0;
            this.f464g = 0;
        }

        public void a(int i) {
            this.f461d += i;
            this.f464g++;
        }

        public void a(java.util.List<android.graphics.Rect> list, int i, int i2, boolean z) {
            if (list == null) {
                com.huawei.hms.scankit.util.a.a("ScankitDecode", "areas is null");
                return;
            }
            if (list.size() == 0) {
                this.f463f = java.util.Collections.singletonList(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(-100, -100, 100, 100), 1000));
                return;
            }
            this.f463f = new java.util.ArrayList();
            for (android.graphics.Rect rect : list) {
                int iCenterX = ((rect.centerX() * 2000) / i) - 1000;
                int iCenterY = ((rect.centerY() * 2000) / i2) - 1000;
                int iWidth = ((rect.width() * 2000) / i) / 2;
                int iHeight = ((rect.height() * 2000) / i2) / 2;
                this.f463f.add(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(iCenterX - (iWidth / 2), iCenterY - (iHeight / 2), iCenterX + iWidth, iCenterY + iHeight), 1000 / list.size()));
            }
            list.clear();
        }

        public void b(int i) {
            java.lang.String string;
            this.h = i;
            com.huawei.hms.scankit.j jVar = this.a.get();
            if (jVar != null) {
                try {
                    jVar.a(this.h, this.f463f);
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("ScanCode handle global value");
                    sb.append(this.h);
                    com.huawei.hms.scankit.util.a.c("DecodeHandler", sb.toString());
                } catch (java.lang.RuntimeException e2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("RuntimeException: ");
                    sbO.append(e2.getMessage());
                    string = sbO.toString();
                    com.huawei.hms.scankit.util.a.b("DecodeHandler", string);
                } catch (java.lang.Exception unused) {
                    string = "Exception";
                    com.huawei.hms.scankit.util.a.b("DecodeHandler", string);
                }
            }
        }

        public void b(java.util.List<android.graphics.Rect> list, int i, int i2, boolean z) {
            if (list == null) {
                com.huawei.hms.scankit.util.a.a("ScankitDecode", "areas is null");
                return;
            }
            if (list.size() == 0) {
                this.f462e = java.util.Collections.singletonList(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(-100, -100, 100, 100), 1000));
                return;
            }
            this.f462e = new java.util.ArrayList();
            if (z) {
                int i3 = (i2 > i ? i2 - i : i - i2) >> 1;
                for (android.graphics.Rect rect : list) {
                    int iCenterY = (((rect.centerY() + i3) * 2000) / i) - 1000;
                    int iCenterX = ((rect.centerX() * 2000) / i2) - 1000;
                    int iHeight = ((rect.height() * 2000) / i) / 2;
                    int iWidth = ((rect.width() * 2000) / i2) / 2;
                    this.f462e.add(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(iCenterY - (iHeight / 2), iCenterX - (iWidth / 2), iCenterY + iHeight, iCenterX + iWidth), 1000 / list.size()));
                }
                return;
            }
            for (android.graphics.Rect rect2 : list) {
                int iCenterX2 = ((rect2.centerX() * 2000) / i) - 1000;
                int iCenterY2 = ((rect2.centerY() * 2000) / i2) - 1000;
                int iWidth2 = ((rect2.width() * 2000) / i) / 2;
                int iHeight2 = ((rect2.height() * 2000) / i2) / 2;
                this.f462e.add(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(iCenterX2 - (iWidth2 / 2), iCenterY2 - (iHeight2 / 2), iCenterX2 + iWidth2, iCenterY2 + iHeight2), 1000 / list.size()));
            }
            list.clear();
        }

        @Override // android.os.AsyncTask
        public java.lang.Object doInBackground(java.lang.Object... objArr) throws java.lang.InterruptedException {
            java.lang.String string;
            android.util.Log.i("ScankitDecode", "doInBackground: ");
            while (!this.f460c) {
                if (this.b) {
                    try {
                        java.lang.Thread.sleep(400L);
                    } catch (java.lang.InterruptedException unused) {
                        com.huawei.hms.scankit.util.a.c("ScankitDecode", "doInBackground  get InterruptedException  error!!!");
                    }
                    this.b = false;
                } else {
                    com.huawei.hms.scankit.j jVar = this.a.get();
                    int i = this.f464g;
                    if (i == 0) {
                        this.b = true;
                    } else if (jVar != null) {
                        try {
                            jVar.a(this.f461d / i, this.f462e);
                            java.lang.StringBuilder sb = new java.lang.StringBuilder();
                            sb.append("ScanCode handle auto value");
                            sb.append(this.f461d / this.f464g);
                            com.huawei.hms.scankit.util.a.c("DecodeHandler", sb.toString());
                            a();
                            this.b = true;
                        } catch (java.lang.RuntimeException e2) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("RuntimeException: ");
                            sbO.append(e2.getMessage());
                            string = sbO.toString();
                            com.huawei.hms.scankit.util.a.b("DecodeHandler", string);
                        } catch (java.lang.Exception unused2) {
                            string = "Exception";
                            com.huawei.hms.scankit.util.a.b("DecodeHandler", string);
                        }
                    }
                }
            }
            return null;
        }
    }

    public j(android.content.Context context, com.huawei.hms.scankit.p.Aa aa, com.huawei.hms.scankit.HandlerC0101a handlerC0101a, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> map, android.graphics.Rect rect, boolean z) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        this.k = false;
        this.b = context;
        this.f455c = aa;
        this.f456d = handlerC0101a;
        this.h = rect;
        if (this.f459g == null) {
            com.huawei.hms.scankit.j.a aVar = new com.huawei.hms.scankit.j.a(this);
            this.f459g = aVar;
            aVar.executeOnExecutor(android.os.AsyncTask.THREAD_POOL_EXECUTOR, new java.lang.Object[0]);
        }
        this.i = 0;
        this.k = z;
        a(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[Catch: RemoteException -> 0x005b, TryCatch #3 {RemoteException -> 0x005b, blocks: (B:21:0x003f, B:23:0x0043, B:25:0x0050, B:27:0x0054), top: B:34:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0050 A[Catch: RemoteException -> 0x005b, TryCatch #3 {RemoteException -> 0x005b, blocks: (B:21:0x003f, B:23:0x0043, B:25:0x0050, B:27:0x0054), top: B:34:0x003f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.content.Context r4) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.ClassNotFoundException {
        /*
            r3 = this;
            java.lang.String r0 = "ScankitDecode"
            boolean r1 = r3.k     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            if (r1 == 0) goto L12
            java.lang.String r4 = "use local decoder"
            android.util.Log.d(r0, r4)     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            java.lang.Class<com.huawei.hms.scankit.DecoderCreator> r4 = com.huawei.hms.scankit.DecoderCreator.class
            java.lang.Object r4 = r4.newInstance()     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            goto L3f
        L12:
            java.lang.String r1 = "use remote decoder"
            android.util.Log.d(r0, r1)     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            android.content.Context r4 = com.huawei.hms.hmsscankit.j.d(r4)     // Catch: java.lang.Throwable -> L1b java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
        L1b:
            java.lang.ClassLoader r1 = r4.getClassLoader()     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            java.lang.String r2 = "com.huawei.hms.scankit.DecoderCreator"
            java.lang.Class r1 = r1.loadClass(r2)     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            java.lang.ClassLoader r4 = r4.getClassLoader()     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            java.lang.String r2 = "com.huawei.hms.scankit.aiscan.common.BarcodeFormat"
            r4.loadClass(r2)     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            java.lang.Object r4 = r1.newInstance()     // Catch: java.lang.InstantiationException -> L33 java.lang.ClassNotFoundException -> L36 java.lang.IllegalAccessException -> L39
            goto L3f
        L33:
            java.lang.String r4 = "InstantiationException"
            goto L3b
        L36:
            java.lang.String r4 = "ClassNotFoundException"
            goto L3b
        L39:
            java.lang.String r4 = "IllegalAccessException"
        L3b:
            com.huawei.hms.scankit.util.a.a(r0, r4)
            r4 = 0
        L3f:
            boolean r1 = r4 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L5b
            if (r1 == 0) goto L50
            android.os.IBinder r4 = (android.os.IBinder) r4     // Catch: android.os.RemoteException -> L5b
            com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator r4 = com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub.asInterface(r4)     // Catch: android.os.RemoteException -> L5b
            com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate r4 = r4.newRemoteFrameDecoderDelegate()     // Catch: android.os.RemoteException -> L5b
            r3.j = r4     // Catch: android.os.RemoteException -> L5b
            return
        L50:
            com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate r4 = r3.j     // Catch: android.os.RemoteException -> L5b
            if (r4 != 0) goto L60
            com.huawei.hms.scankit.s r4 = com.huawei.hms.scankit.s.a()     // Catch: android.os.RemoteException -> L5b
            r3.j = r4     // Catch: android.os.RemoteException -> L5b
            goto L60
        L5b:
            java.lang.String r4 = "RemoteException"
            com.huawei.hms.scankit.util.a.a(r0, r4)
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.j.a(android.content.Context):void");
    }

    public static void a(byte[] bArr, int i, int i2, android.os.Bundle bundle) throws java.io.IOException {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        android.graphics.YuvImage yuvImage = new android.graphics.YuvImage(bArr, 17, i, i2, null);
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        yuvImage.compressToJpeg(new android.graphics.Rect(0, 0, i, i2), 100, byteArrayOutputStream);
        bundle.putByteArray("barcode_bitmap", byteArrayOutputStream.toByteArray());
        bundle.putFloat("barcode_scaled_factor", 1.0f);
        try {
            byteArrayOutputStream.close();
        } catch (java.io.IOException unused) {
            android.util.Log.e("ScankitDecode", "RemoteException");
        }
    }

    private void a(byte[] bArr, boolean z) throws java.io.IOException {
        com.huawei.hms.scankit.aiscan.common.x[] xVarArrDecode;
        int i = this.f455c.e().x;
        int i2 = this.f455c.e().y;
        android.content.Context context = this.b;
        int rotation = (context == null || !(context instanceof android.app.Activity)) ? 0 : ((android.app.Activity) context).getWindowManager().getDefaultDisplay().getRotation();
        if (this.f456d != null) {
            com.huawei.hms.scankit.p.Kc.a aVarA = com.huawei.hms.scankit.C0111e.b != null ? com.huawei.hms.scankit.C0111e.b.a(false, i * i2) : null;
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putParcelable("Rect", this.h);
            android.graphics.Point pointA = com.huawei.hms.scankit.util.c.a(this.b);
            if (pointA != null) {
                bundle.putParcelable("Screen", pointA);
            }
            try {
                xVarArrDecode = this.j.decode(bArr, i, i2, rotation, this.f456d.b(), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle));
            } catch (android.os.RemoteException unused) {
                android.util.Log.e("ScankitDecode", "RemoteException");
                xVarArrDecode = null;
            }
            if (xVarArrDecode == null || xVarArrDecode.length <= 0 || xVarArrDecode[0] == null) {
                this.f456d.sendEmptyMessage(com.huawei.hms.scankit.R.id.scankit_decode_failed);
                if (com.huawei.hms.scankit.C0111e.b != null) {
                    com.huawei.hms.scankit.C0111e.b.a((com.huawei.hms.ml.scan.HmsScan[]) null, aVarA);
                    return;
                }
                return;
            }
            if (this.f456d.d() && xVarArrDecode[0].j() != 1.0f && java.lang.System.currentTimeMillis() - a > 1000) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("need to zoom");
                sbO.append(xVarArrDecode[0].j());
                com.huawei.hms.scankit.util.a.c("ScankitDecode", sbO.toString());
                if (a(xVarArrDecode[0].j(), xVarArrDecode, aVarA)) {
                    a = java.lang.System.currentTimeMillis();
                    return;
                }
            }
            if (xVarArrDecode[0].i() == null) {
                if (xVarArrDecode[0].k()) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("ScanCode need to globalexposure");
                    sbO2.append(xVarArrDecode[0].f());
                    com.huawei.hms.scankit.util.a.c("ScankitDecode", sbO2.toString());
                    this.f459g.a(xVarArrDecode[0].e(), i, i2, false);
                    this.f459g.b(xVarArrDecode[0].f());
                } else {
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("ScanCode need to exposure");
                    sbO3.append(xVarArrDecode[0].d());
                    com.huawei.hms.scankit.util.a.c("ScankitDecode", sbO3.toString());
                    this.f459g.a(xVarArrDecode[0].d());
                    this.f459g.b(xVarArrDecode[0].c(), i, i2, z);
                }
            }
            a(xVarArrDecode, bArr, i, i2, aVarA);
        }
    }

    private void a(com.huawei.hms.scankit.aiscan.common.x[] xVarArr, byte[] bArr, int i, int i2, com.huawei.hms.scankit.p.Kc.a aVar) throws java.io.IOException {
        if (this.f456d != null) {
            com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVarArr);
            android.os.Message messageObtain = android.os.Message.obtain(this.f456d, com.huawei.hms.scankit.R.id.scankit_decode_succeeded, hmsScanArrA);
            android.util.Log.d("ScankitDecode", "scankit decode succeed msg");
            if (com.huawei.hms.scankit.C0111e.b != null) {
                com.huawei.hms.scankit.C0111e.b.a(hmsScanArrA, aVar);
            }
            if (this.f456d.c()) {
                android.os.Bundle bundle = new android.os.Bundle();
                a(bArr, i, i2, bundle);
                messageObtain.setData(bundle);
            }
            messageObtain.sendToTarget();
        }
    }

    private boolean a(float f2, com.huawei.hms.scankit.aiscan.common.x[] xVarArr, com.huawei.hms.scankit.p.Kc.a aVar) {
        if (!b(f2)) {
            return false;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = com.huawei.hms.scankit.R.id.scankit_decode_succeeded;
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVarArr);
        messageObtain.obj = hmsScanArrA;
        if (com.huawei.hms.scankit.C0111e.b != null) {
            com.huawei.hms.scankit.C0111e.b.a(hmsScanArrA, aVar);
        }
        this.f456d.sendMessage(messageObtain);
        return true;
    }

    private boolean c() {
        android.content.Context context = this.b;
        if (context == null) {
            return true;
        }
        java.lang.Object systemService = context.getSystemService("window");
        if (!(systemService instanceof android.view.WindowManager)) {
            com.huawei.hms.scankit.util.a.c("ScankitDecode", "isScreenPortrait  getSystemService  WINDOW_SERVICE  error!!!");
            return true;
        }
        android.view.Display defaultDisplay = ((android.view.WindowManager) systemService).getDefaultDisplay();
        android.graphics.Point point = new android.graphics.Point();
        defaultDisplay.getSize(point);
        return point.x < point.y;
    }

    public int a(float f2) {
        java.util.List<java.lang.Integer> listA = a();
        if (listA == null) {
            return -3;
        }
        if (listA.size() <= 0) {
            return -4;
        }
        if (f2 == 1.0f) {
            return 0;
        }
        if (f2 == b()) {
            return listA.size() - 1;
        }
        for (int i = 1; i < listA.size(); i++) {
            float f3 = 100.0f * f2;
            if (listA.get(i).intValue() >= f3 && listA.get(i - 1).intValue() <= f3) {
                return i;
            }
        }
        return -1;
    }

    public java.util.List<java.lang.Integer> a() {
        return this.f455c.g().a();
    }

    public void a(int i, java.util.List<com.huawei.hms.scankit.p.Ba.a> list) {
        com.huawei.hms.scankit.p.Aa aa;
        com.huawei.hms.scankit.p.C0235ya c0235yaB = this.f455c.b();
        int iB = c0235yaB.b();
        int iC = c0235yaB.c();
        int iA = c0235yaB.a();
        if (i == 0) {
            return;
        }
        int i2 = iA + i;
        if (i2 <= iB) {
            iB = i2 < iC ? iC : i2;
        }
        this.f455c.b(iB);
        com.huawei.hms.scankit.p.Ba baC = this.f455c.c();
        android.graphics.Rect rectB = baC.b();
        if (baC.a() > 0) {
            if (baC.a() == 1) {
                int iCenterX = rectB.centerX();
                int iCenterY = rectB.centerY();
                if (java.lang.Math.sqrt((iCenterY - list.get(0).a.centerY()) + (iCenterY - list.get(0).a.centerY()) + ((iCenterX - list.get(0).a.centerX()) * (iCenterX - list.get(0).a.centerX()))) <= this.f458f) {
                    return;
                }
                list.set(0, new com.huawei.hms.scankit.p.Ba.a(list.get(0).a, 1000));
                aa = this.f455c;
                list = list.subList(0, 1);
            } else {
                aa = this.f455c;
            }
            aa.a(list);
        }
    }

    public float b() {
        if (a() == null) {
            return 1.0f;
        }
        return java.lang.Math.round(r0.get(r0.size() - 1).intValue() / 100.0f);
    }

    public boolean b(float f2) {
        java.lang.String str;
        boolean z;
        com.huawei.hms.scankit.HandlerC0101a handlerC0101a = this.f456d;
        if (handlerC0101a != null && handlerC0101a.a()) {
            return false;
        }
        try {
            com.huawei.hms.scankit.p.Ca caG = this.f455c.g();
            if (caG == null) {
                com.huawei.hms.scankit.util.a.c("ScankitDecode", "Zoom not supported,data is null");
                return false;
            }
            int iC = caG.c();
            int iB = caG.b();
            float fIntValue = ((r1.get(iB).intValue() * 1.0f) / 100.0f) * f2;
            if (((int) (fIntValue * 100.0f)) > caG.a().get(iC).intValue()) {
                fIntValue = (iC * 1.0f) / 100.0f;
            }
            if (!this.f455c.i()) {
                com.huawei.hms.scankit.util.a.c("ScankitDecode", "Zoom not supported");
                return false;
            }
            int iA = a(fIntValue);
            if (iA > iB) {
                this.f455c.c(iA);
                z = true;
            } else {
                this.f455c.c(iB);
                z = false;
            }
            this.f455c.a(java.util.Collections.singletonList(new com.huawei.hms.scankit.p.Ba.a(new android.graphics.Rect(-150, -150, 150, 150), 1000)));
            return z;
        } catch (java.lang.RuntimeException unused) {
            str = "Zoom not supported,RuntimeException happen";
            com.huawei.hms.scankit.util.a.b("ScankitDecode", str);
            return false;
        } catch (java.lang.Exception unused2) {
            str = "Zoom not supported,Exception happen";
            com.huawei.hms.scankit.util.a.b("ScankitDecode", str);
            return false;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) throws java.io.IOException {
        if (message == null || !this.f457e) {
            return;
        }
        int i = message.what;
        if (i == com.huawei.hms.scankit.R.id.scankit_decode) {
            int i2 = this.i;
            if (i2 <= 1) {
                this.i = i2 + 1;
                this.f456d.sendEmptyMessage(com.huawei.hms.scankit.R.id.scankit_decode_failed);
                return;
            } else {
                java.lang.Object obj = message.obj;
                if (obj instanceof byte[]) {
                    a((byte[]) obj, c());
                    return;
                }
                return;
            }
        }
        if (i != com.huawei.hms.scankit.R.id.scankit_quit) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("handleMessage  message.what:");
            sbO.append(message.what);
            com.huawei.hms.scankit.util.a.c("ScankitDecode", sbO.toString());
        } else {
            this.f457e = false;
            com.huawei.hms.scankit.j.a aVar = this.f459g;
            if (aVar != null) {
                aVar.f460c = true;
                this.f459g.cancel(true);
            }
            android.os.Looper.myLooper().quit();
        }
    }
}
