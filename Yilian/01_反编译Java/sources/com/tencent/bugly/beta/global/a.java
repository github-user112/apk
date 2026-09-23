package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class a {
    public static int a(android.content.Context context) {
        android.net.NetworkInfo activeNetworkInfo;
        android.telephony.TelephonyManager telephonyManager;
        try {
            activeNetworkInfo = ((android.net.ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (java.lang.Exception e2) {
            if (!com.tencent.bugly.proguard.aa.b(e2)) {
                e2.printStackTrace();
            }
        }
        if (activeNetworkInfo == null) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        if (activeNetworkInfo.getType() == 0 && (telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone")) != null) {
            switch (telephonyManager.getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return 3;
                case 13:
                    return 4;
                default:
                    return 0;
            }
        }
        return 0;
    }

    public static int a(android.content.Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0050 A[Catch: Exception -> 0x0108, TryCatch #0 {Exception -> 0x0108, blocks: (B:12:0x0014, B:15:0x001f, B:17:0x002e, B:24:0x0048, B:26:0x0050, B:28:0x0059, B:31:0x006a, B:54:0x00db, B:56:0x00e3, B:59:0x00f3, B:63:0x00ff, B:55:0x00de, B:41:0x00b6, B:43:0x00c1, B:36:0x009a, B:30:0x0063, B:21:0x003c), top: B:71:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f3 A[Catch: Exception -> 0x0108, TryCatch #0 {Exception -> 0x0108, blocks: (B:12:0x0014, B:15:0x001f, B:17:0x002e, B:24:0x0048, B:26:0x0050, B:28:0x0059, B:31:0x006a, B:54:0x00db, B:56:0x00e3, B:59:0x00f3, B:63:0x00ff, B:55:0x00de, B:41:0x00b6, B:43:0x00c1, B:36:0x009a, B:30:0x0063, B:21:0x003c), top: B:71:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap a(android.content.Context r18, int r19, java.lang.Object... r20) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.global.a.a(android.content.Context, int, java.lang.Object[]):android.graphics.Bitmap");
    }

    public static android.graphics.Bitmap a(android.graphics.drawable.Drawable drawable) {
        if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
            android.graphics.drawable.BitmapDrawable bitmapDrawable = (android.graphics.drawable.BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        android.graphics.Bitmap bitmapCreateBitmap = (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) ? android.graphics.Bitmap.createBitmap(1, 1, android.graphics.Bitmap.Config.ARGB_8888) : android.graphics.Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static android.graphics.drawable.BitmapDrawable a(android.graphics.Bitmap bitmap, int i, int i2, float f2) {
        android.util.DisplayMetrics displayMetrics = com.tencent.bugly.beta.global.e.b.E;
        int i3 = (int) (displayMetrics.widthPixels * displayMetrics.heightPixels * 0.8f);
        if (bitmap == null || i * i2 > i3) {
            return null;
        }
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i, i2, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        android.graphics.Paint paint = new android.graphics.Paint();
        android.graphics.Rect rect = new android.graphics.Rect(0, 0, i, i2);
        android.graphics.RectF rectF = new android.graphics.RectF(rect);
        canvas.setDrawFilter(new android.graphics.PaintFlagsDrawFilter(0, 3));
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-16777216);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        canvas.drawRect(0.0f, f2, i, i2, paint);
        paint.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, new android.graphics.Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint);
        return new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap);
    }

    public static synchronized <T extends android.os.Parcelable> T a(java.lang.String str, android.os.Parcelable.Creator<T> creator) {
        java.util.Map<java.lang.String, byte[]> mapC = com.tencent.bugly.proguard.C0256p.a.c();
        if (mapC == null) {
            return null;
        }
        byte[] bArr = mapC.get(str);
        if (bArr != null && bArr.length > 0) {
            return (T) com.tencent.bugly.proguard.ha.a(bArr, creator);
        }
        return null;
    }

    public static java.lang.String a(android.content.Context context, java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.Object obj;
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || (obj = applicationInfo.metaData.get(str)) == null) {
                return null;
            }
            return java.lang.String.valueOf(obj);
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(com.tencent.bugly.beta.global.a.class, e.a.c.a.a.I(e2, e.a.c.a.a.o("getManifestMetaDataValue exception:")), new java.lang.Object[0]);
            return null;
        }
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) {
        android.content.SharedPreferences sharedPreferences = com.tencent.bugly.beta.global.e.b.D;
        return sharedPreferences != null ? sharedPreferences.getString(str, str2) : str2;
    }

    public static void a(java.io.File file) {
        java.io.File[] fileArrListFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (java.io.File file2 : fileArrListFiles) {
            if (!file2.delete()) {
                com.tencent.bugly.proguard.aa.b("cannot delete file:%s", file2.getAbsolutePath());
            }
        }
    }

    public static boolean a(android.content.Context context, java.io.File file, java.lang.String str) {
        if (file != null) {
            try {
                if (file.exists() && file.getName().endsWith(".apk")) {
                    java.lang.String strA = com.tencent.bugly.proguard.ha.a(file, "MD5");
                    if (!android.text.TextUtils.isEmpty(str) && !android.text.TextUtils.equals(str.toUpperCase(), strA)) {
                        com.tencent.bugly.proguard.aa.c("md5 error [file md5: %s] [target md5: %s]", strA, str);
                        return false;
                    }
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("chmod 777 ");
                    sb.append(file.getAbsolutePath());
                    java.lang.Runtime.getRuntime().exec(sb.toString());
                    android.content.Intent intent = new android.content.Intent("android.intent.action.VIEW");
                    if (android.os.Build.VERSION.SDK_INT >= 24) {
                        intent.addFlags(1);
                        java.lang.Class.forName("androidx.core.content.FileProvider");
                        java.lang.Class[] clsArr = {android.content.Context.class, java.lang.String.class, java.io.File.class};
                        java.lang.Object[] objArr = new java.lang.Object[3];
                        objArr[0] = context;
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                        sb2.append(com.tencent.bugly.crashreport.common.info.a.a(context).f967g);
                        sb2.append(".fileProvider");
                        objArr[1] = sb2.toString();
                        objArr[2] = file;
                        android.net.Uri uri = (android.net.Uri) com.tencent.bugly.proguard.ha.a("androidx.core.content.FileProvider", "getUriForFile", null, clsArr, objArr);
                        if (uri == null) {
                            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                            sb3.append("file location is ");
                            sb3.append(file.toString());
                            com.tencent.bugly.proguard.aa.b(sb3.toString(), new java.lang.Object[0]);
                            com.tencent.bugly.proguard.aa.b("install failed, contentUri is null!", new java.lang.Object[0]);
                            return false;
                        }
                        java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                        sb4.append("contentUri is ");
                        sb4.append(uri);
                        com.tencent.bugly.proguard.aa.a(sb4.toString(), new java.lang.Object[0]);
                        intent.setDataAndType(uri, "application/vnd.android.package-archive");
                    } else {
                        intent.setDataAndType(android.net.Uri.fromFile(file), "application/vnd.android.package-archive");
                    }
                    intent.addFlags(268435456);
                    context.startActivity(intent);
                    return true;
                }
            } catch (java.lang.Exception e2) {
                if (!com.tencent.bugly.proguard.aa.a(e2)) {
                    e2.printStackTrace();
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0066 A[Catch: IOException -> 0x0062, TRY_LEAVE, TryCatch #5 {IOException -> 0x0062, blocks: (B:47:0x005e, B:51:0x0066), top: B:58:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.io.File r3, java.io.File r4) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r3 == 0) goto L6e
            r1 = 0
            boolean r2 = r3.exists()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            if (r2 == 0) goto L6e
            boolean r2 = r3.isDirectory()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            if (r2 == 0) goto L12
            goto L6e
        L12:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L45
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r3.<init>(r4, r0)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r4 = 1048576(0x100000, float:1.469368E-39)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
        L20:
            int r1 = r2.read(r4)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            if (r1 <= 0) goto L2a
            r3.write(r4, r0, r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L39
            goto L20
        L2a:
            r0 = 1
            r2.close()     // Catch: java.io.IOException -> L32
            r3.close()     // Catch: java.io.IOException -> L32
            goto L55
        L32:
            r3 = move-exception
            r3.printStackTrace()
            goto L55
        L37:
            r4 = move-exception
            goto L58
        L39:
            r4 = move-exception
            goto L40
        L3b:
            r3 = move-exception
            goto L5a
        L3d:
            r3 = move-exception
            r4 = r3
            r3 = r1
        L40:
            r1 = r2
            goto L48
        L42:
            r3 = move-exception
            r4 = r1
            goto L5c
        L45:
            r3 = move-exception
            r4 = r3
            r3 = r1
        L48:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L56
            if (r1 == 0) goto L50
            r1.close()     // Catch: java.io.IOException -> L32
        L50:
            if (r3 == 0) goto L55
            r3.close()     // Catch: java.io.IOException -> L32
        L55:
            return r0
        L56:
            r4 = move-exception
            r2 = r1
        L58:
            r1 = r3
            r3 = r4
        L5a:
            r4 = r1
            r1 = r2
        L5c:
            if (r1 == 0) goto L64
            r1.close()     // Catch: java.io.IOException -> L62
            goto L64
        L62:
            r4 = move-exception
            goto L6a
        L64:
            if (r4 == 0) goto L6d
            r4.close()     // Catch: java.io.IOException -> L62
            goto L6d
        L6a:
            r4.printStackTrace()
        L6d:
            throw r3
        L6e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.global.a.a(java.io.File, java.io.File):boolean");
    }

    public static boolean a(java.io.File file, java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        if (file != null) {
            try {
                if (file.exists()) {
                    java.lang.String strA = com.tencent.bugly.proguard.ha.a(file, str2);
                    if (!android.text.TextUtils.isEmpty(str) && android.text.TextUtils.equals(str.toUpperCase(), strA)) {
                        return true;
                    }
                    com.tencent.bugly.proguard.aa.c("checkFileUniqueId failed [file  uniqueId %s] [target uniqueId %s]", strA, str);
                    return false;
                }
            } catch (java.lang.Exception unused) {
                com.tencent.bugly.proguard.aa.b("checkFileUniqueId exception", new java.lang.Object[0]);
            }
        }
        return false;
    }

    public static synchronized boolean a(java.lang.String str) {
        return com.tencent.bugly.proguard.C0256p.a.a(str);
    }

    public static synchronized <T extends android.os.Parcelable> boolean a(java.lang.String str, T t) {
        boolean z = false;
        if (t == null) {
            return false;
        }
        byte[] bArrA = com.tencent.bugly.proguard.ha.a(t);
        if (bArrA != null) {
            if (com.tencent.bugly.proguard.C0256p.a.a(1002, str, bArrA)) {
                z = true;
            }
        }
        return z;
    }

    public static boolean a(java.lang.String str, boolean z) {
        android.content.SharedPreferences sharedPreferences = com.tencent.bugly.beta.global.e.b.D;
        return sharedPreferences != null ? sharedPreferences.getBoolean(str, z) : z;
    }

    public static java.lang.String b(java.lang.String str) {
        return new com.tencent.bugly.beta.utils.c(str).a();
    }

    public static void b(java.lang.String str, java.lang.String str2) {
        android.content.SharedPreferences sharedPreferences = com.tencent.bugly.beta.global.e.b.D;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(str, str2).apply();
        }
    }

    public static void b(java.lang.String str, boolean z) {
        android.content.SharedPreferences sharedPreferences = com.tencent.bugly.beta.global.e.b.D;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean(str, z).apply();
        }
    }
}
