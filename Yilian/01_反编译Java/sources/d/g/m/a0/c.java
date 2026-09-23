package d.g.m.a0;

/* loaded from: classes.dex */
public final class c implements android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener {
    public final d.g.m.a0.b a;

    public c(d.g.m.a0.b bVar) {
        this.a = bVar;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d.g.m.a0.c) {
            return this.a.equals(((d.g.m.a0.c) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z) {
        e.c.a.b.t.d.this.setClickableOrFocusableBasedOnAccessibility(z);
    }
}
