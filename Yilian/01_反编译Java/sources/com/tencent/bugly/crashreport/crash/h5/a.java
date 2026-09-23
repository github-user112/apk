package com.tencent.bugly.crashreport.crash.h5;

/* loaded from: classes.dex */
public class a {
    public java.lang.String a = null;
    public java.lang.String b = null;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1010c = null;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1011d = null;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1012e = null;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f1013f = null;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f1014g = null;
    public java.lang.String h = null;
    public java.lang.String i = null;
    public long j = 0;
    public long k = 0;

    public java.util.Map<java.lang.String, java.lang.String> a() {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        java.lang.String str = this.a;
        if (str != null) {
            linkedHashMap.put("[JS] projectRoot", str);
        }
        java.lang.String str2 = this.b;
        if (str2 != null) {
            linkedHashMap.put("[JS] context", str2);
        }
        java.lang.String str3 = this.f1010c;
        if (str3 != null) {
            linkedHashMap.put("[JS] url", str3);
        }
        java.lang.String str4 = this.f1011d;
        if (str4 != null) {
            linkedHashMap.put("[JS] userAgent", str4);
        }
        java.lang.String str5 = this.i;
        if (str5 != null) {
            linkedHashMap.put("[JS] file", str5);
        }
        long j = this.j;
        if (j != 0) {
            linkedHashMap.put("[JS] lineNumber", java.lang.Long.toString(j));
        }
        return linkedHashMap;
    }
}
