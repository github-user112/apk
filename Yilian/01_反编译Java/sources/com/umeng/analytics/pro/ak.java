package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ak extends android.database.sqlite.SQLiteOpenHelper {
    public static final java.lang.Object b = new java.lang.Object();

    /* renamed from: c, reason: collision with root package name */
    public static com.umeng.analytics.pro.ak f1231c = null;

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1232d = "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)";

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1233e = "DROP TABLE IF EXISTS stf";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1234f = "DELETE FROM stf WHERE _id IN( SELECT _id FROM stf ORDER BY _id LIMIT 1)";
    public final android.content.Context a;

    public ak(android.content.Context context, java.lang.String str, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.a = context;
    }

    public static final int a() {
        return 1;
    }

    public static com.umeng.analytics.pro.ak a(android.content.Context context) {
        com.umeng.analytics.pro.ak akVar;
        synchronized (b) {
            if (f1231c == null) {
                f1231c = new com.umeng.analytics.pro.ak(context, com.umeng.analytics.pro.am.b, null, 1);
            }
            akVar = f1231c;
        }
        return akVar;
    }

    private void a(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            sQLiteDatabase.execSQL(f1233e);
            sQLiteDatabase.execSQL(f1232d);
        } catch (android.database.SQLException unused) {
        }
    }

    private void b(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            sQLiteDatabase.execSQL(f1232d);
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused) {
            a(sQLiteDatabase);
        } catch (java.lang.Throwable th) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("--->>> [有状态]创建二级缓存数据库失败: ");
            sbO.append(th.getMessage());
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, sbO.toString());
        }
    }

    private void d() {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return;
            }
            try {
                writableDatabase.execSQL(f1234f);
            } catch (java.lang.Throwable unused) {
            }
            writableDatabase.close();
        } catch (java.lang.Throwable unused2) {
        }
    }

    public android.database.Cursor a(java.lang.String str, java.lang.String[] strArr, java.lang.String str2, java.lang.String[] strArr2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6) {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return null;
            }
            return writableDatabase.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.umeng.analytics.pro.al a(java.lang.String r19) {
        /*
            r18 = this;
            r10 = r18
            r0 = 6
            java.lang.String[] r3 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_uuid"
            r12 = 0
            r3[r12] = r0     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_tp"
            r13 = 1
            r3[r13] = r0     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_hd"
            r14 = 2
            r3[r14] = r0     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_bd"
            r15 = 3
            r3[r15] = r0     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_re1"
            r9 = 4
            r3[r9] = r0     // Catch: java.lang.Throwable -> L8b
            java.lang.String r0 = "_re2"
            r8 = 5
            r3[r8] = r0     // Catch: java.lang.Throwable -> L8b
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r0 = 0
            java.lang.String r16 = "1"
            r1 = r18
            r2 = r19
            r11 = 5
            r8 = r0
            r0 = 4
            r9 = r16
            android.database.Cursor r1 = r1.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L8b
            if (r1 == 0) goto L84
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L82
            if (r2 == 0) goto L84
            com.umeng.analytics.pro.al r2 = new com.umeng.analytics.pro.al     // Catch: java.lang.Throwable -> L82
            r2.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r3 = r1.getString(r12)     // Catch: java.lang.Throwable -> L7e
            r2.a = r3     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r1.getString(r13)     // Catch: java.lang.Throwable -> L7e
            r2.b = r3     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r1.getString(r14)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r4 = r1.getString(r15)     // Catch: java.lang.Throwable -> L7e
            android.content.Context r5 = r10.a     // Catch: java.lang.Throwable -> L7e
            com.umeng.analytics.pro.h r5 = com.umeng.analytics.pro.h.a(r5)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r5.d(r3)     // Catch: java.lang.Throwable -> L7e
            r2.f1235c = r3     // Catch: java.lang.Throwable -> L7e
            android.content.Context r3 = r10.a     // Catch: java.lang.Throwable -> L7e
            com.umeng.analytics.pro.h r3 = com.umeng.analytics.pro.h.a(r3)     // Catch: java.lang.Throwable -> L7e
            java.lang.String r3 = r3.d(r4)     // Catch: java.lang.Throwable -> L7e
            r2.f1236d = r3     // Catch: java.lang.Throwable -> L7e
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L7e
            r2.f1237e = r0     // Catch: java.lang.Throwable -> L7e
            java.lang.String r0 = r1.getString(r11)     // Catch: java.lang.Throwable -> L7e
            r2.f1238f = r0     // Catch: java.lang.Throwable -> L7e
            r11 = r2
            goto L85
        L7e:
            r11 = r1
            r17 = r2
            goto L8e
        L82:
            r11 = r1
            goto L8c
        L84:
            r11 = 0
        L85:
            if (r1 == 0) goto L98
            r1.close()
            goto L98
        L8b:
            r11 = 0
        L8c:
            r17 = 0
        L8e:
            r18.d()     // Catch: java.lang.Throwable -> L99
            if (r11 == 0) goto L96
            r11.close()
        L96:
            r11 = r17
        L98:
            return r11
        L99:
            r0 = move-exception
            r1 = r0
            if (r11 == 0) goto La0
            r11.close()
        La0:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.ak.a(java.lang.String):com.umeng.analytics.pro.al");
    }

    public void a(java.lang.String str, android.content.ContentValues contentValues) {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return;
            }
            try {
                writableDatabase.beginTransaction();
                writableDatabase.insert(str, null, contentValues);
                writableDatabase.setTransactionSuccessful();
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> [有状态]插入二级缓存数据记录 成功。");
            } catch (java.lang.Throwable unused) {
            }
            writableDatabase.endTransaction();
            writableDatabase.close();
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void a(java.lang.String str, java.lang.String str2) {
        a(str, "_uuid=?", new java.lang.String[]{str2});
    }

    public void a(java.lang.String str, java.lang.String str2, java.lang.String[] strArr) {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return;
            }
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete(str, str2, strArr);
                writableDatabase.setTransactionSuccessful();
            } catch (java.lang.Throwable unused) {
            }
            writableDatabase.endTransaction();
            writableDatabase.close();
        } catch (java.lang.Throwable unused2) {
        }
    }

    public void b() {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null || !writableDatabase.isOpen()) {
                return;
            }
            writableDatabase.close();
        } catch (java.lang.Throwable unused) {
        }
    }

    public boolean b(java.lang.String str) {
        android.database.sqlite.SQLiteDatabase writableDatabase;
        android.database.Cursor cursorQuery = null;
        try {
            writableDatabase = getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    if (writableDatabase.isOpen()) {
                        cursorQuery = writableDatabase.query(str, null, null, null, null, null, null, null);
                    }
                } catch (java.lang.Throwable unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (writableDatabase == null) {
                        return false;
                    }
                    writableDatabase.close();
                    return false;
                }
            }
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.close();
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return true;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (writableDatabase == null) {
                return false;
            }
        } catch (java.lang.Throwable unused2) {
            writableDatabase = null;
        }
        writableDatabase.close();
        return false;
    }

    public boolean c() {
        return !b(com.umeng.analytics.pro.am.f1239c);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
