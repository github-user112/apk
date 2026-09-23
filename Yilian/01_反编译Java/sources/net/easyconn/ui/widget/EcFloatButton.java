package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class EcFloatButton extends androidx.appcompat.widget.AppCompatImageView {
    public int A;
    public int B;
    public int C;

    @android.annotation.SuppressLint({"HandlerLeak"})
    public android.os.Handler D;
    public float F;
    public float G;
    public net.easyconn.ui.widget.EcFloatMenu H;
    public boolean I;
    public volatile boolean J;

    /* renamed from: c, reason: collision with root package name */
    public int f3213c;

    /* renamed from: d, reason: collision with root package name */
    public int f3214d;

    /* renamed from: e, reason: collision with root package name */
    public float f3215e;

    /* renamed from: f, reason: collision with root package name */
    public float f3216f;

    /* renamed from: g, reason: collision with root package name */
    public int f3217g;
    public int h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public int u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public int z;

    public class a extends android.os.Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                net.easyconn.ui.widget.EcFloatButton.this.f(true);
            } else {
                net.easyconn.ui.widget.EcFloatButton ecFloatButton = net.easyconn.ui.widget.EcFloatButton.this;
                if (ecFloatButton.t) {
                    return;
                }
                android.animation.ObjectAnimator.ofFloat(ecFloatButton, "alpha", 1.0f, 0.6f).setDuration(110L).start();
            }
        }
    }

    public class b implements android.view.animation.Animation.AnimationListener {
        public b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            net.easyconn.ui.widget.EcFloatButton.this.J = false;
            net.easyconn.ui.widget.EcFloatButton.this.D.sendEmptyMessageDelayed(2, 4640L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
            net.easyconn.ui.widget.EcFloatButton.this.J = true;
            net.easyconn.ui.widget.EcFloatButton.this.setVisibility(8);
        }
    }

    public class c implements android.view.animation.Animation.AnimationListener {
        public final /* synthetic */ boolean a;

        public c(boolean z) {
            this.a = z;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            net.easyconn.ui.widget.EcFloatButton.this.J = false;
            net.easyconn.ui.widget.EcFloatButton.this.H.setVisibility(8);
            if (this.a) {
                net.easyconn.ui.widget.EcFloatButton.this.setVisibility(0);
            } else {
                net.easyconn.ui.widget.EcFloatButton.this.setVisibility(8);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
            net.easyconn.ui.widget.EcFloatButton.this.J = true;
        }
    }

    public EcFloatButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3217g = 0;
        this.h = 0;
        this.j = 1024;
        this.k = 600;
        this.l = net.easyconn.R.drawable.circle_horizontal_normal_bg;
        this.m = net.easyconn.R.drawable.circle_horizontal_pressed_bg;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = 0;
        this.t = false;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = 0;
        this.y = false;
        this.z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        net.easyconn.ui.widget.EcFloatButton.a aVar = new net.easyconn.ui.widget.EcFloatButton.a();
        this.D = aVar;
        boolean z = true;
        this.I = true;
        aVar.sendEmptyMessageDelayed(1, 1000L);
        this.s = f.a.i.m.g.q;
        this.i = f.a.i.m.g.i0();
        this.q = f.a.i.g.a.b(getContext()).a.getInt(!this.i ? "key_ec_float_systemui_width" : "key_ec_float_portrait_systemui_width", 0);
        this.r = f.a.i.g.a.b(getContext()).a.getInt(!this.i ? "key_ec_float_systemui_height" : "key_ec_float_portrait_systemui_height", 0);
        this.u = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_margin_left", 0);
        this.v = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_systemui_right", 0);
        this.w = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_systemui_top", 0);
        this.x = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_systemui_bottom", 0);
        this.z = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_portrait_margin_left", 0);
        this.A = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_portrait_systemui_right", 0);
        this.B = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_portrait_systemui_top", 0);
        int i = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_portrait_systemui_bottom", 0);
        this.C = i;
        if (this.i ? !(this.z != 0 || this.A != 0 || this.B != 0 || i != 0) : !(this.u != 0 || this.v != 0 || this.w != 0 || this.x != 0)) {
            z = false;
        }
        this.y = z;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("zhoujian systemUiWidth = ");
        sbO.append(this.q);
        sbO.append(" ,systemUiHeight = ");
        sbO.append(this.r);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
    }

    public void c() {
        setAlpha(0.6f);
        this.D.removeMessages(2);
        this.D.removeMessages(1);
        this.D.sendEmptyMessage(2);
    }

    public final int d(int i) {
        int i2 = this.j;
        int i3 = this.f3213c;
        if (i < ((i2 - i3) >> 1)) {
            return java.lang.Math.max(i, this.i ? this.z : this.u);
        }
        return java.lang.Math.min(i, (i2 - i3) - (this.i ? this.A : this.v));
    }

    public final int e(int i) {
        int i2 = this.k;
        int i3 = this.f3214d;
        if (i < ((i2 - i3) >> 1)) {
            return java.lang.Math.max(i, this.i ? this.B : this.w);
        }
        return java.lang.Math.min(i, (i2 - i3) - (this.i ? this.C : this.x));
    }

    public void f(boolean z) {
        this.D.removeMessages(2);
        if (!this.p && this.H.getVisibility() == 0) {
            float x = getX() + (this.f3213c / 2);
            float y = getY() + (this.f3214d / 2);
            android.view.animation.AnimationSet animationSet = new android.view.animation.AnimationSet(true);
            android.view.animation.TranslateAnimation translateAnimation = new android.view.animation.TranslateAnimation(0.0f, x - (this.j / 2), 0.0f, y - this.k);
            animationSet.addAnimation(new android.view.animation.ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f));
            animationSet.addAnimation(translateAnimation);
            animationSet.setDuration(360L);
            animationSet.setRepeatCount(0);
            animationSet.setAnimationListener(new net.easyconn.ui.widget.EcFloatButton.c(z));
            this.H.startAnimation(animationSet);
        }
    }

    public void g() {
        if (this.n || this.o) {
            performClick();
        } else {
            k();
        }
    }

    public final int h(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float fMin;
        double d2 = f4;
        float f11 = f2 - f3;
        double d3 = f11;
        java.lang.Double.isNaN(d3);
        if (d2 < d3 / 2.0d) {
            fMin = java.lang.Math.max(f4, f5);
            if (fMin == 0.0f || fMin == f5) {
                return (int) f9;
            }
        } else {
            float f12 = f11 - f6;
            fMin = java.lang.Math.min(f4, f12);
            if (fMin == f12) {
                return (int) ((f7 - f8) - f10);
            }
        }
        double d4 = fMin - f5;
        double d5 = f3;
        java.lang.Double.isNaN(d5);
        java.lang.Double.isNaN(d4);
        double d6 = (f7 - f10) - f9;
        java.lang.Double.isNaN(d6);
        double d7 = (f2 - f6) - f5;
        java.lang.Double.isNaN(d7);
        double d8 = (((d5 / 2.0d) + d4) * d6) / d7;
        double d9 = f8;
        java.lang.Double.isNaN(d9);
        double d10 = d8 - (d9 / 2.0d);
        double d11 = fMin;
        double d12 = f7 - f8;
        java.lang.Double.isNaN(d12);
        return d11 < d12 / 2.0d ? (int) java.lang.Math.max(d10, f9) : (int) java.lang.Math.min(d10, r2 - f10);
    }

    public void i(int i, int i2, boolean z) {
        int i3 = this.i ? this.z : this.u;
        int i4 = (this.j - this.f3213c) - (this.i ? this.A : this.v);
        int i5 = this.i ? this.B : this.w;
        int i6 = (this.k - this.f3214d) - (this.i ? this.C : this.x);
        java.lang.StringBuilder sbO = e.a.c.a.a.o("width = ");
        sbO.append(this.f3213c);
        sbO.append(" height = ");
        sbO.append(this.f3214d);
        sbO.append(" left = ");
        sbO.append(i);
        sbO.append(" top = ");
        sbO.append(i2);
        sbO.append("tLeft = ");
        sbO.append(i3);
        sbO.append(" tRight = ");
        sbO.append(i4);
        sbO.append(" tTop = ");
        sbO.append(i5);
        sbO.append(" tBottom = ");
        e.a.c.a.a.A(sbO, i6);
        boolean z2 = false;
        boolean z3 = (i == i3 || i == i4) ? false : true;
        if (i2 != i5 && i2 != i6) {
            z2 = true;
        }
        if (z3 && z2) {
            int i7 = this.j;
            int i8 = this.k;
            int i9 = i8 >> 1;
            float f2 = (this.f3213c >> 1) + i;
            float f3 = (this.f3214d >> 1) + i2;
            float f4 = i7 >> 1;
            if (f2 > f4) {
                float f5 = i9;
                if (f3 > f5) {
                    if (java.lang.Math.abs(f3 - i8) / f5 > java.lang.Math.abs(f2 - this.j) / f4) {
                        if (this.y) {
                            if ((this.k - (this.f3214d >> 1)) - f3 < (this.i ? this.C : this.x)) {
                                i = i4;
                            }
                        }
                    }
                    i2 = i6;
                } else {
                    if (f3 / f5 > java.lang.Math.abs(f2 - i7) / f4) {
                        if (this.y) {
                            if (f3 - (this.f3214d >> 1) < (this.i ? this.B : this.w)) {
                                i = i4;
                            }
                        }
                    }
                    i2 = i5;
                }
                i = i4;
            } else {
                float f6 = i9;
                if (f3 > f6) {
                    if (java.lang.Math.abs(f3 - i8) / f6 > f2 / f4) {
                        if (this.y) {
                            if ((this.k - (this.f3214d >> 1)) - f3 < (this.i ? this.C : this.x)) {
                                i = i3;
                            }
                        }
                    }
                    i2 = i6;
                } else {
                    if (f3 / f6 > f2 / f4) {
                        if (this.y) {
                            if (f3 - (r9 >> 1) < (this.i ? this.B : this.w)) {
                                i = i3;
                            }
                        }
                    }
                    i2 = i5;
                }
                i = i3;
            }
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("saveLocation:");
        sbO2.append(this.s);
        sbO2.append(" nowLeft:");
        sbO2.append(i);
        sbO2.append(" nowTop：");
        sbO2.append(i2);
        sbO2.append(" invalidate:");
        sbO2.append(z);
        e.e.a.g.a(sbO2.toString());
        android.content.SharedPreferences.Editor editorEdit = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit.putInt("key_ec_float_button_top", i2);
        editorEdit.commit();
        android.content.SharedPreferences.Editor editorEdit2 = f.a.i.g.a.b(getContext()).a.edit();
        editorEdit2.putInt("key_ec_float_button_left", i);
        editorEdit2.commit();
        if (z) {
            setX(i);
            setY(i2);
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.ui.widget.EcFloatButton.j(int, int):void");
    }

    public void k() {
        float x = getX() + (this.f3213c / 2);
        float y = getY() + (this.f3214d / 2);
        android.view.animation.AnimationSet animationSet = new android.view.animation.AnimationSet(true);
        android.view.animation.TranslateAnimation translateAnimation = new android.view.animation.TranslateAnimation(x - (this.j / 2), 0.0f, y - this.k, 0.0f);
        animationSet.addAnimation(new android.view.animation.ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f));
        animationSet.addAnimation(translateAnimation);
        animationSet.setDuration(360L);
        animationSet.setRepeatCount(0);
        animationSet.setAnimationListener(new net.easyconn.ui.widget.EcFloatButton.b());
        if (this.H.getVisibility() != 0) {
            this.H.setVisibility(0);
        }
        this.H.startAnimation(animationSet);
    }

    public void l(boolean z) {
        e.a.c.a.a.z("EcFloatButton set showMenuDirect = ", z);
        this.p = z;
        this.H.l = z;
    }

    public final void m() {
        float[] fArr = new float[2];
        fArr[0] = getY() - getTop();
        fArr[1] = ((this.k - this.f3214d) - getTop()) - (this.i ? this.C : this.x);
        android.animation.ObjectAnimator.ofFloat(this, "translationY", fArr).setDuration(250L).start();
    }

    public final void n() {
        float[] fArr = new float[2];
        fArr[0] = getX() - getLeft();
        fArr[1] = (-getLeft()) + (this.i ? this.z : this.u);
        android.animation.ObjectAnimator.ofFloat(this, "translationX", fArr).setDuration(250L).start();
    }

    public final void o() {
        float[] fArr = new float[2];
        fArr[0] = getX() - getLeft();
        fArr[1] = ((this.j - this.f3213c) - getLeft()) - (this.i ? this.A : this.v);
        android.animation.ObjectAnimator.ofFloat(this, "translationX", fArr).setDuration(250L).start();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        this.f3213c = getWidth();
        this.f3214d = getHeight();
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, android.view.KeyEvent keyEvent) {
        e.e.a.g.c(e.a.c.a.a.K("EcFloatButton onKeyUp keyCode = ", i), new java.lang.Object[0]);
        if (i == 23) {
            if (this.n || this.o) {
                performClick();
            } else {
                k();
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) throws java.lang.NumberFormatException {
        int i3;
        super.onMeasure(i, i2);
        int i4 = 0;
        if (f.a.i.m.g.h0(net.easyconn.FrameworkApplication.getContext())) {
            try {
                i3 = java.lang.Integer.parseInt(f.a.i.m.g.f2936c.getProperty("FLOAT_SIZE", "0"));
            } catch (java.lang.NumberFormatException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("getPropertyFloatSize NumberFormatException, e = ");
                sbO.append(e2.toString());
                e.e.a.g.a(sbO.toString());
            }
        } else {
            i3 = 0;
        }
        e.a.c.a.a.v("getFloatSize propFloatSize = ", i3);
        java.util.Properties properties = f.a.i.m.d.f2935c;
        if (properties == null) {
            e.e.a.g.a("getFloatSize mProperties == null, return");
            i4 = i3;
        } else {
            java.lang.String property = properties.getProperty("float_size");
            e.a.c.a.a.w("getFloatSize size = ", property);
            try {
                if (!android.text.TextUtils.isEmpty(property)) {
                    i4 = java.lang.Integer.parseInt(property);
                }
            } catch (java.lang.Exception unused) {
            }
        }
        if (i4 > 0) {
            setMeasuredDimension(i4, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0184  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.ui.widget.EcFloatButton.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void onVisibilityChanged(android.view.View view, int i) {
        super.onVisibilityChanged(view, i);
        e.e.a.g.c(e.a.c.a.a.K("EcFloatButton visibility = ", i), new java.lang.Object[0]);
    }

    public final void p() {
        float[] fArr = new float[2];
        fArr[0] = getY() - getTop();
        fArr[1] = (-getTop()) + (this.i ? this.B : this.w);
        android.animation.ObjectAnimator.ofFloat(this, "translationY", fArr).setDuration(250L).start();
    }

    public void setEcFloatMenu(net.easyconn.ui.widget.EcFloatMenu ecFloatMenu) {
        this.H = ecFloatMenu;
    }

    public void setJustEcHome(boolean z) {
        int i;
        this.o = z;
        if (z) {
            this.l = net.easyconn.R.drawable.standard_float_ball_normal;
            i = net.easyconn.R.drawable.standard_float_ball_pressed;
        } else {
            this.l = net.easyconn.R.drawable.circle_horizontal_normal_bg;
            i = net.easyconn.R.drawable.circle_horizontal_pressed_bg;
        }
        this.m = i;
        setBackgroundResource(this.l);
    }

    public void setJustSystemHome(boolean z) {
        int i;
        this.n = z;
        if (z) {
            this.l = net.easyconn.R.drawable.float_system_home_normal_bg;
            i = net.easyconn.R.drawable.float_system_home_press_bg;
        } else {
            this.l = net.easyconn.R.drawable.circle_horizontal_normal_bg;
            i = net.easyconn.R.drawable.circle_horizontal_pressed_bg;
        }
        this.m = i;
        setBackgroundResource(this.l);
    }

    public void setScreenHeight(int i) {
        this.k = i;
    }

    public void setScreenWidth(int i) {
        this.j = f.a.i.g.a.b(getContext()).a.getInt("key_ec_float_screen_width", i);
    }

    public void setxCorrection(int i) {
        this.f3217g = i;
    }

    public void setyCorrection(int i) {
        this.h = i;
    }
}
