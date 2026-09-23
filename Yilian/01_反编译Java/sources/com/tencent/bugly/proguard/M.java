package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class M {
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Pair<java.lang.Integer, java.lang.String> a(java.lang.String r7, java.lang.String r8, java.util.Map<java.lang.String, java.lang.String> r9) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "UTF-8"
            r1 = 0
            r2 = -1
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Throwable -> L9e
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L9e
            java.net.URLConnection r7 = r3.openConnection()     // Catch: java.lang.Throwable -> L9e
            java.net.HttpURLConnection r7 = (java.net.HttpURLConnection) r7     // Catch: java.lang.Throwable -> L9e
            java.lang.String r3 = "POST"
            r7.setRequestMethod(r3)     // Catch: java.lang.Throwable -> L99
            r3 = 1
            r7.setDoOutput(r3)     // Catch: java.lang.Throwable -> L99
            r7.setDoInput(r3)     // Catch: java.lang.Throwable -> L99
            r3 = 0
            r7.setUseCaches(r3)     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "application/x-www-form-urlencoded"
            r7.setRequestProperty(r3, r4)     // Catch: java.lang.Throwable -> L99
            r6.a(r7, r9)     // Catch: java.lang.Throwable -> L99
            r9 = 5000(0x1388, float:7.006E-42)
            r7.setConnectTimeout(r9)     // Catch: java.lang.Throwable -> L99
            r7.setReadTimeout(r9)     // Catch: java.lang.Throwable -> L99
            r7.connect()     // Catch: java.lang.Throwable -> L99
            byte[] r8 = r8.getBytes(r0)     // Catch: java.lang.Throwable -> L99
            java.io.DataOutputStream r9 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> L99
            java.io.OutputStream r3 = r7.getOutputStream()     // Catch: java.lang.Throwable -> L99
            r9.<init>(r3)     // Catch: java.lang.Throwable -> L99
            r9.write(r8)     // Catch: java.lang.Throwable -> L94
            r9.flush()     // Catch: java.lang.Throwable -> L94
            r9.close()     // Catch: java.lang.Throwable -> L94
            int r2 = r7.getResponseCode()     // Catch: java.lang.Throwable -> L91
            r8 = 400(0x190, float:5.6E-43)
            if (r2 < r8) goto L57
            java.io.InputStream r8 = r7.getErrorStream()     // Catch: java.lang.Throwable -> L99
            goto L5b
        L57:
            java.io.InputStream r8 = r7.getInputStream()     // Catch: java.lang.Throwable -> L99
        L5b:
            java.io.BufferedReader r9 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L8a
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L8a
            r3.<init>(r8, r0)     // Catch: java.lang.Throwable -> L8a
            r9.<init>(r3)     // Catch: java.lang.Throwable -> L8a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8a
            r0.<init>()     // Catch: java.lang.Throwable -> L8a
        L6a:
            java.lang.String r3 = r9.readLine()     // Catch: java.lang.Throwable -> L8a
            if (r3 == 0) goto L79
            r0.append(r3)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r3 = "\r\n"
            r0.append(r3)     // Catch: java.lang.Throwable -> L8a
            goto L6a
        L79:
            r9.close()     // Catch: java.lang.Throwable -> L8a
            java.lang.String r9 = r0.toString()     // Catch: java.lang.Throwable -> L8a
            r6.a(r1)
            r6.a(r8)
            r7.disconnect()
            goto Lb5
        L8a:
            r9 = move-exception
            r5 = r1
            r1 = r7
            r7 = r8
            r8 = r9
            r9 = r5
            goto La2
        L91:
            r8 = move-exception
            r9 = r1
            goto L95
        L94:
            r8 = move-exception
        L95:
            r5 = r1
            r1 = r7
            r7 = r5
            goto La2
        L99:
            r8 = move-exception
            r9 = r1
            r1 = r7
            r7 = r9
            goto La2
        L9e:
            r7 = move-exception
            r8 = r7
            r7 = r1
            r9 = r7
        La2:
            com.tencent.bugly.proguard.aa.a(r8)     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> Lbf
            r6.a(r9)
            r6.a(r7)
            if (r1 == 0) goto Lb4
            r1.disconnect()
        Lb4:
            r9 = r8
        Lb5:
            android.util.Pair r7 = new android.util.Pair
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
            r7.<init>(r8, r9)
            return r7
        Lbf:
            r8 = move-exception
            r6.a(r9)
            r6.a(r7)
            if (r1 == 0) goto Lcb
            r1.disconnect()
        Lcb:
            goto Lcd
        Lcc:
            throw r8
        Lcd:
            goto Lcc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.M.a(java.lang.String, java.lang.String, java.util.Map):android.util.Pair");
    }

    private void a(java.io.Closeable closeable) throws java.io.IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.a(e2);
        }
    }

    private void a(java.net.HttpURLConnection httpURLConnection, java.util.Map<java.lang.String, java.lang.String> map) {
        if (httpURLConnection == null || map == null || map.isEmpty()) {
            return;
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    public android.util.Pair<java.lang.Integer, java.lang.String> a(java.util.List<java.lang.String> list) {
        try {
            java.util.HashMap map = new java.util.HashMap();
            map.put("Atta-Type", "batch-report");
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            jSONObject.put("attaid", "0d000062340").put("token", "2273782735").put(com.umeng.analytics.pro.c.y, "batch").put(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, "v1.0.0");
            org.json.JSONArray jSONArray = new org.json.JSONArray();
            java.util.Iterator<java.lang.String> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            jSONObject.put("datas", jSONArray);
            return a("https://h.trace.qq.com/kv", jSONObject.toString(), map);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.a(th);
            return new android.util.Pair<>(-1, th.getMessage());
        }
    }
}
