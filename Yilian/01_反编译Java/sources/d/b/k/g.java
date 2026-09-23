package d.b.k;

/* loaded from: classes.dex */
public class g extends d.b.k.q implements android.content.DialogInterface {

    /* renamed from: c, reason: collision with root package name */
    public final androidx.appcompat.app.AlertController f1628c;

    public static class a {
        public final androidx.appcompat.app.AlertController.b a;
        public final int b;

        public a(android.content.Context context) {
            int iE = d.b.k.g.e(context, 0);
            this.a = new androidx.appcompat.app.AlertController.b(new android.view.ContextThemeWrapper(context, d.b.k.g.e(context, iE)));
            this.b = iE;
        }

        public d.b.k.g a() {
            d.b.k.g gVar = new d.b.k.g(this.a.a, this.b);
            androidx.appcompat.app.AlertController.b bVar = this.a;
            androidx.appcompat.app.AlertController alertController = gVar.f1628c;
            android.view.View view = bVar.f27g;
            if (view != null) {
                alertController.G = view;
            } else {
                java.lang.CharSequence charSequence = bVar.f26f;
                if (charSequence != null) {
                    alertController.f20e = charSequence;
                    android.widget.TextView textView = alertController.E;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                android.graphics.drawable.Drawable drawable = bVar.f24d;
                if (drawable != null) {
                    alertController.C = drawable;
                    alertController.B = 0;
                    android.widget.ImageView imageView = alertController.D;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.D.setImageDrawable(drawable);
                    }
                }
                int i = bVar.f23c;
                if (i != 0) {
                    alertController.e(i);
                }
                int i2 = bVar.f25e;
                if (i2 != 0) {
                    if (alertController == null) {
                        throw null;
                    }
                    android.util.TypedValue typedValue = new android.util.TypedValue();
                    alertController.a.getTheme().resolveAttribute(i2, typedValue, true);
                    alertController.e(typedValue.resourceId);
                }
            }
            if (bVar.l != null) {
                androidx.appcompat.app.AlertController.RecycleListView recycleListView = (androidx.appcompat.app.AlertController.RecycleListView) bVar.b.inflate(alertController.L, (android.view.ViewGroup) null);
                int i3 = bVar.o ? alertController.N : alertController.O;
                android.widget.ListAdapter dVar = bVar.l;
                if (dVar == null) {
                    dVar = new androidx.appcompat.app.AlertController.d(bVar.a, i3, android.R.id.text1, null);
                }
                alertController.H = dVar;
                alertController.I = bVar.p;
                if (bVar.m != null) {
                    recycleListView.setOnItemClickListener(new d.b.k.f(bVar, alertController));
                }
                if (bVar.o) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.f22g = recycleListView;
            }
            gVar.setCancelable(this.a.h);
            if (this.a.h) {
                gVar.setCanceledOnTouchOutside(true);
            }
            gVar.setOnCancelListener(this.a.i);
            gVar.setOnDismissListener(this.a.j);
            android.content.DialogInterface.OnKeyListener onKeyListener = this.a.k;
            if (onKeyListener != null) {
                gVar.setOnKeyListener(onKeyListener);
            }
            return gVar;
        }
    }

    public g(android.content.Context context, int i) {
        super(context, e(context, i));
        this.f1628c = new androidx.appcompat.app.AlertController(getContext(), this, getWindow());
    }

    public static int e(android.content.Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        android.util.TypedValue typedValue = new android.util.TypedValue();
        context.getTheme().resolveAttribute(d.b.a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x02ea A[PHI: r4
  0x02ea: PHI (r4v7 android.view.View) = (r4v6 android.view.View), (r4v18 android.view.View) binds: [B:134:0x02e8, B:131:0x02df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // d.b.k.q, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r17) {
        /*
            Method dump skipped, instructions count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.g.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        androidx.core.widget.NestedScrollView nestedScrollView = this.f1628c.A;
        if (nestedScrollView != null && nestedScrollView.p(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, android.view.KeyEvent keyEvent) {
        androidx.core.widget.NestedScrollView nestedScrollView = this.f1628c.A;
        if (nestedScrollView != null && nestedScrollView.p(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // d.b.k.q, android.app.Dialog
    public void setTitle(java.lang.CharSequence charSequence) {
        super.setTitle(charSequence);
        androidx.appcompat.app.AlertController alertController = this.f1628c;
        alertController.f20e = charSequence;
        android.widget.TextView textView = alertController.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
