package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class i extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "umeng_sp_oaid";
    public static final java.lang.String b = "key_umeng_sp_oaid";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1537c = "key_umeng_sp_oaid_required_time";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1538d = "oaid";

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f1539e;

    public i(android.content.Context context) {
        super(f1538d);
        this.f1539e = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        if (!com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            return null;
        }
        try {
            android.content.SharedPreferences sharedPreferences = this.f1539e.getSharedPreferences(a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(b, "");
            }
            return null;
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }
}
