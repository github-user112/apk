package e.c.a.b.j;

/* loaded from: classes.dex */
public class g {
    public final d.e.h<java.lang.String, e.c.a.b.j.h> a = new d.e.h<>();

    public static e.c.a.b.j.g a(android.content.Context context, int i) throws android.content.res.Resources.NotFoundException {
        try {
            android.animation.Animator animatorLoadAnimator = android.animation.AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof android.animation.AnimatorSet) {
                return b(((android.animation.AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(animatorLoadAnimator);
            return b(arrayList);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Can't load animation resource ID #0x");
            sbO.append(java.lang.Integer.toHexString(i));
            android.util.Log.w("MotionSpec", sbO.toString(), e2);
            return null;
        }
    }

    public static e.c.a.b.j.g b(java.util.List<android.animation.Animator> list) {
        e.c.a.b.j.g gVar = new e.c.a.b.j.g();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            android.animation.Animator animator = list.get(i);
            if (!(animator instanceof android.animation.ObjectAnimator)) {
                throw new java.lang.IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            android.animation.ObjectAnimator objectAnimator = (android.animation.ObjectAnimator) animator;
            java.lang.String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            android.animation.TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof android.view.animation.AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = e.c.a.b.j.a.a;
            } else if (interpolator instanceof android.view.animation.AccelerateInterpolator) {
                interpolator = e.c.a.b.j.a.b;
            } else if (interpolator instanceof android.view.animation.DecelerateInterpolator) {
                interpolator = e.c.a.b.j.a.f2606c;
            }
            e.c.a.b.j.h hVar = new e.c.a.b.j.h(startDelay, duration, interpolator);
            hVar.f2610d = objectAnimator.getRepeatCount();
            hVar.f2611e = objectAnimator.getRepeatMode();
            gVar.a.put(propertyName, hVar);
        }
        return gVar;
    }

    public e.c.a.b.j.h c(java.lang.String str) {
        if (this.a.getOrDefault(str, null) != null) {
            return this.a.getOrDefault(str, null);
        }
        throw new java.lang.IllegalArgumentException();
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.c.a.b.j.g.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((e.c.a.b.j.g) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        return '\n' + e.c.a.b.j.g.class.getName() + '{' + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " timings: " + this.a + "}\n";
    }
}
