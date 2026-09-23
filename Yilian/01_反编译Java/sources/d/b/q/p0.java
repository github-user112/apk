package d.b.q;

@android.annotation.SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class p0 extends d.h.a.c implements android.view.View.OnClickListener {
    public final androidx.appcompat.widget.SearchView l;
    public final android.app.SearchableInfo m;
    public final android.content.Context n;
    public final java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> o;
    public final int p;
    public boolean q;
    public int r;
    public android.content.res.ColorStateList s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;

    public static final class a {
        public final android.widget.TextView a;
        public final android.widget.TextView b;

        /* renamed from: c, reason: collision with root package name */
        public final android.widget.ImageView f1815c;

        /* renamed from: d, reason: collision with root package name */
        public final android.widget.ImageView f1816d;

        /* renamed from: e, reason: collision with root package name */
        public final android.widget.ImageView f1817e;

        public a(android.view.View view) {
            this.a = (android.widget.TextView) view.findViewById(android.R.id.text1);
            this.b = (android.widget.TextView) view.findViewById(android.R.id.text2);
            this.f1815c = (android.widget.ImageView) view.findViewById(android.R.id.icon1);
            this.f1816d = (android.widget.ImageView) view.findViewById(android.R.id.icon2);
            this.f1817e = (android.widget.ImageView) view.findViewById(d.b.f.edit_query);
        }
    }

    public p0(android.content.Context context, androidx.appcompat.widget.SearchView searchView, android.app.SearchableInfo searchableInfo, java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.q = false;
        this.r = 1;
        this.t = -1;
        this.u = -1;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.l = searchView;
        this.m = searchableInfo;
        this.p = searchView.getSuggestionCommitIconResId();
        this.n = context;
        this.o = weakHashMap;
    }

    public static java.lang.String e(android.database.Cursor cursor, java.lang.String str) {
        return i(cursor, cursor.getColumnIndex(str));
    }

    public static java.lang.String i(android.database.Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (java.lang.Exception e2) {
            android.util.Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.h.a.a
    public void a(android.view.View view, android.content.Context context, android.database.Cursor cursor) throws android.content.pm.PackageManager.NameNotFoundException, java.lang.NumberFormatException, java.io.IOException {
        android.graphics.drawable.Drawable drawableG;
        java.lang.String string;
        android.graphics.drawable.Drawable drawable;
        android.content.pm.ActivityInfo activityInfo;
        int iconResource;
        java.lang.String strI;
        d.b.q.p0.a aVar = (d.b.q.p0.a) view.getTag();
        int i = this.y;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.a != null) {
            java.lang.String strI2 = i(cursor, this.t);
            android.widget.TextView textView = aVar.a;
            textView.setText(strI2);
            textView.setVisibility(android.text.TextUtils.isEmpty(strI2) ? 8 : 0);
        }
        if (aVar.b != null) {
            java.lang.String strI3 = i(cursor, this.v);
            if (strI3 != null) {
                if (this.s == null) {
                    android.util.TypedValue typedValue = new android.util.TypedValue();
                    this.f2035d.getTheme().resolveAttribute(d.b.a.textColorSearchUrl, typedValue, true);
                    this.s = this.f2035d.getResources().getColorStateList(typedValue.resourceId);
                }
                android.text.SpannableString spannableString = new android.text.SpannableString(strI3);
                spannableString.setSpan(new android.text.style.TextAppearanceSpan(null, 0, 0, this.s, null), 0, strI3.length(), 33);
                strI = spannableString;
            } else {
                strI = i(cursor, this.u);
            }
            if (android.text.TextUtils.isEmpty(strI)) {
                android.widget.TextView textView2 = aVar.a;
                if (textView2 != null) {
                    textView2.setSingleLine(false);
                    aVar.a.setMaxLines(2);
                }
            } else {
                android.widget.TextView textView3 = aVar.a;
                if (textView3 != null) {
                    textView3.setSingleLine(true);
                    aVar.a.setMaxLines(1);
                }
            }
            android.widget.TextView textView4 = aVar.b;
            textView4.setText(strI);
            textView4.setVisibility(android.text.TextUtils.isEmpty(strI) ? 8 : 0);
        }
        android.widget.ImageView imageView = aVar.f1815c;
        if (imageView != null) {
            int i3 = this.w;
            if (i3 == -1) {
                drawableG = null;
            } else {
                drawableG = g(cursor.getString(i3));
                if (drawableG == null) {
                    android.content.ComponentName searchActivity = this.m.getSearchActivity();
                    java.lang.String strFlattenToShortString = searchActivity.flattenToShortString();
                    if (this.o.containsKey(strFlattenToShortString)) {
                        android.graphics.drawable.Drawable.ConstantState constantState = this.o.get(strFlattenToShortString);
                        drawableG = constantState == null ? null : constantState.newDrawable(this.n.getResources());
                    } else {
                        android.content.pm.PackageManager packageManager = this.f2035d.getPackageManager();
                        try {
                            activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            iconResource = activityInfo.getIconResource();
                        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                            string = e2.toString();
                        }
                        if (iconResource != 0) {
                            drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                            if (drawable == null) {
                                java.lang.StringBuilder sbP = e.a.c.a.a.p("Invalid icon resource ", iconResource, " for ");
                                sbP.append(searchActivity.flattenToShortString());
                                string = sbP.toString();
                                android.util.Log.w("SuggestionsAdapter", string);
                                drawable = null;
                            }
                        } else {
                            drawable = null;
                        }
                        this.o.put(strFlattenToShortString, drawable == null ? null : drawable.getConstantState());
                        drawableG = drawable;
                    }
                    if (drawableG == null) {
                        drawableG = this.f2035d.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView.setImageDrawable(drawableG);
            if (drawableG == null) {
                imageView.setVisibility(4);
            } else {
                imageView.setVisibility(0);
                drawableG.setVisible(false, false);
                drawableG.setVisible(true, false);
            }
        }
        android.widget.ImageView imageView2 = aVar.f1816d;
        if (imageView2 != null) {
            int i4 = this.x;
            android.graphics.drawable.Drawable drawableG2 = i4 != -1 ? g(cursor.getString(i4)) : null;
            imageView2.setImageDrawable(drawableG2);
            if (drawableG2 == null) {
                imageView2.setVisibility(8);
            } else {
                imageView2.setVisibility(0);
                drawableG2.setVisible(false, false);
                drawableG2.setVisible(true, false);
            }
        }
        int i5 = this.r;
        if (i5 != 2 && (i5 != 1 || (i2 & 1) == 0)) {
            aVar.f1817e.setVisibility(8);
            return;
        }
        aVar.f1817e.setVisibility(0);
        aVar.f1817e.setTag(aVar.a.getText());
        aVar.f1817e.setOnClickListener(this);
    }

    @Override // d.h.a.a
    public void b(android.database.Cursor cursor) {
        if (this.q) {
            android.util.Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.b(cursor);
            if (cursor != null) {
                this.t = cursor.getColumnIndex("suggest_text_1");
                this.u = cursor.getColumnIndex("suggest_text_2");
                this.v = cursor.getColumnIndex("suggest_text_2_url");
                this.w = cursor.getColumnIndex("suggest_icon_1");
                this.x = cursor.getColumnIndex("suggest_icon_2");
                this.y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (java.lang.Exception e2) {
            android.util.Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    @Override // d.h.a.a
    public java.lang.CharSequence c(android.database.Cursor cursor) {
        java.lang.String strI;
        java.lang.String strI2;
        if (cursor == null) {
            return null;
        }
        java.lang.String strI3 = i(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strI3 != null) {
            return strI3;
        }
        if (this.m.shouldRewriteQueryFromData() && (strI2 = i(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strI2;
        }
        if (!this.m.shouldRewriteQueryFromText() || (strI = i(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strI;
    }

    @Override // d.h.a.c, d.h.a.a
    public android.view.View d(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
        android.view.View viewInflate = this.k.inflate(this.i, viewGroup, false);
        viewInflate.setTag(new d.b.q.p0.a(viewInflate));
        ((android.widget.ImageView) viewInflate.findViewById(d.b.f.edit_query)).setImageResource(this.p);
        return viewInflate;
    }

    public android.graphics.drawable.Drawable f(android.net.Uri uri) throws android.content.pm.PackageManager.NameNotFoundException, java.lang.NumberFormatException, java.io.FileNotFoundException {
        int identifier;
        java.lang.String authority = uri.getAuthority();
        if (android.text.TextUtils.isEmpty(authority)) {
            throw new java.io.FileNotFoundException("No authority: " + uri);
        }
        try {
            android.content.res.Resources resourcesForApplication = this.f2035d.getPackageManager().getResourcesForApplication(authority);
            java.util.List<java.lang.String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new java.io.FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = java.lang.Integer.parseInt(pathSegments.get(0));
                } catch (java.lang.NumberFormatException unused) {
                    throw new java.io.FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new java.io.FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new java.io.FileNotFoundException("No resource found for: " + uri);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused2) {
            throw new java.io.FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable g(java.lang.String r8) throws android.content.pm.PackageManager.NameNotFoundException, java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.p0.g(java.lang.String):android.graphics.drawable.Drawable");
    }

    @Override // d.h.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public android.view.View getDropDownView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            android.view.View viewInflate = this.k.inflate(this.j, viewGroup, false);
            if (viewInflate != null) {
                ((d.b.q.p0.a) viewInflate.getTag()).a.setText(e2.toString());
            }
            return viewInflate;
        }
    }

    @Override // d.h.a.a, android.widget.Adapter
    public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            android.view.View viewD = d(this.f2035d, this.f2034c, viewGroup);
            ((d.b.q.p0.a) viewD.getTag()).a.setText(e2.toString());
            return viewD;
        }
    }

    public android.database.Cursor h(android.app.SearchableInfo searchableInfo, java.lang.String str, int i) {
        java.lang.String suggestAuthority;
        java.lang.String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        android.net.Uri.Builder builderFragment = new android.net.Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        java.lang.String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        java.lang.String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new java.lang.String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        java.lang.String[] strArr2 = strArr;
        if (i > 0) {
            builderFragment.appendQueryParameter("limit", java.lang.String.valueOf(i));
        }
        return this.f2035d.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public final void j(android.database.Cursor cursor) {
        android.os.Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        j(this.f2034c);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        j(this.f2034c);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        java.lang.Object tag = view.getTag();
        if (tag instanceof java.lang.CharSequence) {
            this.l.z((java.lang.CharSequence) tag);
        }
    }
}
