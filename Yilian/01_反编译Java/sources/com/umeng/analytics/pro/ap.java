package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ap extends com.umeng.analytics.pro.aw {
    public static final int a = 0;
    public static final int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1244c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static final int f1245d = 3;

    /* renamed from: e, reason: collision with root package name */
    public static final int f1246e = 4;

    /* renamed from: f, reason: collision with root package name */
    public static final int f1247f = 5;

    /* renamed from: g, reason: collision with root package name */
    public static final int f1248g = 6;
    public static final int h = 7;
    public static final com.umeng.analytics.pro.bu j = new com.umeng.analytics.pro.bu("TApplicationException");
    public static final com.umeng.analytics.pro.bk k = new com.umeng.analytics.pro.bk(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.MESSAGE, (byte) 11, 1);
    public static final com.umeng.analytics.pro.bk l = new com.umeng.analytics.pro.bk(com.umeng.analytics.pro.c.y, (byte) 8, 2);
    public static final long m = 1;
    public int i;

    public ap() {
        this.i = 0;
    }

    public ap(int i) {
        this.i = 0;
        this.i = i;
    }

    public ap(int i, java.lang.String str) {
        super(str);
        this.i = 0;
        this.i = i;
    }

    public ap(java.lang.String str) {
        super(str);
        this.i = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.umeng.analytics.pro.ap a(com.umeng.analytics.pro.bp r5) {
        /*
            r5.j()
            r0 = 0
            r1 = 0
        L5:
            com.umeng.analytics.pro.bk r2 = r5.l()
            byte r3 = r2.b
            if (r3 != 0) goto L16
            r5.k()
            com.umeng.analytics.pro.ap r5 = new com.umeng.analytics.pro.ap
            r5.<init>(r1, r0)
            return r5
        L16:
            short r2 = r2.f1271c
            r4 = 1
            if (r2 == r4) goto L2b
            r4 = 2
            if (r2 == r4) goto L22
        L1e:
            com.umeng.analytics.pro.bs.a(r5, r3)
            goto L33
        L22:
            r2 = 8
            if (r3 != r2) goto L1e
            int r1 = r5.w()
            goto L33
        L2b:
            r2 = 11
            if (r3 != r2) goto L1e
            java.lang.String r0 = r5.z()
        L33:
            r5.m()
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.ap.a(com.umeng.analytics.pro.bp):com.umeng.analytics.pro.ap");
    }

    public int a() {
        return this.i;
    }

    public void b(com.umeng.analytics.pro.bp bpVar) {
        bpVar.a(j);
        if (getMessage() != null) {
            bpVar.a(k);
            bpVar.a(getMessage());
            bpVar.c();
        }
        bpVar.a(l);
        bpVar.a(this.i);
        bpVar.c();
        bpVar.d();
        bpVar.b();
    }
}
