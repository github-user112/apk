package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class w implements android.view.View.OnClickListener {
    public final /* synthetic */ com.huawei.hms.scankit.y a;

    public w(com.huawei.hms.scankit.y yVar) {
        this.a = yVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        android.view.View.OnClickListener onClickListener = this.a.k;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
