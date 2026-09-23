package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0258w extends com.tencent.bugly.beta.download.DownloadTask implements java.lang.Runnable {
    public java.io.File k;
    public long l;
    public long m;

    public RunnableC0258w(java.lang.String str, java.lang.String str2, long j, long j2, java.lang.String str3) {
        super(str, "", "", str3);
        this.l = 0L;
        this.m = 0L;
        java.io.File file = new java.io.File(str2);
        this.k = file;
        this.b = file.getParent();
        this.f896c = this.k.getName();
        this.f898e = j;
        this.f899f = j2;
        getStatus();
    }

    public RunnableC0258w(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        super(str, str2, str3, str4);
        this.l = 0L;
        this.m = 0L;
        getStatus();
    }

    private java.lang.String a(java.net.HttpURLConnection httpURLConnection) {
        java.util.List<java.lang.String> list;
        try {
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        if (!android.text.TextUtils.isEmpty(this.f896c)) {
            return this.f896c;
        }
        java.util.Map<java.lang.String, java.util.List<java.lang.String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields != null) {
            for (java.lang.String str : headerFields.keySet()) {
                if (str != null && (list = headerFields.get(str)) != null) {
                    for (java.lang.String str2 : list) {
                        if (str2 != null && "content-disposition".equals(str.toLowerCase())) {
                            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile(".*filename=(.*)").matcher(str2.toLowerCase());
                            if (matcher.find()) {
                                return matcher.group(1);
                            }
                        }
                    }
                }
            }
        }
        java.lang.String strSubstring = getDownloadUrl().substring(getDownloadUrl().lastIndexOf(47) + 1);
        if (!android.text.TextUtils.isEmpty(strSubstring)) {
            return strSubstring;
        }
        return java.util.UUID.randomUUID() + ".apk";
    }

    public void a() {
        this.i = 1;
        b();
        com.tencent.bugly.proguard.v.a.b.remove(getDownloadUrl());
        com.tencent.bugly.beta.download.BetaReceiver.netListeners.remove(getDownloadUrl());
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(8, this.f897d, this));
    }

    public void a(int i, java.lang.String str) {
        this.i = 5;
        com.tencent.bugly.beta.ui.BetaNotifyManager.instance.postDownloadNotify();
        com.tencent.bugly.proguard.v.a.b.remove(getDownloadUrl());
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(10, this.f897d, this, java.lang.Integer.valueOf(i), str));
    }

    public void b() {
        this.l = (java.lang.System.currentTimeMillis() - this.m) + this.l;
        com.tencent.bugly.proguard.C0256p.a.b(this);
        this.m = java.lang.System.currentTimeMillis();
        com.tencent.bugly.beta.ui.BetaNotifyManager.instance.postDownloadNotify();
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(9, this.f897d, this));
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public void delete(boolean z) {
        stop();
        if (z) {
            if (getSaveFile() != null && getSaveFile().exists() && !getSaveFile().isDirectory()) {
                getSaveFile().delete();
            }
            com.tencent.bugly.proguard.C0256p.a.a(this);
        }
        com.tencent.bugly.beta.download.BetaReceiver.netListeners.remove(getDownloadUrl());
        this.f896c = null;
        this.f898e = 0L;
        this.f899f = 0L;
        this.i = 4;
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public void download() {
        if (getStatus() == 1) {
            a();
            return;
        }
        if (getStatus() == 2) {
            return;
        }
        if (getSaveFile() == null || !getSaveFile().exists()) {
            this.f898e = 0L;
            this.f899f = 0L;
            this.l = 0L;
        } else {
            this.f898e = getSaveFile().length();
        }
        if (this.f900g) {
            com.tencent.bugly.beta.ui.BetaNotifyManager.instance.initNotify(this);
        }
        this.m = java.lang.System.currentTimeMillis();
        this.i = 2;
        com.tencent.bugly.proguard.v.a.b.put(getDownloadUrl(), this);
        com.tencent.bugly.proguard.v.a.a(this);
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public long getCostTime() {
        return this.l;
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public java.io.File getSaveFile() {
        return this.k;
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public int getStatus() {
        if (getSaveFile() != null && getSaveFile().exists() && getSaveFile().length() == this.f899f && !com.tencent.bugly.proguard.v.a.b.contains(this)) {
            this.f898e = this.f899f;
            this.i = 1;
        }
        if (getSaveFile() != null && getSaveFile().exists() && getSaveFile().length() > 0 && getSaveFile().length() < this.f899f && !com.tencent.bugly.proguard.v.a.b.contains(this)) {
            this.f898e = getSaveFile().length();
            this.i = 3;
        }
        if ((getSaveFile() == null || !getSaveFile().exists()) && !com.tencent.bugly.proguard.v.a.b.contains(this)) {
            this.i = 0;
        }
        return this.i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x018e, code lost:
    
        if (r5 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015f, code lost:
    
        if (r0 < 3) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0166, code lost:
    
        com.tencent.bugly.proguard.aa.a(com.tencent.bugly.proguard.RunnableC0258w.class, "have retry %d times", 3);
     */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015b A[Catch: Exception -> 0x0131, all -> 0x0172, TryCatch #11 {Exception -> 0x0131, blocks: (B:33:0x0097, B:51:0x00e0, B:67:0x011c, B:74:0x012c, B:92:0x015b, B:93:0x015e, B:89:0x0153, B:97:0x0166), top: B:124:0x0153, outer: #2 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.RunnableC0258w.run():void");
    }

    @Override // com.tencent.bugly.beta.download.DownloadTask
    public void stop() {
        if (this.i != 5) {
            this.i = 3;
        }
    }
}
