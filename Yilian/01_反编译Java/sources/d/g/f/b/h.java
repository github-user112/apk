package d.g.f.b;

/* loaded from: classes.dex */
public final class h {
    public static final java.lang.ThreadLocal<android.util.TypedValue> a = new java.lang.ThreadLocal<>();
    public static final java.util.WeakHashMap<d.g.f.b.h.b, android.util.SparseArray<d.g.f.b.h.a>> b = new java.util.WeakHashMap<>(0);

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f1947c = new java.lang.Object();

    public static class a {
        public final android.content.res.ColorStateList a;
        public final android.content.res.Configuration b;

        public a(android.content.res.ColorStateList colorStateList, android.content.res.Configuration configuration) {
            this.a = colorStateList;
            this.b = configuration;
        }
    }

    public static final class b {
        public final android.content.res.Resources a;
        public final android.content.res.Resources.Theme b;

        public b(android.content.res.Resources resources, android.content.res.Resources.Theme theme) {
            this.a = resources;
            this.b = theme;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.g.f.b.h.b.class != obj.getClass()) {
                return false;
            }
            d.g.f.b.h.b bVar = (d.g.f.b.h.b) obj;
            return this.a.equals(bVar.a) && d.b.k.r.s(this.b, bVar.b);
        }

        public int hashCode() {
            return d.b.k.r.Q(this.a, this.b);
        }
    }

    public static abstract class c {

        public class a implements java.lang.Runnable {
            public final /* synthetic */ android.graphics.Typeface a;

            public a(android.graphics.Typeface typeface) {
                this.a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.g.f.b.h.c.this.d(this.a);
            }
        }

        public class b implements java.lang.Runnable {
            public final /* synthetic */ int a;

            public b(int i) {
                this.a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (((d.b.q.w.a) d.g.f.b.h.c.this) == null) {
                    throw null;
                }
            }
        }

        public static android.os.Handler c(android.os.Handler handler) {
            return handler == null ? new android.os.Handler(android.os.Looper.getMainLooper()) : handler;
        }

        public final void a(int i, android.os.Handler handler) {
            c(handler).post(new d.g.f.b.h.c.b(i));
        }

        public final void b(android.graphics.Typeface typeface, android.os.Handler handler) {
            c(handler).post(new d.g.f.b.h.c.a(typeface));
        }

        public abstract void d(android.graphics.Typeface typeface);
    }

    public static android.content.res.ColorStateList a(android.content.res.Resources resources, int i, android.content.res.Resources.Theme theme) throws android.content.res.Resources.NotFoundException {
        android.content.res.ColorStateList colorStateListA;
        android.content.res.ColorStateList colorStateList;
        d.g.f.b.h.a aVar;
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, theme);
        }
        d.g.f.b.h.b bVar = new d.g.f.b.h.b(resources, theme);
        synchronized (f1947c) {
            android.util.SparseArray<d.g.f.b.h.a> sparseArray = b.get(bVar);
            colorStateListA = null;
            if (sparseArray == null || sparseArray.size() <= 0 || (aVar = sparseArray.get(i)) == null) {
                colorStateList = null;
            } else if (aVar.b.equals(bVar.a.getConfiguration())) {
                colorStateList = aVar.a;
            } else {
                sparseArray.remove(i);
                colorStateList = null;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        android.util.TypedValue typedValue = a.get();
        if (typedValue == null) {
            typedValue = new android.util.TypedValue();
            a.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (!(i2 >= 28 && i2 <= 31)) {
            try {
                colorStateListA = d.g.f.b.a.a(resources, resources.getXml(i), theme);
            } catch (java.lang.Exception e2) {
                android.util.Log.e("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            }
        }
        if (colorStateListA == null) {
            return resources.getColorStateList(i);
        }
        synchronized (f1947c) {
            android.util.SparseArray<d.g.f.b.h.a> sparseArray2 = b.get(bVar);
            if (sparseArray2 == null) {
                sparseArray2 = new android.util.SparseArray<>();
                b.put(bVar, sparseArray2);
            }
            sparseArray2.append(i, new d.g.f.b.h.a(colorStateListA, bVar.a.getConfiguration()));
        }
        return colorStateListA;
    }

    public static android.graphics.drawable.Drawable b(android.content.res.Resources resources, int i, android.content.res.Resources.Theme theme) {
        return android.os.Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface c(android.content.Context r11, int r12, android.util.TypedValue r13, int r14, d.g.f.b.h.c r15) throws android.content.res.Resources.NotFoundException {
        /*
            boolean r0 = r11.isRestricted()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r9 = 1
            android.content.res.Resources r4 = r11.getResources()
            r0 = 1
            r4.getValue(r12, r13, r0)
            java.lang.String r0 = "ResourcesCompat"
            java.lang.CharSequence r2 = r13.string
            if (r2 == 0) goto Lbd
            java.lang.String r13 = r2.toString()
            java.lang.String r2 = "res/"
            boolean r2 = r13.startsWith(r2)
            r10 = -3
            if (r2 != 0) goto L28
            if (r15 == 0) goto L9c
            goto L99
        L28:
            d.e.f<java.lang.String, android.graphics.Typeface> r2 = d.g.g.d.b
            java.lang.String r3 = d.g.g.d.d(r4, r12, r14)
            java.lang.Object r2 = r2.a(r3)
            android.graphics.Typeface r2 = (android.graphics.Typeface) r2
            if (r2 == 0) goto L3d
            if (r15 == 0) goto L3b
            r15.b(r2, r1)
        L3b:
            r1 = r2
            goto L9c
        L3d:
            java.lang.String r2 = r13.toLowerCase()     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            java.lang.String r3 = ".xml"
            boolean r2 = r2.endsWith(r3)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            if (r2 == 0) goto L68
            android.content.res.XmlResourceParser r2 = r4.getXml(r12)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            d.g.f.b.c r3 = d.b.k.r.e0(r2, r4)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            if (r3 != 0) goto L5e
            java.lang.String r11 = "Failed to find font-family tag"
            android.util.Log.e(r0, r11)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            if (r15 == 0) goto L9c
            r15.a(r10, r1)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            goto L9c
        L5e:
            r8 = 0
            r2 = r11
            r5 = r12
            r6 = r14
            r7 = r15
            android.graphics.Typeface r1 = d.g.g.d.b(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            goto L9c
        L68:
            android.graphics.Typeface r11 = d.g.g.d.c(r11, r4, r12, r13, r14)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            if (r15 == 0) goto L77
            if (r11 == 0) goto L74
            r15.b(r11, r1)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
            goto L77
        L74:
            r15.a(r10, r1)     // Catch: java.io.IOException -> L79 org.xmlpull.v1.XmlPullParserException -> L82
        L77:
            r1 = r11
            goto L9c
        L79:
            r11 = move-exception
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r2 = "Failed to read xml resource "
            goto L8a
        L82:
            r11 = move-exception
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r2 = "Failed to parse xml resource "
        L8a:
            r14.append(r2)
            r14.append(r13)
            java.lang.String r13 = r14.toString()
            android.util.Log.e(r0, r13, r11)
            if (r15 == 0) goto L9c
        L99:
            r15.a(r10, r1)
        L9c:
            if (r1 != 0) goto Lbc
            if (r15 != 0) goto Lbc
            android.content.res.Resources$NotFoundException r11 = new android.content.res.Resources$NotFoundException
            java.lang.String r13 = "Font resource ID #0x"
            java.lang.StringBuilder r13 = e.a.c.a.a.o(r13)
            java.lang.String r12 = java.lang.Integer.toHexString(r12)
            r13.append(r12)
            java.lang.String r12 = " could not be retrieved."
            r13.append(r12)
            java.lang.String r12 = r13.toString()
            r11.<init>(r12)
            throw r11
        Lbc:
            return r1
        Lbd:
            android.content.res.Resources$NotFoundException r11 = new android.content.res.Resources$NotFoundException
            java.lang.String r14 = "Resource \""
            java.lang.StringBuilder r14 = e.a.c.a.a.o(r14)
            java.lang.String r15 = r4.getResourceName(r12)
            r14.append(r15)
            java.lang.String r15 = "\" ("
            r14.append(r15)
            java.lang.String r12 = java.lang.Integer.toHexString(r12)
            r14.append(r12)
            java.lang.String r12 = ") is not a Font: "
            r14.append(r12)
            r14.append(r13)
            java.lang.String r12 = r14.toString()
            r11.<init>(r12)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.f.b.h.c(android.content.Context, int, android.util.TypedValue, int, d.g.f.b.h$c):android.graphics.Typeface");
    }
}
