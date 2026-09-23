package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class u implements android.view.View.OnClickListener {
    public final /* synthetic */ com.huawei.hms.scankit.v a;

    public u(com.huawei.hms.scankit.v vVar) {
        this.a = vVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        android.content.Context context = this.a.f877e;
        if (context instanceof android.app.Activity) {
            ((android.app.Activity) context).finish();
        }
    }
}
