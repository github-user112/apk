package f.a.k.l0;

/* loaded from: classes.dex */
public class c4 extends f.a.k.l0.i3 {
    public /* synthetic */ void a0(android.view.View view) {
        ((f.a.k.e0) getActivity()).n();
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        int i;
        int i2;
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.fragment_wifi_help, viewGroup, false);
        super.O(viewInflate);
        viewInflate.findViewById(net.easyconn.R.id.fragment_download_back).setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.l0.b3
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.a0(view);
            }
        });
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_download_txt1);
        android.widget.TextView textView2 = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.fragment_download_txt2);
        android.widget.TextView textView3 = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.tv_android_prefix);
        android.widget.TextView textView4 = (android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.tv_ios_prefix);
        boolean zS = f.a.i.m.g.s(getActivity());
        f.a.i.m.g.d(getActivity());
        boolean zQ = f.a.i.m.g.q(getActivity());
        boolean zR = f.a.i.m.g.r(getActivity());
        if (zQ && zR) {
            textView3.setVisibility(0);
        }
        if (zQ || !zR) {
            if (zS) {
                i = net.easyconn.R.string.pop_dialog_wifi_hint_android;
            } else {
                textView3.setVisibility(8);
                i = net.easyconn.R.string.pop_dialog_wifi_hint_hotspot;
            }
            textView.setText(getString(i));
        } else {
            textView.setVisibility(8);
        }
        boolean zS2 = f.a.i.m.g.s(getActivity());
        f.a.i.m.g.d(getActivity());
        boolean zQ2 = f.a.i.m.g.q(getActivity());
        boolean zR2 = f.a.i.m.g.r(getActivity());
        if (zQ2 && zR2) {
            textView4.setVisibility(0);
        }
        if (zR2 || !zQ2) {
            if (zS2) {
                i2 = net.easyconn.R.string.pop_dialog_wifi_hint_ios;
            } else {
                if (textView4.getVisibility() == 0) {
                    textView4.setVisibility(8);
                    textView2.setVisibility(8);
                }
                i2 = net.easyconn.R.string.pop_dialog_wifi_hint_hotspot;
            }
            textView2.setText(getString(i2));
        } else {
            textView2.setVisibility(8);
        }
        java.lang.String string = textView.getText().toString();
        java.lang.String string2 = textView2.getText().toString();
        java.lang.String string3 = getString(net.easyconn.R.string.pop_dialog_wifi_hint_hotspot);
        if (string3.equals(string) || string3.equals(string2)) {
            viewInflate.findViewById(net.easyconn.R.id.fragment_download_txt_summary).setVisibility(0);
        }
        return viewInflate;
    }
}
