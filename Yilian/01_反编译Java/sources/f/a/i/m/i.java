package f.a.i.m;

/* loaded from: classes.dex */
public class i implements android.view.LayoutInflater.Factory2 {

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String[] f2941f = {"android.widget.", "android.view.", "android.webkit."};
    public final d.b.k.j b;
    public boolean a = false;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.HashMap<java.lang.String, java.lang.reflect.Constructor<? extends android.view.View>> f2942c = new java.util.HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.Class<?>[] f2943d = {android.content.Context.class, android.util.AttributeSet.class};

    /* renamed from: e, reason: collision with root package name */
    public final java.util.List<f.a.i.m.k> f2944e = new java.util.ArrayList();

    public i(d.b.k.j jVar) {
        this.b = jVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) throws java.lang.NoSuchMethodException, android.content.res.Resources.NotFoundException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.NumberFormatException {
        d.b.k.j jVar = this.b;
        android.view.View viewF = jVar != null ? jVar.f(view, str, context, attributeSet) : null;
        if (viewF == null) {
            if (str.contains(".")) {
                viewF = onCreateView(str, context, attributeSet);
            } else {
                for (java.lang.String str2 : f2941f) {
                    viewF = onCreateView(str2 + str, context, attributeSet);
                    if (viewF != null) {
                        break;
                    }
                }
            }
        }
        if (viewF != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, net.easyconn.R.styleable.ResReplace);
            boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            if (z) {
                if (this.a) {
                    e.e.a.g.a("theme parserView = " + viewF + " id = " + viewF.getId() + " list size = " + this.f2944e.size());
                }
                java.util.ArrayList arrayList = new java.util.ArrayList();
                for (int i = 0; i < attributeSet.getAttributeCount(); i++) {
                    java.lang.String attributeName = attributeSet.getAttributeName(i);
                    if (attributeName.equals("id")) {
                        java.lang.String resourceEntryName = context.getResources().getResourceEntryName(java.lang.Integer.parseInt(attributeSet.getAttributeValue(i).substring(1)));
                        if (this.a) {
                            e.e.a.g.f("theme id view = " + viewF + " id = " + resourceEntryName, new java.lang.Object[0]);
                        }
                    }
                    if (attributeName.contains("textColor") || attributeName.contains("src") || attributeName.contains("background")) {
                        java.lang.String attributeValue = attributeSet.getAttributeValue(i);
                        int i2 = java.lang.Integer.parseInt(attributeValue.substring(1));
                        java.lang.String resourceTypeName = context.getResources().getResourceTypeName(i2);
                        java.lang.String resourceEntryName2 = context.getResources().getResourceEntryName(i2);
                        if (this.a) {
                            e.e.a.g.f("theme view = " + viewF + " attributeName = " + attributeName + " resIdStr = " + attributeValue, new java.lang.Object[0]);
                            java.lang.StringBuilder sb = new java.lang.StringBuilder();
                            sb.append("theme  resourceEntryName = ");
                            sb.append(resourceEntryName2);
                            e.e.a.g.f(sb.toString(), new java.lang.Object[0]);
                        }
                        int identifier = context.getResources().getIdentifier(e.a.c.a.a.e(resourceEntryName2, "_d"), resourceTypeName, context.getPackageName());
                        int i3 = identifier == 0 ? i2 : identifier;
                        if (this.a) {
                            e.e.a.g.f(e.a.c.a.a.K("theme resId = ", i2), new java.lang.Object[0]);
                            e.e.a.g.f("theme replaceId = " + i3, new java.lang.Object[0]);
                        }
                        arrayList.add(new f.a.i.m.j(attributeName, resourceTypeName, resourceEntryName2, i2, i3));
                    }
                }
                if (!arrayList.isEmpty()) {
                    f.a.i.m.k kVar = new f.a.i.m.k(arrayList, viewF);
                    kVar.a(context.getApplicationContext());
                    this.f2944e.add(kVar);
                }
            }
        }
        return viewF;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        try {
            java.lang.Class<?> clsLoadClass = context.getClassLoader().loadClass(str);
            java.lang.reflect.Constructor<?> constructor = (java.lang.reflect.Constructor) this.f2942c.get(str);
            if (constructor == null) {
                constructor = clsLoadClass.getConstructor(this.f2943d);
                this.f2942c.put(str, constructor);
            }
            return (android.view.View) constructor.newInstance(context, attributeSet);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
