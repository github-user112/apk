package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class EcFloatMenu extends android.widget.LinearLayout {
    public net.easyconn.ui.widget.EcFloatMenu.b a;
    public android.widget.LinearLayout b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.ImageView f3218c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.ImageView f3219d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.ImageView f3220e;

    /* renamed from: f, reason: collision with root package name */
    public android.widget.ImageView f3221f;

    /* renamed from: g, reason: collision with root package name */
    public android.widget.ImageView f3222g;
    public int h;
    public boolean i;
    public android.content.Context j;
    public f.a.k.d0 k;
    public boolean l;

    public class a extends f.a.k.d0 {
        public a(long j) {
            super(j);
        }

        @Override // f.a.k.d0
        public void a(android.view.View view) {
            net.easyconn.ui.widget.EcFloatMenu.b bVar = net.easyconn.ui.widget.EcFloatMenu.this.a;
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    public interface b {
        void a();

        void b();

        void c();

        void e();

        void f();
    }

    public EcFloatMenu(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = true;
        this.k = new net.easyconn.ui.widget.EcFloatMenu.a(500L);
        this.l = false;
        this.j = context;
        android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) android.view.LayoutInflater.from(context).inflate(net.easyconn.R.layout.ec_float_menu, (android.view.ViewGroup) null);
        this.b = linearLayout;
        this.f3218c = (android.widget.ImageView) linearLayout.findViewById(net.easyconn.R.id.float_menu_back);
        this.f3219d = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_phone_home);
        this.f3220e = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_ec);
        this.f3221f = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_landscape);
        this.f3222g = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_car_home);
        this.f3218c.setOnClickListener(this.k);
        this.f3219d.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.b(view);
            }
        });
        this.f3220e.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.c(view);
            }
        });
        this.f3221f.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.c
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.d(view);
            }
        });
        this.f3222g.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.b
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.e(view);
            }
        });
        a(false);
    }

    public void a(boolean z) {
        if (this.i == z) {
            e.a.c.a.a.C(e.a.c.a.a.o("EcFloatMenu return enableAoaStyle = "), this.i);
            return;
        }
        this.i = z;
        e.a.c.a.a.C(e.a.c.a.a.o("EcFloatMenu setEnableAoaStyle = "), this.i);
        this.f3218c.setVisibility(this.i ? 0 : 8);
        this.f3219d.setVisibility(this.i ? 0 : 8);
    }

    public /* synthetic */ void b(android.view.View view) {
        net.easyconn.ui.widget.EcFloatMenu.b bVar = this.a;
        if (bVar != null) {
            bVar.f();
        }
    }

    public /* synthetic */ void c(android.view.View view) {
        net.easyconn.ui.widget.EcFloatMenu.b bVar = this.a;
        if (bVar != null) {
            bVar.a();
        }
    }

    public /* synthetic */ void d(android.view.View view) {
        net.easyconn.ui.widget.EcFloatMenu.b bVar = this.a;
        if (bVar != null) {
            bVar.b();
        }
    }

    public /* synthetic */ void e(android.view.View view) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("EcFloatMenu menuButtonClickListener = ");
        sbO.append(this.a);
        e.e.a.g.a(sbO.toString());
        if (this.a != null) {
            e.e.a.g.a("EcFloatMenu onCarHomeClick execute");
            this.a.e();
        }
    }

    public void f(int i) {
        android.widget.LinearLayout.LayoutParams layoutParams;
        android.widget.LinearLayout.LayoutParams layoutParams2;
        boolean z = i == 0;
        android.widget.LinearLayout linearLayout = this.b;
        boolean z2 = this.l;
        int i2 = net.easyconn.R.drawable.float_menu_right_bg_selector;
        int i3 = net.easyconn.R.drawable.float_menu_left_bg_selector;
        if (z2) {
            this.f3218c.setBackground(z2 ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_left_bg_selector));
            this.f3222g.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3220e.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3221f.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3219d.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_right_bg_selector));
            if (z) {
                layoutParams = new android.widget.LinearLayout.LayoutParams(f.a.i.m.g.L(this.j), d.s.y.u(this.j, 80));
                linearLayout.setOrientation(0);
                layoutParams2 = new android.widget.LinearLayout.LayoutParams(0, -1);
                layoutParams2.weight = 1.0f;
            } else {
                android.view.WindowManager windowManager = ((android.app.Activity) this.j).getWindowManager();
                android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                android.widget.LinearLayout.LayoutParams layoutParams3 = new android.widget.LinearLayout.LayoutParams((displayMetrics.widthPixels * 12) / 100, f.a.i.m.g.K(this.j));
                linearLayout.setOrientation(1);
                layoutParams2 = new android.widget.LinearLayout.LayoutParams(-1, 0);
                layoutParams2.weight = 1.0f;
                layoutParams = layoutParams3;
            }
        } else {
            this.f3222g.setBackground(d.g.f.a.d(this.j, this.i ? net.easyconn.R.drawable.float_menu_middle_bg_selector : net.easyconn.R.drawable.float_menu_right_bg_selector));
            this.f3220e.setBackground(d.g.f.a.d(this.j, this.i ? net.easyconn.R.drawable.float_menu_middle_bg_selector : net.easyconn.R.drawable.float_menu_left_bg_selector));
            android.widget.ImageView imageView = this.f3218c;
            android.content.Context context = this.j;
            if (!this.i) {
                i3 = net.easyconn.R.drawable.float_menu_middle_bg_selector;
            }
            imageView.setBackground(d.g.f.a.d(context, i3));
            this.f3221f.setBackground(d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            android.widget.ImageView imageView2 = this.f3219d;
            android.content.Context context2 = this.j;
            if (!this.i) {
                i2 = net.easyconn.R.drawable.float_menu_middle_bg_selector;
            }
            imageView2.setBackground(d.g.f.a.d(context2, i2));
            layoutParams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutParams.bottomMargin = d.s.y.u(this.j, getResources().getDimension(net.easyconn.R.dimen.dp_5));
            linearLayout.setOrientation(0);
            android.widget.LinearLayout.LayoutParams layoutParams4 = new android.widget.LinearLayout.LayoutParams(0, -2);
            layoutParams4.weight = 1.0f;
            layoutParams2 = layoutParams4;
            z = true;
        }
        linearLayout.removeAllViews();
        if (linearLayout.getParent() != null) {
            removeView(linearLayout);
        }
        linearLayout.setLayoutParams(layoutParams);
        this.f3222g.setLayoutParams(layoutParams2);
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            this.f3221f.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams2));
            this.f3220e.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams2));
            this.f3219d.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams2));
            this.f3218c.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams2));
        } else {
            this.f3221f.setLayoutParams(layoutParams2);
            this.f3220e.setLayoutParams(layoutParams2);
            this.f3219d.setLayoutParams(layoutParams2);
            this.f3218c.setLayoutParams(layoutParams2);
        }
        linearLayout.addView(this.f3218c);
        linearLayout.addView(this.f3220e);
        linearLayout.addView(this.f3222g);
        linearLayout.addView(this.f3221f);
        linearLayout.addView(this.f3219d);
        addView(linearLayout);
        setFocus(z);
        android.widget.FrameLayout.LayoutParams layoutParams5 = new android.widget.FrameLayout.LayoutParams(-2, -2, z ? 81 : 19);
        layoutParams5.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams5);
    }

    public void g(boolean z) {
        android.widget.ImageView imageView = this.f3222g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public int getMenuCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.b.getChildCount(); i2++) {
            if (this.b.getChildAt(i2).getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    public int getMenuOrientation() {
        return this.h;
    }

    public void h(boolean z) {
        android.widget.ImageView imageView = this.f3220e;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void i(boolean z) {
        android.widget.ImageView imageView = this.f3221f;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void setFocus(boolean z) {
    }

    public void setMenuButtonClickListener(net.easyconn.ui.widget.EcFloatMenu.b bVar) {
        this.a = bVar;
    }

    public void setMenuOrientation(int i) {
        this.h = i;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("EcFloatMenu setVisibility = ");
        sbO.append(i == 0);
        sbO.append(" orientation = ");
        e.a.c.a.a.A(sbO, this.h);
        f(this.h);
        super.setVisibility(i);
    }
}
