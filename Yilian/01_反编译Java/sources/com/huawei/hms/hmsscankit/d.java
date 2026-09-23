package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class d extends com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub {
    public final com.huawei.hms.hmsscankit.OnLightVisibleCallBack a;

    public d(com.huawei.hms.hmsscankit.OnLightVisibleCallBack onLightVisibleCallBack) {
        this.a = onLightVisibleCallBack;
    }

    @Override // com.huawei.hms.hmsscankit.api.IOnLightCallback
    public void onVisibleChanged(boolean z) {
        this.a.onVisibleChanged(z);
    }
}
