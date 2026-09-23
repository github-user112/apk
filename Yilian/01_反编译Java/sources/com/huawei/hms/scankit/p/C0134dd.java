package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.dd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0134dd extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f697g = java.util.regex.Pattern.compile("geo:([\\s\\-0-9.]+),([\\s\\-0-9.]+)(?:[,?].*)?", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        java.util.regex.Matcher matcher = f697g.matcher(strA);
        if (!matcher.matches()) {
            return null;
        }
        try {
            return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA, com.huawei.hms.ml.scan.HmsScan.LOCATION_COORDINATE_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.LocationCoordinate(java.lang.Double.parseDouble(matcher.group(1)), java.lang.Double.parseDouble(matcher.group(2)))));
        } catch (java.lang.NumberFormatException unused) {
            return null;
        }
    }
}
