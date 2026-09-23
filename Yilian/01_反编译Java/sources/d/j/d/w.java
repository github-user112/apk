package d.j.d;

/* loaded from: classes.dex */
public class w implements android.view.LayoutInflater.Factory2 {
    public final d.j.d.y a;

    public class a implements android.view.View.OnAttachStateChangeListener {
        public final /* synthetic */ d.j.d.e0 a;

        public a(d.j.d.e0 e0Var) {
            this.a = e0Var;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            d.j.d.e0 e0Var = this.a;
            androidx.fragment.app.Fragment fragment = e0Var.f2073c;
            e0Var.k();
            d.j.d.u0.f((android.view.ViewGroup) fragment.mView.getParent(), d.j.d.w.this.a).e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
        }
    }

    public w(d.j.d.y yVar) {
        this.a = yVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        d.j.d.e0 e0VarH;
        java.lang.StringBuilder sb;
        java.lang.String str2;
        if (d.j.d.s.class.getName().equals(str)) {
            return new d.j.d.s(context, attributeSet, this.a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        java.lang.String attributeValue = attributeSet.getAttributeValue(null, "class");
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.c.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(d.j.c.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(d.j.c.Fragment_android_id, -1);
        java.lang.String string = typedArrayObtainStyledAttributes.getString(d.j.c.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !d.j.d.u.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new java.lang.IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        androidx.fragment.app.Fragment fragmentF = resourceId != -1 ? this.a.F(resourceId) : null;
        if (fragmentF == null && string != null) {
            fragmentF = this.a.G(string);
        }
        if (fragmentF == null && id != -1) {
            fragmentF = this.a.F(id);
        }
        if (fragmentF == null) {
            fragmentF = this.a.I().a(context.getClassLoader(), attributeValue);
            fragmentF.mFromLayout = true;
            fragmentF.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentF.mContainerId = id;
            fragmentF.mTag = string;
            fragmentF.mInLayout = true;
            d.j.d.y yVar = this.a;
            fragmentF.mFragmentManager = yVar;
            d.j.d.v<?> vVar = yVar.q;
            fragmentF.mHost = vVar;
            fragmentF.onInflate(vVar.b, attributeSet, fragmentF.mSavedFragmentState);
            e0VarH = this.a.a(fragmentF);
            if (d.j.d.y.M(2)) {
                sb = new java.lang.StringBuilder();
                sb.append("Fragment ");
                sb.append(fragmentF);
                str2 = " has been inflated via the <fragment> tag: id=0x";
                sb.append(str2);
                sb.append(java.lang.Integer.toHexString(resourceId));
                android.util.Log.v("FragmentManager", sb.toString());
            }
        } else {
            if (fragmentF.mInLayout) {
                throw new java.lang.IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + java.lang.Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + java.lang.Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentF.mInLayout = true;
            d.j.d.y yVar2 = this.a;
            fragmentF.mFragmentManager = yVar2;
            d.j.d.v<?> vVar2 = yVar2.q;
            fragmentF.mHost = vVar2;
            fragmentF.onInflate(vVar2.b, attributeSet, fragmentF.mSavedFragmentState);
            e0VarH = this.a.h(fragmentF);
            if (d.j.d.y.M(2)) {
                sb = new java.lang.StringBuilder();
                sb.append("Retained Fragment ");
                sb.append(fragmentF);
                str2 = " has been re-attached via the <fragment> tag: id=0x";
                sb.append(str2);
                sb.append(java.lang.Integer.toHexString(resourceId));
                android.util.Log.v("FragmentManager", sb.toString());
            }
        }
        fragmentF.mContainer = (android.view.ViewGroup) view;
        e0VarH.k();
        e0VarH.j();
        android.view.View view2 = fragmentF.mView;
        if (view2 == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.f("Fragment ", attributeValue, " did not create a view."));
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentF.mView.getTag() == null) {
            fragmentF.mView.setTag(string);
        }
        fragmentF.mView.addOnAttachStateChangeListener(new d.j.d.w.a(e0VarH));
        return fragmentF.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
