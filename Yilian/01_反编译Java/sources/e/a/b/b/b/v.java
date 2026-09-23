package e.a.b.b.b;

/* loaded from: classes.dex */
public final class v extends e.a.b.d.b.e.a {
    public final /* synthetic */ boolean[] a;
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2383c;

    public v(boolean[] zArr, int i, int i2) {
        this.a = zArr;
        this.b = i;
        this.f2383c = i2;
    }

    @Override // e.a.b.d.b.e.b
    public void b(e.a.b.d.b.i iVar) {
        if (iVar.a.a == 3) {
            int i = ((e.a.b.d.c.l) iVar.f2479e).a;
            boolean[] zArr = this.a;
            zArr[0] = zArr[0] && (this.b - this.f2383c) + i == iVar.f2485c.a;
        }
    }
}
