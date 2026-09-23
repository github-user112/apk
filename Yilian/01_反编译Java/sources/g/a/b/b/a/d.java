package g.a.b.b.a;

/* loaded from: classes.dex */
public class d extends android.database.ContentObserver {
    public java.lang.String a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public g.a.b.b.a.c f3127c;

    public d(g.a.b.b.a.c cVar, int i, java.lang.String str) {
        super(null);
        this.f3127c = cVar;
        this.b = i;
        this.a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        g.a.b.b.a.c cVar = this.f3127c;
        if (cVar != null) {
            cVar.b(this.b, this.a);
        } else {
            android.util.Log.e("VMS_IDLG_SDK_Observer", "mIdentifierIdClient is null");
        }
    }
}
