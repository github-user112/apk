package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0247d extends e.f.a.a.a {

    /* renamed from: f, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, byte[]> f1106f = null;

    /* renamed from: g, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, java.lang.Object> f1107g = new java.util.HashMap<>();
    public com.tencent.bugly.proguard.C0252k h = new com.tencent.bugly.proguard.C0252k();

    private java.lang.Object a(byte[] bArr, java.lang.Object obj) {
        this.h.a(bArr);
        this.h.a(this.f2831d);
        return this.h.a((com.tencent.bugly.proguard.C0252k) obj, 0, true);
    }

    private void c(java.lang.String str, java.lang.Object obj) {
        this.f1107g.put(str, obj);
    }

    public void a() {
        this.f1106f = new java.util.HashMap<>();
    }

    @Override // e.f.a.a.a
    public /* bridge */ /* synthetic */ void a(java.lang.String str) {
        super.a(str);
    }

    @Override // e.f.a.a.a
    public <T> void a(java.lang.String str, T t) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        if (this.f1106f == null) {
            super.a(str, (java.lang.String) t);
            return;
        }
        if (str == null) {
            throw new java.lang.IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new java.lang.IllegalArgumentException("put value can not is null");
        }
        if (t instanceof java.util.Set) {
            throw new java.lang.IllegalArgumentException("can not support Set");
        }
        com.tencent.bugly.proguard.C0253l c0253l = new com.tencent.bugly.proguard.C0253l();
        c0253l.a(this.f2831d);
        c0253l.a(t, 0);
        this.f1106f.put(str, com.tencent.bugly.proguard.C0255n.a(c0253l.a()));
    }

    public <T> T b(java.lang.String str, T t) {
        java.util.HashMap<java.lang.String, byte[]> map = this.f1106f;
        if (map != null) {
            if (!map.containsKey(str)) {
                return null;
            }
            if (!this.f1107g.containsKey(str)) {
                try {
                    T t2 = (T) a(this.f1106f.get(str), t);
                    if (t2 != null) {
                        c(str, t2);
                    }
                    return t2;
                } catch (java.lang.Exception e2) {
                    throw new com.tencent.bugly.proguard.C0246b(e2);
                }
            }
        } else {
            if (!this.a.containsKey(str)) {
                return null;
            }
            if (!this.f1107g.containsKey(str)) {
                byte[] value = new byte[0];
                java.util.Iterator<java.util.Map.Entry<java.lang.String, byte[]>> it = this.a.get(str).entrySet().iterator();
                if (it.hasNext()) {
                    java.util.Map.Entry<java.lang.String, byte[]> next = it.next();
                    next.getKey();
                    value = next.getValue();
                }
                try {
                    this.h.a(value);
                    this.h.a(this.f2831d);
                    T t3 = (T) this.h.a((com.tencent.bugly.proguard.C0252k) t, 0, true);
                    c(str, t3);
                    return t3;
                } catch (java.lang.Exception e3) {
                    throw new com.tencent.bugly.proguard.C0246b(e3);
                }
            }
        }
        return (T) this.f1107g.get(str);
    }
}
