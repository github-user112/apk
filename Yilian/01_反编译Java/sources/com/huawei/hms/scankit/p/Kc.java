package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Kc extends com.huawei.hms.scankit.p.Qc {
    public volatile java.lang.String h;
    public volatile java.lang.String i;
    public boolean j;
    public volatile long k;
    public com.huawei.hms.scankit.p.Kc.b l;

    public static class a {
        public int a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f561c;

        /* renamed from: d, reason: collision with root package name */
        public long f562d;

        /* renamed from: e, reason: collision with root package name */
        public long f563e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String f564f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f565g;
        public boolean h;
        public int i;
        public boolean j;

        public a(long j, java.lang.String str, java.lang.String str2, boolean z, int i, int i2) {
            this.f562d = j;
            this.b = str;
            this.f561c = str2;
            this.h = z;
            this.i = i;
            this.a = i2;
        }

        public /* synthetic */ a(long j, java.lang.String str, java.lang.String str2, boolean z, int i, int i2, com.huawei.hms.scankit.p.Ic ic) {
            this(j, str, str2, z, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.huawei.hms.scankit.p.Kc.a a(long j) {
            this.f563e = j;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.huawei.hms.scankit.p.Kc.a a(java.lang.String str) {
            this.f564f = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.huawei.hms.scankit.p.Kc.a a(boolean z) {
            this.j = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.huawei.hms.scankit.p.Kc.a b(java.lang.String str) {
            this.f565g = str;
            return this;
        }

        public com.huawei.hms.scankit.p.Kc.a a(int i) {
            this.a = i;
            return this;
        }
    }

    public class b {
        public java.lang.String a;
        public java.util.Timer b;

        /* renamed from: c, reason: collision with root package name */
        public volatile boolean f566c;

        /* renamed from: d, reason: collision with root package name */
        public java.util.List<com.huawei.hms.scankit.p.Kc.a> f567d;

        /* renamed from: e, reason: collision with root package name */
        public java.util.List<com.huawei.hms.scankit.p.Kc.a> f568e;

        public class a {
            public java.lang.StringBuilder a;
            public java.util.concurrent.atomic.AtomicInteger[] b;

            /* renamed from: c, reason: collision with root package name */
            public java.lang.String[] f570c;

            /* renamed from: d, reason: collision with root package name */
            public long[] f571d;

            public a() {
                this.a = new java.lang.StringBuilder(100);
                this.b = new java.util.concurrent.atomic.AtomicInteger[]{new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger(), new java.util.concurrent.atomic.AtomicInteger()};
                this.f570c = new java.lang.String[]{"lt10K:", "lt100K:", "lt1M:", "lt3M:", "lt10M:", "lt40M:", "gt40M:"};
                this.f571d = new long[]{10240, com.google.android.exoplayer2.upstream.cache.CacheDataSource.MIN_READ_BEFORE_CHECKING_CACHE, 1048576, 3145728, com.google.android.exoplayer2.extractor.mp4.Mp4Extractor.MAXIMUM_READ_AHEAD_BYTES_STREAM, 41943040, Long.MAX_VALUE};
            }

            public /* synthetic */ a(com.huawei.hms.scankit.p.Kc.b bVar, com.huawei.hms.scankit.p.Ic ic) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public java.lang.String a() {
                java.lang.StringBuilder sb = this.a;
                sb.delete(0, sb.length());
                this.a.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
                for (int i = 0; i < this.b.length; i++) {
                    this.a.append(this.f570c[i]);
                    this.a.append(this.b[i]);
                    this.a.append(",");
                }
                this.a.replace(r0.length() - 1, this.a.length(), com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
                return this.a.toString();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(int i) {
                int i2 = 0;
                while (true) {
                    java.util.concurrent.atomic.AtomicInteger[] atomicIntegerArr = this.b;
                    if (i2 >= atomicIntegerArr.length) {
                        return;
                    }
                    if (i <= this.f571d[i2]) {
                        atomicIntegerArr[i2].addAndGet(1);
                        return;
                    }
                    i2++;
                }
            }
        }

        /* renamed from: com.huawei.hms.scankit.p.Kc$b$b, reason: collision with other inner class name */
        public class C0006b {
            public java.lang.StringBuilder a;
            public android.util.SparseArray<java.util.concurrent.atomic.AtomicInteger> b;

            public C0006b() {
                this.a = new java.lang.StringBuilder(60);
                this.b = new com.huawei.hms.scankit.p.Mc(this);
            }

            public /* synthetic */ C0006b(com.huawei.hms.scankit.p.Kc.b bVar, com.huawei.hms.scankit.p.Ic ic) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public java.lang.String a() {
                java.lang.StringBuilder sb = this.a;
                sb.delete(0, sb.length());
                this.a.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
                for (int i = 0; i < this.b.size(); i++) {
                    this.a.append(this.b.keyAt(i));
                    this.a.append(":");
                    this.a.append(this.b.valueAt(i));
                    this.a.append(",");
                }
                this.a.replace(r0.length() - 1, this.a.length(), com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
                return this.a.toString();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a(int i) {
                if (this.b.get(i) == null) {
                    this.b.put(i, new com.huawei.hms.scankit.p.Nc(this));
                } else {
                    this.b.get(i).addAndGet(1);
                }
            }
        }

        public b() {
            this.a = com.huawei.hms.scankit.p.Kc.b.class.getSimpleName();
            this.b = new java.util.Timer();
            this.f566c = true;
            this.f567d = new java.util.ArrayList(10);
            this.f568e = new java.util.ArrayList(10);
        }

        public /* synthetic */ b(com.huawei.hms.scankit.p.Kc kc, com.huawei.hms.scankit.p.Ic ic) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f567d.size() > 0) {
                synchronized (this) {
                    java.util.List<com.huawei.hms.scankit.p.Kc.a> list = this.f567d;
                    java.util.List<com.huawei.hms.scankit.p.Kc.a> list2 = this.f568e;
                    this.f567d = list2;
                    this.f568e = list;
                    list2.clear();
                }
                a(this.f568e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.huawei.hms.scankit.p.Kc.a aVar) {
            if (this.f567d.size() > 100) {
                return;
            }
            synchronized (this) {
                this.f567d.add(aVar);
                if (this.f566c) {
                    this.f566c = false;
                    this.b.schedule(new com.huawei.hms.scankit.p.Lc(this), 1000L);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r24v2, types: [java.lang.Boolean] */
        private void a(java.util.List<com.huawei.hms.scankit.p.Kc.a> list) {
            java.util.HashSet hashSet = new java.util.HashSet();
            java.util.Iterator<com.huawei.hms.scankit.p.Kc.a> it = list.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().f561c);
            }
            java.util.Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                java.lang.String str = (java.lang.String) it2.next();
                com.huawei.hms.scankit.p.Ic ic = null;
                com.huawei.hms.scankit.p.Kc.b.C0006b c0006b = new com.huawei.hms.scankit.p.Kc.b.C0006b(this, ic);
                com.huawei.hms.scankit.p.Kc.b.a aVar = new com.huawei.hms.scankit.p.Kc.b.a(this, ic);
                long j = Long.MAX_VALUE;
                long j2 = Long.MIN_VALUE;
                java.lang.String str2 = "";
                java.lang.String str3 = "";
                java.lang.String str4 = str3;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                for (com.huawei.hms.scankit.p.Kc.a aVar2 : list) {
                    str2 = aVar2.b;
                    str3 = aVar2.f564f;
                    str4 = aVar2.f565g;
                    ?? ValueOf = java.lang.Boolean.valueOf(aVar2.h);
                    j4 = (aVar2.f563e - aVar2.f562d) + j4;
                    c0006b.a(aVar2.a);
                    aVar.a(aVar2.i);
                    j3++;
                    if (aVar2.j) {
                        j6++;
                    }
                    if (aVar2.a != 0) {
                        j5++;
                    }
                    if (aVar2.f563e - aVar2.f562d < j) {
                        j = aVar2.f563e - aVar2.f562d;
                    }
                    if (aVar2.f563e - aVar2.f562d > j2) {
                        j2 = aVar2.f563e - aVar2.f562d;
                    }
                    ic = ValueOf;
                }
                java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap = new java.util.LinkedHashMap<>();
                linkedHashMap.putAll(com.huawei.hms.scankit.p.Kc.this.f621f);
                linkedHashMap.put("result", c0006b.a());
                linkedHashMap.put("imgSizeHistogram", aVar.a());
                linkedHashMap.put("callTime", str2);
                linkedHashMap.put("transId", str);
                if (j3 != 0) {
                    j4 /= j3;
                }
                linkedHashMap.put("costTime", java.lang.String.valueOf(j4));
                linkedHashMap.put("allCnt", java.lang.String.valueOf(j3));
                linkedHashMap.put("failCnt", java.lang.String.valueOf(j5));
                linkedHashMap.put("codeCnt", java.lang.String.valueOf(j6));
                linkedHashMap.put("scanType", str3);
                linkedHashMap.put("sceneType", str4);
                linkedHashMap.put("min", java.lang.String.valueOf(j));
                linkedHashMap.put("max", java.lang.String.valueOf(j2));
                linkedHashMap.put("algPhotoMode", java.lang.String.valueOf(ic));
                com.huawei.hms.scankit.p.Tc.a().a("60001", linkedHashMap);
            }
        }
    }

    public Kc(android.os.Bundle bundle, java.lang.String str) {
        super(bundle, com.huawei.hms.feature.DynamicModuleInitializer.getContext());
        this.j = false;
        this.l = new com.huawei.hms.scankit.p.Kc.b(this, null);
        this.f621f.put("apiName", str);
        if (com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE.equals(str)) {
            this.j = true;
        }
    }

    public com.huawei.hms.scankit.p.Kc.a a(boolean z, int i) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        try {
            try {
                if (this.j) {
                    new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, new com.huawei.hms.scankit.p.Ic(this, "yyyyMMddHHmmss.SSS").format(java.lang.Long.valueOf(jCurrentTimeMillis)), java.util.UUID.randomUUID().toString(), z, i, 0, null);
                    return new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, this.h, this.i, z, i, 0, null);
                }
                if (jCurrentTimeMillis - this.k > 1500) {
                    java.lang.String str = new com.huawei.hms.scankit.p.Jc(this, "yyyyMMddHHmmss.SSS").format(java.lang.Long.valueOf(jCurrentTimeMillis));
                    java.lang.String string = java.util.UUID.randomUUID().toString();
                    if (jCurrentTimeMillis - this.k > 1500) {
                        this.h = str;
                        this.i = string;
                        this.k = jCurrentTimeMillis;
                    }
                }
                new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, this.h, this.i, z, i, 0, null);
                return new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, this.h, this.i, z, i, 0, null);
            } catch (java.lang.Exception unused) {
                com.huawei.hms.scankit.util.a.b("HaLog6001", "exception happens");
                return new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, this.h, this.i, z, i, 0, null);
            }
        } catch (java.lang.Throwable unused2) {
            return new com.huawei.hms.scankit.p.Kc.a(jCurrentTimeMillis, this.h, this.i, z, i, 0, null);
        }
    }

    public void a(java.lang.String str) {
        this.f621f.put("algapi", str);
    }

    public void a(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr, com.huawei.hms.scankit.p.Kc.a aVar) {
        java.lang.String str;
        try {
            java.lang.String str2 = com.huawei.hms.scankit.p.Qc.a;
            java.lang.String strB = com.huawei.hms.scankit.p.Qc.b;
            if (a()) {
                boolean z = false;
                int i = 0;
                z = false;
                if (hmsScanArr != null && hmsScanArr.length > 0) {
                    int length = hmsScanArr.length;
                    while (i < length) {
                        com.huawei.hms.ml.scan.HmsScan hmsScan = hmsScanArr[i];
                        java.lang.String strA = com.huawei.hms.scankit.p.Qc.a(hmsScan.scanType);
                        i++;
                        strB = com.huawei.hms.scankit.p.Qc.b(hmsScan.scanTypeForm);
                        str2 = strA;
                    }
                    z = true;
                }
                this.l.a(aVar.a(java.lang.System.currentTimeMillis()).a(z).a(str2).b(strB));
                this.k = aVar.f563e;
            }
        } catch (java.lang.NullPointerException unused) {
            str = "nullPoint";
            com.huawei.hms.scankit.util.a.b("HaLog60001", str);
        } catch (java.lang.Exception unused2) {
            str = "logEnd Exception";
            com.huawei.hms.scankit.util.a.b("HaLog60001", str);
        }
    }
}
