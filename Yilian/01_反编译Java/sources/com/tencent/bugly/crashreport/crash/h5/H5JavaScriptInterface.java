package com.tencent.bugly.crashreport.crash.h5;

/* loaded from: classes.dex */
public class H5JavaScriptInterface {
    public static java.util.HashSet<java.lang.Integer> a = new java.util.HashSet<>();
    public java.lang.String b = null;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Thread f1007c = null;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1008d = null;

    /* renamed from: e, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f1009e = null;

    private com.tencent.bugly.crashreport.crash.h5.a a(java.lang.String str) {
        java.lang.String string;
        if (str != null && str.length() > 0) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject(str);
                com.tencent.bugly.crashreport.crash.h5.a aVar = new com.tencent.bugly.crashreport.crash.h5.a();
                java.lang.String string2 = jSONObject.getString("projectRoot");
                aVar.a = string2;
                if (string2 == null) {
                    return null;
                }
                java.lang.String string3 = jSONObject.getString(com.umeng.analytics.pro.c.R);
                aVar.b = string3;
                if (string3 == null) {
                    return null;
                }
                java.lang.String string4 = jSONObject.getString("url");
                aVar.f1010c = string4;
                if (string4 == null) {
                    return null;
                }
                java.lang.String string5 = jSONObject.getString("userAgent");
                aVar.f1011d = string5;
                if (string5 == null) {
                    return null;
                }
                java.lang.String string6 = jSONObject.getString(com.umeng.analytics.pro.ai.N);
                aVar.f1012e = string6;
                if (string6 == null) {
                    return null;
                }
                java.lang.String string7 = jSONObject.getString("name");
                aVar.f1013f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int iIndexOf = string.indexOf("\n");
                if (iIndexOf < 0) {
                    com.tencent.bugly.proguard.aa.e("H5 crash stack's format is wrong!", new java.lang.Object[0]);
                    return null;
                }
                aVar.h = string.substring(iIndexOf + 1);
                java.lang.String strSubstring = string.substring(0, iIndexOf);
                aVar.f1014g = strSubstring;
                int iIndexOf2 = strSubstring.indexOf(":");
                if (iIndexOf2 > 0) {
                    aVar.f1014g = aVar.f1014g.substring(iIndexOf2 + 1);
                }
                aVar.i = jSONObject.getString("file");
                if (aVar.f1013f == null) {
                    return null;
                }
                long j = jSONObject.getLong("lineNumber");
                aVar.j = j;
                if (j < 0) {
                    return null;
                }
                long j2 = jSONObject.getLong("columnNumber");
                aVar.k = j2;
                if (j2 < 0) {
                    return null;
                }
                com.tencent.bugly.proguard.aa.c("H5 crash information is following: ", new java.lang.Object[0]);
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("[projectRoot]: ");
                sb.append(aVar.a);
                com.tencent.bugly.proguard.aa.c(sb.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                sb2.append("[context]: ");
                sb2.append(aVar.b);
                com.tencent.bugly.proguard.aa.c(sb2.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                sb3.append("[url]: ");
                sb3.append(aVar.f1010c);
                com.tencent.bugly.proguard.aa.c(sb3.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
                sb4.append("[userAgent]: ");
                sb4.append(aVar.f1011d);
                com.tencent.bugly.proguard.aa.c(sb4.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb5 = new java.lang.StringBuilder();
                sb5.append("[language]: ");
                sb5.append(aVar.f1012e);
                com.tencent.bugly.proguard.aa.c(sb5.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb6 = new java.lang.StringBuilder();
                sb6.append("[name]: ");
                sb6.append(aVar.f1013f);
                com.tencent.bugly.proguard.aa.c(sb6.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb7 = new java.lang.StringBuilder();
                sb7.append("[message]: ");
                sb7.append(aVar.f1014g);
                com.tencent.bugly.proguard.aa.c(sb7.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb8 = new java.lang.StringBuilder();
                sb8.append("[stacktrace]: \n");
                sb8.append(aVar.h);
                com.tencent.bugly.proguard.aa.c(sb8.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb9 = new java.lang.StringBuilder();
                sb9.append("[file]: ");
                sb9.append(aVar.i);
                com.tencent.bugly.proguard.aa.c(sb9.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb10 = new java.lang.StringBuilder();
                sb10.append("[lineNumber]: ");
                sb10.append(aVar.j);
                com.tencent.bugly.proguard.aa.c(sb10.toString(), new java.lang.Object[0]);
                java.lang.StringBuilder sb11 = new java.lang.StringBuilder();
                sb11.append("[columnNumber]: ");
                sb11.append(aVar.k);
                com.tencent.bugly.proguard.aa.c(sb11.toString(), new java.lang.Object[0]);
                return aVar;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static java.lang.String a(java.lang.Thread thread) {
        if (thread == null) {
            return null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("\n");
        for (int i = 2; i < thread.getStackTrace().length; i++) {
            java.lang.StackTraceElement stackTraceElement = thread.getStackTrace()[i];
            if (!stackTraceElement.toString().contains("crashreport")) {
                sbO.append(stackTraceElement.toString());
                sbO.append("\n");
            }
        }
        return sbO.toString();
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(com.tencent.bugly.crashreport.CrashReport.WebViewInterface webViewInterface) {
        java.util.HashMap map = new java.util.HashMap();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("");
        sbO.append((java.lang.Object) webViewInterface.getContentDescription());
        map.put("[WebView] ContentDescription", sbO.toString());
        return map;
    }

    public static void a(com.tencent.bugly.crashreport.crash.h5.a aVar, java.lang.Thread thread, java.util.Map<java.lang.String, java.lang.String> map) {
        if (aVar != null) {
            com.tencent.bugly.crashreport.inner.InnerApi.postH5CrashAsync(thread, aVar.f1013f, aVar.f1014g, aVar.h, map);
        }
    }

    public static com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface getInstance(com.tencent.bugly.crashreport.CrashReport.WebViewInterface webViewInterface) {
        if (webViewInterface == null || a.contains(java.lang.Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface h5JavaScriptInterface = new com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface();
        a.add(java.lang.Integer.valueOf(webViewInterface.hashCode()));
        java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
        h5JavaScriptInterface.f1007c = threadCurrentThread;
        h5JavaScriptInterface.f1008d = a(threadCurrentThread);
        h5JavaScriptInterface.f1009e = a(webViewInterface);
        return h5JavaScriptInterface;
    }

    @android.webkit.JavascriptInterface
    public void printLog(java.lang.String str) {
        com.tencent.bugly.proguard.aa.e("Log from js: %s", str);
    }

    @android.webkit.JavascriptInterface
    public void reportJSException(java.lang.String str) {
        if (str == null) {
            com.tencent.bugly.proguard.aa.e("Payload from JS is null.", new java.lang.Object[0]);
            return;
        }
        java.lang.String strC = com.tencent.bugly.proguard.ha.c(str.getBytes());
        java.lang.String str2 = this.b;
        if (str2 != null && str2.equals(strC)) {
            com.tencent.bugly.proguard.aa.e("Same payload from js. Please check whether you've injected bugly.js more than one times.", new java.lang.Object[0]);
            return;
        }
        this.b = strC;
        com.tencent.bugly.proguard.aa.e("Handling JS exception ...", new java.lang.Object[0]);
        com.tencent.bugly.crashreport.crash.h5.a aVarA = a(str);
        if (aVarA == null) {
            com.tencent.bugly.proguard.aa.e("Failed to parse payload.", new java.lang.Object[0]);
            return;
        }
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        linkedHashMap.putAll(aVarA.a());
        linkedHashMap.putAll(this.f1009e);
        linkedHashMap.put("Java Stack", this.f1008d);
        a(aVarA, this.f1007c, linkedHashMap);
    }
}
