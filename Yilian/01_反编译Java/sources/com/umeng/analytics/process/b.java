package com.umeng.analytics.process;

/* loaded from: classes.dex */
public class b extends android.database.sqlite.SQLiteOpenHelper {
    public b(android.content.Context context, java.lang.String str, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    public static com.umeng.analytics.process.b a(android.content.Context context, java.lang.String str) {
        java.lang.String strB = b(context, str);
        com.umeng.analytics.process.a.h.equals(str);
        return new com.umeng.analytics.process.b(context, strB, null, 1);
    }

    public static java.lang.String a(android.content.Context context) {
        return com.umeng.analytics.pro.g.b(context) + "subprocess/";
    }

    private void a(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        try {
            sQLiteDatabase.execSQL("create table if not exists __et_p(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __pn TEXT, __av TEXT, __vc TEXT)");
        } catch (android.database.SQLException unused) {
        }
    }

    public static java.lang.String b(android.content.Context context, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            str = com.umeng.analytics.process.a.h;
        }
        java.lang.String strB = com.umeng.analytics.pro.g.b(context) + "subprocess/";
        if (com.umeng.analytics.process.a.h.equals(str)) {
            strB = com.umeng.analytics.pro.g.b(context);
        }
        java.io.File file = new java.io.File(strB);
        if (!file.exists()) {
            file.mkdirs();
        }
        return java.lang.String.format(e.a.c.a.a.e(strB, com.umeng.analytics.process.a.f1404e), str);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
