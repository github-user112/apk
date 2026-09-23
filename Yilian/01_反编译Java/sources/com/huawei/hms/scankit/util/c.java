package com.huawei.hms.scankit.util;

/* loaded from: classes.dex */
public class c {
    public static int a(android.content.Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static android.graphics.Point a(android.content.Context context) {
        android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
        android.graphics.Point point = new android.graphics.Point();
        defaultDisplay.getSize(point);
        return point;
    }
}
