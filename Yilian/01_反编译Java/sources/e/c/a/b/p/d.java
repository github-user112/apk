package e.c.a.b.p;

/* loaded from: classes.dex */
public class d implements android.view.ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ e.c.a.b.p.e a;

    public d(e.c.a.b.p.e eVar) {
        this.a = eVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        e.c.a.b.q.f fVar;
        int i;
        e.c.a.b.p.e eVar = this.a;
        float rotation = eVar.o.getRotation();
        if (eVar.h != rotation) {
            eVar.h = rotation;
            if (android.os.Build.VERSION.SDK_INT == 19) {
                if (rotation % 90.0f != 0.0f) {
                    if (eVar.o.getLayerType() != 1) {
                        fVar = eVar.o;
                        i = 1;
                        fVar.setLayerType(i, null);
                    }
                } else if (eVar.o.getLayerType() != 0) {
                    fVar = eVar.o;
                    i = 0;
                    fVar.setLayerType(i, null);
                }
            }
        }
        return true;
    }
}
