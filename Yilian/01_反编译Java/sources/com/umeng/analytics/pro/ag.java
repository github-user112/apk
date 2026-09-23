package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ag implements com.umeng.analytics.pro.y {
    @Override // com.umeng.analytics.pro.y
    public java.lang.String a(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            if (!((g.a.b.a.a.a.b == null || g.a.b.a.a.a.a == null) ? false : true)) {
                com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "当前设备不支持获取OAID");
                return null;
            }
            java.lang.reflect.Method method = g.a.b.a.a.a.f3121c;
            java.lang.Object obj = g.a.b.a.a.a.a;
            if (obj == null || method == null) {
                return null;
            }
            try {
                java.lang.Object objInvoke = method.invoke(obj, context);
                if (objInvoke != null) {
                    return (java.lang.String) objInvoke;
                }
                return null;
            } catch (java.lang.Exception e2) {
                android.util.Log.e("IdentifierManager", "invoke exception!", e2);
                return null;
            }
        } catch (java.lang.Exception unused) {
            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
