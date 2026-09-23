package d.q.c;

/* loaded from: classes.dex */
public class b {
    public final d.q.c.b.InterfaceC0057b a;
    public final d.q.c.b.a b = new d.q.c.b.a();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.List<android.view.View> f2190c = new java.util.ArrayList();

    public static class a {
        public long a = 0;
        public d.q.c.b.a b;

        public void a(int i) {
            if (i < 64) {
                this.a &= (1 << i) ^ (-1);
                return;
            }
            d.q.c.b.a aVar = this.b;
            if (aVar != null) {
                aVar.a(i - 64);
            }
        }

        public int b(int i) {
            long j;
            d.q.c.b.a aVar = this.b;
            if (aVar == null) {
                if (i >= 64) {
                    j = this.a;
                }
                return java.lang.Long.bitCount(j);
            }
            if (i >= 64) {
                return java.lang.Long.bitCount(this.a) + aVar.b(i - 64);
            }
            j = this.a & ((1 << i) - 1);
            return java.lang.Long.bitCount(j);
        }

        public final void c() {
            if (this.b == null) {
                this.b = new d.q.c.b.a();
            }
        }

        public boolean d(int i) {
            if (i < 64) {
                return (this.a & (1 << i)) != 0;
            }
            c();
            return this.b.d(i - 64);
        }

        public boolean e(int i) {
            if (i >= 64) {
                c();
                return this.b.e(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.a & j) != 0;
            long j2 = this.a & (j ^ (-1));
            this.a = j2;
            long j3 = j - 1;
            this.a = (j2 & j3) | java.lang.Long.rotateRight((j3 ^ (-1)) & j2, 1);
            d.q.c.b.a aVar = this.b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    g(63);
                }
                this.b.e(0);
            }
            return z;
        }

        public void f() {
            this.a = 0L;
            d.q.c.b.a aVar = this.b;
            if (aVar != null) {
                aVar.f();
            }
        }

        public void g(int i) {
            if (i < 64) {
                this.a |= 1 << i;
            } else {
                c();
                this.b.g(i - 64);
            }
        }

        public java.lang.String toString() {
            if (this.b == null) {
                return java.lang.Long.toBinaryString(this.a);
            }
            return this.b.toString() + "xx" + java.lang.Long.toBinaryString(this.a);
        }
    }

    /* renamed from: d.q.c.b$b, reason: collision with other inner class name */
    public interface InterfaceC0057b {
    }

    public b(d.q.c.b.InterfaceC0057b interfaceC0057b) {
        this.a = interfaceC0057b;
    }

    public void a(int i) {
        androidx.recyclerview.widget.RecyclerView.x xVarU;
        int iD = d(i);
        this.b.e(iD);
        d.q.c.s sVar = (d.q.c.s) this.a;
        android.view.View childAt = sVar.a.getChildAt(iD);
        if (childAt != null && (xVarU = androidx.recyclerview.widget.RecyclerView.u(childAt)) != null) {
            if (xVarU.k() && !xVarU.r()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(xVarU);
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.H(sVar.a, sb));
            }
            xVarU.b(256);
        }
        sVar.a.detachViewFromParent(iD);
    }

    public android.view.View b(int i) {
        return ((d.q.c.s) this.a).a(d(i));
    }

    public int c() {
        return ((d.q.c.s) this.a).b() - this.f2190c.size();
    }

    public final int d(int i) {
        if (i < 0) {
            return -1;
        }
        int iB = ((d.q.c.s) this.a).b();
        int i2 = i;
        while (i2 < iB) {
            int iB2 = i - (i2 - this.b.b(i2));
            if (iB2 == 0) {
                while (this.b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB2;
        }
        return -1;
    }

    public android.view.View e(int i) {
        return ((d.q.c.s) this.a).a.getChildAt(i);
    }

    public int f() {
        return ((d.q.c.s) this.a).b();
    }

    public int g(android.view.View view) {
        int iIndexOfChild = ((d.q.c.s) this.a).a.indexOfChild(view);
        if (iIndexOfChild == -1 || this.b.d(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - this.b.b(iIndexOfChild);
    }

    public boolean h(android.view.View view) {
        return this.f2190c.contains(view);
    }

    public final boolean i(android.view.View view) {
        if (!this.f2190c.remove(view)) {
            return false;
        }
        d.q.c.s sVar = (d.q.c.s) this.a;
        if (sVar == null) {
            throw null;
        }
        androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(view);
        if (xVarU == null) {
            return true;
        }
        sVar.a.N(xVarU, xVarU.o);
        xVarU.o = 0;
        return true;
    }

    public java.lang.String toString() {
        return this.b.toString() + ", hidden list:" + this.f2190c.size();
    }
}
