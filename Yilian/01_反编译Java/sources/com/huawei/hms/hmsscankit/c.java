package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class c extends com.huawei.hms.hmsscankit.api.IOnErrorCallback.Stub {
    public final com.huawei.hms.hmsscankit.OnErrorCallback a;

    public c(com.huawei.hms.hmsscankit.OnErrorCallback onErrorCallback) {
        this.a = onErrorCallback;
    }

    @Override // com.huawei.hms.hmsscankit.api.IOnErrorCallback
    public void onError(int i) {
        if (this.a != null) {
            android.util.Log.i("OnErrorCallbackDelegate", "onError: ErrorCode：" + i);
            this.a.onError(i);
        }
    }
}
