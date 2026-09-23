package d.e;

/* loaded from: classes.dex */
public class i<E> implements java.lang.Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f1913e = new java.lang.Object();
    public boolean a = false;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Object[] f1914c;

    /* renamed from: d, reason: collision with root package name */
    public int f1915d;

    public i() {
        int iE = d.e.d.e(10);
        this.b = new int[iE];
        this.f1914c = new java.lang.Object[iE];
    }

    public void a(int i, E e2) {
        int i2 = this.f1915d;
        if (i2 != 0 && i <= this.b[i2 - 1]) {
            e(i, e2);
            return;
        }
        if (this.a && this.f1915d >= this.b.length) {
            c();
        }
        int i3 = this.f1915d;
        if (i3 >= this.b.length) {
            int iE = d.e.d.e(i3 + 1);
            int[] iArr = new int[iE];
            java.lang.Object[] objArr = new java.lang.Object[iE];
            int[] iArr2 = this.b;
            java.lang.System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            java.lang.Object[] objArr2 = this.f1914c;
            java.lang.System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.b = iArr;
            this.f1914c = objArr;
        }
        this.b[i3] = i;
        this.f1914c[i3] = e2;
        this.f1915d = i3 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public d.e.i<E> clone() {
        try {
            d.e.i<E> iVar = (d.e.i) super.clone();
            iVar.b = (int[]) this.b.clone();
            iVar.f1914c = (java.lang.Object[]) this.f1914c.clone();
            return iVar;
        } catch (java.lang.CloneNotSupportedException e2) {
            throw new java.lang.AssertionError(e2);
        }
    }

    public final void c() {
        int i = this.f1915d;
        int[] iArr = this.b;
        java.lang.Object[] objArr = this.f1914c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            java.lang.Object obj = objArr[i3];
            if (obj != f1913e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.a = false;
        this.f1915d = i2;
    }

    public E d(int i, E e2) {
        int iA = d.e.d.a(this.b, this.f1915d, i);
        if (iA >= 0) {
            java.lang.Object[] objArr = this.f1914c;
            if (objArr[iA] != f1913e) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public void e(int i, E e2) {
        int iA = d.e.d.a(this.b, this.f1915d, i);
        if (iA >= 0) {
            this.f1914c[iA] = e2;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.f1915d) {
            java.lang.Object[] objArr = this.f1914c;
            if (objArr[iA2] == f1913e) {
                this.b[iA2] = i;
                objArr[iA2] = e2;
                return;
            }
        }
        if (this.a && this.f1915d >= this.b.length) {
            c();
            iA2 = d.e.d.a(this.b, this.f1915d, i) ^ (-1);
        }
        int i2 = this.f1915d;
        if (i2 >= this.b.length) {
            int iE = d.e.d.e(i2 + 1);
            int[] iArr = new int[iE];
            java.lang.Object[] objArr2 = new java.lang.Object[iE];
            int[] iArr2 = this.b;
            java.lang.System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            java.lang.Object[] objArr3 = this.f1914c;
            java.lang.System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = iArr;
            this.f1914c = objArr2;
        }
        int i3 = this.f1915d;
        if (i3 - iA2 != 0) {
            int[] iArr3 = this.b;
            int i4 = iA2 + 1;
            java.lang.System.arraycopy(iArr3, iA2, iArr3, i4, i3 - iA2);
            java.lang.Object[] objArr4 = this.f1914c;
            java.lang.System.arraycopy(objArr4, iA2, objArr4, i4, this.f1915d - iA2);
        }
        this.b[iA2] = i;
        this.f1914c[iA2] = e2;
        this.f1915d++;
    }

    public int f() {
        if (this.a) {
            c();
        }
        return this.f1915d;
    }

    public E g(int i) {
        if (this.a) {
            c();
        }
        return (E) this.f1914c[i];
    }

    public java.lang.String toString() {
        if (f() <= 0) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f1915d * 28);
        sb.append('{');
        for (int i = 0; i < this.f1915d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            if (this.a) {
                c();
            }
            sb.append(this.b[i]);
            sb.append('=');
            E eG = g(i);
            if (eG != this) {
                sb.append(eG);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
