package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class H {
    public static com.tencent.bugly.proguard.H a;
    public static final long b = java.lang.System.currentTimeMillis();

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1069c;

    /* renamed from: f, reason: collision with root package name */
    public android.content.SharedPreferences f1072f;

    /* renamed from: e, reason: collision with root package name */
    public java.util.Map<java.lang.Integer, java.util.Map<java.lang.String, com.tencent.bugly.proguard.E>> f1071e = new java.util.HashMap();

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1070d = com.tencent.bugly.crashreport.common.info.a.n().h;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.proguard.E e2;
            try {
                if (android.text.TextUtils.isEmpty(com.tencent.bugly.proguard.H.this.f1070d)) {
                    return;
                }
                java.util.List<com.tencent.bugly.proguard.E> listC = com.tencent.bugly.proguard.H.this.c(this.a);
                if (listC == null) {
                    listC = new java.util.ArrayList();
                }
                if (com.tencent.bugly.proguard.H.this.f1071e.get(java.lang.Integer.valueOf(this.a)) == null) {
                    com.tencent.bugly.proguard.H.this.f1071e.put(java.lang.Integer.valueOf(this.a), new java.util.HashMap());
                }
                if (((java.util.Map) com.tencent.bugly.proguard.H.this.f1071e.get(java.lang.Integer.valueOf(this.a))).get(com.tencent.bugly.proguard.H.this.f1070d) == null) {
                    e2 = new com.tencent.bugly.proguard.E();
                    e2.a = this.a;
                    e2.f1068g = com.tencent.bugly.proguard.H.b;
                    e2.b = com.tencent.bugly.proguard.H.this.f1070d;
                    e2.f1067f = com.tencent.bugly.crashreport.common.info.a.n().F;
                    e2.f1066e = com.tencent.bugly.crashreport.common.info.a.n().l;
                    e2.f1064c = java.lang.System.currentTimeMillis();
                    e2.f1065d = this.b;
                    ((java.util.Map) com.tencent.bugly.proguard.H.this.f1071e.get(java.lang.Integer.valueOf(this.a))).put(com.tencent.bugly.proguard.H.this.f1070d, e2);
                } else {
                    e2 = (com.tencent.bugly.proguard.E) ((java.util.Map) com.tencent.bugly.proguard.H.this.f1071e.get(java.lang.Integer.valueOf(this.a))).get(com.tencent.bugly.proguard.H.this.f1070d);
                    e2.f1065d = this.b;
                }
                java.util.ArrayList arrayList = new java.util.ArrayList();
                boolean z = false;
                for (com.tencent.bugly.proguard.E e3 : listC) {
                    if (com.tencent.bugly.proguard.H.c(e3, e2)) {
                        z = true;
                        e3.f1065d = e2.f1065d;
                    }
                    if (com.tencent.bugly.proguard.H.d(e3, e2)) {
                        arrayList.add(e3);
                    }
                }
                listC.removeAll(arrayList);
                if (!z) {
                    listC.add(e2);
                }
                com.tencent.bugly.proguard.H.this.a(this.a, (int) listC);
            } catch (java.lang.Exception unused) {
                com.tencent.bugly.proguard.aa.b("saveCrashRecord failed", new java.lang.Object[0]);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ int a;

        public b(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zB = com.tencent.bugly.proguard.H.this.b(this.a);
            com.tencent.bugly.proguard.H.this.f1072f.edit().putBoolean(this.a + "_" + com.tencent.bugly.proguard.H.this.f1070d, !zB).commit();
        }
    }

    public H(android.content.Context context) {
        this.f1069c = context;
        this.f1072f = context.getSharedPreferences("crashrecord", 0);
    }

    public static synchronized com.tencent.bugly.proguard.H a() {
        return a;
    }

    public static synchronized com.tencent.bugly.proguard.H a(android.content.Context context) {
        if (a == null) {
            a = new com.tencent.bugly.proguard.H(context);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f A[Catch: all -> 0x0053, Exception -> 0x0055, TRY_ENTER, TryCatch #5 {Exception -> 0x0055, blocks: (B:7:0x0006, B:9:0x000c, B:11:0x001a, B:15:0x0032, B:31:0x004f, B:32:0x0052), top: B:42:0x0006, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T extends java.util.List<?>> void a(int r5, T r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r6 != 0) goto L5
            monitor-exit(r4)
            return
        L5:
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            android.content.Context r2 = r4.f1069c     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.String r3 = "crashrecord"
            java.io.File r2 = r2.getDir(r3, r0)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r3.<init>()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r3.append(r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.String r5 = ""
            r3.append(r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r1.<init>(r2, r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            r5 = 0
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r2.writeObject(r6)     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L4a
        L32:
            r2.close()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
            goto L5c
        L36:
            r5 = move-exception
            goto L3d
        L38:
            r6 = move-exception
            goto L4d
        L3a:
            r6 = move-exception
            r2 = r5
            r5 = r6
        L3d:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L4a
            java.lang.String r5 = "open record file error"
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L4a
            com.tencent.bugly.proguard.aa.c(r5, r6)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L5c
            goto L32
        L4a:
            r5 = move-exception
            r6 = r5
            r5 = r2
        L4d:
            if (r5 == 0) goto L52
            r5.close()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
        L52:
            throw r6     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L55
        L53:
            r5 = move-exception
            goto L5e
        L55:
            java.lang.Object[] r5 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L53
            java.lang.String r6 = "writeCrashRecord error"
            com.tencent.bugly.proguard.aa.b(r6, r5)     // Catch: java.lang.Throwable -> L53
        L5c:
            monitor-exit(r4)
            return
        L5e:
            monitor-exit(r4)
            goto L61
        L60:
            throw r5
        L61:
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.H.a(int, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean b(int i) {
        try {
            java.util.List<com.tencent.bugly.proguard.E> listC = c(i);
            if (listC == null) {
                return false;
            }
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            for (com.tencent.bugly.proguard.E e2 : listC) {
                if (e2.b != null && e2.b.equalsIgnoreCase(this.f1070d) && e2.f1065d > 0) {
                    arrayList.add(e2);
                }
                if (e2.f1064c + 86400000 < jCurrentTimeMillis) {
                    arrayList2.add(e2);
                }
            }
            java.util.Collections.sort(arrayList);
            if (arrayList.size() < 2) {
                listC.removeAll(arrayList2);
                a(i, (int) listC);
                return false;
            }
            if (arrayList.size() <= 0 || ((com.tencent.bugly.proguard.E) arrayList.get(arrayList.size() - 1)).f1064c + 86400000 >= jCurrentTimeMillis) {
                return true;
            }
            listC.clear();
            a(i, (int) listC);
            return false;
        } catch (java.lang.Exception unused) {
            com.tencent.bugly.proguard.aa.b("isFrequentCrash failed", new java.lang.Object[0]);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0059 A[Catch: all -> 0x0063, Exception -> 0x0065, PHI: r6
  0x0059: PHI (r6v12 java.io.ObjectInputStream) = (r6v11 java.io.ObjectInputStream), (r6v13 java.io.ObjectInputStream) binds: [B:24:0x004c, B:29:0x0057] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #6 {Exception -> 0x0065, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0017, B:14:0x0039, B:32:0x005f, B:33:0x0062, B:30:0x0059), top: B:43:0x0003, outer: #1 }] */
    /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized <T extends java.util.List<?>> T c(int r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            android.content.Context r3 = r5.f1069c     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            java.lang.String r4 = "crashrecord"
            java.io.File r3 = r3.getDir(r4, r1)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            r4.<init>()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            r4.append(r6)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            java.lang.String r6 = ""
            r4.append(r6)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            r2.<init>(r3, r6)     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            boolean r6 = r2.exists()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            if (r6 != 0) goto L29
            monitor-exit(r5)
            return r0
        L29:
            java.io.ObjectInputStream r6 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L40 java.lang.ClassNotFoundException -> L44 java.io.IOException -> L4f
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L40 java.lang.ClassNotFoundException -> L44 java.io.IOException -> L4f
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L40 java.lang.ClassNotFoundException -> L44 java.io.IOException -> L4f
            r6.<init>(r3)     // Catch: java.lang.Throwable -> L40 java.lang.ClassNotFoundException -> L44 java.io.IOException -> L4f
            java.lang.Object r2 = r6.readObject()     // Catch: java.lang.Throwable -> L3e java.lang.ClassNotFoundException -> L45 java.io.IOException -> L50
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L3e java.lang.ClassNotFoundException -> L45 java.io.IOException -> L50
            r6.close()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            monitor-exit(r5)
            return r2
        L3e:
            r2 = move-exception
            goto L5d
        L40:
            r6 = move-exception
            r2 = r6
            r6 = r0
            goto L5d
        L44:
            r6 = r0
        L45:
            java.lang.String r2 = "get object error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L3e
            com.tencent.bugly.proguard.aa.c(r2, r3)     // Catch: java.lang.Throwable -> L3e
            if (r6 == 0) goto L6c
            goto L59
        L4f:
            r6 = r0
        L50:
            java.lang.String r2 = "open record file error"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L3e
            com.tencent.bugly.proguard.aa.c(r2, r3)     // Catch: java.lang.Throwable -> L3e
            if (r6 == 0) goto L6c
        L59:
            r6.close()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
            goto L6c
        L5d:
            if (r6 == 0) goto L62
            r6.close()     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
        L62:
            throw r2     // Catch: java.lang.Throwable -> L63 java.lang.Exception -> L65
        L63:
            r6 = move-exception
            goto L6e
        L65:
            java.lang.Object[] r6 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L63
            java.lang.String r1 = "readCrashRecord error"
            com.tencent.bugly.proguard.aa.b(r1, r6)     // Catch: java.lang.Throwable -> L63
        L6c:
            monitor-exit(r5)
            return r0
        L6e:
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.H.c(int):java.util.List");
    }

    public static boolean c(com.tencent.bugly.proguard.E e2, com.tencent.bugly.proguard.E e3) {
        java.lang.String str;
        return e2.f1068g == e3.f1068g && (str = e2.b) != null && str.equalsIgnoreCase(e3.b);
    }

    public static boolean d(com.tencent.bugly.proguard.E e2, com.tencent.bugly.proguard.E e3) {
        java.lang.String str;
        java.lang.String str2 = e2.f1066e;
        return !(str2 == null || str2.equalsIgnoreCase(e3.f1066e)) || !((str = e2.f1067f) == null || str.equalsIgnoreCase(e3.f1067f)) || e2.f1065d <= 0;
    }

    public void a(int i, int i2) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.proguard.H.a(i, i2));
    }

    public synchronized boolean a(int i) {
        boolean z;
        z = true;
        try {
            android.content.SharedPreferences sharedPreferences = this.f1072f;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(i);
            sb.append("_");
            sb.append(this.f1070d);
            z = sharedPreferences.getBoolean(sb.toString(), true);
            com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.proguard.H.b(i));
        } catch (java.lang.Exception unused) {
            com.tencent.bugly.proguard.aa.b("canInit error", new java.lang.Object[0]);
            return z;
        }
        return z;
    }
}
