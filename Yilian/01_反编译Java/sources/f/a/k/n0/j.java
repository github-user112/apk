package f.a.k.n0;

/* loaded from: classes.dex */
public class j extends android.widget.RelativeLayout implements android.view.View.OnClickListener {
    public java.lang.String A;
    public java.lang.String B;
    public java.lang.String C;
    public java.lang.String D;
    public int F;
    public android.content.Context G;
    public android.view.LayoutInflater H;
    public android.widget.FrameLayout I;
    public boolean J;
    public android.widget.LinearLayout K;
    public float L;
    public float M;
    public int N;
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.FrameLayout f3112c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.LinearLayout f3113d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.LinearLayout f3114e;

    /* renamed from: f, reason: collision with root package name */
    public android.widget.LinearLayout f3115f;

    /* renamed from: g, reason: collision with root package name */
    public android.widget.LinearLayout f3116g;
    public android.widget.LinearLayout h;
    public android.widget.TextView i;
    public android.widget.TextView j;
    public androidx.appcompat.widget.AppCompatCheckBox k;
    public android.widget.TextView l;
    public android.widget.TextView m;
    public android.widget.FrameLayout n;
    public android.widget.LinearLayout o;
    public android.widget.LinearLayout p;
    public android.widget.Button q;
    public android.widget.Button r;
    public android.widget.Button s;
    public f.a.k.n0.j.d t;
    public f.a.k.n0.j.c u;
    public f.a.k.n0.j.b v;
    public java.lang.String w;
    public java.lang.String x;
    public boolean y;
    public java.lang.String z;

    public static class a {
        public f.a.k.n0.j a;

        public a(android.app.Activity activity) {
            this.a = new f.a.k.n0.j(activity);
        }

        public f.a.k.n0.j a() {
            return this.a;
        }

        public f.a.k.n0.j.a b(boolean z) {
            this.a.J = z;
            return this;
        }

        public f.a.k.n0.j.a c(int i) {
            f.a.k.n0.j jVar = this.a;
            jVar.x = jVar.G.getString(i);
            return this;
        }

        public f.a.k.n0.j.a d(java.lang.String str) {
            this.a.x = str;
            return this;
        }

        public f.a.k.n0.j.a e(int i) {
            this.a.a = i;
            return this;
        }

        public f.a.k.n0.j.a f(int i) {
            f.a.k.n0.j jVar = this.a;
            jVar.a = 105;
            jVar.F = i;
            return this;
        }

        public f.a.k.n0.j.a g() {
            this.a.b = 202;
            return this;
        }

        public f.a.k.n0.j.a h(int i, f.a.k.n0.j.c cVar) {
            f.a.k.n0.j jVar = this.a;
            jVar.b = 200;
            jVar.B = jVar.G.getString(i);
            this.a.u = cVar;
            return this;
        }

        public f.a.k.n0.j.a i(java.lang.String str) {
            f.a.k.n0.j jVar = this.a;
            jVar.A = str;
            android.widget.TextView textView = jVar.m;
            if (textView != null) {
                textView.setText(str);
            }
            return this;
        }

        public f.a.k.n0.j.a j(int i) {
            f.a.k.n0.j jVar = this.a;
            jVar.w = jVar.G.getString(i);
            return this;
        }

        public f.a.k.n0.j.a k(java.lang.String str) {
            this.a.w = str;
            return this;
        }

        public f.a.k.n0.j.a l(java.lang.String str) {
            this.a.z = str;
            return this;
        }
    }

    public interface b {
        void a();
    }

    public interface c {
        void a(boolean z);
    }

    public interface d {
        void a(boolean z);

        void b();
    }

