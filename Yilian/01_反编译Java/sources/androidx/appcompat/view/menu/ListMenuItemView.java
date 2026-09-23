package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class ListMenuItemView extends android.widget.LinearLayout implements d.b.p.i.n.a, android.widget.AbsListView.SelectionBoundsAdjuster {
    public d.b.p.i.i a;
    public android.widget.ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.RadioButton f33c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.TextView f34d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.CheckBox f35e;

    /* renamed from: f, reason: collision with root package name */
    public android.widget.TextView f36f;

    /* renamed from: g, reason: collision with root package name */
    public android.widget.ImageView f37g;
    public android.widget.ImageView h;
    public android.widget.LinearLayout i;
    public android.graphics.drawable.Drawable j;
    public int k;
    public android.content.Context l;
    public boolean m;
    public android.graphics.drawable.Drawable n;
    public boolean o;
    public android.view.LayoutInflater p;
    public boolean q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        int i = d.b.a.listMenuViewStyle;
        d.b.q.v0 v0VarO = d.b.q.v0.o(getContext(), attributeSet, d.b.j.MenuView, i, 0);
        this.j = v0VarO.e(d.b.j.MenuView_android_itemBackground);
        this.k = v0VarO.j(d.b.j.MenuView_android_itemTextAppearance, -1);
        this.m = v0VarO.a(d.b.j.MenuView_preserveIconSpacing, false);
        this.l = context;
        this.n = v0VarO.e(d.b.j.MenuView_subMenuArrow);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, d.b.a.dropDownListViewStyle, 0);
        this.o = typedArrayObtainStyledAttributes.hasValue(0);
        v0VarO.b.recycle();
        typedArrayObtainStyledAttributes.recycle();
    }

    private android.view.LayoutInflater getInflater() {
        if (this.p == null) {
            this.p = android.view.LayoutInflater.from(getContext());
        }
        return this.p;
    }

    private void setSubMenuArrowVisible(boolean z) {
        android.widget.ImageView imageView = this.f37g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public final void a() {
        android.widget.CheckBox checkBox = (android.widget.CheckBox) getInflater().inflate(d.b.g.abc_list_menu_item_checkbox, (android.view.ViewGroup) this, false);
        this.f35e = checkBox;
        android.widget.LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(android.graphics.Rect rect) {
        android.widget.ImageView imageView = this.h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) this.h.getLayoutParams();
        rect.top = this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    public final void b() {
        android.widget.RadioButton radioButton = (android.widget.RadioButton) getInflater().inflate(d.b.g.abc_list_menu_item_radio, (android.view.ViewGroup) this, false);
        this.f33c = radioButton;
        android.widget.LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    public void c(boolean z) {
        int i;
        java.lang.String string;
        int i2 = (z && this.a.m()) ? 0 : 8;
        if (i2 == 0) {
            android.widget.TextView textView = this.f36f;
            d.b.p.i.i iVar = this.a;
            char cE = iVar.e();
            if (cE == 0) {
                string = "";
            } else {
                android.content.res.Resources resources = iVar.n.a.getResources();
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                if (android.view.ViewConfiguration.get(iVar.n.a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(d.b.h.abc_prepend_shortcut_label));
                }
                int i3 = iVar.n.n() ? iVar.k : iVar.i;
                d.b.p.i.i.c(sb, i3, 65536, resources.getString(d.b.h.abc_menu_meta_shortcut_label));
                d.b.p.i.i.c(sb, i3, 4096, resources.getString(d.b.h.abc_menu_ctrl_shortcut_label));
                d.b.p.i.i.c(sb, i3, 2, resources.getString(d.b.h.abc_menu_alt_shortcut_label));
                d.b.p.i.i.c(sb, i3, 1, resources.getString(d.b.h.abc_menu_shift_shortcut_label));
                d.b.p.i.i.c(sb, i3, 4, resources.getString(d.b.h.abc_menu_sym_shortcut_label));
                d.b.p.i.i.c(sb, i3, 8, resources.getString(d.b.h.abc_menu_function_shortcut_label));
                if (cE == '\b') {
                    i = d.b.h.abc_menu_delete_shortcut_label;
                } else if (cE == '\n') {
                    i = d.b.h.abc_menu_enter_shortcut_label;
                } else if (cE != ' ') {
                    sb.append(cE);
                    string = sb.toString();
                } else {
                    i = d.b.h.abc_menu_space_shortcut_label;
                }
                sb.append(resources.getString(i));
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.f36f.getVisibility() != i2) {
            this.f36f.setVisibility(i2);
        }
    }

    @Override // d.b.p.i.n.a
    public boolean d() {
        return false;
    }

    @Override // d.b.p.i.n.a
    public void e(d.b.p.i.i iVar, int i) {
        this.a = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        setTitle(d() ? iVar.getTitleCondensed() : iVar.f1734e);
        setCheckable(iVar.isCheckable());
        boolean zM = iVar.m();
        iVar.e();
        c(zM);
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.q);
    }

    @Override // d.b.p.i.n.a
    public d.b.p.i.i getItemData() {
        return this.a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        d.g.m.s.M(this, this.j);
        android.widget.TextView textView = (android.widget.TextView) findViewById(d.b.f.title);
        this.f34d = textView;
        int i = this.k;
        if (i != -1) {
            textView.setTextAppearance(this.l, i);
        }
        this.f36f = (android.widget.TextView) findViewById(d.b.f.shortcut);
        android.widget.ImageView imageView = (android.widget.ImageView) findViewById(d.b.f.submenuarrow);
        this.f37g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.h = (android.widget.ImageView) findViewById(d.b.f.group_divider);
        this.i = (android.widget.LinearLayout) findViewById(d.b.f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.b != null && this.m) {
            android.view.ViewGroup.LayoutParams layoutParams = getLayoutParams();
            android.widget.LinearLayout.LayoutParams layoutParams2 = (android.widget.LinearLayout.LayoutParams) this.b.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        android.widget.CompoundButton compoundButton;
        android.widget.CompoundButton compoundButton2;
        if (!z && this.f33c == null && this.f35e == null) {
            return;
        }
        if (this.a.h()) {
            if (this.f33c == null) {
                b();
            }
            compoundButton = this.f33c;
            compoundButton2 = this.f35e;
        } else {
            if (this.f35e == null) {
                a();
            }
            compoundButton = this.f35e;
            compoundButton2 = this.f33c;
        }
        if (z) {
            compoundButton.setChecked(this.a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        android.widget.CheckBox checkBox = this.f35e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        android.widget.RadioButton radioButton = this.f33c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        android.widget.CompoundButton compoundButton;
        if (this.a.h()) {
            if (this.f33c == null) {
                b();
            }
            compoundButton = this.f33c;
        } else {
            if (this.f35e == null) {
                a();
            }
            compoundButton = this.f35e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.q = z;
        this.m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        android.widget.ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility((this.o || !z) ? 8 : 0);
        }
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        boolean z = this.a.n.s || this.q;
        if (z || this.m) {
            if (this.b == null && drawable == null && !this.m) {
                return;
            }
            if (this.b == null) {
                android.widget.ImageView imageView = (android.widget.ImageView) getInflater().inflate(d.b.g.abc_list_menu_item_icon, (android.view.ViewGroup) this, false);
                this.b = imageView;
                android.widget.LinearLayout linearLayout = this.i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView, 0);
                } else {
                    addView(imageView, 0);
                }
            }
            if (drawable == null && !this.m) {
                this.b.setVisibility(8);
                return;
            }
            android.widget.ImageView imageView2 = this.b;
            if (!z) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.b.getVisibility() != 0) {
                this.b.setVisibility(0);
            }
        }
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        int i;
        android.widget.TextView textView;
        if (charSequence != null) {
            this.f34d.setText(charSequence);
            if (this.f34d.getVisibility() == 0) {
                return;
            }
            textView = this.f34d;
            i = 0;
        } else {
            i = 8;
            if (this.f34d.getVisibility() == 8) {
                return;
            } else {
                textView = this.f34d;
            }
        }
        textView.setVisibility(i);
    }
}
