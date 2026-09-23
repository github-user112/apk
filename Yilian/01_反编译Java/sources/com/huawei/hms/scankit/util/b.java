package com.huawei.hms.scankit.util;

/* loaded from: classes.dex */
public class b {
    public static java.lang.String a;
    public static java.lang.String b;

    public static int a(int i) {
        if (i <= 0 || i >= 8192) {
            return 0;
        }
        if (((i - 1) & i) == 0) {
            return i;
        }
        int i2 = com.huawei.hms.ml.scan.HmsScanBase.AZTEC_SCAN_TYPE;
        int iB = (i & i2) != 0 ? 0 | b(i2) : 0;
        int i3 = com.huawei.hms.ml.scan.HmsScanBase.CODABAR_SCAN_TYPE;
        if ((i & i3) != 0) {
            iB |= b(i3);
        }
        int i4 = com.huawei.hms.ml.scan.HmsScanBase.CODE39_SCAN_TYPE;
        if ((i & i4) != 0) {
            iB |= b(i4);
        }
        int i5 = com.huawei.hms.ml.scan.HmsScanBase.CODE93_SCAN_TYPE;
        if ((i & i5) != 0) {
            iB |= b(i5);
        }
        int i6 = com.huawei.hms.ml.scan.HmsScanBase.CODE128_SCAN_TYPE;
        if ((i & i6) != 0) {
            iB |= b(i6);
        }
        int i7 = com.huawei.hms.ml.scan.HmsScanBase.DATAMATRIX_SCAN_TYPE;
        if ((i & i7) != 0) {
            iB |= b(i7);
        }
        int i8 = com.huawei.hms.ml.scan.HmsScanBase.EAN8_SCAN_TYPE;
        if ((i & i8) != 0) {
            iB |= b(i8);
        }
        int i9 = com.huawei.hms.ml.scan.HmsScanBase.EAN13_SCAN_TYPE;
        if ((i & i9) != 0) {
            iB |= b(i9);
        }
        int i10 = com.huawei.hms.ml.scan.HmsScanBase.QRCODE_SCAN_TYPE;
        if ((i & i10) != 0) {
            iB |= b(i10);
        }
        int i11 = com.huawei.hms.ml.scan.HmsScanBase.ITF14_SCAN_TYPE;
        if ((i & i11) != 0) {
            iB |= b(i11);
        }
        int i12 = com.huawei.hms.ml.scan.HmsScanBase.PDF417_SCAN_TYPE;
        if ((i & i12) != 0) {
            iB |= b(i12);
        }
        int i13 = com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_A_SCAN_TYPE;
        if ((i & i13) != 0) {
            iB |= b(i13);
        }
        int i14 = com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_E_SCAN_TYPE;
        return (i & i14) != 0 ? iB | b(i14) : iB;
    }