    public j(android.content.Context context) {
        super(context, null, 0);
        this.a = 100;
        this.b = 200;
        this.t = null;
        this.u = null;
        this.v = null;
        this.y = false;
        this.F = 0;
        this.I = null;
        this.J = true;
        this.G = context;
        android.view.LayoutInflater layoutInflater = (android.view.LayoutInflater) context.getSystemService("layout_inflater");
        this.H = layoutInflater;
        android.view.View viewInflate = layoutInflater.inflate(net.easyconn.R.layout.layout_pop_view, this);
        this.f3112c = (android.widget.FrameLayout) viewInflate.findViewById(net.easyconn.R.id.contentContainer);
        this.f3113d = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutContent);
        this.f3114e = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutContentCheckbox);
        this.f3115f = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutTitleContent);
        this.f3116g = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutTitleProgress);
        this.h = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutTitleContentCheckbox);
        this.n = (android.widget.FrameLayout) viewInflate.findViewById(net.easyconn.R.id.layoutButtons);
        this.o = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutTwoButtons);
        this.p = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutOneButton);
        this.q = (android.widget.Button) viewInflate.findViewById(net.easyconn.R.id.btnOne);
        this.r = (android.widget.Button) viewInflate.findViewById(net.easyconn.R.id.btnNegative);
        this.s = (android.widget.Button) viewInflate.findViewById(net.easyconn.R.id.btnPositive);
        this.q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.s.setOnClickListener(this);
        this.K = (android.widget.LinearLayout) viewInflate.findViewById(net.easyconn.R.id.layoutPop);
    }

    public void a() {
        android.widget.FrameLayout frameLayout = this.I;
        if (frameLayout != null) {
            frameLayout.removeView(this);
        }
        f.a.k.n0.j.b bVar = this.v;
        if (bVar != null) {
            bVar.a();
        }
    }

    public final boolean b(float f2, float f3) {
        int scaledWindowTouchSlop = android.view.ViewConfiguration.get(this.G).getScaledWindowTouchSlop();
        int width = this.K.getWidth();
        int height = this.K.getHeight();
        int width2 = this.I.getWidth();
        int height2 = this.I.getHeight();
        e.e.a.g.b("isOutOfBounds: x = %f, y = %f, slop = %d, popWidth = %d, popHeight = %d, activityWidth = %d, activityHeight = %d", java.lang.Float.valueOf(f2), java.lang.Float.valueOf(f3), java.lang.Integer.valueOf(scaledWindowTouchSlop), java.lang.Integer.valueOf(width), java.lang.Integer.valueOf(height), java.lang.Integer.valueOf(width2), java.lang.Integer.valueOf(height2));
        int i = width2 / 2;
        int i2 = width / 2;
        if (f2 >= i - i2) {
            int i3 = height2 / 2;
            int i4 = height / 2;
            if (f3 >= i3 - i4 && f2 <= i + i2 && f3 <= i3 + i4) {
                return false;
            }
        }
        return true;
    }

    public boolean c() {
        if (this.I != null) {
            for (int i = 0; i < this.I.getChildCount(); i++) {
                try {
                    if (this.I.getChildAt(i) == this) {
                        return true;
                    }
                } catch (java.lang.Exception unused) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x014a A[PHI: r0
  0x014a: PHI (r0v81 android.widget.TextView) = 
  (r0v31 android.widget.TextView)
  (r0v55 android.widget.TextView)
  (r0v65 android.widget.TextView)
  (r0v87 android.widget.TextView)
 binds: [B:45:0x0148, B:37:0x0108, B:24:0x009f, B:11:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cd A[PHI: r0 r1
  0x01cd: PHI (r0v22 android.widget.Button) = (r0v7 android.widget.Button), (r0v12 android.widget.Button), (r0v25 android.widget.Button) binds: [B:67:0x01ca, B:64:0x01b4, B:57:0x0184] A[DONT_GENERATE, DONT_INLINE]
  0x01cd: PHI (r1v8 java.lang.String) = (r1v2 java.lang.String), (r1v5 java.lang.String), (r1v9 java.lang.String) binds: [B:67:0x01ca, B:64:0x01b4, B:57:0x0184] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.a.k.n0.j d() {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.n0.j.d():f.a.k.n0.j");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        switch (view.getId()) {
            case net.easyconn.R.id.btnNegative /* 2131296360 */:
                f.a.k.n0.j.d dVar = this.t;
                if (dVar != null) {
                    dVar.b();
                    break;
                }
                break;
            case net.easyconn.R.id.btnOne /* 2131296361 */:
                f.a.k.n0.j.c cVar = this.u;
                if (cVar != null) {
                    androidx.appcompat.widget.AppCompatCheckBox appCompatCheckBox = this.k;
                    cVar.a(appCompatCheckBox != null ? appCompatCheckBox.isChecked() : false);
                    break;
                }
                break;
            case net.easyconn.R.id.btnPositive /* 2131296362 */:
                f.a.k.n0.j.d dVar2 = this.t;
                if (dVar2 != null) {
                    androidx.appcompat.widget.AppCompatCheckBox appCompatCheckBox2 = this.k;
                    dVar2.a(appCompatCheckBox2 != null ? appCompatCheckBox2.isChecked() : false);
                    break;
                }
                break;
            default:
                return;
        }
        a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        if (!this.J) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.L = motionEvent.getX();
            this.M = motionEvent.getY();
        } else if (action == 1 && b(this.L, this.M) && b(motionEvent.getX(), motionEvent.getY())) {
            a();
            return true;
        }
        return false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setPercentText(java.lang.String str) {
        android.widget.TextView textView = this.m;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
