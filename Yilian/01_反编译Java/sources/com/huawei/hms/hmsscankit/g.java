package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class g {
    public static volatile com.huawei.hms.scankit.p.Pc a;
    public static volatile com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate b;

    public static android.os.Bundle a(java.lang.String str, int i, int i2, int i3, com.huawei.hms.ml.scan.HmsBuildBitmapOption hmsBuildBitmapOption) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt("contentLength", str == null ? -1 : str.length());
        bundle.putInt("scanType", i);
        bundle.putInt("reqWidth", i2);
        bundle.putInt("reqHeight", i3);
        bundle.putString("buildBitmapOption", hmsBuildBitmapOption == null ? "null" : hmsBuildBitmapOption.toString());
        bundle.putString("apiName", "BuildBitmap");
        bundle.putLong("callTime", java.lang.System.currentTimeMillis());
        bundle.putString("transId", java.util.UUID.randomUUID().toString());
        return bundle;
    }

    public static void a(int i, android.graphics.Bitmap bitmap, android.os.Bundle bundle) {
        if (bundle != null) {
            bundle.putInt("result", i);
            bundle.putInt("outputWidth", bitmap == null ? -1 : bitmap.getWidth());
            bundle.putInt("outputHeight", bitmap != null ? bitmap.getHeight() : -1);
            long j = bundle.getLong("callTime");
            bundle.putLong("costTime", java.lang.System.currentTimeMillis() - j);
            bundle.putString("callTime", new com.huawei.hms.hmsscankit.f("yyyyMMddHHmmss.SSS").format(java.lang.Long.valueOf(j)));
            a(bundle);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.os.Bundle r3) {
        /*
            java.lang.String r0 = "RemoteDecoder"
            android.content.Context r1 = com.huawei.hms.feature.DynamicModuleInitializer.getContext()
            if (r1 != 0) goto L4b
            e.d.a.b.c.a r1 = e.d.a.b.c.a.b     // Catch: java.lang.NoClassDefFoundError -> L10 java.lang.Exception -> L12 java.lang.IllegalAccessException -> L14 java.lang.reflect.InvocationTargetException -> L16 java.lang.NoSuchMethodException -> L18 java.lang.ClassNotFoundException -> L1a
            android.content.Context r1 = r1.a     // Catch: java.lang.NoClassDefFoundError -> L10 java.lang.Exception -> L12 java.lang.IllegalAccessException -> L14 java.lang.reflect.InvocationTargetException -> L16 java.lang.NoSuchMethodException -> L18 java.lang.ClassNotFoundException -> L1a
            com.huawei.hms.hmsscankit.j.a(r1)     // Catch: java.lang.NoClassDefFoundError -> L10 java.lang.Exception -> L12 java.lang.IllegalAccessException -> L14 java.lang.reflect.InvocationTargetException -> L16 java.lang.NoSuchMethodException -> L18 java.lang.ClassNotFoundException -> L1a
            goto L4b
        L10:
            r3 = move-exception
            goto L1c
        L12:
            r1 = move-exception
            goto L26
        L14:
            r1 = move-exception
            goto L2d
        L16:
            r1 = move-exception
            goto L34
        L18:
            r1 = move-exception
            goto L3b
        L1a:
            r1 = move-exception
            goto L42
        L1c:
            java.lang.String r3 = r3.getMessage()
            java.lang.String r0 = "NoClassDefFoundError"
            com.huawei.hms.scankit.util.a.b(r0, r3)
            return
        L26:
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "Exception"
            goto L48
        L2d:
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "IllegalAccessException"
            goto L48
        L34:
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "InvocationTargetException"
            goto L48
        L3b:
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "NoSuchMethodException"
            goto L48
        L42:
            java.lang.String r1 = r1.getMessage()
            java.lang.String r2 = "ClassNotFoundException"
        L48:
            com.huawei.hms.scankit.util.a.b(r2, r1)
        L4b:
            com.huawei.hms.scankit.p.Pc r1 = com.huawei.hms.hmsscankit.g.a
            if (r1 != 0) goto L7d
            com.huawei.hms.scankit.p.Pc r1 = new com.huawei.hms.scankit.p.Pc     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d java.lang.RuntimeException -> L6a
            r1.<init>()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d java.lang.RuntimeException -> L6a
            com.huawei.hms.hmsscankit.g.a = r1     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d java.lang.RuntimeException -> L6a
            com.huawei.hms.scankit.p.Pc r0 = com.huawei.hms.hmsscankit.g.a
            if (r0 != 0) goto L7d
            return
        L5b:
            r3 = move-exception
            goto L77
        L5d:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L5b
            com.huawei.hms.scankit.util.a.b(r0, r1)     // Catch: java.lang.Throwable -> L5b
            com.huawei.hms.scankit.p.Pc r0 = com.huawei.hms.hmsscankit.g.a
            if (r0 != 0) goto L7d
            return
        L6a:
            r1 = move-exception
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L5b
            com.huawei.hms.scankit.util.a.b(r0, r1)     // Catch: java.lang.Throwable -> L5b
            com.huawei.hms.scankit.p.Pc r0 = com.huawei.hms.hmsscankit.g.a
            if (r0 != 0) goto L7d
            return
        L77:
            com.huawei.hms.scankit.p.Pc r0 = com.huawei.hms.hmsscankit.g.a
            if (r0 != 0) goto L7c
            return
        L7c:
            throw r3
        L7d:
            com.huawei.hms.scankit.p.Pc r0 = com.huawei.hms.hmsscankit.g.a
            r0.a(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.hmsscankit.g.a(android.os.Bundle):void");
    }

    public static com.huawei.hms.ml.scan.HmsScan[] a(android.content.Context context, android.graphics.Bitmap bitmap, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException {
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArr = new com.huawei.hms.ml.scan.HmsScan[0];
        if (b == null) {
            com.huawei.hms.hmsscankit.api.IRemoteCreator iRemoteCreatorB = com.huawei.hms.hmsscankit.j.b(context);
            if (iRemoteCreatorB == null) {
                return hmsScanArr;
            }
            try {
                b = iRemoteCreatorB.newRemoteDecoderDelegate();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("RemoteDecoder", "RemoteException");
            }
        }
        if (b == null) {
            return hmsScanArr;
        }
        try {
            android.os.Bundle bundle = new android.os.Bundle();
            if (hmsScanAnalyzerOptions != null) {
                bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG, hmsScanAnalyzerOptions.mode);
                bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE, hmsScanAnalyzerOptions.photoMode);
            }
            bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 3);
            bundle.putAll(com.huawei.hms.scankit.p.Rc.a(context));
            com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap = b.decodeWithBitmap(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bitmap), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle));
            return hmsScanArrDecodeWithBitmap != null ? hmsScanArrDecodeWithBitmap : hmsScanArr;
        } catch (android.os.RemoteException unused2) {
            com.huawei.hms.scankit.util.a.b("RemoteDecoder", "RemoteException");
            return hmsScanArr;
        }
    }
}
