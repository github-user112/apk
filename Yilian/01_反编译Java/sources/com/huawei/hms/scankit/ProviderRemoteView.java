package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class ProviderRemoteView extends android.widget.LinearLayout {
    public ProviderRemoteView(android.content.Context context, boolean z) {
        this(context, z, true);
    }

    public ProviderRemoteView(android.content.Context context, boolean z, boolean z2) {
        super(context);
        a(z, z2);
    }

    private void a(boolean z, boolean z2) {
        android.view.LayoutInflater layoutInflaterFrom;
        int i;
        if (z) {
            layoutInflaterFrom = android.view.LayoutInflater.from(getContext());
            i = com.huawei.hms.scankit.R.layout.scankit_zxl_capture_customed;
        } else {
            layoutInflaterFrom = android.view.LayoutInflater.from(getContext());
            i = z2 ? com.huawei.hms.scankit.R.layout.scankit_zxl_capture : com.huawei.hms.scankit.R.layout.scankit_zxl_capture_new;
        }
        layoutInflaterFrom.inflate(i, this);
    }
}
