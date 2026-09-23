package f.a.k.l0;

/* loaded from: classes.dex */
public class j3 extends androidx.fragment.app.Fragment {
    public android.widget.TextView a;
    public android.widget.CheckBox b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.Button f3063c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.View f3064d;

    public /* synthetic */ void L(android.view.View view) {
        ((f.a.k.e0) getActivity()).c();
    }

    public /* synthetic */ void M(android.view.View view) {
        this.b.setChecked(!r2.isChecked());
    }

    public final void N(int i) {
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_show_guide_page", i);
        editorEdit.commit();
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_guide, viewGroup, false);
        android.widget.Button button = (android.widget.Button) viewInflate.findViewById(net.easyconn.R.id.guide_back);
        this.f3063c = button;
        button.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.L(view);
            }
        });
        this.b = (android.widget.CheckBox) viewInflate.findViewById(net.easyconn.R.id.guide_checkbox);
        android.view.View viewFindViewById = viewInflate.findViewById(net.easyconn.R.id.guide_text);
        this.f3064d = viewFindViewById;
        viewFindViewById.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.M(view);
            }
        });
        this.a = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.guide_info);
        int height = ((android.view.WindowManager) getActivity().getApplicationContext().getSystemService("window")).getDefaultDisplay().getHeight();
        android.widget.RelativeLayout.LayoutParams layoutParams = (android.widget.RelativeLayout.LayoutParams) this.a.getLayoutParams();
        double d2 = height;
        java.lang.Double.isNaN(d2);
        layoutParams.bottomMargin = (int) (d2 * 0.65d);
        this.a.setLayoutParams(layoutParams);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        int i;
        if (z) {
            if (this.b.isChecked()) {
                e.e.a.g.a("GuidFragment onHiddenChanged hidden is true. Guide check box is checked.");
                i = 0;
            } else {
                i = 1;
            }
            N(i);
        }
    }
}
