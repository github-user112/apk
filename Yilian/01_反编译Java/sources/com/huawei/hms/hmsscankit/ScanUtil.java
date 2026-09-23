package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class ScanUtil {
    public static final int CAMERA_ININT_ERROR = -1000;
    public static final java.lang.String CONTEXT_METHOD = "initializeModule";
    public static final java.lang.String CONTEXT_PATH = "com.huawei.hms.feature.DynamicModuleInitializer";
    public static final java.lang.String CREATOR_PATH = "com.huawei.hms.scankit.Creator";
    public static final int ERROR_NO_CAMERA_PERMISSION = 1;
    public static final int ERROR_NO_READ_PERMISSION = 2;
    public static final int MAX_BITMAP_SIZE = 52428800;
    public static final java.lang.String MODULE_SCANKIT = "huawei_module_scankit";
    public static final java.lang.String MODULE_SCANKIT_LOCAL = "huawei_module_scankit_local";
    public static final java.lang.String RESULT = "SCAN_RESULT";
    public static final int SUCCESS = 0;

    public static android.graphics.Bitmap buildBitmap(java.lang.String str, int i, int i2, int i3, com.huawei.hms.ml.scan.HmsBuildBitmapOption hmsBuildBitmapOption) {
        return new com.huawei.hms.scankit.p.C0194pd().a(str, i, i2, i3, hmsBuildBitmapOption);
    }

    public static android.graphics.Bitmap compressBitmap(android.content.Context context, java.lang.String str) {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        android.graphics.BitmapFactory.decodeFile(str, options);
        dealBitmapFactoryOption(context, options);
        return android.graphics.BitmapFactory.decodeFile(str, options);
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x008c: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:35:0x008c */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003d A[Catch: Exception -> 0x006a, NullPointerException -> 0x0071, all -> 0x008b, TryCatch #5 {all -> 0x008b, blocks: (B:7:0x0023, B:9:0x0029, B:11:0x003d, B:13:0x0048, B:15:0x004f, B:24:0x006a, B:29:0x0073), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x005f A[EXC_TOP_SPLITTER, PHI: r3 r5
  0x005f: PHI (r3v4 android.net.Uri) = (r3v3 android.net.Uri), (r3v6 android.net.Uri), (r3v7 android.net.Uri) binds: [B:25:0x006d, B:30:0x0076, B:17:0x005d] A[DONT_GENERATE, DONT_INLINE]
  0x005f: PHI (r5v4 android.database.Cursor) = (r5v3 android.database.Cursor), (r5v5 android.database.Cursor), (r5v7 android.database.Cursor) binds: [B:25:0x006d, B:30:0x0076, B:17:0x005d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap compressBitmapForAndroid29(android.content.Context r12, java.lang.String r13) {
        /*
            java.lang.String r0 = "_id"
            java.lang.String r1 = "Exception"
            java.lang.String r2 = "exception"
            r3 = 0
            r4 = 1
            android.content.ContentResolver r5 = r12.getContentResolver()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            android.net.Uri r6 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            java.lang.String[] r7 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            r8 = 0
            r7[r8] = r0     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            java.lang.String r9 = "_data=?"
            java.lang.String[] r10 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            r10[r8] = r13     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            r11 = 0
            r8 = r9
            r9 = r10
            r10 = r11
            android.database.Cursor r5 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69 java.lang.NullPointerException -> L70
            if (r5 == 0) goto L3d
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            if (r6 == 0) goto L3d
            int r13 = r5.getColumnIndex(r0)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            int r13 = r5.getInt(r13)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            android.net.Uri r0 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            java.lang.String r13 = java.lang.String.valueOf(r13)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            android.net.Uri r13 = android.net.Uri.withAppendedPath(r0, r13)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
        L3b:
            r3 = r13
            goto L5d
        L3d:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            r0.<init>(r13)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            boolean r0 = r0.exists()     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            if (r0 == 0) goto L5d
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            r0.<init>()     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            java.lang.String r6 = "_data"
            r0.put(r6, r13)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            android.content.ContentResolver r13 = r12.getContentResolver()     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            android.net.Uri r6 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            android.net.Uri r13 = r13.insert(r6, r0)     // Catch: java.lang.Exception -> L6a java.lang.NullPointerException -> L71 java.lang.Throwable -> L8b
            goto L3b
        L5d:
            if (r5 == 0) goto L79
        L5f:
            r5.close()     // Catch: java.lang.Exception -> L63
            goto L79
        L63:
            com.huawei.hms.scankit.util.a.b(r2, r1)
            goto L79
        L67:
            r12 = move-exception
            goto L8d
        L69:
            r5 = r3
        L6a:
            com.huawei.hms.scankit.util.a.b(r2, r1)     // Catch: java.lang.Throwable -> L8b
            if (r5 == 0) goto L79
        L6f:
            goto L5f
        L70:
            r5 = r3
        L71:
            java.lang.String r13 = "NullPointerException"
            com.huawei.hms.scankit.util.a.b(r2, r13)     // Catch: java.lang.Throwable -> L8b
            if (r5 == 0) goto L79
            goto L6f
        L79:
            android.graphics.BitmapFactory$Options r13 = new android.graphics.BitmapFactory$Options
            r13.<init>()
            r13.inJustDecodeBounds = r4
            getBitmapFromUri(r12, r3, r13)
            dealBitmapFactoryOption(r12, r13)
            android.graphics.Bitmap r12 = getBitmapFromUri(r12, r3, r13)
            return r12
        L8b:
            r12 = move-exception
            r3 = r5
        L8d:
            if (r3 == 0) goto L96
            r3.close()     // Catch: java.lang.Exception -> L93
            goto L96
        L93:
            com.huawei.hms.scankit.util.a.b(r2, r1)
        L96:
            goto L98
        L97:
            throw r12
        L98:
            goto L97
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hmsscankit.ScanUtil.compressBitmapForAndroid29(android.content.Context, java.lang.String):android.graphics.Bitmap");
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
    public static void dealBitmapFactoryOption(android.content.Context r10, android.graphics.BitmapFactory.Options r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hmsscankit.ScanUtil.dealBitmapFactoryOption(android.content.Context, android.graphics.BitmapFactory$Options):void");
    }

    public static com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(android.content.Context context, android.graphics.Bitmap bitmap, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
        if (bitmap != null) {
            if (bitmap.getHeight() * bitmap.getWidth() <= 52428800) {
                return com.huawei.hms.hmsscankit.g.a(context, bitmap, hmsScanAnalyzerOptions);
            }
        }
        if (bitmap != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("input image is too large:");
            sbO.append(bitmap.getWidth());
            com.huawei.hms.scankit.util.a.d("ScanUtil", sbO.toString());
        }
        return new com.huawei.hms.ml.scan.HmsScan[0];
    }

    public static com.huawei.hms.ml.scan.HmsScan[] detectForHmsDector(android.content.Context context, com.huawei.hms.mlsdk.common.MLFrame mLFrame, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
        return com.huawei.hms.hmsscankit.b.a(context, mLFrame, hmsScanAnalyzerOptions);
    }

    public static android.graphics.Bitmap getBitmapFromUri(android.content.Context context, android.net.Uri uri, android.graphics.BitmapFactory.Options options) throws java.io.IOException {
        java.lang.String str;
        if (uri == null) {
            com.huawei.hms.scankit.util.a.a("ScanBitmap", "uri == null");
            return null;
        }
        try {
            android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT);
            android.graphics.Bitmap bitmapDecodeFileDescriptor = android.graphics.BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor(), null, options);
            parcelFileDescriptorOpenFileDescriptor.close();
            return bitmapDecodeFileDescriptor;
        } catch (java.io.FileNotFoundException unused) {
            str = "FileNotFoundException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.io.IOException unused2) {
            str = "IOException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        } catch (java.lang.Exception unused3) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return null;
        }
    }

    public static boolean isScanAvailable(android.content.Context context) {
        return true;
    }

    public static boolean selfPermissionGranted(android.content.Context context, int i, java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT < 23) {
            return true;
        }
        if (i >= 23) {
            if (com.huawei.hms.scankit.util.b.a(str) == null || context.checkSelfPermission(str) == 0) {
                return true;
            }
        } else if (com.huawei.hms.scankit.util.b.a(context, str) == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int startScan(android.app.Activity r4, int r5, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions r6) {
        /*
            java.lang.String r0 = "exception"
            android.content.pm.PackageManager r1 = r4.getPackageManager()     // Catch: java.lang.RuntimeException -> L15 android.content.pm.PackageManager.NameNotFoundException -> L18
            java.lang.String r2 = r4.getPackageName()     // Catch: java.lang.RuntimeException -> L15 android.content.pm.PackageManager.NameNotFoundException -> L18
            r3 = 16384(0x4000, float:2.2959E-41)
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r2, r3)     // Catch: java.lang.RuntimeException -> L15 android.content.pm.PackageManager.NameNotFoundException -> L18
            android.content.pm.ApplicationInfo r1 = r1.applicationInfo     // Catch: java.lang.RuntimeException -> L15 android.content.pm.PackageManager.NameNotFoundException -> L18
            int r0 = r1.targetSdkVersion     // Catch: java.lang.RuntimeException -> L15 android.content.pm.PackageManager.NameNotFoundException -> L18
            goto L1f
        L15:
            java.lang.String r1 = "RuntimeException"
            goto L1a
        L18:
            java.lang.String r1 = "NameNotFoundException"
        L1a:
            com.huawei.hms.scankit.util.a.b(r0, r1)
            r0 = 28
        L1f:
            java.lang.String r1 = "android.permission.CAMERA"
            boolean r0 = selfPermissionGranted(r4, r0, r1)
            if (r0 == 0) goto L3c
            android.content.Intent r0 = new android.content.Intent
            java.lang.Class<com.huawei.hms.hmsscankit.ScanKitActivity> r1 = com.huawei.hms.hmsscankit.ScanKitActivity.class
            r0.<init>(r4, r1)
            if (r6 == 0) goto L37
            int r6 = r6.mode
            java.lang.String r1 = "ScanFormatValue"
            r0.putExtra(r1, r6)
        L37:
            r4.startActivityForResult(r0, r5)
            r4 = 0
            return r4
        L3c:
            r4 = 1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hmsscankit.ScanUtil.startScan(android.app.Activity, int, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions):int");
    }
}
