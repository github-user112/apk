package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class YltpEcFloatMenu extends net.easyconn.ui.widget.EcFloatMenu {
    public android.widget.ImageView m;
    public net.easyconn.ui.widget.YltpEcFloatMenu.b n;
    public f.a.k.d0 o;

    public class a extends f.a.k.d0 {
        public a(long j) {
            super(j);
        }

        @Override // f.a.k.d0
        public void a(android.view.View view) {
            net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = net.easyconn.ui.widget.YltpEcFloatMenu.this.n;
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    public interface b extends net.easyconn.ui.widget.EcFloatMenu.b {
        void d();
    }

    public YltpEcFloatMenu(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = new net.easyconn.ui.widget.YltpEcFloatMenu.a(500L);
        this.j = context;
        android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) android.view.LayoutInflater.from(context).inflate(net.easyconn.R.layout.ec_float_menu_yltp, (android.view.ViewGroup) null);
        this.b = linearLayout;
        this.f3218c = (android.widget.ImageView) linearLayout.findViewById(net.easyconn.R.id.float_menu_back);
        this.m = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_stop);
        this.f3219d = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_phone_home);
        this.f3220e = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_ec);
        this.f3221f = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_landscape);
        this.f3222g = (android.widget.ImageView) this.b.findViewById(net.easyconn.R.id.float_menu_car_home);
        this.f3218c.setOnClickListener(this.o);
        this.m.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.g
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.j(view);
            }
        });
        this.f3219d.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.h
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.k(view);
            }
        });
        this.f3220e.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.f
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.l(view);
            }
        });
        this.f3221f.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.i
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.m(view);
            }
        });
        this.f3222g.setOnClickListener(new android.view.View.OnClickListener() { // from class: f.a.k.n0.e
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.a.n(view);
            }
        });
        a(false);
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu
    public void f(int i) {
        android.widget.LinearLayout.LayoutParams layoutParams;
        android.widget.LinearLayout.LayoutParams layoutParams2;
        boolean z;
        boolean z2 = i == 0;
        android.widget.LinearLayout linearLayout = this.b;
        boolean z3 = this.i;
        int i2 = net.easyconn.R.drawable.float_menu_right_bg_selector;
        int i3 = net.easyconn.R.drawable.float_menu_left_bg_selector;
        if (z3 && (z = this.l)) {
            this.f3218c.setBackground(z ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_left_bg_selector));
            this.m.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3222g.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3220e.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3221f.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_middle_bg_selector));
            this.f3219d.setBackground(this.l ? d.g.f.a.d(this.j, net.easyconn.R.drawable.menu_bg_selector) : d.g.f.a.d(this.j, net.easyconn.R.drawable.float_menu_right_bg_selector));
            if (z2) {
                layoutParams2 = new android.widget.LinearLayout.LayoutParams(f.a.i.m.g.L(this.j), d.s.y.u(this.j, getResources().getDimension(net.easyconn.R.dimen.dp_80)));
                linearLayout.setOrientation(0);
                layoutParams = new android.widget.LinearLayout.LayoutParams(0, -1);
                layoutParams.weight = 1.0f;
            } else {
                android.view.WindowManager windowManager = ((android.app.Activity) this.j).getWindowManager();
                android.util.DisplayMetrics displayMetrics = new android.util.DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                android.widget.LinearLayout.LayoutParams layoutParams3 = new android.widget.LinearLayout.LayoutParams((displayMetrics.widthPixels * 12) / 100, f.a.i.m.g.K(this.j));
                linearLayout.setOrientation(1);
                layoutParams = new android.widget.LinearLayout.LayoutParams(-1, 0);
                layoutParams.weight = 1.0f;
                layoutParams2 = layoutParams3;
            }
        } else {
            this.f3222g.setBackground(d.g.f.a.d(this.j, this.i ? net.easyconn.R.drawable.float_menu_middle_bg_selector : net.easyconn.R.drawable.float_menu_right_bg_selector));
            this.f3220e.setBackground(d.g.f.a.d(this.j, this.i ? net.easyconn.R.drawable.float_menu_middle_bg_selector : net.easyconn.R.drawable.float_menu_left_bg_selector));
            this.f3218c.setBackground(d.g.f.a.d(this.j, this.i ? net.easyconn.R.drawable.float_menu_left_bg_selector : net.easyconn.R.drawable.float_menu_middle_bg_selector));
            android.widget.ImageView imageView = this.m;
            android.content.Context context = this.j;
            if (this.i) {
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
            android.widget.LinearLayout.LayoutParams layoutParams4 = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutParams4.bottomMargin = d.s.y.u(this.j, getResources().getDimension(net.easyconn.R.dimen.dp_5));
            linearLayout.setOrientation(0);
            layoutParams = new android.widget.LinearLayout.LayoutParams(0, -2);
            layoutParams.weight = 1.0f;
            layoutParams2 = layoutParams4;
            z2 = true;
        }
        linearLayout.removeAllViews();
        if (linearLayout.getParent() != null) {
            removeView(linearLayout);
        }
        linearLayout.setLayoutParams(layoutParams2);
        this.f3222g.setLayoutParams(layoutParams);
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            this.f3221f.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams));
            this.f3220e.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams));
            this.f3219d.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams));
            this.m.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams));
            this.f3218c.setLayoutParams(new android.widget.LinearLayout.LayoutParams(layoutParams));
        } else {
            this.f3221f.setLayoutParams(layoutParams);
            this.f3220e.setLayoutParams(layoutParams);
            this.f3219d.setLayoutParams(layoutParams);
            this.m.setLayoutParams(layoutParams);
            this.f3218c.setLayoutParams(layoutParams);
        }
        linearLayout.addView(this.f3218c);
        linearLayout.addView(this.m);
        linearLayout.addView(this.f3220e);
        linearLayout.addView(this.f3222g);
        linearLayout.addView(this.f3221f);
        linearLayout.addView(this.f3219d);
        addView(linearLayout);
        setFocus(z2);
        android.widget.FrameLayout.LayoutParams layoutParams5 = new android.widget.FrameLayout.LayoutParams(-2, -2, z2 ? 81 : 19);
        layoutParams5.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams5);
    }

    public /* synthetic */ void j(android.view.View view) {
        net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = this.n;
        if (bVar != null) {
            bVar.d();
        }
    }

    public /* synthetic */ void k(android.view.View view) {
        net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = this.n;
        if (bVar != null) {
            bVar.f();
        }
    }

    public /* synthetic */ void l(android.view.View view) {
        net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = this.n;
        if (bVar != null) {
            bVar.a();
        }
    }

    public /* synthetic */ void m(android.view.View view) {
        net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = this.n;
        if (bVar != null) {
            bVar.b();
        }
    }

    public /* synthetic */ void n(android.view.View view) {
        net.easyconn.ui.widget.YltpEcFloatMenu.b bVar = this.n;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // net.easyconn.ui.widget.EcFloatMenu
    public void setMenuButtonClickListener(net.easyconn.ui.widget.EcFloatMenu.b bVar) {
        this.n = (net.easyconn.ui.widget.YltpEcFloatMenu.b) bVar;
    }
}
