package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class x implements android.view.View.OnClickListener {
    public final /* synthetic */ com.huawei.hms.scankit.y a;

    public x(com.huawei.hms.scankit.y yVar) {
        this.a = yVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        android.widget.ImageView imageView;
        android.content.res.Resources resources;
        int i;
        if (view.isSelected()) {
            this.a.g();
            this.a.m();
            imageView = this.a.A;
            resources = this.a.A.getResources();
            i = com.huawei.hms.scankit.R.string.scankit_light;
        } else {
            this.a.h();
            view.setSelected(true);
            this.a.B.setText(com.huawei.hms.scankit.R.string.scankit_light_off);
            imageView = this.a.A;
            resources = this.a.A.getResources();
            i = com.huawei.hms.scankit.R.string.scankit_light_off;
        }
        imageView.setContentDescription(resources.getString(i));
    }
}
