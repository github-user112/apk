package androidx.activity.result;

/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {
    public java.util.Random a = new java.util.Random();
    public final java.util.Map<java.lang.Integer, java.lang.String> b = new java.util.HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Integer> f7c = new java.util.HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final java.util.Map<java.lang.String, androidx.activity.result.ActivityResultRegistry.d> f8d = new java.util.HashMap();

    /* renamed from: e, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f9e = new java.util.ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public final transient java.util.Map<java.lang.String, androidx.activity.result.ActivityResultRegistry.c<?>> f10f = new java.util.HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Object> f11g = new java.util.HashMap();
    public final android.os.Bundle h = new android.os.Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    public class a<I> extends d.a.e.c<I> {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d.a.e.f.a f14c;

        public a(java.lang.String str, int i, d.a.e.f.a aVar) {
            this.a = str;
            this.b = i;
            this.f14c = aVar;
        }

        @Override // d.a.e.c
        public void a(I i, d.g.e.b bVar) {
            androidx.activity.result.ActivityResultRegistry.this.f9e.add(this.a);
            androidx.activity.result.ActivityResultRegistry.this.b(this.b, this.f14c, i, bVar);
        }

        @Override // d.a.e.c
        public void b() {
            androidx.activity.result.ActivityResultRegistry.this.f(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    public class b<I> extends d.a.e.c<I> {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d.a.e.f.a f16c;

        public b(java.lang.String str, int i, d.a.e.f.a aVar) {
            this.a = str;
            this.b = i;
            this.f16c = aVar;
        }

        @Override // d.a.e.c
        public void a(I i, d.g.e.b bVar) {
            androidx.activity.result.ActivityResultRegistry.this.f9e.add(this.a);
            androidx.activity.result.ActivityResultRegistry.this.b(this.b, this.f16c, i, bVar);
        }

        @Override // d.a.e.c
        public void b() {
            androidx.activity.result.ActivityResultRegistry.this.f(this.a);
        }
    }

    public static class c<O> {
        public final d.a.e.b<O> a;
        public final d.a.e.f.a<?, O> b;

        public c(d.a.e.b<O> bVar, d.a.e.f.a<?, O> aVar) {
            this.a = bVar;
            this.b = aVar;
        }
    }

    public static class d {
        public final d.l.e a;
        public final java.util.ArrayList<d.l.f> b = new java.util.ArrayList<>();

        public d(d.l.e eVar) {
            this.a = eVar;
        }
    }

    public final boolean a(int i, int i2, android.content.Intent intent) {
        d.a.e.b<?> bVar;
        java.lang.String str = this.b.get(java.lang.Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f9e.remove(str);
        androidx.activity.result.ActivityResultRegistry.c<?> cVar = this.f10f.get(str);
        if (cVar != null && (bVar = cVar.a) != null) {
            bVar.a(cVar.b.c(i2, intent));
            return true;
        }
        this.f11g.remove(str);
        this.h.putParcelable(str, new d.a.e.a(i2, intent));
        return true;
    }

    public abstract <I, O> void b(int i, d.a.e.f.a<I, O> aVar, @android.annotation.SuppressLint({"UnknownNullness"}) I i2, d.g.e.b bVar);

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> d.a.e.c<I> c(java.lang.String str, d.a.e.f.a<I, O> aVar, d.a.e.b<O> bVar) {
        int iE = e(str);
        this.f10f.put(str, new androidx.activity.result.ActivityResultRegistry.c<>(bVar, aVar));
        if (this.f11g.containsKey(str)) {
            java.lang.Object obj = this.f11g.get(str);
            this.f11g.remove(str);
            bVar.a(obj);
        }
        d.a.e.a aVar2 = (d.a.e.a) this.h.getParcelable(str);
        if (aVar2 != null) {
            this.h.remove(str);
            bVar.a(aVar.c(aVar2.a, aVar2.b));
        }
        return new androidx.activity.result.ActivityResultRegistry.b(str, iE, aVar);
    }

    public final <I, O> d.a.e.c<I> d(final java.lang.String str, d.l.h hVar, final d.a.e.f.a<I, O> aVar, final d.a.e.b<O> bVar) {
        d.l.e lifecycle = hVar.getLifecycle();
        d.l.i iVar = (d.l.i) lifecycle;
        if (iVar.b.compareTo(d.l.e.b.STARTED) >= 0) {
            throw new java.lang.IllegalStateException("LifecycleOwner " + hVar + " is attempting to register while current state is " + iVar.b + ". LifecycleOwners must call register before they are STARTED.");
        }
        int iE = e(str);
        androidx.activity.result.ActivityResultRegistry.d dVar = this.f8d.get(str);
        if (dVar == null) {
            dVar = new androidx.activity.result.ActivityResultRegistry.d(lifecycle);
        }
        d.l.f fVar = new d.l.f() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // d.l.f
            public void d(d.l.h hVar2, d.l.e.a aVar2) {
                if (!d.l.e.a.ON_START.equals(aVar2)) {
                    if (d.l.e.a.ON_STOP.equals(aVar2)) {
                        androidx.activity.result.ActivityResultRegistry.this.f10f.remove(str);
                        return;
                    } else {
                        if (d.l.e.a.ON_DESTROY.equals(aVar2)) {
                            androidx.activity.result.ActivityResultRegistry.this.f(str);
                            return;
                        }
                        return;
                    }
                }
                androidx.activity.result.ActivityResultRegistry.this.f10f.put(str, new androidx.activity.result.ActivityResultRegistry.c<>(bVar, aVar));
                if (androidx.activity.result.ActivityResultRegistry.this.f11g.containsKey(str)) {
                    java.lang.Object obj = androidx.activity.result.ActivityResultRegistry.this.f11g.get(str);
                    androidx.activity.result.ActivityResultRegistry.this.f11g.remove(str);
                    bVar.a(obj);
                }
                d.a.e.a aVar3 = (d.a.e.a) androidx.activity.result.ActivityResultRegistry.this.h.getParcelable(str);
                if (aVar3 != null) {
                    androidx.activity.result.ActivityResultRegistry.this.h.remove(str);
                    bVar.a(aVar.c(aVar3.a, aVar3.b));
                }
            }
        };
        dVar.a.a(fVar);
        dVar.b.add(fVar);
        this.f8d.put(str, dVar);
        return new androidx.activity.result.ActivityResultRegistry.a(str, iE, aVar);
    }

    public final int e(java.lang.String str) {
        java.lang.Integer num = this.f7c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iNextInt = this.a.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            if (!this.b.containsKey(java.lang.Integer.valueOf(i))) {
                this.b.put(java.lang.Integer.valueOf(i), str);
                this.f7c.put(str, java.lang.Integer.valueOf(i));
                return i;
            }
            iNextInt = this.a.nextInt(2147418112);
        }
    }

    public final void f(java.lang.String str) {
        java.lang.Integer numRemove;
        if (!this.f9e.contains(str) && (numRemove = this.f7c.remove(str)) != null) {
            this.b.remove(numRemove);
        }
        this.f10f.remove(str);
        if (this.f11g.containsKey(str)) {
            java.lang.StringBuilder sbR = e.a.c.a.a.r("Dropping pending result for request ", str, ": ");
            sbR.append(this.f11g.get(str));
            android.util.Log.w("ActivityResultRegistry", sbR.toString());
            this.f11g.remove(str);
        }
        if (this.h.containsKey(str)) {
            java.lang.StringBuilder sbR2 = e.a.c.a.a.r("Dropping pending result for request ", str, ": ");
            sbR2.append(this.h.getParcelable(str));
            android.util.Log.w("ActivityResultRegistry", sbR2.toString());
            this.h.remove(str);
        }
        androidx.activity.result.ActivityResultRegistry.d dVar = this.f8d.get(str);
        if (dVar != null) {
            java.util.Iterator<d.l.f> it = dVar.b.iterator();
            while (it.hasNext()) {
                dVar.a.b(it.next());
            }
            dVar.b.clear();
            this.f8d.remove(str);
        }
    }
}
