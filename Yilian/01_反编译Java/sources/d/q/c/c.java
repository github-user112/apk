package d.q.c;

/* loaded from: classes.dex */
public class c implements java.lang.Runnable {
    public final /* synthetic */ java.util.ArrayList a;
    public final /* synthetic */ d.q.c.k b;

    public c(d.q.c.k kVar, java.util.ArrayList arrayList) {
        this.b = kVar;
        this.a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.util.Iterator it = this.a.iterator();
        while (it.hasNext()) {
            d.q.c.k.b bVar = (d.q.c.k.b) it.next();
            d.q.c.k kVar = this.b;
            androidx.recyclerview.widget.RecyclerView.x xVar = bVar.a;
            int i = bVar.b;
            int i2 = bVar.f2207c;
            int i3 = bVar.f2208d;
            int i4 = bVar.f2209e;
            if (kVar == null) {
                throw null;
            }
            android.view.View view = xVar.a;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (i5 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i6 != 0) {
                view.animate().translationY(0.0f);
            }
            android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            kVar.p.add(xVar);
            viewPropertyAnimatorAnimate.setDuration(kVar.f150e).setListener(new d.q.c.h(kVar, xVar, i5, view, i6, viewPropertyAnimatorAnimate)).start();
        }
        this.a.clear();
        this.b.m.remove(this.a);
    }
}
