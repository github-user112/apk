package d.g.n;

/* loaded from: classes.dex */
public class d implements android.view.ActionMode.Callback {
    public final android.view.ActionMode.Callback a;
    public final android.widget.TextView b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.Class<?> f2030c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.reflect.Method f2031d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2032e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2033f = false;

    public d(android.view.ActionMode.Callback callback, android.widget.TextView textView) {
        this.a = callback;
        this.b = textView;
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(android.view.ActionMode actionMode, android.view.MenuItem menuItem) {
        return this.a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(android.view.ActionMode actionMode, android.view.Menu menu) {
        return this.a.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(android.view.ActionMode actionMode) {
        this.a.onDestroyActionMode(actionMode);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ce  */
    @Override // android.view.ActionMode.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onPrepareActionMode(android.view.ActionMode r13, android.view.Menu r14) throws java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.n.d.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
    }
}
