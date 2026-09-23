package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class SearchView extends d.b.q.g0 implements d.b.p.b {
    public static final androidx.appcompat.widget.SearchView.k r0 = new androidx.appcompat.widget.SearchView.k();
    public android.graphics.Rect A;
    public int[] B;
    public int[] C;
    public final android.widget.ImageView D;
    public final android.graphics.drawable.Drawable F;
    public final int G;
    public final int H;
    public final android.content.Intent I;
    public final android.content.Intent J;
    public final java.lang.CharSequence K;
    public androidx.appcompat.widget.SearchView.m L;
    public androidx.appcompat.widget.SearchView.l M;
    public android.view.View.OnFocusChangeListener N;
    public androidx.appcompat.widget.SearchView.n O;
    public android.view.View.OnClickListener P;
    public boolean Q;
    public boolean R;
    public d.h.a.a S;
    public boolean T;
    public java.lang.CharSequence U;
    public boolean V;
    public boolean W;
    public int a0;
    public boolean b0;
    public java.lang.CharSequence c0;
    public java.lang.CharSequence d0;
    public boolean e0;
    public int f0;
    public android.app.SearchableInfo g0;
    public android.os.Bundle h0;
    public final java.lang.Runnable i0;
    public java.lang.Runnable j0;
    public final java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> k0;
    public final android.view.View.OnClickListener l0;
    public android.view.View.OnKeyListener m0;
    public final android.widget.TextView.OnEditorActionListener n0;
    public final android.widget.AdapterView.OnItemClickListener o0;
    public final androidx.appcompat.widget.SearchView.SearchAutoComplete p;
    public final android.widget.AdapterView.OnItemSelectedListener p0;
    public final android.view.View q;
    public android.text.TextWatcher q0;
    public final android.view.View r;
    public final android.view.View s;
    public final android.widget.ImageView t;
    public final android.widget.ImageView u;
    public final android.widget.ImageView v;
    public final android.widget.ImageView w;
    public final android.view.View x;
    public androidx.appcompat.widget.SearchView.p y;
    public android.graphics.Rect z;

    public static class SearchAutoComplete extends d.b.q.d {

        /* renamed from: d, reason: collision with root package name */
        public int f60d;

        /* renamed from: e, reason: collision with root package name */
        public androidx.appcompat.widget.SearchView f61e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f62f;

        /* renamed from: g, reason: collision with root package name */
        public final java.lang.Runnable f63g;

        public class a implements java.lang.Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = androidx.appcompat.widget.SearchView.SearchAutoComplete.this;
                if (searchAutoComplete.f62f) {
                    ((android.view.inputmethod.InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f62f = false;
                }
            }
        }

        public SearchAutoComplete(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet, d.b.a.autoCompleteTextViewStyle);
            this.f63g = new androidx.appcompat.widget.SearchView.SearchAutoComplete.a();
            this.f60d = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            android.content.res.Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f60d <= 0 || super.enoughToFilter();
        }

        @Override // d.b.q.d, android.widget.TextView, android.view.View
        public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
            android.view.inputmethod.InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f62f) {
                removeCallbacks(this.f63g);
                post(this.f63g);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) android.util.TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, android.graphics.Rect rect) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            super.onFocusChanged(z, i, rect);
            androidx.appcompat.widget.SearchView searchView = this.f61e;
            searchView.I(searchView.R);
            searchView.post(searchView.i0);
            if (searchView.p.hasFocus()) {
                searchView.t();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, android.view.KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    android.view.KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    android.view.KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f61e.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            java.lang.reflect.Method method;
            super.onWindowFocusChanged(z);
            if (z && this.f61e.hasFocus() && getVisibility() == 0) {
                this.f62f = true;
                if (!androidx.appcompat.widget.SearchView.u(getContext()) || (method = androidx.appcompat.widget.SearchView.r0.f64c) == null) {
                    return;
                }
                try {
                    method.invoke(this, java.lang.Boolean.TRUE);
                } catch (java.lang.Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(java.lang.CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            android.view.inputmethod.InputMethodManager inputMethodManager = (android.view.inputmethod.InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f62f = false;
                removeCallbacks(this.f63g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f62f = true;
                    return;
                }
                this.f62f = false;
                removeCallbacks(this.f63g);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(androidx.appcompat.widget.SearchView searchView) {
            this.f61e = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f60d = i;
        }
    }

    public class a implements android.text.TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i, int i2, int i3) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            android.text.Editable text = searchView.p.getText();
            searchView.d0 = text;
            boolean z = !android.text.TextUtils.isEmpty(text);
            searchView.H(z);
            searchView.J(!z);
            searchView.D();
            searchView.G();
            if (searchView.L != null && !android.text.TextUtils.equals(charSequence, searchView.c0)) {
                searchView.L.a(charSequence.toString());
            }
            searchView.c0 = charSequence.toString();
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.SearchView.this.E();
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.h.a.a aVar = androidx.appcompat.widget.SearchView.this.S;
            if (aVar instanceof d.b.q.p0) {
                aVar.b(null);
            }
        }
    }

    public class d implements android.view.View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(android.view.View view, boolean z) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            android.view.View.OnFocusChangeListener onFocusChangeListener = searchView.N;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    public class e implements android.view.View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(android.view.View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            if (searchView.x.getWidth() > 1) {
                android.content.res.Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.r.getPaddingLeft();
                android.graphics.Rect rect = new android.graphics.Rect();
                boolean zB = d.b.q.b1.b(searchView);
                int dimensionPixelSize = searchView.Q ? resources.getDimensionPixelSize(d.b.d.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(d.b.d.abc_dropdownitem_icon_width) : 0;
                searchView.p.getDropDownBackground().getPadding(rect);
                searchView.p.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchView.p.setDropDownWidth((((searchView.x.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    public class f implements android.view.View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            if (view == searchView.t) {
                searchView.A();
                return;
            }
            if (view == searchView.v) {
                searchView.w();
                return;
            }
            if (view == searchView.u) {
                searchView.B();
                return;
            }
            if (view != searchView.w) {
                if (view == searchView.p) {
                    searchView.t();
                    return;
                }
                return;
            }
            android.app.SearchableInfo searchableInfo = searchView.g0;
            if (searchableInfo == null) {
                return;
            }
            try {
                if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                        searchView.getContext().startActivity(searchView.s(searchView.J, searchableInfo));
                    }
                } else {
                    android.content.Intent intent = new android.content.Intent(searchView.I);
                    android.content.ComponentName searchActivity = searchableInfo.getSearchActivity();
                    intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                    searchView.getContext().startActivity(intent);
                }
            } catch (android.content.ActivityNotFoundException unused) {
                android.util.Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    public class g implements android.view.View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(android.view.View view, int i, android.view.KeyEvent keyEvent) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            if (searchView.g0 == null) {
                return false;
            }
            if (searchView.p.isPopupShowing() && androidx.appcompat.widget.SearchView.this.p.getListSelection() != -1) {
                return androidx.appcompat.widget.SearchView.this.C(i, keyEvent);
            }
            if ((android.text.TextUtils.getTrimmedLength(androidx.appcompat.widget.SearchView.this.p.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            androidx.appcompat.widget.SearchView searchView2 = androidx.appcompat.widget.SearchView.this;
            searchView2.v(0, null, searchView2.p.getText().toString());
            return true;
        }
    }

    public class h implements android.widget.TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(android.widget.TextView textView, int i, android.view.KeyEvent keyEvent) {
            androidx.appcompat.widget.SearchView.this.B();
            return true;
        }
    }

    public class i implements android.widget.AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
            androidx.appcompat.widget.SearchView.this.x(i);
        }
    }

    public class j implements android.widget.AdapterView.OnItemSelectedListener {
        public j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
            androidx.appcompat.widget.SearchView.this.y(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
        }
    }

    public static class k {
        public java.lang.reflect.Method a;
        public java.lang.reflect.Method b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.reflect.Method f64c;

        public k() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            try {
                java.lang.reflect.Method declaredMethod = android.widget.AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new java.lang.Class[0]);
                this.a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused) {
            }
            try {
                java.lang.reflect.Method declaredMethod2 = android.widget.AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new java.lang.Class[0]);
                this.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused2) {
            }
            try {
                java.lang.reflect.Method method = android.widget.AutoCompleteTextView.class.getMethod("ensureImeVisible", java.lang.Boolean.TYPE);
                this.f64c = method;
                method.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused3) {
            }
        }
    }

    public interface l {
        boolean a();
    }

    public interface m {
        boolean a(java.lang.String str);

        boolean b(java.lang.String str);
    }

    public interface n {
        boolean a(int i);

        boolean b(int i);
    }

    public static class o extends d.i.a.a {
        public static final android.os.Parcelable.Creator<androidx.appcompat.widget.SearchView.o> CREATOR = new androidx.appcompat.widget.SearchView.o.a();

        /* renamed from: c, reason: collision with root package name */
        public boolean f65c;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.appcompat.widget.SearchView.o> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new androidx.appcompat.widget.SearchView.o(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new androidx.appcompat.widget.SearchView.o[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public androidx.appcompat.widget.SearchView.o createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.appcompat.widget.SearchView.o(parcel, classLoader);
            }
        }

        public o(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f65c = ((java.lang.Boolean) parcel.readValue(null)).booleanValue();
        }

        public o(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SearchView.SavedState{");
            sbO.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sbO.append(" isIconified=");
            sbO.append(this.f65c);
            sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
            return sbO.toString();
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeValue(java.lang.Boolean.valueOf(this.f65c));
        }
    }

    public static class p extends android.view.TouchDelegate {
        public final android.view.View a;
        public final android.graphics.Rect b;

        /* renamed from: c, reason: collision with root package name */
        public final android.graphics.Rect f66c;

        /* renamed from: d, reason: collision with root package name */
        public final android.graphics.Rect f67d;

        /* renamed from: e, reason: collision with root package name */
        public final int f68e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f69f;

        public p(android.graphics.Rect rect, android.graphics.Rect rect2, android.view.View view) {
            super(rect, view);
            this.f68e = android.view.ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = new android.graphics.Rect();
            this.f67d = new android.graphics.Rect();
            this.f66c = new android.graphics.Rect();
            a(rect, rect2);
            this.a = view;
        }

        public void a(android.graphics.Rect rect, android.graphics.Rect rect2) {
            this.b.set(rect);
            this.f67d.set(rect);
            android.graphics.Rect rect3 = this.f67d;
            int i = this.f68e;
            rect3.inset(-i, -i);
            this.f66c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            boolean z;
            float width;
            int height;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f69f;
                    if (z2 && !this.f67d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f69f;
                        this.f69f = false;
                    }
                    z = true;
                    z3 = false;
                }
                z3 = z2;
                z = true;
            } else {
                if (this.b.contains(x, y)) {
                    this.f69f = true;
                    z = true;
                }
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (!z || this.f66c.contains(x, y)) {
                android.graphics.Rect rect = this.f66c;
                width = x - rect.left;
                height = y - rect.top;
            } else {
                width = this.a.getWidth() / 2;
                height = this.a.getHeight() / 2;
            }
            motionEvent.setLocation(width, height);
            return this.a.dispatchTouchEvent(motionEvent);
        }
    }

    public SearchView(android.content.Context context) {
        this(context, null);
    }

    public SearchView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, d.b.a.searchViewStyle);
    }

    public SearchView(android.content.Context context, android.util.AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.z = new android.graphics.Rect();
        this.A = new android.graphics.Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.i0 = new androidx.appcompat.widget.SearchView.b();
        this.j0 = new androidx.appcompat.widget.SearchView.c();
        this.k0 = new java.util.WeakHashMap<>();
        this.l0 = new androidx.appcompat.widget.SearchView.f();
        this.m0 = new androidx.appcompat.widget.SearchView.g();
        this.n0 = new androidx.appcompat.widget.SearchView.h();
        this.o0 = new androidx.appcompat.widget.SearchView.i();
        this.p0 = new androidx.appcompat.widget.SearchView.j();
        this.q0 = new androidx.appcompat.widget.SearchView.a();
        d.b.q.v0 v0Var = new d.b.q.v0(context, context.obtainStyledAttributes(attributeSet, d.b.j.SearchView, i2, 0));
        android.view.LayoutInflater.from(context).inflate(v0Var.j(d.b.j.SearchView_layout, d.b.g.abc_search_view), (android.view.ViewGroup) this, true);
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = (androidx.appcompat.widget.SearchView.SearchAutoComplete) findViewById(d.b.f.search_src_text);
        this.p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.q = findViewById(d.b.f.search_edit_frame);
        this.r = findViewById(d.b.f.search_plate);
        this.s = findViewById(d.b.f.submit_area);
        this.t = (android.widget.ImageView) findViewById(d.b.f.search_button);
        this.u = (android.widget.ImageView) findViewById(d.b.f.search_go_btn);
        this.v = (android.widget.ImageView) findViewById(d.b.f.search_close_btn);
        this.w = (android.widget.ImageView) findViewById(d.b.f.search_voice_btn);
        this.D = (android.widget.ImageView) findViewById(d.b.f.search_mag_icon);
        d.g.m.s.M(this.r, v0Var.e(d.b.j.SearchView_queryBackground));
        this.s.setBackground(v0Var.e(d.b.j.SearchView_submitBackground));
        this.t.setImageDrawable(v0Var.e(d.b.j.SearchView_searchIcon));
        this.u.setImageDrawable(v0Var.e(d.b.j.SearchView_goIcon));
        this.v.setImageDrawable(v0Var.e(d.b.j.SearchView_closeIcon));
        this.w.setImageDrawable(v0Var.e(d.b.j.SearchView_voiceIcon));
        this.D.setImageDrawable(v0Var.e(d.b.j.SearchView_searchIcon));
        this.F = v0Var.e(d.b.j.SearchView_searchHintIcon);
        d.b.k.r.v0(this.t, getResources().getString(d.b.h.abc_searchview_description_search));
        this.G = v0Var.j(d.b.j.SearchView_suggestionRowLayout, d.b.g.abc_search_dropdown_item_icons_2line);
        this.H = v0Var.j(d.b.j.SearchView_commitIcon, 0);
        this.t.setOnClickListener(this.l0);
        this.v.setOnClickListener(this.l0);
        this.u.setOnClickListener(this.l0);
        this.w.setOnClickListener(this.l0);
        this.p.setOnClickListener(this.l0);
        this.p.addTextChangedListener(this.q0);
        this.p.setOnEditorActionListener(this.n0);
        this.p.setOnItemClickListener(this.o0);
        this.p.setOnItemSelectedListener(this.p0);
        this.p.setOnKeyListener(this.m0);
        this.p.setOnFocusChangeListener(new androidx.appcompat.widget.SearchView.d());
        setIconifiedByDefault(v0Var.a(d.b.j.SearchView_iconifiedByDefault, true));
        int iD = v0Var.d(d.b.j.SearchView_android_maxWidth, -1);
        if (iD != -1) {
            setMaxWidth(iD);
        }
        this.K = v0Var.l(d.b.j.SearchView_defaultQueryHint);
        this.U = v0Var.l(d.b.j.SearchView_queryHint);
        int iH = v0Var.h(d.b.j.SearchView_android_imeOptions, -1);
        if (iH != -1) {
            setImeOptions(iH);
        }
        int iH2 = v0Var.h(d.b.j.SearchView_android_inputType, -1);
        if (iH2 != -1) {
            setInputType(iH2);
        }
        setFocusable(v0Var.a(d.b.j.SearchView_android_focusable, true));
        v0Var.b.recycle();
        android.content.Intent intent = new android.content.Intent("android.speech.action.WEB_SEARCH");
        this.I = intent;
        intent.addFlags(268435456);
        this.I.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        android.content.Intent intent2 = new android.content.Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.J = intent2;
        intent2.addFlags(268435456);
        android.view.View viewFindViewById = findViewById(this.p.getDropDownAnchor());
        this.x = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.addOnLayoutChangeListener(new androidx.appcompat.widget.SearchView.e());
        }
        I(this.Q);
        F();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(d.b.d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(d.b.d.abc_search_view_preferred_width);
    }

    private void setQuery(java.lang.CharSequence charSequence) {
        this.p.setText(charSequence);
        this.p.setSelection(android.text.TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public static boolean u(android.content.Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public void A() {
        I(false);
        this.p.requestFocus();
        this.p.setImeVisibility(true);
        android.view.View.OnClickListener onClickListener = this.P;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void B() {
        android.text.Editable text = this.p.getText();
        if (text == null || android.text.TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        androidx.appcompat.widget.SearchView.m mVar = this.L;
        if (mVar == null || !mVar.b(text.toString())) {
            if (this.g0 != null) {
                v(0, null, text.toString());
            }
            this.p.setImeVisibility(false);
            this.p.dismissDropDown();
        }
    }

    public boolean C(int i2, android.view.KeyEvent keyEvent) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (this.g0 != null && this.S != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return x(this.p.getListSelection());
            }
            if (i2 == 21 || i2 == 22) {
                this.p.setSelection(i2 == 21 ? 0 : this.p.length());
                this.p.setListSelection(0);
                this.p.clearListSelection();
                androidx.appcompat.widget.SearchView.k kVar = r0;
                androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.p;
                java.lang.reflect.Method method = kVar.f64c;
                if (method != null) {
                    try {
                        method.invoke(searchAutoComplete, java.lang.Boolean.TRUE);
                    } catch (java.lang.Exception unused) {
                    }
                }
                return true;
            }
            if (i2 != 19 || this.p.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    public final void D() {
        boolean z = true;
        boolean z2 = !android.text.TextUtils.isEmpty(this.p.getText());
        if (!z2 && (!this.Q || this.e0)) {
            z = false;
        }
        this.v.setVisibility(z ? 0 : 8);
        android.graphics.drawable.Drawable drawable = this.v.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? android.view.ViewGroup.ENABLED_STATE_SET : android.view.ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void E() {
        int[] iArr = this.p.hasFocus() ? android.view.ViewGroup.FOCUSED_STATE_SET : android.view.ViewGroup.EMPTY_STATE_SET;
        android.graphics.drawable.Drawable background = this.r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        android.graphics.drawable.Drawable background2 = this.s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void F() {
        java.lang.CharSequence queryHint = getQueryHint();
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.p;
        if (queryHint == null) {
            queryHint = "";
        }
        if (this.Q && this.F != null) {
            double textSize = this.p.getTextSize();
            java.lang.Double.isNaN(textSize);
            java.lang.Double.isNaN(textSize);
            int i2 = (int) (textSize * 1.25d);
            this.F.setBounds(0, 0, i2, i2);
            android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new android.text.style.ImageSpan(this.F), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void G() {
        int i2 = 0;
        if (!((this.T || this.b0) && !this.R) || (this.u.getVisibility() != 0 && this.w.getVisibility() != 0)) {
            i2 = 8;
        }
        this.s.setVisibility(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void H(boolean r3) {
        /*
            r2 = this;
            boolean r0 = r2.T
            r1 = 0
            if (r0 == 0) goto L21
            if (r0 != 0) goto Lb
            boolean r0 = r2.b0
            if (r0 == 0) goto L11
        Lb:
            boolean r0 = r2.R
            if (r0 != 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L21
            boolean r0 = r2.hasFocus()
            if (r0 == 0) goto L21
            if (r3 != 0) goto L23
            boolean r3 = r2.b0
            if (r3 != 0) goto L21
            goto L23
        L21:
            r1 = 8
        L23:
            android.widget.ImageView r3 = r2.u
            r3.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.H(boolean):void");
    }

    public final void I(boolean z) {
        this.R = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !android.text.TextUtils.isEmpty(this.p.getText());
        this.t.setVisibility(i2);
        H(z2);
        this.q.setVisibility(z ? 8 : 0);
        this.D.setVisibility((this.D.getDrawable() == null || this.Q) ? 8 : 0);
        D();
        J(!z2);
        G();
    }

    public final void J(boolean z) {
        int i2 = 8;
        if (this.b0 && !this.R && z) {
            this.u.setVisibility(8);
            i2 = 0;
        }
        this.w.setVisibility(i2);
    }

    @Override // d.b.p.b
    public void c() {
        if (this.e0) {
            return;
        }
        this.e0 = true;
        int imeOptions = this.p.getImeOptions();
        this.f0 = imeOptions;
        this.p.setImeOptions(imeOptions | net.easyconn.ecsdk.ECTypes.ECInputImeOptions.EC_INPUT_IME_FLAG_NO_FULL_SCREEN);
        this.p.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.W = true;
        super.clearFocus();
        this.p.clearFocus();
        this.p.setImeVisibility(false);
        this.W = false;
    }

    @Override // d.b.p.b
    public void f() {
        this.p.setText("");
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.p;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.d0 = "";
        clearFocus();
        I(true);
        this.p.setImeOptions(this.f0);
        this.e0 = false;
    }

    public int getImeOptions() {
        return this.p.getImeOptions();
    }

    public int getInputType() {
        return this.p.getInputType();
    }

    public int getMaxWidth() {
        return this.a0;
    }

    public java.lang.CharSequence getQuery() {
        return this.p.getText();
    }

    public java.lang.CharSequence getQueryHint() {
        java.lang.CharSequence charSequence = this.U;
        if (charSequence != null) {
            return charSequence;
        }
        android.app.SearchableInfo searchableInfo = this.g0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.K : getContext().getText(this.g0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.H;
    }

    public int getSuggestionRowLayout() {
        return this.G;
    }

    public d.h.a.a getSuggestionsAdapter() {
        return this.S;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.i0);
        post(this.j0);
        super.onDetachedFromWindow();
    }

    @Override // d.b.q.g0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.p;
            android.graphics.Rect rect = this.z;
            searchAutoComplete.getLocationInWindow(this.B);
            getLocationInWindow(this.C);
            int[] iArr = this.B;
            int i6 = iArr[1];
            int[] iArr2 = this.C;
            int i7 = i6 - iArr2[1];
            int i8 = iArr[0] - iArr2[0];
            rect.set(i8, i7, searchAutoComplete.getWidth() + i8, searchAutoComplete.getHeight() + i7);
            android.graphics.Rect rect2 = this.A;
            android.graphics.Rect rect3 = this.z;
            rect2.set(rect3.left, 0, rect3.right, i5 - i3);
            androidx.appcompat.widget.SearchView.p pVar = this.y;
            if (pVar != null) {
                pVar.a(this.A, this.z);
                return;
            }
            androidx.appcompat.widget.SearchView.p pVar2 = new androidx.appcompat.widget.SearchView.p(this.A, this.z, this.p);
            this.y = pVar2;
            setTouchDelegate(pVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0049  */
    @Override // d.b.q.g0, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r4, int r5) {
        /*
            r3 = this;
            boolean r0 = r3.R
            if (r0 == 0) goto L8
            super.onMeasure(r4, r5)
            return
        L8:
            int r0 = android.view.View.MeasureSpec.getMode(r4)
            int r4 = android.view.View.MeasureSpec.getSize(r4)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L2a
            if (r0 == 0) goto L20
            if (r0 == r2) goto L1b
            goto L37
        L1b:
            int r0 = r3.a0
            if (r0 <= 0) goto L37
            goto L2e
        L20:
            int r4 = r3.a0
            if (r4 <= 0) goto L25
            goto L37
        L25:
            int r4 = r3.getPreferredWidth()
            goto L37
        L2a:
            int r0 = r3.a0
            if (r0 <= 0) goto L2f
        L2e:
            goto L33
        L2f:
            int r0 = r3.getPreferredWidth()
        L33:
            int r4 = java.lang.Math.min(r0, r4)
        L37:
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            if (r0 == r1) goto L49
            if (r0 == 0) goto L44
            goto L51
        L44:
            int r5 = r3.getPreferredHeight()
            goto L51
        L49:
            int r0 = r3.getPreferredHeight()
            int r5 = java.lang.Math.min(r0, r5)
        L51:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r2)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r2)
            super.onMeasure(r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.appcompat.widget.SearchView.o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.appcompat.widget.SearchView.o oVar = (androidx.appcompat.widget.SearchView.o) parcelable;
        super.onRestoreInstanceState(oVar.a);
        I(oVar.f65c);
        requestLayout();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.appcompat.widget.SearchView.o oVar = new androidx.appcompat.widget.SearchView.o(super.onSaveInstanceState());
        oVar.f65c = this.R;
        return oVar;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.i0);
    }

    public final android.content.Intent r(java.lang.String str, android.net.Uri uri, java.lang.String str2, java.lang.String str3, int i2, java.lang.String str4) {
        android.content.Intent intent = new android.content.Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.d0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        android.os.Bundle bundle = this.h0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.g0.getSearchActivity());
        return intent;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, android.graphics.Rect rect) {
        if (this.W || !isFocusable()) {
            return false;
        }
        if (this.R) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.p.requestFocus(i2, rect);
        if (zRequestFocus) {
            I(false);
        }
        return zRequestFocus;
    }

    public final android.content.Intent s(android.content.Intent intent, android.app.SearchableInfo searchableInfo) {
        android.content.ComponentName searchActivity = searchableInfo.getSearchActivity();
        android.content.Intent intent2 = new android.content.Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        android.app.PendingIntent activity = android.app.PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        android.os.Bundle bundle = new android.os.Bundle();
        android.os.Bundle bundle2 = this.h0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        android.content.Intent intent3 = new android.content.Intent(intent);
        android.content.res.Resources resources = getResources();
        java.lang.String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        java.lang.String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        java.lang.String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public void setAppSearchData(android.os.Bundle bundle) {
        this.h0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            w();
        } else {
            A();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.Q == z) {
            return;
        }
        this.Q = z;
        I(z);
        F();
    }

    public void setImeOptions(int i2) {
        this.p.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.p.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.a0 = i2;
        requestLayout();
    }

    public void setOnCloseListener(androidx.appcompat.widget.SearchView.l lVar) {
        this.M = lVar;
    }

    public void setOnQueryTextFocusChangeListener(android.view.View.OnFocusChangeListener onFocusChangeListener) {
        this.N = onFocusChangeListener;
    }

    public void setOnQueryTextListener(androidx.appcompat.widget.SearchView.m mVar) {
        this.L = mVar;
    }

    public void setOnSearchClickListener(android.view.View.OnClickListener onClickListener) {
        this.P = onClickListener;
    }

    public void setOnSuggestionListener(androidx.appcompat.widget.SearchView.n nVar) {
        this.O = nVar;
    }

    public void setQueryHint(java.lang.CharSequence charSequence) {
        this.U = charSequence;
        F();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.V = z;
        d.h.a.a aVar = this.S;
        if (aVar instanceof d.b.q.p0) {
            ((d.b.q.p0) aVar).r = z ? 2 : 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.g0 = r7
            r0 = 1
            r1 = 65536(0x10000, float:9.18355E-41)
            r2 = 0
            if (r7 == 0) goto L6e
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.p
            int r7 = r7.getSuggestThreshold()
            r3.setThreshold(r7)
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.p
            android.app.SearchableInfo r3 = r6.g0
            int r3 = r3.getImeOptions()
            r7.setImeOptions(r3)
            android.app.SearchableInfo r7 = r6.g0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r0) goto L36
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.g0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L36
            r7 = r7 | r1
            r3 = 524288(0x80000, float:7.34684E-40)
            r7 = r7 | r3
        L36:
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.p
            r3.setInputType(r7)
            d.h.a.a r7 = r6.S
            if (r7 == 0) goto L42
            r7.b(r2)
        L42:
            android.app.SearchableInfo r7 = r6.g0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L6b
            d.b.q.p0 r7 = new d.b.q.p0
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.g0
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r5 = r6.k0
            r7.<init>(r3, r6, r4, r5)
            r6.S = r7
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.p
            r3.setAdapter(r7)
            d.h.a.a r7 = r6.S
            d.b.q.p0 r7 = (d.b.q.p0) r7
            boolean r3 = r6.V
            if (r3 == 0) goto L68
            r3 = 2
            goto L69
        L68:
            r3 = 1
        L69:
            r7.r = r3
        L6b:
            r6.F()
        L6e:
            android.app.SearchableInfo r7 = r6.g0
            r3 = 0
            if (r7 == 0) goto L9f
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L9f
            android.app.SearchableInfo r7 = r6.g0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L84
            android.content.Intent r2 = r6.I
            goto L8e
        L84:
            android.app.SearchableInfo r7 = r6.g0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L8e
            android.content.Intent r2 = r6.J
        L8e:
            if (r2 == 0) goto L9f
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r2, r1)
            if (r7 == 0) goto L9f
            goto La0
        L9f:
            r0 = 0
        La0:
            r6.b0 = r0
            if (r0 == 0) goto Lab
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.p
            java.lang.String r0 = "nm"
            r7.setPrivateImeOptions(r0)
        Lab:
            boolean r7 = r6.R
            r6.I(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.T = z;
        I(this.R);
    }

    public void setSuggestionsAdapter(d.h.a.a aVar) {
        this.S = aVar;
        this.p.setAdapter(aVar);
    }

    public void t() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            this.p.refreshAutoCompleteResults();
            return;
        }
        androidx.appcompat.widget.SearchView.k kVar = r0;
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.p;
        java.lang.reflect.Method method = kVar.a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new java.lang.Object[0]);
            } catch (java.lang.Exception unused) {
            }
        }
        androidx.appcompat.widget.SearchView.k kVar2 = r0;
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete2 = this.p;
        java.lang.reflect.Method method2 = kVar2.b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete2, new java.lang.Object[0]);
            } catch (java.lang.Exception unused2) {
            }
        }
    }

    public void v(int i2, java.lang.String str, java.lang.String str2) {
        getContext().startActivity(r("android.intent.action.SEARCH", null, null, str2, i2, null));
    }

    public void w() {
        if (!android.text.TextUtils.isEmpty(this.p.getText())) {
            this.p.setText("");
            this.p.requestFocus();
            this.p.setImeVisibility(true);
        } else if (this.Q) {
            androidx.appcompat.widget.SearchView.l lVar = this.M;
            if (lVar == null || !lVar.a()) {
                clearFocus();
                I(true);
            }
        }
    }

    public boolean x(int i2) {
        int position;
        java.lang.String strI;
        androidx.appcompat.widget.SearchView.n nVar = this.O;
        if (nVar != null && nVar.b(i2)) {
            return false;
        }
        android.database.Cursor cursor = this.S.f2034c;
        if (cursor != null && cursor.moveToPosition(i2)) {
            android.content.Intent intentR = null;
            try {
                java.lang.String strE = d.b.q.p0.e(cursor, "suggest_intent_action");
                if (strE == null) {
                    strE = this.g0.getSuggestIntentAction();
                }
                if (strE == null) {
                    strE = "android.intent.action.SEARCH";
                }
                java.lang.String str = strE;
                java.lang.String strI2 = d.b.q.p0.i(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strI2 == null) {
                    strI2 = this.g0.getSuggestIntentData();
                }
                if (strI2 != null && (strI = d.b.q.p0.i(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strI2 = strI2 + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + android.net.Uri.encode(strI);
                }
                intentR = r(str, strI2 == null ? null : android.net.Uri.parse(strI2), d.b.q.p0.i(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), d.b.q.p0.i(cursor, cursor.getColumnIndex("suggest_intent_query")), 0, null);
            } catch (java.lang.RuntimeException e2) {
                try {
                    position = cursor.getPosition();
                } catch (java.lang.RuntimeException unused) {
                    position = -1;
                }
                android.util.Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            }
            if (intentR != null) {
                try {
                    getContext().startActivity(intentR);
                } catch (java.lang.RuntimeException e3) {
                    android.util.Log.e("SearchView", "Failed launch activity: " + intentR, e3);
                }
            }
        }
        this.p.setImeVisibility(false);
        this.p.dismissDropDown();
        return true;
    }

    public boolean y(int i2) {
        java.lang.CharSequence charSequenceC;
        androidx.appcompat.widget.SearchView.n nVar = this.O;
        if (nVar != null && nVar.a(i2)) {
            return false;
        }
        android.text.Editable text = this.p.getText();
        android.database.Cursor cursor = this.S.f2034c;
        if (cursor == null) {
            return true;
        }
        if (!cursor.moveToPosition(i2) || (charSequenceC = this.S.c(cursor)) == null) {
            setQuery(text);
            return true;
        }
        setQuery(charSequenceC);
        return true;
    }

    public void z(java.lang.CharSequence charSequence) {
        setQuery(charSequence);
    }
}
