package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class P {
    public static com.huawei.hms.scankit.p.K a() {
        com.huawei.hms.scankit.p.T.b("hmsSdk", "generate UploadData");
        com.huawei.hms.scankit.p.S.a.a();
        if (!android.text.TextUtils.isEmpty(com.huawei.hms.scankit.p.S.a.c())) {
            return new com.huawei.hms.scankit.p.K(com.huawei.hms.scankit.p.S.a.b());
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", "event chifer is empty");
        return null;
    }

    public static com.huawei.hms.scankit.p.C0171la a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C0171la c0171la = new com.huawei.hms.scankit.p.C0171la();
        c0171la.a(com.huawei.hms.scankit.p.C0146ga.a().d(str, str2));
        return c0171la;
    }

    public static com.huawei.hms.scankit.p.C0176ma a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        com.huawei.hms.scankit.p.C0176ma c0176ma = new com.huawei.hms.scankit.p.C0176ma();
        c0176ma.f(str);
        c0176ma.a(com.huawei.hms.scankit.p.AbstractC0120b.e());
        c0176ma.c(str2);
        c0176ma.e(str4);
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer("hmshi");
        stringBuffer.append(str3);
        stringBuffer.append("qrt");
        c0176ma.d(stringBuffer.toString());
        return c0176ma;
    }

    public static com.huawei.hms.scankit.p.C0181na a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.huawei.hms.scankit.p.C0181na c0181na = new com.huawei.hms.scankit.p.C0181na();
        c0181na.a(com.huawei.hms.scankit.p.AbstractC0120b.b());
        c0181na.b(com.huawei.hms.scankit.p.AbstractC0120b.d());
        c0181na.c(str3);
        c0181na.d(com.huawei.hms.scankit.p.C0146ga.a().e(str2, str));
        return c0181na;
    }

    public static java.util.Map<java.lang.String, java.lang.String> b(java.lang.String str, java.lang.String str2) {
        java.util.HashMap map = new java.util.HashMap();
        map.put("App-Id", com.huawei.hms.scankit.p.AbstractC0120b.e());
        map.put("App-Ver", com.huawei.hms.scankit.p.AbstractC0120b.f());
        map.put("Sdk-Name", "hianalytics");
        map.put("Sdk-Ver", "2.2.0.304");
        map.put("Device-Type", android.os.Build.MODEL);
        map.put("servicetag", str);
        com.huawei.hms.scankit.p.T.a("hmsSdk", "sendData RequestId : %s", str2);
        map.put("Request-Id", str2);
        return map;
    }
}
