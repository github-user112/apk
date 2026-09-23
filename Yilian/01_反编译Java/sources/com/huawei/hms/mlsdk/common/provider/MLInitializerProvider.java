package com.huawei.hms.mlsdk.common.provider;

/* loaded from: classes.dex */
public class MLInitializerProvider extends android.content.ContentProvider {
    public static final java.lang.String TAG = com.huawei.hms.mlsdk.common.provider.MLInitializerProvider.class.getSimpleName();

    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            com.huawei.hms.ml.common.utils.ActivityMgr.INST.init((android.app.Application) getContext().getApplicationContext());
            com.huawei.hms.ml.common.utils.SmartLog.e(TAG, "MLInitializerProvider Done");
            return false;
        } catch (java.lang.Throwable th) {
            com.huawei.hms.ml.common.utils.SmartLog.e(TAG, "MLInitializerProvider e: " + th);
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        return 0;
    }
}
