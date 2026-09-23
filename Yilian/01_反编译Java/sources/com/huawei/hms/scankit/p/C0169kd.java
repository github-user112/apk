package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.kd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0169kd extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f745g = java.util.regex.Pattern.compile("\r?\n[ \t]");
    public static final java.util.regex.Pattern h = java.util.regex.Pattern.compile("=");
    public static final java.util.regex.Pattern i = java.util.regex.Pattern.compile(";");
    public static final java.util.regex.Pattern j = java.util.regex.Pattern.compile("(?<!\\\\);+");

    public static com.huawei.hms.ml.scan.HmsScan.PeopleName a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName = new com.huawei.hms.ml.scan.HmsScan.PeopleName("", "", "", "", "", "", "");
        if (str != null) {
            java.lang.String[] strArrSplit = str.split(";");
            if (strArrSplit.length > 0) {
                peopleName.familyName = strArrSplit[0];
            }
            if (strArrSplit.length > 1) {
                peopleName.givenName = strArrSplit[1];
            }
            if (strArrSplit.length > 2) {
                peopleName.middleName = strArrSplit[2];
            }
            if (strArrSplit.length > 3) {
                peopleName.namePrefix = strArrSplit[3];
            }
            if (strArrSplit.length > 4) {
                peopleName.nameSuffix = strArrSplit[4];
            }
        }
        if (str2 != null) {
            peopleName.fullName = str2;
        }
        return peopleName;
    }

    public static java.lang.String a(java.lang.CharSequence charSequence, java.lang.String str) {
        char cCharAt;
        int length = charSequence.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt2 = charSequence.charAt(i2);
            if (cCharAt2 != '\n' && cCharAt2 != '\r') {
                if (cCharAt2 != '=') {
                    a(byteArrayOutputStream, str, sb);
                    sb.append(cCharAt2);
                } else if (i2 < length - 2 && (cCharAt = charSequence.charAt(i2 + 1)) != '\r' && cCharAt != '\n') {
                    i2 += 2;
                    char cCharAt3 = charSequence.charAt(i2);
                    int iA = com.huawei.hms.scankit.p.AbstractC0149gd.a(cCharAt);
                    int iA2 = com.huawei.hms.scankit.p.AbstractC0149gd.a(cCharAt3);
                    if (iA >= 0 && iA2 >= 0) {
                        byteArrayOutputStream.write((iA << 4) + iA2);
                    }
                }
            }
            i2++;
        }
        a(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    public static java.util.List<java.util.List<java.lang.String>> a(java.lang.CharSequence charSequence, java.lang.String str, boolean z, boolean z2) {
        java.util.ArrayList arrayList;
        boolean z3;
        java.lang.String str2;
        int iIndexOf;
        java.lang.String strReplaceAll;
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        java.util.ArrayList arrayList2 = null;
        while (i3 < length) {
            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("(?:^|\n)" + ((java.lang.Object) charSequence) + "(?:;([^:\n(?![ |\t])]*))?:").matcher(str);
            if (i3 > 0) {
                i3--;
            }
            if (!matcher.find(i3)) {
                break;
            }
            int iEnd = matcher.end(i2);
            java.lang.String strGroup = matcher.group(1);
            if (strGroup != null) {
                java.lang.String[] strArrSplit = i.split(strGroup);
                int length2 = strArrSplit.length;
                int i4 = 0;
                arrayList = null;
                z3 = false;
                str2 = null;
                while (i4 < length2) {
                    java.lang.String str3 = strArrSplit[i4];
                    if (arrayList == null) {
                        arrayList = new java.util.ArrayList(1);
                    }
                    arrayList.add(str3);
                    java.lang.String[] strArrSplit2 = h.split(str3, 2);
                    if (strArrSplit2.length > 1) {
                        java.lang.String str4 = strArrSplit2[i2];
                        java.lang.String str5 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str4) && "QUOTED-PRINTABLE".equalsIgnoreCase(str5)) {
                            z3 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str4)) {
                            str2 = str5;
                        } else {
                            "VALUE".equalsIgnoreCase(str4);
                        }
                    }
                    i4++;
                    i2 = 0;
                }
            } else {
                arrayList = null;
                z3 = false;
                str2 = null;
            }
            int i5 = iEnd;
            while (true) {
                iIndexOf = str.indexOf(10, i5);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str.length() - 1) {
                    int i6 = iIndexOf + 1;
                    if (str.charAt(i6) == ' ' || str.charAt(i6) == '\t') {
                        i5 = iIndexOf + 2;
                    }
                }
                if (!z3 || ((iIndexOf < 1 || str.charAt(iIndexOf - 1) != '=') && (iIndexOf < 2 || str.charAt(iIndexOf - 2) != '='))) {
                    break;
                }
                i5 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i3 = length;
            } else if (iIndexOf <= iEnd) {
                i3 = iIndexOf + 1;
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new java.util.ArrayList(1);
                }
                if (iIndexOf >= 1 && str.charAt(iIndexOf - 1) == '\r') {
                    iIndexOf--;
                }
                java.lang.String strSubstring = str.substring(iEnd, iIndexOf);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                if (z3) {
                    strReplaceAll = a((java.lang.CharSequence) strSubstring, str2);
                    if (z2) {
                        strReplaceAll = j.matcher(strReplaceAll).replaceAll(" ").trim();
                    }
                } else {
                    if (z2) {
                        strSubstring = j.matcher(strSubstring).replaceAll(" ").trim();
                    }
                    strReplaceAll = f745g.matcher(strSubstring).replaceAll("");
                }
                if (arrayList == null) {
                    java.util.ArrayList arrayList3 = new java.util.ArrayList(1);
                    arrayList3.add(strReplaceAll);
                    arrayList2.add(arrayList3);
                    i3 = iIndexOf + 1;
                } else {
                    arrayList.add(0, strReplaceAll);
                    arrayList2.add(arrayList);
                    i3 = iIndexOf + 1;
                }
            }
            i2 = 0;
        }
        return arrayList2;
    }

    public static void a(java.io.ByteArrayOutputStream byteArrayOutputStream, java.lang.String str, java.lang.StringBuilder sb) {
        java.lang.String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new java.lang.String(byteArray, java.nio.charset.StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new java.lang.String(byteArray, str);
                } catch (java.io.UnsupportedEncodingException unused) {
                    str2 = new java.lang.String(byteArray, java.nio.charset.StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    public static void a(java.lang.String[] strArr, int i2, java.lang.StringBuilder sb) {
        if (strArr[i2] == null || strArr[i2].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        }
        sb.append(strArr[i2]);
    }

    public static com.huawei.hms.ml.scan.HmsScan.AddressInfo[] a(java.lang.String[] strArr, java.lang.String[] strArr2) {
        int i2;
        if (strArr.length != strArr2.length) {
            return new com.huawei.hms.ml.scan.HmsScan.AddressInfo[0];
        }
        com.huawei.hms.ml.scan.HmsScan.AddressInfo[] addressInfoArr = new com.huawei.hms.ml.scan.HmsScan.AddressInfo[strArr.length];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            com.huawei.hms.ml.scan.HmsScan.AddressInfo addressInfo = new com.huawei.hms.ml.scan.HmsScan.AddressInfo(new java.lang.String[]{strArr2[i3]}, com.huawei.hms.ml.scan.HmsScan.AddressInfo.OTHER_USE_TYPE);
            if (strArr[i3] != null) {
                if (strArr[i3].equals("WORK")) {
                    i2 = com.huawei.hms.ml.scan.HmsScan.AddressInfo.OFFICE_TYPE;
                } else if (strArr[i3].equals("HOME")) {
                    i2 = com.huawei.hms.ml.scan.HmsScan.AddressInfo.RESIDENTIAL_USE_TYPE;
                }
                addressInfo.addressType = i2;
            }
            addressInfoArr[i3] = addressInfo;
        }
        return addressInfoArr;
    }

    public static java.lang.String[] a(java.util.Collection<java.util.List<java.lang.String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return new java.lang.String[0];
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(collection.size());
        java.util.Iterator<java.util.List<java.lang.String>> it = collection.iterator();
        while (it.hasNext()) {
            java.lang.String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (java.lang.String[]) arrayList.toArray(com.huawei.hms.scankit.p.AbstractC0149gd.f724f);
    }

    public static java.lang.String b(java.lang.CharSequence charSequence, java.lang.String str, boolean z, boolean z2) {
        java.util.List<java.util.List<java.lang.String>> listA = a(charSequence, str, z, z2);
        java.lang.String str2 = "";
        if (listA != null && !listA.isEmpty()) {
            for (java.util.List<java.lang.String> list : listA) {
                if (list.get(0) != null && !list.get(0).isEmpty()) {
                    str2 = list.get(0);
                }
            }
        }
        return str2;
    }

    public static com.huawei.hms.ml.scan.HmsScan.EmailContent[] b(java.lang.String[] strArr, java.lang.String[] strArr2) {
        int i2;
        if (strArr.length != strArr2.length) {
            return new com.huawei.hms.ml.scan.HmsScan.EmailContent[0];
        }
        com.huawei.hms.ml.scan.HmsScan.EmailContent[] emailContentArr = new com.huawei.hms.ml.scan.HmsScan.EmailContent[strArr.length];
        for (int i3 = 0; i3 < strArr.length; i3++) {
            com.huawei.hms.ml.scan.HmsScan.EmailContent emailContent = new com.huawei.hms.ml.scan.HmsScan.EmailContent(strArr2[i3], "", "", com.huawei.hms.ml.scan.HmsScan.EmailContent.OTHER_USE_TYPE);
            if (strArr[i3] != null) {
                if (strArr[i3].equals("WORK")) {
                    i2 = com.huawei.hms.ml.scan.HmsScan.EmailContent.OFFICE_USE_TYPE;
                } else if (strArr[i3].equals("HOME")) {
                    i2 = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.RESIDENTIAL_USE_TYPE;
                }
                emailContent.addressType = i2;
            }
            emailContentArr[i3] = emailContent;
        }
        return emailContentArr;
    }

    public static java.lang.String[] b(java.util.Collection<java.util.List<java.lang.String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return new java.lang.String[0];
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(collection.size());
        for (java.util.List<java.lang.String> list : collection) {
            java.lang.String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                java.lang.String strSubstring = null;
                int i2 = 1;
                while (true) {
                    if (i2 >= list.size()) {
                        break;
                    }
                    java.lang.String str2 = list.get(i2);
                    int iIndexOf = str2.indexOf(61);
                    if (iIndexOf < 0) {
                        strSubstring = str2;
                        break;
                    }
                    if ("TYPE".equals(str2.substring(0, iIndexOf))) {
                        strSubstring = str2.substring(iIndexOf + 1);
                        break;
                    }
                    i2++;
                }
                arrayList.add(strSubstring);
            }
        }
        return (java.lang.String[]) arrayList.toArray(com.huawei.hms.scankit.p.AbstractC0149gd.f724f);
    }

    public static java.lang.String c(java.lang.String str) {
        int iIndexOf;
        if (str == null || str.isEmpty()) {
            return null;
        }
        java.lang.String[] strArr = new java.lang.String[5];
        int i2 = 0;
        int i3 = 0;
        while (i2 < 4 && (iIndexOf = str.indexOf(59, i3)) >= 0) {
            strArr[i2] = str.substring(i3, iIndexOf);
            i2++;
            i3 = iIndexOf + 1;
        }
        strArr[i2] = str.substring(i3);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(100);
        a(strArr, 3, sb);
        a(strArr, 1, sb);
        a(strArr, 2, sb);
        a(strArr, 0, sb);
        a(strArr, 4, sb);
        return sb.toString().trim();
    }

    public static com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] c(java.lang.String[] strArr, java.lang.String[] strArr2) {
        if (strArr.length != strArr2.length) {
            return new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[0];
        }
        com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumberArr = new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber telPhoneNumber = new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OTHER_USE_TYPE, strArr2[i2]);
            if (strArr[i2] != null) {
                telPhoneNumber.useType = strArr[i2].equals("WORK") ? com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OFFICE_USE_TYPE : strArr[i2].equals("HOME") ? com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.RESIDENTIAL_USE_TYPE : strArr[i2].equals("CELL") ? com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.CELLPHONE_NUMBER_USE_TYPE : strArr[i2].equals("FAX") ? com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.FAX_USE_TYPE : com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.OTHER_USE_TYPE;
            }
            telPhoneNumberArr[i2] = telPhoneNumber;
        }
        return telPhoneNumberArr;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strE;
        java.lang.String strB;
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (!strA.startsWith("BEGIN:VCARD") || (strB = b((java.lang.CharSequence) "N", (strE = e.a.c.a.a.e(strA, "\n")), true, false)) == null || strB.isEmpty() || strB.split(";").length == 0) {
            return null;
        }
        java.lang.String strB2 = b((java.lang.CharSequence) "FN", strE, true, false);
        if (strB2 == null || strB2.isEmpty()) {
            strB2 = c(strB);
        }
        java.lang.String str = strB2;
        java.util.List<java.util.List<java.lang.String>> listA = a((java.lang.CharSequence) "TEL", strE, true, false);
        java.util.List<java.util.List<java.lang.String>> listA2 = a((java.lang.CharSequence) "EMAIL", strE, true, false);
        java.util.List<java.util.List<java.lang.String>> listA3 = a((java.lang.CharSequence) "ADR", strE, true, true);
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), str, com.huawei.hms.ml.scan.HmsScan.CONTACT_DETAIL_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.ContactDetail(a(strB, str), b((java.lang.CharSequence) "TITLE", strE, true, false), b((java.lang.CharSequence) "ORG", strE, true, true), c(b(listA), a(listA)), b(b(listA2), a(listA2)), a(b(listA3), a(listA3)), a(a((java.lang.CharSequence) "URL", strE, true, false)), null)));
    }
}
