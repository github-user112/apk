package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class h {
    public static final int a = 2049;
    public static final int b = 2050;

    /* renamed from: c, reason: collision with root package name */
    public static final int f1335c = 1000;

    /* renamed from: d, reason: collision with root package name */
    public static android.content.Context f1336d = null;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.String f1337e = null;

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1338f = "umeng+";

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.String f1339g = "ek__id";
    public static final java.lang.String h = "ek_key";
    public java.util.List<java.lang.String> i;
    public java.util.List<java.lang.Integer> j;
    public java.lang.String k;
    public java.util.List<java.lang.String> l;

    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    public static class b {
        public static final com.umeng.analytics.pro.h a = new com.umeng.analytics.pro.h();
    }

    public h() {
        this.i = new java.util.ArrayList();
        this.j = new java.util.ArrayList();
        this.k = null;
        this.l = new java.util.ArrayList();
    }

    public static com.umeng.analytics.pro.h a(android.content.Context context) {
        com.umeng.analytics.pro.h hVar = com.umeng.analytics.pro.h.b.a;
        if (f1336d == null && context != null) {
            f1336d = context.getApplicationContext();
            hVar.k();
        }
        return hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x022d A[EXC_TOP_SPLITTER, PHI: r0 r12 r16
  0x022d: PHI (r0v6 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v38 java.lang.String), (r0v38 java.lang.String) binds: [B:88:0x021b, B:94:0x022b, B:80:0x0200, B:81:0x0202] A[DONT_GENERATE, DONT_INLINE]
  0x022d: PHI (r12v6 android.database.sqlite.SQLiteDatabase) = 
  (r12v3 android.database.sqlite.SQLiteDatabase)
  (r12v4 android.database.sqlite.SQLiteDatabase)
  (r12v34 android.database.sqlite.SQLiteDatabase)
  (r12v34 android.database.sqlite.SQLiteDatabase)
 binds: [B:88:0x021b, B:94:0x022b, B:80:0x0200, B:81:0x0202] A[DONT_GENERATE, DONT_INLINE]
  0x022d: PHI (r16v6 android.database.Cursor) = 
  (r16v3 android.database.Cursor)
  (r16v4 android.database.Cursor)
  (r16v30 android.database.Cursor)
  (r16v30 android.database.Cursor)
 binds: [B:88:0x021b, B:94:0x022b, B:80:0x0200, B:81:0x0202] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0230 A[PHI: r0 r12 r16
  0x0230: PHI (r0v5 java.lang.String) = (r0v2 java.lang.String), (r0v3 java.lang.String), (r0v6 java.lang.String) binds: [B:88:0x021b, B:94:0x022b, B:95:0x022d] A[DONT_GENERATE, DONT_INLINE]
  0x0230: PHI (r12v5 android.database.sqlite.SQLiteDatabase) = 
  (r12v3 android.database.sqlite.SQLiteDatabase)
  (r12v4 android.database.sqlite.SQLiteDatabase)
  (r12v6 android.database.sqlite.SQLiteDatabase)
 binds: [B:88:0x021b, B:94:0x022b, B:95:0x022d] A[DONT_GENERATE, DONT_INLINE]
  0x0230: PHI (r16v5 android.database.Cursor) = (r16v3 android.database.Cursor), (r16v4 android.database.Cursor), (r16v6 android.database.Cursor) binds: [B:88:0x021b, B:94:0x022b, B:95:0x022d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0149 A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0158 A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016c A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180 A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0194 A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a8 A[Catch: all -> 0x00fe, SQLiteDatabaseCorruptException -> 0x0105, TRY_LEAVE, TryCatch #12 {SQLiteDatabaseCorruptException -> 0x0105, all -> 0x00fe, blocks: (B:31:0x0115, B:33:0x011b, B:34:0x0129, B:36:0x012f, B:38:0x0135, B:40:0x0149, B:41:0x014d, B:42:0x0152, B:44:0x0158, B:45:0x0166, B:47:0x016c, B:48:0x017a, B:50:0x0180, B:51:0x018e, B:53:0x0194, B:54:0x01a2, B:56:0x01a8, B:24:0x00e5, B:25:0x00f6, B:30:0x0109), top: B:135:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0228  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(org.json.JSONObject r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, boolean):java.lang.String");
    }

    private void a(java.lang.String str, org.json.JSONObject jSONObject, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            long jLongValue = ((java.lang.Long) jSONObject.opt(com.umeng.analytics.pro.d.C0016d.a.f1327g)).longValue();
            long jLongValue2 = 0;
            java.lang.Object objOpt = jSONObject.opt(com.umeng.analytics.pro.d.C0016d.a.h);
            if (objOpt != null && (objOpt instanceof java.lang.Long)) {
                jLongValue2 = ((java.lang.Long) objOpt).longValue();
            }
            org.json.JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            org.json.JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            java.lang.String strC = "";
            java.lang.String strC2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) ? "" : c(jSONObjectOptJSONObject.toString());
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC = c(jSONObjectOptJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + jLongValue + "\", " + com.umeng.analytics.pro.d.C0016d.a.h + "=\"" + jLongValue2 + "\", __sp=\"" + strC2 + "\", __pp=\"" + strC + "\" where __ii=\"" + str + "\"");
        } catch (java.lang.Throwable unused) {
        }
    }

    private void a(java.lang.String str, org.json.JSONObject jSONObject, android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str2) {
        org.json.JSONArray jSONArrayOptJSONArray;
        android.database.Cursor cursor = null;
        strD = null;
        java.lang.String strD = null;
        try {
            if ("__a".equals(str2)) {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("__a");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    return;
                }
            } else if (com.umeng.analytics.pro.d.C0016d.a.f1323c.equals(str2)) {
                jSONArrayOptJSONArray = jSONObject.optJSONArray(com.umeng.analytics.pro.d.C0016d.a.f1323c);
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    return;
                }
            } else {
                jSONArrayOptJSONArray = null;
            }
            android.database.Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select " + str2 + " from " + com.umeng.analytics.pro.d.C0016d.a + " where __ii=?", new java.lang.String[]{str});
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    try {
                        strD = d(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(str2)));
                    } catch (java.lang.Throwable unused) {
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
            }
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            if (!android.text.TextUtils.isEmpty(strD)) {
                jSONArray = new org.json.JSONArray(strD);
            }
            if (jSONArray.length() > 1000) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                    return;
                }
                return;
            }
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    org.json.JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    if (jSONObject2 != null) {
                        jSONArray.put(jSONObject2);
                    }
                } catch (org.json.JSONException unused2) {
                }
            }
            java.lang.String strC = c(jSONArray.toString());
            if (!android.text.TextUtils.isEmpty(strC)) {
                sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + strC + "\" where __ii=\"" + str + "\"");
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(2:95|3)|(7:98|4|(1:6)(1:7)|8|(7:10|(6:13|(2:17|(2:108|19)(2:115|109))(1:107)|20|(3:106|22|(5:104|27|(1:29)(1:30)|31|113))(3:101|32|(5:105|34|(1:36)(1:37)|38|111)(1:110))|109|11)|100|39|(5:41|(4:44|(3:117|46|120)(1:119)|118|42)|116|47|(1:49))|50|(5:52|(4:55|(3:122|57|125)(1:124)|123|53)|121|58|(1:60)))|61|(1:63))|90|75|94|76|77|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017e A[EXC_TOP_SPLITTER, PHI: r0 r1
  0x017e: PHI (r0v5 android.database.Cursor) = 
  (r0v2 android.database.Cursor)
  (r0v3 android.database.Cursor)
  (r0v8 android.database.Cursor)
  (r0v8 android.database.Cursor)
 binds: [B:68:0x016e, B:74:0x017c, B:62:0x015d, B:63:0x015f] A[DONT_GENERATE, DONT_INLINE]
  0x017e: PHI (r1v6 android.database.sqlite.SQLiteDatabase) = 
  (r1v3 android.database.sqlite.SQLiteDatabase)
  (r1v4 android.database.sqlite.SQLiteDatabase)
  (r1v9 android.database.sqlite.SQLiteDatabase)
  (r1v9 android.database.sqlite.SQLiteDatabase)
 binds: [B:68:0x016e, B:74:0x017c, B:62:0x015d, B:63:0x015f] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0181 A[PHI: r0 r1
  0x0181: PHI (r0v4 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v3 android.database.Cursor), (r0v5 android.database.Cursor) binds: [B:68:0x016e, B:74:0x017c, B:75:0x017e] A[DONT_GENERATE, DONT_INLINE]
  0x0181: PHI (r1v5 android.database.sqlite.SQLiteDatabase) = 
  (r1v3 android.database.sqlite.SQLiteDatabase)
  (r1v4 android.database.sqlite.SQLiteDatabase)
  (r1v6 android.database.sqlite.SQLiteDatabase)
 binds: [B:68:0x016e, B:74:0x017c, B:75:0x017e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.json.JSONObject r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONObject, java.lang.String):void");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00dd A[EXC_TOP_SPLITTER, PHI: r1 r11
  0x00dd: PHI (r1v4 android.database.sqlite.SQLiteDatabase) = (r1v3 android.database.sqlite.SQLiteDatabase), (r1v6 android.database.sqlite.SQLiteDatabase) binds: [B:37:0x00cc, B:43:0x00db] A[DONT_GENERATE, DONT_INLINE]
  0x00dd: PHI (r11v5 java.lang.Object) = (r11v4 java.lang.Object), (r11v7 java.lang.Object) binds: [B:37:0x00cc, B:43:0x00db] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.json.JSONObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(org.json.JSONObject r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, boolean):java.lang.String");
    }

    private org.json.JSONArray b(org.json.JSONArray jSONArray) {
        org.json.JSONArray jSONArray2 = new org.json.JSONArray();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            org.json.JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optLong("duration") > 0) {
                jSONArray2.put(jSONObjectOptJSONObject);
            }
        }
        return jSONArray2;
    }

    private void b(java.lang.String str, org.json.JSONObject jSONObject, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        try {
            long jLongValue = ((java.lang.Long) jSONObject.get("__e")).longValue();
            org.json.JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("__sp");
            org.json.JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("__pp");
            java.lang.String strC = "";
            java.lang.String strC2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() <= 0) ? "" : c(jSONObjectOptJSONObject.toString());
            if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.length() > 0) {
                strC = c(jSONObjectOptJSONObject2.toString());
            }
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", java.lang.String.valueOf(jLongValue));
            contentValues.put("__sp", strC2);
            contentValues.put("__pp", strC);
            contentValues.put("__av", com.umeng.commonsdk.service.UMGlobalContext.getInstance(f1336d).getAppVersion());
            contentValues.put("__vc", com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(f1336d));
            sQLiteDatabase.insert(com.umeng.analytics.pro.d.c.a, null, contentValues);
        } catch (java.lang.Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0081 A[EXC_TOP_SPLITTER, PHI: r0 r1
  0x0081: PHI (r0v5 android.database.Cursor) = 
  (r0v2 android.database.Cursor)
  (r0v3 android.database.Cursor)
  (r0v8 android.database.Cursor)
  (r0v8 android.database.Cursor)
 binds: [B:26:0x0071, B:32:0x007f, B:20:0x0060, B:21:0x0062] A[DONT_GENERATE, DONT_INLINE]
  0x0081: PHI (r1v6 android.database.sqlite.SQLiteDatabase) = 
  (r1v3 android.database.sqlite.SQLiteDatabase)
  (r1v4 android.database.sqlite.SQLiteDatabase)
  (r1v9 android.database.sqlite.SQLiteDatabase)
  (r1v9 android.database.sqlite.SQLiteDatabase)
 binds: [B:26:0x0071, B:32:0x007f, B:20:0x0060, B:21:0x0062] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0084 A[PHI: r0 r1
  0x0084: PHI (r0v4 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v3 android.database.Cursor), (r0v5 android.database.Cursor) binds: [B:26:0x0071, B:32:0x007f, B:33:0x0081] A[DONT_GENERATE, DONT_INLINE]
  0x0084: PHI (r1v5 android.database.sqlite.SQLiteDatabase) = 
  (r1v3 android.database.sqlite.SQLiteDatabase)
  (r1v4 android.database.sqlite.SQLiteDatabase)
  (r1v6 android.database.sqlite.SQLiteDatabase)
 binds: [B:26:0x0071, B:32:0x007f, B:33:0x0081] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(org.json.JSONObject r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteDatabaseCorruptException -> L74
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r3 != 0) goto L23
            java.lang.String r2 = "select *  from __er where __i=?"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r4 = 0
            r3[r4] = r7     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            android.database.Cursor r7 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            goto L27
        L23:
            android.database.Cursor r7 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L27:
            r0 = r7
            if (r0 == 0) goto L5d
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r7.<init>()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L2f:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r2 == 0) goto L52
            java.lang.String r2 = "__a"
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r3 != 0) goto L2f
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            java.lang.String r2 = r5.d(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            r7.put(r3)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            goto L2f
        L52:
            int r2 = r7.length()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r2 <= 0) goto L5d
            java.lang.String r2 = "error"
            r6.put(r2, r7)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
        L5d:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteDatabaseCorruptException -> L75
            if (r0 == 0) goto L81
            r0.close()
            goto L81
        L66:
            r1 = r0
        L67:
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L8e
            com.umeng.analytics.pro.g.a(r6)     // Catch: java.lang.Throwable -> L8e
            if (r0 == 0) goto L71
            r0.close()
        L71:
            if (r1 == 0) goto L84
            goto L81
        L74:
            r1 = r0
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L8e
            com.umeng.analytics.pro.g.a(r6)     // Catch: java.lang.Throwable -> L8e
            if (r0 == 0) goto L7f
            r0.close()
        L7f:
            if (r1 == 0) goto L84
        L81:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L84
        L84:
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            return
        L8e:
            r6 = move-exception
            if (r0 == 0) goto L94
            r0.close()
        L94:
            if (r1 == 0) goto L99
            r1.endTransaction()     // Catch: java.lang.Throwable -> L99
        L99:
            android.content.Context r7 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            goto La4
        La3:
            throw r6
        La4:
            goto La3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.b(org.json.JSONObject, java.lang.String):void");
    }

    private void c(java.lang.String str, org.json.JSONObject jSONObject, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        android.database.Cursor cursorRawQuery;
        android.database.Cursor cursor = null;
        strD = null;
        strD = null;
        java.lang.String strD = null;
        try {
            org.json.JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.analytics.pro.d.C0016d.a.f1325e);
            if (jSONObjectOptJSONObject != null) {
                cursorRawQuery = sQLiteDatabase.rawQuery("select __d from __sd where __ii=?", new java.lang.String[]{str});
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            strD = d(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(com.umeng.analytics.pro.d.C0016d.a.f1325e)));
                        } catch (java.lang.Throwable unused) {
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                cursorRawQuery = null;
            }
            if (jSONObjectOptJSONObject != null) {
                org.json.JSONArray jSONArray = new org.json.JSONArray();
                if (!android.text.TextUtils.isEmpty(strD)) {
                    jSONArray = new org.json.JSONArray(strD);
                }
                jSONArray.put(jSONObjectOptJSONObject);
                java.lang.String strC = c(jSONArray.toString());
                if (!android.text.TextUtils.isEmpty(strC)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + strC + "\" where __ii=\"" + str + "\"");
                }
            }
            org.json.JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(com.umeng.analytics.pro.d.C0016d.a.f1324d);
            if (jSONObjectOptJSONObject2 != null) {
                java.lang.String strC2 = c(jSONObjectOptJSONObject2.toString());
                if (!android.text.TextUtils.isEmpty(strC2)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + strC2 + "\" where __ii=\"" + str + "\"");
                }
            }
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + java.lang.String.valueOf(jSONObject.optLong(com.umeng.analytics.pro.d.C0016d.a.f1327g)) + "\" where __ii=\"" + str + "\"");
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    private void k() {
        synchronized (this) {
            l();
            this.i.clear();
            this.l.clear();
            this.j.clear();
        }
    }

    private void l() {
        try {
            if (android.text.TextUtils.isEmpty(f1337e)) {
                java.lang.String multiProcessSP = com.umeng.commonsdk.utils.UMUtils.getMultiProcessSP(f1336d, "ek__id");
                if (android.text.TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(f1336d).getString("ek__id", null);
                    if (android.text.TextUtils.isEmpty(multiProcessSP)) {
                        multiProcessSP = com.umeng.commonsdk.utils.UMUtils.genId();
                    }
                    if (!android.text.TextUtils.isEmpty(multiProcessSP)) {
                        com.umeng.commonsdk.utils.UMUtils.setMultiProcessSP(f1336d, "ek__id", multiProcessSP);
                    }
                }
                if (!android.text.TextUtils.isEmpty(multiProcessSP)) {
                    java.lang.String strSubstring = multiProcessSP.substring(1, 9);
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    for (int i = 0; i < strSubstring.length(); i++) {
                        char cCharAt = strSubstring.charAt(i);
                        if (!java.lang.Character.isDigit(cCharAt)) {
                            sb.append(cCharAt);
                        } else if (java.lang.Integer.parseInt(java.lang.Character.toString(cCharAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - java.lang.Integer.parseInt(java.lang.Character.toString(cCharAt)));
                        }
                    }
                    f1337e = sb.toString();
                }
                if (android.text.TextUtils.isEmpty(f1337e)) {
                    return;
                }
                f1337e += new java.lang.StringBuilder(f1337e).reverse().toString();
                java.lang.String multiProcessSP2 = com.umeng.commonsdk.utils.UMUtils.getMultiProcessSP(f1336d, "ek_key");
                if (android.text.TextUtils.isEmpty(multiProcessSP2)) {
                    com.umeng.commonsdk.utils.UMUtils.setMultiProcessSP(f1336d, "ek_key", c("umeng+"));
                } else {
                    if ("umeng+".equals(d(multiProcessSP2))) {
                        return;
                    }
                    b(true, false);
                    a(true, false);
                    h();
                    i();
                }
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public long a(java.lang.String str) throws java.lang.Throwable {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA;
        android.database.Cursor cursorRawQuery = null;
        long j = 0;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
            } catch (java.lang.Exception unused) {
            }
            try {
                sQLiteDatabaseA.beginTransaction();
                cursorRawQuery = sQLiteDatabaseA.rawQuery("select __f from __sd where __ii=?", new java.lang.String[]{str});
                if (cursorRawQuery != null) {
                    cursorRawQuery.moveToFirst();
                    j = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(com.umeng.analytics.pro.d.C0016d.a.f1327g));
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (java.lang.Exception unused2) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (sQLiteDatabaseA != null) {
                    sQLiteDatabaseA.endTransaction();
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
                return j;
            } catch (java.lang.Throwable th) {
                th = th;
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (java.lang.Exception unused3) {
                        com.umeng.analytics.pro.f.a(f1336d).b();
                        throw th;
                    }
                }
                if (sQLiteDatabaseA != null) {
                    sQLiteDatabaseA.endTransaction();
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
                throw th;
            }
        } catch (java.lang.Exception unused4) {
            sQLiteDatabaseA = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            sQLiteDatabaseA = null;
        }
        sQLiteDatabaseA.endTransaction();
        com.umeng.analytics.pro.f.a(f1336d).b();
        return j;
    }

    public org.json.JSONObject a(boolean z) {
        java.lang.String strA;
        a();
        this.j.clear();
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        if (z) {
            strA = a(jSONObject, z);
            if (!android.text.TextUtils.isEmpty(strA)) {
            }
            return jSONObject;
        }
        a(jSONObject, z);
        strA = null;
        b(jSONObject, strA);
        a(jSONObject, strA);
        return jSONObject;
    }

    public void a() {
        this.i.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
    
        if (r2 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
    
        if (r2 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4 = 0
        L13:
            int r5 = r11.length()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r4 >= r5) goto L8d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r5.optString(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L34
            boolean r8 = r9.equals(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
        L34:
            com.umeng.analytics.pro.t r7 = com.umeng.analytics.pro.t.a()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r7.b()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
            r7 = r9
        L43:
            r6.put(r1, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            int r7 = r5.optInt(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r0, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = r10.c(r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
        L8a:
            int r4 = r4 + 1
            goto L13
        L8d:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r3.endTransaction()     // Catch: java.lang.Throwable -> L9d
            goto L9d
        L94:
            r2 = r3
            goto L98
        L96:
            r2 = r3
            goto La7
        L98:
            if (r2 == 0) goto L9d
        L9a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L9d
        L9d:
            android.content.Context r11 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r11 = com.umeng.analytics.pro.f.a(r11)
            r11.b()
            goto Laf
        La7:
            android.content.Context r11 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> Lb0
            com.umeng.analytics.pro.g.a(r11)     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto L9d
            goto L9a
        Laf:
            return
        Lb0:
            r11 = move-exception
            if (r2 == 0) goto Lb6
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto Lc1
        Lc0:
            throw r11
        Lc1:
            goto Lc0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(org.json.JSONArray):void");
    }

    public void a(boolean z, java.lang.String str) {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                if (!android.text.TextUtils.isEmpty(str)) {
                    sQLiteDatabaseA.execSQL("delete from __er where __i=\"" + str + "\"");
                    sQLiteDatabaseA.execSQL("delete from __et where __i=\"" + str + "\"");
                    this.j.clear();
                    sQLiteDatabaseA.execSQL("delete from __sd where __ii=\"" + str + "\"");
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    public void a(boolean z, boolean z2) {
        java.lang.String str;
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                try {
                    sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                    sQLiteDatabaseA.beginTransaction();
                } catch (java.lang.Throwable unused) {
                    com.umeng.analytics.pro.g.a(f1336d);
                    if (sQLiteDatabaseA != null) {
                    }
                }
            } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
                com.umeng.analytics.pro.g.a(f1336d);
                if (sQLiteDatabaseA != null) {
                }
            }
            if (z2) {
                if (z) {
                    str = "delete from __is";
                    sQLiteDatabaseA.execSQL(str);
                }
                sQLiteDatabaseA.setTransactionSuccessful();
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (java.lang.Throwable unused3) {
                }
            } else {
                int size = this.l.size();
                int i = 0;
                if (size > 0) {
                    int i2 = 0;
                    while (i < size) {
                        java.lang.String str2 = this.l.get(i);
                        if (str2 == null) {
                            i2 = 1;
                        }
                        sQLiteDatabaseA.execSQL("delete from __is where __ii=\"" + str2 + "\"");
                        i++;
                    }
                    i = i2;
                }
                if (i != 0) {
                    str = "delete from __is where __ii is null";
                    sQLiteDatabaseA.execSQL(str);
                }
                sQLiteDatabaseA.setTransactionSuccessful();
                sQLiteDatabaseA.endTransaction();
            }
            com.umeng.analytics.pro.f.a(f1336d).b();
        } catch (java.lang.Throwable th) {
            if (sQLiteDatabaseA != null) {
                try {
                    sQLiteDatabaseA.endTransaction();
                } catch (java.lang.Throwable unused4) {
                }
            }
            com.umeng.analytics.pro.f.a(f1336d).b();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        if (r0 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = r4.c(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r6 != 0) goto L4b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
        L4b:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.endTransaction()     // Catch: java.lang.Throwable -> L5b
            goto L5b
        L52:
            r0 = r1
            goto L56
        L54:
            r0 = r1
            goto L65
        L56:
            if (r0 == 0) goto L5b
        L58:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L5b
        L5b:
            android.content.Context r5 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r5 = com.umeng.analytics.pro.f.a(r5)
            r5.b()
            goto L6d
        L65:
            android.content.Context r5 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L6f
            com.umeng.analytics.pro.g.a(r5)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L5b
            goto L58
        L6d:
            r5 = 0
            return r5
        L6f:
            r5 = move-exception
            if (r0 == 0) goto L75
            r0.endTransaction()     // Catch: java.lang.Throwable -> L75
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r6 = com.umeng.analytics.pro.f.a(r6)
            r6.b()
            goto L80
        L7f:
            throw r5
        L80:
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
    
        if (r2 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
    
        if (r2 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.h.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L6
            return r1
        L6:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteDatabaseCorruptException -> L91
            com.umeng.analytics.pro.f r3 = com.umeng.analytics.pro.f.a(r3)     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteDatabaseCorruptException -> L91
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L82 android.database.sqlite.SQLiteDatabaseCorruptException -> L91
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            com.umeng.analytics.pro.h$a r4 = com.umeng.analytics.pro.h.a.BEGIN     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r4) goto L4f
            java.lang.Object r8 = r8.opt(r0)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            long r8 = r8.longValue()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            r4.<init>()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            r4.put(r0, r7)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            goto L77
        L4f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.INSTANTSESSIONBEGIN     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r0) goto L57
            r6.b(r7, r8, r3)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            goto L77
        L57:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.END     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r0) goto L5f
            r6.a(r7, r8, r3)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            goto L77
        L5f:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.PAGE     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r0) goto L69
            java.lang.String r9 = "__a"
        L65:
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            goto L77
        L69:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.AUTOPAGE     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r0) goto L70
            java.lang.String r9 = "__b"
            goto L65
        L70:
            com.umeng.analytics.pro.h$a r0 = com.umeng.analytics.pro.h.a.NEWSESSION     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            if (r9 != r0) goto L77
            r6.c(r7, r8, r3)     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
        L77:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L7e android.database.sqlite.SQLiteDatabaseCorruptException -> L80
            r3.endTransaction()     // Catch: java.lang.Throwable -> L87
            goto L87
        L7e:
            r2 = r3
            goto L82
        L80:
            r2 = r3
            goto L91
        L82:
            if (r2 == 0) goto L87
        L84:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L87
        L87:
            android.content.Context r7 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r7 = com.umeng.analytics.pro.f.a(r7)
            r7.b()
            goto L99
        L91:
            android.content.Context r7 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L9a
            com.umeng.analytics.pro.g.a(r7)     // Catch: java.lang.Throwable -> L9a
            if (r2 == 0) goto L87
            goto L84
        L99:
            return r1
        L9a:
            r7 = move-exception
            if (r2 == 0) goto La0
            r2.endTransaction()     // Catch: java.lang.Throwable -> La0
        La0:
            android.content.Context r8 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r8 = com.umeng.analytics.pro.f.a(r8)
            r8.b()
            goto Lab
        Laa:
            throw r7
        Lab:
            goto Laa
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.h$a):boolean");
    }

    public org.json.JSONObject b(boolean z) {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        b(jSONObject, z);
        return jSONObject;
    }

    public void b() {
        this.l.clear();
    }

    public void b(java.lang.String str) {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                if (!android.text.TextUtils.isEmpty(str)) {
                    sQLiteDatabaseA.execSQL("delete from __is where __ii=\"" + str + "\"");
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    public void b(boolean z, boolean z2) {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                if (z2) {
                    if (z) {
                        sQLiteDatabaseA.execSQL("delete from __sd");
                    }
                } else if (this.i.size() > 0) {
                    for (int i = 0; i < this.i.size(); i++) {
                        sQLiteDatabaseA.execSQL("delete from __sd where __ii=\"" + this.i.get(i) + "\"");
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    public java.lang.String c(java.lang.String str) {
        try {
            return android.text.TextUtils.isEmpty(f1337e) ? str : android.util.Base64.encodeToString(com.umeng.commonsdk.statistics.common.DataHelper.encrypt(str.getBytes(), f1337e.getBytes()), 0);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public boolean c() {
        return this.l.isEmpty();
    }

    public java.lang.String d(java.lang.String str) {
        try {
            return android.text.TextUtils.isEmpty(f1337e) ? str : new java.lang.String(com.umeng.commonsdk.statistics.common.DataHelper.decrypt(android.util.Base64.decode(str.getBytes(), 0), f1337e.getBytes()));
        } catch (java.lang.Exception unused) {
            if (android.os.Build.VERSION.SDK_INT >= 29 && !android.text.TextUtils.isEmpty(str)) {
                try {
                    new org.json.JSONObject(str);
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> UMStoreManager decrypt failed, return origin data.");
                    return str;
                } catch (java.lang.Throwable unused2) {
                    return null;
                }
            }
            return null;
        }
    }

    public void d() {
        java.lang.String strC;
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                strC = com.umeng.analytics.pro.t.a().c();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
        if (android.text.TextUtils.isEmpty(strC)) {
            try {
                sQLiteDatabaseA.endTransaction();
            } catch (java.lang.Throwable unused4) {
            }
            com.umeng.analytics.pro.f.a(f1336d).b();
            return;
        }
        java.lang.String[] strArr = {"", "-1"};
        for (int i = 0; i < 2; i++) {
            sQLiteDatabaseA.execSQL("update __et set __i=\"" + strC + "\" where __i=\"" + strArr[i] + "\"");
        }
        sQLiteDatabaseA.setTransactionSuccessful();
    }

    public boolean e() {
        return this.i.isEmpty();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x007b A[EXC_TOP_SPLITTER, PHI: r2 r5
  0x007b: PHI (r2v5 android.database.sqlite.SQLiteDatabase) = (r2v4 android.database.sqlite.SQLiteDatabase), (r2v6 android.database.sqlite.SQLiteDatabase) binds: [B:27:0x0079, B:34:0x0095] A[DONT_GENERATE, DONT_INLINE]
  0x007b: PHI (r5v3 org.json.JSONObject) = (r5v2 org.json.JSONObject), (r5v5 org.json.JSONObject) binds: [B:27:0x0079, B:34:0x0095] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject f() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.util.List<java.lang.String> r4 = r8.l     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r6 = "select *  from __is where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r7[r5] = r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            if (r4 == 0) goto L53
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r5 == 0) goto L53
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            r5.<init>()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r3 = r5
        L53:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r4 == 0) goto L5b
            r4.close()
        L5b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L5e
        L5e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L98
        L68:
            r5 = r3
        L69:
            r3 = r4
            goto L74
        L6b:
            r5 = r3
        L6c:
            r3 = r4
            goto L8b
        L6e:
            r5 = r3
            goto L74
        L70:
            r5 = r3
            goto L8b
        L72:
            r2 = r3
            r5 = r2
        L74:
            if (r3 == 0) goto L79
            r3.close()
        L79:
            if (r2 == 0) goto L7e
        L7b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L7e
        L7e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L98
        L89:
            r2 = r3
            r5 = r2
        L8b:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L99
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L95
            r3.close()
        L95:
            if (r2 == 0) goto L7e
            goto L7b
        L98:
            return r3
        L99:
            r0 = move-exception
            if (r3 == 0) goto L9f
            r3.close()
        L9f:
            if (r2 == 0) goto La4
            r2.endTransaction()     // Catch: java.lang.Throwable -> La4
        La4:
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            goto Laf
        Lae:
            throw r0
        Laf:
            goto Lae
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.f():org.json.JSONObject");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x007b A[EXC_TOP_SPLITTER, PHI: r2 r5
  0x007b: PHI (r2v5 android.database.sqlite.SQLiteDatabase) = (r2v4 android.database.sqlite.SQLiteDatabase), (r2v6 android.database.sqlite.SQLiteDatabase) binds: [B:27:0x0079, B:34:0x0095] A[DONT_GENERATE, DONT_INLINE]
  0x007b: PHI (r5v3 org.json.JSONObject) = (r5v2 org.json.JSONObject), (r5v5 org.json.JSONObject) binds: [B:27:0x0079, B:34:0x0095] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject g() {
        /*
            r8 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r8.i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            com.umeng.analytics.pro.f r2 = com.umeng.analytics.pro.f.a(r2)     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L72 android.database.sqlite.SQLiteDatabaseCorruptException -> L89
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.util.List<java.lang.String> r4 = r8.i     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r5 = 0
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            java.lang.String r6 = "select *  from __sd where __ii=?"
            r7 = 1
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            r7[r5] = r4     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            android.database.Cursor r4 = r2.rawQuery(r6, r7)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L70
            if (r4 == 0) goto L53
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r5 == 0) goto L53
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            r5.<init>()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L6c
            r3 = r5
        L53:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteDatabaseCorruptException -> L6b
            if (r4 == 0) goto L5b
            r4.close()
        L5b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L5e
        L5e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L98
        L68:
            r5 = r3
        L69:
            r3 = r4
            goto L74
        L6b:
            r5 = r3
        L6c:
            r3 = r4
            goto L8b
        L6e:
            r5 = r3
            goto L74
        L70:
            r5 = r3
            goto L8b
        L72:
            r2 = r3
            r5 = r2
        L74:
            if (r3 == 0) goto L79
            r3.close()
        L79:
            if (r2 == 0) goto L7e
        L7b:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L7e
        L7e:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            r3 = r5
            goto L98
        L89:
            r2 = r3
            r5 = r2
        L8b:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L99
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L95
            r3.close()
        L95:
            if (r2 == 0) goto L7e
            goto L7b
        L98:
            return r3
        L99:
            r0 = move-exception
            if (r3 == 0) goto L9f
            r3.close()
        L9f:
            if (r2 == 0) goto La4
            r2.endTransaction()     // Catch: java.lang.Throwable -> La4
        La4:
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            goto Laf
        Lae:
            throw r0
        Laf:
            goto Lae
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.g():org.json.JSONObject");
    }

    public void h() {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                if (this.j.size() > 0) {
                    for (int i = 0; i < this.j.size(); i++) {
                        sQLiteDatabaseA.execSQL("delete from __et where rowid=" + this.j.get(i));
                    }
                }
                this.j.clear();
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    public void i() {
        android.database.sqlite.SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = com.umeng.analytics.pro.f.a(f1336d).a();
                sQLiteDatabaseA.beginTransaction();
                sQLiteDatabaseA.execSQL("delete from __er");
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                com.umeng.analytics.pro.f.a(f1336d).b();
            }
        } catch (android.database.sqlite.SQLiteDatabaseCorruptException unused2) {
            com.umeng.analytics.pro.g.a(f1336d);
            if (sQLiteDatabaseA != null) {
            }
        } catch (java.lang.Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0051 A[EXC_TOP_SPLITTER, PHI: r1
  0x0051: PHI (r1v8 android.database.sqlite.SQLiteDatabase) = 
  (r1v4 android.database.sqlite.SQLiteDatabase)
  (r1v5 android.database.sqlite.SQLiteDatabase)
  (r1v11 android.database.sqlite.SQLiteDatabase)
 binds: [B:8:0x004f, B:13:0x0064, B:5:0x0015] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "\""
            java.lang.String r1 = r5.k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L77
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __er where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __et where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            goto L51
        L4e:
            r1 = r2
        L4f:
            if (r1 == 0) goto L54
        L51:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L54
        L54:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r0 = com.umeng.analytics.pro.f.a(r0)
            r0.b()
            goto L77
        L5e:
            r1 = r2
        L5f:
            android.content.Context r0 = com.umeng.analytics.pro.h.f1336d     // Catch: java.lang.Throwable -> L67
            com.umeng.analytics.pro.g.a(r0)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L54
            goto L51
        L67:
            r0 = move-exception
            if (r1 == 0) goto L6d
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r1 = com.umeng.analytics.pro.h.f1336d
            com.umeng.analytics.pro.f r1 = com.umeng.analytics.pro.f.a(r1)
            r1.b()
            throw r0
        L77:
            r5.k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.h.j():void");
    }
}
