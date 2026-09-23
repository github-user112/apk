package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.jd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0164jd extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f743g = java.util.regex.Pattern.compile("(?:uri|url):([\\s\\S]*)", 2);
    public static final java.util.regex.Pattern h = java.util.regex.Pattern.compile("(?:http:/?(?!/)|http//)([\\s\\S]+)", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA) || !f743g.matcher(strA).matches()) {
            return null;
        }
        java.lang.String strSubstring = strA.substring(4);
        java.util.regex.Matcher matcher = h.matcher(strSubstring);
        if (matcher.matches()) {
            strSubstring = strSubstring.substring(0, 4) + "://" + matcher.group(1);
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), com.huawei.hms.scankit.p.AbstractC0149gd.a(strSubstring), com.huawei.hms.ml.scan.HmsScan.URL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.LinkUrl("", "")));
    }
}
