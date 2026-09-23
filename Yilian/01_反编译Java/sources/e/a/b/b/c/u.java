package e.a.b.b.c;

/* loaded from: classes.dex */
public final class u extends e.a.b.b.c.x {
    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_HEADER_ITEM;
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 112;
    }

    @Override // e.a.b.b.c.y
    public void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        int iC = mVar.f2440d.c();
        e.a.b.b.c.g0 g0Var = mVar.b;
        e.a.b.b.c.g0 g0Var2 = mVar.f2440d;
        int iC2 = g0Var.c();
        int iC3 = g0Var2.c();
        g0Var2.g();
        int i = (iC3 + g0Var2.i) - iC2;
        java.lang.String strF = e.a.c.a.a.f(com.tencent.tinker.android.dex.DexFormat.MAGIC_PREFIX, mVar.a.b >= 24 ? "037" : com.tencent.tinker.android.dex.DexFormat.VERSION_FOR_API_13, com.tencent.tinker.android.dex.DexFormat.MAGIC_SUFFIX);
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("magic: ");
            sbO.append(new e.a.b.d.c.v(strF).f());
            cVar.b(8, sbO.toString());
            cVar.b(4, "checksum");
            cVar.b(20, "signature");
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("file_size:       ");
            int i2 = mVar.p;
            if (i2 < 0) {
                throw new java.lang.RuntimeException("file size not yet known");
            }
            java.lang.StringBuilder sbN = e.a.c.a.a.n(112, e.a.c.a.a.n(i2, sb, cVar, 4, "header_size:     "), cVar, 4, "endian_tag:      ");
            sbN.append(d.s.y.g0(com.tencent.tinker.android.dex.DexFormat.ENDIAN_TAG));
            cVar.b(4, sbN.toString());
            cVar.b(4, "link_size:       0");
            cVar.b(4, "link_off:        0");
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("map_off:         ");
            e.a.c.a.a.u(iC, sb2, cVar, 4);
        }
        for (int i3 = 0; i3 < 8; i3++) {
            cVar.j(strF.charAt(i3));
        }
        cVar.o(24);
        int i4 = mVar.p;
        if (i4 < 0) {
            throw new java.lang.RuntimeException("file size not yet known");
        }
        cVar.k(i4);
        cVar.k(112);
        cVar.k(com.tencent.tinker.android.dex.DexFormat.ENDIAN_TAG);
        cVar.o(8);
        cVar.k(iC);
        e.a.b.b.c.o0 o0Var = mVar.f2442f;
        o0Var.g();
        int size = o0Var.f2448f.size();
        int iC4 = size == 0 ? 0 : o0Var.c();
        if (cVar.d()) {
            e.a.c.a.a.u(iC4, e.a.c.a.a.n(size, e.a.c.a.a.o("string_ids_size: "), cVar, 4, "string_ids_off:  "), cVar, 4);
        }
        cVar.k(size);
        cVar.k(iC4);
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        q0Var.g();
        int size2 = q0Var.f2450f.size();
        int iC5 = size2 == 0 ? 0 : q0Var.c();
        if (size2 > 65536) {
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append("Too many type references: ");
            sb3.append(size2);
            sb3.append("; max is ");
            sb3.append(65536);
            sb3.append(".\n");
            e.a.b.a.a.a.a();
            throw null;
        }
        if (cVar.d()) {
            e.a.c.a.a.u(iC5, e.a.c.a.a.n(size2, e.a.c.a.a.o("type_ids_size:   "), cVar, 4, "type_ids_off:    "), cVar, 4);
        }
        cVar.k(size2);
        cVar.k(iC5);
        e.a.b.b.c.k0 k0Var = mVar.h;
        k0Var.g();
        int size3 = k0Var.f2432f.size();
        int iC6 = size3 == 0 ? 0 : k0Var.c();
        if (size3 > 65536) {
            throw new java.lang.UnsupportedOperationException("too many proto ids");
        }
        if (cVar.d()) {
            e.a.c.a.a.u(iC6, e.a.c.a.a.n(size3, e.a.c.a.a.o("proto_ids_size:  "), cVar, 4, "proto_ids_off:   "), cVar, 4);
        }
        cVar.k(size3);
        cVar.k(iC6);
        e.a.b.b.c.t tVar = mVar.i;
        tVar.g();
        int size4 = tVar.f2452f.size();
        int iC7 = size4 == 0 ? 0 : tVar.c();
        if (cVar.d()) {
            e.a.c.a.a.u(iC7, e.a.c.a.a.n(size4, e.a.c.a.a.o("field_ids_size:  "), cVar, 4, "field_ids_off:   "), cVar, 4);
        }
        cVar.k(size4);
        cVar.k(iC7);
        e.a.b.b.c.f0 f0Var = mVar.j;
        f0Var.g();
        int size5 = f0Var.f2413f.size();
        int iC8 = size5 == 0 ? 0 : f0Var.c();
        if (cVar.d()) {
            e.a.c.a.a.u(iC8, e.a.c.a.a.n(size5, e.a.c.a.a.o("method_ids_size: "), cVar, 4, "method_ids_off:  "), cVar, 4);
        }
        cVar.k(size5);
        cVar.k(iC8);
        e.a.b.b.c.g gVar = mVar.k;
        gVar.g();
        int size6 = gVar.f2414f.size();
        int iC9 = size6 != 0 ? gVar.c() : 0;
        if (cVar.d()) {
            e.a.c.a.a.u(iC9, e.a.c.a.a.n(size6, e.a.c.a.a.o("class_defs_size: "), cVar, 4, "class_defs_off:  "), cVar, 4);
        }
        cVar.k(size6);
        cVar.k(iC9);
        if (cVar.d()) {
            e.a.c.a.a.u(iC2, e.a.c.a.a.n(i, e.a.c.a.a.o("data_size:       "), cVar, 4, "data_off:        "), cVar, 4);
        }
        cVar.k(i);
        cVar.k(iC2);
    }
}
