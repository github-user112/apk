package com.huawei.hms.feature.dynamic;

/* loaded from: classes.dex */
public final class c {
    public static final java.lang.String b = "c";

    /* renamed from: c, reason: collision with root package name */
    public static final com.huawei.hms.feature.dynamic.c f279c = new com.huawei.hms.feature.dynamic.c();
    public java.util.Set<java.lang.String> a;

    public static com.huawei.hms.feature.dynamic.c a() {
        return f279c;
    }

    public final void a(android.os.Bundle bundle) {
        java.util.ArrayList<java.lang.String> stringArrayList = bundle.getStringArrayList("installed_module_name");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            com.huawei.hms.common.util.Logger.w(b, "Get installed module name failed.");
            this.a = new java.util.HashSet();
        } else {
            com.huawei.hms.common.util.Logger.i(b, "Installed module name:".concat(java.lang.String.valueOf(stringArrayList)));
            this.a = new java.util.HashSet(stringArrayList);
        }
    }
}
