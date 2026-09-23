package com.google.android.exoplayer2.database;

/* loaded from: classes.dex */
public class StandaloneDatabaseProvider extends android.database.sqlite.SQLiteOpenHelper implements com.google.android.exoplayer2.database.DatabaseProvider {
    public static final java.lang.String DATABASE_NAME = "exoplayer_internal.db";
    public static final java.lang.String TAG = "SADatabaseProvider";
    public static final int VERSION = 1;

    public StandaloneDatabaseProvider(android.content.Context context) {
        super(context.getApplicationContext(), DATABASE_NAME, (android.database.sqlite.SQLiteDatabase.CursorFactory) null, 1);
    }

    public static void wipeDatabase(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        android.database.Cursor cursorQuery = sQLiteDatabase.query("sqlite_master", new java.lang.String[]{com.umeng.analytics.pro.c.y, "name"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                java.lang.String string = cursorQuery.getString(0);
                java.lang.String string2 = cursorQuery.getString(1);
                if (!"sqlite_sequence".equals(string2)) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(string).length() + 16 + java.lang.String.valueOf(string2).length());
                    sb.append("DROP ");
                    sb.append(string);
                    sb.append(" IF EXISTS ");
                    sb.append(string2);
                    java.lang.String string3 = sb.toString();
                    try {
                        sQLiteDatabase.execSQL(string3);
                    } catch (android.database.SQLException e2) {
                        java.lang.String strValueOf = java.lang.String.valueOf(string3);
                        com.google.android.exoplayer2.util.Log.e(TAG, strValueOf.length() != 0 ? "Error executing ".concat(strValueOf) : new java.lang.String("Error executing "), e2);
                    }
                }
            } catch (java.lang.Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorQuery.close();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        wipeDatabase(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
