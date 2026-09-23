package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class _c extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f665g = java.util.regex.Pattern.compile("(?:MATMSG:TO:|mailto:|SMTP:)([\\s\\S]+)", 2);
    public static final java.util.regex.Pattern h = java.util.regex.Pattern.compile("mailto:([\\s\\S]+)\\?subject=([\\s\\S]+)&body=([\\s\\S]+)", 2);
    public static final java.util.regex.Pattern i = java.util.regex.Pattern.compile("MATMSG:TO:([\\s\\S]+);SUB:([\\s\\S]+);BODY:([\\s\\S]+)", 2);
    public static final java.util.regex.Pattern j = java.util.regex.Pattern.compile("SMTP:([\\s\\S]+):([\\s\\S]+):([\\s\\S]+)", 2);

    public static java.lang.String c(java.lang.String str) {
        try {
            return java.net.URLDecoder.decode(str, com.google.android.exoplayer2.C.UTF8_NAME);
        } catch (java.io.UnsupportedEncodingException unused) {
            return str;
        }
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.util.regex.Matcher matcher;
        java.util.regex.Matcher matcher2;
        java.util.regex.Matcher matcher3;
        java.lang.String strGroup;
        java.lang.String str;
        java.lang.String strGroup2;
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA) || !f665g.matcher(strA).matches()) {
            return null;
        }
        try {
            matcher = h.matcher(strA);
            matcher2 = i.matcher(strA);
            matcher3 = j.matcher(strA);
        } catch (java.lang.RuntimeException | java.lang.Exception unused) {
        }
        if (matcher.matches()) {
            java.lang.String strGroup3 = matcher.group(1);
            strGroup = matcher.group(2);
            strGroup2 = matcher.group(3);
            str = strGroup3;
        } else {
            if (!matcher2.matches()) {
                if (matcher3.matches()) {
                    java.lang.String strGroup4 = matcher3.group(1);
                    strGroup = matcher3.group(2);
                    str = strGroup4;
                    strGroup2 = matcher3.group(3);
                }
                return null;
            }
            java.lang.String strGroup5 = matcher2.group(1);
            java.lang.String strGroup6 = matcher2.group(2);
            java.lang.String strGroup7 = matcher2.group(3);
            str = strGroup5;
            strGroup = strGroup6;
            strGroup2 = strGroup7;
        }
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), str, com.huawei.hms.ml.scan.HmsScan.EMAIL_CONTENT_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.EmailContent(str, c(strGroup), c(strGroup2), com.huawei.hms.ml.scan.HmsScan.EmailContent.OTHER_USE_TYPE)));
    }
}
