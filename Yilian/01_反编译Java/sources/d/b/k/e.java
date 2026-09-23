package d.b.k;

/* loaded from: classes.dex */
public class e implements java.lang.Runnable {
    public final /* synthetic */ android.view.View a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.app.AlertController f1627c;

    public e(androidx.appcompat.app.AlertController alertController, android.view.View view, android.view.View view2) {
        this.f1627c = alertController;
        this.a = view;
        this.b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        androidx.appcompat.app.AlertController.c(this.f1627c.f22g, this.a, this.b);
    }
}
