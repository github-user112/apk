package d.e;

/* loaded from: classes.dex */
public class e<E> implements java.lang.Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f1894e = new java.lang.Object();
    public boolean a = false;
    public long[] b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Object[] f1895c;

    /* renamed from: d, reason: collision with root package name */
    public int f1896d;

    public e() {
        int iF = d.e.d.f(10);
        this.b = new long[iF];
        this.f1895c = new java.lang.Object[iF];
    }

    public void a(long j, E e2) {
        int i = this.f1896d;
        if (i != 0 && j <= this.b[i - 1]) {
            g(j, e2);
            return;
        }
        if (this.a && this.f1896d >= this.b.length) {
            d();
        }
        int i2 = this.f1896d;
        if (i2 >= this.b.length) {
            int iF = d.e.d.f(i2 + 1);
            long[] jArr = new long[iF];
            java.lang.Object[] objArr = new java.lang.Object[iF];
            long[] jArr2 = this.b;
            java.lang.System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            java.lang.Object[] objArr2 = this.f1895c;
            java.lang.System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.b = jArr;
            this.f1895c = objArr;
        }
        this.b[i2] = j;
        this.f1895c[i2] = e2;
        this.f1896d = i2 + 1;
    }

    public void b() {
        int i = this.f1896d;
        java.lang.Object[] objArr = this.f1895c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1896d = 0;
        this.a = false;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public d.e.e<E> clone() {
        try {
            d.e.e<E> eVar = (d.e.e) super.clone();
            eVar.b = (long[]) this.b.clone();
            eVar.f1895c = (java.lang.Object[]) this.f1895c.clone();
            return eVar;
        } catch (java.lang.CloneNotSupportedException e2) {
            throw new java.lang.AssertionError(e2);
        }
    }

    public final void d() {
        int i = this.f1896d;
        long[] jArr = this.b;
        java.lang.Object[] objArr = this.f1895c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            java.lang.Object obj = objArr[i3];
            if (obj != f1894e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.a = false;
        this.f1896d = i2;
    }

    public E e(long j) {
        return f(j, null);
    }

    public E f(long j, E e2) {
        int iB = d.e.d.b(this.b, this.f1896d, j);
        if (iB >= 0) {
            java.lang.Object[] objArr = this.f1895c;
            if (objArr[iB] != f1894e) {
                return (E) objArr[iB];
            }
        }
        return e2;
    }

    public void g(long j, E e2) {
        int iB = d.e.d.b(this.b, this.f1896d, j);
        if (iB >= 0) {
            this.f1895c[iB] = e2;
            return;
        }
        int iB2 = iB ^ (-1);
        if (iB2 < this.f1896d) {
            java.lang.Object[] objArr = this.f1895c;
            if (objArr[iB2] == f1894e) {
                this.b[iB2] = j;
                objArr[iB2] = e2;
                return;
            }
        }
        if (this.a && this.f1896d >= this.b.length) {
            d();
            iB2 = d.e.d.b(this.b, this.f1896d, j) ^ (-1);
        }
        int i = this.f1896d;
        if (i >= this.b.length) {
            int iF = d.e.d.f(i + 1);
            long[] jArr = new long[iF];
            java.lang.Object[] objArr2 = new java.lang.Object[iF];
            long[] jArr2 = this.b;
            java.lang.System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            java.lang.Object[] objArr3 = this.f1895c;
            java.lang.System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = jArr;
            this.f1895c = objArr2;
        }
        int i2 = this.f1896d;
        if (i2 - iB2 != 0) {
            long[] jArr3 = this.b;
            int i3 = iB2 + 1;
            java.lang.System.arraycopy(jArr3, iB2, jArr3, i3, i2 - iB2);
            java.lang.Object[] objArr4 = this.f1895c;
            java.lang.System.arraycopy(objArr4, iB2, objArr4, i3, this.f1896d - iB2);
        }
        this.b[iB2] = j;
        this.f1895c[iB2] = e2;
        this.f1896d++;
    }

    public int h() {
        if (this.a) {
            d();
        }
        return this.f1896d;
    }

    public E i(int i) {
        if (this.a) {
            d();
        }
        return (E) this.f1895c[i];
    }

    public java.lang.String toString() {
        if (h() <= 0) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f1896d * 28);
        sb.append('{');
        for (int i = 0; i < this.f1896d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.a) {
                d();
            }
            sb.append(this.b[i]);
            sb.append('=');
            E eI = i(i);
            if (eI != this) {
                sb.append(eI);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
