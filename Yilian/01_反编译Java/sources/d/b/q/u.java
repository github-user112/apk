package d.b.q;

/* loaded from: classes.dex */
public class u extends android.widget.Spinner implements d.g.m.n {
    public static final int[] i = {android.R.attr.spinnerMode};
    public final d.b.q.e a;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.q.f0 f1831c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.SpinnerAdapter f1832d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1833e;

    /* renamed from: f, reason: collision with root package name */
    public d.b.q.u.f f1834f;

    /* renamed from: g, reason: collision with root package name */
    public int f1835g;
    public final android.graphics.Rect h;

    public class a implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.b.q.u.this.getInternalPopup().b()) {
                d.b.q.u.this.b();
            }
            android.view.ViewTreeObserver viewTreeObserver = d.b.q.u.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    public class b implements d.b.q.u.f, android.content.DialogInterface.OnClickListener {
        public d.b.k.g a;
        public android.widget.ListAdapter b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.CharSequence f1836c;

        public b() {
        }

        @Override // d.b.q.u.f
        public int a() {
            return 0;
        }

        @Override // d.b.q.u.f
        public boolean b() {
            d.b.k.g gVar = this.a;
            if (gVar != null) {
                return gVar.isShowing();
            }
            return false;
        }

        @Override // d.b.q.u.f
        public void dismiss() {
            d.b.k.g gVar = this.a;
            if (gVar != null) {
                gVar.dismiss();
                this.a = null;
            }
        }

        @Override // d.b.q.u.f
        public android.graphics.drawable.Drawable f() {
            return null;
        }

        @Override // d.b.q.u.f
        public void h(java.lang.CharSequence charSequence) {
            this.f1836c = charSequence;
        }

        @Override // d.b.q.u.f
        public void i(android.graphics.drawable.Drawable drawable) {
            android.util.Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // d.b.q.u.f
        public void j(int i) {
            android.util.Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // d.b.q.u.f
        public void k(int i) {
            android.util.Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // d.b.q.u.f
        public void l(int i) {
            android.util.Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // d.b.q.u.f
        public void m(int i, int i2) {
            if (this.b == null) {
                return;
            }
            d.b.k.g.a aVar = new d.b.k.g.a(d.b.q.u.this.getPopupContext());
            java.lang.CharSequence charSequence = this.f1836c;
            if (charSequence != null) {
                aVar.a.f26f = charSequence;
            }
            android.widget.ListAdapter listAdapter = this.b;
            int selectedItemPosition = d.b.q.u.this.getSelectedItemPosition();
            androidx.appcompat.app.AlertController.b bVar = aVar.a;
            bVar.l = listAdapter;
            bVar.m = this;
            bVar.p = selectedItemPosition;
            bVar.o = true;
            d.b.k.g gVarA = aVar.a();
            this.a = gVarA;
            android.widget.ListView listView = gVarA.f1628c.f22g;
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                listView.setTextDirection(i);
                listView.setTextAlignment(i2);
            }
            this.a.show();
        }

        @Override // d.b.q.u.f
        public int n() {
            return 0;
        }

        @Override // d.b.q.u.f
        public java.lang.CharSequence o() {
            return this.f1836c;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(android.content.DialogInterface dialogInterface, int i) {
            d.b.q.u.this.setSelection(i);
            if (d.b.q.u.this.getOnItemClickListener() != null) {
                d.b.q.u.this.performItemClick(null, i, this.b.getItemId(i));
            }
            d.b.k.g gVar = this.a;
            if (gVar != null) {
                gVar.dismiss();
                this.a = null;
            }
        }

        @Override // d.b.q.u.f
        public void p(android.widget.ListAdapter listAdapter) {
            this.b = listAdapter;
        }
    }

    public static class c implements android.widget.ListAdapter, android.widget.SpinnerAdapter {
        public android.widget.SpinnerAdapter a;
        public android.widget.ListAdapter b;

        public c(android.widget.SpinnerAdapter spinnerAdapter, android.content.res.Resources.Theme theme) {
            this.a = spinnerAdapter;
            if (spinnerAdapter instanceof android.widget.ListAdapter) {
                this.b = (android.widget.ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (android.os.Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter)) {
                    android.widget.ThemedSpinnerAdapter themedSpinnerAdapter = (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof d.b.q.r0) {
                    d.b.q.r0 r0Var = (d.b.q.r0) spinnerAdapter;
                    if (r0Var.getDropDownViewTheme() == null) {
                        r0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            android.widget.ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public android.view.View getDropDownView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            android.widget.ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(android.database.DataSetObserver dataSetObserver) {
            android.widget.SpinnerAdapter spinnerAdapter = this.a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public class d extends d.b.q.i0 implements d.b.q.u.f {
        public java.lang.CharSequence G;
        public android.widget.ListAdapter H;
        public final android.graphics.Rect I;
        public int J;

        public class a implements android.widget.AdapterView.OnItemClickListener {
            public a(d.b.q.u uVar) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
                d.b.q.u.this.setSelection(i);
                if (d.b.q.u.this.getOnItemClickListener() != null) {
                    d.b.q.u.d dVar = d.b.q.u.d.this;
                    d.b.q.u.this.performItemClick(view, i, dVar.H.getItemId(i));
                }
                d.b.q.u.d.this.dismiss();
            }
        }

        public class b implements android.view.ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
                d.b.q.u.d dVar = d.b.q.u.d.this;
                d.b.q.u uVar = d.b.q.u.this;
                if (dVar == null) {
                    throw null;
                }
                if (!(d.g.m.s.z(uVar) && uVar.getGlobalVisibleRect(dVar.I))) {
                    d.b.q.u.d.this.dismiss();
                } else {
                    d.b.q.u.d.this.v();
                    d.b.q.u.d.super.d();
                }
            }
        }

        public class c implements android.widget.PopupWindow.OnDismissListener {
            public final /* synthetic */ android.view.ViewTreeObserver.OnGlobalLayoutListener a;

            public c(android.view.ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                android.view.ViewTreeObserver viewTreeObserver = d.b.q.u.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.a);
                }
            }
        }

        public d(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
            super(context, attributeSet, i, 0);
            this.I = new android.graphics.Rect();
            this.r = d.b.q.u.this;
            s(true);
            this.p = 0;
            this.s = new d.b.q.u.d.a(d.b.q.u.this);
        }

        @Override // d.b.q.u.f
        public void h(java.lang.CharSequence charSequence) {
            this.G = charSequence;
        }

        @Override // d.b.q.u.f
        public void k(int i) {
            this.J = i;
        }

        @Override // d.b.q.u.f
        public void m(int i, int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.view.ViewTreeObserver viewTreeObserver;
            boolean zB = b();
            v();
            this.B.setInputMethodMode(2);
            super.d();
            d.b.q.d0 d0Var = this.f1791c;
            d0Var.setChoiceMode(1);
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                d0Var.setTextDirection(i);
                d0Var.setTextAlignment(i2);
            }
            int selectedItemPosition = d.b.q.u.this.getSelectedItemPosition();
            d.b.q.d0 d0Var2 = this.f1791c;
            if (b() && d0Var2 != null) {
                d0Var2.setListSelectionHidden(false);
                d0Var2.setSelection(selectedItemPosition);
                if (d0Var2.getChoiceMode() != 0) {
                    d0Var2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (zB || (viewTreeObserver = d.b.q.u.this.getViewTreeObserver()) == null) {
                return;
            }
            d.b.q.u.d.b bVar = new d.b.q.u.d.b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            this.B.setOnDismissListener(new d.b.q.u.d.c(bVar));
        }

        @Override // d.b.q.u.f
        public java.lang.CharSequence o() {
            return this.G;
        }

        @Override // d.b.q.i0, d.b.q.u.f
        public void p(android.widget.ListAdapter listAdapter) {
            super.p(listAdapter);
            this.H = listAdapter;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void v() {
            /*
                r8 = this;
                android.graphics.drawable.Drawable r0 = r8.f()
                r1 = 0
                if (r0 == 0) goto L26
                d.b.q.u r1 = d.b.q.u.this
                android.graphics.Rect r1 = r1.h
                r0.getPadding(r1)
                d.b.q.u r0 = d.b.q.u.this
                boolean r0 = d.b.q.b1.b(r0)
                if (r0 == 0) goto L1d
                d.b.q.u r0 = d.b.q.u.this
                android.graphics.Rect r0 = r0.h
                int r0 = r0.right
                goto L24
            L1d:
                d.b.q.u r0 = d.b.q.u.this
                android.graphics.Rect r0 = r0.h
                int r0 = r0.left
                int r0 = -r0
            L24:
                r1 = r0
                goto L2e
            L26:
                d.b.q.u r0 = d.b.q.u.this
                android.graphics.Rect r0 = r0.h
                r0.right = r1
                r0.left = r1
            L2e:
                d.b.q.u r0 = d.b.q.u.this
                int r0 = r0.getPaddingLeft()
                d.b.q.u r2 = d.b.q.u.this
                int r2 = r2.getPaddingRight()
                d.b.q.u r3 = d.b.q.u.this
                int r3 = r3.getWidth()
                d.b.q.u r4 = d.b.q.u.this
                int r5 = r4.f1835g
                r6 = -2
                if (r5 != r6) goto L78
                android.widget.ListAdapter r5 = r8.H
                android.widget.SpinnerAdapter r5 = (android.widget.SpinnerAdapter) r5
                android.graphics.drawable.Drawable r6 = r8.f()
                int r4 = r4.a(r5, r6)
                d.b.q.u r5 = d.b.q.u.this
                android.content.Context r5 = r5.getContext()
                android.content.res.Resources r5 = r5.getResources()
                android.util.DisplayMetrics r5 = r5.getDisplayMetrics()
                int r5 = r5.widthPixels
                d.b.q.u r6 = d.b.q.u.this
                android.graphics.Rect r6 = r6.h
                int r7 = r6.left
                int r5 = r5 - r7
                int r6 = r6.right
                int r5 = r5 - r6
                if (r4 <= r5) goto L70
                r4 = r5
            L70:
                int r5 = r3 - r0
                int r5 = r5 - r2
                int r4 = java.lang.Math.max(r4, r5)
                goto L7e
            L78:
                r4 = -1
                if (r5 != r4) goto L82
                int r4 = r3 - r0
                int r4 = r4 - r2
            L7e:
                r8.r(r4)
                goto L85
            L82:
                r8.r(r5)
            L85:
                d.b.q.u r4 = d.b.q.u.this
                boolean r4 = d.b.q.b1.b(r4)
                if (r4 == 0) goto L96
                int r3 = r3 - r2
                int r0 = r8.f1793e
                int r3 = r3 - r0
                int r0 = r8.J
                int r3 = r3 - r0
                int r3 = r3 + r1
                goto L9b
            L96:
                int r2 = r8.J
                int r0 = r0 + r2
                int r3 = r0 + r1
            L9b:
                r8.f1794f = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: d.b.q.u.d.v():void");
        }
    }

    public static class e extends android.view.View.BaseSavedState {
        public static final android.os.Parcelable.Creator<d.b.q.u.e> CREATOR = new d.b.q.u.e.a();
        public boolean a;

        public static class a implements android.os.Parcelable.Creator<d.b.q.u.e> {
            @Override // android.os.Parcelable.Creator
            public d.b.q.u.e createFromParcel(android.os.Parcel parcel) {
                return new d.b.q.u.e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public d.b.q.u.e[] newArray(int i) {
                return new d.b.q.u.e[i];
            }
        }

        public e(android.os.Parcel parcel) {
            super(parcel);
            this.a = parcel.readByte() != 0;
        }

        public e(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.a ? (byte) 1 : (byte) 0);
        }
    }

    public interface f {
        int a();

        boolean b();

        void dismiss();

        android.graphics.drawable.Drawable f();

        void h(java.lang.CharSequence charSequence);

        void i(android.graphics.drawable.Drawable drawable);

        void j(int i);

        void k(int i);

        void l(int i);

        void m(int i, int i2);

        int n();

        java.lang.CharSequence o();

        void p(android.widget.ListAdapter listAdapter);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public u(android.content.Context r9, android.util.AttributeSet r10, int r11) throws java.lang.Throwable {
        /*
            r8 = this;
            r8.<init>(r9, r10, r11)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r8.h = r0
            int[] r0 = d.b.j.Spinner
            r1 = 0
            android.content.res.TypedArray r0 = r9.obtainStyledAttributes(r10, r0, r11, r1)
            d.b.q.e r2 = new d.b.q.e
            r2.<init>(r8)
            r8.a = r2
            int r2 = d.b.j.Spinner_popupTheme
            int r2 = r0.getResourceId(r2, r1)
            if (r2 == 0) goto L28
            d.b.p.c r3 = new d.b.p.c
            r3.<init>(r9, r2)
            r8.b = r3
            goto L2a
        L28:
            r8.b = r9
        L2a:
            r2 = 0
            r3 = -1
            int[] r4 = d.b.q.u.i     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            android.content.res.TypedArray r4 = r9.obtainStyledAttributes(r10, r4, r11, r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            boolean r5 = r4.hasValue(r1)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            if (r5 == 0) goto L52
            int r3 = r4.getInt(r1, r1)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L41
            goto L52
        L3d:
            r9 = move-exception
            r2 = r4
            goto Ld1
        L41:
            r5 = move-exception
            goto L49
        L43:
            r9 = move-exception
            goto Ld1
        L46:
            r4 = move-exception
            r5 = r4
            r4 = r2
        L49:
            java.lang.String r6 = "AppCompatSpinner"
            java.lang.String r7 = "Could not read android:spinnerMode"
            android.util.Log.i(r6, r7, r5)     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L55
        L52:
            r4.recycle()
        L55:
            r4 = 1
            if (r3 == 0) goto L95
            if (r3 == r4) goto L5b
            goto La5
        L5b:
            d.b.q.u$d r3 = new d.b.q.u$d
            android.content.Context r5 = r8.b
            r3.<init>(r5, r10, r11)
            android.content.Context r5 = r8.b
            int[] r6 = d.b.j.Spinner
            d.b.q.v0 r1 = d.b.q.v0.o(r5, r10, r6, r11, r1)
            int r5 = d.b.j.Spinner_android_dropDownWidth
            r6 = -2
            int r5 = r1.i(r5, r6)
            r8.f1835g = r5
            int r5 = d.b.j.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r5 = r1.e(r5)
            android.widget.PopupWindow r6 = r3.B
            r6.setBackgroundDrawable(r5)
            int r5 = d.b.j.Spinner_android_prompt
            java.lang.String r5 = r0.getString(r5)
            r3.G = r5
            android.content.res.TypedArray r1 = r1.b
            r1.recycle()
            r8.f1834f = r3
            d.b.q.t r1 = new d.b.q.t
            r1.<init>(r8, r8, r3)
            r8.f1831c = r1
            goto La5
        L95:
            d.b.q.u$b r1 = new d.b.q.u$b
            r1.<init>()
            r8.f1834f = r1
            int r3 = d.b.j.Spinner_android_prompt
            java.lang.String r3 = r0.getString(r3)
            r1.h(r3)
        La5:
            int r1 = d.b.j.Spinner_android_entries
            java.lang.CharSequence[] r1 = r0.getTextArray(r1)
            if (r1 == 0) goto Lbd
            android.widget.ArrayAdapter r3 = new android.widget.ArrayAdapter
            r5 = 17367048(0x1090008, float:2.5162948E-38)
            r3.<init>(r9, r5, r1)
            int r9 = d.b.g.support_simple_spinner_dropdown_item
            r3.setDropDownViewResource(r9)
            r8.setAdapter(r3)
        Lbd:
            r0.recycle()
            r8.f1833e = r4
            android.widget.SpinnerAdapter r9 = r8.f1832d
            if (r9 == 0) goto Lcb
            r8.setAdapter(r9)
            r8.f1832d = r2
        Lcb:
            d.b.q.e r9 = r8.a
            r9.d(r10, r11)
            return
        Ld1:
            if (r2 == 0) goto Ld6
            r2.recycle()
        Ld6:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.u.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public int a(android.widget.SpinnerAdapter spinnerAdapter, android.graphics.drawable.Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = java.lang.Math.max(0, getSelectedItemPosition());
        int iMin = java.lang.Math.min(spinnerAdapter.getCount(), iMax + 15);
        android.view.View view = null;
        int iMax2 = 0;
        for (int iMax3 = java.lang.Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = java.lang.Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.h);
        android.graphics.Rect rect = this.h;
        return iMax2 + rect.left + rect.right;
    }

    public void b() {
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            this.f1834f.m(getTextDirection(), getTextAlignment());
        } else {
            this.f1834f.m(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        d.b.q.u.f fVar = this.f1834f;
        return fVar != null ? fVar.a() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        d.b.q.u.f fVar = this.f1834f;
        return fVar != null ? fVar.n() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1834f != null ? this.f1835g : super.getDropDownWidth();
    }

    public final d.b.q.u.f getInternalPopup() {
        return this.f1834f;
    }

    @Override // android.widget.Spinner
    public android.graphics.drawable.Drawable getPopupBackground() {
        d.b.q.u.f fVar = this.f1834f;
        return fVar != null ? fVar.f() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public android.content.Context getPopupContext() {
        return this.b;
    }

    @Override // android.widget.Spinner
    public java.lang.CharSequence getPrompt() {
        d.b.q.u.f fVar = this.f1834f;
        return fVar != null ? fVar.o() : super.getPrompt();
    }

    @Override // d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d.b.q.u.f fVar = this.f1834f;
        if (fVar == null || !fVar.b()) {
            return;
        }
        this.f1834f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f1834f == null || android.view.View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(java.lang.Math.min(java.lang.Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), android.view.View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.view.ViewTreeObserver viewTreeObserver;
        d.b.q.u.e eVar = (d.b.q.u.e) parcelable;
        super.onRestoreInstanceState(eVar.getSuperState());
        if (!eVar.a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new d.b.q.u.a());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        d.b.q.u.e eVar = new d.b.q.u.e(super.onSaveInstanceState());
        d.b.q.u.f fVar = this.f1834f;
        eVar.a = fVar != null && fVar.b();
        return eVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        d.b.q.f0 f0Var = this.f1831c;
        if (f0Var == null || !f0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        d.b.q.u.f fVar = this.f1834f;
        if (fVar == null) {
            return super.performClick();
        }
        if (fVar.b()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(android.widget.SpinnerAdapter spinnerAdapter) {
        if (!this.f1833e) {
            this.f1832d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1834f != null) {
            android.content.Context context = this.b;
            if (context == null) {
                context = getContext();
            }
            this.f1834f.p(new d.b.q.u.c(spinnerAdapter, context.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.f(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        d.b.q.u.f fVar = this.f1834f;
        if (fVar == null) {
            super.setDropDownHorizontalOffset(i2);
        } else {
            fVar.k(i2);
            this.f1834f.l(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        d.b.q.u.f fVar = this.f1834f;
        if (fVar != null) {
            fVar.j(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f1834f != null) {
            this.f1835g = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        d.b.q.u.f fVar = this.f1834f;
        if (fVar != null) {
            fVar.i(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(d.b.l.a.a.b(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(java.lang.CharSequence charSequence) {
        d.b.q.u.f fVar = this.f1834f;
        if (fVar != null) {
            fVar.h(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    @Override // d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        d.b.q.e eVar = this.a;
        if (eVar != null) {
            eVar.i(mode);
        }
    }
}
