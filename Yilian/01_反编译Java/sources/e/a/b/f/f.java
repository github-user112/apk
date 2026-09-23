package e.a.b.f;

/* loaded from: classes.dex */
public final class f extends e.a.b.f.i {

    /* renamed from: e, reason: collision with root package name */
    public static final e.a.b.f.f f2540e;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f2541c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2542d;

    static {
        e.a.b.f.f fVar = new e.a.b.f.f(0);
        f2540e = fVar;
        fVar.a = false;
    }

    public f() {
        this(4);
    }

    public f(int i) {
        super(true);
        try {
            this.b = new int[i];
            this.f2541c = 0;
            this.f2542d = true;
        } catch (java.lang.NegativeArraySizeException unused) {
            throw new java.lang.IllegalArgumentException("size < 0");
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.a.b.f.f)) {
            return false;
        }
        e.a.b.f.f fVar = (e.a.b.f.f) obj;
        if (this.f2542d != fVar.f2542d || this.f2541c != fVar.f2541c) {
            return false;
        }
        for (int i = 0; i < this.f2541c; i++) {
            if (this.b[i] != fVar.b[i]) {
                return false;
            }
        }
        return true;
    }

    public void f(int i) {
        d();
        int i2 = this.f2541c;
        int[] iArr = this.b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 10];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.b = iArr2;
        }
        int[] iArr3 = this.b;
        int i3 = this.f2541c;
        int i4 = i3 + 1;
        this.f2541c = i4;
        iArr3[i3] = i;
        if (!this.f2542d || i4 <= 1) {
            return;
        }
        this.f2542d = i >= iArr3[i4 + (-2)];
    }

    public int g(int i) {
        if (i >= this.f2541c) {
            throw new java.lang.IndexOutOfBoundsException("n >= size()");
        }
        try {
            return this.b[i];
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.lang.IndexOutOfBoundsException("n < 0");
        }
    }

    public void h(int i, int i2) {
        d();
        if (i >= this.f2541c) {
            throw new java.lang.IndexOutOfBoundsException("n >= size()");
        }
        try {
            this.b[i] = i2;
            this.f2542d = false;
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("n < 0");
            }
        }
    }

    public int hashCode() {
        int i = 0;
        for (int i2 = 0; i2 < this.f2541c; i2++) {
            i = (i * 31) + this.b[i2];
        }
        return i;
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer((this.f2541c * 5) + 10);
        stringBuffer.append('{');
        for (int i = 0; i < this.f2541c; i++) {
            if (i != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.b[i]);
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
