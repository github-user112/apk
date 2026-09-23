package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public abstract class ba<T extends com.umeng.analytics.pro.ba<?, ?>, F extends com.umeng.analytics.pro.ax> implements com.umeng.analytics.pro.aq<T, F> {

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> f1251c;
    public java.lang.Object a;
    public F b;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.analytics.pro.ba> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.ba baVar) {
            baVar.b = null;
            baVar.a = null;
            bpVar.j();
            com.umeng.analytics.pro.bk bkVarL = bpVar.l();
            java.lang.Object objA = baVar.a(bpVar, bkVarL);
            baVar.a = objA;
            if (objA != null) {
                baVar.b = (F) baVar.a(bkVarL.f1271c);
            }
            bpVar.m();
            bpVar.l();
            bpVar.k();
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.ba baVar) throws com.umeng.analytics.pro.bq {
            if (baVar.a() == null || baVar.b() == null) {
                throw new com.umeng.analytics.pro.bq("Cannot write a TUnion with no set value!");
            }
            bpVar.a(baVar.d());
            bpVar.a(baVar.c(baVar.b));
            baVar.a(bpVar);
            bpVar.c();
            bpVar.d();
            bpVar.b();
        }
    }

    public static class b implements com.umeng.analytics.pro.by {
        public b() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.analytics.pro.ba.a b() {
            return new com.umeng.analytics.pro.ba.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.analytics.pro.ba> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.ba baVar) {
            baVar.b = null;
            baVar.a = null;
            short sV = bpVar.v();
            java.lang.Object objA = baVar.a(bpVar, sV);
            baVar.a = objA;
            if (objA != null) {
                baVar.b = (F) baVar.a(sV);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.ba baVar) throws com.umeng.analytics.pro.bq {
            if (baVar.a() == null || baVar.b() == null) {
                throw new com.umeng.analytics.pro.bq("Cannot write a TUnion with no set value!");
            }
            bpVar.a(baVar.b.a());
            baVar.b(bpVar);
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.analytics.pro.ba.c b() {
            return new com.umeng.analytics.pro.ba.c();
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        f1251c = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.analytics.pro.ba.b());
        f1251c.put(com.umeng.analytics.pro.ca.class, new com.umeng.analytics.pro.ba.d());
    }

    public ba() {
        this.b = null;
        this.a = null;
    }

    public ba(F f2, java.lang.Object obj) {
        a((com.umeng.analytics.pro.ba<T, F>) f2, obj);
    }

    public ba(com.umeng.analytics.pro.ba<T, F> baVar) {
        if (!baVar.getClass().equals(com.umeng.analytics.pro.ba.class)) {
            throw new java.lang.ClassCastException();
        }
        this.b = baVar.b;
        this.a = a(baVar.a);
    }

    public static java.lang.Object a(java.lang.Object obj) {
        return obj instanceof com.umeng.analytics.pro.aq ? ((com.umeng.analytics.pro.aq) obj).deepCopy() : obj instanceof java.nio.ByteBuffer ? com.umeng.analytics.pro.ar.d((java.nio.ByteBuffer) obj) : obj instanceof java.util.List ? a((java.util.List) obj) : obj instanceof java.util.Set ? a((java.util.Set) obj) : obj instanceof java.util.Map ? a((java.util.Map<java.lang.Object, java.lang.Object>) obj) : obj;
    }

    public static java.util.List a(java.util.List list) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a(it.next()));
        }
        return arrayList;
    }

    public static java.util.Map a(java.util.Map<java.lang.Object, java.lang.Object> map) {
        java.util.HashMap map2 = new java.util.HashMap();
        for (java.util.Map.Entry<java.lang.Object, java.lang.Object> entry : map.entrySet()) {
            map2.put(a(entry.getKey()), a(entry.getValue()));
        }
        return map2;
    }

    public static java.util.Set a(java.util.Set set) {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(a(it.next()));
        }
        return hashSet;
    }

    public F a() {
        return this.b;
    }

    public abstract F a(short s);

    public java.lang.Object a(int i) {
        return a((com.umeng.analytics.pro.ba<T, F>) a((short) i));
    }

    public java.lang.Object a(F f2) {
        if (f2 == this.b) {
            return b();
        }
        throw new java.lang.IllegalArgumentException("Cannot get the value of field " + f2 + " because union's set field is " + this.b);
    }

    public abstract java.lang.Object a(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.bk bkVar);

    public abstract java.lang.Object a(com.umeng.analytics.pro.bp bpVar, short s);

    public void a(int i, java.lang.Object obj) {
        a((com.umeng.analytics.pro.ba<T, F>) a((short) i), obj);
    }

    public void a(F f2, java.lang.Object obj) {
        b(f2, obj);
        this.b = f2;
        this.a = obj;
    }

    public abstract void a(com.umeng.analytics.pro.bp bpVar);

    public java.lang.Object b() {
        return this.a;
    }

    public abstract void b(F f2, java.lang.Object obj);

    public abstract void b(com.umeng.analytics.pro.bp bpVar);

    public boolean b(int i) {
        return b((com.umeng.analytics.pro.ba<T, F>) a((short) i));
    }

    public boolean b(F f2) {
        return this.b == f2;
    }

    public abstract com.umeng.analytics.pro.bk c(F f2);

    public boolean c() {
        return this.b != null;
    }

    @Override // com.umeng.analytics.pro.aq
    public final void clear() {
        this.b = null;
        this.a = null;
    }

    public abstract com.umeng.analytics.pro.bu d();

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        f1251c.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("<");
        sbO.append(com.umeng.analytics.pro.ba.class.getSimpleName());
        sbO.append(" ");
        if (a() != null) {
            java.lang.Object objB = b();
            sbO.append(c(a()).a);
            sbO.append(":");
            if (objB instanceof java.nio.ByteBuffer) {
                com.umeng.analytics.pro.ar.a((java.nio.ByteBuffer) objB, sbO);
            } else {
                sbO.append(objB.toString());
            }
        }
        sbO.append(">");
        return sbO.toString();
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        f1251c.get(bpVar.D()).b().a(bpVar, this);
    }
}
