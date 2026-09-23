package d.b.p.i;

/* loaded from: classes.dex */
public class h implements android.content.DialogInterface.OnKeyListener, android.content.DialogInterface.OnClickListener, android.content.DialogInterface.OnDismissListener, d.b.p.i.m.a {
    public d.b.p.i.g a;
    public d.b.k.g b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.p.i.e f1731c;

    public h(d.b.p.i.g gVar) {
        this.a = gVar;
    }

    @Override // d.b.p.i.m.a
    public void a(d.b.p.i.g gVar, boolean z) {
        d.b.k.g gVar2;
        if ((z || gVar == this.a) && (gVar2 = this.b) != null) {
            gVar2.dismiss();
        }
    }

    @Override // d.b.p.i.m.a
    public boolean b(d.b.p.i.g gVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(android.content.DialogInterface dialogInterface, int i) {
        this.a.r(((d.b.p.i.e.a) this.f1731c.b()).getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(android.content.DialogInterface dialogInterface) {
        d.b.p.i.e eVar = this.f1731c;
        d.b.p.i.g gVar = this.a;
        d.b.p.i.m.a aVar = eVar.h;
        if (aVar != null) {
            aVar.a(gVar, true);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(android.content.DialogInterface dialogInterface, int i, android.view.KeyEvent keyEvent) {
        android.view.Window window;
        android.view.View decorView;
        android.view.KeyEvent.DispatcherState keyDispatcherState;
        android.view.View decorView2;
        android.view.KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                android.view.Window window2 = this.b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.a.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.a.performShortcut(i, keyEvent, 0);
    }
}
