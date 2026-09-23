package com.google.android.exoplayer2.database;

/* loaded from: classes.dex */
public final class DefaultDatabaseProvider implements com.google.android.exoplayer2.database.DatabaseProvider {
    public final android.database.sqlite.SQLiteOpenHelper sqliteOpenHelper;

    public DefaultDatabaseProvider(android.database.sqlite.SQLiteOpenHelper sQLiteOpenHelper) {
        this.sqliteOpenHelper = sQLiteOpenHelper;
    }

    @Override // com.google.android.exoplayer2.database.DatabaseProvider
    public android.database.sqlite.SQLiteDatabase getReadableDatabase() {
        return this.sqliteOpenHelper.getReadableDatabase();
    }

    @Override // com.google.android.exoplayer2.database.DatabaseProvider
    public android.database.sqlite.SQLiteDatabase getWritableDatabase() {
        return this.sqliteOpenHelper.getWritableDatabase();
    }
}
