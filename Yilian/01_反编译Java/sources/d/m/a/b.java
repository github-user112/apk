package d.m.a;

/* loaded from: classes.dex */
public class b extends d.m.a.a {
    public final d.l.h a;
    public final d.m.a.b.c b;

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<D>] */
    public static class a<D> extends d.l.m<D> {
        public d.l.h k;
        public d.m.a.b.C0055b<D> l;

        @Override // androidx.lifecycle.LiveData
        public void d() {
            throw null;
        }

        @Override // androidx.lifecycle.LiveData
        public void e() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void f(d.l.n<? super D> nVar) {
            super.f(nVar);
            this.k = null;
            this.l = null;
        }

        @Override // d.l.m
        public void g(D d2) {
            super.g(d2);
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sb.append(" #");
            sb.append(0);
            sb.append(" : ");
            d.b.k.r.b(null, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: d.m.a.b$b, reason: collision with other inner class name */
    public static class C0055b<D> implements d.l.n<D> {
    }

    public static class c extends d.l.s {

        /* renamed from: d, reason: collision with root package name */
        public static final d.l.u f2176d = new d.m.a.b.c.a();

        /* renamed from: c, reason: collision with root package name */
        public d.e.i<d.m.a.b.a> f2177c = new d.e.i<>();

        public static class a implements d.l.u {
            @Override // d.l.u
            public <T extends d.l.s> T a(java.lang.Class<T> cls) {
                return new d.m.a.b.c();
            }
        }

        @Override // d.l.s
        public void a() {
            if (this.f2177c.f() > 0) {
                this.f2177c.g(0);
                throw null;
            }
            d.e.i<d.m.a.b.a> iVar = this.f2177c;
            int i = iVar.f1915d;
            java.lang.Object[] objArr = iVar.f1914c;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            iVar.f1915d = 0;
            iVar.a = false;
        }
    }

    public b(d.l.h hVar, d.l.y yVar) {
        this.a = hVar;
        java.lang.Object obj = d.m.a.b.c.f2176d;
        java.lang.String canonicalName = d.m.a.b.c.class.getCanonicalName();
        if (canonicalName == null) {
            throw new java.lang.IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        java.lang.String strE = e.a.c.a.a.e("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
        d.l.s sVarC = yVar.a.get(strE);
        if (!d.m.a.b.c.class.isInstance(sVarC)) {
            sVarC = obj instanceof d.l.v ? ((d.l.v) obj).c(strE, d.m.a.b.c.class) : ((d.m.a.b.c.a) obj).a(d.m.a.b.c.class);
            d.l.s sVarPut = yVar.a.put(strE, sVarC);
            if (sVarPut != null) {
                sVarPut.a();
            }
        } else if (obj instanceof d.l.x) {
            ((d.l.x) obj).b(sVarC);
        }
        this.b = (d.m.a.b.c) sVarC;
    }

    @Override // d.m.a.a
    @java.lang.Deprecated
    public void a(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        d.m.a.b.c cVar = this.b;
        if (cVar.f2177c.f() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            java.lang.String str2 = str + "    ";
            if (cVar.f2177c.f() > 0) {
                d.m.a.b.a aVarG = cVar.f2177c.g(0);
                printWriter.print(str);
                printWriter.print("  #");
                d.e.i<d.m.a.b.a> iVar = cVar.f2177c;
                if (iVar.a) {
                    iVar.c();
                }
                printWriter.print(iVar.b[0]);
                printWriter.print(": ");
                printWriter.println(aVarG.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                printWriter.println((java.lang.Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println((java.lang.Object) null);
                throw null;
            }
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(" in ");
        d.b.k.r.b(this.a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
