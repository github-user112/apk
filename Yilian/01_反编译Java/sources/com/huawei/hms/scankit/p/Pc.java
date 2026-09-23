package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Pc extends com.huawei.hms.scankit.p.Qc {
    public Pc() {
        super(null, com.huawei.hms.feature.DynamicModuleInitializer.getContext());
    }

    public void a(android.os.Bundle bundle) {
        java.lang.String str;
        if (bundle == null || !a()) {
            return;
        }
        try {
            if (bundle.containsKey("scanType") && (bundle.get("scanType") instanceof java.lang.Integer)) {
                bundle.putString("scanType", com.huawei.hms.scankit.p.Qc.a(bundle.getInt("scanType")));
            }
            com.huawei.hms.scankit.p.Oc oc = new com.huawei.hms.scankit.p.Oc(this);
            for (java.lang.String str2 : bundle.keySet()) {
                oc.put(str2, java.lang.String.valueOf(bundle.get(str2)));
            }
            com.huawei.hms.scankit.p.Tc.a().a("60002", oc);
        } catch (java.lang.RuntimeException unused) {
            str = "RuntimeException";
            com.huawei.hms.scankit.util.a.b("HaLog60002", str);
        } catch (java.lang.Exception unused2) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("HaLog60002", str);
        }
    }
}
