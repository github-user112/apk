package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0253l {
    public java.nio.ByteBuffer a;
    public java.lang.String b;

    public C0253l() {
        this(128);
    }

    public C0253l(int i) {
        this.b = "GBK";
        this.a = java.nio.ByteBuffer.allocate(i);
    }

    private void a(java.lang.Object[] objArr, int i) {
        a(8);
        b((byte) 9, i);
        a(objArr.length, 0);
        for (java.lang.Object obj : objArr) {
            a(obj, 0);
        }
    }

    public int a(java.lang.String str) {
        this.b = str;
        return 0;
    }

    public java.nio.ByteBuffer a() {
        return this.a;
    }

    public void a(byte b, int i) {
        a(3);
        if (b == 0) {
            b((byte) 12, i);
        } else {
            b((byte) 0, i);
            this.a.put(b);
        }
    }

    public void a(double d2, int i) {
        a(10);
        b((byte) 5, i);
        this.a.putDouble(d2);
    }

    public void a(float f2, int i) {
        a(6);
        b((byte) 4, i);
        this.a.putFloat(f2);
    }

    public void a(int i) {
        if (this.a.remaining() < i) {
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate((this.a.capacity() + i) * 2);
            byteBufferAllocate.put(this.a.array(), 0, this.a.position());
            this.a = byteBufferAllocate;
        }
    }

    public void a(int i, int i2) {
        a(6);
        if (i >= -32768 && i <= 32767) {
            a((short) i, i2);
        } else {
            b((byte) 2, i2);
            this.a.putInt(i);
        }
    }

    public void a(long j, int i) {
        a(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            a((int) j, i);
        } else {
            b((byte) 3, i);
            this.a.putLong(j);
        }
    }

    public void a(com.tencent.bugly.proguard.AbstractC0254m abstractC0254m, int i) {
        a(2);
        b((byte) 10, i);
        abstractC0254m.a(this);
        a(2);
        b((byte) 11, 0);
    }

    public void a(java.lang.Object obj, int i) {
        java.lang.Object obj2;
        if (obj instanceof java.lang.Byte) {
            a(((java.lang.Byte) obj).byteValue(), i);
            return;
        }
        if (obj instanceof java.lang.Boolean) {
            a(((java.lang.Boolean) obj).booleanValue(), i);
            return;
        }
        if (obj instanceof java.lang.Short) {
            a(((java.lang.Short) obj).shortValue(), i);
            return;
        }
        if (obj instanceof java.lang.Integer) {
            a(((java.lang.Integer) obj).intValue(), i);
            return;
        }
        if (obj instanceof java.lang.Long) {
            a(((java.lang.Long) obj).longValue(), i);
            return;
        }
        if (obj instanceof java.lang.Float) {
            a(((java.lang.Float) obj).floatValue(), i);
            return;
        }
        if (obj instanceof java.lang.Double) {
            a(((java.lang.Double) obj).doubleValue(), i);
            return;
        }
        if (obj instanceof java.lang.String) {
            a((java.lang.String) obj, i);
            return;
        }
        if (obj instanceof java.util.Map) {
            a((java.util.Map) obj, i);
            return;
        }
        if (obj instanceof java.util.List) {
            obj2 = (java.util.List) obj;
        } else {
            if (obj instanceof com.tencent.bugly.proguard.AbstractC0254m) {
                a((com.tencent.bugly.proguard.AbstractC0254m) obj, i);
                return;
            }
            if (obj instanceof byte[]) {
                a((byte[]) obj, i);
                return;
            }
            if (obj instanceof boolean[]) {
                a((boolean[]) obj, i);
                return;
            }
            if (obj instanceof short[]) {
                a((short[]) obj, i);
                return;
            }
            if (obj instanceof int[]) {
                a((int[]) obj, i);
                return;
            }
            if (obj instanceof long[]) {
                a((long[]) obj, i);
                return;
            }
            if (obj instanceof float[]) {
                a((float[]) obj, i);
                return;
            }
            if (obj instanceof double[]) {
                a((double[]) obj, i);
                return;
            }
            if (obj.getClass().isArray()) {
                a((java.lang.Object[]) obj, i);
                return;
            } else {
                if (!(obj instanceof java.util.Collection)) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("write object error: unsupport type. ");
                    sbO.append(obj.getClass());
                    throw new com.tencent.bugly.proguard.C0251j(sbO.toString());
                }
                obj2 = (java.util.Collection) obj;
            }
        }
        a((java.util.Collection) obj2, i);
    }

    public void a(java.lang.String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.b);
        } catch (java.io.UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        a(bytes.length + 10);
        if (bytes.length > 255) {
            b((byte) 7, i);
            this.a.putInt(bytes.length);
        } else {
            b((byte) 6, i);
            this.a.put((byte) bytes.length);
        }
        this.a.put(bytes);
    }

    public <T> void a(java.util.Collection<T> collection, int i) {
        a(8);
        b((byte) 9, i);
        a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            java.util.Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), 0);
            }
        }
    }

    public <K, V> void a(java.util.Map<K, V> map, int i) {
        a(8);
        b((byte) 8, i);
        a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (java.util.Map.Entry<K, V> entry : map.entrySet()) {
                a(entry.getKey(), 0);
                a(entry.getValue(), 1);
            }
        }
    }

    public void a(short s, int i) {
        a(4);
        if (s >= -128 && s <= 127) {
            a((byte) s, i);
        } else {
            b((byte) 1, i);
            this.a.putShort(s);
        }
    }

    public void a(boolean z, int i) {
        a(z ? (byte) 1 : (byte) 0, i);
    }

    public void a(byte[] bArr, int i) {
        a(bArr.length + 8);
        b(com.umeng.analytics.pro.bw.k, i);
        b((byte) 0, 0);
        a(bArr.length, 0);
        this.a.put(bArr);
    }

    public void a(double[] dArr, int i) {
        a(8);
        b((byte) 9, i);
        a(dArr.length, 0);
        for (double d2 : dArr) {
            a(d2, 0);
        }
    }

    public void a(float[] fArr, int i) {
        a(8);
        b((byte) 9, i);
        a(fArr.length, 0);
        for (float f2 : fArr) {
            a(f2, 0);
        }
    }

    public void a(int[] iArr, int i) {
        a(8);
        b((byte) 9, i);
        a(iArr.length, 0);
        for (int i2 : iArr) {
            a(i2, 0);
        }
    }

    public void a(long[] jArr, int i) {
        a(8);
        b((byte) 9, i);
        a(jArr.length, 0);
        for (long j : jArr) {
            a(j, 0);
        }
    }

    public void a(short[] sArr, int i) {
        a(8);
        b((byte) 9, i);
        a(sArr.length, 0);
        for (short s : sArr) {
            a(s, 0);
        }
    }

    public void a(boolean[] zArr, int i) {
        a(8);
        b((byte) 9, i);
        a(zArr.length, 0);
        for (boolean z : zArr) {
            a(z, 0);
        }
    }

    public void b(byte b, int i) {
        if (i < 15) {
            this.a.put((byte) (b | (i << 4)));
        } else {
            if (i >= 256) {
                throw new com.tencent.bugly.proguard.C0251j(e.a.c.a.a.K("tag is too large: ", i));
            }
            this.a.put((byte) (b | 240));
            this.a.put((byte) i);
        }
    }

    public byte[] b() {
        byte[] bArr = new byte[this.a.position()];
        java.lang.System.arraycopy(this.a.array(), 0, bArr, 0, this.a.position());
        return bArr;
    }
}
