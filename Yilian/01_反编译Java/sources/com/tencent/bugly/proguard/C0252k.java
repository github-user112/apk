package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0252k {
    public java.nio.ByteBuffer a;
    public java.lang.String b = "GBK";

    /* renamed from: com.tencent.bugly.proguard.k$a */
    public static class a {
        public byte a;
        public int b;
    }

    public C0252k() {
    }

    public C0252k(byte[] bArr) {
        this.a = java.nio.ByteBuffer.wrap(bArr);
    }

    public C0252k(byte[] bArr, int i) {
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr);
        this.a = byteBufferWrap;
        byteBufferWrap.position(i);
    }

    public static int a(com.tencent.bugly.proguard.C0252k.a aVar, java.nio.ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        aVar.a = (byte) (b & com.umeng.analytics.pro.bw.m);
        int i = (b & 240) >> 4;
        aVar.b = i;
        if (i != 15) {
            return 1;
        }
        aVar.b = byteBuffer.get();
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> java.util.Map<K, V> a(java.util.Map<K, V> map, java.util.Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new java.util.HashMap();
        }
        java.util.Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (a(i)) {
            if (e.a.c.a.a.x(this).a != 8) {
                throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
            }
            int iA = a(0, 0, true);
            if (iA < 0) {
                throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
            }
            for (int i2 = 0; i2 < iA; i2++) {
                map.put(a((com.tencent.bugly.proguard.C0252k) key, 0, true), a((com.tencent.bugly.proguard.C0252k) value, 1, true));
            }
        } else if (z) {
            throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
        }
        return map;
    }

    private void a(byte b) {
        int iA;
        int i = 0;
        switch (b) {
            case 0:
                b(1);
                return;
            case 1:
                b(2);
                return;
            case 2:
            case 4:
                b(4);
                return;
            case 3:
            case 5:
                b(8);
                return;
            case 6:
                iA = this.a.get();
                if (iA < 0) {
                    iA += 256;
                    break;
                }
                break;
            case 7:
                iA = this.a.getInt();
                break;
            case 8:
                int iA2 = a(0, 0, true);
                while (i < iA2 * 2) {
                    b();
                    i++;
                }
                return;
            case 9:
                int iA3 = a(0, 0, true);
                while (i < iA3) {
                    b();
                    i++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                com.tencent.bugly.proguard.C0252k.a aVarX = e.a.c.a.a.x(this);
                if (aVarX.a != 0) {
                    java.lang.StringBuilder sbP = e.a.c.a.a.p("skipField with invalid type, type value: ", b, ", ");
                    sbP.append((int) aVarX.a);
                    throw new com.tencent.bugly.proguard.C0249h(sbP.toString());
                }
                iA = a(0, 0, true);
                break;
            default:
                throw new com.tencent.bugly.proguard.C0249h("invalid type.");
        }
        b(iA);
    }

    private int b(com.tencent.bugly.proguard.C0252k.a aVar) {
        return a(aVar, this.a.duplicate());
    }

    private void b() {
        a(e.a.c.a.a.x(this).a);
    }

    private void b(int i) {
        java.nio.ByteBuffer byteBuffer = this.a;
        byteBuffer.position(byteBuffer.position() + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] b(T t, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        T[] tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(t.getClass(), iA));
        for (int i2 = 0; i2 < iA; i2++) {
            tArr[i2] = a((com.tencent.bugly.proguard.C0252k) t, 0, true);
        }
        return tArr;
    }

    public byte a(byte b, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return b;
        }
        byte b2 = e.a.c.a.a.x(this).a;
        if (b2 == 0) {
            return this.a.get();
        }
        if (b2 == 12) {
            return (byte) 0;
        }
        throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
    }

    public double a(double d2, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return d2;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 4) {
            return this.a.getFloat();
        }
        if (b == 5) {
            return this.a.getDouble();
        }
        if (b == 12) {
            return 0.0d;
        }
        throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
    }

    public float a(float f2, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return f2;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 4) {
            return this.a.getFloat();
        }
        if (b == 12) {
            return 0.0f;
        }
        throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
    }

    public int a(int i, int i2, boolean z) {
        if (!a(i2)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return i;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 0) {
            return this.a.get();
        }
        if (b == 1) {
            return this.a.getShort();
        }
        if (b == 2) {
            return this.a.getInt();
        }
        if (b == 12) {
            return 0;
        }
        throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
    }

    public int a(java.lang.String str) {
        this.b = str;
        return 0;
    }

    public long a(long j, int i, boolean z) {
        int i2;
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return j;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 12) {
            return 0L;
        }
        if (b == 0) {
            i2 = this.a.get();
        } else if (b == 1) {
            i2 = this.a.getShort();
        } else {
            if (b != 2) {
                if (b == 3) {
                    return this.a.getLong();
                }
                throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
            }
            i2 = this.a.getInt();
        }
        return i2;
    }

    public com.tencent.bugly.proguard.AbstractC0254m a(com.tencent.bugly.proguard.AbstractC0254m abstractC0254m, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        try {
            com.tencent.bugly.proguard.AbstractC0254m abstractC0254m2 = (com.tencent.bugly.proguard.AbstractC0254m) abstractC0254m.getClass().newInstance();
            if (e.a.c.a.a.x(this).a != 10) {
                throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
            }
            abstractC0254m2.a(this);
            a();
            return abstractC0254m2;
        } catch (java.lang.Exception e2) {
            throw new com.tencent.bugly.proguard.C0249h(e2.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> java.lang.Object a(T t, int i, boolean z) {
        if (t instanceof java.lang.Byte) {
            return java.lang.Byte.valueOf(a((byte) 0, i, z));
        }
        if (t instanceof java.lang.Boolean) {
            return java.lang.Boolean.valueOf(a(false, i, z));
        }
        if (t instanceof java.lang.Short) {
            return java.lang.Short.valueOf(a((short) 0, i, z));
        }
        if (t instanceof java.lang.Integer) {
            return java.lang.Integer.valueOf(a(0, i, z));
        }
        if (t instanceof java.lang.Long) {
            return java.lang.Long.valueOf(a(0L, i, z));
        }
        if (t instanceof java.lang.Float) {
            return java.lang.Float.valueOf(a(0.0f, i, z));
        }
        if (t instanceof java.lang.Double) {
            return java.lang.Double.valueOf(a(0.0d, i, z));
        }
        if (t instanceof java.lang.String) {
            return java.lang.String.valueOf(a(i, z));
        }
        if (t instanceof java.util.Map) {
            return a((java.util.Map) t, i, z);
        }
        if (t instanceof java.util.List) {
            return a((java.util.List) t, i, z);
        }
        if (t instanceof com.tencent.bugly.proguard.AbstractC0254m) {
            return a((com.tencent.bugly.proguard.AbstractC0254m) t, i, z);
        }
        if (t.getClass().isArray()) {
            return ((t instanceof byte[]) || (t instanceof java.lang.Byte[])) ? a((byte[]) null, i, z) : t instanceof boolean[] ? a((boolean[]) null, i, z) : t instanceof short[] ? a((short[]) null, i, z) : t instanceof int[] ? a((int[]) null, i, z) : t instanceof long[] ? a((long[]) null, i, z) : t instanceof float[] ? a((float[]) null, i, z) : t instanceof double[] ? a((double[]) null, i, z) : a((java.lang.Object[]) t, i, z);
        }
        throw new com.tencent.bugly.proguard.C0249h("read object error: unsupport type.");
    }

    public java.lang.String a(int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 6) {
            int i2 = this.a.get();
            if (i2 < 0) {
                i2 += 256;
            }
            byte[] bArr = new byte[i2];
            this.a.get(bArr);
            try {
                return new java.lang.String(bArr, this.b);
            } catch (java.io.UnsupportedEncodingException unused) {
                return new java.lang.String(bArr);
            }
        }
        if (b != 7) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int i3 = this.a.getInt();
        if (i3 > 104857600 || i3 < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("String too long: ", i3));
        }
        byte[] bArr2 = new byte[i3];
        this.a.get(bArr2);
        try {
            return new java.lang.String(bArr2, this.b);
        } catch (java.io.UnsupportedEncodingException unused2) {
            return new java.lang.String(bArr2);
        }
    }

    public <K, V> java.util.HashMap<K, V> a(java.util.Map<K, V> map, int i, boolean z) {
        return (java.util.HashMap) a(new java.util.HashMap(), map, i, z);
    }

    public <T> java.util.List<T> a(java.util.List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new java.util.ArrayList();
        }
        java.lang.Object[] objArrB = b(list.get(0), i, z);
        if (objArrB == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj : objArrB) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    public short a(short s, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return s;
        }
        byte b = e.a.c.a.a.x(this).a;
        if (b == 0) {
            return this.a.get();
        }
        if (b == 1) {
            return this.a.getShort();
        }
        if (b == 12) {
            return (short) 0;
        }
        throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
    }

    public void a() {
        com.tencent.bugly.proguard.C0252k.a aVar = new com.tencent.bugly.proguard.C0252k.a();
        do {
            a(aVar);
            a(aVar.a);
        } while (aVar.a != 11);
    }

    public void a(com.tencent.bugly.proguard.C0252k.a aVar) {
        a(aVar, this.a);
    }

    public void a(byte[] bArr) {
        java.nio.ByteBuffer byteBuffer = this.a;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.a = java.nio.ByteBuffer.wrap(bArr);
    }

    public boolean a(int i) {
        try {
            com.tencent.bugly.proguard.C0252k.a aVar = new com.tencent.bugly.proguard.C0252k.a();
            while (true) {
                int iB = b(aVar);
                if (i <= aVar.b || aVar.a == 11) {
                    break;
                }
                b(iB);
                a(aVar.a);
            }
            return i == aVar.b;
        } catch (com.tencent.bugly.proguard.C0249h | java.nio.BufferUnderflowException unused) {
            return false;
        }
    }

    public boolean a(boolean z, int i, boolean z2) {
        return a((byte) 0, i, z2) != 0;
    }

    public byte[] a(byte[] bArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        com.tencent.bugly.proguard.C0252k.a aVarX = e.a.c.a.a.x(this);
        byte b = aVarX.a;
        if (b == 9) {
            int iA = a(0, 0, true);
            if (iA < 0) {
                throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
            }
            byte[] bArr2 = new byte[iA];
            for (int i2 = 0; i2 < iA; i2++) {
                bArr2[i2] = a(bArr2[0], 0, true);
            }
            return bArr2;
        }
        if (b != 13) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        com.tencent.bugly.proguard.C0252k.a aVarX2 = e.a.c.a.a.x(this);
        if (aVarX2.a != 0) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("type mismatch, tag: ", i, ", type: ");
            sbP.append((int) aVarX.a);
            sbP.append(", ");
            sbP.append((int) aVarX2.a);
            throw new com.tencent.bugly.proguard.C0249h(sbP.toString());
        }
        int iA2 = a(0, 0, true);
        if (iA2 >= 0) {
            byte[] bArr3 = new byte[iA2];
            this.a.get(bArr3);
            return bArr3;
        }
        java.lang.StringBuilder sbP2 = e.a.c.a.a.p("invalid size, tag: ", i, ", type: ");
        sbP2.append((int) aVarX.a);
        sbP2.append(", ");
        sbP2.append((int) aVarX2.a);
        sbP2.append(", size: ");
        sbP2.append(iA2);
        throw new com.tencent.bugly.proguard.C0249h(sbP2.toString());
    }

    public double[] a(double[] dArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        double[] dArr2 = new double[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            dArr2[i2] = a(dArr2[0], 0, true);
        }
        return dArr2;
    }

    public float[] a(float[] fArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        float[] fArr2 = new float[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            fArr2[i2] = a(fArr2[0], 0, true);
        }
        return fArr2;
    }

    public int[] a(int[] iArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        int[] iArr2 = new int[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            iArr2[i2] = a(iArr2[0], 0, true);
        }
        return iArr2;
    }

    public long[] a(long[] jArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        long[] jArr2 = new long[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            jArr2[i2] = a(jArr2[0], 0, true);
        }
        return jArr2;
    }

    public <T> T[] a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new com.tencent.bugly.proguard.C0249h("unable to get type of key and value.");
        }
        return (T[]) b(tArr[0], i, z);
    }

    public short[] a(short[] sArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        short[] sArr2 = new short[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            sArr2[i2] = a(sArr2[0], 0, true);
        }
        return sArr2;
    }

    public boolean[] a(boolean[] zArr, int i, boolean z) {
        if (!a(i)) {
            if (z) {
                throw new com.tencent.bugly.proguard.C0249h("require field not exist.");
            }
            return null;
        }
        if (e.a.c.a.a.x(this).a != 9) {
            throw new com.tencent.bugly.proguard.C0249h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new com.tencent.bugly.proguard.C0249h(e.a.c.a.a.K("size invalid: ", iA));
        }
        boolean[] zArr2 = new boolean[iA];
        for (int i2 = 0; i2 < iA; i2++) {
            zArr2[i2] = a(zArr2[0], 0, true);
        }
        return zArr2;
    }
}
