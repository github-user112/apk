package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0170l {
    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        if (!android.text.TextUtils.isEmpty(str2)) {
            return a(str, str2, str3) ? str2 : str4;
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", "checkStrParameter() Parameter verification failure! Parameter:" + str);
        return str4;
    }

    public static boolean a(java.lang.String str) {
        return !a("eventId", str, 256);
    }

    public static boolean a(java.lang.String str, java.lang.String str2, int i) {
        java.lang.StringBuilder sb;
        java.lang.String str3;
        if (android.text.TextUtils.isEmpty(str2)) {
            sb = new java.lang.StringBuilder();
            str3 = "checkString() Parameter is empty : ";
        } else {
            if (str2.length() <= i) {
                return true;
            }
            sb = new java.lang.StringBuilder();
            str3 = "checkString() Failure of parameter length check! Parameter:";
        }
        sb.append(str3);
        sb.append(str);
        com.huawei.hms.scankit.p.T.c("hmsSdk", sb.toString());
        return false;
    }

    public static boolean a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sb;
        java.lang.String str4;
        if (android.text.TextUtils.isEmpty(str2)) {
            sb = new java.lang.StringBuilder();
            str4 = "checkString() Parameter is null! Parameter:";
        } else {
            if (java.util.regex.Pattern.compile(str3).matcher(str2).matches()) {
                return true;
            }
            sb = new java.lang.StringBuilder();
            str4 = "checkString() Parameter verification failure! Parameter:";
        }
        sb.append(str4);
        sb.append(str);
        com.huawei.hms.scankit.p.T.c("hmsSdk", sb.toString());
        return false;
    }

    public static boolean a(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String string;
        if (map == null || map.size() == 0) {
            string = "onEvent() mapValue has not data.so,The data will be empty";
        } else if (map.size() == 1 && (map.get("constants") != null || map.get("_constants") != null)) {
            string = "checkMap() the key can't be constants or _constants";
        } else {
            if (map.size() <= 2048 && map.toString().length() <= 204800) {
                return true;
            }
            java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("checkMap Map data is too big! size: ");
            sbA.append(map.size());
            sbA.append(" length: ");
            sbA.append(map.toString().length());
            string = sbA.toString();
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", string);
        return false;
    }
}
