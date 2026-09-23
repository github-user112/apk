package e.a.b.d.b;

/* loaded from: classes.dex */
public final class a implements e.a.b.f.g {
    public final int a;
    public final e.a.b.d.b.f b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.f.f f2476c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2477d;

    public a(int i, e.a.b.d.b.f fVar, e.a.b.f.f fVar2, int i2) {
        int i3;
        int i4;
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("label < 0");
        }
        try {
            fVar.e();
            int length = fVar.b.length;
            if (length == 0) {
                throw new java.lang.IllegalArgumentException("insns.size() == 0");
            }
            int i5 = length - 2;
            while (true) {
                if (i5 < 0) {
                    if (fVar.i(length - 1).a.f2495e == 1) {
                        throw new java.lang.IllegalArgumentException("insns does not end with a branch or throwing instruction");
                    }
                    try {
                        fVar2.e();
                        if (i2 < -1) {
                            throw new java.lang.IllegalArgumentException("primarySuccessor < -1");
                        }
                        if (i2 >= 0) {
                            int i6 = fVar2.f2541c;
                            if (!fVar2.f2542d) {
                                i3 = 0;
                                while (true) {
                                    if (i3 >= i6) {
                                        i3 = -i6;
                                        break;
                                    } else if (fVar2.b[i3] == i2) {
                                        break;
                                    } else {
                                        i3++;
                                    }
                                }
                            } else {
                                i3 = i6;
                                int i7 = -1;
                                while (i3 > i7 + 1) {
                                    int i8 = ((i3 - i7) >> 1) + i7;
                                    if (i2 <= fVar2.b[i8]) {
                                        i3 = i8;
                                    } else {
                                        i7 = i8;
                                    }
                                }
                                if (i3 == i6) {
                                    i4 = -i6;
                                } else if (i2 != fVar2.b[i3]) {
                                    i4 = -i3;
                                }
                                i3 = i4 - 1;
                            }
                            if (!((i3 >= 0 ? i3 : -1) >= 0)) {
                                throw new java.lang.IllegalArgumentException("primarySuccessor " + i2 + " not in successors " + fVar2);
                            }
                        }
                        this.a = i;
                        this.b = fVar;
                        this.f2476c = fVar2;
                        this.f2477d = i2;
                        return;
                    } catch (java.lang.NullPointerException unused) {
                        throw new java.lang.NullPointerException("successors == null");
                    }
                }
                if (fVar.i(i5).a.f2495e != 1) {
                    throw new java.lang.IllegalArgumentException("insns[" + i5 + "] is a branch or can throw");
                }
                i5--;
            }
        } catch (java.lang.NullPointerException unused2) {
            throw new java.lang.NullPointerException("insns == null");
        }
    }

    @Override // e.a.b.f.g
    public int a() {
        return this.a;
    }

    public e.a.b.d.b.e b() {
        return this.b.i(r0.b.length - 1);
    }

    public boolean equals(java.lang.Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return java.lang.System.identityHashCode(this);
    }

    public java.lang.String toString() {
        return '{' + d.s.y.e0(this.a) + '}';
    }
}
