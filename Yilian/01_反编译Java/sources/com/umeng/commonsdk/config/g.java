package com.umeng.commonsdk.config;

/* loaded from: classes.dex */
public class g implements com.umeng.commonsdk.config.e {
    @Override // com.umeng.commonsdk.config.e
    public void a(java.lang.String str, java.lang.Object obj, java.lang.String[] strArr) {
        java.lang.String str2;
        long j;
        if (str == null || str.length() <= 0) {
            return;
        }
        try {
            j = java.lang.Long.parseLong(str);
        } catch (java.lang.Throwable unused) {
            str2 = "--->>> SensitiveFieldHandler: handleConfigItem: parseLong exception.";
        }
        if (j == -1) {
            str2 = "--->>> SensitiveFieldHandler: handleConfigItem: invalid config value.";
            com.umeng.commonsdk.debug.UMRTLog.e("Config", str2);
            return;
        }
        com.umeng.commonsdk.debug.UMRTLog.i("Config", "--->>> CollectFieldJudgment: handleConfigItem: item : " + str);
        if (obj == null || !(obj instanceof com.umeng.commonsdk.config.b)) {
            return;
        }
        for (int i = 0; i < strArr.length; i++) {
            try {
                java.lang.String str3 = strArr[i];
                if (com.umeng.commonsdk.config.d.a(str3)) {
                    ((com.umeng.commonsdk.config.b) obj).a(str3, java.lang.Boolean.valueOf(com.umeng.commonsdk.config.a.a(j, i)));
                }
            } catch (java.lang.Throwable unused2) {
                return;
            }
        }
    }
}
