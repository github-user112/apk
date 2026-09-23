package e.c.a.b.l;

/* loaded from: classes.dex */
public class c extends android.animation.AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ androidx.appcompat.widget.ActionMenuView b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2627c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f2628d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.bottomappbar.BottomAppBar f2629e;

    public c(com.google.android.material.bottomappbar.BottomAppBar bottomAppBar, androidx.appcompat.widget.ActionMenuView actionMenuView, int i, boolean z) {
        this.f2629e = bottomAppBar;
        this.b = actionMenuView;
        this.f2627c = i;
        this.f2628d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(android.animation.Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        if (this.a) {
            return;
        }
        this.f2629e.C(this.b, this.f2627c, this.f2628d);
    }
}
