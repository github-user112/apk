package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class ImprintHandler implements com.umeng.commonsdk.utils.FileLockCallback {
    public static final java.lang.String a = "ImprintHandler";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1524c = ".imprint";
    public static android.content.Context k = null;
    public static com.umeng.commonsdk.utils.FileLockUtil l = null;
    public static final int m = 0;
    public static final int n = 1;

    /* renamed from: e, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.internal.d f1528e;
    public com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a h = new com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a();
    public com.umeng.commonsdk.statistics.proto.d i = null;
    public static java.lang.Object b = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f1525d = "pbl0".getBytes();

    /* renamed from: f, reason: collision with root package name */
    public static java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> f1526f = new java.util.HashMap();

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.Object f1527g = new java.lang.Object();
    public static com.umeng.commonsdk.statistics.idtracking.ImprintHandler j = null;
    public static java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback> o = new java.util.HashMap();
    public static java.lang.Object p = new java.lang.Object();

    public static class a {
        public java.util.Map<java.lang.String, java.lang.String> a = new java.util.HashMap();

        public a() {
        }

        public a(com.umeng.commonsdk.statistics.proto.d dVar) {
            a(dVar);
        }

        private synchronized void b(com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.commonsdk.statistics.proto.e eVar;
            if (dVar != null) {
                if (dVar.e()) {
                    java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
                    for (java.lang.String str : mapC.keySet()) {
                        if (!android.text.TextUtils.isEmpty(str) && (eVar = mapC.get(str)) != null) {
                            java.lang.String strB = eVar.b();
                            if (!android.text.TextUtils.isEmpty(strB)) {
                                this.a.put(str, strB);
                                if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                                    android.util.Log.i(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a, "imKey is " + str + ", imValue is " + strB);
                                }
                            }
                        }
                    }
                }
            }
        }

        public synchronized java.lang.String a(java.lang.String str, java.lang.String str2) {
            if (!android.text.TextUtils.isEmpty(str) && this.a.size() > 0) {
                java.lang.String str3 = this.a.get(str);
                return !android.text.TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }

        public void a(com.umeng.commonsdk.statistics.proto.d dVar) {
            if (dVar == null) {
                return;
            }
            b(dVar);
        }

        public synchronized void a(java.lang.String str) {
            if (this.a != null && this.a.size() > 0 && !android.text.TextUtils.isEmpty(str) && this.a.containsKey(str)) {
                this.a.remove(str);
            }
        }
    }

    public ImprintHandler(android.content.Context context) {
        k = context.getApplicationContext();
    }

    private com.umeng.commonsdk.statistics.proto.d a(com.umeng.commonsdk.statistics.proto.d dVar, com.umeng.commonsdk.statistics.proto.d dVar2, java.util.Map<java.lang.String, java.lang.String> map) {
        com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback uMImprintPreProcessCallback;
        java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList;
        if (dVar2 == null) {
            return dVar;
        }
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e> entry : dVar2.c().entrySet()) {
            int i = 0;
            if (entry.getValue().d()) {
                java.lang.String key = entry.getKey();
                java.lang.String str = entry.getValue().a;
                synchronized (p) {
                    if (!android.text.TextUtils.isEmpty(key) && o.containsKey(key) && (uMImprintPreProcessCallback = o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str)) {
                        i = 1;
                    }
                }
                if (i == 0) {
                    mapC.put(entry.getKey(), entry.getValue());
                    synchronized (f1527g) {
                        if (!android.text.TextUtils.isEmpty(key) && f1526f.containsKey(key) && f1526f.get(key) != null) {
                            map.put(key, str);
                        }
                    }
                } else {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> merge: [" + key + "] should be ignored.");
                }
            } else {
                java.lang.String key2 = entry.getKey();
                synchronized (f1527g) {
                    if (!android.text.TextUtils.isEmpty(key2) && f1526f.containsKey(key2) && (arrayList = f1526f.get(key2)) != null) {
                        while (i < arrayList.size()) {
                            arrayList.get(i).onImprintValueChanged(key2, null);
                            i++;
                        }
                    }
                }
                mapC.remove(key2);
                this.h.a(key2);
            }
        }
        dVar.a(dVar2.f());
        dVar.a(a(dVar));
        return dVar;
    }

    private void a(java.io.File file) {
        if (this.i == null) {
            return;
        }
        try {
            synchronized (b) {
                byte[] bArrA = new com.umeng.analytics.pro.az().a(this.i);
                java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file);
                try {
                    fileOutputStream.write(bArrA);
                    fileOutputStream.flush();
                } finally {
                    com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(fileOutputStream);
                }
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(java.lang.String str, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback uMImprintChangeCallback) {
        synchronized (f1527g) {
            try {
                int i = 0;
                if (f1526f.containsKey(str)) {
                    java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList = f1526f.get(str);
                    int size = arrayList.size();
                    com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: before add: callbacks size is: " + size);
                    while (i < size) {
                        if (uMImprintChangeCallback == arrayList.get(i)) {
                            com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i++;
                    }
                    arrayList.add(uMImprintChangeCallback);
                    com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList.size());
                } else {
                    java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList2 = new java.util.ArrayList<>();
                    int size2 = arrayList2.size();
                    com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: before add: callbacks size is: " + size2);
                    while (i < size2) {
                        if (uMImprintChangeCallback == arrayList2.get(i)) {
                            com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i++;
                    }
                    arrayList2.add(uMImprintChangeCallback);
                    com.umeng.commonsdk.statistics.common.ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList2.size());
                    f1526f.put(str, arrayList2);
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(k, th);
            }
        }
    }

    private boolean a(java.lang.String str, java.lang.String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009d A[Catch: all -> 0x009f, DONT_GENERATE, TryCatch #1 {, blocks: (B:24:0x009d, B:23:0x0098, B:8:0x000d, B:10:0x0015, B:12:0x0023, B:14:0x003e, B:16:0x0044, B:17:0x005c, B:18:0x005f, B:20:0x007d), top: B:30:0x000d, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(java.lang.String r5, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 != 0) goto La2
            if (r6 != 0) goto La
            goto La2
        La:
            java.lang.Object r0 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f1527g
            monitor-enter(r0)
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f1526f     // Catch: java.lang.Throwable -> L97
            boolean r1 = r1.containsKey(r5)     // Catch: java.lang.Throwable -> L97
            if (r1 == 0) goto L9d
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f1526f     // Catch: java.lang.Throwable -> L97
            java.lang.Object r1 = r1.get(r5)     // Catch: java.lang.Throwable -> L97
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch: java.lang.Throwable -> L97
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L97
            if (r2 <= 0) goto L9d
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L97
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r3.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = "--->>> removeCallback: before remove: callbacks size is: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L97
            r3.append(r2)     // Catch: java.lang.Throwable -> L97
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L97
            com.umeng.commonsdk.statistics.common.ULog.i(r3)     // Catch: java.lang.Throwable -> L97
            r3 = 0
        L3c:
            if (r3 >= r2) goto L5f
            java.lang.Object r4 = r1.get(r3)     // Catch: java.lang.Throwable -> L97
            if (r6 != r4) goto L5c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r6.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "--->>> removeCallback: remove index "
            r6.append(r2)     // Catch: java.lang.Throwable -> L97
            r6.append(r3)     // Catch: java.lang.Throwable -> L97
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L97
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L97
            r1.remove(r3)     // Catch: java.lang.Throwable -> L97
            goto L5f
        L5c:
            int r3 = r3 + 1
            goto L3c
        L5f:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r6.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "--->>> removeCallback: after remove: callbacks size is: "
            r6.append(r2)     // Catch: java.lang.Throwable -> L97
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L97
            r6.append(r2)     // Catch: java.lang.Throwable -> L97
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L97
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L97
            int r6 = r1.size()     // Catch: java.lang.Throwable -> L97
            if (r6 != 0) goto L9d
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r6.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r1 = "--->>> removeCallback: remove key from map: key = "
            r6.append(r1)     // Catch: java.lang.Throwable -> L97
            r6.append(r5)     // Catch: java.lang.Throwable -> L97
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L97
            com.umeng.commonsdk.statistics.common.ULog.i(r6)     // Catch: java.lang.Throwable -> L97
            java.util.Map<java.lang.String, java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback>> r6 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.f1526f     // Catch: java.lang.Throwable -> L97
            r6.remove(r5)     // Catch: java.lang.Throwable -> L97
            goto L9d
        L97:
            r5 = move-exception
            android.content.Context r6 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.k     // Catch: java.lang.Throwable -> L9f
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r6, r5)     // Catch: java.lang.Throwable -> L9f
        L9d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            return
        L9f:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            throw r5
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.ImprintHandler.b(java.lang.String, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback):void");
    }

    private boolean c(com.umeng.commonsdk.statistics.proto.d dVar) {
        if (!dVar.i().equals(a(dVar))) {
            return false;
        }
        for (com.umeng.commonsdk.statistics.proto.e eVar : dVar.c().values()) {
            byte[] bArrReverseHexString = com.umeng.commonsdk.statistics.common.DataHelper.reverseHexString(eVar.h());
            byte[] bArrA = a(eVar);
            for (int i = 0; i < 4; i++) {
                if (bArrReverseHexString[i] != bArrA[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    private com.umeng.commonsdk.statistics.proto.d d(com.umeng.commonsdk.statistics.proto.d dVar) {
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        if (mapC.containsKey(com.umeng.analytics.pro.ai.f1219f)) {
            mapC.remove(com.umeng.analytics.pro.ai.f1219f);
            this.h.a(com.umeng.analytics.pro.ai.f1219f);
            dVar.a(dVar.f());
            dVar.a(a(dVar));
        }
        return dVar;
    }

    private com.umeng.commonsdk.statistics.proto.d e(com.umeng.commonsdk.statistics.proto.d dVar) {
        java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList;
        boolean z;
        java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList2;
        com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback uMImprintPreProcessCallback;
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        java.util.ArrayList arrayList3 = new java.util.ArrayList(mapC.size() / 2);
        java.util.Iterator<java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e>> it = mapC.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e> next = it.next();
            if (next.getValue().d()) {
                java.lang.String key = next.getKey();
                java.lang.String str = next.getValue().a;
                synchronized (p) {
                    z = !android.text.TextUtils.isEmpty(key) && o.containsKey(key) && (uMImprintPreProcessCallback = o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str);
                }
                if (z) {
                    arrayList3.add(key);
                }
                synchronized (f1527g) {
                    if (!android.text.TextUtils.isEmpty(key) && f1526f.containsKey(key) && (arrayList2 = f1526f.get(key)) != null) {
                        for (int i = 0; i < arrayList2.size(); i++) {
                            arrayList2.get(i).onImprintValueChanged(key, str);
                        }
                    }
                }
            } else {
                arrayList3.add(next.getKey());
            }
        }
        java.util.Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            java.lang.String str2 = (java.lang.String) it2.next();
            synchronized (f1527g) {
                if (!android.text.TextUtils.isEmpty(str2) && f1526f.containsKey(str2) && (arrayList = f1526f.get(str2)) != null) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        arrayList.get(i2).onImprintValueChanged(str2, null);
                    }
                }
            }
            mapC.remove(str2);
        }
        return dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() {
        /*
            r5 = this;
            java.io.File r0 = new java.io.File
            android.content.Context r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.k
            java.io.File r1 = r1.getFilesDir()
            java.lang.String r2 = ".imprint"
            r0.<init>(r1, r2)
            java.lang.Object r1 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.b
            monitor-enter(r1)
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L60
            if (r0 != 0) goto L18
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L60
            return
        L18:
            r0 = 0
            android.content.Context r2 = com.umeng.commonsdk.statistics.idtracking.ImprintHandler.k     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L30
            java.lang.String r3 = ".imprint"
            java.io.FileInputStream r2 = r2.openFileInput(r3)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L30
            byte[] r0 = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(r2)     // Catch: java.lang.Exception -> L29 java.lang.Throwable -> L5b
        L25:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L60
            goto L36
        L29:
            r3 = move-exception
            goto L32
        L2b:
            r2 = move-exception
            r4 = r2
            r2 = r0
            r0 = r4
            goto L5c
        L30:
            r3 = move-exception
            r2 = r0
        L32:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L5b
            goto L25
        L36:
            if (r0 == 0) goto L59
            com.umeng.commonsdk.statistics.proto.d r2 = new com.umeng.commonsdk.statistics.proto.d     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r2.<init>()     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            com.umeng.analytics.pro.at r3 = new com.umeng.analytics.pro.at     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r3.<init>()     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r3.a(r2, r0)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r5.i = r2     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a r0 = r5.h     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r0.a(r2)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            com.umeng.commonsdk.statistics.proto.d r0 = r5.i     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            com.umeng.commonsdk.statistics.proto.d r0 = r5.d(r0)     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            r5.i = r0     // Catch: java.lang.Exception -> L55 java.lang.Throwable -> L60
            goto L59
        L55:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L60
        L59:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L60
            return
        L5b:
            r0 = move-exception
        L5c:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L60
            throw r0     // Catch: java.lang.Throwable -> L60
        L60:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L60
            goto L64
        L63:
            throw r0
        L64:
            goto L63
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.ImprintHandler.e():void");
    }

    public static synchronized com.umeng.commonsdk.statistics.idtracking.ImprintHandler getImprintService(android.content.Context context) {
        if (j == null) {
            j = new com.umeng.commonsdk.statistics.idtracking.ImprintHandler(context);
            com.umeng.commonsdk.utils.FileLockUtil fileLockUtil = new com.umeng.commonsdk.utils.FileLockUtil();
            l = fileLockUtil;
            if (fileLockUtil != null) {
                l.doFileOperateion(new java.io.File(k.getFilesDir(), f1524c), j, 0);
            }
        }
        return j;
    }

    public java.lang.String a(com.umeng.commonsdk.statistics.proto.d dVar) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.util.Map.Entry entry : new java.util.TreeMap(dVar.c()).entrySet()) {
            sb.append((java.lang.String) entry.getKey());
            if (((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).d()) {
                sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).b());
            }
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).e());
            sb.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).h());
        }
        sb.append(dVar.b);
        return com.umeng.commonsdk.statistics.common.HelperUtils.MD5(sb.toString()).toLowerCase(java.util.Locale.US);
    }

    public void a(com.umeng.commonsdk.statistics.internal.d dVar) {
        this.f1528e = dVar;
    }

    public void a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (p) {
            try {
                if (o.containsKey(str)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: unregist [" + str + "] success.");
                    f1526f.remove(str);
                } else {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: can't find [" + str + "], pls regist first.");
                }
            } finally {
            }
        }
    }

    public byte[] a() {
        try {
            synchronized (this) {
                if (this.i == null) {
                    return null;
                }
                if (this.i.b() <= 0) {
                    return null;
                }
                return new com.umeng.analytics.pro.az().a(this.i);
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(k, th);
            return null;
        }
    }

    public byte[] a(com.umeng.commonsdk.statistics.proto.e eVar) {
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(8);
        byteBufferAllocate.order(null);
        byteBufferAllocate.putLong(eVar.e());
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr = f1525d;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (bArrArray[i] ^ bArr[i]);
        }
        return bArr2;
    }

    public synchronized com.umeng.commonsdk.statistics.proto.d b() {
        return this.i;
    }

    public void b(com.umeng.commonsdk.statistics.proto.d dVar) {
        boolean z;
        if (dVar == null) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                com.umeng.commonsdk.debug.UMRTLog.d(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "Imprint is null");
                return;
            }
            return;
        }
        if (!c(dVar)) {
            if (com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "Imprint is not valid");
                return;
            }
            return;
        }
        boolean z2 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG;
        java.util.HashMap map = new java.util.HashMap();
        synchronized (this) {
            com.umeng.commonsdk.statistics.proto.d dVar2 = this.i;
            com.umeng.commonsdk.statistics.proto.d dVarD = d(dVar);
            java.lang.String strI = null;
            java.lang.String strI2 = dVar2 == null ? null : dVar2.i();
            com.umeng.commonsdk.statistics.proto.d dVarE = dVar2 == null ? e(dVarD) : a(dVar2, dVarD, map);
            this.i = dVarE;
            if (dVarE != null) {
                strI = dVarE.i();
            }
            z = !a(strI2, strI);
        }
        com.umeng.commonsdk.statistics.proto.d dVar3 = this.i;
        if (dVar3 != null) {
            boolean z3 = com.umeng.commonsdk.statistics.AnalyticsConstants.UM_DEBUG;
            if (z) {
                this.h.a(dVar3);
                com.umeng.commonsdk.statistics.internal.d dVar4 = this.f1528e;
                if (dVar4 != null) {
                    dVar4.onImprintChanged(this.h);
                }
            }
        }
        if (map.size() > 0) {
            synchronized (f1527g) {
                for (java.util.Map.Entry entry : map.entrySet()) {
                    java.lang.String str = (java.lang.String) entry.getKey();
                    java.lang.String str2 = (java.lang.String) entry.getValue();
                    if (!android.text.TextUtils.isEmpty(str) && f1526f.containsKey(str)) {
                        com.umeng.commonsdk.statistics.common.ULog.i("--->>> target imprint key is: " + str + "; value is: " + str2);
                        java.util.ArrayList<com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback> arrayList = f1526f.get(str);
                        if (arrayList != null) {
                            for (int i = 0; i < arrayList.size(); i++) {
                                arrayList.get(i).onImprintValueChanged(str, str2);
                            }
                        }
                    }
                }
            }
        }
    }

    public com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a c() {
        return this.h;
    }

    public void d() throws java.io.IOException {
        if (this.i == null || l == null) {
            return;
        }
        java.io.File file = new java.io.File(k.getFilesDir(), f1524c);
        if (!file.exists()) {
            try {
                try {
                    file.createNewFile();
                } catch (java.io.IOException e2) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(k, e2);
                }
            } catch (java.io.IOException unused) {
                file.createNewFile();
            }
        }
        l.doFileOperateion(file, j, 1);
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(java.io.File file, int i) {
        if (i == 0) {
            j.e();
        } else if (i == 1) {
            j.a(file);
        }
        return true;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(java.lang.String str) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(java.lang.String str, java.lang.Object obj) {
        return false;
    }

    public void registImprintCallback(java.lang.String str, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback uMImprintChangeCallback) {
        if (android.text.TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        a(str, uMImprintChangeCallback);
    }

    public void registPreProcessCallback(java.lang.String str, com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback uMImprintPreProcessCallback) {
        java.lang.String str2;
        java.lang.String str3;
        if (android.text.TextUtils.isEmpty(str) || uMImprintPreProcessCallback == null) {
            return;
        }
        synchronized (p) {
            try {
                if (o.containsKey(str)) {
                    str2 = com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG;
                    str3 = "--->>> key : " + str + " PreProcesser has registed!";
                } else {
                    o.put(str, uMImprintPreProcessCallback);
                    str2 = com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG;
                    str3 = "--->>> registPreProcessCallback: key : " + str + " regist success.";
                }
                com.umeng.commonsdk.debug.UMRTLog.i(str2, str3);
            } finally {
            }
        }
    }

    public void unregistImprintCallback(java.lang.String str, com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback uMImprintChangeCallback) {
        if (android.text.TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        b(str, uMImprintChangeCallback);
    }
}
