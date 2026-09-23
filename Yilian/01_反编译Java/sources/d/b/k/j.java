package d.b.k;

/* loaded from: classes.dex */
public abstract class j {
    public static final d.e.c<java.lang.ref.WeakReference<d.b.k.j>> a = new d.e.c<>(0);
    public static final java.lang.Object b = new java.lang.Object();

    public static d.b.k.j d(android.app.Activity activity, d.b.k.i iVar) {
        return new d.b.k.k(activity, null, iVar, activity);
    }

    public static d.b.k.j e(android.app.Dialog dialog, d.b.k.i iVar) {
        return new d.b.k.k(dialog.getContext(), dialog.getWindow(), iVar, dialog);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void k(d.b.k.j jVar) {
        synchronized (b) {
            java.util.Iterator<java.lang.ref.WeakReference<d.b.k.j>> it = a.iterator();
            while (true) {
                d.e.g.a aVar = (d.e.g.a) it;
                if (aVar.hasNext()) {
                    d.b.k.j jVar2 = (d.b.k.j) ((java.lang.ref.WeakReference) aVar.next()).get();
                    if (jVar2 == jVar || jVar2 == null) {
                        aVar.remove();
                    }
                }
            }
        }
    }

    public abstract void c(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams);

    public abstract android.view.View f(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet);

    public abstract void g();

    public abstract void h();

    public abstract void i(android.os.Bundle bundle);

    public abstract void j();

    public abstract boolean l(int i);

    public abstract void m(int i);

    public abstract void n(android.view.View view);

    public abstract void o(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams);

    public abstract void p(java.lang.CharSequence charSequence);
}
