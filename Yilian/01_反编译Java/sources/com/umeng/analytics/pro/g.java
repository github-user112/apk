package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class g {
    public static java.lang.String a(java.util.List<java.lang.String> list) {
        return android.text.TextUtils.join("!", list);
    }

    public static java.util.List<java.lang.String> a(java.lang.String str) {
        return new java.util.ArrayList(java.util.Arrays.asList(str.split("!")));
    }

    public static void a(android.content.Context context) {
        if (context == null) {
            return;
        }
        try {
            java.io.File databasePath = context.getDatabasePath(com.umeng.analytics.pro.d.b);
            if (databasePath != null && databasePath.exists()) {
                databasePath.delete();
            }
            com.umeng.analytics.pro.e.a(context).a();
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void a(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str, java.lang.String str2, java.lang.String str3) throws android.database.SQLException {
        sQLiteDatabase.execSQL("alter table " + str + " add " + str2 + " " + str3);
    }

    public static boolean a(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str, java.lang.String str2) {
        android.database.Cursor cursorRawQuery = null;
        boolean z = false;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
            if (cursorRawQuery != null) {
                if (cursorRawQuery.getColumnIndex(str2) != -1) {
                    z = true;
                }
            }
        } catch (java.lang.Exception unused) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
            }
        } catch (java.lang.Throwable th) {
            if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (cursorRawQuery != null && !cursorRawQuery.isClosed()) {
            cursorRawQuery.close();
        }
        return z;
    }

    public static boolean a(java.lang.String str, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        android.database.Cursor cursorRawQuery = null;
        try {
            str.trim();
            cursorRawQuery = sQLiteDatabase.rawQuery("select count(*) as c from sqlite_master where type=? and name=?", new java.lang.String[]{"table", str.trim()});
            if (cursorRawQuery.moveToNext()) {
                if (cursorRawQuery.getInt(0) > 0) {
                    z = true;
                }
            }
        } catch (java.lang.Exception unused) {
            if (cursorRawQuery != null) {
            }
        } catch (java.lang.Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        cursorRawQuery.close();
        return z;
    }

    public static java.lang.String b(android.content.Context context) {
        return context.getDatabasePath(com.umeng.analytics.pro.d.b).getParent() + java.io.File.separator;
    }

    public static java.util.List<java.lang.String> b(java.util.List<java.lang.String> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            for (java.lang.String str : list) {
                if (java.util.Collections.frequency(arrayList, str) < 1) {
                    arrayList.add(str);
                }
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static java.lang.String c(android.content.Context context) {
        return b(context) + "subprocess/";
    }
}
