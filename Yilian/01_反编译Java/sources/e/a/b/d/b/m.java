package e.a.b.d.b;

/* loaded from: classes.dex */
public final class m extends e.a.b.f.i {
    public final e.a.b.d.b.k[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f2492c;

    public m(int i) {
        super(i != 0);
        this.b = new e.a.b.d.b.k[i];
        this.f2492c = 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof e.a.b.d.b.m)) {
            return false;
        }
        e.a.b.d.b.m mVar = (e.a.b.d.b.m) obj;
        e.a.b.d.b.k[] kVarArr = mVar.b;
        int length = this.b.length;
        if (length != kVarArr.length || i() != mVar.i()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVar = this.b[i];
            java.lang.Object obj2 = kVarArr[i];
            if (kVar != obj2 && (kVar == null || !kVar.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public e.a.b.d.b.k f(int i) {
        try {
            return this.b[i];
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.lang.IllegalArgumentException("bogus reg");
        }
    }

    public void g(e.a.b.d.b.k kVar) {
        int i;
        e.a.b.d.b.k kVar2;
        d();
        if (kVar == null) {
            throw new java.lang.NullPointerException("spec == null");
        }
        this.f2492c = -1;
        try {
            int i2 = kVar.a;
            this.b[i2] = kVar;
            if (i2 > 0 && (kVar2 = this.b[i2 - 1]) != null && kVar2.h() == 2) {
                this.b[i] = null;
            }
            if (kVar.h() == 2) {
                this.b[i2 + 1] = null;
            }
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.lang.IllegalArgumentException("spec.getReg() out of range");
        }
    }

    public void h(e.a.b.d.b.k kVar) {
        try {
            this.b[kVar.a] = null;
            this.f2492c = -1;
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.lang.IllegalArgumentException("bogus reg");
        }
    }

    public int hashCode() {
        int length = this.b.length;
        int iHashCode = 0;
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVar = this.b[i];
            iHashCode = (iHashCode * 31) + (kVar == null ? 0 : kVar.hashCode());
        }
        return iHashCode;
    }

    public int i() {
        int i = this.f2492c;
        if (i >= 0) {
            return i;
        }
        int length = this.b.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.b[i3] != null) {
                i2++;
            }
        }
        this.f2492c = i2;
        return i2;
    }

    public java.lang.String toString() {
        int length = this.b.length;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(length * 25);
        stringBuffer.append('{');
        boolean z = false;
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVar = this.b[i];
            if (kVar != null) {
                if (z) {
                    stringBuffer.append(", ");
                } else {
                    z = true;
                }
                stringBuffer.append(kVar);
            }
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
