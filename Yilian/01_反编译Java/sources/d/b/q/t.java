package d.b.q;

/* loaded from: classes.dex */
public class t extends d.b.q.f0 {
    public final /* synthetic */ d.b.q.u.d j;
    public final /* synthetic */ d.b.q.u k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(d.b.q.u uVar, android.view.View view, d.b.q.u.d dVar) {
        super(view);
        this.k = uVar;
        this.j = dVar;
    }

    @Override // d.b.q.f0
    public d.b.p.i.p b() {
        return this.j;
    }

    @Override // d.b.q.f0
    @android.annotation.SuppressLint({"SyntheticAccessor"})
    public boolean c() {
        if (this.k.getInternalPopup().b()) {
            return true;
        }
        this.k.b();
        return true;
    }
}
