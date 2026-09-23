package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.md, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0179md extends com.huawei.hms.scankit.p.AbstractC0149gd {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.regex.Pattern f762g = java.util.regex.Pattern.compile("WIFI:[^:]", 2);

    public static int c(java.lang.String str) {
        if (str == null) {
            return 0;
        }
        if (str.equalsIgnoreCase("WEP")) {
            return 2;
        }
        if ((str.equalsIgnoreCase("WPA") | str.equalsIgnoreCase("WPA2") | str.equalsIgnoreCase("WPA/WPA2")) || str.equalsIgnoreCase("WPA2/WPA")) {
            return 1;
        }
        return str.equalsIgnoreCase("SAE") ? 3 : 0;
    }

    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (android.text.TextUtils.isEmpty(strA)) {
            return null;
        }
        java.util.regex.Matcher matcher = f762g.matcher(strA);
        if (matcher.find() && matcher.start() == 0) {
            java.lang.String strSubstring = strA.substring(5);
            if (!strSubstring.endsWith(";")) {
                strSubstring = e.a.c.a.a.e(strSubstring, ";");
            }
            java.lang.String strB = com.huawei.hms.scankit.p.AbstractC0149gd.b("S:", strSubstring, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON, false);
            if (strB != null && !strB.isEmpty()) {
                java.lang.String strB2 = com.huawei.hms.scankit.p.AbstractC0149gd.b("P:", strSubstring, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON, false);
                java.lang.String strB3 = com.huawei.hms.scankit.p.AbstractC0149gd.b("T:", strSubstring, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON, false);
                java.lang.StringBuilder sbO = e.a.c.a.a.o(strB);
                sbO.append((strB2 == null || strB2.isEmpty()) ? "" : e.a.c.a.a.e(" ", strB2));
                return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), sbO.toString(), com.huawei.hms.ml.scan.HmsScan.WIFI_CONNECT_INFO_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, new com.huawei.hms.scankit.F(new com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo(strB, strB2, c(strB3))));
            }
        }
        return null;
    }
}
