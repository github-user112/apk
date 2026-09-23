package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Jb {
    public final com.huawei.hms.scankit.p.C0122bb a;
    public final com.huawei.hms.scankit.aiscan.common.z b;

    /* renamed from: c, reason: collision with root package name */
    public final com.huawei.hms.scankit.aiscan.common.z f548c;

    /* renamed from: d, reason: collision with root package name */
    public final com.huawei.hms.scankit.aiscan.common.z f549d;

    /* renamed from: e, reason: collision with root package name */
    public final com.huawei.hms.scankit.aiscan.common.z f550e;

    /* renamed from: f, reason: collision with root package name */
    public final int f551f;

    /* renamed from: g, reason: collision with root package name */
    public final int f552g;
    public final int h;
    public final int i;

    public Jb(com.huawei.hms.scankit.p.Jb jb) {
        this.a = jb.a;
        this.b = jb.g();
        this.f548c = jb.a();
        this.f549d = jb.h();
        this.f550e = jb.b();
        this.f551f = jb.e();
        this.f552g = jb.c();
        this.h = jb.f();
        this.i = jb.d();
    }

    public Jb(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, com.huawei.hms.scankit.aiscan.common.z zVar4) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        boolean z = zVar == null || zVar2 == null;
        boolean z2 = zVar3 == null || zVar4 == null;
        if (z && z2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (z) {
            zVar = new com.huawei.hms.scankit.aiscan.common.z(0.0f, zVar3.c());
            zVar2 = new com.huawei.hms.scankit.aiscan.common.z(0.0f, zVar4.c());
        } else if (z2) {
            zVar3 = new com.huawei.hms.scankit.aiscan.common.z(c0122bb.d() - 1, zVar.c());
            zVar4 = new com.huawei.hms.scankit.aiscan.common.z(c0122bb.d() - 1, zVar2.c());
        }
        this.a = c0122bb;
        this.b = zVar;
        this.f548c = zVar2;
        this.f549d = zVar3;
        this.f550e = zVar4;
        this.f551f = (int) java.lang.Math.min(zVar.b(), zVar2.b());
        this.f552g = (int) java.lang.Math.max(zVar3.b(), zVar4.b());
        this.h = (int) java.lang.Math.min(zVar.c(), zVar3.c());
        this.i = (int) java.lang.Math.max(zVar2.c(), zVar4.c());
    }

    public static com.huawei.hms.scankit.p.Jb a(com.huawei.hms.scankit.p.Jb jb, com.huawei.hms.scankit.p.Jb jb2) {
        return jb == null ? jb2 : jb2 == null ? jb : new com.huawei.hms.scankit.p.Jb(jb.a, jb.b, jb.f548c, jb2.f549d, jb2.f550e);
    }

    public com.huawei.hms.scankit.aiscan.common.z a() {
        return this.f548c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.scankit.p.Jb a(int r13, int r14, boolean r15) {
        /*
            r12 = this;
            com.huawei.hms.scankit.aiscan.common.z r0 = r12.b
            com.huawei.hms.scankit.aiscan.common.z r1 = r12.f548c
            com.huawei.hms.scankit.aiscan.common.z r2 = r12.f549d
            com.huawei.hms.scankit.aiscan.common.z r3 = r12.f550e
            if (r13 <= 0) goto L29
            if (r15 == 0) goto Le
            r4 = r0
            goto Lf
        Le:
            r4 = r2
        Lf:
            float r5 = r4.c()
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L18
            r5 = 0
        L18:
            com.huawei.hms.scankit.aiscan.common.z r13 = new com.huawei.hms.scankit.aiscan.common.z
            float r4 = r4.b()
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L26
            r8 = r13
            goto L2a
        L26:
            r10 = r13
            r8 = r0
            goto L2b
        L29:
            r8 = r0
        L2a:
            r10 = r2
        L2b:
            if (r14 <= 0) goto L5b
            if (r15 == 0) goto L32
            com.huawei.hms.scankit.aiscan.common.z r13 = r12.f548c
            goto L34
        L32:
            com.huawei.hms.scankit.aiscan.common.z r13 = r12.f550e
        L34:
            float r0 = r13.c()
            int r0 = (int) r0
            int r0 = r0 + r14
            com.huawei.hms.scankit.p.bb r14 = r12.a
            int r14 = r14.b()
            if (r0 < r14) goto L4a
            com.huawei.hms.scankit.p.bb r14 = r12.a
            int r14 = r14.b()
            int r0 = r14 + (-1)
        L4a:
            com.huawei.hms.scankit.aiscan.common.z r14 = new com.huawei.hms.scankit.aiscan.common.z
            float r13 = r13.b()
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L58
            r9 = r14
            goto L5c
        L58:
            r11 = r14
            r9 = r1
            goto L5d
        L5b:
            r9 = r1
        L5c:
            r11 = r3
        L5d:
            com.huawei.hms.scankit.p.Jb r13 = new com.huawei.hms.scankit.p.Jb
            com.huawei.hms.scankit.p.bb r7 = r12.a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Jb.a(int, int, boolean):com.huawei.hms.scankit.p.Jb");
    }

    public com.huawei.hms.scankit.aiscan.common.z b() {
        return this.f550e;
    }

    public int c() {
        return this.f552g;
    }

    public int d() {
        return this.i;
    }

    public int e() {
        return this.f551f;
    }

    public int f() {
        return this.h;
    }

    public com.huawei.hms.scankit.aiscan.common.z g() {
        return this.b;
    }

    public com.huawei.hms.scankit.aiscan.common.z h() {
        return this.f549d;
    }
}
