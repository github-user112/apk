package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public final class d {
    public static com.umeng.commonsdk.statistics.common.d a = null;
    public static android.content.Context b = null;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f1518c = null;

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String f1519e = "mobclick_agent_user_";

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f1520f = "mobclick_agent_header_";

    /* renamed from: g, reason: collision with root package name */
    public static final java.lang.String f1521g = "mobclick_agent_cached_";

    /* renamed from: d, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.common.d.a f1522d;

    public static class a {
        public final int a;
        public java.io.File b;

        /* renamed from: c, reason: collision with root package name */
        public java.io.FilenameFilter f1523c;

        public a(android.content.Context context) {
            this(context, ".um");
        }

        public a(android.content.Context context, java.lang.String str) {
            this.a = 10;
            this.f1523c = new java.io.FilenameFilter() { // from class: com.umeng.commonsdk.statistics.common.d.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(java.io.File file, java.lang.String str2) {
                    return str2.startsWith("um");
                }
            };
            java.io.File file = new java.io.File(context.getFilesDir(), str);
            this.b = file;
            if (file.exists() && this.b.isDirectory()) {
                return;
            }
            this.b.mkdir();
        }

        public void a(com.umeng.commonsdk.statistics.common.d.b bVar) {
            java.io.File file;
            java.io.File[] fileArrListFiles = this.b.listFiles(this.f1523c);
            if (fileArrListFiles != null && fileArrListFiles.length >= 10) {
                java.util.Arrays.sort(fileArrListFiles);
                int length = fileArrListFiles.length - 10;
                for (int i = 0; i < length; i++) {
                    fileArrListFiles[i].delete();
                }
            }
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                return;
            }
            bVar.a(this.b);
            int length2 = fileArrListFiles.length;
            for (int i2 = 0; i2 < length2; i2++) {
                try {
                } catch (java.lang.Throwable unused) {
                    file = fileArrListFiles[i2];
                }
                if (bVar.b(fileArrListFiles[i2])) {
                    file = fileArrListFiles[i2];
                    file.delete();
                }
            }
            bVar.c(this.b);
        }

        public void a(byte[] bArr) {
            if (bArr == null || bArr.length == 0) {
                return;
            }
            try {
                com.umeng.commonsdk.statistics.common.HelperUtils.writeFile(new java.io.File(this.b, java.lang.String.format(java.util.Locale.US, "um_cache_%d.env", java.lang.Long.valueOf(java.lang.System.currentTimeMillis()))), bArr);
            } catch (java.lang.Exception unused) {
            }
        }

        public boolean a() {
            java.io.File[] fileArrListFiles = this.b.listFiles();
            return fileArrListFiles != null && fileArrListFiles.length > 0;
        }

        public void b() {
            java.io.File[] fileArrListFiles = this.b.listFiles(this.f1523c);
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (java.io.File file : fileArrListFiles) {
                file.delete();
            }
        }

        public int c() {
            java.io.File[] fileArrListFiles = this.b.listFiles(this.f1523c);
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                return 0;
            }
            return fileArrListFiles.length;
        }
    }

    public interface b {
        void a(java.io.File file);

        boolean b(java.io.File file);

        void c(java.io.File file);
    }

    public d(android.content.Context context) {
        this.f1522d = new com.umeng.commonsdk.statistics.common.d.a(context);
    }

    public static synchronized com.umeng.commonsdk.statistics.common.d a(android.content.Context context) {
        b = context.getApplicationContext();
        f1518c = context.getPackageName();
        if (a == null) {
            a = new com.umeng.commonsdk.statistics.common.d(context);
        }
        return a;
    }

    private android.content.SharedPreferences f() {
        android.content.Context context = b;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("mobclick_agent_user_");
        sbO.append(f1518c);
        return context.getSharedPreferences(sbO.toString(), 0);
    }

    public int a() {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    public void a(int i) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    public void a(java.lang.String str) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    public void a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.content.SharedPreferences.Editor editorEdit = f().edit();
        editorEdit.putString("au_p", str);
        editorEdit.putString("au_u", str2);
        editorEdit.commit();
    }

    public java.lang.String b() {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    public boolean c() {
        return com.umeng.commonsdk.framework.UMFrUtils.envelopeFileNumber(b) > 0;
    }

    public java.lang.String[] d() {
        try {
            android.content.SharedPreferences sharedPreferencesF = f();
            java.lang.String string = sharedPreferencesF.getString("au_p", null);
            java.lang.String string2 = sharedPreferencesF.getString("au_u", null);
            if (string != null && string2 != null) {
                return new java.lang.String[]{string, string2};
            }
        } catch (java.lang.Exception unused) {
        }
        return null;
    }

    public void e() {
        f().edit().remove("au_p").remove("au_u").commit();
    }
}
