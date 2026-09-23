package d.q.c;

/* loaded from: classes.dex */
public class a implements d.q.c.o.a {

    /* renamed from: d, reason: collision with root package name */
    public final d.q.c.a.InterfaceC0056a f2184d;
    public d.g.l.b<d.q.c.a.b> a = new d.g.l.b<>(30);
    public final java.util.ArrayList<d.q.c.a.b> b = new java.util.ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<d.q.c.a.b> f2183c = new java.util.ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public int f2187g = 0;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2185e = false;

    /* renamed from: f, reason: collision with root package name */
    public final d.q.c.o f2186f = new d.q.c.o(this);

    /* renamed from: d.q.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0056a {
    }

    public static class b {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.Object f2188c;

        /* renamed from: d, reason: collision with root package name */
        public int f2189d;

        public b(int i, int i2, int i3, java.lang.Object obj) {
            this.a = i;
            this.b = i2;
            this.f2189d = i3;
            this.f2188c = obj;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.q.c.a.b.class != obj.getClass()) {
                return false;
            }
            d.q.c.a.b bVar = (d.q.c.a.b) obj;
            int i = this.a;
            if (i != bVar.a) {
                return false;
            }
            if (i == 8 && java.lang.Math.abs(this.f2189d - this.b) == 1 && this.f2189d == bVar.b && this.b == bVar.f2189d) {
                return true;
            }
            if (this.f2189d != bVar.f2189d || this.b != bVar.b) {
                return false;
            }
            java.lang.Object obj2 = this.f2188c;
            java.lang.Object obj3 = bVar.f2188c;
            if (obj2 != null) {
                if (!obj2.equals(obj3)) {
                    return false;
                }
            } else if (obj3 != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.a * 31) + this.b) * 31) + this.f2189d;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sb.append("[");
            int i = this.a;
            sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
            sb.append(",s:");
            sb.append(this.b);
            sb.append("c:");
            sb.append(this.f2189d);
            sb.append(",p:");
            sb.append(this.f2188c);
            sb.append("]");
            return sb.toString();
        }
    }

    public a(d.q.c.a.InterfaceC0056a interfaceC0056a) {
        this.f2184d = interfaceC0056a;
    }

    public final boolean a(int i) {
        int size = this.f2183c.size();
        for (int i2 = 0; i2 < size; i2++) {
            d.q.c.a.b bVar = this.f2183c.get(i2);
            int i3 = bVar.a;
            if (i3 == 8) {
                if (f(bVar.f2189d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.b;
                int i5 = bVar.f2189d + i4;
                while (i4 < i5) {
                    if (f(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void b() {
        int size = this.f2183c.size();
        for (int i = 0; i < size; i++) {
            ((d.q.c.t) this.f2184d).a(this.f2183c.get(i));
        }
        l(this.f2183c);
        this.f2187g = 0;
    }

    public void c() {
        b();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            d.q.c.a.b bVar = this.b.get(i);
            int i2 = bVar.a;
            if (i2 == 1) {
                ((d.q.c.t) this.f2184d).a(bVar);
                ((d.q.c.t) this.f2184d).d(bVar.b, bVar.f2189d);
            } else if (i2 == 2) {
                ((d.q.c.t) this.f2184d).a(bVar);
                d.q.c.a.InterfaceC0056a interfaceC0056a = this.f2184d;
                int i3 = bVar.b;
                int i4 = bVar.f2189d;
                d.q.c.t tVar = (d.q.c.t) interfaceC0056a;
                tVar.a.B(i3, i4, true);
                androidx.recyclerview.widget.RecyclerView recyclerView = tVar.a;
                recyclerView.j0 = true;
                recyclerView.g0.f169c += i4;
            } else if (i2 == 4) {
                ((d.q.c.t) this.f2184d).a(bVar);
                ((d.q.c.t) this.f2184d).c(bVar.b, bVar.f2189d, bVar.f2188c);
            } else if (i2 == 8) {
                ((d.q.c.t) this.f2184d).a(bVar);
                ((d.q.c.t) this.f2184d).e(bVar.b, bVar.f2189d);
            }
        }
        l(this.b);
        this.f2187g = 0;
    }

    public final void d(d.q.c.a.b bVar) {
        int i;
        int i2 = bVar.a;
        if (i2 == 1 || i2 == 8) {
            throw new java.lang.IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iM = m(bVar.b, i2);
        int i3 = bVar.b;
        int i4 = bVar.a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new java.lang.IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f2189d; i6++) {
            int iM2 = m((i * i6) + bVar.b, bVar.a);
            int i7 = bVar.a;
            if (i7 == 2 ? iM2 == iM : i7 == 4 && iM2 == iM + 1) {
                i5++;
            } else {
                d.q.c.a.b bVarH = h(bVar.a, iM, i5, bVar.f2188c);
                e(bVarH, i3);
                if (!this.f2185e) {
                    bVarH.f2188c = null;
                    this.a.b(bVarH);
                }
                if (bVar.a == 4) {
                    i3 += i5;
                }
                iM = iM2;
                i5 = 1;
            }
        }
        java.lang.Object obj = bVar.f2188c;
        if (!this.f2185e) {
            bVar.f2188c = null;
            this.a.b(bVar);
        }
        if (i5 > 0) {
            d.q.c.a.b bVarH2 = h(bVar.a, iM, i5, obj);
            e(bVarH2, i3);
            if (this.f2185e) {
                return;
            }
            bVarH2.f2188c = null;
            this.a.b(bVarH2);
        }
    }

    public void e(d.q.c.a.b bVar, int i) {
        ((d.q.c.t) this.f2184d).a(bVar);
        int i2 = bVar.a;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new java.lang.IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            ((d.q.c.t) this.f2184d).c(i, bVar.f2189d, bVar.f2188c);
            return;
        }
        d.q.c.a.InterfaceC0056a interfaceC0056a = this.f2184d;
        int i3 = bVar.f2189d;
        d.q.c.t tVar = (d.q.c.t) interfaceC0056a;
        tVar.a.B(i, i3, true);
        androidx.recyclerview.widget.RecyclerView recyclerView = tVar.a;
        recyclerView.j0 = true;
        recyclerView.g0.f169c += i3;
    }

    public int f(int i, int i2) {
        int size = this.f2183c.size();
        while (i2 < size) {
            d.q.c.a.b bVar = this.f2183c.get(i2);
            int i3 = bVar.a;
            if (i3 == 8) {
                int i4 = bVar.b;
                if (i4 == i) {
                    i = bVar.f2189d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.f2189d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.f2189d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.f2189d;
                }
            }
            i2++;
        }
        return i;
    }

    public boolean g() {
        return this.b.size() > 0;
    }

    public d.q.c.a.b h(int i, int i2, int i3, java.lang.Object obj) {
        d.q.c.a.b bVarA = this.a.a();
        if (bVarA == null) {
            return new d.q.c.a.b(i, i2, i3, obj);
        }
        bVarA.a = i;
        bVarA.b = i2;
        bVarA.f2189d = i3;
        bVarA.f2188c = obj;
        return bVarA;
    }

    public final void i(d.q.c.a.b bVar) {
        this.f2183c.add(bVar);
        int i = bVar.a;
        if (i == 1) {
            ((d.q.c.t) this.f2184d).d(bVar.b, bVar.f2189d);
            return;
        }
        if (i == 2) {
            d.q.c.t tVar = (d.q.c.t) this.f2184d;
            tVar.a.B(bVar.b, bVar.f2189d, false);
            tVar.a.j0 = true;
            return;
        }
        if (i == 4) {
            ((d.q.c.t) this.f2184d).c(bVar.b, bVar.f2189d, bVar.f2188c);
        } else if (i == 8) {
            ((d.q.c.t) this.f2184d).e(bVar.b, bVar.f2189d);
        } else {
            throw new java.lang.IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0196 A[PHI: r6
  0x0196: PHI (r6v29 int) = (r6v23 int), (r6v33 int) binds: [B:105:0x0194, B:92:0x016a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x01ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j() {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.q.c.a.j():void");
    }

    public void k(d.q.c.a.b bVar) {
        if (this.f2185e) {
            return;
        }
        bVar.f2188c = null;
        this.a.b(bVar);
    }

    public void l(java.util.List<d.q.c.a.b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            k(list.get(i));
        }
        list.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.q.c.a.m(int, int):int");
    }
}
