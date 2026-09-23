package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0250i {
    public java.lang.StringBuilder a;
    public int b;

    public C0250i(java.lang.StringBuilder sb, int i) {
        this.b = 0;
        this.a = sb;
        this.b = i;
    }

    private void a(java.lang.String str) {
        for (int i = 0; i < this.b; i++) {
            this.a.append('\t');
        }
        if (str != null) {
            java.lang.StringBuilder sb = this.a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public com.tencent.bugly.proguard.C0250i a(byte b, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append((int) b);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(char c2, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(c2);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(double d2, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(d2);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(float f2, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(f2);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(int i, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(i);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(long j, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(j);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(com.tencent.bugly.proguard.AbstractC0254m abstractC0254m, java.lang.String str) {
        a('{', str);
        if (abstractC0254m == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append('\t');
            sb.append("null");
        } else {
            abstractC0254m.a(this.a, this.b + 1);
        }
        a('}', (java.lang.String) null);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> com.tencent.bugly.proguard.C0250i a(T t, java.lang.String str) {
        if (t == 0) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
        } else if (t instanceof java.lang.Byte) {
            a(((java.lang.Byte) t).byteValue(), str);
        } else if (t instanceof java.lang.Boolean) {
            a(((java.lang.Boolean) t).booleanValue(), str);
        } else if (t instanceof java.lang.Short) {
            a(((java.lang.Short) t).shortValue(), str);
        } else if (t instanceof java.lang.Integer) {
            a(((java.lang.Integer) t).intValue(), str);
        } else if (t instanceof java.lang.Long) {
            a(((java.lang.Long) t).longValue(), str);
        } else if (t instanceof java.lang.Float) {
            a(((java.lang.Float) t).floatValue(), str);
        } else if (t instanceof java.lang.Double) {
            a(((java.lang.Double) t).doubleValue(), str);
        } else if (t instanceof java.lang.String) {
            a((java.lang.String) t, str);
        } else if (t instanceof java.util.Map) {
            a((java.util.Map) t, str);
        } else if (t instanceof java.util.List) {
            a((java.util.Collection) t, str);
        } else if (t instanceof com.tencent.bugly.proguard.AbstractC0254m) {
            a((com.tencent.bugly.proguard.AbstractC0254m) t, str);
        } else if (t instanceof byte[]) {
            a((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            a((com.tencent.bugly.proguard.C0250i) t, str);
        } else if (t instanceof short[]) {
            a((short[]) t, str);
        } else if (t instanceof int[]) {
            a((int[]) t, str);
        } else if (t instanceof long[]) {
            a((long[]) t, str);
        } else if (t instanceof float[]) {
            a((float[]) t, str);
        } else if (t instanceof double[]) {
            a((double[]) t, str);
        } else {
            if (!t.getClass().isArray()) {
                throw new com.tencent.bugly.proguard.C0251j("write object error: unsupport type.");
            }
            a((java.lang.Object[]) t, str);
        }
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(java.lang.String str, java.lang.String str2) {
        a(str2);
        if (str == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
        } else {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(str);
            sb2.append('\n');
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> com.tencent.bugly.proguard.C0250i a(java.util.Collection<T> collection, java.lang.String str) {
        if (collection != null) {
            return a(collection.toArray(), str);
        }
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append("null");
        sb.append('\t');
        return this;
    }

    public <K, V> com.tencent.bugly.proguard.C0250i a(java.util.Map<K, V> map, java.lang.String str) {
        a(str);
        if (map == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (map.isEmpty()) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(map.size());
            sb2.append(", {}");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(map.size());
        sb3.append(", {");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        com.tencent.bugly.proguard.C0250i c0250i2 = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 2);
        for (java.util.Map.Entry<K, V> entry : map.entrySet()) {
            c0250i.a('(', (java.lang.String) null);
            c0250i2.a((com.tencent.bugly.proguard.C0250i) entry.getKey(), (java.lang.String) null);
            c0250i2.a((com.tencent.bugly.proguard.C0250i) entry.getValue(), (java.lang.String) null);
            c0250i.a(')', (java.lang.String) null);
        }
        a('}', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(short s, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append((int) s);
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(boolean z, java.lang.String str) {
        a(str);
        java.lang.StringBuilder sb = this.a;
        sb.append(z ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(byte[] bArr, java.lang.String str) {
        a(str);
        if (bArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (bArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(bArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(bArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (byte b : bArr) {
            c0250i.a(b, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(double[] dArr, java.lang.String str) {
        a(str);
        if (dArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (dArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(dArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(dArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (double d2 : dArr) {
            c0250i.a(d2, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(float[] fArr, java.lang.String str) {
        a(str);
        if (fArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (fArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(fArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(fArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (float f2 : fArr) {
            c0250i.a(f2, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(int[] iArr, java.lang.String str) {
        a(str);
        if (iArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (iArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(iArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(iArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (int i : iArr) {
            c0250i.a(i, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(long[] jArr, java.lang.String str) {
        a(str);
        if (jArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (jArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(jArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(jArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (long j : jArr) {
            c0250i.a(j, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public <T> com.tencent.bugly.proguard.C0250i a(T[] tArr, java.lang.String str) {
        a(str);
        if (tArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (tArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(tArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(tArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (T t : tArr) {
            c0250i.a((com.tencent.bugly.proguard.C0250i) t, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }

    public com.tencent.bugly.proguard.C0250i a(short[] sArr, java.lang.String str) {
        a(str);
        if (sArr == null) {
            java.lang.StringBuilder sb = this.a;
            sb.append("null");
            sb.append('\n');
            return this;
        }
        if (sArr.length == 0) {
            java.lang.StringBuilder sb2 = this.a;
            sb2.append(sArr.length);
            sb2.append(", []");
            sb2.append('\n');
            return this;
        }
        java.lang.StringBuilder sb3 = this.a;
        sb3.append(sArr.length);
        sb3.append(", [");
        sb3.append('\n');
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(this.a, this.b + 1);
        for (short s : sArr) {
            c0250i.a(s, (java.lang.String) null);
        }
        a(']', (java.lang.String) null);
        return this;
    }
}
