package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class DecoderCreator extends com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator.Stub {
    @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderCreator
    public com.huawei.hms.hmsscankit.api.IRemoteFrameDecoderDelegate newRemoteFrameDecoderDelegate() {
        return com.huawei.hms.scankit.s.a();
    }
}
