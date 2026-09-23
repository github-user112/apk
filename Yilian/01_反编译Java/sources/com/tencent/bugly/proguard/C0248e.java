package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0248e extends com.tencent.bugly.proguard.C0247d {
    public static java.util.HashMap<java.lang.String, byte[]> i;
    public static java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, byte[]>> j;
    public com.tencent.bugly.proguard.g k;
    public int l;

    public C0248e() {
        com.tencent.bugly.proguard.g gVar = new com.tencent.bugly.proguard.g();
        this.k = gVar;
        this.l = 0;
        gVar.f1109d = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.C0247d
    public void a() {
        super.a();
        this.k.f1109d = (short) 3;
    }

    public void a(int i2) {
        this.k.f1112g = i2;
    }

    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.k.a(c0252k);
    }

    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        this.k.a(c0253l);
    }

    @Override // com.tencent.bugly.proguard.C0247d, e.f.a.a.a
    public <T> void a(java.lang.String str, T t) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        if (str.startsWith(".")) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("put name can not startwith . , now is ", str));
        }
        super.a(str, (java.lang.String) t);
    }

    public void a(byte[] bArr) {
        if (bArr.length < 4) {
            throw new java.lang.IllegalArgumentException("decode package must include size head");
        }
        try {
            com.tencent.bugly.proguard.C0252k c0252k = new com.tencent.bugly.proguard.C0252k(bArr, 4);
            c0252k.a(this.f2831d);
            a(c0252k);
            if (this.k.f1109d == 3) {
                com.tencent.bugly.proguard.C0252k c0252k2 = new com.tencent.bugly.proguard.C0252k(this.k.j);
                c0252k2.a(this.f2831d);
                if (i == null) {
                    java.util.HashMap<java.lang.String, byte[]> map = new java.util.HashMap<>();
                    i = map;
                    map.put("", new byte[0]);
                }
                this.f1106f = c0252k2.a((java.util.Map) i, 0, false);
                return;
            }
            com.tencent.bugly.proguard.C0252k c0252k3 = new com.tencent.bugly.proguard.C0252k(this.k.j);
            c0252k3.a(this.f2831d);
            if (j == null) {
                j = new java.util.HashMap<>();
                java.util.HashMap<java.lang.String, byte[]> map2 = new java.util.HashMap<>();
                map2.put("", new byte[0]);
                j.put("", map2);
            }
            this.a = c0252k3.a((java.util.Map) j, 0, false);
            this.b = new java.util.HashMap<>();
        } catch (java.lang.Exception e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }

    public void b(java.lang.String str) {
        this.k.i = str;
    }

    public byte[] b() {
        com.tencent.bugly.proguard.g gVar = this.k;
        if (gVar.f1109d != 2) {
            if (gVar.h == null) {
                gVar.h = "";
            }
            com.tencent.bugly.proguard.g gVar2 = this.k;
            if (gVar2.i == null) {
                gVar2.i = "";
            }
        } else {
            if (gVar.h.equals("")) {
                throw new java.lang.IllegalArgumentException("servantName can not is null");
            }
            if (this.k.i.equals("")) {
                throw new java.lang.IllegalArgumentException("funcName can not is null");
            }
        }
        com.tencent.bugly.proguard.C0253l c0253l = new com.tencent.bugly.proguard.C0253l(0);
        c0253l.a(this.f2831d);
        c0253l.a((java.util.Map) (this.k.f1109d == 2 ? this.a : this.f1106f), 0);
        this.k.j = com.tencent.bugly.proguard.C0255n.a(c0253l.a());
        com.tencent.bugly.proguard.C0253l c0253l2 = new com.tencent.bugly.proguard.C0253l(0);
        c0253l2.a(this.f2831d);
        a(c0253l2);
        byte[] bArrA = com.tencent.bugly.proguard.C0255n.a(c0253l2.a());
        int length = bArrA.length + 4;
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length).put(bArrA).flip();
        return byteBufferAllocate.array();
    }

    public void c(java.lang.String str) {
        this.k.h = str;
    }
}
