package d.b.k;

/* loaded from: classes.dex */
public class f implements android.widget.AdapterView.OnItemClickListener {
    public final /* synthetic */ androidx.appcompat.app.AlertController a;
    public final /* synthetic */ androidx.appcompat.app.AlertController.b b;

    public f(androidx.appcompat.app.AlertController.b bVar, androidx.appcompat.app.AlertController alertController) {
        this.b = bVar;
        this.a = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
        this.b.m.onClick(this.a.b, i);
        if (this.b.o) {
            return;
        }
        this.a.b.dismiss();
    }
}
