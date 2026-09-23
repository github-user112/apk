package d.s;

/* loaded from: classes.dex */
public class y {
    public static android.animation.LayoutTransition a = null;
    public static java.lang.reflect.Field b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f2291c = false;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Method f2292d = null;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f2293e = false;

    /* renamed from: f, reason: collision with root package name */
    public static java.lang.reflect.Method f2294f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f2295g = false;
    public static java.util.Timer h = null;
    public static javax.jmdns.ServiceInfo i = null;
    public static javax.jmdns.ServiceInfo j = null;
    public static javax.jmdns.JmDNS k = null;
    public static java.net.InetAddress l = null;
    public static java.lang.String m = null;
    public static java.lang.String n = null;
    public static java.lang.String o = null;
    public static java.lang.String p = null;
    public static java.lang.String q = null;
    public static java.lang.String r = null;
    public static java.lang.String s = null;
    public static java.lang.String t = null;
    public static java.lang.String u = null;
    public static java.lang.String v = null;
    public static boolean w = false;
    public static boolean x = false;

    public static java.lang.String A(android.content.Context context) throws org.json.JSONException, android.content.pm.PackageManager.NameNotFoundException {
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            android.content.pm.PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            jSONObject.put(com.umeng.analytics.pro.ai.o, packageInfo.packageName);
            jSONObject.put("version_name", packageInfo.versionName);
            jSONObject.put("version_code", packageInfo.versionCode);
            jSONObject.put("channel", "88802");
        } catch (android.content.pm.PackageManager.NameNotFoundException | org.json.JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static android.content.res.ColorStateList B(android.content.Context context, android.content.res.TypedArray typedArray, int i2) {
        int resourceId;
        android.content.res.ColorStateList colorStateListA;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateListA = d.b.l.a.a.a(context, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateListA;
    }

    public static e.a.b.d.c.x C(java.lang.Object obj) {
        if (obj == null) {
            return e.a.b.d.c.m.a;
        }
        if (obj instanceof java.lang.Boolean) {
            return ((java.lang.Boolean) obj).booleanValue() ? e.a.b.d.c.e.f2511c : e.a.b.d.c.e.b;
        }
        if (obj instanceof java.lang.Byte) {
            return new e.a.b.d.c.f(((java.lang.Byte) obj).byteValue());
        }
        if (obj instanceof java.lang.Character) {
            return new e.a.b.d.c.g(((java.lang.Character) obj).charValue());
        }
        if (obj instanceof java.lang.Double) {
            return new e.a.b.d.c.h(java.lang.Double.doubleToLongBits(((java.lang.Double) obj).doubleValue()));
        }
        if (obj instanceof java.lang.Float) {
            return new e.a.b.d.c.k(java.lang.Float.floatToIntBits(((java.lang.Float) obj).floatValue()));
        }
        if (obj instanceof java.lang.Integer) {
            return e.a.b.d.c.l.i(((java.lang.Integer) obj).intValue());
        }
        if (obj instanceof java.lang.Long) {
            return new e.a.b.d.c.q(((java.lang.Long) obj).longValue());
        }
        if (obj instanceof java.lang.Short) {
            return new e.a.b.d.c.u(((java.lang.Short) obj).shortValue());
        }
        if (obj instanceof java.lang.String) {
            return new e.a.b.d.c.v((java.lang.String) obj);
        }
        if (obj instanceof java.lang.Class) {
            return new e.a.b.d.c.w(f.a.j.k.a((java.lang.Class) obj).b);
        }
        if (obj instanceof f.a.j.k) {
            return new e.a.b.d.c.w(((f.a.j.k) obj).b);
        }
        throw new java.lang.UnsupportedOperationException(e.a.c.a.a.d("Not a constant: ", obj));
    }

    public static org.json.JSONObject D(android.content.Context context, java.lang.String str) throws org.json.JSONException {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        java.lang.String str2 = f.a.i.m.g.L(context) + "x" + f.a.i.m.g.K(context);
        try {
            jSONObject.put("device_id", str);
            jSONObject.put("model", "");
            jSONObject.put("resolution", str2);
            jSONObject.put(com.umeng.analytics.pro.ai.x, "");
            jSONObject.put("ppi", "");
            android.net.wifi.WifiManager wifiManager = (android.net.wifi.WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager != null) {
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.a, wifiManager.getConnectionInfo().getMacAddress());
            } else {
                jSONObject.put(com.umeng.commonsdk.statistics.idtracking.g.a, "");
            }
            java.lang.String deviceId = null;
            try {
                android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
                if (android.os.Build.VERSION.SDK_INT >= 23) {
                    deviceId = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
                } else if (d.g.f.a.a(context, "android.permission.READ_PHONE_STATE") == 0) {
                    deviceId = telephonyManager.getDeviceId();
                }
            } catch (java.lang.Exception e2) {
                e.e.a.g.a("getDeviceInfo imei Exception = " + e2.getMessage());
            }
            if (android.text.TextUtils.isEmpty(deviceId)) {
                deviceId = "490154203237512";
            }
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.f.a, deviceId);
            jSONObject.put("imsi", "");
            jSONObject.put("phone_num", "");
            jSONObject.put(com.umeng.analytics.pro.ai.P, "");
            jSONObject.put("bluetooth", "");
            jSONObject.put("area", "");
            jSONObject.put("network", "");
            jSONObject.put("location", "");
        } catch (org.json.JSONException e3) {
            e.e.a.g.d(e3, "getDeviceInfo error", new java.lang.Object[0]);
        }
        return jSONObject;
    }

