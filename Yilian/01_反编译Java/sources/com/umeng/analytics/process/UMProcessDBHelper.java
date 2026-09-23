package com.umeng.analytics.process;

/* loaded from: classes.dex */
public class UMProcessDBHelper {
    public static com.umeng.analytics.process.UMProcessDBHelper mInstance;
    public android.content.Context mContext;
    public com.umeng.commonsdk.utils.FileLockUtil mFileLock = new com.umeng.commonsdk.utils.FileLockUtil();
    public com.umeng.analytics.process.UMProcessDBHelper.InsertEventCallback ekvCallBack = new com.umeng.analytics.process.UMProcessDBHelper.InsertEventCallback();

    public class InsertEventCallback implements com.umeng.commonsdk.utils.FileLockCallback {
        public InsertEventCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.io.File file, int i) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str, java.lang.Object obj) throws java.lang.Throwable {
            if (android.text.TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(com.umeng.analytics.process.a.f1402c)) {
                str = str.replaceFirst(com.umeng.analytics.process.a.f1402c, "");
            }
            com.umeng.analytics.process.UMProcessDBHelper.this.insertEvents(str.replace(com.umeng.analytics.process.a.f1403d, ""), (org.json.JSONArray) obj);
            return true;
        }
    }

    public class ProcessToMainCallback implements com.umeng.commonsdk.utils.FileLockCallback {
        public ProcessToMainCallback() {
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.io.File file, int i) {
            return false;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str) throws java.lang.Throwable {
            if (android.text.TextUtils.isEmpty(str)) {
                return true;
            }
            if (str.startsWith(com.umeng.analytics.process.a.f1402c)) {
                str = str.replaceFirst(com.umeng.analytics.process.a.f1402c, "");
            }
            com.umeng.analytics.process.UMProcessDBHelper.this.processToMain(str.replace(com.umeng.analytics.process.a.f1403d, ""));
            return true;
        }

        @Override // com.umeng.commonsdk.utils.FileLockCallback
        public boolean onFileLock(java.lang.String str, java.lang.Object obj) {
            return false;
        }
    }

    public class a implements java.io.Serializable {
        public int a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1397c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f1398d;

        /* renamed from: e, reason: collision with root package name */
        public int f1399e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String f1400f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f1401g;
        public java.lang.String h;

        public a() {
        }
    }

    public UMProcessDBHelper() {
    }

    public UMProcessDBHelper(android.content.Context context) {
        com.umeng.common.a.a().a(context);
    }

    private java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> datasAdapter(java.lang.String str, org.json.JSONArray jSONArray) throws org.json.JSONException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (android.text.TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                org.json.JSONObject jSONObject = jSONArray.getJSONObject(i);
                com.umeng.analytics.process.UMProcessDBHelper.a aVar = new com.umeng.analytics.process.UMProcessDBHelper.a();
                aVar.f1397c = jSONObject.optString("id");
                aVar.f1401g = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(this.mContext);
                aVar.h = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(this.mContext);
                aVar.b = jSONObject.optString("__i");
                aVar.f1399e = jSONObject.optInt("__t");
                aVar.f1400f = str;
                if (jSONObject.has("ds")) {
                    jSONObject.remove("ds");
                }
                jSONObject.put("ds", getDataSource());
                jSONObject.remove("__i");
                jSONObject.remove("__t");
                aVar.f1398d = com.umeng.common.a.a().a(jSONObject.toString());
                jSONObject.remove("ds");
                arrayList.add(aVar);
            } catch (java.lang.Exception unused) {
            }
        }
        return arrayList;
    }

    private boolean dbIsExists(java.lang.String str) {
        try {
            return new java.io.File(com.umeng.analytics.process.b.b(this.mContext, str)).exists();
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    private int getDataSource() {
        return 0;
    }

    public static com.umeng.analytics.process.UMProcessDBHelper getInstance(android.content.Context context) {
        if (mInstance == null) {
            synchronized (com.umeng.analytics.process.UMProcessDBHelper.class) {
                if (mInstance == null) {
                    mInstance = new com.umeng.analytics.process.UMProcessDBHelper(context);
                }
            }
        }
        com.umeng.analytics.process.UMProcessDBHelper uMProcessDBHelper = mInstance;
        uMProcessDBHelper.mContext = context;
        return uMProcessDBHelper;
    }

    private boolean insertEvents_(java.lang.String str, java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> list) throws java.lang.Throwable {
        if (android.text.TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return true;
        }
        android.database.sqlite.SQLiteDatabase sQLiteDatabase = null;
        try {
            android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = com.umeng.analytics.process.c.a(this.mContext).a(str);
            try {
                try {
                    sQLiteDatabaseA.beginTransaction();
                    for (com.umeng.analytics.process.UMProcessDBHelper.a aVar : list) {
                        try {
                            android.content.ContentValues contentValues = new android.content.ContentValues();
                            contentValues.put("__i", aVar.b);
                            contentValues.put("__e", aVar.f1397c);
                            contentValues.put("__t", java.lang.Integer.valueOf(aVar.f1399e));
                            contentValues.put(com.umeng.analytics.process.a.InterfaceC0017a.f1410f, aVar.f1400f);
                            contentValues.put("__av", aVar.f1401g);
                            contentValues.put("__vc", aVar.h);
                            contentValues.put("__s", aVar.f1398d);
                            sQLiteDatabaseA.insert(com.umeng.analytics.process.a.InterfaceC0017a.a, null, contentValues);
                        } catch (java.lang.Exception unused) {
                        }
                    }
                    sQLiteDatabaseA.setTransactionSuccessful();
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused2) {
                    }
                    com.umeng.analytics.process.c.a(this.mContext).b(str);
                    return true;
                } catch (java.lang.Exception unused3) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (java.lang.Throwable unused4) {
                        }
                    }
                    com.umeng.analytics.process.c.a(this.mContext).b(str);
                    return false;
                }
            } catch (java.lang.Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (java.lang.Throwable unused5) {
                    }
                }
                com.umeng.analytics.process.c.a(this.mContext).b(str);
                throw th;
            }
        } catch (java.lang.Exception unused6) {
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    private boolean processIsService(android.content.Context context) {
        return context.getPackageManager().getServiceInfo(new android.content.ComponentName(context, this.mContext.getClass()), 0) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processToMain(java.lang.String str) throws java.lang.Throwable {
        if (dbIsExists(str)) {
            java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> eventByProcess = readEventByProcess(str);
            if (!eventByProcess.isEmpty() && insertEvents_(com.umeng.analytics.process.a.h, eventByProcess)) {
                deleteEventDatas(str, null, eventByProcess);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.umeng.analytics.process.UMProcessDBHelper$1] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v7 */
    private java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> readEventByProcess(java.lang.String str) throws java.lang.Throwable {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA;
        java.lang.Exception e2;
        android.database.Cursor cursorRawQuery;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        ?? r2 = 0;
        r2 = 0;
        try {
            try {
                try {
                    sQLiteDatabaseA = com.umeng.analytics.process.c.a(this.mContext).a(str);
                } catch (java.lang.Throwable th) {
                    th = th;
                    r2 = "select *  from __et_p";
                }
                try {
                    sQLiteDatabaseA.beginTransaction();
                    cursorRawQuery = sQLiteDatabaseA.rawQuery("select *  from __et_p", null);
                    if (cursorRawQuery != null) {
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                com.umeng.analytics.process.UMProcessDBHelper.a aVar = new com.umeng.analytics.process.UMProcessDBHelper.a();
                                aVar.a = cursorRawQuery.getInt(0);
                                aVar.b = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__i"));
                                aVar.f1397c = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__e"));
                                aVar.f1398d = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__s"));
                                aVar.f1399e = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("__t"));
                                aVar.f1400f = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(com.umeng.analytics.process.a.InterfaceC0017a.f1410f));
                                aVar.f1401g = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__av"));
                                aVar.h = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__vc"));
                                arrayList.add(aVar);
                            } catch (java.lang.Exception e3) {
                                e2 = e3;
                                e2.printStackTrace();
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                }
                                if (sQLiteDatabaseA != null) {
                                    sQLiteDatabaseA.endTransaction();
                                }
                                com.umeng.analytics.process.c.a(this.mContext).b(str);
                                return arrayList;
                            }
                        }
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                } catch (java.lang.Exception e4) {
                    e2 = e4;
                    cursorRawQuery = null;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    if (r2 != 0) {
                        try {
                            r2.close();
                        } catch (java.lang.Exception unused) {
                            com.umeng.analytics.process.c.a(this.mContext).b(str);
                            throw th;
                        }
                    }
                    if (sQLiteDatabaseA != null) {
                        sQLiteDatabaseA.endTransaction();
                    }
                    com.umeng.analytics.process.c.a(this.mContext).b(str);
                    throw th;
                }
            } catch (java.lang.Exception e5) {
                sQLiteDatabaseA = null;
                e2 = e5;
                cursorRawQuery = null;
            } catch (java.lang.Throwable th3) {
                th = th3;
                sQLiteDatabaseA = null;
            }
            sQLiteDatabaseA.endTransaction();
        } catch (java.lang.Exception unused2) {
        }
        com.umeng.analytics.process.c.a(this.mContext).b(str);
        return arrayList;
    }

    public void createDBByProcess(java.lang.String str) {
        try {
            com.umeng.analytics.process.c.a(this.mContext).a(str);
            com.umeng.analytics.process.c.a(this.mContext).b(str);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public void deleteEventDatas(java.lang.String str, java.lang.String str2, java.util.List<com.umeng.analytics.process.UMProcessDBHelper.a> list) throws java.lang.Throwable {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA;
        java.lang.Throwable th;
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        android.database.sqlite.SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabaseA = com.umeng.analytics.process.c.a(this.mContext).a(str);
        } catch (java.lang.Exception unused) {
        } catch (java.lang.Throwable th2) {
            sQLiteDatabaseA = null;
            th = th2;
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            int size = list.size();
            if (size > 0) {
                for (int i = 0; i < size; i++) {
                    sQLiteDatabaseA.execSQL("delete from __et_p where rowid=" + list.get(i).a);
                }
            } else {
                sQLiteDatabaseA.delete(com.umeng.analytics.process.a.InterfaceC0017a.a, null, null);
            }
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
        } catch (java.lang.Exception unused2) {
            sQLiteDatabase = sQLiteDatabaseA;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.endTransaction();
            }
            com.umeng.analytics.process.c.a(this.mContext).b(str);
        } catch (java.lang.Throwable th3) {
            th = th3;
            if (sQLiteDatabaseA != null) {
                sQLiteDatabaseA.endTransaction();
            }
            com.umeng.analytics.process.c.a(this.mContext).b(str);
            throw th;
        }
        com.umeng.analytics.process.c.a(this.mContext).b(str);
    }

    public void deleteMainProcessEventDatasByIds(java.util.List<java.lang.Integer> list) {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            sQLiteDatabaseA = com.umeng.analytics.process.c.a(this.mContext).a(com.umeng.analytics.process.a.h);
            sQLiteDatabaseA.beginTransaction();
            java.util.Iterator<java.lang.Integer> it = list.iterator();
            while (it.hasNext()) {
                sQLiteDatabaseA.delete(com.umeng.analytics.process.a.InterfaceC0017a.a, "id=?", new java.lang.String[]{java.lang.String.valueOf(it.next())});
            }
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (java.lang.Exception unused) {
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable th) {
            if (sQLiteDatabaseA != null) {
                sQLiteDatabaseA.endTransaction();
            }
            com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
            throw th;
        }
        sQLiteDatabaseA.endTransaction();
        com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
    }

    public void insertEvents(java.lang.String str, org.json.JSONArray jSONArray) throws java.lang.Throwable {
        if (com.umeng.commonsdk.statistics.AnalyticsConstants.SUB_PROCESS_EVENT && !android.text.TextUtils.isEmpty(str)) {
            insertEvents_(str, datasAdapter(str, jSONArray));
        }
    }

    public void insertEventsInSubProcess(java.lang.String str, org.json.JSONArray jSONArray) throws java.lang.Throwable {
        if (com.umeng.commonsdk.statistics.AnalyticsConstants.SUB_PROCESS_EVENT && !android.text.TextUtils.isEmpty(str)) {
            java.io.File file = new java.io.File(com.umeng.analytics.process.b.b(this.mContext, str));
            if (file.exists()) {
                this.mFileLock.doFileOperateion(file, this.ekvCallBack, jSONArray);
            } else {
                insertEvents(str, jSONArray);
            }
        }
    }

    public void processDBToMain() {
        try {
            com.umeng.analytics.process.DBFileTraversalUtil.traverseDBFiles(com.umeng.analytics.process.b.a(this.mContext), new com.umeng.analytics.process.UMProcessDBHelper.ProcessToMainCallback(), new com.umeng.analytics.process.DBFileTraversalUtil.a() { // from class: com.umeng.analytics.process.UMProcessDBHelper.1
                @Override // com.umeng.analytics.process.DBFileTraversalUtil.a
                public void a() {
                    if (com.umeng.commonsdk.statistics.AnalyticsConstants.SUB_PROCESS_EVENT) {
                        com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(com.umeng.analytics.process.UMProcessDBHelper.this.mContext, com.umeng.analytics.process.UMProcessDBDatasSender.UM_PROCESS_CONSTRUCTMESSAGE, com.umeng.analytics.process.UMProcessDBDatasSender.getInstance(com.umeng.analytics.process.UMProcessDBHelper.this.mContext), null);
                    }
                }
            });
        } catch (java.lang.Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject readMainEvents(long r20, java.util.List<java.lang.Integer> r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.process.UMProcessDBHelper.readMainEvents(long, java.util.List):org.json.JSONObject");
    }

    public org.json.JSONObject readVersionInfoFromColumId(java.lang.Integer num) throws java.lang.Throwable {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA;
        org.json.JSONObject jSONObject;
        java.lang.String str = "select *  from __et_p where rowid=" + num;
        android.database.Cursor cursor = null;
        jSONObject = null;
        org.json.JSONObject jSONObject2 = null;
        cursor = null;
        cursor = null;
        cursor = null;
        try {
            sQLiteDatabaseA = com.umeng.analytics.process.c.a(this.mContext).a(com.umeng.analytics.process.a.h);
            try {
                try {
                    sQLiteDatabaseA.beginTransaction();
                    android.database.Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery(str, null);
                    if (cursorRawQuery != null) {
                        try {
                            try {
                                if (cursorRawQuery.moveToNext()) {
                                    jSONObject = new org.json.JSONObject();
                                    try {
                                        java.lang.String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__av"));
                                        java.lang.String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__vc"));
                                        if (!android.text.TextUtils.isEmpty(string)) {
                                            jSONObject.put("__av", string);
                                        }
                                        if (!android.text.TextUtils.isEmpty(string2)) {
                                            jSONObject.put("__vc", string2);
                                        }
                                        jSONObject2 = jSONObject;
                                    } catch (java.lang.Exception e2) {
                                        e = e2;
                                        cursor = cursorRawQuery;
                                        e.printStackTrace();
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (java.lang.Exception unused) {
                                                com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
                                                return jSONObject;
                                            }
                                        }
                                        if (sQLiteDatabaseA != null) {
                                            sQLiteDatabaseA.endTransaction();
                                        }
                                        com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
                                        return jSONObject;
                                    }
                                }
                            } catch (java.lang.Exception e3) {
                                e = e3;
                                jSONObject = null;
                            }
                        } catch (java.lang.Throwable th) {
                            th = th;
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                try {
                                    cursor.close();
                                } catch (java.lang.Exception unused2) {
                                    com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
                                    throw th;
                                }
                            }
                            if (sQLiteDatabaseA != null) {
                                sQLiteDatabaseA.endTransaction();
                            }
                            com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
                            throw th;
                        }
                    }
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (java.lang.Exception unused3) {
                        }
                    }
                    sQLiteDatabaseA.endTransaction();
                    com.umeng.analytics.process.c.a(this.mContext).b(com.umeng.analytics.process.a.h);
                    return jSONObject2;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                }
            } catch (java.lang.Exception e4) {
                e = e4;
                jSONObject = null;
            }
        } catch (java.lang.Exception e5) {
            e = e5;
            sQLiteDatabaseA = null;
            jSONObject = null;
        } catch (java.lang.Throwable th3) {
            th = th3;
            sQLiteDatabaseA = null;
        }
    }
}
