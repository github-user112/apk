package d.g.l;

/* JADX WARN: Unexpected interfaces in signature: [d.g.l.b<T>] */
/* loaded from: classes.dex */
public class b<T> {
    public final java.lang.Object[] a;
    public int b;

    public b(int i) {
        if (i <= 0) {
            throw new java.lang.IllegalArgumentException("The max pool size must be > 0");
        }
        this.a = new java.lang.Object[i];
    }

    public T a() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        java.lang.Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.b = i - 1;
        return t;
    }

    public boolean b(T t) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.b) {
                z = false;
                break;
            }
            if (this.a[i] == t) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            throw new java.lang.IllegalStateException("Already in the pool!");
        }
        int i2 = this.b;
        java.lang.Object[] objArr = this.a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = t;
        this.b = i2 + 1;
        return true;
    }
}
