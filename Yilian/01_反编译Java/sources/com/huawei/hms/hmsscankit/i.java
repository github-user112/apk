package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class i implements android.view.View.OnClickListener {
    public final /* synthetic */ com.huawei.hms.hmsscankit.RemoteView.a a;

    public i(com.huawei.hms.hmsscankit.RemoteView.a aVar) {
        this.a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        com.huawei.hms.hmsscankit.RemoteView.a aVar = this.a;
        com.huawei.hms.hmsscankit.RemoteView.this.startPhotoCode(aVar.f346g);
    }
}
