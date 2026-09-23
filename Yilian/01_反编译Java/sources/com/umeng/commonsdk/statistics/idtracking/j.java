package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class j extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "oldumid";
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1540c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1541d;

    public j(android.content.Context context) {
        super(a);
        this.f1540c = null;
        this.f1541d = null;
        this.b = context;
    }

    private void b(java.lang.String str) {
        java.io.File file = new java.io.File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void j() {
        try {
            b("/data/local/tmp/.um");
            com.umeng.commonsdk.statistics.common.HelperUtils.writeFile(new java.io.File("/data/local/tmp/.um/sysid.dat"), this.f1541d);
        } catch (java.lang.Throwable unused) {
        }
    }

    private void k() {
        try {
            b("/sdcard/Android/obj/.um");
            com.umeng.commonsdk.statistics.common.HelperUtils.writeFile(new java.io.File("/sdcard/Android/obj/.um/sysid.dat"), this.f1541d);
        } catch (java.lang.Throwable unused) {
        }
    }

    private void l() {
        try {
            b("/sdcard/Android/data/.um");
            com.umeng.commonsdk.statistics.common.HelperUtils.writeFile(new java.io.File("/sdcard/Android/data/.um/sysid.dat"), this.f1541d);
        } catch (java.lang.Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        return this.f1540c;
    }

    public boolean g() {
        return h();
    }

    public boolean h() throws java.io.IOException {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.b, com.umeng.analytics.pro.ai.f1220g, null);
        this.f1541d = strImprintProperty;
        if (android.text.TextUtils.isEmpty(strImprintProperty)) {
            return false;
        }
        this.f1541d = com.umeng.commonsdk.statistics.common.DataHelper.encryptBySHA1(this.f1541d);
        java.lang.String file = com.umeng.commonsdk.statistics.common.HelperUtils.readFile(new java.io.File("/sdcard/Android/data/.um/sysid.dat"));
        java.lang.String file2 = com.umeng.commonsdk.statistics.common.HelperUtils.readFile(new java.io.File("/sdcard/Android/obj/.um/sysid.dat"));
        java.lang.String file3 = com.umeng.commonsdk.statistics.common.HelperUtils.readFile(new java.io.File("/data/local/tmp/.um/sysid.dat"));
        if (android.text.TextUtils.isEmpty(file)) {
            l();
        } else if (!this.f1541d.equals(file)) {
            this.f1540c = file;
            return true;
        }
        if (android.text.TextUtils.isEmpty(file2)) {
            k();
        } else if (!this.f1541d.equals(file2)) {
            this.f1540c = file2;
            return true;
        }
        if (android.text.TextUtils.isEmpty(file3)) {
            j();
            return false;
        }
        if (this.f1541d.equals(file3)) {
            return false;
        }
        this.f1540c = file3;
        return true;
    }

    public void i() {
        try {
            l();
            k();
            j();
        } catch (java.lang.Exception unused) {
        }
    }
}
