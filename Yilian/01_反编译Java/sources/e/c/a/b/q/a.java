package e.c.a.b.q;

/* loaded from: classes.dex */
public class a extends d.g.m.a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.internal.CheckableImageButton f2652d;

    public a(com.google.android.material.internal.CheckableImageButton checkableImageButton) {
        this.f2652d = checkableImageButton;
    }

    @Override // d.g.m.a
    public void a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f2652d.isChecked());
    }

    @Override // d.g.m.a
    public void b(android.view.View view, d.g.m.a0.d dVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
        dVar.a.setCheckable(true);
        dVar.a.setChecked(this.f2652d.isChecked());
    }
}
