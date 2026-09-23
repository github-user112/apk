package d.b.q;

/* loaded from: classes.dex */
public final class i {
    public static final android.graphics.PorterDuff.Mode b = android.graphics.PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static d.b.q.i f1786c;
    public d.b.q.l0 a;

    public static class a implements d.b.q.l0.e {
        public final int[] a = {d.b.e.abc_textfield_search_default_mtrl_alpha, d.b.e.abc_textfield_default_mtrl_alpha, d.b.e.abc_ab_share_pack_mtrl_alpha};
        public final int[] b = {d.b.e.abc_ic_commit_search_api_mtrl_alpha, d.b.e.abc_seekbar_tick_mark_material, d.b.e.abc_ic_menu_share_mtrl_alpha, d.b.e.abc_ic_menu_copy_mtrl_am_alpha, d.b.e.abc_ic_menu_cut_mtrl_alpha, d.b.e.abc_ic_menu_selectall_mtrl_alpha, d.b.e.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c, reason: collision with root package name */
        public final int[] f1787c = {d.b.e.abc_textfield_activated_mtrl_alpha, d.b.e.abc_textfield_search_activated_mtrl_alpha, d.b.e.abc_cab_background_top_mtrl_alpha, d.b.e.abc_text_cursor_material, d.b.e.abc_text_select_handle_left_mtrl_dark, d.b.e.abc_text_select_handle_middle_mtrl_dark, d.b.e.abc_text_select_handle_right_mtrl_dark, d.b.e.abc_text_select_handle_left_mtrl_light, d.b.e.abc_text_select_handle_middle_mtrl_light, d.b.e.abc_text_select_handle_right_mtrl_light};

        /* renamed from: d, reason: collision with root package name */
        public final int[] f1788d = {d.b.e.abc_popup_background_mtrl_mult, d.b.e.abc_cab_background_internal_bg, d.b.e.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e, reason: collision with root package name */
        public final int[] f1789e = {d.b.e.abc_tab_indicator_material, d.b.e.abc_textfield_search_material};

        /* renamed from: f, reason: collision with root package name */
        public final int[] f1790f = {d.b.e.abc_btn_check_material, d.b.e.abc_btn_radio_material, d.b.e.abc_btn_check_material_anim, d.b.e.abc_btn_radio_material_anim};

        public final boolean a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public final android.content.res.ColorStateList b(android.content.Context context, int i) {
            int iB = d.b.q.q0.b(context, d.b.a.colorControlHighlight);
            return new android.content.res.ColorStateList(new int[][]{d.b.q.q0.b, d.b.q.q0.f1819d, d.b.q.q0.f1818c, d.b.q.q0.f1821f}, new int[]{d.b.q.q0.a(context, d.b.a.colorButtonNormal), d.g.g.a.a(iB, i), d.g.g.a.a(iB, i), i});
        }

        public android.content.res.ColorStateList c(android.content.Context context, int i) {
            if (i == d.b.e.abc_edit_text_material) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_edittext);
            }
            if (i == d.b.e.abc_switch_track_mtrl_alpha) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_switch_track);
            }
            if (i == d.b.e.abc_switch_thumb_material) {
                int[][] iArr = new int[3][];
                int[] iArr2 = new int[3];
                android.content.res.ColorStateList colorStateListC = d.b.q.q0.c(context, d.b.a.colorSwitchThumbNormal);
                if (colorStateListC == null || !colorStateListC.isStateful()) {
                    iArr[0] = d.b.q.q0.b;
                    iArr2[0] = d.b.q.q0.a(context, d.b.a.colorSwitchThumbNormal);
                    iArr[1] = d.b.q.q0.f1820e;
                    iArr2[1] = d.b.q.q0.b(context, d.b.a.colorControlActivated);
                    iArr[2] = d.b.q.q0.f1821f;
                    iArr2[2] = d.b.q.q0.b(context, d.b.a.colorSwitchThumbNormal);
                } else {
                    iArr[0] = d.b.q.q0.b;
                    iArr2[0] = colorStateListC.getColorForState(iArr[0], 0);
                    iArr[1] = d.b.q.q0.f1820e;
                    iArr2[1] = d.b.q.q0.b(context, d.b.a.colorControlActivated);
                    iArr[2] = d.b.q.q0.f1821f;
                    iArr2[2] = colorStateListC.getDefaultColor();
                }
                return new android.content.res.ColorStateList(iArr, iArr2);
            }
            if (i == d.b.e.abc_btn_default_mtrl_shape) {
                return b(context, d.b.q.q0.b(context, d.b.a.colorButtonNormal));
            }
            if (i == d.b.e.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i == d.b.e.abc_btn_colored_material) {
                return b(context, d.b.q.q0.b(context, d.b.a.colorAccent));
            }
            if (i == d.b.e.abc_spinner_mtrl_am_alpha || i == d.b.e.abc_spinner_textfield_background_material) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_spinner);
            }
            if (a(this.b, i)) {
                return d.b.q.q0.c(context, d.b.a.colorControlNormal);
            }
            if (a(this.f1789e, i)) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_default);
            }
            if (a(this.f1790f, i)) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_btn_checkable);
            }
            if (i == d.b.e.abc_seekbar_thumb_material) {
                return d.b.l.a.a.a(context, d.b.c.abc_tint_seek_thumb);
            }
            return null;
        }

        public final void d(android.graphics.drawable.Drawable drawable, int i, android.graphics.PorterDuff.Mode mode) {
            if (d.b.q.c0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = d.b.q.i.b;
            }
            drawable.setColorFilter(d.b.q.i.c(i, mode));
        }
    }

    public static synchronized d.b.q.i a() {
        if (f1786c == null) {
            e();
        }
        return f1786c;
    }

    public static synchronized android.graphics.PorterDuffColorFilter c(int i, android.graphics.PorterDuff.Mode mode) {
        return d.b.q.l0.h(i, mode);
    }

    public static synchronized void e() {
        if (f1786c == null) {
            d.b.q.i iVar = new d.b.q.i();
            f1786c = iVar;
            iVar.a = d.b.q.l0.d();
            d.b.q.l0 l0Var = f1786c.a;
            d.b.q.i.a aVar = new d.b.q.i.a();
            synchronized (l0Var) {
                l0Var.f1802g = aVar;
            }
        }
    }

    public static void f(android.graphics.drawable.Drawable drawable, d.b.q.t0 t0Var, int[] iArr) {
        d.b.q.l0.l(drawable, t0Var, iArr);
    }

    public synchronized android.graphics.drawable.Drawable b(android.content.Context context, int i) {
        return this.a.f(context, i);
    }

    public synchronized android.content.res.ColorStateList d(android.content.Context context, int i) {
        return this.a.i(context, i);
    }
}
