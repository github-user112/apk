package d.e;

import d.e.g.b;
import d.e.g.c;
import d.e.g.e;

/* loaded from: classes.dex */
public class a<K, V> extends d.e.h<K, V> implements java.util.Map<K, V> {
    public d.e.g<K, V> h;

    /* renamed from: d.e.a$a, reason: collision with other inner class name */
    public class C0042a extends d.e.g<K, V> {
        public C0042a() {
        }

        @Override // d.e.g
        public void a() {
            d.e.a.this.clear();
        }

        @Override // d.e.g
        public java.lang.Object b(int i, int i2) {
            return d.e.a.this.b[(i << 1) + i2];
        }

        @Override // d.e.g
        public java.util.Map<K, V> c() {
            return d.e.a.this;
        }

        @Override // d.e.g
        public int d() {
            return d.e.a.this.f1912c;
        }

        @Override // d.e.g
        public int e(java.lang.Object obj) {
            return d.e.a.this.e(obj);
        }

        @Override // d.e.g
        public int f(java.lang.Object obj) {
            return d.e.a.this.g(obj);
        }

        @Override // d.e.g
        public void g(K k, V v) {
            d.e.a.this.put(k, v);
        }

        @Override // d.e.g
        public void h(int i) {
            d.e.a.this.i(i);
        }

        @Override // d.e.g
        public V i(int i, V v) {
            int i2 = (i << 1) + 1;
            java.lang.Object[] objArr = d.e.a.this.b;
            V v2 = (V) objArr[i2];
            objArr[i2] = v;
            return v2;
        }
    }

    public a() {
    }

    public a(int i) {
        super(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(d.e.h hVar) {
        if (hVar != null) {
            int i = hVar.f1912c;
            b(this.f1912c + i);
            if (this.f1912c != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(hVar.h(i2), hVar.k(i2));
                }
            } else if (i > 0) {
                java.lang.System.arraycopy(hVar.a, 0, this.a, 0, i);
                java.lang.System.arraycopy(hVar.b, 0, this.b, 0, i << 1);
                this.f1912c = i;
            }
        }
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        d.e.g<K, V> gVarL = l();
        if (gVarL.a == null) {
            gVarL.a = gVarL.new b();
        }
        return gVarL.a;
    }

    @Override // java.util.Map
    public java.util.Set<K> keySet() {
        d.e.g<K, V> gVarL = l();
        if (gVarL.b == null) {
            gVarL.b = gVarL.new c();
        }
        return gVarL.b;
    }

    public final d.e.g<K, V> l() {
        if (this.h == null) {
            this.h = new d.e.a.C0042a();
        }
        return this.h;
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        b(map.size() + this.f1912c);
        for (java.util.Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public java.util.Collection<V> values() {
        d.e.g<K, V> gVarL = l();
        if (gVarL.f1902c == null) {
            gVarL.f1902c = gVarL.new e();
        }
        return gVarL.f1902c;
    }
}
