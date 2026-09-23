package d.g.m.a0;

/* loaded from: classes.dex */
public final class a extends android.text.style.ClickableSpan {
    public final int a;
    public final d.g.m.a0.d b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1985c;

    public a(int i, d.g.m.a0.d dVar, int i2) {
        this.a = i;
        this.b = dVar;
        this.f1985c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(android.view.View view) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.a);
        d.g.m.a0.d dVar = this.b;
        dVar.a.performAction(this.f1985c, bundle);
    }
}
