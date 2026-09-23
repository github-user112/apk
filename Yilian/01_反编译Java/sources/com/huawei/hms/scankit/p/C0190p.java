package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0190p {
    public static com.huawei.hms.scankit.p.C0190p a = new com.huawei.hms.scankit.p.C0190p();
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f779c = com.huawei.hms.scankit.p.AbstractC0120b.a();

    @android.annotation.TargetApi(24)
    public boolean a() {
        boolean zIsUserUnlocked;
        if (!this.b) {
            android.content.Context context = this.f779c;
            if (context == null) {
                return false;
            }
            if (android.os.Build.VERSION.SDK_INT >= 24) {
                android.os.UserManager userManager = (android.os.UserManager) context.getSystemService("user");
                if (userManager != null) {
                    zIsUserUnlocked = userManager.isUserUnlocked();
                } else {
                    this.b = false;
                }
            } else {
                zIsUserUnlocked = true;
            }
            this.b = zIsUserUnlocked;
        }
        return this.b;
    }
}
