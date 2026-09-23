package com.huawei.hms.feature.dynamic.a;

/* loaded from: classes.dex */
public class e implements com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy {
    public static final java.lang.String a = "e";

    @Override // com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy
    public android.os.Bundle getModuleInfo(android.content.Context context, java.lang.String str) {
        android.os.Bundle remoteModuleInfo = com.huawei.hms.feature.dynamic.DynamicModule.getRemoteModuleInfo(context, str);
        if (remoteModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.j) > 0) {
            com.huawei.hms.common.util.Logger.i(a, "Prefer remote: The version of remote module " + str + ":" + remoteModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.j));
            return remoteModuleInfo;
        }
        android.os.Bundle localModuleInfo = com.huawei.hms.feature.dynamic.DynamicModule.getLocalModuleInfo(context, str);
        if (localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k) <= 0) {
            com.huawei.hms.common.util.Logger.i(a, "Cannot get module info in remote or local.");
            return new android.os.Bundle();
        }
        com.huawei.hms.common.util.Logger.i(a, "Choose local: The version of local module " + str + ":" + localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k));
        return localModuleInfo;
    }
}
