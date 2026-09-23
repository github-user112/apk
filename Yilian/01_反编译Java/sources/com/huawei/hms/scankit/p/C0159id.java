package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.id, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0159id extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f731g = java.util.regex.Pattern.compile("tel:([\\s\\S]+)", 2);

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        java.util.regex.Matcher matcher = f731g.matcher(strA);
        if (!matcher.matches()) {
            return null;
        }
        java.lang.String strGroup = matcher.group(1);
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strGroup, com.huawei.hms.ml.scan.HmsScan.TEL_PHONE_NUMBER_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OTHER_USE_TYPE, strGroup)));
    }
}
