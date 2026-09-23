package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Rc {
    public static final java.lang.String a = "Rc";
    public static volatile android.os.Bundle b;

    public static android.os.Bundle a(android.content.Context context) {
        java.lang.String str;
        java.lang.String str2;
        if (context == null) {
            return new android.os.Bundle();
        }
        if (b == null) {
            android.os.Bundle bundle = new android.os.Bundle();
            try {
                java.lang.String strB = e.d.a.a.a.a(context).b("client/app_id");
                if (strB == null) {
                    strB = context.getPackageName();
                }
                bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, strB);
            } catch (java.lang.RuntimeException unused) {
                str = a;
                str2 = "getAppInfo: RuntimeException";
                android.util.Log.e(str, str2);
                b = bundle;
                return b;
            } catch (java.lang.Exception unused2) {
                str = a;
                str2 = "getAppInfo: Exception";
                android.util.Log.e(str, str2);
                b = bundle;
                return b;
            }
            b = bundle;
        }
        return b;
    }
}
