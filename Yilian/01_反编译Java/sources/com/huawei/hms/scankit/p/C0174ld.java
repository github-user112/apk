package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ld, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0174ld extends com.huawei.hms.scankit.p.AbstractC0149gd {
    public static java.lang.String a(java.lang.CharSequence charSequence, java.lang.String str, boolean z) {
        java.util.List<java.util.List<java.lang.String>> listA = com.huawei.hms.scankit.p.C0169kd.a(charSequence, str, z, false);
        return (listA == null || listA.isEmpty()) ? "" : listA.get(listA.size() - 1).get(0);
    }

    public static void a(java.lang.String[] strArr, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        for (java.lang.String str : strArr) {
            com.huawei.hms.scankit.p.C0119ad.a(str, eventTime);
        }
    }

    public static java.lang.String[] b(java.lang.CharSequence charSequence, java.lang.String str, boolean z) {
        java.util.List<java.util.List<java.lang.String>> listA = com.huawei.hms.scankit.p.C0169kd.a(charSequence, str, z, false);
        if (listA == null || listA.isEmpty()) {
            return new java.lang.String[0];
        }
        int size = listA.size();
        java.lang.String[] strArr = new java.lang.String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = listA.get(i).get(0);
        }
        return strArr;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (!strA.startsWith("BEGIN:VEVENT")) {
            return null;
        }
        java.lang.String strE = e.a.c.a.a.e(strA, "\n");
        java.lang.String strA2 = a("SUMMARY", strE, true);
        java.lang.String strA3 = a("LOCATION", strE, true);
        java.lang.String strA4 = a("ORGANIZER", strE, true);
        java.lang.String strA5 = a("DESCRIPTION", strE, true);
        java.lang.String strA6 = a("STATUS", strE, true);
        java.lang.String[] strArrB = b("DTSTART", strE, true);
        java.lang.String[] strArrB2 = b("DTEND", strE, true);
        com.huawei.hms.ml.scan.HmsScan.EventTime eventTime = new com.huawei.hms.ml.scan.HmsScan.EventTime(-1, -1, -1, -1, -1, -1, false, "");
        com.huawei.hms.ml.scan.HmsScan.EventTime eventTime2 = new com.huawei.hms.ml.scan.HmsScan.EventTime(-1, -1, -1, -1, -1, -1, false, "");
        a(strArrB, eventTime);
        a(strArrB2, eventTime2);
        return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA2, com.huawei.hms.ml.scan.HmsScan.EVENT_INFO_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.EventInfo(strA2, eventTime, eventTime2, strA3, strA5, strA4, strA6)));
    }
}
