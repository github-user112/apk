package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0180n {
    public static long a(java.lang.String str, long j) {
        try {
            java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(str, java.util.Locale.getDefault());
            return simpleDateFormat.parse(simpleDateFormat.format(java.lang.Long.valueOf(j))).getTime();
        } catch (java.text.ParseException unused) {
            com.huawei.hms.scankit.p.T.c("hmsSdk/stringUtil", "getMillisOfDate(): Time conversion Exception !");
            return 0L;
        }
    }

    public static android.util.Pair<java.lang.String, java.lang.String> a(java.lang.String str) {
        java.lang.String strSubstring;
        java.lang.String str2;
        if ("_default_config_tag".equals(str)) {
            return new android.util.Pair<>(str, "");
        }
        java.lang.String[] strArrSplit = str.split("-");
        if (strArrSplit.length > 2) {
            str2 = strArrSplit[strArrSplit.length - 1];
            strSubstring = str.substring(0, (str.length() - str2.length()) - 1);
        } else {
            strSubstring = strArrSplit[0];
            str2 = strArrSplit[1];
        }
        return new android.util.Pair<>(strSubstring, str2);
    }

    public static java.lang.String a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "alltype" : "diffprivacy" : "preins" : "maint" : "oper";
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) {
        return "_default_config_tag".equals(str) ? str : e.a.c.a.a.f(str, "-", str2);
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if ("_default_config_tag".equals(str)) {
            return e.a.c.a.a.e("_default_config_tag#", str3);
        }
        return str + "-" + str2 + "#" + str3;
    }

    public static java.util.Set<java.lang.String> a(java.util.Set<java.lang.String> set) {
        if (set == null || set.size() == 0) {
            return new java.util.HashSet();
        }
        java.util.HashSet hashSet = new java.util.HashSet();
        for (java.lang.String str : set) {
            if ("_default_config_tag".equals(str)) {
                hashSet.add("_default_config_tag");
            } else {
                java.lang.String strF = e.a.c.a.a.f(str, "-", "oper");
                java.lang.String strF2 = e.a.c.a.a.f(str, "-", "maint");
                hashSet.add(strF);
                hashSet.add(strF2);
                hashSet.add(str + "-diffprivacy");
            }
        }
        return hashSet;
    }
}
