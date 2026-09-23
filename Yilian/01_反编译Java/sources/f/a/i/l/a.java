package f.a.i.l;

/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    public static android.content.Context f2929d;
    public boolean a;
    public f.a.i.l.a.d b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<f.a.i.l.a.e> f2930c;

    /* renamed from: f.a.i.l.a$a, reason: collision with other inner class name */
    public class C0086a implements java.io.FilenameFilter {
        public final /* synthetic */ java.lang.String a;

        public C0086a(java.lang.String str) {
            this.a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(java.io.File file, java.lang.String str) {
            return !android.text.TextUtils.isEmpty(str) && str.startsWith(this.a) && str.endsWith(".req");
        }
    }

    public class b implements java.io.FilenameFilter {
        public final /* synthetic */ java.lang.String a;

        public b(java.lang.String str) {
            this.a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(java.io.File file, java.lang.String str) {
            return str.startsWith(this.a) && str.endsWith(".zip");
        }
    }

    public class c implements java.io.FilenameFilter {
        public final /* synthetic */ java.lang.String a;

        public c(java.lang.String str) {
            this.a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(java.io.File file, java.lang.String str) {
            return str.startsWith(this.a) && str.endsWith(".apk");
        }
    }

    public interface d {
    }

    public static class e {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public long f2931c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f2932d;

        /* renamed from: e, reason: collision with root package name */
        public java.lang.String f2933e;

        /* renamed from: f, reason: collision with root package name */
        public long f2934f;
    }

    public a(android.content.Context context) {
        f2929d = context.getApplicationContext();
    }

    public static java.lang.String A(android.content.Context context, java.lang.String str) {
        java.lang.String strQ = q(context);
        if (strQ == null || str == null) {
            e.e.a.g.a("update path or sid is null");
            return null;
        }
        java.lang.String[] list = new java.io.File(strQ).list(new f.a.i.l.a.b(str));
        if (list == null || list.length <= 0) {
            return null;
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(strQ, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        sbQ.append(list[0]);
        return sbQ.toString();
    }

    public static void B(android.content.Context context) {
        f2929d = context;
    }

    public static void C(java.lang.String str, java.lang.String str2, boolean z, boolean z2) {
        java.lang.String str3 = z2 ? ".bin" : ".zip";
        java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(str);
        java.util.Enumeration<? extends java.util.zip.ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            java.util.zip.ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            java.lang.String name = zipEntryNextElement.getName();
            java.lang.String strF = e.a.c.a.a.f(str2, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, name);
            if (zipEntryNextElement.isDirectory()) {
                java.io.File file = new java.io.File(strF);
                if (!file.exists()) {
                    file.mkdirs();
                }
            } else {
                if (str2.endsWith(str3)) {
                    str2 = str2.substring(0, str2.lastIndexOf(str3));
                }
                java.io.File file2 = new java.io.File(str2);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                java.io.BufferedOutputStream bufferedOutputStream = new java.io.BufferedOutputStream(new java.io.FileOutputStream(e.a.c.a.a.f(str2, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, name.substring(name.lastIndexOf(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR) + 1))));
                java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(zipFile.getInputStream(zipEntryNextElement));
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i);
                    }
                }
                bufferedOutputStream.close();
            }
        }
        zipFile.close();
        if (z) {
            java.io.File file3 = new java.io.File(str);
            if (file3.exists() && file3.getName().endsWith(str3)) {
                file3.delete();
            }
        }
    }

    public static boolean b(java.lang.String str) {
        java.io.File file = new java.io.File(str);
        if (file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static boolean d(java.lang.String str, java.lang.String str2, long j) throws java.io.IOException {
        if (android.text.TextUtils.isEmpty(str2)) {
            return false;
        }
        java.lang.String[] list = new java.io.File(str).list(new f.a.i.l.a.C0086a(str2));
        if (list != null) {
            for (java.lang.String str3 : list) {
                java.io.File file = new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str3));
                if (file.exists()) {
                    file.delete();
                }
            }
        }
        java.lang.String str4 = str2 + "." + j + ".req";
        try {
            new java.io.File(e.a.c.a.a.f(str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str4)).createNewFile();
            return true;
        } catch (java.io.IOException e2) {
            e2.printStackTrace();
            e.e.a.g.c("create config file failed,path = " + str + " filename = " + str4, new java.lang.Object[0]);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(android.content.Context r3, java.lang.String r4, java.lang.String r5, long r6, long r8, boolean r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 == 0) goto Lc
            java.lang.String r3 = "generateLogFile sid == null"
            e.e.a.g.a(r3)
            return
        Lc:
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            java.lang.String r1 = "yyyy-MM-dd HH:mm:ss"
            r0.<init>(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 == 0) goto L1b
            java.lang.String r5 = ""
        L1b:
            java.lang.String r1 = "package = net.easyconn\ntime = "
            java.lang.StringBuilder r1 = e.a.c.a.a.o(r1)
            java.util.Date r2 = new java.util.Date
            r2.<init>()
            java.lang.String r0 = r0.format(r2)
            r1.append(r0)
            java.lang.String r0 = "\n"
            r1.append(r0)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            if (r10 == 0) goto L3e
            java.lang.String r10 = "succ"
            goto L40
        L3e:
            java.lang.String r10 = "err"
        L40:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = q(r3)
            r0.append(r3)
            java.lang.String r3 = "/"
            r0.append(r3)
            r0.append(r4)
            java.lang.String r3 = "."
            r0.append(r3)
            r0.append(r6)
            r0.append(r3)
            r0.append(r8)
            r0.append(r3)
            java.lang.String r3 = ".log"
            java.lang.String r3 = e.a.c.a.a.j(r0, r10, r3)
            java.io.File r4 = new java.io.File
            r4.<init>(r3)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "generateLogFile filename = "
            r6.append(r7)
            r6.append(r3)
            java.lang.String r3 = " logContent = "
            r6.append(r3)
            r6.append(r5)
            java.lang.String r3 = r6.toString()
            e.e.a.g.a(r3)
            boolean r3 = r4.exists()
            if (r3 != 0) goto L97
            r4.createNewFile()     // Catch: java.io.IOException -> L96
            goto L97
        L96:
        L97:
            if (r5 != 0) goto L9a
            return
        L9a:
            r3 = 0
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Lb1 java.io.IOException -> Lb3 java.io.FileNotFoundException -> Lbf
            r6.<init>(r4)     // Catch: java.lang.Throwable -> Lb1 java.io.IOException -> Lb3 java.io.FileNotFoundException -> Lbf
            byte[] r3 = r5.getBytes()     // Catch: java.lang.Throwable -> Lab java.io.IOException -> Lad java.io.FileNotFoundException -> Laf
            r6.write(r3)     // Catch: java.lang.Throwable -> Lab java.io.IOException -> Lad java.io.FileNotFoundException -> Laf
            r6.flush()     // Catch: java.lang.Throwable -> Lab java.io.IOException -> Lad java.io.FileNotFoundException -> Laf
            goto Lbb
        Lab:
            r3 = move-exception
            goto Lcd
        Lad:
            r3 = move-exception
            goto Lb6
        Laf:
            r3 = move-exception
            goto Lc2
        Lb1:
            r4 = move-exception
            goto Lcf
        Lb3:
            r4 = move-exception
            r6 = r3
            r3 = r4
        Lb6:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> Lab
            if (r6 == 0) goto Lcc
        Lbb:
            r6.close()     // Catch: java.io.IOException -> Lc8
            goto Lcc
        Lbf:
            r4 = move-exception
            r6 = r3
            r3 = r4
        Lc2:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> Lab
            if (r6 == 0) goto Lcc
            goto Lbb
        Lc8:
            r3 = move-exception
            r3.printStackTrace()
        Lcc:
            return
        Lcd:
            r4 = r3
            r3 = r6
        Lcf:
            if (r3 == 0) goto Ld9
            r3.close()     // Catch: java.io.IOException -> Ld5
            goto Ld9
        Ld5:
            r3 = move-exception
            r3.printStackTrace()
        Ld9:
            goto Ldb
        Lda:
            throw r4
        Ldb:
            goto Lda
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.l.a.e(android.content.Context, java.lang.String, java.lang.String, long, long, boolean):void");
    }

    public static void f(android.content.Context context) {
        long j = f.a.i.g.a.b(context).a.getLong("key_ec_pre_apk_versioncode", -1L);
        android.content.pm.PackageInfo packageInfoM = m(context);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("generateSuccessLogFileIfNeed,previous versionCode = ");
        sb.append(j);
        sb.append(" current versionCode = ");
        e.a.c.a.a.A(sb, packageInfoM.versionCode);
        if (j != -1) {
            long j2 = packageInfoM.versionCode;
            if (j < j2) {
                e(context, s(context), null, j, j2, true);
                android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(context).a.edit();
                editorEdit.putLong("key_ec_pre_apk_versioncode", -1L);
                editorEdit.commit();
            }
        }
    }

    public static java.lang.String g() {
        return n() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "libmediaserver.so";
    }

    public static java.lang.String h(android.content.Context context) {
        if (!f.a.i.m.g.h0(context)) {
            return null;
        }
        java.lang.String property = f.a.i.m.g.f2936c.getProperty("AIRPLAY_SOFTWARE_ID");
        f.a.i.m.g.x = property;
        return property;
    }

    public static android.content.pm.PackageInfo i(android.content.Context context, java.lang.String str) {
        android.content.pm.PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo != null) {
            return packageArchiveInfo;
        }
        e.e.a.g.c("UpdateManager", "getApkVersionCode error: packageInfo = null");
        return null;
    }

    public static java.lang.String k(android.content.Context context) {
        return l(context, true);
    }

    public static java.lang.String l(android.content.Context context, boolean z) {
        java.lang.String strU = u(context);
        if (strU == null) {
            return null;
        }
        java.lang.String strE = e.a.c.a.a.e(strU, "/config");
        java.io.File file = new java.io.File(strE);
        try {
            if (!file.exists()) {
                e.e.a.g.a("mkdirRet = " + file.mkdirs());
            }
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("mkdir exception is ");
            sbO.append(e2.toString());
            e.e.a.g.a(sbO.toString());
        }
        if (z) {
            java.lang.String strS = s(context);
            if (strS != null) {
                d(strE, strS, m(context).versionCode);
            }
            java.lang.String strR = r(context);
            if (strR != null) {
                d(strE, strR, f.a.i.i.q.I());
            }
            java.lang.String strH = h(context);
            if (strH != null) {
                int i = (int) f.a.i.g.a.b(context).a.getLong("key_ec_airplay_versioncode", -1L);
                int i2 = f.a.i.m.g.i(context);
                if (i <= i2) {
                    i = i2;
                }
                d(strE, strH, i);
            }
        }
        return strE;
    }

    public static android.content.pm.PackageInfo m(android.content.Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static java.lang.String n() {
        return f2929d.getDir("ota", 0).getAbsolutePath();
    }

    public static java.lang.String q(android.content.Context context) {
        java.lang.String strU = u(context);
        if (strU == null) {
            return null;
        }
        java.lang.String strE = e.a.c.a.a.e(strU, "/package");
        java.io.File file = new java.io.File(strE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return strE;
    }

    public static java.lang.String r(android.content.Context context) {
        if (!f.a.i.m.g.h0(context)) {
            return null;
        }
        java.lang.String property = f.a.i.m.g.f2936c.getProperty("SDK_SOFTWARE_ID");
        f.a.i.m.g.w = property;
        return property;
    }

    public static java.lang.String s(android.content.Context context) {
        if (!f.a.i.m.g.h0(context)) {
            return null;
        }
        java.lang.String property = f.a.i.m.g.f2936c.getProperty("APP_SOFTWARE_ID");
        f.a.i.m.g.v = property;
        return property;
    }

    public static java.lang.String u(android.content.Context context) {
        java.io.File fileI = d.s.y.I();
        if (fileI == null) {
            e.e.a.g.c("getUpdateAbsolutePath getSdCardFile error", new java.lang.Object[0]);
            return null;
        }
        java.io.File file = new java.io.File(fileI.getAbsolutePath() + "/easyconn/ota");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        boolean zMkdirs = file.mkdirs();
        e.a.c.a.a.z("getUpdateAbsolutePath mkdirs ret = ", zMkdirs);
        if (zMkdirs) {
            return file.getAbsolutePath();
        }
        java.io.File externalCacheDir = "mounted".equals(android.os.Environment.getExternalStorageState()) ? context.getExternalCacheDir() : null;
        if (externalCacheDir == null) {
            externalCacheDir = context.getCacheDir();
        }
        if (externalCacheDir == null) {
            return null;
        }
        java.io.File file2 = new java.io.File(externalCacheDir.getAbsolutePath() + "/ota");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2.getAbsolutePath();
    }

    public static void v(android.content.Context context, java.lang.String str, java.lang.String str2) {
        android.net.Uri uriFromFile;
        java.io.File file = new java.io.File(str);
        android.content.Intent intent = new android.content.Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            uriFromFile = androidx.core.content.FileProvider.getUriForFile(context, str2, file);
        } else {
            uriFromFile = android.net.Uri.fromFile(file);
        }
        intent.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public static int w(android.content.Context context, java.lang.String str, java.lang.String str2) {
        java.lang.String strN;
        e.e.a.g.a("installApkFilePreCheck fileName = " + str);
        android.content.pm.PackageInfo packageInfoM = m(context);
        android.content.pm.PackageInfo packageInfoI = i(context, str);
        if (packageInfoM == null || packageInfoI == null) {
            b(str);
            return 65539;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("installApkFilePreCheck currentPackageName = ");
        sbO.append(packageInfoM.packageName);
        sbO.append(", targetPackageName = ");
        sbO.append(packageInfoI.packageName);
        e.e.a.g.a(sbO.toString());
        if (!packageInfoM.packageName.equals(packageInfoI.packageName)) {
            b(str);
            return net.easyconn.ecsdk.ECTypes.ECInputType.EC_INPUT_TYPE_TEXT_AUTO_COMPLETE;
        }
        try {
            strN = d.s.y.N(context.getPackageManager().getPackageInfo(packageInfoM.packageName, 64).signatures[0].toByteArray(), "SHA1");
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            strN = "";
        }
        byte[] bArrK = new byte[0];
        try {
            bArrK = d.s.y.K(str);
        } catch (java.io.IOException e3) {
            e3.printStackTrace();
        }
        java.lang.String strN2 = d.s.y.N(bArrK, "SHA1");
        e.e.a.g.a("installApkFilePreCheck currentSHA1 = " + strN + ", targetSHA1 = " + strN2);
        if (strN.equals(strN2)) {
            v(context, str, str2);
            return 65536;
        }
        b(str);
        return 65538;
    }

    public static void x(android.content.Context context) {
        android.content.pm.PackageInfo packageInfoM = m(context);
        if (packageInfoM == null) {
            return;
        }
        long j = packageInfoM.versionCode;
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(context).a.edit();
        editorEdit.putLong("key_ec_pre_apk_versioncode", j);
        editorEdit.commit();
    }

    public static void y(android.content.Context context, long j) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(context).a.edit();
        editorEdit.putLong("key_ec_will_apk_versioncode", j);
        editorEdit.commit();
    }

    public static java.lang.String z(android.content.Context context) {
        java.lang.String str;
        java.lang.String str2;
        int i;
        java.lang.String strS = s(context);
        java.lang.String strQ = q(context);
        if (strS == null || strQ == null) {
            str = "update path is null";
        } else {
            java.lang.String[] list = new java.io.File(strQ).list(new f.a.i.l.a.c(strS));
            android.content.pm.PackageInfo packageInfoM = m(context);
            int i2 = packageInfoM.versionCode;
            if (list != null) {
                str2 = null;
                for (java.lang.String str3 : list) {
                    android.content.pm.PackageInfo packageInfoI = i(context, strQ + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str3);
                    if (packageInfoI == null || !packageInfoM.packageName.equals(packageInfoI.packageName) || i2 >= (i = packageInfoI.versionCode)) {
                        java.io.File file = new java.io.File(e.a.c.a.a.f(strQ, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str3));
                        if (file.exists()) {
                            file.delete();
                        }
                    } else {
                        str2 = str3;
                        i2 = i;
                    }
                }
            } else {
                str2 = null;
            }
            if (str2 != null) {
                return e.a.c.a.a.f(strQ, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2);
            }
            str = "do not search the matched apk file";
        }
        e.e.a.g.a(str);
        return null;
    }

    public void a(f.a.i.l.a.d dVar) throws java.lang.Throwable {
        java.lang.String strA;
        org.json.JSONArray jSONArray;
        java.util.ArrayList arrayList;
        org.json.JSONObject jSONObject;
        java.lang.String str;
        java.lang.String str2;
        f.a.i.l.a.d dVar2;
        java.lang.String str3 = "versionCode";
        java.lang.String str4 = "softwareId";
        e.e.a.g.a("batchCheckUpdate start");
        this.b = dVar;
        java.util.ArrayList<f.a.i.l.a.e> arrayList2 = this.f2930c;
        if (arrayList2 != null) {
            arrayList2.clear();
            this.f2930c = null;
        }
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        java.lang.String strS = s(f2929d);
        if (strS != null) {
            arrayList3.add(strS);
            arrayList4.add(java.lang.Integer.valueOf(m(f2929d).versionCode));
        }
        java.lang.String strR = r(f2929d);
        if (strR != null) {
            arrayList3.add(strR);
            arrayList4.add(1);
        }
        java.lang.String strH = h(f2929d);
        if (strH != null) {
            arrayList3.add(strH);
            int i = (int) f.a.i.g.a.b(f2929d).a.getLong("key_ec_airplay_versioncode", -1L);
            int i2 = f.a.i.m.g.i(f2929d);
            if (i <= i2) {
                i = i2;
            }
            arrayList4.add(java.lang.Integer.valueOf(i));
        }
        if (arrayList3.size() <= 0 || arrayList4.size() <= 0) {
            e.e.a.g.a("update sid size = 0");
            return;
        }
        java.lang.String[] strArr = new java.lang.String[arrayList3.size()];
        java.lang.Integer[] numArr = new java.lang.Integer[arrayList4.size()];
        java.lang.String[] strArr2 = (java.lang.String[]) arrayList3.toArray(strArr);
        java.lang.Integer[] numArr2 = (java.lang.Integer[]) arrayList4.toArray(numArr);
        try {
            org.json.JSONArray jSONArray2 = new org.json.JSONArray();
            for (int i3 = 0; i3 < strArr2.length; i3++) {
                org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                jSONObject2.put("softwareId", strArr2[i3]);
                jSONObject2.put("versionCode", numArr2[i3]);
                jSONObject2.put(com.umeng.analytics.pro.ai.N, "en");
                jSONArray2.put(jSONObject2);
            }
            org.json.JSONObject jSONObject3 = new org.json.JSONObject();
            jSONObject3.put("data", jSONArray2);
            org.json.JSONObject jSONObject4 = new org.json.JSONObject();
            jSONObject4.put(com.umeng.analytics.pro.c.R, jSONObject3);
            e.e.a.g.a("requestObject = " + jSONObject4);
            strA = f.a.i.m.c.a(jSONObject4.toString());
        } catch (org.json.JSONException e2) {
            e2.printStackTrace();
            strA = null;
        }
        org.json.JSONObject jSONObjectC = c("/api/pkg/batchCheckUpdate", strA);
        e.e.a.g.a("response context = " + jSONObjectC);
        int i4 = -1;
        if (jSONObjectC == null) {
            e.e.a.g.c("response = null", new java.lang.Object[0]);
            f.a.i.l.a.d dVar3 = this.b;
            if (dVar3 != null) {
                ((f.a.k.m0.p0) dVar3).a(-1);
                return;
            }
            return;
        }
        try {
            i4 = jSONObjectC.getInt("code");
        } catch (org.json.JSONException e3) {
            e3.printStackTrace();
        }
        if (i4 != 0) {
            e.e.a.g.c(e.a.c.a.a.K("response get code error, code = ", i4), new java.lang.Object[0]);
            f.a.i.l.a.d dVar4 = this.b;
            if (dVar4 != null) {
                ((f.a.k.m0.p0) dVar4).a(-2);
                return;
            }
            return;
        }
        try {
            jSONArray = jSONObjectC.getJSONObject(com.umeng.analytics.pro.c.R).getJSONObject("data").getJSONArray("hasUpdateItems");
        } catch (org.json.JSONException unused) {
            jSONArray = null;
        }
        if (jSONArray != null) {
            arrayList = new java.util.ArrayList();
            jSONObject = null;
            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                try {
                    org.json.JSONObject jSONObject5 = jSONArray.getJSONObject(i5);
                    java.lang.String string = jSONObject5.getString("softwareId");
                    if (string != null) {
                        if (string.equalsIgnoreCase(strS)) {
                            jSONObject = jSONObject5;
                        } else {
                            arrayList.add(jSONObject5);
                        }
                    }
                } catch (org.json.JSONException unused2) {
                }
            }
        } else {
            arrayList = null;
            jSONObject = null;
        }
        if (jSONObject != null) {
            try {
                if (this.f2930c == null) {
                    this.f2930c = new java.util.ArrayList<>();
                }
                f.a.i.l.a.e eVar = new f.a.i.l.a.e();
                eVar.a = jSONObject.getString("softwareId");
                eVar.f2931c = java.lang.Integer.parseInt(jSONObject.getString("versionCode"));
                jSONObject.getString("versionCodeDesc");
                eVar.b = jSONObject.getString("name");
                eVar.f2934f = java.lang.Integer.parseInt(jSONObject.getString("pkgSize"));
                eVar.f2932d = jSONObject.getString("pkgPath");
                eVar.f2933e = jSONObject.getString("pkgMd5");
                jSONObject.getString("detail");
                jSONObject.getString("icon");
                this.f2930c.add(eVar);
                java.lang.String strZ = z(f2929d);
                if (strZ != null) {
                    if (i(f2929d, strZ).versionCode >= 0) {
                        ((f.a.k.m0.p0) dVar).b(strZ);
                        return;
                    } else {
                        java.io.File file = new java.io.File(strZ);
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
                if (this.b != null) {
                    ((f.a.k.m0.p0) this.b).a(1);
                    return;
                }
                return;
            } catch (org.json.JSONException e4) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("check error, ");
                sbO.append(e4.getMessage());
                e.e.a.g.a(sbO.toString());
                f.a.i.l.a.d dVar5 = this.b;
                if (dVar5 != null) {
                    ((f.a.k.m0.p0) dVar5).a(-2);
                    return;
                }
                return;
            }
        }
        e.e.a.g.a("do not get matched ec sid");
        java.lang.String strZ2 = z(f2929d);
        if (strZ2 != null && (dVar2 = this.b) != null) {
            ((f.a.k.m0.p0) dVar2).b(strZ2);
            return;
        }
        if (arrayList == null || arrayList.size() <= 0) {
            f.a.i.l.a.d dVar6 = this.b;
            if (dVar6 != null) {
                ((f.a.k.m0.p0) dVar6).a(0);
            }
            e.e.a.g.c("updateObjectList is null", new java.lang.Object[0]);
            return;
        }
        int i6 = 0;
        while (i6 < arrayList.size()) {
            org.json.JSONObject jSONObject6 = (org.json.JSONObject) arrayList.get(i6);
            try {
                java.lang.String string2 = jSONObject6.getString(str4);
                if (A(f2929d, string2) == null) {
                    if (this.f2930c == null) {
                        this.f2930c = new java.util.ArrayList<>();
                    }
                    f.a.i.l.a.e eVar2 = new f.a.i.l.a.e();
                    eVar2.a = string2;
                    str = str3;
                    str2 = str4;
                    try {
                        eVar2.f2931c = java.lang.Integer.parseInt(jSONObject6.getString(str3));
                        jSONObject6.getString("versionCodeDesc");
                        eVar2.b = jSONObject6.getString("name");
                        eVar2.f2934f = java.lang.Integer.parseInt(jSONObject6.getString("pkgSize"));
                        eVar2.f2932d = jSONObject6.getString("pkgPath");
                        eVar2.f2933e = jSONObject6.getString("pkgMd5");
                        jSONObject6.getString("detail");
                        jSONObject6.getString("icon");
                        this.f2930c.add(eVar2);
                        e.e.a.g.a("mBatchUpdateList add UpdateInfo versionName = " + eVar2.b);
                    } catch (org.json.JSONException e5) {
                        e = e5;
                        e.printStackTrace();
                        i6++;
                        str3 = str;
                        str4 = str2;
                    }
                } else {
                    str = str3;
                    str2 = str4;
                }
            } catch (org.json.JSONException e6) {
                e = e6;
                str = str3;
                str2 = str4;
            }
            i6++;
            str3 = str;
            str4 = str2;
        }
        java.util.ArrayList<f.a.i.l.a.e> arrayList5 = this.f2930c;
        if (arrayList5 == null || arrayList5.size() <= 0) {
            f.a.i.l.a.d dVar7 = this.b;
            if (dVar7 != null) {
                ((f.a.k.m0.p0) dVar7).a(0);
                return;
            }
            return;
        }
        f.a.i.l.a.d dVar8 = this.b;
        if (dVar8 != null) {
            ((f.a.k.m0.p0) dVar8).a(1);
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("mBatchUpdateList has ");
        sbO2.append(this.f2930c.size());
        sbO2.append(" update package");
        e.e.a.g.a(sbO2.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x017f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0143 A[Catch: IOException -> 0x0172, PHI: r0 r9
  0x0143: PHI (r0v14 ??) = (r0v10 ??), (r0v11 ??), (r0v12 ??), (r0v15 ??) binds: [B:83:0x0174, B:58:0x0141, B:73:0x0162, B:66:0x0153] A[DONT_GENERATE, DONT_INLINE]
  0x0143: PHI (r9v18 'e' ??) = (r9v14 'e' ??), (r9v15 'e' ??), (r9v16 'e' ??), (r9v19 'e' ??) binds: [B:83:0x0174, B:58:0x0141, B:73:0x0162, B:66:0x0153] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #7 {IOException -> 0x0172, blocks: (B:57:0x013e, B:59:0x0143, B:65:0x0150, B:72:0x015f, B:79:0x016e), top: B:102:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0187 A[Catch: IOException -> 0x0183, TRY_LEAVE, TryCatch #16 {IOException -> 0x0183, blocks: (B:90:0x017f, B:94:0x0187), top: B:106:0x017f }] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v16, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v27, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject c(java.lang.String r9, java.lang.String r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.l.a.c(java.lang.String, java.lang.String):org.json.JSONObject");
    }

    public final org.json.JSONObject j() throws org.json.JSONException {
        android.content.pm.PackageInfo packageInfoM = m(f2929d);
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            jSONObject.put(com.umeng.analytics.pro.ai.o, packageInfoM.packageName);
            jSONObject.put("version_name", packageInfoM.versionName);
            jSONObject.put("version_code", packageInfoM.versionCode);
            jSONObject.put("channel", "88802");
        } catch (org.json.JSONException unused) {
        }
        return jSONObject;
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public final org.json.JSONObject o() throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        java.lang.String str = f.a.i.m.g.L(f2929d) + "x" + f.a.i.m.g.K(f2929d);
        try {
            jSONObject.put("device_id", "");
            jSONObject.put("model", "");
            jSONObject.put("resolution", str);
            jSONObject.put(com.umeng.analytics.pro.ai.x, "");
            jSONObject.put("ppi", "");
            java.lang.String macAddress = ((android.net.wifi.WifiManager) f2929d.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress == null) {
                macAddress = "";
            }
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.a, macAddress);
            java.lang.String string = android.os.Build.VERSION.SDK_INT >= 23 ? android.provider.Settings.Secure.getString(f2929d.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a) : ((android.telephony.TelephonyManager) f2929d.getSystemService("phone")).getDeviceId();
            if (android.text.TextUtils.isEmpty(string)) {
                string = "490154203237512";
            }
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.f.a, string);
            jSONObject.put("imsi", "");
            jSONObject.put("phone_num", "");
            jSONObject.put(com.umeng.analytics.pro.ai.P, "");
            jSONObject.put("bluetooth", "");
            jSONObject.put("area", "");
            jSONObject.put("network", "");
            jSONObject.put("location", "");
        } catch (org.json.JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public final java.lang.String p(java.io.File file) {
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
            while (true) {
                int i = fileInputStream.read(bArr, 0, 1024);
                if (i == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i);
            }
            fileInputStream.close();
            byte[] bArrDigest = messageDigest.digest();
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            for (int i2 = 0; i2 < bArrDigest.length; i2++) {
                int i3 = (bArrDigest[i2] >>> 4) & 15;
                int i4 = 0;
                while (true) {
                    stringBuffer.append((char) ((i3 < 0 || i3 > 9) ? (i3 - 10) + 97 : i3 + 48));
                    i3 = bArrDigest[i2] & com.umeng.analytics.pro.bw.m;
                    int i5 = i4 + 1;
                    if (i4 >= 1) {
                        break;
                    }
                    i4 = i5;
                }
            }
            return stringBuffer.toString();
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getFileMD5 Exception e : ");
            sbO.append(e2.getMessage());
            e.e.a.g.a(sbO.toString());
            return null;
        }
    }

    public final java.lang.String t(java.lang.String str, java.lang.String str2, org.json.JSONObject jSONObject, java.lang.String str3) {
        try {
            java.lang.String string = jSONObject.getString(com.umeng.commonsdk.statistics.idtracking.f.a);
            e.e.a.g.a("imei =" + string);
            java.lang.String str4 = (java.lang.System.currentTimeMillis() / 1000) + "";
            e.e.a.g.a("timestamp =" + str4);
            return f.a.i.m.c.c(str2 + string + str3 + str + str4).toUpperCase() + "," + str4;
        } catch (java.lang.Throwable th) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getSign");
            sbO.append(th.getMessage());
            return sbO.toString();
        }
    }
}
