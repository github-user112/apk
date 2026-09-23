package d.j.d;

/* loaded from: classes.dex */
public class m implements d.g.i.a.InterfaceC0046a {
    public final /* synthetic */ androidx.fragment.app.Fragment a;

    public m(androidx.fragment.app.Fragment fragment) {
        this.a = fragment;
    }

    @Override // d.g.i.a.InterfaceC0046a
    public void c() {
        if (this.a.getAnimatingAway() != null) {
            android.view.View animatingAway = this.a.getAnimatingAway();
            this.a.setAnimatingAway(null);
            animatingAway.clearAnimation();
        }
        this.a.setAnimator(null);
    }
}
