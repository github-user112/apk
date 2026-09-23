package e.c.a.b.j;

/* loaded from: classes.dex */
public class c extends android.util.Property<android.view.ViewGroup, java.lang.Float> {
    public static final android.util.Property<android.view.ViewGroup, java.lang.Float> a = new e.c.a.b.j.c("childrenAlpha");

    public c(java.lang.String str) {
        super(java.lang.Float.class, str);
    }

    @Override // android.util.Property
    public java.lang.Float get(android.view.ViewGroup viewGroup) {
        java.lang.Float f2 = (java.lang.Float) viewGroup.getTag(e.c.a.b.e.mtrl_internal_children_alpha_tag);
        return f2 != null ? f2 : java.lang.Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public void set(android.view.ViewGroup viewGroup, java.lang.Float f2) {
        android.view.ViewGroup viewGroup2 = viewGroup;
        float fFloatValue = f2.floatValue();
        viewGroup2.setTag(e.c.a.b.e.mtrl_internal_children_alpha_tag, java.lang.Float.valueOf(fFloatValue));
        int childCount = viewGroup2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup2.getChildAt(i).setAlpha(fFloatValue);
        }
    }
}
