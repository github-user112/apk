package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class b extends android.content.ContextWrapper {
    public java.lang.String a;

    public b(android.content.Context context, java.lang.String str) {
        super(context);
        this.a = str;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public java.io.File getDatabasePath(java.lang.String str) {
        java.io.File file = new java.io.File(e.a.c.a.a.j(new java.lang.StringBuilder(), this.a, str));
        if (!file.getParentFile().exists() && !file.getParentFile().isDirectory()) {
            file.getParentFile().mkdirs();
        }
        return file;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.database.sqlite.SQLiteDatabase openOrCreateDatabase(java.lang.String str, int i, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory) {
        return android.database.sqlite.SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.database.sqlite.SQLiteDatabase openOrCreateDatabase(java.lang.String str, int i, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory, android.database.DatabaseErrorHandler databaseErrorHandler) {
        return android.database.sqlite.SQLiteDatabase.openDatabase(getDatabasePath(str).getAbsolutePath(), cursorFactory, 268435472);
    }
}
