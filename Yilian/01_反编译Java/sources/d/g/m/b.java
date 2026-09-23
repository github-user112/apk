package d.g.m;

/* loaded from: classes.dex */
public abstract class b {
    public d.g.m.b.a a;

    public interface a {
    }

    public b(android.content.Context context) {
    }

    public boolean a() {
        return true;
    }

    public android.view.View b(android.view.MenuItem menuItem) {
        return ((d.b.p.i.j.a) this).b.onCreateActionView();
    }

    public boolean c() {
        return false;
    }

    public void d(d.g.m.b.a aVar) {
        if (this.a != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            sbO.append(getClass().getSimpleName());
            sbO.append(" instance while it is still in use somewhere else?");
            android.util.Log.w("ActionProvider(support)", sbO.toString());
        }
        this.a = aVar;
    }
}
