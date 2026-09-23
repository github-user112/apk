package com.huawei.hms.feature.dynamic.a;

/* loaded from: classes.dex */
public class d implements com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy {
    public static final java.lang.String a = "d";

    @Override // com.huawei.hms.feature.dynamic.DynamicModule.VersionPolicy
    public android.os.Bundle getModuleInfo(android.content.Context context, java.lang.String str) {
        android.os.Bundle remoteModuleInfo = com.huawei.hms.feature.dynamic.DynamicModule.getRemoteModuleInfo(context, str);
        android.os.Bundle localModuleInfo = com.huawei.hms.feature.dynamic.DynamicModule.getLocalModuleInfo(context, str);
        com.huawei.hms.common.util.Logger.i(a, "The version of remote module " + str + ":" + remoteModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.j));
        com.huawei.hms.common.util.Logger.i(a, "The version of local module " + str + ":" + localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k));
        if (remoteModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.j) >= localModuleInfo.getInt(com.huawei.hms.feature.dynamic.b.k)) {
            com.huawei.hms.common.util.Logger.i(a, "Choose remote module info.");
            return remoteModuleInfo;
        }
        com.huawei.hms.common.util.Logger.i(a, "Choose local module info.");
        return localModuleInfo;
    }
}
