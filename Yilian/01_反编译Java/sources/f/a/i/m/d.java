package f.a.i.m;

/* loaded from: classes.dex */
public class d {
    public static int a;
    public static int b;

    /* renamed from: c, reason: collision with root package name */
    public static java.util.Properties f2935c;

    public static java.lang.String a() {
        java.util.Properties properties = f2935c;
        if (properties == null) {
            return null;
        }
        java.lang.String property = properties.getProperty("car_description");
        if (android.text.TextUtils.isEmpty(property) || property.length() > 12 || property.length() < 6 || !property.matches("^[a-z0-9A-Z\\\\w-]+$")) {
            return null;
        }
        return property;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r3) {
        /*
            boolean r3 = f.a.i.m.g.h0(r3)
            java.lang.String r0 = ""
            if (r3 != 0) goto Lb
            java.lang.String r3 = "getPropertyLicensePath initPropertis error"
            goto L48
        Lb:
            java.util.Properties r3 = f.a.i.m.g.f2936c
            java.lang.String r1 = "LICENSE_PATH"
            java.lang.String r0 = r3.getProperty(r1, r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L4b
            java.io.File r3 = new java.io.File
            r3.<init>(r0)
            boolean r1 = r3.exists()
            java.lang.String r2 = "getPropertyLicensePath path = "
            if (r1 != 0) goto L42
            boolean r3 = r3.mkdirs()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = ", mkdirsRet = "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            goto L48
        L42:
            java.lang.String r3 = ", path exists"
            java.lang.String r3 = e.a.c.a.a.f(r2, r0, r3)
        L48:
            e.e.a.g.a(r3)
        L4b:
            java.util.Properties r3 = f.a.i.m.d.f2935c
            if (r3 != 0) goto L55
            java.lang.String r3 = "getConfLicensePath mProperties == null, return"
            e.e.a.g.a(r3)
            return r0
        L55:
            java.lang.String r1 = "license_path"
            java.lang.String r3 = r3.getProperty(r1)
            boolean r1 = android.text.TextUtils.isEmpty(r3)
            if (r1 != 0) goto L65
            java.lang.String r0 = r3.trim()
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.m.d.b(android.content.Context):java.lang.String");
    }

    public static int c() {
        java.util.Properties properties = f2935c;
        if (properties == null) {
            e.e.a.g.a("mMirrorHeight mProperties is null");
        } else {
            if (b <= 0) {
                java.lang.String property = properties.getProperty("mirror_height");
                try {
                    if (!android.text.TextUtils.isEmpty(property)) {
                        b = java.lang.Integer.parseInt(property);
                    }
                } catch (java.lang.Exception unused) {
                }
                if (a > 0) {
                    e.e.a.g.a("mMirrorHeight from EcConfUtil");
                }
                return b;
            }
            e.e.a.g.a("mMirrorHeight from EcConfUtil");
        }
        return b;
    }

    public static int d() {
        java.util.Properties properties = f2935c;
        if (properties == null) {
            e.e.a.g.a("mMirrorWidth mProperties is null");
            return b;
        }
        if (a > 0) {
            e.e.a.g.a("mMirrorWidth from EcConfUtil");
            return a;
        }
        java.lang.String property = properties.getProperty("mirror_width");
        try {
            if (!android.text.TextUtils.isEmpty(property)) {
                a = java.lang.Integer.parseInt(property);
            }
        } catch (java.lang.Exception unused) {
        }
        if (a > 0) {
            e.e.a.g.a("mMirrorWidth from EcConfUtil");
        }
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(android.content.Context r5) throws java.lang.Throwable {
        /*
            int r5 = f.a.i.m.g.G(r5)
            r0 = 1
            r1 = 0
            if (r5 == r0) goto L6b
            r2 = 2
            if (r5 != r2) goto Lc
            goto L6b
        Lc:
            java.util.Properties r5 = f.a.i.m.d.f2935c
            if (r5 != 0) goto L6a
            r5 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            java.lang.String r4 = "/etc/ec.conf"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
            java.util.Properties r5 = new java.util.Properties     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> L5c
            r5.<init>()     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> L5c
            f.a.i.m.d.f2935c = r5     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> L5c
            r5.load(r2)     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> L5c
            r2.close()     // Catch: java.io.IOException -> L2b
            goto L6a
        L2b:
            r5 = move-exception
            r5.printStackTrace()
            goto L6a
        L30:
            r5 = move-exception
            goto L37
        L32:
            r0 = move-exception
            goto L5f
        L34:
            r0 = move-exception
            r2 = r5
            r5 = r0
        L37:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r0.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = "EcConfUtil init Exception Message : "
            r0.append(r3)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L5c
            r0.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = r0.toString()     // Catch: java.lang.Throwable -> L5c
            java.lang.Object[] r0 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5c
            e.e.a.g.c(r5, r0)     // Catch: java.lang.Throwable -> L5c
            if (r2 == 0) goto L5b
            r2.close()     // Catch: java.io.IOException -> L57
            goto L5b
        L57:
            r5 = move-exception
            r5.printStackTrace()
        L5b:
            return r1
        L5c:
            r5 = move-exception
            r0 = r5
            r5 = r2
        L5f:
            if (r5 == 0) goto L69
            r5.close()     // Catch: java.io.IOException -> L65
            goto L69
        L65:
            r5 = move-exception
            r5.printStackTrace()
        L69:
            throw r0
        L6a:
            return r0
        L6b:
            java.lang.String r0 = "without init by flavor = "
            e.a.c.a.a.v(r0, r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.m.d.e(android.content.Context):boolean");
    }

    public static boolean f() {
        return f2935c != null;
    }

    public static boolean g() {
        java.util.Properties properties = f2935c;
        if (properties == null) {
            return false;
        }
        java.lang.String property = properties.getProperty("keep_screen_bright");
        try {
            if (!android.text.TextUtils.isEmpty(property)) {
                return java.lang.Boolean.valueOf(property).booleanValue();
            }
        } catch (java.lang.Exception unused) {
        }
        return false;
    }

    public static boolean h() {
        java.util.Properties properties = f2935c;
        if (properties == null) {
            return false;
        }
        java.lang.String property = properties.getProperty("support_bt_call");
        try {
            if (!android.text.TextUtils.isEmpty(property)) {
                return java.lang.Boolean.valueOf(property).booleanValue();
            }
        } catch (java.lang.Exception unused) {
        }
        return false;
    }
}
