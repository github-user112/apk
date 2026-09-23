package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class J {
    public static com.tencent.bugly.proguard.J a = null;
    public static com.tencent.bugly.proguard.K b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1074c = false;

    public class a extends java.lang.Thread {
        public int a;
        public com.tencent.bugly.proguard.I b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1075c;

        /* renamed from: d, reason: collision with root package name */
        public android.content.ContentValues f1076d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f1077e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String[] f1078f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f1079g;
        public java.lang.String[] h;
        public java.lang.String i;
        public java.lang.String j;
        public java.lang.String k;
        public java.lang.String l;
        public java.lang.String m;
        public java.lang.String[] n;
        public int o;
        public java.lang.String p;
        public byte[] q;

        public a(int i, com.tencent.bugly.proguard.I i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            switch (this.a) {
                case 1:
                    com.tencent.bugly.proguard.J.this.a(this.f1075c, this.f1076d, this.b);
                    break;
                case 2:
                    com.tencent.bugly.proguard.J.this.a(this.f1075c, this.m, this.n, this.b);
                    break;
                case 3:
                    android.database.Cursor cursorA = com.tencent.bugly.proguard.J.this.a(this.f1077e, this.f1075c, this.f1078f, this.f1079g, this.h, this.i, this.j, this.k, this.l, this.b);
                    if (cursorA != null) {
                        cursorA.close();
                        break;
                    }
                    break;
                case 4:
                    com.tencent.bugly.proguard.J.this.a(this.o, this.p, this.q, this.b);
                    break;
                case 5:
                    com.tencent.bugly.proguard.J.this.a(this.o, this.b);
                    break;
                case 6:
                    com.tencent.bugly.proguard.J.this.a(this.o, this.p, this.b);
                    break;
            }
        }
    }

    public J(android.content.Context context, java.util.List<com.tencent.bugly.a> list) {
        b = new com.tencent.bugly.proguard.K(context, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(java.lang.String str, java.lang.String str2, java.lang.String[] strArr, com.tencent.bugly.proguard.I i) {
        int iDelete;
        android.database.sqlite.SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = b.getWritableDatabase();
            iDelete = writableDatabase != null ? writableDatabase.delete(str, str2, strArr) : 0;
            if (i != null) {
                i.a(java.lang.Integer.valueOf(iDelete));
            }
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                if (i != null) {
                    i.a(0);
                }
                if (f1074c && writableDatabase != null) {
                }
            } catch (java.lang.Throwable th2) {
                if (i != null) {
                    i.a(0);
                }
                if (f1074c && writableDatabase != null) {
                    writableDatabase.close();
                }
                throw th2;
            }
        }
        if (f1074c && writableDatabase != null) {
            writableDatabase.close();
        }
        return iDelete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long a(java.lang.String str, android.content.ContentValues contentValues, com.tencent.bugly.proguard.I i) {
        long j;
        j = -1;
        android.database.sqlite.SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long jReplace = writableDatabase.replace(str, com.umeng.analytics.pro.am.f1240d, contentValues);
                if (jReplace >= 0) {
                    com.tencent.bugly.proguard.aa.a("[Database] insert %s success.", str);
                } else {
                    com.tencent.bugly.proguard.aa.e("[Database] replace %s error.", str);
                }
                j = jReplace;
            }
            if (i != null) {
                i.a(java.lang.Long.valueOf(j));
            }
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                if (i != null) {
                    i.a(-1L);
                }
                if (f1074c && 0 != 0) {
                }
            } catch (java.lang.Throwable th2) {
                if (i != null) {
                    i.a(-1L);
                }
                if (f1074c && 0 != 0) {
                    writableDatabase.close();
                }
                throw th2;
            }
        }
        if (f1074c && writableDatabase != null) {
            writableDatabase.close();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized android.database.Cursor a(boolean z, java.lang.String str, java.lang.String[] strArr, java.lang.String str2, java.lang.String[] strArr2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, com.tencent.bugly.proguard.I i) {
        android.database.Cursor cursorQuery;
        try {
            android.database.sqlite.SQLiteDatabase writableDatabase = b.getWritableDatabase();
            cursorQuery = writableDatabase != null ? writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6) : null;
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                if (i != null) {
                }
            } finally {
                if (i != null) {
                    i.a(null);
                }
            }
        }
        return cursorQuery;
    }

    public static synchronized com.tencent.bugly.proguard.J a() {
        return a;
    }

    public static synchronized com.tencent.bugly.proguard.J a(android.content.Context context, java.util.List<com.tencent.bugly.a> list) {
        if (a == null) {
            a = new com.tencent.bugly.proguard.J(context, list);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002d A[DONT_GENERATE, PHI: r0
  0x002d: PHI (r0v1 java.util.HashMap) = (r0v3 java.util.HashMap), (r0v4 java.util.HashMap) binds: [B:22:0x003b, B:16:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, byte[]> a(int r4, com.tencent.bugly.proguard.I r5) {
        /*
            r3 = this;
            r0 = 0
            java.util.List r4 = r3.c(r4)     // Catch: java.lang.Throwable -> L31
            if (r4 == 0) goto L2b
            java.util.HashMap r1 = new java.util.HashMap     // Catch: java.lang.Throwable -> L31
            r1.<init>()     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L28
        L10:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L26
            java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L28
            com.tencent.bugly.proguard.L r0 = (com.tencent.bugly.proguard.L) r0     // Catch: java.lang.Throwable -> L28
            byte[] r2 = r0.f1086g     // Catch: java.lang.Throwable -> L28
            if (r2 == 0) goto L10
            java.lang.String r0 = r0.f1085f     // Catch: java.lang.Throwable -> L28
            r1.put(r0, r2)     // Catch: java.lang.Throwable -> L28
            goto L10
        L26:
            r0 = r1
            goto L2b
        L28:
            r4 = move-exception
            r0 = r1
            goto L32
        L2b:
            if (r5 == 0) goto L3e
        L2d:
            r5.a(r0)
            goto L3e
        L31:
            r4 = move-exception
        L32:
            boolean r1 = com.tencent.bugly.proguard.aa.b(r4)     // Catch: java.lang.Throwable -> L3f
            if (r1 != 0) goto L3b
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L3f
        L3b:
            if (r5 == 0) goto L3e
            goto L2d
        L3e:
            return r0
        L3f:
            r4 = move-exception
            if (r5 == 0) goto L45
            r5.a(r0)
        L45:
            goto L47
        L46:
            throw r4
        L47:
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.J.a(int, com.tencent.bugly.proguard.I):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i, java.lang.String str, com.tencent.bugly.proguard.I i2) {
        boolean z;
        android.database.sqlite.SQLiteDatabase writableDatabase;
        java.lang.String string;
        java.lang.Boolean bool = java.lang.Boolean.FALSE;
        android.database.sqlite.SQLiteDatabase sQLiteDatabase = null;
        z = false;
        try {
            writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    if (com.tencent.bugly.proguard.ha.b(str)) {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("_id = ");
                        sb.append(i);
                        string = sb.toString();
                    } else {
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                        sb2.append("_id = ");
                        sb2.append(i);
                        sb2.append(" and ");
                        sb2.append(com.umeng.analytics.pro.am.f1241e);
                        sb2.append(" = \"");
                        sb2.append(str);
                        sb2.append("\"");
                        string = sb2.toString();
                    }
                    int iDelete = writableDatabase.delete("t_pf", string, null);
                    java.lang.Object[] objArr = new java.lang.Object[2];
                    objArr[0] = "t_pf";
                    objArr[1] = java.lang.Integer.valueOf(iDelete);
                    com.tencent.bugly.proguard.aa.a("[Database] deleted %s data %d", objArr);
                    if (iDelete > 0) {
                        z = true;
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (i2 != null) {
                            i2.a(bool);
                        }
                        if (f1074c && sQLiteDatabase != null) {
                            writableDatabase = sQLiteDatabase;
                            writableDatabase.close();
                        }
                        return z;
                    } catch (java.lang.Throwable th2) {
                        if (i2 != null) {
                            i2.a(bool);
                        }
                        if (f1074c && sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                        throw th2;
                    }
                }
            }
            if (i2 != null) {
                i2.a(java.lang.Boolean.valueOf(z));
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
        }
        if (f1074c && writableDatabase != null) {
            writableDatabase.close();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, java.lang.String str, byte[] bArr, com.tencent.bugly.proguard.I i2) {
        java.lang.Boolean bool = java.lang.Boolean.FALSE;
        try {
            com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
            l.a = i;
            l.f1085f = str;
            l.f1084e = java.lang.System.currentTimeMillis();
            l.f1086g = bArr;
            boolean zD = d(l);
            if (i2 == null) {
                return zD;
            }
            i2.a(java.lang.Boolean.valueOf(zD));
            return zD;
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
                if (i2 != null) {
                    i2.a(bool);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x00df A[Catch: all -> 0x00c6, DONT_GENERATE, PHI: r1
  0x00df: PHI (r1v2 android.database.sqlite.SQLiteDatabase) = (r1v1 android.database.sqlite.SQLiteDatabase), (r1v4 android.database.sqlite.SQLiteDatabase) binds: [B:77:0x00dd, B:64:0x00c3] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #2 {, blocks: (B:14:0x002c, B:15:0x002f, B:17:0x0033, B:53:0x00ae, B:55:0x00b5, B:74:0x00d6, B:75:0x00d9, B:78:0x00df, B:83:0x00e7, B:84:0x00ea, B:87:0x00f0, B:88:0x00f3, B:62:0x00bf, B:70:0x00cb, B:72:0x00d1), top: B:97:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.tencent.bugly.proguard.L> c(int r12) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.J.c(int):java.util.List");
    }

    private synchronized boolean d(com.tencent.bugly.proguard.L l) {
        android.content.ContentValues contentValuesB;
        if (l == null) {
            return false;
        }
        android.database.sqlite.SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesB = b(l)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_pf", com.umeng.analytics.pro.am.f1240d, contentValuesB);
            if (jReplace < 0) {
                if (f1074c) {
                    writableDatabase.close();
                }
                return false;
            }
            java.lang.Object[] objArr = new java.lang.Object[1];
            objArr[0] = "t_pf";
            com.tencent.bugly.proguard.aa.a("[Database] insert %s success.", objArr);
            l.a = jReplace;
            if (f1074c) {
                writableDatabase.close();
            }
            return true;
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                if (f1074c && writableDatabase != null) {
                    writableDatabase.close();
                }
                return false;
            } finally {
                if (f1074c && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    public int a(java.lang.String str, java.lang.String str2, java.lang.String[] strArr, com.tencent.bugly.proguard.I i, boolean z) {
        if (z) {
            return a(str, str2, strArr, i);
        }
        com.tencent.bugly.proguard.J.a aVar = new com.tencent.bugly.proguard.J.a(2, i);
        aVar.f1075c = str;
        aVar.m = str2;
        aVar.n = strArr;
        com.tencent.bugly.proguard.Z.c().a(aVar);
        return 0;
    }

    public android.content.ContentValues a(com.tencent.bugly.proguard.L l) {
        if (l == null) {
            return null;
        }
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            if (l.a > 0) {
                contentValues.put(com.umeng.analytics.pro.am.f1240d, java.lang.Long.valueOf(l.a));
            }
            contentValues.put(com.umeng.analytics.pro.am.f1241e, java.lang.Integer.valueOf(l.b));
            contentValues.put("_pc", l.f1082c);
            contentValues.put("_th", l.f1083d);
            contentValues.put("_tm", java.lang.Long.valueOf(l.f1084e));
            if (l.f1086g != null) {
                contentValues.put("_dt", l.f1086g);
            }
            return contentValues;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public android.database.Cursor a(java.lang.String str, java.lang.String[] strArr, java.lang.String str2, java.lang.String[] strArr2, com.tencent.bugly.proguard.I i, boolean z) {
        return a(false, str, strArr, str2, strArr2, (java.lang.String) null, (java.lang.String) null, (java.lang.String) null, (java.lang.String) null, i, z);
    }

    public com.tencent.bugly.proguard.L a(android.database.Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
            l.a = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
            l.b = cursor.getInt(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1241e));
            l.f1082c = cursor.getString(cursor.getColumnIndex("_pc"));
            l.f1083d = cursor.getString(cursor.getColumnIndex("_th"));
            l.f1084e = cursor.getLong(cursor.getColumnIndex("_tm"));
            l.f1086g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return l;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00bd A[Catch: all -> 0x00cd, TRY_LEAVE, TryCatch #2 {all -> 0x00cd, blocks: (B:61:0x00b7, B:63:0x00bd), top: B:87:0x00b7, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00c2 A[Catch: all -> 0x00dd, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:19:0x0033, B:20:0x0036, B:22:0x003a, B:53:0x00a7, B:55:0x00ae, B:65:0x00c2, B:66:0x00c5, B:68:0x00c9, B:71:0x00d0, B:72:0x00d3, B:74:0x00d7, B:75:0x00da, B:61:0x00b7, B:63:0x00bd), top: B:89:0x0001, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c9 A[Catch: all -> 0x00dd, TryCatch #3 {, blocks: (B:3:0x0001, B:19:0x0033, B:20:0x0036, B:22:0x003a, B:53:0x00a7, B:55:0x00ae, B:65:0x00c2, B:66:0x00c5, B:68:0x00c9, B:71:0x00d0, B:72:0x00d3, B:74:0x00d7, B:75:0x00da, B:61:0x00b7, B:63:0x00bd), top: B:89:0x0001, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.tencent.bugly.proguard.L> a(int r11) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.J.a(int):java.util.List");
    }

    /* JADX WARN: Finally extract failed */
    public synchronized void a(java.util.List<com.tencent.bugly.proguard.L> list) {
        if (list != null) {
            if (list.size() != 0) {
                android.database.sqlite.SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (writableDatabase != null) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    for (com.tencent.bugly.proguard.L l : list) {
                        sb.append(" or ");
                        sb.append(com.umeng.analytics.pro.am.f1240d);
                        sb.append(" = ");
                        sb.append(l.a);
                    }
                    java.lang.String string = sb.toString();
                    if (string.length() > 0) {
                        string = string.substring(4);
                    }
                    sb.setLength(0);
                    try {
                        int iDelete = writableDatabase.delete("t_lr", string, null);
                        java.lang.Object[] objArr = new java.lang.Object[2];
                        objArr[0] = "t_lr";
                        objArr[1] = java.lang.Integer.valueOf(iDelete);
                        com.tencent.bugly.proguard.aa.a("[Database] deleted %s data %d", objArr);
                    } catch (java.lang.Throwable th) {
                        try {
                            if (!com.tencent.bugly.proguard.aa.b(th)) {
                                th.printStackTrace();
                            }
                            if (f1074c) {
                            }
                        } catch (java.lang.Throwable th2) {
                            if (f1074c) {
                                writableDatabase.close();
                            }
                            throw th2;
                        }
                    }
                    if (f1074c) {
                        writableDatabase.close();
                    }
                }
            }
        }
    }

    public android.content.ContentValues b(com.tencent.bugly.proguard.L l) {
        if (l != null && !com.tencent.bugly.proguard.ha.b(l.f1085f)) {
            try {
                android.content.ContentValues contentValues = new android.content.ContentValues();
                if (l.a > 0) {
                    contentValues.put(com.umeng.analytics.pro.am.f1240d, java.lang.Long.valueOf(l.a));
                }
                contentValues.put(com.umeng.analytics.pro.am.f1241e, l.f1085f);
                contentValues.put("_tm", java.lang.Long.valueOf(l.f1084e));
                if (l.f1086g != null) {
                    contentValues.put("_dt", l.f1086g);
                }
                return contentValues;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public com.tencent.bugly.proguard.L b(android.database.Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
            l.a = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
            l.f1084e = cursor.getLong(cursor.getColumnIndex("_tm"));
            l.f1085f = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1241e));
            l.f1086g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return l;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX WARN: Finally extract failed */
    public synchronized void b(int i) {
        java.lang.String string;
        android.database.sqlite.SQLiteDatabase writableDatabase = b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                try {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("_tp = ");
                    sb.append(i);
                    string = sb.toString();
                } catch (java.lang.Throwable th) {
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (f1074c) {
                        }
                    } catch (java.lang.Throwable th2) {
                        if (f1074c) {
                            writableDatabase.close();
                        }
                        throw th2;
                    }
                }
            } else {
                string = null;
            }
            int iDelete = writableDatabase.delete("t_lr", string, null);
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = "t_lr";
            objArr[1] = java.lang.Integer.valueOf(iDelete);
            com.tencent.bugly.proguard.aa.a("[Database] deleted %s data %d", objArr);
            if (f1074c) {
                writableDatabase.close();
            }
        }
    }

    public synchronized boolean c(com.tencent.bugly.proguard.L l) {
        android.content.ContentValues contentValuesA;
        if (l == null) {
            return false;
        }
        android.database.sqlite.SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (contentValuesA = a(l)) == null) {
                return false;
            }
            long jReplace = writableDatabase.replace("t_lr", com.umeng.analytics.pro.am.f1240d, contentValuesA);
            if (jReplace < 0) {
                if (f1074c) {
                    writableDatabase.close();
                }
                return false;
            }
            java.lang.Object[] objArr = new java.lang.Object[1];
            objArr[0] = "t_lr";
            com.tencent.bugly.proguard.aa.a("[Database] insert %s success.", objArr);
            l.a = jReplace;
            if (f1074c) {
                writableDatabase.close();
            }
            return true;
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                if (f1074c && writableDatabase != null) {
                    writableDatabase.close();
                }
                return false;
            } finally {
                if (f1074c && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    public long a(java.lang.String str, android.content.ContentValues contentValues, com.tencent.bugly.proguard.I i, boolean z) {
        if (z) {
            return a(str, contentValues, i);
        }
        com.tencent.bugly.proguard.J.a aVar = new com.tencent.bugly.proguard.J.a(1, i);
        aVar.f1075c = str;
        aVar.f1076d = contentValues;
        com.tencent.bugly.proguard.Z.c().a(aVar);
        return 0L;
    }

    public android.database.Cursor a(boolean z, java.lang.String str, java.lang.String[] strArr, java.lang.String str2, java.lang.String[] strArr2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, com.tencent.bugly.proguard.I i, boolean z2) {
        if (z2) {
            return a(z, str, strArr, str2, strArr2, str3, str4, str5, str6, i);
        }
        com.tencent.bugly.proguard.J.a aVar = new com.tencent.bugly.proguard.J.a(3, i);
        aVar.f1077e = z;
        aVar.f1075c = str;
        aVar.f1078f = strArr;
        aVar.f1079g = str2;
        aVar.h = strArr2;
        aVar.i = str3;
        aVar.j = str4;
        aVar.k = str5;
        aVar.l = str6;
        com.tencent.bugly.proguard.Z.c().a(aVar);
        return null;
    }

    public java.util.Map<java.lang.String, byte[]> a(int i, com.tencent.bugly.proguard.I i2, boolean z) {
        if (z) {
            return a(i, i2);
        }
        com.tencent.bugly.proguard.J.a aVar = new com.tencent.bugly.proguard.J.a(5, i2);
        aVar.o = i;
        com.tencent.bugly.proguard.Z.c().a(aVar);
        return null;
    }

    public boolean a(int i, java.lang.String str, byte[] bArr, com.tencent.bugly.proguard.I i2, boolean z) {
        if (z) {
            return a(i, str, bArr, i2);
        }
        com.tencent.bugly.proguard.J.a aVar = new com.tencent.bugly.proguard.J.a(4, i2);
        aVar.o = i;
        aVar.p = str;
        aVar.q = bArr;
        com.tencent.bugly.proguard.Z.c().a(aVar);
        return true;
    }
}
