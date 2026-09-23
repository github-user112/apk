package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0256p {
    public static com.tencent.bugly.proguard.C0256p a = new com.tencent.bugly.proguard.C0256p();

    public synchronized int a() {
        return com.tencent.bugly.proguard.J.a().a("ge_1002", (java.lang.String) null, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
    }

    public synchronized int a(long j) {
        return com.tencent.bugly.proguard.J.a().a("ge_1002", "_time = ?", new java.lang.String[]{java.lang.String.valueOf(j)}, (com.tencent.bugly.proguard.I) null, true);
    }

    public synchronized int a(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        return com.tencent.bugly.proguard.J.a().a("dl_1002", "_dUrl = ?", new java.lang.String[]{downloadTask.getDownloadUrl()}, (com.tencent.bugly.proguard.I) null, true);
    }

    public synchronized boolean a(int i, java.lang.String str, byte[] bArr) {
        android.content.ContentValues contentValues;
        contentValues = new android.content.ContentValues();
        contentValues.put(com.umeng.analytics.pro.am.f1240d, java.lang.Integer.valueOf(i));
        contentValues.put("_tm", java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
        contentValues.put(com.umeng.analytics.pro.am.f1241e, str);
        contentValues.put("_dt", bArr);
        return com.tencent.bugly.proguard.J.a().a("st_1002", contentValues, (com.tencent.bugly.proguard.I) null, true) >= 0;
    }

    public synchronized boolean a(com.tencent.bugly.proguard.C0260z c0260z) {
        if (c0260z == null) {
            return false;
        }
        byte[] bArrA = com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) c0260z);
        if (bArrA != null && bArrA.length > 0) {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("_time", java.lang.Long.valueOf(c0260z.f1186e));
            contentValues.put("_datas", bArrA);
            return com.tencent.bugly.proguard.J.a().a("ge_1002", contentValues, (com.tencent.bugly.proguard.I) null, true) >= 0;
        }
        return false;
    }

    public synchronized boolean a(java.lang.String str) {
        return com.tencent.bugly.proguard.J.a().a("st_1002", "_id = ? and _tp = ? ", new java.lang.String[]{"1002", str}, (com.tencent.bugly.proguard.I) null, true) > 0;
    }

    public synchronized int b(java.lang.String str) {
        return com.tencent.bugly.proguard.J.a().a("dl_1002", "_sFile = ?", new java.lang.String[]{str}, (com.tencent.bugly.proguard.I) null, true);
    }

    public synchronized java.util.List<com.tencent.bugly.proguard.C0260z> b() {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        android.database.Cursor cursorA = com.tencent.bugly.proguard.J.a().a("ge_1002", null, null, null, null, true);
        while (cursorA != null && cursorA.moveToNext()) {
            com.tencent.bugly.proguard.C0260z c0260z = (com.tencent.bugly.proguard.C0260z) com.tencent.bugly.proguard.N.a(cursorA.getBlob(cursorA.getColumnIndex("_datas")), com.tencent.bugly.proguard.C0260z.class);
            if (c0260z != null) {
                arrayList.add(c0260z);
            }
        }
        if (cursorA != null) {
            cursorA.close();
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized boolean b(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        android.content.ContentValues contentValues;
        contentValues = new android.content.ContentValues();
        contentValues.put("_dUrl", downloadTask.getDownloadUrl());
        contentValues.put("_sFile", downloadTask.getSaveFile().getAbsolutePath());
        contentValues.put("_sLen", java.lang.Long.valueOf(downloadTask.getSavedLength()));
        contentValues.put("_tLen", java.lang.Long.valueOf(downloadTask.getTotalLength()));
        contentValues.put("_MD5", downloadTask.getMD5());
        contentValues.put("_DLTIME", java.lang.Long.valueOf(downloadTask.getCostTime()));
        return com.tencent.bugly.proguard.J.a().a("dl_1002", contentValues, (com.tencent.bugly.proguard.I) null, true) >= 0;
    }

    public synchronized android.content.ContentValues c(java.lang.String str) {
        android.content.ContentValues contentValues = null;
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        android.database.Cursor cursorA = com.tencent.bugly.proguard.J.a().a("dl_1002", null, "_dUrl=?", new java.lang.String[]{str}, null, true);
        if (cursorA != null && cursorA.moveToFirst()) {
            contentValues = new android.content.ContentValues();
            contentValues.put("_dUrl", cursorA.getString(cursorA.getColumnIndex("_dUrl")));
            contentValues.put("_sFile", cursorA.getString(cursorA.getColumnIndex("_sFile")));
            contentValues.put("_sLen", java.lang.Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("_sLen"))));
            contentValues.put("_tLen", java.lang.Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("_tLen"))));
            contentValues.put("_MD5", cursorA.getString(cursorA.getColumnIndex("_MD5")));
            contentValues.put("_DLTIME", java.lang.Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("_DLTIME"))));
        }
        if (cursorA != null) {
            cursorA.close();
        }
        return contentValues;
    }

    public synchronized java.util.Map<java.lang.String, byte[]> c() {
        java.lang.Throwable th;
        android.database.Cursor cursorA;
        try {
            cursorA = com.tencent.bugly.proguard.J.a().a("st_1002", null, "_id = 1002", null, null, true);
            if (cursorA == null) {
                return null;
            }
            try {
                java.util.HashMap map = new java.util.HashMap();
                while (cursorA.moveToNext()) {
                    map.put(cursorA.getString(cursorA.getColumnIndex(com.umeng.analytics.pro.am.f1241e)), cursorA.getBlob(cursorA.getColumnIndex("_dt")));
                }
                cursorA.close();
                return map;
            } catch (java.lang.Throwable th2) {
                th = th2;
                try {
                    if (!com.tencent.bugly.proguard.aa.b(th)) {
                        th.printStackTrace();
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return null;
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }
}
