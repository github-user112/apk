package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Vc extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f641g = java.util.regex.Pattern.compile("(?:MECARD:)([\\s\\S]+)", 2);

    public static com.huawei.hms.ml.scan.HmsScan.PeopleName a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName = new com.huawei.hms.ml.scan.HmsScan.PeopleName("", "", "", "", "", "", "");
        peopleName.spelling = str2;
        int iIndexOf = str.indexOf(",");
        if (iIndexOf < 0) {
            peopleName.fullName = str;
            java.lang.String[] strArrSplit = str.split(" ");
            if (strArrSplit.length > 0) {
                peopleName.givenName = strArrSplit[0];
            }
            if (strArrSplit.length > 1) {
                peopleName.familyName = strArrSplit[1];
            }
        } else {
            peopleName.familyName = str.substring(0, iIndexOf);
            int i = iIndexOf + 1;
            int iIndexOf2 = str.indexOf(",", i);
            peopleName.givenName = iIndexOf2 < 0 ? str.substring(i) : str.substring(i, iIndexOf2);
            peopleName.fullName = peopleName.givenName + " " + peopleName.familyName;
        }
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

    public static com.huawei.hms.ml.scan.HmsScan.AddressInfo[] a(java.lang.String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new com.huawei.hms.ml.scan.HmsScan.AddressInfo[0];
        }
        com.huawei.hms.ml.scan.HmsScan.AddressInfo[] addressInfoArr = new com.huawei.hms.ml.scan.HmsScan.AddressInfo[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            addressInfoArr[i] = new com.huawei.hms.ml.scan.HmsScan.AddressInfo(new java.lang.String[]{strArr[i]}, com.huawei.hms.ml.scan.HmsScan.AddressInfo.OTHER_USE_TYPE);
        }
        return addressInfoArr;
    }

    public static com.huawei.hms.ml.scan.HmsScan.EmailContent[] b(java.lang.String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new com.huawei.hms.ml.scan.HmsScan.EmailContent[0];
        }
        com.huawei.hms.ml.scan.HmsScan.EmailContent[] emailContentArr = new com.huawei.hms.ml.scan.HmsScan.EmailContent[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            emailContentArr[i] = new com.huawei.hms.ml.scan.HmsScan.EmailContent(strArr[i], "", "", com.huawei.hms.ml.scan.HmsScan.EmailContent.OTHER_USE_TYPE);
        }
        return emailContentArr;
    }

    public static java.lang.String[] b(java.lang.String[] strArr, java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList(5);
        for (java.lang.String str2 : strArr) {
            if (str2.startsWith(str)) {
                arrayList.add(com.huawei.hms.scankit.p.AbstractC0149gd.b(str2.substring(str.length())));
            }
        }
        return (java.lang.String[]) arrayList.toArray(com.huawei.hms.scankit.p.AbstractC0149gd.f724f);
    }

    public static com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] c(java.lang.String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[0];
        }
        com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumberArr = new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            telPhoneNumberArr[i] = new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OTHER_USE_TYPE, strArr[i]);
        }
        return telPhoneNumberArr;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        java.util.regex.Matcher matcher = f641g.matcher(strA);
        if (!matcher.matches()) {
            return null;
        }
        java.lang.String[] strArrSplit = matcher.group(1).split("(?<=(?<!\\\\)(?:\\\\\\\\){0,100});");
        java.lang.String strA2 = a(strArrSplit, "N:");
        if (strA2.length() == 0) {
            return null;
        }
        java.lang.String[] strArrB = b(strArrSplit, "TEL:");
        java.lang.String[] strArrB2 = b(strArrSplit, "EMAIL:");
        java.lang.String[] strArrB3 = b(strArrSplit, "ADR:");
        java.lang.String[] strArrB4 = b(strArrSplit, "URL:");
        java.lang.String strA3 = a(strArrSplit, "SOUND:");
        com.huawei.hms.ml.scan.HmsScan.ContactDetail contactDetail = new com.huawei.hms.ml.scan.HmsScan.ContactDetail(a(strA2, strA3), "", a(strArrSplit, "ORG:"), c(strArrB), b(strArrB2), a(strArrB3), strArrB4, a(strArrSplit, "NOTE:"));
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), contactDetail.peopleName.fullName, com.huawei.hms.ml.scan.HmsScan.CONTACT_DETAIL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(contactDetail));
    }
}
