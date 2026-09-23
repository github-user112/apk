package f.a.k.l0;

/* loaded from: classes.dex */
public class h3 extends f.a.k.l0.i3 {
    public /* synthetic */ void a0(android.view.View view) {
        ((f.a.k.e0) getActivity()).h();
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_download_app, viewGroup, false);
        super.O(viewInflate);
        viewInflate.findViewById(net.easyconn.R.id.fragment_download_back).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.a0(view);
            }
        });
        return viewInflate;
    }
}
