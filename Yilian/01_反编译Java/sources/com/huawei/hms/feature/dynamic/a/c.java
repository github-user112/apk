package com.huawei.hms.feature.dynamic.a;

/* loaded from: classes.dex */
public class c implements com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy {
    public static final java.lang.String a = "c";

    @Override // com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy
    public android.os.Bundle getModuleInfo(android.content.Context context, java.lang.String str) throws com.huawei.hms.feature.dynamic.DynamicModule.LoadingException {
        android.os.Bundle bundle;
        try {
            bundle = com.huawei.hms.feature.dynamic.DynamicModule.getRemoteModuleInfo(context, str);
            e = null;
        } catch (com.huawei.hms.feature.dynamic.DynamicModule.LoadingException e2) {
            e = e2;
            com.huawei.hms.common.util.Logger.w(a, "Get remote module info failed: " + e.getMessage() + ". try to query local.");
            bundle = new android.os.Bundle();
        }
        android.os.Bundle localModuleInfo = com.huawei.hms.feature.dynamic.DynamicModule.getLocalModuleInfo(context, str);
        com.huawei.hms.common.util.Logger.i(a, "The version of remote module " + str + ":" + bundle.getInt(com.huawei.hms.feature.dynamic.b.j));
        com.huawei.hms.common.util.Logger.i(a, "The version of local module " + str + ":" + localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k));
        if (localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k) > 0 && localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k) >= bundle.getInt(com.huawei.hms.feature.dynamic.b.j)) {
            com.huawei.hms.common.util.Logger.i(a, "Choose local module info.");
            return localModuleInfo;
        }
        if (e != null && bundle.getInt(com.huawei.hms.feature.dynamic.b.j) == 0) {
            throw e;
        }
        com.huawei.hms.common.util.Logger.i(a, "Choose remote module info.");
        return bundle;
    }
}
