package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class af implements com.umeng.analytics.pro.y {
    @Override // com.umeng.analytics.pro.y
    public java.lang.String a(android.content.Context context) {
        try {
            if (g.a.b.b.a.c.a(context) == null) {
                throw null;
            }
            if (g.a.b.b.a.c.b) {
                return d.s.y.f(context);
            }
            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            return null;
        } catch (java.lang.Exception unused) {
            com.umeng.commonsdk.debug.UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
