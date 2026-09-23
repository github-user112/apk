package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class at {
    public final com.umeng.analytics.pro.bp a;
    public final com.umeng.analytics.pro.cc b;

    public at() {
        this(new com.umeng.analytics.pro.bj.a());
    }

    public at(com.umeng.analytics.pro.br brVar) {
        com.umeng.analytics.pro.cc ccVar = new com.umeng.analytics.pro.cc();
        this.b = ccVar;
        this.a = brVar.a(ccVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object a(byte r1, byte[] r2, com.umeng.analytics.pro.ax r3, com.umeng.analytics.pro.ax... r4) {
        /*
            r0 = this;
            com.umeng.analytics.pro.bk r2 = r0.j(r2, r3, r4)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r2 == 0) goto L9e
            r3 = 2
            if (r1 == r3) goto L8f
            r3 = 3
            if (r1 == r3) goto L80
            r3 = 4
            if (r1 == r3) goto L71
            r3 = 6
            if (r1 == r3) goto L62
            r3 = 8
            if (r1 == r3) goto L53
            r3 = 100
            r4 = 11
            if (r1 == r3) goto L48
            r3 = 10
            if (r1 == r3) goto L39
            if (r1 == r4) goto L24
            goto L9e
        L24:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r4) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.String r1 = r1.z()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
        L2e:
            com.umeng.analytics.pro.cc r2 = r0.b
            r2.e()
            com.umeng.analytics.pro.bp r2 = r0.a
            r2.B()
            return r1
        L39:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            long r1 = r1.x()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L48:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r4) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.nio.ByteBuffer r1 = r1.A()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L53:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            int r1 = r1.w()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L62:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            short r1 = r1.v()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Short r1 = java.lang.Short.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L71:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            double r1 = r1.y()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Double r1 = java.lang.Double.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L80:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            byte r1 = r1.u()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Byte r1 = java.lang.Byte.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L8f:
            byte r1 = r2.b     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            if (r1 != r3) goto L9e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            boolean r1 = r1.t()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La2
            goto L2e
        L9e:
            r1 = 0
            goto L2e
        La0:
            r1 = move-exception
            goto La9
        La2:
            r1 = move-exception
            com.umeng.analytics.pro.aw r2 = new com.umeng.analytics.pro.aw     // Catch: java.lang.Throwable -> La0
            r2.<init>(r1)     // Catch: java.lang.Throwable -> La0
            throw r2     // Catch: java.lang.Throwable -> La0
        La9:
            com.umeng.analytics.pro.cc r2 = r0.b
            r2.e()
            com.umeng.analytics.pro.bp r2 = r0.a
            r2.B()
            goto Lb5
        Lb4:
            throw r1
        Lb5:
            goto Lb4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.at.a(byte, byte[], com.umeng.analytics.pro.ax, com.umeng.analytics.pro.ax[]):java.lang.Object");
    }

    private com.umeng.analytics.pro.bk j(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        this.b.a(bArr);
        int length = axVarArr.length + 1;
        com.umeng.analytics.pro.ax[] axVarArr2 = new com.umeng.analytics.pro.ax[length];
        int i = 0;
        axVarArr2[0] = axVar;
        int i2 = 0;
        while (i2 < axVarArr.length) {
            int i3 = i2 + 1;
            axVarArr2[i3] = axVarArr[i2];
            i2 = i3;
        }
        this.a.j();
        com.umeng.analytics.pro.bk bkVarL = null;
        while (i < length) {
            bkVarL = this.a.l();
            if (bkVarL.b == 0 || bkVarL.f1271c > axVarArr2[i].a()) {
                return null;
            }
            if (bkVarL.f1271c != axVarArr2[i].a()) {
                com.umeng.analytics.pro.bs.a(this.a, bkVarL.b);
                this.a.m();
            } else {
                i++;
                if (i < length) {
                    this.a.j();
                }
            }
        }
        return bkVarL;
    }

    public java.lang.Boolean a(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Boolean) a((byte) 2, bArr, axVar, axVarArr);
    }

    public void a(com.umeng.analytics.pro.aq aqVar, java.lang.String str) {
        a(aqVar, str.getBytes());
    }

    public void a(com.umeng.analytics.pro.aq aqVar, java.lang.String str, java.lang.String str2) {
        try {
            try {
                a(aqVar, str.getBytes(str2));
            } catch (java.io.UnsupportedEncodingException unused) {
                throw new com.umeng.analytics.pro.aw("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.a.B();
        }
    }

    public void a(com.umeng.analytics.pro.aq aqVar, byte[] bArr) {
        try {
            this.b.a(bArr);
            aqVar.read(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(com.umeng.analytics.pro.aq aqVar, byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        try {
            try {
                if (j(bArr, axVar, axVarArr) != null) {
                    aqVar.read(this.a);
                }
            } catch (java.lang.Exception e2) {
                throw new com.umeng.analytics.pro.aw(e2);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public java.lang.Byte b(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Byte) a((byte) 3, bArr, axVar, axVarArr);
    }

    public java.lang.Double c(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Double) a((byte) 4, bArr, axVar, axVarArr);
    }

    public java.lang.Short d(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Short) a((byte) 6, bArr, axVar, axVarArr);
    }

    public java.lang.Integer e(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Integer) a((byte) 8, bArr, axVar, axVarArr);
    }

    public java.lang.Long f(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.Long) a((byte) 10, bArr, axVar, axVarArr);
    }

    public java.lang.String g(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.lang.String) a((byte) 11, bArr, axVar, axVarArr);
    }

    public java.nio.ByteBuffer h(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        return (java.nio.ByteBuffer) a((byte) 100, bArr, axVar, axVarArr);
    }

    public java.lang.Short i(byte[] bArr, com.umeng.analytics.pro.ax axVar, com.umeng.analytics.pro.ax... axVarArr) {
        java.lang.Short shValueOf;
        try {
            try {
                if (j(bArr, axVar, axVarArr) != null) {
                    this.a.j();
                    shValueOf = java.lang.Short.valueOf(this.a.l().f1271c);
                } else {
                    shValueOf = null;
                }
                return shValueOf;
            } catch (java.lang.Exception e2) {
                throw new com.umeng.analytics.pro.aw(e2);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }
}
