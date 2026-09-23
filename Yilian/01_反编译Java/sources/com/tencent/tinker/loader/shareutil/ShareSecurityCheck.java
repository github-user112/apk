package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareSecurityCheck {
    public static final java.lang.String TAG = "Tinker.SecurityCheck";
    public static java.lang.String mPublicKeyMd5;
    public final android.content.Context mContext;
    public final java.util.HashMap<java.lang.String, java.lang.String> metaContentMap = new java.util.HashMap<>();
    public final java.util.HashMap<java.lang.String, java.lang.String> packageProperties = new java.util.HashMap<>();

    public ShareSecurityCheck(android.content.Context context) {
        this.mContext = context;
        if (mPublicKeyMd5 == null) {
            init(this.mContext);
        }
    }

    private boolean check(java.io.File file, java.security.cert.Certificate[] certificateArr) {
        if (certificateArr.length > 0) {
            for (int length = certificateArr.length - 1; length >= 0; length--) {
                try {
                } catch (java.lang.Exception e2) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, file.getAbsolutePath(), e2);
                }
                if (mPublicKeyMd5.equals(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(certificateArr[length].getEncoded()))) {
                    return true;
                }
            }
        }
        return false;
    }

    @android.annotation.SuppressLint({"PackageManagerGetSignatures"})
    private void init(android.content.Context context) {
        try {
            try {
                java.lang.String md5 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray());
                mPublicKeyMd5 = md5;
                if (md5 != null) {
                } else {
                    throw new com.tencent.tinker.loader.TinkerRuntimeException("get public key md5 is null");
                }
            } catch (java.lang.Exception e2) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("ShareSecurityCheck init public key fail", e2);
            }
        } finally {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(null);
        }
    }

    public java.util.HashMap<java.lang.String, java.lang.String> getMetaContentMap() {
        return this.metaContentMap;
    }

    public java.util.HashMap<java.lang.String, java.lang.String> getPackagePropertiesIfPresent() {
        java.lang.String[] strArrSplit;
        if (!this.packageProperties.isEmpty()) {
            return this.packageProperties;
        }
        java.lang.String str = this.metaContentMap.get(com.tencent.tinker.loader.shareutil.ShareConstants.PACKAGE_META_FILE);
        if (str == null) {
            return null;
        }
        for (java.lang.String str2 : str.split("\n")) {
            if (str2 != null && str2.length() > 0 && !str2.startsWith("#") && (strArrSplit = str2.split("=", 2)) != null && strArrSplit.length >= 2) {
                this.packageProperties.put(strArrSplit[0].trim(), strArrSplit[1].trim());
            }
        }
        return this.packageProperties;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean verifyPatchMetaSignature(java.io.File r12) throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.String r0 = "Tinker.SecurityCheck"
            boolean r1 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.isLegalFile(r12)
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            r1 = 0
            r3 = 1
            java.util.jar.JarFile r4 = new java.util.jar.JarFile     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L78
            r4.<init>(r12)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L78
            java.util.Enumeration r1 = r4.entries()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
        L15:
            boolean r5 = r1.hasMoreElements()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r5 == 0) goto L60
            java.lang.Object r5 = r1.nextElement()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            java.util.jar.JarEntry r5 = (java.util.jar.JarEntry) r5     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r5 != 0) goto L24
            goto L15
        L24:
            java.lang.String r6 = r5.getName()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            java.lang.String r7 = "META-INF/"
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r7 == 0) goto L31
            goto L15
        L31:
            java.lang.String r7 = "meta.txt"
            boolean r7 = r6.endsWith(r7)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r7 != 0) goto L3a
            goto L15
        L3a:
            java.util.HashMap<java.lang.String, java.lang.String> r7 = r11.metaContentMap     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            java.lang.String r8 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.loadDigestes(r4, r5)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            r7.put(r6, r8)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            java.security.cert.Certificate[] r5 = r5.getCertificates()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r5 == 0) goto L4f
            boolean r5 = r11.check(r12, r5)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L9b
            if (r5 != 0) goto L15
        L4f:
            r4.close()     // Catch: java.io.IOException -> L53
            goto L5f
        L53:
            r1 = move-exception
            java.lang.String r12 = r12.getAbsolutePath()
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r1
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r0, r12, r3)
        L5f:
            return r2
        L60:
            r4.close()     // Catch: java.io.IOException -> L64
            goto L70
        L64:
            r1 = move-exception
            java.lang.String r12 = r12.getAbsolutePath()
            java.lang.Object[] r4 = new java.lang.Object[r3]
            r4[r2] = r1
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r0, r12, r4)
        L70:
            return r3
        L71:
            r1 = move-exception
            goto L7c
        L73:
            r4 = move-exception
            r10 = r4
            r4 = r1
            r1 = r10
            goto L9c
        L78:
            r4 = move-exception
            r10 = r4
            r4 = r1
            r1 = r10
        L7c:
            com.tencent.tinker.loader.TinkerRuntimeException r5 = new com.tencent.tinker.loader.TinkerRuntimeException     // Catch: java.lang.Throwable -> L9b
            java.lang.String r6 = "ShareSecurityCheck file %s, size %d verifyPatchMetaSignature fail"
            r7 = 2
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L9b
            java.lang.String r8 = r12.getAbsolutePath()     // Catch: java.lang.Throwable -> L9b
            r7[r2] = r8     // Catch: java.lang.Throwable -> L9b
            long r8 = r12.length()     // Catch: java.lang.Throwable -> L9b
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L9b
            r7[r3] = r8     // Catch: java.lang.Throwable -> L9b
            java.lang.String r6 = java.lang.String.format(r6, r7)     // Catch: java.lang.Throwable -> L9b
            r5.<init>(r6, r1)     // Catch: java.lang.Throwable -> L9b
            throw r5     // Catch: java.lang.Throwable -> L9b
        L9b:
            r1 = move-exception
        L9c:
            if (r4 == 0) goto Lae
            r4.close()     // Catch: java.io.IOException -> La2
            goto Lae
        La2:
            r4 = move-exception
            java.lang.String r12 = r12.getAbsolutePath()
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r4
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(r0, r12, r3)
        Lae:
            goto Lb0
        Laf:
            throw r1
        Lb0:
            goto Laf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.shareutil.ShareSecurityCheck.verifyPatchMetaSignature(java.io.File):boolean");
    }
}
