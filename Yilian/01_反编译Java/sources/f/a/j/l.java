package f.a.j;

/* loaded from: classes.dex */
public final class l {
    public final f.a.j.k<?>[] a;
    public final e.a.b.d.d.b b;

    public l(f.a.j.k<?>[] kVarArr) {
        this.a = (f.a.j.k[]) kVarArr.clone();
        this.b = new e.a.b.d.d.b(kVarArr.length);
        for (int i = 0; i < kVarArr.length; i++) {
            this.b.g(i, kVarArr[i].b);
        }
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof f.a.j.l) && java.util.Arrays.equals(((f.a.j.l) obj).a, this.a);
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(this.a);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i = 0; i < this.a.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.a[i]);
        }
        return sb.toString();
    }
}
