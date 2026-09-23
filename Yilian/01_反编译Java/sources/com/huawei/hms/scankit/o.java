package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class o extends android.view.OrientationEventListener {
    public final /* synthetic */ com.huawei.hms.scankit.q a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(com.huawei.hms.scankit.q qVar, android.content.Context context) {
        super(context);
        this.a = qVar;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        com.huawei.hms.scankit.q qVar;
        int i2;
        int rotation = ((android.app.Activity) this.a.f877e).getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 0) {
            qVar = this.a;
            i2 = 90;
        } else if (rotation == 1) {
            qVar = this.a;
            i2 = 0;
        } else if (rotation == 2) {
            qVar = this.a;
            i2 = 270;
        } else {
            if (rotation != 3) {
                return;
            }
            qVar = this.a;
            i2 = 180;
        }
        qVar.a(i2);
    }
}
