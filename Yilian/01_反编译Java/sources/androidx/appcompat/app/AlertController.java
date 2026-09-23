package androidx.appcompat.app;

/* loaded from: classes.dex */
public class AlertController {
    public androidx.core.widget.NestedScrollView A;
    public android.graphics.drawable.Drawable C;
    public android.widget.ImageView D;
    public android.widget.TextView E;
    public android.widget.TextView F;
    public android.view.View G;
    public android.widget.ListAdapter H;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;
    public android.os.Handler R;
    public final android.content.Context a;
    public final d.b.k.q b;

    /* renamed from: c, reason: collision with root package name */
    public final android.view.Window f18c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f20e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f21f;

    /* renamed from: g, reason: collision with root package name */
    public android.widget.ListView f22g;
    public android.view.View h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public android.widget.Button o;
    public java.lang.CharSequence p;
    public android.os.Message q;
    public android.graphics.drawable.Drawable r;
    public android.widget.Button s;
    public java.lang.CharSequence t;
    public android.os.Message u;
    public android.graphics.drawable.Drawable v;
    public android.widget.Button w;
    public java.lang.CharSequence x;
    public android.os.Message y;
    public android.graphics.drawable.Drawable z;
    public boolean n = false;
    public int B = 0;
    public int I = -1;
    public int Q = 0;
    public final android.view.View.OnClickListener S = new androidx.appcompat.app.AlertController.a();

    public static class RecycleListView extends android.widget.ListView {
        public final int a;
        public final int b;

        public RecycleListView(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.RecycleListView);
            this.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.b.j.RecycleListView_paddingBottomNoButtons, -1);
            this.a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.b.j.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    public class a implements android.view.View.OnClickListener {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x000a A[PHI: r0
  0x000a: PHI (r0v5 android.os.Message) = (r0v3 android.os.Message), (r0v6 android.os.Message) binds: [B:10:0x0017, B:5:0x0008] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r3) {
            /*
                r2 = this;
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.o
                if (r3 != r1) goto Lf
                android.os.Message r0 = r0.q
                if (r0 == 0) goto Lf
            La:
                android.os.Message r3 = android.os.Message.obtain(r0)
                goto L2a
            Lf:
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.s
                if (r3 != r1) goto L1a
                android.os.Message r0 = r0.u
                if (r0 == 0) goto L1a
                goto La
            L1a:
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                android.widget.Button r1 = r0.w
                if (r3 != r1) goto L29
                android.os.Message r3 = r0.y
                if (r3 == 0) goto L29
                android.os.Message r3 = android.os.Message.obtain(r3)
                goto L2a
            L29:
                r3 = 0
            L2a:
                if (r3 == 0) goto L2f
                r3.sendToTarget()
            L2f:
                androidx.appcompat.app.AlertController r3 = androidx.appcompat.app.AlertController.this
                android.os.Handler r0 = r3.R
                r1 = 1
                d.b.k.q r3 = r3.b
                android.os.Message r3 = r0.obtainMessage(r1, r3)
                r3.sendToTarget()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.a.onClick(android.view.View):void");
        }
    }

    public static class b {
        public final android.content.Context a;
        public final android.view.LayoutInflater b;

        /* renamed from: d, reason: collision with root package name */
        public android.graphics.drawable.Drawable f24d;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.CharSequence f26f;

        /* renamed from: g, reason: collision with root package name */
        public android.view.View f27g;
        public android.content.DialogInterface.OnCancelListener i;
        public android.content.DialogInterface.OnDismissListener j;
        public android.content.DialogInterface.OnKeyListener k;
        public android.widget.ListAdapter l;
        public android.content.DialogInterface.OnClickListener m;
        public boolean o;

        /* renamed from: c, reason: collision with root package name */
        public int f23c = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f25e = 0;
        public boolean n = false;
        public int p = -1;
        public boolean h = true;

        public b(android.content.Context context) {
            this.a = context;
            this.b = (android.view.LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    public static final class c extends android.os.Handler {
        public java.lang.ref.WeakReference<android.content.DialogInterface> a;

        public c(android.content.DialogInterface dialogInterface) {
            this.a = new java.lang.ref.WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((android.content.DialogInterface.OnClickListener) message.obj).onClick(this.a.get(), message.what);
            } else {
                if (i != 1) {
                    return;
                }
                ((android.content.DialogInterface) message.obj).dismiss();
            }
        }
    }

    public static class d extends android.widget.ArrayAdapter<java.lang.CharSequence> {
        public d(android.content.Context context, int i, int i2, java.lang.CharSequence[] charSequenceArr) {
            super(context, i, i2, (java.lang.Object[]) null);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(android.content.Context context, d.b.k.q qVar, android.view.Window window) {
        this.a = context;
        this.b = qVar;
        this.f18c = window;
        this.R = new androidx.appcompat.app.AlertController.c(qVar);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, d.b.j.AlertDialog, d.b.a.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(d.b.j.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(d.b.j.AlertDialog_showTitle, true);
        this.f19d = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        qVar.a().l(1);
    }

    public static boolean a(android.view.View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof android.view.ViewGroup)) {
            return false;
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void c(android.view.View view, android.view.View view2, android.view.View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public final void b(android.widget.Button button) {
        android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public final android.view.ViewGroup d(android.view.View view, android.view.View view2) {
        if (view == null) {
            if (view2 instanceof android.view.ViewStub) {
                view2 = ((android.view.ViewStub) view2).inflate();
            }
            return (android.view.ViewGroup) view2;
        }
        if (view2 != null) {
            android.view.ViewParent parent = view2.getParent();
            if (parent instanceof android.view.ViewGroup) {
                ((android.view.ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof android.view.ViewStub) {
            view = ((android.view.ViewStub) view).inflate();
        }
        return (android.view.ViewGroup) view;
    }

    public void e(int i) {
        this.C = null;
        this.B = i;
        android.widget.ImageView imageView = this.D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }
}
