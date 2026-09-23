package d.b.q;

/* loaded from: classes.dex */
public class h0 implements android.widget.AdapterView.OnItemSelectedListener {
    public final /* synthetic */ d.b.q.i0 a;

    public h0(d.b.q.i0 i0Var) {
        this.a = i0Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
        d.b.q.d0 d0Var;
        if (i == -1 || (d0Var = this.a.f1791c) == null) {
            return;
        }
        d0Var.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
    }
}
