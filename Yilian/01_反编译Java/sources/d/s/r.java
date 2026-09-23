package d.s;

/* loaded from: classes.dex */
public class r {
    public static final boolean a;
    public static final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f2287c;

    static {
        a = android.os.Build.VERSION.SDK_INT >= 19;
        b = android.os.Build.VERSION.SDK_INT >= 18;
        f2287c = android.os.Build.VERSION.SDK_INT >= 28;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View a(android.view.ViewGroup r16, android.view.View r17, android.view.View r18) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.r.a(android.view.ViewGroup, android.view.View, android.view.View):android.view.View");
    }

    public static android.animation.Animator b(android.animation.Animator animator, android.animation.Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }
}
