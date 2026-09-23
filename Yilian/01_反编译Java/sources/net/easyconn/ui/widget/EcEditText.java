package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class EcEditText extends d.b.q.j {

    /* renamed from: d, reason: collision with root package name */
    public net.easyconn.ui.widget.EcEditText.a f3212d;

    public interface a {
        void a(int i, int i2);
    }

    public EcEditText(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        net.easyconn.ui.widget.EcEditText.a aVar = this.f3212d;
        if (aVar != null) {
            aVar.a(i, i2);
        }
    }

    public void setOnSelectChangedListener(net.easyconn.ui.widget.EcEditText.a aVar) {
        this.f3212d = aVar;
    }
}
