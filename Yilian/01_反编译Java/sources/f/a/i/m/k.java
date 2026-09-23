package f.a.i.m;

/* loaded from: classes.dex */
public class k {
    public java.util.List<f.a.i.m.j> a;
    public android.view.View b;

    public k(java.util.List<f.a.i.m.j> list, android.view.View view) {
        this.a = list;
        this.b = view;
    }

    public void a(android.content.Context context) {
        boolean zC0 = f.a.i.m.g.c0(context);
        e.a.c.a.a.z("theme daynight ResReplaceView themeIsLight = ", zC0);
        for (f.a.i.m.j jVar : this.a) {
            int i = zC0 ? jVar.f2946d : jVar.f2945c;
            if (jVar.a.equals("background")) {
                if (jVar.b.equals("color")) {
                    this.b.setBackgroundColor(b(context, i));
                } else if (jVar.b.equals("drawable") || jVar.b.equals("mipmap")) {
                    this.b.setBackground(c(context, i));
                }
            } else if (jVar.a.equals("src")) {
                if (this.b instanceof android.widget.ImageView) {
                    if (jVar.b.equals("drawable") || jVar.b.equals("mipmap")) {
                        ((android.widget.ImageView) this.b).setImageDrawable(c(context, i));
                    } else if (jVar.b.equals("color")) {
                        ((android.widget.ImageView) this.b).setImageDrawable(new android.graphics.drawable.ColorDrawable(b(context, i)));
                    }
                }
            } else if (jVar.a.equals("textColor")) {
                ((android.widget.TextView) this.b).setTextColor(b(context, i));
            }
        }
    }

    public int b(android.content.Context context, int i) {
        return context.getResources().getColor(i);
    }

    public android.graphics.drawable.Drawable c(android.content.Context context, int i) {
        return context.getResources().getDrawable(i);
    }
}
