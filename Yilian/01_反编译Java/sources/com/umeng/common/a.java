package com.umeng.common;

/* loaded from: classes.dex */
public class a {
    public static java.lang.String a = null;
    public static final java.lang.String b = "umeng+";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1414c = "ek__id";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1415d = "ek_key";

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.String f1416e = "";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1417f = "umeng_subprocess_info";

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.String f1418g = "";
    public static com.umeng.common.a h;

    public static com.umeng.common.a a() {
        if (h == null) {
            synchronized (com.umeng.common.a.class) {
                if (h == null) {
                    h = new com.umeng.common.a();
                }
            }
        }
        return h;
    }

    private java.lang.String c(java.lang.String str) {
        java.lang.String string = "";
        try {
            java.lang.String strSubstring = str.substring(1, 9);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (int i = 0; i < strSubstring.length(); i++) {
                char cCharAt = strSubstring.charAt(i);
                if (!java.lang.Character.isDigit(cCharAt)) {
                    sb.append(cCharAt);
                } else if (java.lang.Integer.parseInt(java.lang.Character.toString(cCharAt)) == 0) {
                    sb.append(0);
                } else {
                    sb.append(10 - java.lang.Integer.parseInt(java.lang.Character.toString(cCharAt)));
                }
            }
            string = sb.toString();
            return string + new java.lang.StringBuilder(string).reverse().toString();
        } catch (java.lang.Throwable unused) {
            return string;
        }
    }

    public java.lang.String a(java.lang.String str) {
        try {
            return android.text.TextUtils.isEmpty(a) ? str : android.util.Base64.encodeToString(com.umeng.commonsdk.statistics.common.DataHelper.encrypt(str.getBytes(), a.getBytes()), 0);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public void a(android.content.Context context) {
        try {
            if (android.text.TextUtils.isEmpty(a)) {
                java.lang.String multiProcessSP = com.umeng.commonsdk.utils.UMUtils.getMultiProcessSP(context, "ek__id");
                if (!android.text.TextUtils.isEmpty(multiProcessSP)) {
                    f1416e = c(multiProcessSP);
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>> primaryKey: " + f1416e);
                }
                android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f1417f, 0);
                if (sharedPreferences != null) {
                    f1418g = sharedPreferences.getString("ek__id", null);
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程备份秘钥：主进程key: " + f1418g);
                }
                a = c(com.umeng.commonsdk.utils.UMUtils.genId());
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>> 正式秘钥：key: " + a);
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public java.lang.String b(java.lang.String str) {
        java.lang.String str2;
        java.lang.String str3 = null;
        try {
            if (!android.text.TextUtils.isEmpty(a)) {
                str = new java.lang.String(com.umeng.commonsdk.statistics.common.DataHelper.decrypt(android.util.Base64.decode(str.getBytes(), 0), a.getBytes()));
            }
            return str;
        } catch (java.lang.Exception unused) {
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败!");
            if (android.text.TextUtils.isEmpty(f1416e)) {
                return null;
            }
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试");
            try {
                str2 = new java.lang.String(com.umeng.commonsdk.statistics.common.DataHelper.decrypt(android.util.Base64.decode(str.getBytes(), 0), f1416e.getBytes()));
            } catch (java.lang.Exception unused2) {
            }
            try {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试成功。");
                return str2;
            } catch (java.lang.Exception unused3) {
                str3 = str2;
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，换老秘钥重试失败。换子进程备份key重试。");
                try {
                    java.lang.String str4 = new java.lang.String(com.umeng.commonsdk.statistics.common.DataHelper.decrypt(android.util.Base64.decode(str.getBytes(), 0), f1418g.getBytes()));
                    try {
                        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试成功。");
                        return str4;
                    } catch (java.lang.Throwable unused4) {
                        str3 = str4;
                        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 子进程事件数据解密失败，子进程备份key重试失败。");
                        return str3;
                    }
                } catch (java.lang.Throwable unused5) {
                }
            }
        }
    }
}
