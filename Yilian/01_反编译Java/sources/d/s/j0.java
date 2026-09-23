package d.s;

/* loaded from: classes.dex */
public class j0 implements d.s.l0 {
    public final android.os.IBinder a;

    public j0(android.os.IBinder iBinder) {
        this.a = iBinder;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof d.s.j0) && ((d.s.j0) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
