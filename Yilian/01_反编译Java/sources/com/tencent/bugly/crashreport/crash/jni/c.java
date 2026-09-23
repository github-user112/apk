package com.tencent.bugly.crashreport.crash.jni;

/* loaded from: classes.dex */
public class c {
    public static java.util.List<java.io.File> a = new java.util.ArrayList();

    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    public static com.tencent.bugly.crashreport.crash.CrashDetailBean a(android.content.Context context, java.lang.String str, com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler nativeExceptionHandler) throws java.lang.Throwable {
        java.io.BufferedInputStream bufferedInputStream;
        java.lang.String str2;
        java.lang.String strA;
        java.io.BufferedInputStream bufferedInputStream2 = null;
        if (context == null || str == null || nativeExceptionHandler == null) {
            com.tencent.bugly.proguard.aa.b("get eup record file args error", new java.lang.Object[0]);
            return null;
        }
        java.io.File file = new java.io.File(str, "rqd_record.eup");
        if (file.exists()) {
            ?? CanRead = file.canRead();
            try {
                if (CanRead != 0) {
                    try {
                        bufferedInputStream = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
                        try {
                            java.lang.String strA2 = a(bufferedInputStream);
                            if (strA2 != null && strA2.equals("NATIVE_RQD_REPORT")) {
                                java.util.HashMap map = new java.util.HashMap();
                                loop0: while (true) {
                                    str2 = null;
                                    while (true) {
                                        strA = a(bufferedInputStream);
                                        if (strA == null) {
                                            break loop0;
                                        }
                                        if (str2 == null) {
                                            str2 = strA;
                                        }
                                    }
                                    map.put(str2, strA);
                                }
                                if (str2 != null) {
                                    com.tencent.bugly.proguard.aa.b("record not pair! drop! %s", str2);
                                    try {
                                        bufferedInputStream.close();
                                    } catch (java.io.IOException e2) {
                                        e2.printStackTrace();
                                    }
                                    return null;
                                }
                                com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanA = a(context, map, nativeExceptionHandler);
                                try {
                                    bufferedInputStream.close();
                                } catch (java.io.IOException e3) {
                                    e3.printStackTrace();
                                }
                                return crashDetailBeanA;
                            }
                            com.tencent.bugly.proguard.aa.b("record read fail! %s", strA2);
                            try {
                                bufferedInputStream.close();
                            } catch (java.io.IOException e4) {
                                e4.printStackTrace();
                            }
                            return null;
                        } catch (java.io.IOException e5) {
                            e = e5;
                            e.printStackTrace();
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (java.io.IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            return null;
                        }
                    } catch (java.io.IOException e7) {
                        e = e7;
                        bufferedInputStream = null;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (java.io.IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                bufferedInputStream2 = CanRead;
            }
        }
        return null;
    }

    public static com.tencent.bugly.crashreport.crash.CrashDetailBean a(android.content.Context context, java.util.Map<java.lang.String, java.lang.String> map, com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler nativeExceptionHandler) {
        java.lang.String str;
        java.lang.String string;
        if (!a(map, context)) {
            return null;
        }
        java.util.Map<java.lang.String, java.lang.Integer> mapD = d(map.get("intStateStr"));
        if (mapD == null) {
            com.tencent.bugly.proguard.aa.b("parse intSateMap fail", java.lang.Integer.valueOf(map.size()));
            return null;
        }
        try {
            mapD.get("sino").intValue();
            mapD.get("sud").intValue();
            java.lang.String str2 = map.get("soVersion");
            if (android.text.TextUtils.isEmpty(str2)) {
                com.tencent.bugly.proguard.aa.b("error format at version", new java.lang.Object[0]);
                return null;
            }
            java.lang.String str3 = (java.lang.String) a(map, "codeMsg", "unknown");
            java.lang.String str4 = (java.lang.String) a(map, "signalName", "unknown");
            map.get("errnoMsg");
            java.lang.String strD = d(map);
            java.lang.Integer num = mapD.get("sico");
            if (num == null || num.intValue() <= 0) {
                str = str3;
                string = str4;
            } else {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(str4);
                sb.append("(");
                sb.append(str3);
                sb.append(")");
                string = sb.toString();
                str = "KERNEL";
            }
            byte[] bArrE = e(map);
            java.lang.String strB = b(map, mapD);
            com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanPackageCrashDatas = nativeExceptionHandler.packageCrashDatas(a(map, mapD), c(map, mapD), (mapD.get("ets").intValue() * 1000) + (mapD.get("etms").intValue() / 1000), string, (java.lang.String) a(map, "errorAddr", "unknown"), a(strD), str, strB, (java.lang.String) a(map, "tombPath", "unknown"), map.get("sysLogPath"), map.get("jniLogPath"), str2, bArrE, b(map), false, false);
            if (crashDetailBeanPackageCrashDatas != null) {
                java.lang.String str5 = (java.lang.String) a(map, "userId", crashDetailBeanPackageCrashDatas.m);
                crashDetailBeanPackageCrashDatas.m = str5;
                com.tencent.bugly.proguard.aa.a("[Native record info] userId: %s", str5);
                java.lang.String str6 = (java.lang.String) a(map, "sysLog", crashDetailBeanPackageCrashDatas.w);
                crashDetailBeanPackageCrashDatas.w = str6;
                java.lang.String str7 = (java.lang.String) a(map, "appVersion", str6);
                crashDetailBeanPackageCrashDatas.f985f = str7;
                com.tencent.bugly.proguard.aa.a("[Native record info] appVersion: %s", str7);
                crashDetailBeanPackageCrashDatas.R = a(map);
                crashDetailBeanPackageCrashDatas.Q = c(map);
                crashDetailBeanPackageCrashDatas.z = null;
                crashDetailBeanPackageCrashDatas.k = true;
            }
            return crashDetailBeanPackageCrashDatas;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("error format", new java.lang.Object[0]);
            th.printStackTrace();
            return null;
        }
    }

    public static <KeyT, ValueT> ValueT a(java.util.Map<KeyT, ValueT> map, KeyT keyt, ValueT valuet) {
        ValueT valuet2;
        try {
            valuet2 = map.get(keyt);
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(e2);
        }
        return valuet2 != null ? valuet2 : valuet;
    }

    public static java.lang.String a(java.io.BufferedInputStream bufferedInputStream) throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        if (bufferedInputStream == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new java.io.ByteArrayOutputStream(1024);
            while (true) {
                try {
                    int i = bufferedInputStream.read();
                    if (i == -1) {
                        break;
                    }
                    if (i == 0) {
                        java.lang.String str = new java.lang.String(byteArrayOutputStream.toByteArray(), "UTf-8");
                        byteArrayOutputStream.close();
                        return str;
                    }
                    byteArrayOutputStream.write(i);
                } catch (java.lang.Throwable th) {
                    th = th;
                    try {
                        com.tencent.bugly.proguard.aa.b(th);
                        return null;
                    } finally {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    public static java.lang.String a(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String[] strArrSplit = str.split("\n");
        if (strArrSplit == null || strArrSplit.length == 0) {
            return str;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.lang.String str2 : strArrSplit) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb.append(str2);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    public static java.lang.String a(java.lang.String str, int i, java.lang.String str2, boolean z) throws java.io.IOException {
        java.io.BufferedReader bufferedReader = null;
        if (str != null && i > 0) {
            java.io.File file = new java.io.File(str);
            if (file.exists() && file.canRead()) {
                com.tencent.bugly.proguard.aa.c("Read system log from native record file(length: %s bytes): %s", java.lang.Long.valueOf(file.length()), file.getAbsolutePath());
                a.add(file);
                com.tencent.bugly.proguard.aa.a("Add this record file to list for cleaning lastly.", new java.lang.Object[0]);
                if (str2 == null) {
                    return com.tencent.bugly.proguard.ha.a(new java.io.File(str), i, z);
                }
                java.lang.String sb = new java.lang.StringBuilder();
                try {
                    try {
                        java.io.BufferedReader bufferedReader2 = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file), "utf-8"));
                        while (true) {
                            try {
                                java.lang.String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                                sb2.append(str2);
                                sb2.append("[ ]*:");
                                if (java.util.regex.Pattern.compile(sb2.toString()).matcher(line).find()) {
                                    sb.append(line);
                                    sb.append("\n");
                                }
                                if (i > 0 && sb.length() > i) {
                                    if (z) {
                                        sb.delete(i, sb.length());
                                        break;
                                    }
                                    sb.delete(0, sb.length() - i);
                                }
                            } catch (java.lang.Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                try {
                                    com.tencent.bugly.proguard.aa.b(th);
                                    java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                                    sb3.append("\n[error:");
                                    sb3.append(th.toString());
                                    sb3.append("]");
                                    sb.append(sb3.toString());
                                    java.lang.String string = sb.toString();
                                    if (bufferedReader == null) {
                                        return string;
                                    }
                                    bufferedReader.close();
                                    sb = string;
                                    return sb;
                                } catch (java.lang.Throwable th2) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (java.lang.Exception e2) {
                                            com.tencent.bugly.proguard.aa.b(e2);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        }
                        java.lang.String string2 = sb.toString();
                        bufferedReader2.close();
                        sb = string2;
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                    }
                    return sb;
                } catch (java.lang.Exception e3) {
                    com.tencent.bugly.proguard.aa.b(e3);
                    return sb;
                }
            }
        }
        return null;
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) throws java.io.IOException {
        if (str == null || str2 == null) {
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String strC = c(str, str2);
        if (strC != null && !strC.isEmpty()) {
            sb.append("Register infos:\n");
            sb.append(strC);
        }
        java.lang.String strB = b(str, str2);
        if (strB != null && !strB.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append("System SO infos:\n");
            sb.append(strB);
        }
        return sb.toString();
    }

    public static java.lang.String a(java.util.Map<java.lang.String, java.lang.String> map, java.util.Map<java.lang.String, java.lang.Integer> map2) {
        java.lang.String str = (java.lang.String) a(map, "processName", "unknown");
        java.lang.Integer num = map2.get("ep");
        if (num == null) {
            return str;
        }
        return str + "(" + num + ")";
    }

    public static void a(boolean z, java.lang.String str) {
        if (str != null) {
            a.add(new java.io.File(str, "rqd_record.eup"));
            a.add(new java.io.File(str, "reg_record.txt"));
            a.add(new java.io.File(str, "map_record.txt"));
            a.add(new java.io.File(str, "backup_record.txt"));
            if (z) {
                b(str);
            }
        }
        java.util.List<java.io.File> list = a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (java.io.File file : a) {
            if (file.exists() && file.canWrite()) {
                file.delete();
                com.tencent.bugly.proguard.aa.a("Delete record file %s", file.getAbsoluteFile());
            }
        }
    }

    public static boolean a(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = map.get("isAppForeground");
        if (str == null) {
            return false;
        }
        com.tencent.bugly.proguard.aa.a("[Native record info] isAppForeground: %s", str);
        return str.equalsIgnoreCase("true");
    }

    public static boolean a(java.util.Map<java.lang.String, java.lang.String> map, android.content.Context context) {
        if (map == null) {
            return false;
        }
        if (com.tencent.bugly.crashreport.common.info.a.a(context) == null) {
            com.tencent.bugly.proguard.aa.b("abnormal com info not created", new java.lang.Object[0]);
            return false;
        }
        java.lang.String str = map.get("intStateStr");
        if (str != null && str.trim().length() > 0) {
            return true;
        }
        com.tencent.bugly.proguard.aa.b("no intStateStr", new java.lang.Object[0]);
        return false;
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) throws java.io.IOException {
        java.io.BufferedReader bufferedReaderA = com.tencent.bugly.proguard.ha.a(str, "map_record.txt");
        if (bufferedReaderA == null) {
            return null;
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.String line = bufferedReaderA.readLine();
            if (line != null && line.startsWith(str2)) {
                while (true) {
                    java.lang.String line2 = bufferedReaderA.readLine();
                    if (line2 == null) {
                        break;
                    }
                    sb.append("  ");
                    sb.append(line2);
                    sb.append("\n");
                }
                return sb.toString();
            }
            try {
                bufferedReaderA.close();
            } catch (java.lang.Exception e2) {
                com.tencent.bugly.proguard.aa.b(e2);
            }
            return null;
        } catch (java.lang.Throwable th) {
            try {
                com.tencent.bugly.proguard.aa.b(th);
                try {
                    bufferedReaderA.close();
                } catch (java.lang.Exception e3) {
                    com.tencent.bugly.proguard.aa.b(e3);
                }
                return null;
            } finally {
                try {
                    bufferedReaderA.close();
                } catch (java.lang.Exception e4) {
                    com.tencent.bugly.proguard.aa.b(e4);
                }
            }
        }
    }

    public static java.lang.String b(java.util.Map<java.lang.String, java.lang.String> map, java.util.Map<java.lang.String, java.lang.Integer> map2) {
        java.lang.String str = (java.lang.String) a(map, "sendingProcess", "unknown");
        java.lang.Integer num = map2.get("spd");
        if (num == null) {
            return str;
        }
        return str + "(" + num + ")";
    }

    public static java.util.Map<java.lang.String, java.lang.String> b(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = map.get("key-value");
        if (str == null) {
            return null;
        }
        java.util.HashMap map2 = new java.util.HashMap();
        for (java.lang.String str2 : str.split("\n")) {
            java.lang.String[] strArrSplit = str2.split("=");
            if (strArrSplit.length == 2) {
                map2.put(strArrSplit[0], strArrSplit[1]);
            }
        }
        return map2;
    }

    public static void b(java.lang.String str) {
        java.io.File[] fileArrListFiles;
        if (str == null) {
            return;
        }
        try {
            java.io.File file = new java.io.File(str);
            if (file.canRead() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (java.io.File file2 : fileArrListFiles) {
                    if (file2.canRead() && file2.canWrite() && file2.length() == 0) {
                        file2.delete();
                        com.tencent.bugly.proguard.aa.a("Delete empty record file %s", file2.getAbsoluteFile());
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
        }
    }

    public static long c(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = map.get("launchTime");
        if (str == null) {
            return -1L;
        }
        com.tencent.bugly.proguard.aa.a("[Native record info] launchTime: %s", str);
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException e2) {
            if (com.tencent.bugly.proguard.aa.b(e2)) {
                return -1L;
            }
            e2.printStackTrace();
            return -1L;
        }
    }

    public static java.lang.String c(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.io.File file = new java.io.File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    public static java.lang.String c(java.lang.String str, java.lang.String str2) throws java.io.IOException {
        java.lang.String strSubstring;
        java.io.BufferedReader bufferedReaderA = com.tencent.bugly.proguard.ha.a(str, "reg_record.txt");
        if (bufferedReaderA == null) {
            return null;
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.String line = bufferedReaderA.readLine();
            if (line == null || !line.startsWith(str2)) {
                try {
                    bufferedReaderA.close();
                } catch (java.lang.Exception e2) {
                    com.tencent.bugly.proguard.aa.b(e2);
                }
                return null;
            }
            int i = 18;
            int i2 = 0;
            int length = 0;
            while (true) {
                java.lang.String line2 = bufferedReaderA.readLine();
                if (line2 == null) {
                    break;
                }
                if (i2 % 4 == 0) {
                    if (i2 > 0) {
                        sb.append("\n");
                    }
                    strSubstring = "  ";
                } else {
                    if (line2.length() > 16) {
                        i = 28;
                    }
                    strSubstring = "                ".substring(0, i - length);
                }
                sb.append(strSubstring);
                length = line2.length();
                sb.append(line2);
                i2++;
            }
            sb.append("\n");
            return sb.toString();
        } catch (java.lang.Throwable th) {
            try {
                com.tencent.bugly.proguard.aa.b(th);
                try {
                    bufferedReaderA.close();
                } catch (java.lang.Exception e3) {
                    com.tencent.bugly.proguard.aa.b(e3);
                }
                return null;
            } finally {
                try {
                    bufferedReaderA.close();
                } catch (java.lang.Exception e4) {
                    com.tencent.bugly.proguard.aa.b(e4);
                }
            }
        }
    }

    public static java.lang.String c(java.util.Map<java.lang.String, java.lang.String> map, java.util.Map<java.lang.String, java.lang.Integer> map2) {
        java.lang.String str = (java.lang.String) a(map, "threadName", "unknown");
        java.lang.Integer num = map2.get("et");
        if (num == null) {
            return str;
        }
        return str + "(" + num + ")";
    }

    public static java.lang.String d(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = (java.lang.String) a(map, "stack", "unknown");
        java.lang.String str2 = map.get("jstack");
        return str2 != null ? e.a.c.a.a.f(str, "java:\n", str2) : str;
    }

    public static java.util.Map<java.lang.String, java.lang.Integer> d(java.lang.String str) {
        if (str == null) {
            return null;
        }
        try {
            java.util.HashMap map = new java.util.HashMap();
            for (java.lang.String str2 : str.split(",")) {
                java.lang.String[] strArrSplit = str2.split(":");
                if (strArrSplit.length != 2) {
                    com.tencent.bugly.proguard.aa.b("error format at %s", str2);
                    return null;
                }
                map.put(strArrSplit[0], java.lang.Integer.valueOf(java.lang.Integer.parseInt(strArrSplit[1])));
            }
            return map;
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b("error format intStateStr %s", str);
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] e(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = map.get("nativeLog");
        if (str == null || str.isEmpty()) {
            return null;
        }
        return com.tencent.bugly.proguard.ha.a((java.io.File) null, str, "BuglyNativeLog.txt");
    }
}
