package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class f {
    public static android.widget.Toast a;

    public static void a(android.content.Context context, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        android.widget.Toast toast = a;
        if (toast == null) {
            a = android.widget.Toast.makeText(context, str, 0);
        } else {
            toast.setText(str);
        }
        a.show();
    }
}
