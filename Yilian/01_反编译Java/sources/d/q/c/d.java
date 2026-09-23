package d.q.c;

/* loaded from: classes.dex */
public class d implements java.lang.Runnable {
    public final /* synthetic */ java.util.ArrayList a;
    public final /* synthetic */ d.q.c.k b;

    public d(d.q.c.k kVar, java.util.ArrayList arrayList) {
        this.b = kVar;
        this.a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.util.Iterator it = this.a.iterator();
        while (it.hasNext()) {
            d.q.c.k.a aVar = (d.q.c.k.a) it.next();
            d.q.c.k kVar = this.b;
            if (kVar == null) {
                throw null;
            }
            androidx.recyclerview.widget.RecyclerView.x xVar = aVar.a;
            android.view.View view = xVar == null ? null : xVar.a;
            androidx.recyclerview.widget.RecyclerView.x xVar2 = aVar.b;
            android.view.View view2 = xVar2 != null ? xVar2.a : null;
            if (view != null) {
                android.view.ViewPropertyAnimator duration = view.animate().setDuration(kVar.f151f);
                kVar.r.add(aVar.a);
                duration.translationX(aVar.f2205e - aVar.f2203c);
                duration.translationY(aVar.f2206f - aVar.f2204d);
                duration.alpha(0.0f).setListener(new d.q.c.i(kVar, aVar, duration, view)).start();
            }
            if (view2 != null) {
                android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                kVar.r.add(aVar.b);
                viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(kVar.f151f).alpha(1.0f).setListener(new d.q.c.j(kVar, aVar, viewPropertyAnimatorAnimate, view2)).start();
            }
        }
        this.a.clear();
        this.b.n.remove(this.a);
    }
}
