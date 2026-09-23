package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class g extends com.tencent.bugly.proguard.AbstractC0254m {
    public byte[] j;
    public java.util.Map<java.lang.String, java.lang.String> l;
    public java.util.Map<java.lang.String, java.lang.String> m;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f1108c = !com.tencent.bugly.proguard.g.class.desiredAssertionStatus();
    public static byte[] a = null;
    public static java.util.Map<java.lang.String, java.lang.String> b = null;

    /* renamed from: d, reason: collision with root package name */
    public short f1109d = 0;

    /* renamed from: e, reason: collision with root package name */
    public byte f1110e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f1111f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f1112g = 0;
    public java.lang.String h = null;
    public java.lang.String i = null;
    public int k = 0;

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        try {
            this.f1109d = c0252k.a(this.f1109d, 1, true);
            this.f1110e = c0252k.a(this.f1110e, 2, true);
            this.f1111f = c0252k.a(this.f1111f, 3, true);
            this.f1112g = c0252k.a(this.f1112g, 4, true);
            this.h = c0252k.a(5, true);
            this.i = c0252k.a(6, true);
            if (a == null) {
                a = new byte[]{0};
            }
            this.j = c0252k.a(a, 7, true);
            this.k = c0252k.a(this.k, 8, true);
            if (b == null) {
                java.util.HashMap map = new java.util.HashMap();
                b = map;
                map.put("", "");
            }
            this.l = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 9, true);
            if (b == null) {
                java.util.HashMap map2 = new java.util.HashMap();
                b = map2;
                map2.put("", "");
            }
            this.m = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 10, true);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            java.io.PrintStream printStream = java.lang.System.out;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("RequestPacket decode error ");
            sbO.append(com.tencent.bugly.proguard.f.a(this.j));
            printStream.println(sbO.toString());
            throw new java.lang.RuntimeException(e2);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1109d, 1);
        c0253l.a(this.f1110e, 2);
        c0253l.a(this.f1111f, 3);
        c0253l.a(this.f1112g, 4);
        c0253l.a(this.h, 5);
        c0253l.a(this.i, 6);
        c0253l.a(this.j, 7);
        c0253l.a(this.k, 8);
        c0253l.a((java.util.Map) this.l, 9);
        c0253l.a((java.util.Map) this.m, 10);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.f1109d, "iVersion");
        c0250i.a(this.f1110e, "cPacketType");
        c0250i.a(this.f1111f, "iMessageType");
        c0250i.a(this.f1112g, "iRequestId");
        c0250i.a(this.h, "sServantName");
        c0250i.a(this.i, "sFuncName");
        c0250i.a(this.j, "sBuffer");
        c0250i.a(this.k, "iTimeout");
        c0250i.a((java.util.Map) this.l, com.umeng.analytics.pro.c.R);
        c0250i.a((java.util.Map) this.m, net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS);
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (f1108c) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        com.tencent.bugly.proguard.g gVar = (com.tencent.bugly.proguard.g) obj;
        return com.tencent.bugly.proguard.C0255n.a(1, (int) gVar.f1109d) && com.tencent.bugly.proguard.C0255n.a(1, (int) gVar.f1110e) && com.tencent.bugly.proguard.C0255n.a(1, gVar.f1111f) && com.tencent.bugly.proguard.C0255n.a(1, gVar.f1112g) && com.tencent.bugly.proguard.C0255n.a((java.lang.Object) 1, (java.lang.Object) gVar.h) && com.tencent.bugly.proguard.C0255n.a((java.lang.Object) 1, (java.lang.Object) gVar.i) && com.tencent.bugly.proguard.C0255n.a((java.lang.Object) 1, (java.lang.Object) gVar.j) && com.tencent.bugly.proguard.C0255n.a(1, gVar.k) && com.tencent.bugly.proguard.C0255n.a((java.lang.Object) 1, (java.lang.Object) gVar.l) && com.tencent.bugly.proguard.C0255n.a((java.lang.Object) 1, (java.lang.Object) gVar.m);
    }
}
