package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class az {
    public final java.io.ByteArrayOutputStream a;
    public final com.umeng.analytics.pro.cb b;

    /* renamed from: c, reason: collision with root package name */
    public com.umeng.analytics.pro.bp f1250c;

    public az() {
        this(new com.umeng.analytics.pro.bj.a());
    }

    public az(com.umeng.analytics.pro.br brVar) {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        this.a = byteArrayOutputStream;
        com.umeng.analytics.pro.cb cbVar = new com.umeng.analytics.pro.cb(byteArrayOutputStream);
        this.b = cbVar;
        this.f1250c = brVar.a(cbVar);
    }

    public java.lang.String a(com.umeng.analytics.pro.aq aqVar, java.lang.String str) throws com.umeng.analytics.pro.aw {
        try {
            return new java.lang.String(a(aqVar), str);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw(e.a.c.a.a.e("JVM DOES NOT SUPPORT ENCODING: ", str));
        }
    }

    public byte[] a(com.umeng.analytics.pro.aq aqVar) {
        this.a.reset();
        aqVar.write(this.f1250c);
        return this.a.toByteArray();
    }

    public java.lang.String b(com.umeng.analytics.pro.aq aqVar) {
        return new java.lang.String(a(aqVar));
    }
}