    public static int a(android.app.Activity activity) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.huawei.android.app.ActivityManagerEx");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getActivityWindowMode", android.app.Activity.class);
            declaredMethod.setAccessible(true);
            java.lang.Object objInvoke = declaredMethod.invoke(cls, activity);
            if (objInvoke == null) {
                return -1;
            }
            return java.lang.Integer.valueOf(java.lang.String.valueOf(objInvoke)).intValue();
        } catch (java.lang.ClassNotFoundException | java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.NumberFormatException | java.lang.reflect.InvocationTargetException unused) {
            return -1;
        }
    }

    public static int a(android.content.Context context, java.lang.String str) {
        return context.checkPermission(str, android.os.Process.myPid(), android.os.Process.myUid()) == -1 ? -1 : 0;
    }

    public static android.content.pm.ResolveInfo a(android.content.Intent intent, java.lang.String str, android.app.Activity activity) {
        intent.setPackage(str);
        java.util.List<android.content.pm.ResolveInfo> listQueryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        if (listQueryIntentActivities.isEmpty()) {
            return null;
        }
        return listQueryIntentActivities.get(0);
    }

    public static android.graphics.Bitmap a(android.content.Context context, android.content.Intent intent) {
        android.graphics.Bitmap bitmapA;
        android.graphics.Bitmap bitmapCompressBitmap;
        if (b(context)) {
            android.net.Uri data = intent.getData();
            if (data == null || (bitmapA = a(context, data)) == null) {
                return null;
            }
            return bitmapA;
        }
        java.lang.String strB = b(context, intent);
        if (android.text.TextUtils.isEmpty(strB)) {
            return null;
        }
        if (android.os.Build.VERSION.SDK_INT <= 28 || context.getApplicationInfo() == null || context.getApplicationInfo().targetSdkVersion <= 28) {
            com.huawei.hms.scankit.util.a.a("ScanBitmap", "compressBitmap below android 29");
            bitmapCompressBitmap = com.huawei.hms.hmsscankit.ScanUtil.compressBitmap(context, strB);
        } else {
            com.huawei.hms.scankit.util.a.a("ScanBitmap", "compressBitmap above android 29");
            bitmapCompressBitmap = com.huawei.hms.hmsscankit.ScanUtil.compressBitmapForAndroid29(context, strB);
        }
        if (bitmapCompressBitmap != null) {
            return bitmapCompressBitmap;
        }
        com.huawei.hms.scankit.util.a.a("ScanBitmap", "compressBitmap above android 29");
        return com.huawei.hms.hmsscankit.ScanUtil.compressBitmapForAndroid29(context, strB);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0038 A[EXC_TOP_SPLITTER, PHI: r6
  0x0038: PHI (r6v4 java.io.InputStream) = (r6v3 java.io.InputStream), (r6v5 java.io.InputStream) binds: [B:27:0x004b, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap a(android.content.Context r5, android.net.Uri r6) throws java.lang.Throwable {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r1 = 1
            r0.inJustDecodeBounds = r1
            android.content.Context r1 = r5.getApplicationContext()
            android.content.ContentResolver r1 = r1.getContentResolver()
            r2 = 0
            java.io.InputStream r6 = r1.openInputStream(r6)     // Catch: java.lang.Throwable -> L3e java.io.IOException -> L4a
            if (r6 == 0) goto L36
            byte[] r1 = a(r6)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            int r3 = r1.length     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            r4 = 0
            android.graphics.BitmapFactory.decodeByteArray(r1, r4, r3, r0)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            a(r5, r0)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            int r5 = r1.length     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            android.graphics.Bitmap r5 = android.graphics.BitmapFactory.decodeByteArray(r1, r4, r5, r0)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L34
            r6.close()     // Catch: java.io.IOException -> L2c
            goto L30
        L2c:
            r6 = move-exception
            r6.printStackTrace()
        L30:
            return r5
        L31:
            r5 = move-exception
            r2 = r6
            goto L3f
        L34:
            goto L4b
        L36:
            if (r6 == 0) goto L51
        L38:
            r6.close()     // Catch: java.io.IOException -> L3c
            goto L51
        L3c:
            r5 = move-exception
            goto L4e
        L3e:
            r5 = move-exception
        L3f:
            if (r2 == 0) goto L49
            r2.close()     // Catch: java.io.IOException -> L45
            goto L49
        L45:
            r6 = move-exception
            r6.printStackTrace()
        L49:
            throw r5
        L4a:
            r6 = r2
        L4b:
            if (r6 == 0) goto L51
            goto L38
        L4e:
            r5.printStackTrace()
        L51:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.util.b.a(android.content.Context, android.net.Uri):android.graphics.Bitmap");
    }

    public static android.graphics.Bitmap a(android.graphics.Bitmap bitmap, float f2) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.setRotate(f2, width / 2, height / 2);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        if (!bitmapCreateBitmap.equals(bitmap) && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static android.graphics.Bitmap a(android.graphics.Bitmap bitmap, float f2, float f3) {
        if (f2 <= 0.0f || f3 <= 0.0f) {
            return null;
        }
        float f4 = 1.0f / f2;
        float f5 = 1.0f / f3;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = (int) (width * f2);
        int i2 = (int) (height * f3);
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int[] iArr2 = new int[i * i2];
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                iArr2[(i3 * i) + i4] = iArr[(((int) (i3 * f5)) * width) + ((int) (i4 * f4))];
            }
        }
        android.util.Log.d(">>>", "dstPixels:" + i + " x " + i2);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i, i2, android.graphics.Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr2, 0, i, 0, 0, i, i2);
        return bitmapCreateBitmap;
    }

    public static android.graphics.Bitmap a(android.graphics.Bitmap bitmap, int i) {
        float f2;
        if (i == 0) {
            f2 = 90.0f;
        } else if (i == 2) {
            f2 = 270.0f;
        } else {
            if (i != 3) {
                return bitmap;
            }
            f2 = 180.0f;
        }
        return a(bitmap, f2);
    }

    public static android.graphics.Bitmap a(android.graphics.Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return null;
        }
        return a(bitmap, i / bitmap.getWidth(), i2 / bitmap.getHeight());
    }

    public static java.lang.String a(android.content.Context context, android.net.Uri uri, java.lang.String str) {
        java.lang.String str2;
        try {
            android.database.Cursor cursorQuery = context.getContentResolver().query(uri, new java.lang.String[]{"_data"}, str, null, null);
            if (cursorQuery != null) {
                string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndex("_data")) : null;
                cursorQuery.close();
            }
            return string;
        } catch (java.lang.IllegalStateException unused) {
            str2 = "IllegalStateException in getImagePath";
            com.huawei.hms.scankit.util.a.b("ScankitUtils", str2);
            return null;
        } catch (java.lang.Exception unused2) {
            str2 = "Exception in getImagePath";
            com.huawei.hms.scankit.util.a.b("ScankitUtils", str2);
            return null;
        }
    }

    public static java.lang.String a(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            return android.app.AppOpsManager.permissionToOp(str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r10, android.graphics.BitmapFactory.Options r11) {
        /*
            java.lang.String r0 = "exception"
            int r1 = r11.outWidth
            int r2 = r11.outHeight
            if (r1 == 0) goto L65
            if (r2 != 0) goto Lb
            goto L65
        Lb:
            if (r1 <= r2) goto Le
            r1 = r2
        Le:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 23
            r4 = 0
            r5 = 1
            if (r2 < r3) goto L46
            java.lang.String r2 = "activity"
            java.lang.Object r10 = r10.getSystemService(r2)     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            android.app.ActivityManager r10 = (android.app.ActivityManager) r10     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            android.app.ActivityManager$MemoryInfo r2 = new android.app.ActivityManager$MemoryInfo     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            r2.<init>()     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            r10.getMemoryInfo(r2)     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            r6 = 4652218415073722368(0x4090000000000000, double:1024.0)
            r8 = 4613937818241073152(0x4008000000000000, double:3.0)
            double r6 = java.lang.Math.pow(r6, r8)     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            long r2 = r2.totalMem     // Catch: java.lang.Exception -> L3e java.lang.NullPointerException -> L41
            double r2 = (double) r2
            java.lang.Double.isNaN(r2)
            double r2 = r2 / r6
            r6 = 4617878467915022336(0x4016000000000000, double:5.5)
            int r10 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r10 >= 0) goto L3c
            goto L46
        L3c:
            r10 = 0
            goto L47
        L3e:
            java.lang.String r10 = "Exception"
            goto L43
        L41:
            java.lang.String r10 = "NullPointerException"
        L43:
            com.huawei.hms.scankit.util.a.b(r0, r10)
        L46:
            r10 = 1
        L47:
            if (r10 == 0) goto L4c
            r10 = 1200(0x4b0, float:1.682E-42)
            goto L4e
        L4c:
            r10 = 3000(0xbb8, float:4.204E-42)
        L4e:
            if (r1 <= r10) goto L58
            float r0 = (float) r1
            float r10 = (float) r10
            float r0 = r0 / r10
            int r10 = java.lang.Math.round(r0)
            goto L59
        L58:
            r10 = 1
        L59:
            r11.inSampleSize = r10
            r11.inJustDecodeBounds = r4
            android.graphics.Bitmap$Config r10 = android.graphics.Bitmap.Config.ARGB_8888
            r11.inPreferredConfig = r10
            r11.inPurgeable = r5
            r11.inInputShareable = r5
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.util.b.a(android.content.Context, android.graphics.BitmapFactory$Options):void");
    }

    public static boolean a(android.content.Context context) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        java.lang.String str;
        android.content.res.Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.os.SystemProperties");
            java.lang.reflect.Method method = cls.getMethod("get", java.lang.String.class);
            java.lang.Object[] objArr = new java.lang.Object[1];
            objArr[0] = "qemu.hw.mainkeys";
            str = (java.lang.String) method.invoke(cls, objArr);
        } catch (java.lang.Exception unused) {
            com.huawei.hms.scankit.util.a.c("Uuils", "checkDeviceHasNavigationBar Exception");
        }
        if ("1".equals(str)) {
            return false;
        }
        if ("0".equals(str)) {
            return true;
        }
        return z;
    }

    public static boolean a(byte[] bArr, int i) {
        return i >= 0 && i < bArr.length;
    }

    public static boolean a(float[] fArr, int i) {
        return i >= 0 && i < fArr.length;
    }

    public static boolean a(int[] iArr, int i) {
        return i >= 0 && i < iArr.length;
    }

    public static boolean a(java.lang.String[] strArr, int i) {
        return i >= 0 && i < strArr.length;
    }

    public static boolean a(byte[][] bArr, int i) {
        return i >= 0 && i < bArr.length;
    }

    public static boolean a(int[][] iArr, int i) {
        return i >= 0 && i < iArr.length;
    }

    public static byte[] a(java.io.InputStream inputStream) throws java.io.IOException {
        byte[] bArr = new byte[1024];
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr) {
        if (hmsScanArr != null && hmsScanArr.length != 0) {
            for (int i = 0; i < hmsScanArr.length; i++) {
                if (hmsScanArr[i] != null) {
                    hmsScanArr[i].scanType = b(hmsScanArr[i].scanType);
                }
            }
        }
        return hmsScanArr;
    }

    public static int b(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.QRCODE_SCAN_TYPE) {
            return 256;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.AZTEC_SCAN_TYPE) {
            return 4096;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.DATAMATRIX_SCAN_TYPE) {
            return 16;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.PDF417_SCAN_TYPE) {
            return 2048;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.CODE39_SCAN_TYPE) {
            return 2;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.CODE93_SCAN_TYPE) {
            return 4;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.CODE128_SCAN_TYPE) {
            return 1;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.EAN13_SCAN_TYPE) {
            return 32;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.EAN8_SCAN_TYPE) {
            return 64;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.ITF14_SCAN_TYPE) {
            return 128;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_A_SCAN_TYPE) {
            return 512;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_E_SCAN_TYPE) {
            return 1024;
        }
        if (i == com.huawei.hms.ml.scan.HmsScanBase.CODABAR_SCAN_TYPE) {
            return 8;
        }
        return i;
    }

    public static java.lang.String b(android.content.Context context, android.content.Intent intent) {
        android.net.Uri data = new android.content.Intent(intent).getData();
        if (android.os.Build.VERSION.SDK_INT > 19) {
            if (android.provider.DocumentsContract.isDocumentUri(context, data)) {
                java.lang.String documentId = android.provider.DocumentsContract.getDocumentId(data);
                if ("com.android.providers.media.documents".equals(data.getAuthority())) {
                    return a(context, android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, e.a.c.a.a.e("_id=", documentId.split(":")[1]));
                }
                if (!"com.android.providers.downloads.documents".equals(data.getAuthority())) {
                    return null;
                }
                try {
                    return a(context, android.content.ContentUris.withAppendedId(android.net.Uri.parse("content://downloads/public_downloads"), java.lang.Long.parseLong(documentId)), (java.lang.String) null);
                } catch (java.lang.NumberFormatException unused) {
                    com.huawei.hms.scankit.util.a.b("ScankitUtils", "NumberFormatException in withAppendedId");
                    return null;
                } catch (java.lang.Exception unused2) {
                    com.huawei.hms.scankit.util.a.b("ScankitUtils", "Exception in withAppendedId");
                    return null;
                }
            }
            if (!"content".equalsIgnoreCase(data.getScheme())) {
                return null;
            }
        }
        return a(context, data, (java.lang.String) null);
    }

    public static boolean b(android.app.Activity activity) {
        return a(activity) == 102;
    }

    public static boolean b(android.content.Context context) {
        java.lang.String str;
        if (android.text.TextUtils.isEmpty(a)) {
            try {
                a = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("scanExt", "unSet");
            } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
                str = "checkPermission NameNotFoundException";
                android.util.Log.e("scanerror", str);
                return "readUri".equals(a);
            } catch (java.lang.Exception unused2) {
                str = "checkPermission Exception";
                android.util.Log.e("scanerror", str);
                return "readUri".equals(a);
            }
        }
        return "readUri".equals(a);
    }

    public static boolean c(android.app.Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        return rotation == 0 || rotation == 2;
    }

    public static boolean c(android.content.Context context) {
        if (b(context) && android.text.TextUtils.isEmpty(b)) {
            b = context.getSharedPreferences("scanExt", 0).getString("scanExt", "unSet");
        }
        return "forbid".equals(b);
    }

    public static boolean d(android.content.Context context) {
        return android.os.Build.VERSION.SDK_INT >= 24 && (context instanceof android.app.Activity) && ((android.app.Activity) context).isInMultiWindowMode();
    }

    public static boolean e(android.content.Context context) {
        try {
            return "CN".equalsIgnoreCase(com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN"));
        } catch (java.lang.RuntimeException | java.lang.Exception unused) {
            return false;
        }
    }
}
