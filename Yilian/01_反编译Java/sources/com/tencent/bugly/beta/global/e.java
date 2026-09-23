package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class e {
    public static int a;
    public static com.tencent.bugly.beta.global.e b = new com.tencent.bugly.beta.global.e();
    public android.content.pm.PackageInfo C;
    public android.content.SharedPreferences D;
    public android.util.DisplayMetrics E;
    public com.tencent.bugly.beta.upgrade.BetaUploadStrategy H;
    public java.io.File I;
    public java.io.File J;
    public java.io.File K;
    public com.tencent.bugly.beta.interfaces.BetaPatchListener Y;
    public boolean fa;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public com.tencent.bugly.beta.ui.UILifecycleListener<com.tencent.bugly.beta.UpgradeInfo> n;
    public java.io.File o;
    public int r;
    public com.tencent.bugly.beta.download.c s;
    public com.tencent.bugly.beta.download.DownloadListener t;
    public java.io.File u;
    public android.content.Context v;
    public java.io.File w;
    public java.lang.String x;
    public java.lang.String y;

    /* renamed from: c, reason: collision with root package name */
    public long f904c = com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;

    /* renamed from: d, reason: collision with root package name */
    public long f905d = 0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f906e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f907f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f908g = false;
    public boolean h = true;
    public final java.util.List<java.lang.Class<? extends android.app.Activity>> p = new java.util.ArrayList();
    public final java.util.List<java.lang.Class<? extends android.app.Activity>> q = new java.util.ArrayList();
    public int z = Integer.MIN_VALUE;
    public java.lang.String A = "";
    public java.lang.String B = "";
    public boolean F = true;
    public boolean G = false;
    public java.lang.String L = "";
    public java.lang.String M = "";
    public java.lang.String N = "";
    public java.lang.String O = "";
    public boolean P = false;
    public int Q = 0;
    public java.lang.String R = "";
    public boolean S = false;
    public boolean T = true;
    public boolean U = false;
    public boolean V = false;
    public boolean W = true;
    public boolean X = true;
    public boolean Z = false;
    public boolean aa = true;
    public boolean ba = false;
    public final java.util.List<java.lang.String> ca = new java.util.ArrayList();
    public boolean da = false;
    public boolean ea = false;

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ed A[Catch: all -> 0x0203, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0023, B:7:0x0027, B:9:0x002f, B:10:0x0035, B:12:0x0049, B:14:0x004d, B:15:0x0053, B:17:0x0057, B:19:0x0061, B:25:0x0072, B:27:0x0083, B:29:0x0089, B:30:0x0092, B:32:0x00ad, B:35:0x00b4, B:37:0x0110, B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:76:0x019b, B:78:0x01d9, B:79:0x01de, B:81:0x01e4, B:82:0x01ec, B:84:0x01fa, B:73:0x0192, B:75:0x0198, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a, B:36:0x00ed, B:22:0x0069, B:24:0x006f), top: B:90:0x0001, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0150 A[Catch: Exception -> 0x0191, all -> 0x0203, TRY_LEAVE, TryCatch #2 {Exception -> 0x0191, blocks: (B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a), top: B:94:0x0126, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019b A[Catch: all -> 0x0203, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0023, B:7:0x0027, B:9:0x002f, B:10:0x0035, B:12:0x0049, B:14:0x004d, B:15:0x0053, B:17:0x0057, B:19:0x0061, B:25:0x0072, B:27:0x0083, B:29:0x0089, B:30:0x0092, B:32:0x00ad, B:35:0x00b4, B:37:0x0110, B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:76:0x019b, B:78:0x01d9, B:79:0x01de, B:81:0x01e4, B:82:0x01ec, B:84:0x01fa, B:73:0x0192, B:75:0x0198, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a, B:36:0x00ed, B:22:0x0069, B:24:0x006f), top: B:90:0x0001, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d9 A[Catch: all -> 0x0203, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0023, B:7:0x0027, B:9:0x002f, B:10:0x0035, B:12:0x0049, B:14:0x004d, B:15:0x0053, B:17:0x0057, B:19:0x0061, B:25:0x0072, B:27:0x0083, B:29:0x0089, B:30:0x0092, B:32:0x00ad, B:35:0x00b4, B:37:0x0110, B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:76:0x019b, B:78:0x01d9, B:79:0x01de, B:81:0x01e4, B:82:0x01ec, B:84:0x01fa, B:73:0x0192, B:75:0x0198, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a, B:36:0x00ed, B:22:0x0069, B:24:0x006f), top: B:90:0x0001, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e4 A[Catch: all -> 0x0203, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0023, B:7:0x0027, B:9:0x002f, B:10:0x0035, B:12:0x0049, B:14:0x004d, B:15:0x0053, B:17:0x0057, B:19:0x0061, B:25:0x0072, B:27:0x0083, B:29:0x0089, B:30:0x0092, B:32:0x00ad, B:35:0x00b4, B:37:0x0110, B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:76:0x019b, B:78:0x01d9, B:79:0x01de, B:81:0x01e4, B:82:0x01ec, B:84:0x01fa, B:73:0x0192, B:75:0x0198, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a, B:36:0x00ed, B:22:0x0069, B:24:0x006f), top: B:90:0x0001, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fa A[Catch: all -> 0x0203, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x000f, B:6:0x0023, B:7:0x0027, B:9:0x002f, B:10:0x0035, B:12:0x0049, B:14:0x004d, B:15:0x0053, B:17:0x0057, B:19:0x0061, B:25:0x0072, B:27:0x0083, B:29:0x0089, B:30:0x0092, B:32:0x00ad, B:35:0x00b4, B:37:0x0110, B:44:0x0126, B:46:0x0130, B:48:0x0138, B:50:0x0140, B:52:0x0148, B:76:0x019b, B:78:0x01d9, B:79:0x01de, B:81:0x01e4, B:82:0x01ec, B:84:0x01fa, B:73:0x0192, B:75:0x0198, B:54:0x0150, B:56:0x0154, B:58:0x015e, B:60:0x0168, B:62:0x0170, B:64:0x0174, B:66:0x017c, B:68:0x0180, B:70:0x018a, B:36:0x00ed, B:22:0x0069, B:24:0x006f), top: B:90:0x0001, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.global.e.a(android.content.Context):void");
    }
}
