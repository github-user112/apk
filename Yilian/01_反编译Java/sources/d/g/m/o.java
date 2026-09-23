package d.g.m;

/* loaded from: classes.dex */
public class o extends d.g.m.s.a<java.lang.Boolean> {
    public o(int i, java.lang.Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // d.g.m.s.a
    public java.lang.Boolean a(android.view.View view) {
        return java.lang.Boolean.valueOf(view.isScreenReaderFocusable());
    }
}
