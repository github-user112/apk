package e.a.b.f;

/* loaded from: classes.dex */
public class i {
    public boolean a;

    public i(boolean z) {
        this.a = z;
    }

    public final void d() {
        if (!this.a) {
            throw new e.a.b.f.j("immutable instance");
        }
    }

    public final void e() {
        if (this.a) {
            throw new e.a.b.f.j("mutable instance");
        }
    }
}
