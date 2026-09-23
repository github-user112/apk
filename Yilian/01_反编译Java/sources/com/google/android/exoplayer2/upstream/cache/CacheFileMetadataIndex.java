package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class CacheFileMetadataIndex {
    public static final int COLUMN_INDEX_LAST_TOUCH_TIMESTAMP = 2;
    public static final int COLUMN_INDEX_LENGTH = 1;
    public static final int COLUMN_INDEX_NAME = 0;
    public static final java.lang.String COLUMN_NAME = "name";
    public static final java.lang.String TABLE_PREFIX = "ExoPlayerCacheFileMetadata";
    public static final java.lang.String TABLE_SCHEMA = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)";
    public static final int TABLE_VERSION = 1;
    public static final java.lang.String WHERE_NAME_EQUALS = "name = ?";
    public final com.google.android.exoplayer2.database.DatabaseProvider databaseProvider;
    public java.lang.String tableName;
    public static final java.lang.String COLUMN_LENGTH = "length";
    public static final java.lang.String COLUMN_LAST_TOUCH_TIMESTAMP = "last_touch_timestamp";
    public static final java.lang.String[] COLUMNS = {"name", COLUMN_LENGTH, COLUMN_LAST_TOUCH_TIMESTAMP};

    public CacheFileMetadataIndex(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
        this.databaseProvider = databaseProvider;
    }

    public static void delete(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, long j) throws com.google.android.exoplayer2.database.DatabaseIOException {
        java.lang.String hexString = java.lang.Long.toHexString(j);
        try {
            java.lang.String tableName = getTableName(hexString);
            android.database.sqlite.SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                com.google.android.exoplayer2.database.VersionTable.removeVersion(writableDatabase, 2, hexString);
                dropTable(writableDatabase, tableName);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public static void dropTable(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str) throws android.database.SQLException {
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        sQLiteDatabase.execSQL(strValueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(strValueOf) : new java.lang.String("DROP TABLE IF EXISTS "));
    }

    private android.database.Cursor getCursor() {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName);
        return this.databaseProvider.getReadableDatabase().query(this.tableName, COLUMNS, null, null, null, null, null);
    }

    public static java.lang.String getTableName(java.lang.String str) {
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        return strValueOf.length() != 0 ? TABLE_PREFIX.concat(strValueOf) : new java.lang.String(TABLE_PREFIX);
    }

    public java.util.Map<java.lang.String, com.google.android.exoplayer2.upstream.cache.CacheFileMetadata> getAll() throws com.google.android.exoplayer2.database.DatabaseIOException {
        try {
            android.database.Cursor cursor = getCursor();
            try {
                java.util.HashMap map = new java.util.HashMap(cursor.getCount());
                while (cursor.moveToNext()) {
                    map.put((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(0)), new com.google.android.exoplayer2.upstream.cache.CacheFileMetadata(cursor.getLong(1), cursor.getLong(2)));
                }
                cursor.close();
                return map;
            } catch (java.lang.Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                throw th;
            }
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public void initialize(long j) throws com.google.android.exoplayer2.database.DatabaseIOException {
        try {
            java.lang.String hexString = java.lang.Long.toHexString(j);
            this.tableName = getTableName(hexString);
            if (com.google.android.exoplayer2.database.VersionTable.getVersion(this.databaseProvider.getReadableDatabase(), 2, hexString) != 1) {
                android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    com.google.android.exoplayer2.database.VersionTable.setVersion(writableDatabase, 2, hexString, 1);
                    dropTable(writableDatabase, this.tableName);
                    java.lang.String str = this.tableName;
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 108);
                    sb.append("CREATE TABLE ");
                    sb.append(str);
                    sb.append(" ");
                    sb.append(TABLE_SCHEMA);
                    writableDatabase.execSQL(sb.toString());
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (java.lang.Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public void remove(java.lang.String str) throws com.google.android.exoplayer2.database.DatabaseIOException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName);
        try {
            this.databaseProvider.getWritableDatabase().delete(this.tableName, WHERE_NAME_EQUALS, new java.lang.String[]{str});
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public void removeAll(java.util.Set<java.lang.String> set) throws com.google.android.exoplayer2.database.DatabaseIOException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName);
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                java.util.Iterator<java.lang.String> it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.tableName, WHERE_NAME_EQUALS, new java.lang.String[]{it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public void set(java.lang.String str, long j, long j2) throws android.database.SQLException, com.google.android.exoplayer2.database.DatabaseIOException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName);
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("name", str);
            contentValues.put(COLUMN_LENGTH, java.lang.Long.valueOf(j));
            contentValues.put(COLUMN_LAST_TOUCH_TIMESTAMP, java.lang.Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.tableName, null, contentValues);
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }
}
