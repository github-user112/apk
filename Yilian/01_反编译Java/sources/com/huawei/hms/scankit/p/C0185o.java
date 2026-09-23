package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0185o {
    public static final java.lang.String[] a = {"e2f856b9f9a4fd4cb2795aeaf83268e4bff189aaec05d691ffde76e075b82648", "173cf86fe9894a0f70dadd09d4fd88c380836099d4939f8c3754361bdc16a32b", "b368b110e3b565fe97c91f786e11bc48754cc8e4e6f21d8a94a68ac6ad67aaaf", "db48223fd9e143f7e133c57f5d08a4e38549ce3ebd921fe3b4003c26e5e35bed", "4bdecdf772491e35c4e8b48f88aee22bae1311984f2e1da4dfad0b78ee7f5163", "3081a0adab3018d57165e6dd24074bdbac640f6dbe21a9e24d3474a87ebf38b8", "db53fcdc9ab71e9bdd4eab257fe1aba7989ad2b24fbe3a85dfef72ea1dd6bae2", "d80f18e8081b624cc64985f87f70118f1702985d2e10dbc985ee7be334fd3c7d", "5fed96c85bd58c58aadbd465c172a4c9a794d8eb2f86cbc7bcee6caf4c7a2c5f", "07ff9b7aeeff969173c45b285fe0fecdbaae244576ff7a2796a36f1c0c11adb4", "92974c6802419e4d18b5ec536cbfa167b8e8eff09ec4c8510a5b95750b1e0c82", "403f14ad2f0e5eb3c4f3a0bcd5c1592cc4492662ad53191c92905255d4990656", "4230baa077b401374d0fc012375047e79ea0790d58d095ef18d97d95470c738d"};

    public static java.lang.String a(java.lang.String str, int i) {
        if (android.text.TextUtils.isEmpty(str) || i <= 0) {
            com.huawei.hms.scankit.p.T.b("UriUtil", "url is null");
            return str;
        }
        java.lang.String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length < i) {
            return "";
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append(strArrSplit[strArrSplit.length - i]);
        for (int i2 = 1; i2 < i; i2++) {
            stringBuffer.append(".");
            stringBuffer.append(strArrSplit[(strArrSplit.length - i) + i2]);
        }
        return stringBuffer.toString();
    }

    public static boolean a(java.lang.String str) {
        if (com.huawei.hms.scankit.p.C0200ra.a.booleanValue()) {
            return true;
        }
        for (java.lang.String str2 : a) {
            if (a(str, str2, 2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(java.lang.String str, java.lang.String str2, int i) {
        java.lang.String string;
        java.lang.StringBuilder sbA;
        java.lang.String message;
        java.lang.String strB = b(str);
        if (android.text.TextUtils.isEmpty(strB) || android.text.TextUtils.isEmpty(str2)) {
            string = "url or whitelistHash is null";
        } else {
            java.lang.String strA = a(strB, i);
            if (!android.text.TextUtils.isEmpty(strA)) {
                if (str2.equals(com.huawei.hms.scankit.p.C0204s.a().a(strB))) {
                    return true;
                }
                if (!str2.equals(com.huawei.hms.scankit.p.C0204s.a().a(strA))) {
                    return false;
                }
                try {
                    java.lang.String strSubstring = strB.substring(0, strB.length() - strA.length());
                    if (strSubstring.endsWith(".")) {
                        return strSubstring.matches("^[A-Za-z0-9.-]+$");
                    }
                    return false;
                } catch (java.lang.IndexOutOfBoundsException e2) {
                    sbA = com.huawei.hms.scankit.p.Oa.a("IndexOutOfBoundsException");
                    message = e2.getMessage();
                    sbA.append(message);
                    string = sbA.toString();
                    com.huawei.hms.scankit.p.T.d("UriUtil", string);
                    return false;
                } catch (java.lang.Exception e3) {
                    sbA = com.huawei.hms.scankit.p.Oa.a("Exception : ");
                    message = e3.getMessage();
                    sbA.append(message);
                    string = sbA.toString();
                    com.huawei.hms.scankit.p.T.d("UriUtil", string);
                    return false;
                }
            }
            string = "get urlLastNStr is null";
        }
        com.huawei.hms.scankit.p.T.d("UriUtil", string);
        return false;
    }

    @android.annotation.TargetApi(9)
    public static java.lang.String b(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            com.huawei.hms.scankit.p.T.b("UriUtil", "url is null");
            return str;
        }
        try {
            if (android.webkit.URLUtil.isNetworkUrl(str) && !str.toLowerCase(java.util.Locale.US).startsWith("http:")) {
                return new java.net.URI(str).getHost();
            }
            com.huawei.hms.scankit.p.T.d("UriUtil", "url don't starts with https");
            return null;
        } catch (java.net.URISyntaxException e2) {
            java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("getHostByURI error : ");
            sbA.append(e2.getMessage());
            com.huawei.hms.scankit.p.T.d("UriUtil", sbA.toString());
            return null;
        }
    }
}
