package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class K extends android.database.sqlite.SQLiteOpenHelper {
    public static java.lang.String a = "bugly_db";
    public static int b = 16;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1080c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.tencent.bugly.a> f1081d;

    public K(android.content.Context context, java.util.List<com.tencent.bugly.a> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(a);
        sb.append("_");
        com.tencent.bugly.crashreport.common.info.a.a(context).getClass();
        sb.append("");
        super(context, sb.toString(), (android.database.sqlite.SQLiteDatabase.CursorFactory) null, b);
        this.f1080c = context;
        this.f1081d = list;
    }

    public synchronized boolean a(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            java.lang.String[] strArr = new java.lang.String[3];
            strArr[0] = "t_lr";
            strArr[1] = "t_ui";
            strArr[2] = "t_pf";
            for (int i = 0; i < 3; i++) {
                java.lang.String str = strArr[i];
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("DROP TABLE IF EXISTS ");
                sb.append(str);
                sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            }
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
        return true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized android.database.sqlite.SQLiteDatabase getReadableDatabase() {
        android.database.sqlite.SQLiteDatabase readableDatabase;
        readableDatabase = null;
        int i = 0;
        while (readableDatabase == null && i < 5) {
            i++;
            try {
                readableDatabase = super.getReadableDatabase();
            } catch (java.lang.Throwable unused) {
                com.tencent.bugly.proguard.aa.e("[Database] Try to get db(count: %d).", java.lang.Integer.valueOf(i));
                if (i == 5) {
                    com.tencent.bugly.proguard.aa.b("[Database] Failed to get db.", new java.lang.Object[0]);
                }
                try {
                    java.lang.Thread.sleep(200L);
                } catch (java.lang.InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return readableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized android.database.sqlite.SQLiteDatabase getWritableDatabase() {
        android.database.sqlite.SQLiteDatabase writableDatabase;
        writableDatabase = null;
        int i = 0;
        while (writableDatabase == null && i < 5) {
            i++;
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (java.lang.Throwable unused) {
                com.tencent.bugly.proguard.aa.e("[Database] Try to get db(count: %d).", java.lang.Integer.valueOf(i));
                if (i == 5) {
                    com.tencent.bugly.proguard.aa.b("[Database] Failed to get db.", new java.lang.Object[0]);
                }
                try {
                    java.lang.Thread.sleep(200L);
                } catch (java.lang.InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
        if (writableDatabase == null) {
            com.tencent.bugly.proguard.aa.e("[Database] db error delay error record 1min.", new java.lang.Object[0]);
        }
        return writableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("t_ui");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" ");
            sb.append("INTEGER PRIMARY KEY");
            sb.append(" , ");
            sb.append("_tm");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_ut");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_dt");
            sb.append(" ");
            sb.append("blob");
            sb.append(" , ");
            sb.append("_pc");
            sb.append(" ");
            sb.append("text");
            sb.append(" ) ");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("t_lr");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" ");
            sb.append("INTEGER PRIMARY KEY");
            sb.append(" , ");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_tm");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_pc");
            sb.append(" ");
            sb.append("text");
            sb.append(" , ");
            sb.append("_th");
            sb.append(" ");
            sb.append("text");
            sb.append(" , ");
            sb.append("_dt");
            sb.append(" ");
            sb.append("blob");
            sb.append(" ) ");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("t_pf");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" ");
            sb.append("integer");
            sb.append(" , ");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" ");
            sb.append("text");
            sb.append(" , ");
            sb.append("_tm");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_dt");
            sb.append(" ");
            sb.append("blob");
            sb.append(",primary key(");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(",");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" )) ");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("t_cr");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" ");
            sb.append("INTEGER PRIMARY KEY");
            sb.append(" , ");
            sb.append("_tm");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_s1");
            sb.append(" ");
            sb.append("text");
            sb.append(" , ");
            sb.append("_up");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_me");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_uc");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_dt");
            sb.append(" ");
            sb.append("blob");
            sb.append(" ) ");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("dl_1002");
            sb.append(" (");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" integer primary key autoincrement, ");
            sb.append("_dUrl");
            sb.append(" varchar(100), ");
            sb.append("_sFile");
            sb.append(" varchar(100), ");
            sb.append("_sLen");
            sb.append(" INTEGER, ");
            sb.append("_tLen");
            sb.append(" INTEGER, ");
            sb.append("_MD5");
            sb.append(" varchar(100), ");
            sb.append("_DLTIME");
            sb.append(" INTEGER)");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append("CREATE TABLE IF NOT EXISTS ");
            sb.append("ge_1002");
            sb.append(" (");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" integer primary key autoincrement, ");
            sb.append("_time");
            sb.append(" INTEGER, ");
            sb.append("_datas");
            sb.append(" blob)");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("st_1002");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" ");
            sb.append("integer");
            sb.append(" , ");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" ");
            sb.append("text");
            sb.append(" , ");
            sb.append("_tm");
            sb.append(" ");
            sb.append("int");
            sb.append(" , ");
            sb.append("_dt");
            sb.append(" ");
            sb.append("blob");
            sb.append(",primary key(");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(",");
            sb.append(com.umeng.analytics.pro.am.f1241e);
            sb.append(" )) ");
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new java.lang.String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS ");
            sb.append("t_sla");
            sb.append(" ( ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" TEXT NOT NULL , ");
            sb.append("_tm");
            sb.append(" INTEGER NOT NULL , ");
            sb.append("_dt");
            sb.append(" TEXT NOT NULL , ");
            sb.append("PRIMARY KEY(");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(")");
            sb.append(" ) ");
            java.lang.String string = sb.toString();
            com.tencent.bugly.proguard.aa.a(string, new java.lang.Object[0]);
            sQLiteDatabase.execSQL(string, new java.lang.String[0]);
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.a(th)) {
                th.printStackTrace();
            }
        }
        java.util.List<com.tencent.bugly.a> list = this.f1081d;
        if (list == null) {
            return;
        }
        java.util.Iterator<com.tencent.bugly.a> it = list.iterator();
        while (it.hasNext()) {
            try {
                it.next().onDbCreate(sQLiteDatabase);
            } catch (java.lang.Throwable th2) {
                if (!com.tencent.bugly.proguard.aa.a(th2)) {
                    th2.printStackTrace();
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @android.annotation.TargetApi(11)
    public synchronized void onDowngrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (com.tencent.bugly.crashreport.common.info.d.b() >= 11) {
            com.tencent.bugly.proguard.aa.e("[Database] Downgrade %d to %d drop tables.", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
            java.util.List<com.tencent.bugly.a> list = this.f1081d;
            if (list != null) {
                java.util.Iterator<com.tencent.bugly.a> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().onDbDowngrade(sQLiteDatabase, i, i2);
                    } catch (java.lang.Throwable th) {
                        if (!com.tencent.bugly.proguard.aa.a(th)) {
                            th.printStackTrace();
                        }
                    }
                }
            }
            if (a(sQLiteDatabase)) {
                onCreate(sQLiteDatabase);
            } else {
                com.tencent.bugly.proguard.aa.e("[Database] Failed to drop, delete db.", new java.lang.Object[0]);
                java.io.File databasePath = this.f1080c.getDatabasePath(a);
                if (databasePath != null && databasePath.canWrite()) {
                    databasePath.delete();
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        com.tencent.bugly.proguard.aa.e("[Database] Upgrade %d to %d , drop tables!", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
        java.util.List<com.tencent.bugly.a> list = this.f1081d;
        if (list != null) {
            java.util.Iterator<com.tencent.bugly.a> it = list.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onDbUpgrade(sQLiteDatabase, i, i2);
                } catch (java.lang.Throwable th) {
                    if (!com.tencent.bugly.proguard.aa.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
        }
        if (a(sQLiteDatabase)) {
            onCreate(sQLiteDatabase);
        } else {
            com.tencent.bugly.proguard.aa.e("[Database] Failed to drop, delete db.", new java.lang.Object[0]);
            java.io.File databasePath = this.f1080c.getDatabasePath(a);
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        }
    }
}