    public static java.lang.String E(java.lang.String str) throws java.io.IOException {
        java.util.regex.Matcher matcher;
        java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.FileReader("/proc/meminfo"));
        java.util.regex.Pattern patternCompile = java.util.regex.Pattern.compile(str + "\\s*:\\s*(.*)");
        do {
            try {
                java.lang.String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return null;
                }
                matcher = patternCompile.matcher(line);
            } finally {
                bufferedReader.close();
            }
        } while (!matcher.matches());
        return matcher.group(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String F(java.io.File r10) throws java.lang.Throwable {
        /*
            boolean r0 = r10.isFile()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r2 = new byte[r0]
            java.lang.String r3 = "MD5"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
            r4.<init>(r10)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L73
        L17:
            r10 = 0
            int r5 = r4.read(r2, r10, r0)     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> L98
            r6 = -1
            if (r5 == r6) goto L23
            r3.update(r2, r10, r5)     // Catch: java.lang.Exception -> L6f java.lang.Throwable -> L98
            goto L17
        L23:
            r4.close()     // Catch: java.io.IOException -> L27
            goto L2b
        L27:
            r0 = move-exception
            r0.printStackTrace()
        L2b:
            byte[] r0 = r3.digest()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r3 = r0.length
            r4 = 0
        L36:
            if (r4 >= r3) goto L5c
            r5 = r0[r4]
            int r6 = r5 >>> 4
            r6 = r6 & 15
            r7 = 0
        L3f:
            if (r6 < 0) goto L48
            r8 = 9
            if (r6 > r8) goto L48
            int r6 = r6 + 48
            goto L4c
        L48:
            int r6 = r6 + (-10)
            int r6 = r6 + 97
        L4c:
            char r6 = (char) r6
            r2.append(r6)
            r6 = r5 & 15
            int r8 = r7 + 1
            r9 = 1
            if (r7 < r9) goto L5a
            int r4 = r4 + 1
            goto L36
        L5a:
            r7 = r8
            goto L3f
        L5c:
            java.lang.String r0 = r2.toString()
            if (r0 == 0) goto L67
            java.lang.String r10 = r0.toLowerCase()
            return r10
        L67:
            java.lang.Object[] r10 = new java.lang.Object[r10]
            java.lang.String r0 = "getFileMD5 convertToHex return is null"
            e.e.a.g.c(r0, r10)
            return r1
        L6f:
            r10 = move-exception
            goto L75
        L71:
            r10 = move-exception
            goto L9a
        L73:
            r10 = move-exception
            r4 = r1
        L75:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L98
            r0.<init>()     // Catch: java.lang.Throwable -> L98
            java.lang.String r2 = "getFileMD5 Exception e : "
            r0.append(r2)     // Catch: java.lang.Throwable -> L98
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L98
            r0.append(r10)     // Catch: java.lang.Throwable -> L98
            java.lang.String r10 = r0.toString()     // Catch: java.lang.Throwable -> L98
            e.e.a.g.a(r10)     // Catch: java.lang.Throwable -> L98
            if (r4 == 0) goto L97
            r4.close()     // Catch: java.io.IOException -> L93
            goto L97
        L93:
            r10 = move-exception
            r10.printStackTrace()
        L97:
            return r1
        L98:
            r10 = move-exception
            r1 = r4
        L9a:
            if (r1 == 0) goto La4
            r1.close()     // Catch: java.io.IOException -> La0
            goto La4
        La0:
            r0 = move-exception
            r0.printStackTrace()
        La4:
            goto La6
        La5:
            throw r10
        La6:
            goto La5
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.F(java.io.File):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap G(java.io.File r6) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            r1.<init>()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5d
        Lf:
            r3 = -1
            int r4 = r2.read(r6)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5d
            r5 = 0
            if (r3 != r4) goto L34
            r1.flush()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5d
            byte[] r6 = r1.toByteArray()     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5d
            r2.close()     // Catch: java.io.IOException -> L22
            goto L26
        L22:
            r0 = move-exception
            r0.printStackTrace()
        L26:
            r1.close()     // Catch: java.io.IOException -> L2a
            goto L2e
        L2a:
            r0 = move-exception
            r0.printStackTrace()
        L2e:
            int r0 = r6.length
            android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeByteArray(r6, r5, r0)
            return r6
        L34:
            r1.write(r6, r5, r4)     // Catch: java.lang.Exception -> L38 java.lang.Throwable -> L5d
            goto Lf
        L38:
            r6 = move-exception
            goto L45
        L3a:
            r6 = move-exception
            goto L5f
        L3c:
            r6 = move-exception
            r2 = r0
            goto L45
        L3f:
            r6 = move-exception
            r1 = r0
            goto L5f
        L42:
            r6 = move-exception
            r1 = r0
            r2 = r1
        L45:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L5d
            if (r2 == 0) goto L52
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r6 = move-exception
            r6.printStackTrace()
        L52:
            if (r1 == 0) goto L5c
            r1.close()     // Catch: java.io.IOException -> L58
            goto L5c
        L58:
            r6 = move-exception
            r6.printStackTrace()
        L5c:
            return r0
        L5d:
            r6 = move-exception
            r0 = r2
        L5f:
            if (r0 == 0) goto L69
            r0.close()     // Catch: java.io.IOException -> L65
            goto L69
        L65:
            r0 = move-exception
            r0.printStackTrace()
        L69:
            if (r1 == 0) goto L73
            r1.close()     // Catch: java.io.IOException -> L6f
            goto L73
        L6f:
            r0 = move-exception
            r0.printStackTrace()
        L73:
            goto L75
        L74:
            throw r6
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.G(java.io.File):android.graphics.Bitmap");
    }

    public static android.animation.PropertyValuesHolder H(android.content.res.TypedArray typedArray, int i2, int i3, int i4, java.lang.String str) {
        android.animation.PropertyValuesHolder propertyValuesHolderOfInt;
        android.animation.PropertyValuesHolder propertyValuesHolderOfObject;
        android.util.TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        boolean z = typedValuePeekValue != null;
        int i5 = z ? typedValuePeekValue.type : 0;
        android.util.TypedValue typedValuePeekValue2 = typedArray.peekValue(i4);
        boolean z2 = typedValuePeekValue2 != null;
        int i6 = z2 ? typedValuePeekValue2.type : 0;
        if (i2 == 4) {
            i2 = ((z && P(i5)) || (z2 && P(i6))) ? 3 : 0;
        }
        boolean z3 = i2 == 0;
        android.animation.PropertyValuesHolder propertyValuesHolder = null;
        if (i2 == 2) {
            java.lang.String string = typedArray.getString(i3);
            java.lang.String string2 = typedArray.getString(i4);
            d.g.g.c[] cVarArrP = d.b.k.r.p(string);
            d.g.g.c[] cVarArrP2 = d.b.k.r.p(string2);
            if (cVarArrP == null && cVarArrP2 == null) {
                return null;
            }
            if (cVarArrP == null) {
                if (cVarArrP2 != null) {
                    return android.animation.PropertyValuesHolder.ofObject(str, new d.t.a.a.c(), cVarArrP2);
                }
                return null;
            }
            d.t.a.a.c cVar = new d.t.a.a.c();
            if (cVarArrP2 == null) {
                propertyValuesHolderOfObject = android.animation.PropertyValuesHolder.ofObject(str, cVar, cVarArrP);
            } else {
                if (!d.b.k.r.c(cVarArrP, cVarArrP2)) {
                    throw new android.view.InflateException(e.a.c.a.a.g(" Can't morph from ", string, " to ", string2));
                }
                propertyValuesHolderOfObject = android.animation.PropertyValuesHolder.ofObject(str, cVar, cVarArrP, cVarArrP2);
            }
            return propertyValuesHolderOfObject;
        }
        d.t.a.a.d dVar = i2 == 3 ? d.t.a.a.d.a : null;
        if (z3) {
            if (z) {
                float dimension = i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f);
                if (z2) {
                    propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofFloat(str, dimension, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
                } else {
                    propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofFloat(str, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
            }
        } else {
            if (!z) {
                if (z2) {
                    propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofInt(str, i6 == 5 ? (int) typedArray.getDimension(i4, 0.0f) : P(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0));
                }
                if (propertyValuesHolder == null && dVar != null) {
                    propertyValuesHolder.setEvaluator(dVar);
                    return propertyValuesHolder;
                }
            }
            int dimension2 = i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : P(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0);
            if (z2) {
                propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofInt(str, dimension2, i6 == 5 ? (int) typedArray.getDimension(i4, 0.0f) : P(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0));
            } else {
                propertyValuesHolderOfInt = android.animation.PropertyValuesHolder.ofInt(str, dimension2);
            }
        }
        propertyValuesHolder = propertyValuesHolderOfInt;
        return propertyValuesHolder == null ? propertyValuesHolder : propertyValuesHolder;
    }

    public static java.io.File I() {
        java.io.File externalStorageDirectory;
        java.lang.StringBuilder sb;
        java.lang.String str;
        java.lang.String property = !f.a.i.m.g.h0(net.easyconn.FrameworkApplication.getContext()) ? null : f.a.i.m.g.f2936c.getProperty("SAVE_FILE_PATH", null);
        if (!android.text.TextUtils.isEmpty(property)) {
            e.e.a.g.a("getSdCardFile prop path = " + property);
            return new java.io.File(property);
        }
        java.lang.String externalStorageState = android.os.Environment.getExternalStorageState();
        if (!externalStorageState.equals("mounted")) {
            e.e.a.g.c(e.a.c.a.a.f("getSdCardFile isSDExist is false, externalStorageState = ", externalStorageState, ", error return null"), new java.lang.Object[0]);
            return null;
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            externalStorageDirectory = net.easyconn.FrameworkApplication.getContext().getExternalFilesDir(null);
            sb = new java.lang.StringBuilder();
            str = "getSdCardFile os version >= Q, is ";
        } else {
            externalStorageDirectory = android.os.Environment.getExternalStorageDirectory();
            sb = new java.lang.StringBuilder();
            str = "getSdCardFile os version < Q, is ";
        }
        sb.append(str);
        sb.append(android.os.Build.VERSION.SDK_INT);
        sb.append(" path = ");
        sb.append(externalStorageDirectory);
        e.e.a.g.a(sb.toString());
        return externalStorageDirectory;
    }

    public static java.lang.String J(java.lang.String str, java.lang.String str2, org.json.JSONObject jSONObject, java.lang.String str3) {
        try {
            java.lang.String string = jSONObject.getString(com.umeng.commonsdk.statistics.idtracking.f.a);
            java.lang.String str4 = (java.lang.System.currentTimeMillis() / 1000) + "";
            return f.a.i.m.c.c(str2 + string + str3 + str + str4).toUpperCase() + "," + str4;
        } catch (java.lang.Throwable th) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getSign");
            sbO.append(th.getMessage());
            return sbO.toString();
        }
    }

    public static byte[] K(java.lang.String str) throws java.io.IOException {
        java.util.jar.JarFile jarFile = new java.util.jar.JarFile(new java.io.File(str));
        try {
            java.util.jar.JarEntry jarEntry = jarFile.getJarEntry(com.tencent.tinker.loader.shareutil.ShareConstants.RES_MANIFEST);
            byte[] bArr = new byte[8192];
            try {
                java.io.InputStream inputStream = jarFile.getInputStream(jarEntry);
                while (inputStream.read(bArr, 0, 8192) != -1) {
                }
                inputStream.close();
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
            java.security.cert.Certificate[] certificates = jarEntry != null ? jarEntry.getCertificates() : null;
            if (certificates != null && certificates.length > 0) {
                return certificates[0].getEncoded();
            }
        } catch (java.lang.Exception e3) {
            e3.printStackTrace();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String L(java.lang.String r6) {
        /*
            int r0 = r6.length()
            r1 = 0
            char r2 = r6.charAt(r1)
            r3 = 91
            r4 = 0
            if (r2 != r3) goto L38
            r2 = 1
            int r0 = r0 - r2
            char r3 = r6.charAt(r0)
            r5 = 93
            if (r3 != r5) goto L38
            java.lang.String r6 = r6.substring(r2, r0)
            java.lang.String r0 = ","
            java.lang.String[] r6 = r6.split(r0)
            int r0 = r6.length
            byte[] r0 = new byte[r0]
            r2 = 0
        L26:
            int r3 = r6.length
            if (r2 >= r3) goto L39
            r3 = r6[r2]
            java.lang.String r3 = r3.trim()
            byte r3 = java.lang.Byte.parseByte(r3)
            r0[r2] = r3
            int r2 = r2 + 1
            goto L26
        L38:
            r0 = r4
        L39:
            java.lang.String r6 = "UTF-8"
            if (r0 == 0) goto L6d
            int r2 = r0.length
            if (r2 != 0) goto L41
            goto L6d
        L41:
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream
            r2.<init>()
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream
            r3.<init>(r0)
            java.util.zip.GZIPInputStream r0 = new java.util.zip.GZIPInputStream     // Catch: java.io.IOException -> L63
            r0.<init>(r3)     // Catch: java.io.IOException -> L63
            r3 = 256(0x100, float:3.59E-43)
            byte[] r3 = new byte[r3]     // Catch: java.io.IOException -> L63
        L54:
            int r5 = r0.read(r3)     // Catch: java.io.IOException -> L63
            if (r5 < 0) goto L5e
            r2.write(r3, r1, r5)     // Catch: java.io.IOException -> L63
            goto L54
        L5e:
            java.lang.String r4 = r2.toString(r6)     // Catch: java.io.IOException -> L63
            goto L6d
        L63:
            r6 = move-exception
            java.lang.String r6 = r6.getMessage()
            java.lang.String r0 = "gzip compress error."
            android.util.Log.e(r0, r6)
        L6d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.L(java.lang.String):java.lang.String");
    }

    public static int M(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static java.lang.String N(byte[] bArr, java.lang.String str) {
        try {
            byte[] bArrDigest = java.security.MessageDigest.getInstance(str).digest(bArr);
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            for (byte b2 : bArrDigest) {
                int i2 = b2 & 255;
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(java.lang.Integer.toHexString(i2));
            }
            return stringBuffer.toString();
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static java.lang.String O(int i2, int i3, int i4) {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(80);
        int i5 = (i3 ^ (-1)) & i2;
        int i6 = i2 & i3;
        if ((i6 & 1) != 0) {
            stringBuffer.append("|public");
        }
        if ((i6 & 2) != 0) {
            stringBuffer.append("|private");
        }
        if ((i6 & 4) != 0) {
            stringBuffer.append("|protected");
        }
        if ((i6 & 8) != 0) {
            stringBuffer.append("|static");
        }
        if ((i6 & 16) != 0) {
            stringBuffer.append("|final");
        }
        if ((i6 & 32) != 0) {
            stringBuffer.append(i4 == 1 ? "|super" : "|synchronized");
        }
        if ((i6 & 64) != 0) {
            stringBuffer.append(i4 == 3 ? "|bridge" : "|volatile");
        }
        if ((i6 & 128) != 0) {
            stringBuffer.append(i4 == 3 ? "|varargs" : "|transient");
        }
        if ((i6 & 256) != 0) {
            stringBuffer.append("|native");
        }
        if ((i6 & 512) != 0) {
            stringBuffer.append("|interface");
        }
        if ((i6 & 1024) != 0) {
            stringBuffer.append("|abstract");
        }
        if ((i6 & 2048) != 0) {
            stringBuffer.append("|strictfp");
        }
        if ((i6 & 4096) != 0) {
            stringBuffer.append("|synthetic");
        }
        if ((i6 & 8192) != 0) {
            stringBuffer.append("|annotation");
        }
        if ((i6 & 16384) != 0) {
            stringBuffer.append("|enum");
        }
        if ((65536 & i6) != 0) {
            stringBuffer.append("|constructor");
        }
        if ((i6 & 131072) != 0) {
            stringBuffer.append("|declared_synchronized");
        }
        if (i5 != 0 || stringBuffer.length() == 0) {
            stringBuffer.append('|');
            stringBuffer.append(e0(i5));
        }
        return stringBuffer.substring(1);
    }

    public static boolean P(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    public static boolean Q(int i2) throws java.io.IOException {
        try {
            java.net.Socket socket = new java.net.Socket();
            if (l == null) {
                l = java.net.InetAddress.getByName("0.0.0.0");
            }
            socket.connect(new java.net.InetSocketAddress(l, i2), 100);
            socket.close();
            return true;
        } catch (java.net.ConnectException unused) {
            return false;
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean R(int i2) {
        int i3;
        if (i2 < -1) {
            return false;
        }
        return i2 == -1 || (i3 = i2 & 255) == 0 || i3 == 255 || (i2 & 65280) == 0;
    }

    public static boolean S(byte[] bArr, int i2, int i3) {
        int iMin = java.lang.Math.min(i3, bArr.length);
        for (int iMax = java.lang.Math.max(i2, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean T(byte[][] bArr, int i2, int i3, int i4) {
        int iMin = java.lang.Math.min(i4, bArr.length);
        for (int iMax = java.lang.Math.max(i3, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i2] == 1) {
                return false;
            }
        }
        return true;
    }

    public static float U(float f2, float f3, float f4) {
        return (f4 * f3) + ((1.0f - f4) * f2);
    }

    public static android.animation.ValueAnimator V(android.content.Context context, android.content.res.Resources resources, android.content.res.Resources.Theme theme, android.util.AttributeSet attributeSet, android.animation.ValueAnimator valueAnimator, float f2, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        android.animation.ValueAnimator valueAnimator2;
        android.content.res.TypedArray typedArray;
        android.content.res.TypedArray typedArray2;
        android.animation.ValueAnimator valueAnimator3;
        android.content.res.TypedArray typedArrayW = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.f2302g);
        android.content.res.TypedArray typedArrayW2 = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.k);
        android.animation.ValueAnimator valueAnimator4 = valueAnimator == null ? new android.animation.ValueAnimator() : valueAnimator;
        long jF = d.b.k.r.F(typedArrayW, xmlPullParser, "duration", 1, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_DEX);
        int resourceId = 0;
        long jF2 = d.b.k.r.F(typedArrayW, xmlPullParser, "startOffset", 2, 0);
        int iF = d.b.k.r.F(typedArrayW, xmlPullParser, "valueType", 7, 4);
        if (d.b.k.r.P(xmlPullParser, "valueFrom") && d.b.k.r.P(xmlPullParser, "valueTo")) {
            if (iF == 4) {
                android.util.TypedValue typedValuePeekValue = typedArrayW.peekValue(5);
                boolean z = typedValuePeekValue != null;
                int i2 = z ? typedValuePeekValue.type : 0;
                android.util.TypedValue typedValuePeekValue2 = typedArrayW.peekValue(6);
                boolean z2 = typedValuePeekValue2 != null;
                iF = ((z && P(i2)) || (z2 && P(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            android.animation.PropertyValuesHolder propertyValuesHolderH = H(typedArrayW, iF, 5, 6, "");
            if (propertyValuesHolderH != null) {
                valueAnimator4.setValues(propertyValuesHolderH);
            }
        }
        valueAnimator4.setDuration(jF);
        valueAnimator4.setStartDelay(jF2);
        valueAnimator4.setRepeatCount(d.b.k.r.F(typedArrayW, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator4.setRepeatMode(d.b.k.r.F(typedArrayW, xmlPullParser, "repeatMode", 4, 1));
        if (typedArrayW2 != null) {
            android.animation.ObjectAnimator objectAnimator = (android.animation.ObjectAnimator) valueAnimator4;
            java.lang.String strG = d.b.k.r.G(typedArrayW2, xmlPullParser, "pathData", 1);
            if (strG != null) {
                java.lang.String strG2 = d.b.k.r.G(typedArrayW2, xmlPullParser, "propertyXName", 2);
                java.lang.String strG3 = d.b.k.r.G(typedArrayW2, xmlPullParser, "propertyYName", 3);
                if (strG2 == null && strG3 == null) {
                    throw new android.view.InflateException(typedArrayW2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                android.graphics.Path pathQ = d.b.k.r.q(strG);
                float f3 = 0.5f * f2;
                android.graphics.PathMeasure pathMeasure = new android.graphics.PathMeasure(pathQ, false);
                java.util.ArrayList arrayList = new java.util.ArrayList();
                arrayList.add(java.lang.Float.valueOf(0.0f));
                float length = 0.0f;
                do {
                    length += pathMeasure.getLength();
                    arrayList.add(java.lang.Float.valueOf(length));
                } while (pathMeasure.nextContour());
                android.graphics.PathMeasure pathMeasure2 = new android.graphics.PathMeasure(pathQ, false);
                int iMin = java.lang.Math.min(100, ((int) (length / f3)) + 1);
                float[] fArr = new float[iMin];
                float[] fArr2 = new float[iMin];
                float[] fArr3 = new float[2];
                float f4 = length / (iMin - 1);
                valueAnimator2 = valueAnimator4;
                typedArray = typedArrayW;
                int i3 = 0;
                float f5 = 0.0f;
                while (true) {
                    if (resourceId >= iMin) {
                        break;
                    }
                    int i4 = iMin;
                    pathMeasure2.getPosTan(f5 - ((java.lang.Float) arrayList.get(i3)).floatValue(), fArr3, null);
                    fArr[resourceId] = fArr3[0];
                    fArr2[resourceId] = fArr3[1];
                    f5 += f4;
                    int i5 = i3 + 1;
                    if (i5 < arrayList.size() && f5 > ((java.lang.Float) arrayList.get(i5)).floatValue()) {
                        pathMeasure2.nextContour();
                        i3 = i5;
                    }
                    resourceId++;
                    iMin = i4;
                }
                android.animation.PropertyValuesHolder propertyValuesHolderOfFloat = strG2 != null ? android.animation.PropertyValuesHolder.ofFloat(strG2, fArr) : null;
                android.animation.PropertyValuesHolder propertyValuesHolderOfFloat2 = strG3 != null ? android.animation.PropertyValuesHolder.ofFloat(strG3, fArr2) : null;
                if (propertyValuesHolderOfFloat == null) {
                    resourceId = 0;
                    objectAnimator.setValues(propertyValuesHolderOfFloat2);
                } else {
                    resourceId = 0;
                    if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                }
            } else {
                valueAnimator2 = valueAnimator4;
                typedArray = typedArrayW;
                objectAnimator.setPropertyName(d.b.k.r.G(typedArrayW2, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator2 = valueAnimator4;
            typedArray = typedArrayW;
        }
        if (d.b.k.r.P(xmlPullParser, "interpolator")) {
            typedArray2 = typedArray;
            resourceId = typedArray2.getResourceId(resourceId, resourceId);
        } else {
            typedArray2 = typedArray;
        }
        if (resourceId > 0) {
            valueAnimator3 = valueAnimator2;
            valueAnimator3.setInterpolator(W(context, resourceId));
        } else {
            valueAnimator3 = valueAnimator2;
        }
        typedArray2.recycle();
        if (typedArrayW2 != null) {
            typedArrayW2.recycle();
        }
        return valueAnimator3;
    }

    public static android.view.animation.Interpolator W(android.content.Context context, int i2) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return android.view.animation.AnimationUtils.loadInterpolator(context, i2);
        }
        android.content.res.XmlResourceParser xmlResourceParser = null;
        try {
            try {
                if (i2 == 17563663) {
                    return new d.k.a.a.a();
                }
                if (i2 == 17563661) {
                    return new d.k.a.a.b();
                }
                if (i2 == 17563662) {
                    return new d.k.a.a.c();
                }
                android.content.res.XmlResourceParser animation = context.getResources().getAnimation(i2);
                context.getResources();
                context.getTheme();
                android.view.animation.Interpolator interpolatorR = r(context, animation);
                animation.close();
                return interpolatorR;
            } catch (java.io.IOException e2) {
                android.content.res.Resources.NotFoundException notFoundException = new android.content.res.Resources.NotFoundException("Can't load animation resource ID #0x" + java.lang.Integer.toHexString(i2));
                notFoundException.initCause(e2);
                throw notFoundException;
            } catch (org.xmlpull.v1.XmlPullParserException e3) {
                android.content.res.Resources.NotFoundException notFoundException2 = new android.content.res.Resources.NotFoundException("Can't load animation resource ID #0x" + java.lang.Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } catch (java.lang.Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    public static android.graphics.PorterDuff.Mode X(int i2, android.graphics.PorterDuff.Mode mode) {
        if (i2 == 3) {
            return android.graphics.PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return android.graphics.PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return android.graphics.PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return android.graphics.PorterDuff.Mode.MULTIPLY;
            case 15:
                return android.graphics.PorterDuff.Mode.SCREEN;
            case 16:
                return android.graphics.PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void Y(android.animation.AnimatorSet animatorSet, java.util.List<android.animation.Animator> list) {
        int size = list.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            android.animation.Animator animator = list.get(i2);
            jMax = java.lang.Math.max(jMax, animator.getDuration() + animator.getStartDelay());
        }
        android.animation.ValueAnimator valueAnimatorOfInt = android.animation.ValueAnimator.ofInt(0, 0);
        valueAnimatorOfInt.setDuration(jMax);
        list.add(0, valueAnimatorOfInt);
        animatorSet.playTogether(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File Z(java.io.File r4, byte[] r5, java.lang.String r6, int r7) throws java.lang.Throwable {
        /*
            r0 = 0
            r1 = 0
            if (r4 != 0) goto Lc
            java.lang.Object[] r4 = new java.lang.Object[r1]
            java.lang.String r5 = "saveShortcutIconToFile pathDir is null, return"
            e.e.a.g.c(r5, r4)
            return r0
        Lc:
            boolean r2 = r4.exists()
            if (r2 != 0) goto L15
            r4.mkdirs()
        L15:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "saveShortcutIconToFile dir = "
            r2.append(r3)
            r2.append(r4)
            java.lang.String r3 = " name = "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r3 = " suffix = "
            r2.append(r3)
            r2.append(r7)
            java.lang.String r3 = " data.len = "
            r2.append(r3)
            int r3 = r5.length
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.Object[] r3 = new java.lang.Object[r1]
            e.e.a.g.c(r2, r3)
            java.io.File r2 = new java.io.File
            java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
            r3 = 1
            if (r7 == r3) goto L56
            r3 = 2
            if (r7 == r3) goto L53
            java.lang.String r7 = ""
            goto L58
        L53:
            java.lang.String r7 = ".jpg"
            goto L58
        L56:
            java.lang.String r7 = ".png"
        L58:
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            r2.<init>(r4, r6)
            boolean r4 = r2.exists()
            if (r4 == 0) goto L6b
            r2.delete()
        L6b:
            r2.createNewFile()     // Catch: java.lang.Exception -> L6f
            goto L73
        L6f:
            r4 = move-exception
            r4.printStackTrace()
        L73:
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r4.write(r5)     // Catch: java.lang.Throwable -> L87 java.lang.Exception -> L8a
            r4.flush()     // Catch: java.lang.Throwable -> L87 java.lang.Exception -> L8a
            r4.close()     // Catch: java.io.IOException -> L82
            goto L86
        L82:
            r4 = move-exception
            r4.printStackTrace()
        L86:
            return r2
        L87:
            r5 = move-exception
            r0 = r4
            goto Lc4
        L8a:
            r5 = move-exception
            goto L91
        L8c:
            r4 = move-exception
            goto Lc5
        L8e:
            r4 = move-exception
            r5 = r4
            r4 = r0
        L91:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L87
            r6.<init>()     // Catch: java.lang.Throwable -> L87
            java.lang.String r7 = "saveShortcutIconToFile data error = "
            r6.append(r7)     // Catch: java.lang.Throwable -> L87
            java.lang.StackTraceElement[] r7 = r5.getStackTrace()     // Catch: java.lang.Throwable -> L87
            java.util.List r7 = java.util.Arrays.asList(r7)     // Catch: java.lang.Throwable -> L87
            r6.append(r7)     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L87
            java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L87
            e.e.a.g.c(r6, r7)     // Catch: java.lang.Throwable -> L87
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L87
            if (r4 == 0) goto Lbc
            r4.close()     // Catch: java.io.IOException -> Lb8
            goto Lbc
        Lb8:
            r4 = move-exception
            r4.printStackTrace()
        Lbc:
            java.lang.Object[] r4 = new java.lang.Object[r1]
            java.lang.String r5 = "saveShortcutIconToFile error, return"
            e.e.a.g.c(r5, r4)
            return r0
        Lc4:
            r4 = r5
        Lc5:
            if (r0 == 0) goto Lcf
            r0.close()     // Catch: java.io.IOException -> Lcb
            goto Lcf
        Lcb:
            r5 = move-exception
            r5.printStackTrace()
        Lcf:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.Z(java.io.File, byte[], java.lang.String, int):java.io.File");
    }

    public static javax.crypto.SecretKey a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr.length != 16 || bArr2.length != 16 || bArr3.length != 16) {
            throw new java.lang.IllegalArgumentException("invalid data for generating the key.");
        }
        c(bArr, -4);
        byte[] bArrD = d(bArr, bArr2);
        c(bArrD, 6);
        return new javax.crypto.spec.SecretKeySpec(javax.crypto.SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new javax.crypto.spec.PBEKeySpec(e.d.a.a.b.c.a(d(bArrD, bArr3)).toCharArray(), bArr4, 5000, 128)).getEncoded(), "AES");
    }

    public static int[] a0(java.util.Collection<? extends java.lang.Number> collection) {
        if (collection instanceof e.c.b.d.a) {
            e.c.b.d.a aVar = (e.c.b.d.a) collection;
            return java.util.Arrays.copyOfRange(aVar.a, aVar.b, aVar.f2750c);
        }
        java.lang.Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            java.lang.Object obj = array[i2];
            e.c.b.a.f.d(obj);
            iArr[i2] = ((java.lang.Number) obj).intValue();
        }
        return iArr;
    }

    public static boolean b(java.lang.String[] strArr) {
        return true;
    }

    public static java.lang.String b0(java.lang.String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i2 < length) {
                    char c2 = charArray[i2];
                    if (c2 >= 'A' && c2 <= 'Z') {
                        charArray[i2] = (char) (c2 ^ com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                    }
                    i2++;
                }
                return java.lang.String.valueOf(charArray);
            }
            i2++;
        }
        return str;
    }

    public static byte[] c(byte[] bArr, int i2) {
        if (bArr == null) {
            throw new java.lang.NullPointerException("bytes must not be null.");
        }
        for (int i3 = 0; i3 < bArr.length; i3++) {
            if (i2 < 0) {
                bArr[i3] = (byte) (bArr[i3] << (-i2));
            } else {
                bArr[i3] = (byte) (bArr[i3] >> i2);
            }
        }
        return bArr;
    }

    public static java.lang.String c0(java.lang.String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i2 < length) {
                    char c2 = charArray[i2];
                    if (c2 >= 'a' && c2 <= 'z') {
                        charArray[i2] = (char) (c2 ^ com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                    }
                    i2++;
                }
                return java.lang.String.valueOf(charArray);
            }
            i2++;
        }
        return str;
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            throw new java.lang.NullPointerException("left or right must not be null.");
        }
        if (bArr.length != bArr2.length) {
            throw new java.lang.IllegalArgumentException("left and right must be the same length.");
        }
        byte[] bArr3 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
        return bArr3;
    }

    public static java.lang.String d0(int i2) {
        char[] cArr = new char[2];
        for (int i3 = 0; i3 < 2; i3++) {
            cArr[1 - i3] = java.lang.Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static int e(e.c.c.e.c.b bVar, boolean z) {
        int i2 = z ? bVar.f2801c : bVar.b;
        int i3 = z ? bVar.b : bVar.f2801c;
        byte[][] bArr = bVar.a;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte b2 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < i3; i7++) {
                byte b3 = z ? bArr[i5][i7] : bArr[i7][i5];
                if (b3 == b2) {
                    i6++;
                } else {
                    if (i6 >= 5) {
                        i4 += (i6 - 5) + 3;
                    }
                    b2 = b3;
                    i6 = 1;
                }
            }
            if (i6 >= 5) {
                i4 = (i6 - 5) + 3 + i4;
            }
        }
        return i4;
    }

    public static java.lang.String e0(int i2) {
        char[] cArr = new char[4];
        for (int i3 = 0; i3 < 4; i3++) {
            cArr[3 - i3] = java.lang.Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String f(android.content.Context context) {
        g.a.b.b.a.c cVarA = g.a.b.b.a.c.a(context);
        if (cVarA == null) {
            throw null;
        }
        if (!g.a.b.b.a.c.b) {
            return null;
        }
        java.lang.String str = g.a.b.b.a.c.h;
        if (str != null) {
            return str;
        }
        cVarA.b(0, null);
        if (g.a.b.b.a.c.f3122c == null) {
            android.content.Context context2 = g.a.b.b.a.c.a;
            g.a.b.b.a.c.f3122c = new g.a.b.b.a.d(g.a.b.b.a.c.i, 0, null);
            context2.getContentResolver().registerContentObserver(android.net.Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, g.a.b.b.a.c.f3122c);
        }
        return g.a.b.b.a.c.h;
    }

    public static java.lang.String f0(int i2) {
        return i2 == ((char) i2) ? e0(i2) : g0(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String g(android.content.Context r6) {
        /*
            boolean r0 = d.s.y.w
            if (r0 == 0) goto L77
            g.a.a.a.a.a$b r0 = g.a.a.a.a.a.b.C0095b.a
            android.content.Context r6 = r6.getApplicationContext()
            java.lang.String r1 = "OUID"
            monitor-enter(r0)
            android.os.Looper r2 = android.os.Looper.myLooper()     // Catch: java.lang.Throwable -> L74
            android.os.Looper r3 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L74
            if (r2 == r3) goto L6c
            g.a.a.a.a.a r2 = r0.a     // Catch: java.lang.Throwable -> L74
            if (r2 != 0) goto L60
            android.content.Intent r2 = new android.content.Intent     // Catch: java.lang.Throwable -> L74
            r2.<init>()     // Catch: java.lang.Throwable -> L74
            android.content.ComponentName r3 = new android.content.ComponentName     // Catch: java.lang.Throwable -> L74
            java.lang.String r4 = "com.heytap.openid"
            java.lang.String r5 = "com.heytap.openid.IdentifyService"
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L74
            r2.setComponent(r3)     // Catch: java.lang.Throwable -> L74
            java.lang.String r3 = "action.com.heytap.openid.OPEN_ID_SERVICE"
            r2.setAction(r3)     // Catch: java.lang.Throwable -> L74
            android.content.ServiceConnection r3 = r0.f3120e     // Catch: java.lang.Throwable -> L74
            r4 = 1
            boolean r2 = r6.bindService(r2, r3, r4)     // Catch: java.lang.Throwable -> L74
            if (r2 == 0) goto L4f
            java.lang.Object r2 = r0.f3119d     // Catch: java.lang.Throwable -> L74
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.Object r3 = r0.f3119d     // Catch: java.lang.Throwable -> L45 java.lang.InterruptedException -> L47
            r4 = 3000(0xbb8, double:1.482E-320)
            r3.wait(r4)     // Catch: java.lang.Throwable -> L45 java.lang.InterruptedException -> L47
            goto L4b
        L45:
            r6 = move-exception
            goto L4d
        L47:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L45
        L4b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L45
            goto L4f
        L4d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L45
            throw r6     // Catch: java.lang.Throwable -> L74
        L4f:
            g.a.a.a.a.a r2 = r0.a     // Catch: java.lang.Throwable -> L74
            if (r2 != 0) goto L56
        L53:
            java.lang.String r6 = ""
            goto L64
        L56:
            java.lang.String r6 = r0.a(r6, r1)     // Catch: android.os.RemoteException -> L5b java.lang.Throwable -> L74
            goto L64
        L5b:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L74
            goto L53
        L60:
            java.lang.String r6 = r0.a(r6, r1)     // Catch: android.os.RemoteException -> L66 java.lang.Throwable -> L74
        L64:
            monitor-exit(r0)
            goto L6b
        L66:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L74
            goto L53
        L6b:
            return r6
        L6c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = "Cannot run on MainThread"
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L74
            throw r6     // Catch: java.lang.Throwable -> L74
        L74:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        L77:
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            java.lang.String r0 = "SDK Need Init First!"
            r6.<init>(r0)
            goto L80
        L7f:
            throw r6
        L80:
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.g(android.content.Context):java.lang.String");
    }

    public static java.lang.String g0(int i2) {
        char[] cArr = new char[8];
        for (int i3 = 0; i3 < 8; i3++) {
            cArr[7 - i3] = java.lang.Character.forDigit(i2 & 15, 16);
            i2 >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static void h(java.io.InputStream inputStream) throws java.io.IOException {
        try {
            inputStream.close();
        } catch (java.io.IOException unused) {
            w("IOUtil", "closeSecure IOException");
        }
    }

    public static java.lang.String h0(long j2) {
        char[] cArr = new char[16];
        for (int i2 = 0; i2 < 16; i2++) {
            cArr[15 - i2] = java.lang.Character.forDigit(((int) j2) & 15, 16);
            j2 >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static void i(java.lang.String str, java.lang.String str2) {
        android.util.Log.i(y(str), str2);
    }

    public static int i0(int i2) {
        int i3 = i2 >> 7;
        int i4 = 0;
        while (i3 != 0) {
            i3 >>= 7;
            i4++;
        }
        return i4 + 1;
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public static java.lang.Object j(java.lang.Object obj, int i2) {
        if (obj != null) {
            return obj;
        }
        throw new java.lang.NullPointerException(e.a.c.a.a.K("at index ", i2));
    }

    public static void j0(e.a.a.c.a aVar, int i2, long j2) {
        int iNumberOfTrailingZeros = 64 - java.lang.Long.numberOfTrailingZeros(j2);
        if (iNumberOfTrailingZeros == 0) {
            iNumberOfTrailingZeros = 1;
        }
        int i3 = (iNumberOfTrailingZeros + 7) >> 3;
        long j3 = j2 >> (64 - (i3 * 8));
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.j(i2 | ((i3 - 1) << 5));
        while (i3 > 0) {
            cVar.j((byte) j3);
            j3 >>= 8;
            i3--;
        }
    }

    public static void k(java.lang.Object obj, java.lang.Object obj2) {
        if (obj == null) {
            throw new java.lang.NullPointerException(e.a.c.a.a.d("null key in entry: null=", obj2));
        }
        if (obj2 != null) {
            return;
        }
        throw new java.lang.NullPointerException("null value in entry: " + obj + "=null");
    }

    public static void k0(e.a.a.c.a aVar, int i2, long j2) {
        int iNumberOfLeadingZeros = 64 - java.lang.Long.numberOfLeadingZeros(j2);
        if (iNumberOfLeadingZeros == 0) {
            iNumberOfLeadingZeros = 1;
        }
        int i3 = (iNumberOfLeadingZeros + 7) >> 3;
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.j(i2 | ((i3 - 1) << 5));
        while (i3 > 0) {
            cVar.j((byte) j2);
            j2 >>= 8;
            i3--;
        }
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public static int l(int i2, java.lang.String str) {
        if (i2 >= 0) {
            return i2;
        }
        throw new java.lang.IllegalArgumentException(str + " cannot be negative but was: " + i2);
    }

    public static void m(boolean z) {
        if (!z) {
            throw new java.lang.IllegalStateException("no calls to next() since the last call to remove()");
        }
    }

    public static int n(long j2) {
        int i2 = (int) j2;
        if (((long) i2) == j2) {
            return i2;
        }
        throw new java.lang.IllegalArgumentException(e.c.b.a.f.o("Out of range: %s", java.lang.Long.valueOf(j2)));
    }

    public static java.lang.String o(java.lang.String str) {
        byte[] byteArray;
        if (str == null || str.length() == 0) {
            byteArray = null;
        } else {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            try {
                java.util.zip.GZIPOutputStream gZIPOutputStream = new java.util.zip.GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
                gZIPOutputStream.close();
            } catch (java.io.IOException e2) {
                android.util.Log.e("gzip compress error.", e2.getMessage());
            }
            byteArray = byteArrayOutputStream.toByteArray();
        }
        return java.util.Arrays.toString(byteArray);
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x032a, code lost:
    
        if (r27 == null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x032c, code lost:
    
        if (r13 == null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x032e, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x033d, code lost:
    
        if (r2.hasNext() == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x033f, code lost:
    
        r1[r3] = (android.animation.Animator) r2.next();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x034b, code lost:
    
        if (r28 != 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x034d, code lost:
    
        r27.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0351, code lost:
    
        r27.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0354, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x023f A[PHI: r14
  0x023f: PHI (r14v6 float) = (r14v5 float), (r14v7 float) binds: [B:115:0x0236, B:118:0x023d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0303  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator p(android.content.Context r22, android.content.res.Resources r23, android.content.res.Resources.Theme r24, org.xmlpull.v1.XmlPullParser r25, android.util.AttributeSet r26, android.animation.AnimatorSet r27, int r28, float r29) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.p(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static android.animation.Animator q(e.c.a.b.n.d dVar, float f2, float f3, float f4) {
        android.animation.ObjectAnimator objectAnimatorOfObject = android.animation.ObjectAnimator.ofObject(dVar, (android.util.Property<e.c.a.b.n.d, V>) e.c.a.b.n.d.c.a, (android.animation.TypeEvaluator) e.c.a.b.n.d.b.b, (java.lang.Object[]) new e.c.a.b.n.d.e[]{new e.c.a.b.n.d.e(f2, f3, f4)});
        if (android.os.Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        e.c.a.b.n.d.e revealInfo = dVar.getRevealInfo();
        if (revealInfo == null) {
            throw new java.lang.IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        android.animation.Animator animatorCreateCircularReveal = android.view.ViewAnimationUtils.createCircularReveal((android.view.View) dVar, (int) f2, (int) f3, revealInfo.f2640c, f4);
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c6, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.animation.Interpolator r(android.content.Context r4, org.xmlpull.v1.XmlPullParser r5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            int r0 = r5.getDepth()
            r1 = 0
        L5:
            int r2 = r5.next()
            r3 = 3
            if (r2 != r3) goto L12
            int r3 = r5.getDepth()
            if (r3 <= r0) goto Lc6
        L12:
            r3 = 1
            if (r2 == r3) goto Lc6
            r3 = 2
            if (r2 == r3) goto L19
            goto L5
        L19:
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r5)
            java.lang.String r2 = r5.getName()
            java.lang.String r3 = "linearInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L2f
            android.view.animation.LinearInterpolator r1 = new android.view.animation.LinearInterpolator
            r1.<init>()
            goto L5
        L2f:
            java.lang.String r3 = "accelerateInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L3e
            android.view.animation.AccelerateInterpolator r2 = new android.view.animation.AccelerateInterpolator
            r2.<init>(r4, r1)
        L3c:
            r1 = r2
            goto L5
        L3e:
            java.lang.String r3 = "decelerateInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L4c
            android.view.animation.DecelerateInterpolator r2 = new android.view.animation.DecelerateInterpolator
            r2.<init>(r4, r1)
            goto L3c
        L4c:
            java.lang.String r3 = "accelerateDecelerateInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L5a
            android.view.animation.AccelerateDecelerateInterpolator r1 = new android.view.animation.AccelerateDecelerateInterpolator
            r1.<init>()
            goto L5
        L5a:
            java.lang.String r3 = "cycleInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L68
            android.view.animation.CycleInterpolator r2 = new android.view.animation.CycleInterpolator
            r2.<init>(r4, r1)
            goto L3c
        L68:
            java.lang.String r3 = "anticipateInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L76
            android.view.animation.AnticipateInterpolator r2 = new android.view.animation.AnticipateInterpolator
            r2.<init>(r4, r1)
            goto L3c
        L76:
            java.lang.String r3 = "overshootInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L84
            android.view.animation.OvershootInterpolator r2 = new android.view.animation.OvershootInterpolator
            r2.<init>(r4, r1)
            goto L3c
        L84:
            java.lang.String r3 = "anticipateOvershootInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L92
            android.view.animation.AnticipateOvershootInterpolator r2 = new android.view.animation.AnticipateOvershootInterpolator
            r2.<init>(r4, r1)
            goto L3c
        L92:
            java.lang.String r3 = "bounceInterpolator"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto La1
            android.view.animation.BounceInterpolator r1 = new android.view.animation.BounceInterpolator
            r1.<init>()
            goto L5
        La1:
            java.lang.String r3 = "pathInterpolator"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Laf
            d.t.a.a.e r2 = new d.t.a.a.e
            r2.<init>(r4, r1, r5)
            goto L3c
        Laf:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException
            java.lang.String r0 = "Unknown interpolator name: "
            java.lang.StringBuilder r0 = e.a.c.a.a.o(r0)
            java.lang.String r5 = r5.getName()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.<init>(r5)
            throw r4
        Lc6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.y.r(android.content.Context, org.xmlpull.v1.XmlPullParser):android.view.animation.Interpolator");
    }

    public static android.animation.Keyframe s(android.animation.Keyframe keyframe, float f2) {
        return keyframe.getType() == java.lang.Float.TYPE ? android.animation.Keyframe.ofFloat(f2) : keyframe.getType() == java.lang.Integer.TYPE ? android.animation.Keyframe.ofInt(f2) : android.animation.Keyframe.ofObject(f2);
    }

    public static android.graphics.Bitmap t(android.content.Context context, java.lang.String str) {
        e.e.a.g.a("createQRCode, text = " + str);
        try {
            return com.huawei.hms.hmsscankit.ScanUtil.buildBitmap(str, com.huawei.hms.ml.scan.HmsScanBase.QRCODE_SCAN_TYPE, 296, 296, new com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator().setBitmapColor(d.g.f.a.b(context, android.R.color.black)).setBitmapBackgroundColor(d.g.f.a.b(context, android.R.color.white)).setBitmapMargin(0).create());
        } catch (com.huawei.hms.hmsscankit.WriterException e2) {
            e2.printStackTrace();
            e.e.a.g.c("HmsScanUtils createQRCode e = " + e2, new java.lang.Object[0]);
            return null;
        }
    }

    public static int u(android.content.Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static float v(float f2, float f3, float f4, float f5) {
        return (float) java.lang.Math.hypot(f4 - f2, f5 - f3);
    }

    public static void w(java.lang.String str, java.lang.String str2) {
        android.util.Log.e(y(str), str2);
    }

    public static boolean x(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        char c2;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2) && ((c2 = (char) ((r4 | com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE) - 97)) >= 26 || c2 != ((char) ((r5 | com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE) - 97)))) {
                return false;
            }
        }
        return true;
    }

    public static java.lang.String y(java.lang.String str) {
        return e.a.c.a.a.e("SecurityComp115301: ", str);
    }

    public static boolean z(int[] iArr, int i2) {
        return (iArr[i2 >> 5] & (1 << (i2 & 31))) != 0;
    }
}
