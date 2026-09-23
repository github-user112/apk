package d.s;

/* loaded from: classes.dex */
public class k0 implements d.s.l0 {
    public final android.view.WindowId a;

    public k0(android.view.View view) {
        this.a = view.getWindowId();
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof d.s.k0) && ((d.s.k0) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
