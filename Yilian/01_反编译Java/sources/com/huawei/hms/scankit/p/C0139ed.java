package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ed, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0139ed extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f709g = java.util.regex.Pattern.compile("market://[\\s\\S]*", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA) || !f709g.matcher(strA).matches()) {
            return null;
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA, com.huawei.hms.ml.scan.HmsScan.URL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.LinkUrl("", "")));
    }
}
