package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ha {
    public static java.util.Map<java.lang.String, java.lang.String> a;

    public static android.content.Context a(android.content.Context context) {
        android.content.Context applicationContext;
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext;
    }

    public static android.content.SharedPreferences a(java.lang.String str, android.content.Context context) {
        if (context != null) {
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }

    public static java.io.BufferedReader a(java.io.File file) {
        if (file != null && file.exists() && file.canRead()) {
            try {
                return new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file), "utf-8"));
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
            }
        }
        return null;
    }

    public static java.io.BufferedReader a(java.lang.String str, java.lang.String str2) {
        if (str == null) {
            return null;
        }
        try {
            java.io.File file = new java.io.File(str, str2);
            if (file.exists() && file.canRead()) {
                return a(file);
            }
            return null;
        } catch (java.lang.NullPointerException e2) {
            com.tencent.bugly.proguard.aa.b(e2);
            return null;
        }
    }

    public static java.lang.Object a(java.lang.String str, java.lang.String str2, java.lang.Object obj, java.lang.Class<?>[] clsArr, java.lang.Object[] objArr) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        try {
            java.lang.reflect.Method declaredMethod = java.lang.Class.forName(str).getDeclaredMethod(str2, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, objArr);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static <T> T a(byte[] bArr, android.os.Parcelable.Creator<T> creator) {
        android.os.Parcel parcelD = d(bArr);
        try {
            return creator.createFromParcel(parcelD);
        } catch (java.lang.Throwable th) {
            try {
                th.printStackTrace();
                if (parcelD != null) {
                    parcelD.recycle();
                }
                return null;
            } finally {
                if (parcelD != null) {
                    parcelD.recycle();
                }
            }
        }
    }

    public static java.lang.String a() {
        return a(java.lang.System.currentTimeMillis());
    }

    public static java.lang.String a(long j) {
        try {
            return new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US).format(new java.util.Date(j));
        } catch (java.lang.Exception unused) {
            return new java.util.Date().toString();
        }
    }

    public static java.lang.String a(android.content.Context context, int i, java.lang.String str) throws java.io.IOException {
        java.lang.String[] strArr = str == null ? new java.lang.String[]{"logcat", "-d", "-v", "threadtime"} : new java.lang.String[]{"logcat", "-d", "-v", "threadtime", "-s", str};
        java.lang.Process processExec = null;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        try {
            processExec = java.lang.Runtime.getRuntime().exec(strArr);
            java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(processExec.getInputStream()));
            while (true) {
                java.lang.String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
                if (i > 0 && sb.length() > i) {
                    sb.delete(0, sb.length() - i);
                }
            }
            java.lang.String string = sb.toString();
            try {
                processExec.getOutputStream().close();
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
            try {
                processExec.getInputStream().close();
            } catch (java.io.IOException e3) {
                e3.printStackTrace();
            }
            try {
                processExec.getErrorStream().close();
            } catch (java.io.IOException e4) {
                e4.printStackTrace();
            }
            return string;
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                sb.append("\n[error:");
                sb.append(th.toString());
                sb.append("]");
                return sb.toString();
            } finally {
                if (processExec != null) {
                    try {
                        processExec.getOutputStream().close();
                    } catch (java.io.IOException e5) {
                        e5.printStackTrace();
                    }
                    try {
                        processExec.getInputStream().close();
                    } catch (java.io.IOException e6) {
                        e6.printStackTrace();
                    }
                    try {
                        processExec.getErrorStream().close();
                    } catch (java.io.IOException e7) {
                        e7.printStackTrace();
                    }
                }
            }
        }
    }

    public static java.lang.String a(android.content.Context context, java.lang.String str) throws java.io.IOException {
        if (str == null || str.trim().equals("")) {
            return "";
        }
        if (a == null) {
            a = new java.util.HashMap();
            java.util.ArrayList<java.lang.String> arrayListA = a(context, new java.lang.String[]{(new java.io.File("/system/bin/sh").exists() && new java.io.File("/system/bin/sh").canExecute()) ? "/system/bin/sh" : "sh", "-c", "getprop"});
            if (arrayListA != null && arrayListA.size() > 0) {
                com.tencent.bugly.proguard.aa.a(com.tencent.bugly.proguard.ha.class, "Successfully get 'getprop' list.", new java.lang.Object[0]);
                java.util.regex.Pattern patternCompile = java.util.regex.Pattern.compile("\\[(.+)\\]: \\[(.*)\\]");
                java.util.Iterator<java.lang.String> it = arrayListA.iterator();
                while (it.hasNext()) {
                    java.util.regex.Matcher matcher = patternCompile.matcher(it.next());
                    if (matcher.find()) {
                        a.put(matcher.group(1), matcher.group(2));
                    }
                }
                com.tencent.bugly.proguard.aa.a(com.tencent.bugly.proguard.ha.class, "Systems properties number: %d.", java.lang.Integer.valueOf(a.size()));
            }
        }
        return a.containsKey(str) ? a.get(str) : "fail";
    }

    public static java.lang.String a(java.io.File file, int i, boolean z) throws java.io.IOException {
        java.io.BufferedReader bufferedReader;
        if (file == null || !file.exists() || !file.canRead()) {
            return null;
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(file), "utf-8"));
            while (true) {
                try {
                    java.lang.String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append("\n");
                    if (i > 0 && sb.length() > i) {
                        if (z) {
                            sb.delete(i, sb.length());
                            break;
                        }
                        sb.delete(0, sb.length() - i);
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    try {
                        com.tencent.bugly.proguard.aa.b(th);
                        return null;
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.lang.Exception e2) {
                                com.tencent.bugly.proguard.aa.b(e2);
                            }
                        }
                    }
                }
            }
            java.lang.String string = sb.toString();
            try {
                bufferedReader.close();
            } catch (java.lang.Exception e3) {
                com.tencent.bugly.proguard.aa.b(e3);
            }
            return string;
        } catch (java.lang.Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    public static java.lang.String a(java.io.File file, java.lang.String str) throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream;
        java.io.FileInputStream fileInputStream2 = null;
        if (file != null && file.exists()) {
            ?? CanRead = file.canRead();
            try {
                if (CanRead != 0) {
                    try {
                        fileInputStream = new java.io.FileInputStream(file);
                    } catch (java.io.IOException e2) {
                        e = e2;
                        fileInputStream = null;
                    } catch (java.security.NoSuchAlgorithmException e3) {
                        e = e3;
                        fileInputStream = null;
                    } catch (java.lang.Throwable th) {
                        th = th;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (java.io.IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    try {
                        java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance(str);
                        byte[] bArr = new byte[102400];
                        while (true) {
                            int i = fileInputStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            messageDigest.update(bArr, 0, i);
                        }
                        java.lang.String strA = a(messageDigest.digest());
                        try {
                            fileInputStream.close();
                        } catch (java.io.IOException e5) {
                            e5.printStackTrace();
                        }
                        return strA;
                    } catch (java.io.IOException e6) {
                        e = e6;
                        if (!com.tencent.bugly.proguard.aa.b(e)) {
                            e.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (java.io.IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        return null;
                    } catch (java.security.NoSuchAlgorithmException e8) {
                        e = e8;
                        if (!com.tencent.bugly.proguard.aa.b(e)) {
                            e.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return null;
                    }
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                fileInputStream2 = CanRead;
            }
        }
        return null;
    }

    public static java.lang.String a(java.lang.Thread thread) {
        if (thread == null) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.lang.StackTraceElement stackTraceElement : thread.getStackTrace()) {
            sb.append(stackTraceElement.toString());
            sb.append("\n");
        }
        return sb.toString();
    }

    public static java.lang.String a(java.lang.Throwable th) {
        if (th == null) {
            return "";
        }
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        java.io.PrintWriter printWriter = new java.io.PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public static java.lang.String a(java.util.Date date) {
        if (date == null) {
            return null;
        }
        try {
            return new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss", java.util.Locale.US).format(date);
        } catch (java.lang.Exception unused) {
            return new java.util.Date().toString();
        }
    }

    public static java.lang.String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (byte b : bArr) {
            java.lang.String hexString = java.lang.Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                stringBuffer.append("0");
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString().toUpperCase();
    }

    public static java.lang.Thread a(java.lang.Runnable runnable, java.lang.String str) {
        try {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            thread.setName(str);
            thread.start();
            return thread;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("[Util] Failed to start a thread to execute task with message: %s", th.getMessage());
            return null;
        }
    }

    public static java.util.ArrayList<java.lang.String> a(android.content.Context context, java.lang.String[] strArr) throws java.io.IOException {
        java.io.BufferedReader bufferedReader;
        java.io.BufferedReader bufferedReader2;
        if (com.tencent.bugly.crashreport.common.info.AppInfo.e(context)) {
            return new java.util.ArrayList<>(java.util.Arrays.asList("unknown(low memory)"));
        }
        java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>();
        try {
            java.lang.Process processExec = java.lang.Runtime.getRuntime().exec(strArr);
            bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(processExec.getInputStream()));
            while (true) {
                try {
                    java.lang.String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    arrayList.add(line);
                } catch (java.lang.Throwable th) {
                    th = th;
                    bufferedReader2 = null;
                }
            }
            bufferedReader2 = new java.io.BufferedReader(new java.io.InputStreamReader(processExec.getErrorStream()));
            while (true) {
                try {
                    java.lang.String line2 = bufferedReader2.readLine();
                    if (line2 != null) {
                        arrayList.add(line2);
                    } else {
                        try {
                            break;
                        } catch (java.io.IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.io.IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (java.io.IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        return null;
                    } finally {
                    }
                }
            }
            bufferedReader.close();
            try {
                bufferedReader2.close();
            } catch (java.io.IOException e5) {
                e5.printStackTrace();
            }
            return arrayList;
        } catch (java.lang.Throwable th3) {
            th = th3;
            bufferedReader = null;
            bufferedReader2 = null;
        }
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(int i, boolean z) {
        java.util.HashMap map = new java.util.HashMap(12);
        java.util.Map<java.lang.Thread, java.lang.StackTraceElement[]> allStackTraces = java.lang.Thread.getAllStackTraces();
        if (allStackTraces == null) {
            return null;
        }
        java.lang.Thread thread = android.os.Looper.getMainLooper().getThread();
        if (!allStackTraces.containsKey(thread)) {
            allStackTraces.put(thread, thread.getStackTrace());
        }
        long id = java.lang.Thread.currentThread().getId();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.util.Map.Entry<java.lang.Thread, java.lang.StackTraceElement[]> entry : allStackTraces.entrySet()) {
            if (!z || id != entry.getKey().getId()) {
                int i2 = 0;
                sb.setLength(0);
                if (entry.getValue() != null && entry.getValue().length != 0) {
                    java.lang.StackTraceElement[] value = entry.getValue();
                    int length = value.length;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        java.lang.StackTraceElement stackTraceElement = value[i2];
                        if (i > 0 && sb.length() >= i) {
                            sb.append("\n[Stack over limit size :" + i + " , has been cut!]");
                            break;
                        }
                        sb.append(stackTraceElement.toString());
                        sb.append("\n");
                        i2++;
                    }
                    map.put(entry.getKey().getName() + "(" + entry.getKey().getId() + ")", sb.toString());
                }
            }
        }
        return map;
    }

    public static java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> a(android.os.Parcel parcel) {
        android.os.Bundle bundle = parcel.readBundle();
        java.util.HashMap map = null;
        if (bundle == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        int iIntValue = ((java.lang.Integer) bundle.get("pluginNum")).intValue();
        for (int i = 0; i < iIntValue; i++) {
            arrayList.add(bundle.getString("pluginKey" + i));
        }
        for (int i2 = 0; i2 < iIntValue; i2++) {
            arrayList2.add(new com.tencent.bugly.crashreport.common.info.PlugInBean(bundle.getString("pluginVal" + i2 + "plugInId"), bundle.getString("pluginVal" + i2 + "plugInVersion"), bundle.getString("pluginVal" + i2 + "plugInUUID")));
        }
        if (arrayList.size() == arrayList2.size()) {
            map = new java.util.HashMap(arrayList.size());
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                map.put(arrayList.get(i3), com.tencent.bugly.crashreport.common.info.PlugInBean.class.cast(arrayList2.get(i3)));
            }
        } else {
            com.tencent.bugly.proguard.aa.b("map plugin parcel error!", new java.lang.Object[0]);
        }
        return map;
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(boolean z, int i, boolean z2) {
        if (z) {
            java.util.Map<java.lang.String, java.lang.String> mapA = a(i, z2);
            return mapA == null ? new java.util.HashMap() : mapA;
        }
        com.tencent.bugly.proguard.aa.a("get all thread stack not enable", new java.lang.Object[0]);
        return new java.util.HashMap();
    }

    public static void a(android.os.Parcel parcel, java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> map) {
        if (map == null || map.size() <= 0) {
            parcel.writeBundle(null);
            return;
        }
        int size = map.size();
        java.util.ArrayList arrayList = new java.util.ArrayList(size);
        java.util.ArrayList arrayList2 = new java.util.ArrayList(size);
        for (java.util.Map.Entry<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList2.add(entry.getValue());
        }
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt("pluginNum", arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            bundle.putString(e.a.c.a.a.K("pluginKey", i), (java.lang.String) arrayList.get(i));
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            bundle.putString("pluginVal" + i2 + "plugInId", ((com.tencent.bugly.crashreport.common.info.PlugInBean) arrayList2.get(i2)).a);
            bundle.putString("pluginVal" + i2 + "plugInUUID", ((com.tencent.bugly.crashreport.common.info.PlugInBean) arrayList2.get(i2)).f962c);
            bundle.putString("pluginVal" + i2 + "plugInVersion", ((com.tencent.bugly.crashreport.common.info.PlugInBean) arrayList2.get(i2)).b);
        }
        parcel.writeBundle(bundle);
    }

    public static void a(java.lang.Class<?> cls, java.lang.String str, java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        try {
            java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj2, obj);
        } catch (java.lang.Exception unused) {
        }
    }

    public static void a(java.lang.String str) {
        if (str == null) {
            return;
        }
        java.io.File file = new java.io.File(str);
        if (file.isFile() && file.exists() && file.canWrite()) {
            file.delete();
        }
    }

    public static boolean a(android.content.Context context, java.lang.String str, long j) {
        com.tencent.bugly.proguard.aa.a("[Util] Try to lock file:%s (pid=%d | tid=%d)", str, java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        try {
            java.io.File file = new java.io.File(context.getFilesDir() + java.io.File.separator + str);
            if (file.exists()) {
                if (java.lang.System.currentTimeMillis() - file.lastModified() < j) {
                    return false;
                }
                com.tencent.bugly.proguard.aa.a("[Util] Lock file (%s) is expired, unlock it.", str);
                b(context, str);
            }
            if (file.createNewFile()) {
                com.tencent.bugly.proguard.aa.a("[Util] Successfully locked file: %s (pid=%d | tid=%d)", str, java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
                return true;
            }
            com.tencent.bugly.proguard.aa.a("[Util] Failed to locked file: %s (pid=%d | tid=%d)", str, java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
            return false;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
            return false;
        }
    }

    public static boolean a(java.io.File file, java.io.File file2) {
        if (file == null || file2 == null || file.equals(file2)) {
            com.tencent.bugly.proguard.aa.e("rqdp{  err ZF 1R!}", new java.lang.Object[0]);
            return false;
        }
        if (!file.exists() || !file.canRead()) {
            com.tencent.bugly.proguard.aa.e("rqdp{  !sFile.exists() || !sFile.canRead(),pls check ,return!}", new java.lang.Object[0]);
            return false;
        }
        try {
            if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            if (!file2.exists()) {
                file2.createNewFile();
            }
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
        return file2.exists() && file2.canWrite();
    }

    public static boolean a(java.io.File file, java.io.File file2, int i) throws java.io.IOException {
        java.util.zip.ZipOutputStream zipOutputStream;
        com.tencent.bugly.proguard.aa.a("rqdp{  ZF start}", new java.lang.Object[0]);
        if (!a(file, file2)) {
            return false;
        }
        java.io.FileInputStream fileInputStream = null;
        try {
            java.io.FileInputStream fileInputStream2 = new java.io.FileInputStream(file);
            try {
                zipOutputStream = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(file2)));
                try {
                    zipOutputStream.setMethod(8);
                    zipOutputStream.putNextEntry(new java.util.zip.ZipEntry(file.getName()));
                    byte[] bArr = new byte[java.lang.Math.max(i, 1000)];
                    while (true) {
                        int i2 = fileInputStream2.read(bArr);
                        if (i2 <= 0) {
                            break;
                        }
                        zipOutputStream.write(bArr, 0, i2);
                    }
                    zipOutputStream.flush();
                    zipOutputStream.closeEntry();
                    try {
                        fileInputStream2.close();
                    } catch (java.io.IOException e2) {
                        e2.printStackTrace();
                    }
                    try {
                        zipOutputStream.close();
                    } catch (java.io.IOException e3) {
                        e3.printStackTrace();
                    }
                    com.tencent.bugly.proguard.aa.a("rqdp{  ZF end}", new java.lang.Object[0]);
                    return true;
                } catch (java.lang.Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (java.io.IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (zipOutputStream != null) {
                            try {
                                zipOutputStream.close();
                            } catch (java.io.IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        com.tencent.bugly.proguard.aa.a("rqdp{  ZF end}", new java.lang.Object[0]);
                        return false;
                    } catch (java.lang.Throwable th2) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (java.io.IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        if (zipOutputStream != null) {
                            try {
                                zipOutputStream.close();
                            } catch (java.io.IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        com.tencent.bugly.proguard.aa.a("rqdp{  ZF end}", new java.lang.Object[0]);
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
                zipOutputStream = null;
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            zipOutputStream = null;
        }
    }

    public static boolean a(java.lang.Runnable runnable) {
        if (runnable == null) {
            return false;
        }
        com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
        if (zC != null) {
            return zC.a(runnable);
        }
        java.lang.String[] strArrSplit = runnable.getClass().getName().split("\\.");
        return a(runnable, strArrSplit[strArrSplit.length - 1]) != null;
    }

    public static byte[] a(android.os.Parcelable parcelable) {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        parcelable.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(java.io.File r6, java.lang.String r7, java.lang.String r8) throws java.io.IOException {
        /*
            r0 = 0
            if (r7 == 0) goto Ld6
            int r1 = r7.length()
            if (r1 != 0) goto Lb
            goto Ld6
        Lb:
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "rqdp{  ZF start}"
            com.tencent.bugly.proguard.aa.a(r3, r2)
            java.lang.String r2 = "rqdp{  ZF end}"
            if (r6 == 0) goto L31
            boolean r3 = r6.exists()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L31
            boolean r3 = r6.canRead()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L31
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2d
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r6 = r6.getName()     // Catch: java.lang.Throwable -> L96
            goto L33
        L2d:
            r6 = move-exception
            r8 = r0
            r4 = r8
            goto L98
        L31:
            r6 = r8
            r8 = r0
        L33:
            java.lang.String r3 = "UTF-8"
            byte[] r7 = r7.getBytes(r3)     // Catch: java.lang.Throwable -> L96
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L96
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L96
            java.io.ByteArrayOutputStream r7 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L96
            r7.<init>()     // Catch: java.lang.Throwable -> L96
            java.util.zip.ZipOutputStream r4 = new java.util.zip.ZipOutputStream     // Catch: java.lang.Throwable -> L96
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L96
            r5 = 8
            r4.setMethod(r5)     // Catch: java.lang.Throwable -> L94
            java.util.zip.ZipEntry r5 = new java.util.zip.ZipEntry     // Catch: java.lang.Throwable -> L94
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L94
            r4.putNextEntry(r5)     // Catch: java.lang.Throwable -> L94
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L94
            if (r8 == 0) goto L65
        L5b:
            int r5 = r8.read(r6)     // Catch: java.lang.Throwable -> L94
            if (r5 <= 0) goto L65
            r4.write(r6, r1, r5)     // Catch: java.lang.Throwable -> L94
            goto L5b
        L65:
            int r5 = r3.read(r6)     // Catch: java.lang.Throwable -> L94
            if (r5 <= 0) goto L6f
            r4.write(r6, r1, r5)     // Catch: java.lang.Throwable -> L94
            goto L65
        L6f:
            r4.closeEntry()     // Catch: java.lang.Throwable -> L94
            r4.flush()     // Catch: java.lang.Throwable -> L94
            r4.finish()     // Catch: java.lang.Throwable -> L94
            byte[] r6 = r7.toByteArray()     // Catch: java.lang.Throwable -> L94
            if (r8 == 0) goto L86
            r8.close()     // Catch: java.io.IOException -> L82
            goto L86
        L82:
            r7 = move-exception
            r7.printStackTrace()
        L86:
            r4.close()     // Catch: java.io.IOException -> L8a
            goto L8e
        L8a:
            r7 = move-exception
            r7.printStackTrace()
        L8e:
            java.lang.Object[] r7 = new java.lang.Object[r1]
            com.tencent.bugly.proguard.aa.a(r2, r7)
            return r6
        L94:
            r6 = move-exception
            goto L98
        L96:
            r6 = move-exception
            r4 = r0
        L98:
            boolean r7 = com.tencent.bugly.proguard.aa.b(r6)     // Catch: java.lang.Throwable -> Lbb
            if (r7 != 0) goto La1
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lbb
        La1:
            if (r8 == 0) goto Lab
            r8.close()     // Catch: java.io.IOException -> La7
            goto Lab
        La7:
            r6 = move-exception
            r6.printStackTrace()
        Lab:
            if (r4 == 0) goto Lb5
            r4.close()     // Catch: java.io.IOException -> Lb1
            goto Lb5
        Lb1:
            r6 = move-exception
            r6.printStackTrace()
        Lb5:
            java.lang.Object[] r6 = new java.lang.Object[r1]
            com.tencent.bugly.proguard.aa.a(r2, r6)
            return r0
        Lbb:
            r6 = move-exception
            if (r8 == 0) goto Lc6
            r8.close()     // Catch: java.io.IOException -> Lc2
            goto Lc6
        Lc2:
            r7 = move-exception
            r7.printStackTrace()
        Lc6:
            if (r4 == 0) goto Ld0
            r4.close()     // Catch: java.io.IOException -> Lcc
            goto Ld0
        Lcc:
            r7 = move-exception
            r7.printStackTrace()
        Ld0:
            java.lang.Object[] r7 = new java.lang.Object[r1]
            com.tencent.bugly.proguard.aa.a(r2, r7)
            throw r6
        Ld6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.ha.a(java.io.File, java.lang.String, java.lang.String):byte[]");
    }

    public static byte[] a(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        java.lang.Object[] objArr = new java.lang.Object[2];
        objArr[0] = java.lang.Integer.valueOf(bArr.length);
        objArr[1] = i == 2 ? "Gzip" : "zip";
        com.tencent.bugly.proguard.aa.a("[Util] Unzip %d bytes data with type %s", objArr);
        try {
            com.tencent.bugly.proguard.la laVarA = com.tencent.bugly.proguard.ka.a(i);
            if (laVarA == null) {
                return null;
            }
            return laVarA.b(bArr);
        } catch (java.lang.Throwable th) {
            if (th.getMessage() != null && th.getMessage().contains("Not in GZIP format")) {
                com.tencent.bugly.proguard.aa.e(th.getMessage(), new java.lang.Object[0]);
            } else if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static long b() {
        try {
            return (((java.lang.System.currentTimeMillis() + java.util.TimeZone.getDefault().getRawOffset()) / 86400000) * 86400000) - java.util.TimeZone.getDefault().getRawOffset();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return -1L;
            }
            th.printStackTrace();
            return -1L;
        }
    }

    public static long b(byte[] bArr) {
        if (bArr == null) {
            return -1L;
        }
        try {
            return java.lang.Long.parseLong(new java.lang.String(bArr, "utf-8"));
        } catch (java.io.UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) {
        return (com.tencent.bugly.crashreport.common.info.a.n() == null || com.tencent.bugly.crashreport.common.info.a.n().ma == null) ? "" : com.tencent.bugly.crashreport.common.info.a.n().ma.getString(str, str2);
    }

    public static java.lang.String b(java.lang.Throwable th) {
        if (th == null) {
            return "";
        }
        try {
            java.io.StringWriter stringWriter = new java.io.StringWriter();
            th.printStackTrace(new java.io.PrintWriter(stringWriter));
            return stringWriter.getBuffer().toString();
        } catch (java.lang.Throwable th2) {
            if (com.tencent.bugly.proguard.aa.b(th2)) {
                return "fail";
            }
            th2.printStackTrace();
            return "fail";
        }
    }

    public static java.util.Map<java.lang.String, java.lang.String> b(android.os.Parcel parcel) {
        android.os.Bundle bundle = parcel.readBundle();
        java.util.HashMap map = null;
        if (bundle == null) {
            return null;
        }
        java.util.ArrayList<java.lang.String> stringArrayList = bundle.getStringArrayList("keys");
        java.util.ArrayList<java.lang.String> stringArrayList2 = bundle.getStringArrayList("values");
        if (stringArrayList == null || stringArrayList2 == null || stringArrayList.size() != stringArrayList2.size()) {
            com.tencent.bugly.proguard.aa.b("map parcel error!", new java.lang.Object[0]);
        } else {
            map = new java.util.HashMap(stringArrayList.size());
            for (int i = 0; i < stringArrayList.size(); i++) {
                map.put(stringArrayList.get(i), stringArrayList2.get(i));
            }
        }
        return map;
    }

    public static void b(android.os.Parcel parcel, java.util.Map<java.lang.String, java.lang.String> map) {
        android.os.Bundle bundle;
        if (map == null || map.size() <= 0) {
            bundle = null;
        } else {
            int size = map.size();
            java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>(size);
            java.util.ArrayList<java.lang.String> arrayList2 = new java.util.ArrayList<>(size);
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                arrayList.add(entry.getKey());
                arrayList2.add(entry.getValue());
            }
            bundle = new android.os.Bundle();
            bundle.putStringArrayList("keys", arrayList);
            bundle.putStringArrayList("values", arrayList2);
        }
        parcel.writeBundle(bundle);
    }

    public static boolean b(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.proguard.aa.a("[Util] Try to unlock file: %s (pid=%d | tid=%d)", str, java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
        try {
            java.io.File file = new java.io.File(context.getFilesDir() + java.io.File.separator + str);
            if (!file.exists()) {
                return true;
            }
            if (!file.delete()) {
                return false;
            }
            com.tencent.bugly.proguard.aa.a("[Util] Successfully unlocked file: %s (pid=%d | tid=%d)", str, java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
            return true;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
            return false;
        }
    }

    public static boolean b(java.lang.String str) {
        return str == null || str.trim().length() <= 0;
    }

    public static byte[] b(long j) {
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("");
            sb.append(j);
            return sb.toString().getBytes("utf-8");
        } catch (java.io.UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static byte[] b(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        java.lang.Object[] objArr = new java.lang.Object[2];
        objArr[0] = java.lang.Integer.valueOf(bArr.length);
        objArr[1] = i == 2 ? "Gzip" : "zip";
        com.tencent.bugly.proguard.aa.a("[Util] Zip %d bytes data with type %s", objArr);
        try {
            com.tencent.bugly.proguard.la laVarA = com.tencent.bugly.proguard.ka.a(i);
            if (laVarA == null) {
                return null;
            }
            return laVarA.a(bArr);
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static java.lang.String c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "NULL";
        }
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr);
            return a(messageDigest.digest());
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static void c(long j) throws java.lang.InterruptedException {
        try {
            java.lang.Thread.sleep(j);
        } catch (java.lang.InterruptedException e2) {
            e2.printStackTrace();
        }
    }

    public static void c(java.lang.String str, java.lang.String str2) {
        if (com.tencent.bugly.crashreport.common.info.a.n() == null || com.tencent.bugly.crashreport.common.info.a.n().ma == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.n().ma.edit().putString(str, str2).apply();
    }

    public static boolean c(java.lang.String str) {
        if (b(str)) {
            return false;
        }
        if (str.length() > 255) {
            com.tencent.bugly.proguard.aa.c("URL(%s)'s length is larger than 255.", str);
            return false;
        }
        if (str.toLowerCase().startsWith("http")) {
            return true;
        }
        com.tencent.bugly.proguard.aa.c("URL(%s) is not start with \"http\".", str);
        return false;
    }

    public static android.os.Parcel d(byte[] bArr) {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        return parcelObtain;
    }
}
