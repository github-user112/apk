package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class e extends com.huawei.hms.hmsscankit.api.IOnResultCallback.Stub {
    public final com.huawei.hms.hmsscankit.OnResultCallback a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f348c;

    public e(com.huawei.hms.hmsscankit.OnResultCallback onResultCallback, boolean z) {
        this.f348c = true;
        this.a = onResultCallback;
        this.f348c = z;
    }

    @Override // com.huawei.hms.hmsscankit.api.IOnResultCallback
    public void onResult(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("result callback sdk continueScan");
        sbO.append(this.f348c);
        com.huawei.hms.scankit.util.a.c("OnResultCallbackDelegat", sbO.toString());
        if (!this.f348c) {
            if (hmsScanArr == null || hmsScanArr.length <= 0 || hmsScanArr[0] == null || android.text.TextUtils.equals(this.b, hmsScanArr[0].getOriginalValue())) {
                return;
            }
            this.b = hmsScanArr[0].getOriginalValue();
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("result callback sdk continueScan");
            sbO2.append(this.f348c);
            com.huawei.hms.scankit.util.a.c("OnResultCallbackDelegat", sbO2.toString());
        }
        this.a.onResult(hmsScanArr);
    }
}
