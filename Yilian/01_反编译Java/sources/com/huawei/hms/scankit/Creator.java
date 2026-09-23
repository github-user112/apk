package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class Creator extends com.huawei.hms.hmsscankit.api.IRemoteCreator.Stub {
    public static final java.lang.String TAG = "Creator";
    public com.huawei.hms.scankit.q iRemoteViewDelegate = null;
    public com.huawei.hms.scankit.BinderC0244r iRemoteDecoderDelegate = null;
    public com.huawei.hms.scankit.t iRemoteHmsDecoderDelegate = null;

    @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
    public com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate newRemoteDecoderDelegate() {
        com.huawei.hms.scankit.util.a.c(TAG, "newRemoteDecoderDelegate()");
        com.huawei.hms.scankit.BinderC0244r binderC0244rA = com.huawei.hms.scankit.BinderC0244r.a();
        this.iRemoteDecoderDelegate = binderC0244rA;
        return binderC0244rA;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
    public com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate newRemoteHmsDecoderDelegate() {
        com.huawei.hms.scankit.util.a.c(TAG, "newRemoteHmsDecoderDelegate()");
        com.huawei.hms.scankit.t tVarA = com.huawei.hms.scankit.t.a();
        this.iRemoteHmsDecoderDelegate = tVarA;
        return tVarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    @Override // com.huawei.hms.hmsscankit.api.IRemoteCreator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.hmsscankit.api.IRemoteViewDelegate newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper r13, com.huawei.hms.feature.dynamic.IObjectWrapper r14) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.Creator.newRemoteViewDelegate(com.huawei.hms.feature.dynamic.IObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper):com.huawei.hms.hmsscankit.api.IRemoteViewDelegate");
    }
}
