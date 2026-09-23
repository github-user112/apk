package d.q.c;

/* loaded from: classes.dex */
public class e implements java.lang.Runnable {
    public final /* synthetic */ java.util.ArrayList a;
    public final /* synthetic */ d.q.c.k b;

    public e(d.q.c.k kVar, java.util.ArrayList arrayList) {
        this.b = kVar;
        this.a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.util.Iterator it = this.a.iterator();
        while (it.hasNext()) {
            androidx.recyclerview.widget.RecyclerView.x xVar = (androidx.recyclerview.widget.RecyclerView.x) it.next();
            d.q.c.k kVar = this.b;
            if (kVar == null) {
                throw null;
            }
            android.view.View view = xVar.a;
            android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            kVar.o.add(xVar);
            viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(kVar.f148c).setListener(new d.q.c.g(kVar, xVar, view, viewPropertyAnimatorAnimate)).start();
        }
        this.a.clear();
        this.b.l.remove(this.a);
    }
}
