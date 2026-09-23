package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class PLSharedPreferences {
    public static final java.lang.String MOVE_TO_DE_RECORDS = "grs_move2DE_records";
    public static final java.lang.String TAG = "PLSharedPreferences";
    public android.content.SharedPreferences sp;

    public PLSharedPreferences(android.content.Context context, java.lang.String str) {
        this.sp = getSharedPreferences(context, str);
    }

    private android.content.SharedPreferences getSharedPreferences(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.e(TAG, "context is null, must call init method to set context");
            return null;
        }
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            android.content.Context contextCreateDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            android.content.SharedPreferences sharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences(MOVE_TO_DE_RECORDS, 0);
            if (sharedPreferences.getBoolean(str, false)) {
                context = contextCreateDeviceProtectedStorageContext;
            } else if (contextCreateDeviceProtectedStorageContext.moveSharedPreferencesFrom(context, str)) {
                android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean(str, true);
                editorEdit.apply();
                context = contextCreateDeviceProtectedStorageContext;
            }
        }
        return context.getSharedPreferences(str, 0);
    }

    public void clear() {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().clear().apply();
    }

    public android.content.SharedPreferences.Editor edit() {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.edit();
    }

    public java.util.Map<java.lang.String, ?> getAll() {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getAll();
    }

    public long getLong(java.lang.String str, long j) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        return sharedPreferences == null ? j : sharedPreferences.getLong(str, j);
    }

    public java.lang.String getString(java.lang.String str) {
        return getString(str, "");
    }

    public java.lang.String getString(java.lang.String str, java.lang.String str2) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
    }

    public void putLong(java.lang.String str, long j) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putLong(str, j).apply();
    }

    public void putString(java.lang.String str, java.lang.String str2) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(str, str2).apply();
    }

    public void remove(java.lang.String str) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }

    public void removeKeyValue(java.lang.String str) {
        android.content.SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }
}
