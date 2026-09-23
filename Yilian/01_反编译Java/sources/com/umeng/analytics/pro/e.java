package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class e extends android.database.sqlite.SQLiteOpenHelper {
    public static android.content.Context b;
    public java.lang.String a;

    public static class a {
        public static final com.umeng.analytics.pro.e a = new com.umeng.analytics.pro.e(com.umeng.analytics.pro.e.b, com.umeng.analytics.pro.g.b(com.umeng.analytics.pro.e.b), com.umeng.analytics.pro.d.b, null, 2);
    }

    public e(android.content.Context context, java.lang.String str, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, android.text.TextUtils.isEmpty(str) ? com.umeng.analytics.pro.d.b : str, cursorFactory, i);
        this.a = null;
        a();
    }

    public e(android.content.Context context, java.lang.String str, java.lang.String str2, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(new com.umeng.analytics.pro.b(context, str), str2, cursorFactory, i);
    }

    public static com.umeng.analytics.pro.e a(android.content.Context context) {
        if (b == null) {
            b = context.getApplicationContext();
        }
        return com.umeng.analytics.pro.e.a.a;
    }

    private void a(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            this.a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (android.database.SQLException unused) {
        }
    }

    private void a(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str) throws android.database.SQLException {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        } catch (android.database.SQLException unused) {
        }
    }

    private void b(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            this.a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (android.database.SQLException unused) {
        }
    }

    private void c(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            this.a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (android.database.SQLException unused) {
        }
    }

    private void d(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            this.a = "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (android.database.SQLException unused) {
        }
    }

    private void e(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        if (!com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a, "__av")) {
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a, "__sp", "TEXT");
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a, "__pp", "TEXT");
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a, "__av", "TEXT");
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a, "__vc", "TEXT");
        }
        if (!com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.b.a, "__av")) {
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.b.a, "__av", "TEXT");
            com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.b.a, "__vc", "TEXT");
        }
        if (com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.a.a, "__av")) {
            return;
        }
        com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.a.a, "__av", "TEXT");
        com.umeng.analytics.pro.g.a(sQLiteDatabase, com.umeng.analytics.pro.d.a.a, "__vc", "TEXT");
    }

    private void f(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        a(sQLiteDatabase, com.umeng.analytics.pro.d.C0016d.a);
        a(sQLiteDatabase, com.umeng.analytics.pro.d.b.a);
        a(sQLiteDatabase, com.umeng.analytics.pro.d.a.a);
        a();
    }

    public void a() {
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!com.umeng.analytics.pro.g.a(com.umeng.analytics.pro.d.C0016d.a, writableDatabase)) {
                c(writableDatabase);
            }
            if (!com.umeng.analytics.pro.g.a(com.umeng.analytics.pro.d.c.a, writableDatabase)) {
                d(writableDatabase);
            }
            if (!com.umeng.analytics.pro.g.a(com.umeng.analytics.pro.d.b.a, writableDatabase)) {
                b(writableDatabase);
            }
            if (com.umeng.analytics.pro.g.a(com.umeng.analytics.pro.d.a.a, writableDatabase)) {
                return;
            }
            a(writableDatabase);
        } catch (java.lang.Exception unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                c(sQLiteDatabase);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (java.lang.Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                throw th;
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(b);
            if (sQLiteDatabase == null) {
                return;
            }
        } catch (java.lang.Throwable unused3) {
            if (sQLiteDatabase == null) {
                return;
            }
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (java.lang.Throwable unused4) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) throws android.database.SQLException {
        if (i2 <= i || i != 1) {
            return;
        }
        try {
            try {
                e(sQLiteDatabase);
            } catch (java.lang.Exception unused) {
                f(sQLiteDatabase);
            }
        } catch (java.lang.Exception unused2) {
            e(sQLiteDatabase);
        }
    }
}
