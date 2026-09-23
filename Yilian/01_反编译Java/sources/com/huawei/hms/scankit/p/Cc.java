package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Cc {
    public static final java.lang.String a = "Cc";
    public java.lang.String b = "UNKNOWN";

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f502c;

    public Cc(android.content.Context context, boolean z) {
        this.f502c = "UNKNOWN";
        a(context, z);
        this.f502c = this.f502c.toUpperCase(java.util.Locale.ENGLISH);
    }

    private void a(android.content.Context context, boolean z) {
        if (context != null) {
            try {
                this.f502c = com.huawei.hms.framework.network.grs.GrsApp.getInstance().getIssueCountryCode(context);
                if (b()) {
                    com.huawei.hms.framework.common.Logger.i(a, "getCountryCode unknown");
                }
            } catch (java.lang.NullPointerException | java.lang.Exception unused) {
                com.huawei.hms.framework.common.Logger.w(a, "get CountryCode error");
            }
        }
    }

    private boolean b() {
        return !"UNKNOWN".equals(this.f502c);
    }

    public java.lang.String a() {
        return this.f502c;
    }
}
