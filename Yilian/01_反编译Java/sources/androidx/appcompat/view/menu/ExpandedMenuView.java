package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends android.widget.ListView implements d.b.p.i.g.b, d.b.p.i.n, android.widget.AdapterView.OnItemClickListener {
    public static final int[] b = {android.R.attr.background, android.R.attr.divider};
    public d.b.p.i.g a;

    public ExpandedMenuView(android.content.Context context, android.util.AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet);
        setOnItemClickListener(this);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b, android.R.attr.listViewStyle, 0);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId2 = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : d.b.l.a.a.b(context, resourceId2));
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            setDivider((!typedArrayObtainStyledAttributes.hasValue(1) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(1, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(1) : d.b.l.a.a.b(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // d.b.p.i.g.b
    public boolean a(d.b.p.i.i iVar) {
        return this.a.s(iVar, null, 0);
    }

    @Override // d.b.p.i.n
    public void b(d.b.p.i.g gVar) {
        this.a = gVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(android.widget.AdapterView adapterView, android.view.View view, int i, long j) {
        a((d.b.p.i.i) getAdapter().getItem(i));
    }
}
