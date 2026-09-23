package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Wc extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f642g = java.util.regex.Pattern.compile("(?:BIZCARD:)([\\s\\S]+)", 2);

    public static com.huawei.hms.ml.scan.HmsScan.PeopleName a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName = new com.huawei.hms.ml.scan.HmsScan.PeopleName("", "", "", "", "", "", "");
        peopleName.givenName = str;
        peopleName.familyName = str2;
        peopleName.fullName = str3;
        return peopleName;
    }

    public static java.lang.String a(java.lang.String[] strArr, java.lang.String str) {
        for (java.lang.String str2 : strArr) {
            if (str2.startsWith(str)) {
                return com.huawei.hms.scankit.p.AbstractC0149gd.b(str2.substring(str.length()));
            }
        }
        return "";
    }

    public static com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] b(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumberArr = new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[0];
        java.util.ArrayList arrayList = new java.util.ArrayList(3);
        if (str != null && !str.isEmpty()) {
            arrayList.add(new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OFFICE_USE_TYPE, str));
        }
        if (str2 != null && !str2.isEmpty()) {
            arrayList.add(new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.FAX_USE_TYPE, str2));
        }
        if (str3 != null && !str3.isEmpty()) {
            arrayList.add(new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.CELLPHONE_NUMBER_USE_TYPE, str3));
        }
        return (com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[]) arrayList.toArray(telPhoneNumberArr);
    }

    public static com.huawei.hms.ml.scan.HmsScan.AddressInfo[] c(java.lang.String str) {
        return (str == null || str.isEmpty()) ? new com.huawei.hms.ml.scan.HmsScan.AddressInfo[0] : new com.huawei.hms.ml.scan.HmsScan.AddressInfo[]{new com.huawei.hms.ml.scan.HmsScan.AddressInfo(new java.lang.String[]{str}, com.huawei.hms.ml.scan.HmsScan.AddressInfo.OTHER_USE_TYPE)};
    }

    public static com.huawei.hms.ml.scan.HmsScan.EmailContent[] d(java.lang.String str) {
        return (str == null || str.isEmpty()) ? new com.huawei.hms.ml.scan.HmsScan.EmailContent[0] : new com.huawei.hms.ml.scan.HmsScan.EmailContent[]{new com.huawei.hms.ml.scan.HmsScan.EmailContent(str, "", "", com.huawei.hms.ml.scan.HmsScan.EmailContent.OTHER_USE_TYPE)};
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        java.util.regex.Matcher matcher = f642g.matcher(strA);
        if (!matcher.matches()) {
            return null;
        }
        java.lang.String[] strArrSplit = matcher.group(1).split("(?<=(?<!\\\\)(?:\\\\\\\\){0,100});");
        java.lang.String strA2 = a(strArrSplit, "N:");
        java.lang.String strA3 = a(strArrSplit, "X:");
        java.lang.String strTrim = (strA2 + " " + strA3).trim();
        java.lang.String strA4 = a(strArrSplit, "T:");
        java.lang.String strA5 = a(strArrSplit, "C:");
        java.lang.String strA6 = a(strArrSplit, "A:");
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strTrim, com.huawei.hms.ml.scan.HmsScan.CONTACT_DETAIL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.ContactDetail(a(strA2, strA3, strTrim), strA4, strA5, b(a(strArrSplit, "B:"), a(strArrSplit, "F:"), a(strArrSplit, "M:")), d(a(strArrSplit, "E:")), c(strA6), new java.lang.String[0], null)));
    }
}
