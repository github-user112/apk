package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class f {
    public static com.tencent.bugly.beta.global.f a = new com.tencent.bugly.beta.global.f();
    public java.util.List<java.lang.Runnable> b = new java.util.ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.String, com.tencent.bugly.beta.download.DownloadTask> f909c = java.util.Collections.synchronizedMap(new java.util.HashMap());

    /* renamed from: d, reason: collision with root package name */
    public android.os.Handler f910d = new android.os.Handler(android.os.Looper.getMainLooper());

    public void a() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : com.tencent.bugly.beta.global.ResBean.b) {
            java.lang.String strA = com.tencent.bugly.beta.global.ResBean.a.a(str);
            if (str.startsWith("IMG_") && !android.text.TextUtils.isEmpty(strA)) {
                arrayList.add(strA);
            }
        }
        java.io.File[] fileArrListFiles = com.tencent.bugly.beta.global.e.b.u.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (java.io.File file : fileArrListFiles) {
            java.util.Iterator it = arrayList.iterator();
            boolean z = true;
            while (it.hasNext()) {
                if (file.getAbsolutePath().equals((java.lang.String) it.next())) {
                    z = false;
                }
            }
            if (z) {
                com.tencent.bugly.proguard.C0256p.a.b(file.getAbsolutePath());
                if (!file.delete()) {
                    com.tencent.bugly.proguard.aa.b("cannot deleteCache file:%s", file.getAbsolutePath());
                }
            }
        }
    }

    public void a(com.tencent.bugly.beta.download.c cVar, java.util.Map<java.lang.String, java.lang.String> map) {
        com.tencent.bugly.beta.global.ResBean resBean;
        com.tencent.bugly.beta.download.DownloadTask downloadTaskA;
        if (cVar == null) {
            return;
        }
        if (map != null && !map.isEmpty()) {
            java.util.Iterator<com.tencent.bugly.beta.download.DownloadTask> it = this.f909c.values().iterator();
            while (it.hasNext()) {
                it.next().delete(true);
            }
            this.f909c.clear();
            com.tencent.bugly.beta.download.a aVar = new com.tencent.bugly.beta.download.a(1, this, this.f909c);
            for (java.lang.String str : com.tencent.bugly.beta.global.ResBean.b) {
                if (map.containsKey(str)) {
                    java.lang.String str2 = map.get(str);
                    if (!str.startsWith("IMG_") || android.text.TextUtils.isEmpty(str2)) {
                        com.tencent.bugly.beta.global.ResBean.a.a(str, str2);
                    } else {
                        com.tencent.bugly.beta.global.ResBean.a.a(str, "");
                        java.util.Iterator<com.tencent.bugly.beta.download.DownloadTask> it2 = this.f909c.values().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                downloadTaskA = it2.next();
                                if (downloadTaskA.getDownloadUrl().equals(str2)) {
                                    break;
                                }
                            } else {
                                downloadTaskA = null;
                                break;
                            }
                        }
                        if (downloadTaskA == null) {
                            downloadTaskA = cVar.a(str2, com.tencent.bugly.beta.global.e.b.u.getAbsolutePath(), null, null);
                        }
                        if (downloadTaskA != null) {
                            downloadTaskA.addListener(aVar);
                            downloadTaskA.setNeededNotify(false);
                            this.f909c.put(str, downloadTaskA);
                        }
                    }
                } else {
                    this.f909c.clear();
                    resBean = new com.tencent.bugly.beta.global.ResBean();
                }
            }
            com.tencent.bugly.beta.global.a.a("rb.bch", com.tencent.bugly.beta.global.ResBean.a);
            if (this.f909c.isEmpty()) {
                return;
            }
            java.util.Iterator<com.tencent.bugly.beta.download.DownloadTask> it3 = this.f909c.values().iterator();
            while (it3.hasNext()) {
                it3.next().download();
            }
            return;
        }
        this.f909c.clear();
        resBean = new com.tencent.bugly.beta.global.ResBean();
        com.tencent.bugly.beta.global.ResBean.a = resBean;
        com.tencent.bugly.beta.global.a.a("rb.bch", resBean);
    }

    public synchronized void a(java.lang.Runnable runnable) {
        if (this.f909c.size() == 0) {
            runnable.run();
        } else {
            this.b.add(runnable);
        }
    }

    public synchronized void a(java.lang.Runnable runnable, int i) {
        if (this.f909c.size() == 0) {
            runnable.run();
        } else {
            com.tencent.bugly.beta.global.d dVar = new com.tencent.bugly.beta.global.d(6, java.lang.Boolean.FALSE, runnable);
            this.f910d.postDelayed(dVar, i);
            a(dVar);
        }
    }

    public void b() {
        synchronized (this) {
            java.util.Iterator<java.lang.Runnable> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            java.util.Iterator<com.tencent.bugly.beta.download.DownloadTask> it2 = this.f909c.values().iterator();
            while (it2.hasNext()) {
                it2.next().delete(false);
            }
            this.b.clear();
            this.f909c.clear();
        }
    }
}
