package com.umeng.umzid;

/* loaded from: classes.dex */
public class ZIDManager {

    /* renamed from: c, reason: collision with root package name */
    public static com.umeng.umzid.ZIDManager f1622c;
    public boolean a = false;
    public boolean b = false;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ android.content.Context a;
        public final /* synthetic */ com.umeng.umzid.IZIDCompletionCallback b;

        public a(android.content.Context context, com.umeng.umzid.IZIDCompletionCallback iZIDCompletionCallback) {
            this.a = context;
            this.b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.lang.String strA = com.umeng.umzid.ZIDManager.a(com.umeng.umzid.ZIDManager.this, this.a);
            if (android.text.TextUtils.isEmpty(strA)) {
                com.umeng.umzid.IZIDCompletionCallback iZIDCompletionCallback = this.b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1002", "获取zid失败");
                    return;
                }
                return;
            }
            com.umeng.umzid.IZIDCompletionCallback iZIDCompletionCallback2 = this.b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(strA);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ android.content.Context a;

        public b(android.content.Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.umeng.umzid.ZIDManager.b(com.umeng.umzid.ZIDManager.this, this.a);
        }
    }

    public class c implements java.lang.Runnable {
        public final /* synthetic */ android.content.Context a;

        public c(android.content.Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.umeng.umzid.ZIDManager.a(com.umeng.umzid.ZIDManager.this, this.a);
        }
    }

    public class d implements java.lang.Runnable {
        public final /* synthetic */ android.content.Context a;

        public d(android.content.Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.umeng.umzid.ZIDManager.b(com.umeng.umzid.ZIDManager.this, this.a);
        }
    }

    public static /* synthetic */ java.lang.String a(com.umeng.umzid.ZIDManager zIDManager, android.content.Context context) {
        java.lang.String strOptString = null;
        if (!zIDManager.a) {
            zIDManager.a = true;
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                java.lang.String id = com.umeng.umzid.Spy.getID();
                jSONObject.put("zdata", id);
                java.lang.String strC = com.umeng.umzid.c.c(context);
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.a, strC);
                java.lang.String strD = com.umeng.umzid.c.d(context);
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.i.f1538d, strD);
                zIDManager.a(context, jSONObject);
                java.lang.String strA = com.umeng.umzid.a.a("https://aaid.umeng.com/api/postZdata", jSONObject.toString());
                if (!android.text.TextUtils.isEmpty(strA)) {
                    org.json.JSONObject jSONObject2 = new org.json.JSONObject(strA);
                    if (java.lang.Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, strC);
                        com.umeng.umzid.c.b(context, strD);
                        strOptString = jSONObject2.optString("aaid");
                        if (!android.text.TextUtils.isEmpty(strOptString)) {
                            com.umeng.umzid.c.e(context, strOptString);
                        }
                        java.lang.String string = jSONObject2.getString("uabc");
                        if (!android.text.TextUtils.isEmpty(string)) {
                            com.umeng.umzid.c.d(context, string);
                        }
                        java.lang.String string2 = jSONObject2.getString("resetToken");
                        if (!android.text.TextUtils.isEmpty(string2)) {
                            com.umeng.umzid.c.c(context, string2);
                        }
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
            zIDManager.a = false;
        }
        return strOptString;
    }

    public static /* synthetic */ java.lang.String b(com.umeng.umzid.ZIDManager zIDManager, android.content.Context context) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences sharedPreferencesA2;
        android.content.SharedPreferences sharedPreferencesA3;
        android.content.SharedPreferences sharedPreferencesA4;
        java.lang.String strOptString = null;
        if (!zIDManager.b) {
            zIDManager.b = true;
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            try {
                java.lang.Object objB = com.umeng.umzid.c.b(context);
                java.lang.String id = com.umeng.umzid.Spy.getID();
                jSONObject.put("zdata", id);
                jSONObject.put("old_zdata", objB);
                java.lang.String string = "";
                java.lang.Object string2 = (context == null || (sharedPreferencesA4 = com.umeng.umzid.a.a(context)) == null) ? "" : sharedPreferencesA4.getString(com.umeng.commonsdk.statistics.idtracking.i.f1538d, "");
                java.lang.String strD = com.umeng.umzid.c.d(context);
                jSONObject.put("old_oaid", string2);
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.i.f1538d, strD);
                java.lang.Object string3 = (context == null || (sharedPreferencesA3 = com.umeng.umzid.a.a(context)) == null) ? "" : sharedPreferencesA3.getString(com.umeng.commonsdk.statistics.idtracking.g.a, "");
                java.lang.String strC = com.umeng.umzid.c.c(context);
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.a, strC);
                jSONObject.put("old_mac", string3);
                zIDManager.a(context, jSONObject);
                jSONObject.put("aaid", com.umeng.umzid.c.a(context));
                jSONObject.put("uabc", (context == null || (sharedPreferencesA2 = com.umeng.umzid.a.a(context)) == null) ? "" : sharedPreferencesA2.getString("uabc", ""));
                if (context != null && (sharedPreferencesA = com.umeng.umzid.a.a(context)) != null) {
                    string = sharedPreferencesA.getString("resetToken", "");
                }
                if (!android.text.TextUtils.isEmpty(string)) {
                    jSONObject.put("resetToken", string);
                }
                java.lang.String strA = com.umeng.umzid.a.a("https://aaid.umeng.com/api/updateZdata", jSONObject.toString());
                if (!android.text.TextUtils.isEmpty(strA)) {
                    org.json.JSONObject jSONObject2 = new org.json.JSONObject(strA);
                    if (java.lang.Boolean.valueOf(jSONObject2.optBoolean("suc")).booleanValue()) {
                        com.umeng.umzid.c.f(context, id);
                        com.umeng.umzid.c.a(context, strC);
                        com.umeng.umzid.c.b(context, strD);
                        strOptString = jSONObject2.optString("aaid");
                        if (!android.text.TextUtils.isEmpty(strOptString)) {
                            com.umeng.umzid.c.e(context, strOptString);
                        }
                        java.lang.String string4 = jSONObject2.getString("uabc");
                        if (!android.text.TextUtils.isEmpty(string4)) {
                            com.umeng.umzid.c.d(context, string4);
                        }
                        java.lang.String string5 = jSONObject2.getString("resetToken");
                        if (!android.text.TextUtils.isEmpty(string5)) {
                            com.umeng.umzid.c.c(context, string5);
                        }
                    }
                }
            } catch (java.lang.Throwable unused) {
            }
            zIDManager.b = false;
        }
        return strOptString;
    }

    public static synchronized com.umeng.umzid.ZIDManager getInstance() {
        if (f1622c == null) {
            f1622c = new com.umeng.umzid.ZIDManager();
        }
        return f1622c;
    }

    public static java.lang.String getSDKVersion() {
        return "1.2.2";
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject a(android.content.Context r9, org.json.JSONObject r10) throws org.json.JSONException, java.lang.NoSuchMethodException, android.content.res.Resources.NotFoundException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.a(android.content.Context, org.json.JSONObject):org.json.JSONObject");
    }

    public synchronized java.lang.String getZID(android.content.Context context) {
        android.content.SharedPreferences sharedPreferencesA;
        if (context == null) {
            return "";
        }
        android.content.Context applicationContext = context.getApplicationContext();
        java.lang.String strA = com.umeng.umzid.c.a(applicationContext);
        if (android.text.TextUtils.isEmpty(strA)) {
            com.umeng.umzid.b.a(new com.umeng.umzid.ZIDManager.c(applicationContext));
            return "";
        }
        if (!((applicationContext == null || (sharedPreferencesA = com.umeng.umzid.a.a(applicationContext)) == null) ? "" : sharedPreferencesA.getString("zdata", null)).equals(com.umeng.umzid.Spy.getID())) {
            com.umeng.umzid.b.a(new com.umeng.umzid.ZIDManager.d(applicationContext));
        }
        return strA;
    }

    public synchronized void init(android.content.Context context, java.lang.String str, com.umeng.umzid.IZIDCompletionCallback iZIDCompletionCallback) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null) {
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onFailure("1001", "传入参数Context为null");
            }
            return;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onFailure("1003", "传入参数appkey为空");
            }
            return;
        }
        android.content.Context applicationContext = context.getApplicationContext();
        if (applicationContext != null && str != null && !android.text.TextUtils.isEmpty(str) && (sharedPreferencesA = com.umeng.umzid.a.a(applicationContext)) != null && (editorEdit = sharedPreferencesA.edit()) != null) {
            editorEdit.putString("appkey", str).commit();
        }
        java.lang.String strA = com.umeng.umzid.c.a(applicationContext);
        if (strA == null || android.text.TextUtils.isEmpty(strA)) {
            com.umeng.umzid.b.a(new com.umeng.umzid.ZIDManager.a(applicationContext, iZIDCompletionCallback));
        } else {
            com.umeng.umzid.b.a(new com.umeng.umzid.ZIDManager.b(applicationContext));
            if (iZIDCompletionCallback != null) {
                iZIDCompletionCallback.onSuccess(strA);
            }
        }
        android.content.SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
        if (android.text.TextUtils.isEmpty(sharedPreferencesA2 != null ? sharedPreferencesA2.getString("uuid", "") : "")) {
            java.lang.String string = "";
            android.content.SharedPreferences sharedPreferencesA3 = com.umeng.umzid.a.a(context);
            try {
                string = java.util.UUID.randomUUID().toString();
            } catch (java.lang.Throwable unused) {
            }
            if (sharedPreferencesA3 != null) {
                sharedPreferencesA3.edit().putString("uuid", string).commit();
            }
        }
    }
}
