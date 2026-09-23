package d.b.k;

/* loaded from: classes.dex */
public class d implements android.widget.AbsListView.OnScrollListener {
    public final /* synthetic */ android.view.View a;
    public final /* synthetic */ android.view.View b;

    public d(androidx.appcompat.app.AlertController alertController, android.view.View view, android.view.View view2) {
        this.a = view;
        this.b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(android.widget.AbsListView absListView, int i, int i2, int i3) {
        androidx.appcompat.app.AlertController.c(absListView, this.a, this.b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(android.widget.AbsListView absListView, int i) {
    }
}
