package d.g.g;

@android.annotation.SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class d {
    public static final d.g.g.j a;
    public static final d.e.f<java.lang.String, android.graphics.Typeface> b;

    public static class a extends d.g.j.i {
        public d.g.f.b.h.c a;

        public a(d.g.f.b.h.c cVar) {
            this.a = cVar;
        }

        @Override // d.g.j.i
        public void a(int i) {
            d.g.f.b.h.c cVar = this.a;
            if (cVar != null) {
            }
        }

        @Override // d.g.j.i
        public void b(android.graphics.Typeface typeface) {
            d.g.f.b.h.c cVar = this.a;
            if (cVar != null) {
                cVar.d(typeface);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto Lc
            d.g.g.i r0 = new d.g.g.i
            r0.<init>()
            goto L4f
        Lc:
            r1 = 28
            if (r0 < r1) goto L16
            d.g.g.h r0 = new d.g.g.h
            r0.<init>()
            goto L4f
        L16:
            r1 = 26
            if (r0 < r1) goto L20
            d.g.g.g r0 = new d.g.g.g
            r0.<init>()
            goto L4f
        L20:
            r1 = 24
            if (r0 < r1) goto L3e
            java.lang.reflect.Method r0 = d.g.g.f.f1956d
            if (r0 != 0) goto L2f
            java.lang.String r0 = "TypefaceCompatApi24Impl"
            java.lang.String r1 = "Unable to collect necessary private methods.Fallback to legacy implementation."
            android.util.Log.w(r0, r1)
        L2f:
            java.lang.reflect.Method r0 = d.g.g.f.f1956d
            if (r0 == 0) goto L35
            r0 = 1
            goto L36
        L35:
            r0 = 0
        L36:
            if (r0 == 0) goto L3e
            d.g.g.f r0 = new d.g.g.f
            r0.<init>()
            goto L4f
        L3e:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L4a
            d.g.g.e r0 = new d.g.g.e
            r0.<init>()
            goto L4f
        L4a:
            d.g.g.j r0 = new d.g.g.j
            r0.<init>()
        L4f:
            d.g.g.d.a = r0
            d.e.f r0 = new d.e.f
            r1 = 16
            r0.<init>(r1)
            d.g.g.d.b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.g.d.<clinit>():void");
    }

    public static android.graphics.Typeface a(android.content.Context context, android.graphics.Typeface typeface, int i) throws java.lang.NoSuchFieldException {
        if (context == null) {
            throw new java.lang.IllegalArgumentException("Context cannot be null");
        }
        if (android.os.Build.VERSION.SDK_INT < 21) {
            d.g.g.j jVar = a;
            if (jVar == null) {
                throw null;
            }
            long jG = d.g.g.j.g(typeface);
            d.g.f.b.d dVar = jG == 0 ? null : jVar.a.get(java.lang.Long.valueOf(jG));
            android.graphics.Typeface typefaceA = dVar != null ? a.a(context, dVar, context.getResources(), i) : null;
            if (typefaceA != null) {
                return typefaceA;
            }
        }
        return android.graphics.Typeface.create(typeface, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface b(android.content.Context r4, d.g.f.b.c r5, android.content.res.Resources r6, int r7, int r8, d.g.f.b.h.c r9, android.os.Handler r10, boolean r11) {
        /*
            boolean r0 = r5 instanceof d.g.f.b.f
            if (r0 == 0) goto L5b
            d.g.f.b.f r5 = (d.g.f.b.f) r5
            java.lang.String r0 = r5.f1946d
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L26
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L13
            goto L26
        L13:
            android.graphics.Typeface r0 = android.graphics.Typeface.create(r0, r2)
            android.graphics.Typeface r3 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r3 = android.graphics.Typeface.create(r3, r2)
            if (r0 == 0) goto L26
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto L26
            goto L27
        L26:
            r0 = r1
        L27:
            if (r0 == 0) goto L2f
            if (r9 == 0) goto L2e
            r9.b(r0, r10)
        L2e:
            return r0
        L2f:
            if (r11 == 0) goto L36
            int r0 = r5.f1945c
            if (r0 != 0) goto L39
            goto L38
        L36:
            if (r9 != 0) goto L39
        L38:
            r2 = 1
        L39:
            if (r11 == 0) goto L3e
            int r11 = r5.b
            goto L3f
        L3e:
            r11 = -1
        L3f:
            android.os.Handler r10 = d.g.f.b.h.c.c(r10)
            d.g.g.d$a r0 = new d.g.g.d$a
            r0.<init>(r9)
            d.g.j.e r5 = r5.a
            d.g.j.c r9 = new d.g.j.c
            r9.<init>(r0, r10)
            if (r2 == 0) goto L56
            android.graphics.Typeface r4 = d.g.j.f.c(r4, r5, r9, r8, r11)
            goto L6f
        L56:
            android.graphics.Typeface r4 = d.g.j.f.b(r4, r5, r8, r1, r9)
            goto L6f
        L5b:
            d.g.g.j r11 = d.g.g.d.a
            d.g.f.b.d r5 = (d.g.f.b.d) r5
            android.graphics.Typeface r4 = r11.a(r4, r5, r6, r8)
            if (r9 == 0) goto L6f
            if (r4 == 0) goto L6b
            r9.b(r4, r10)
            goto L6f
        L6b:
            r5 = -3
            r9.a(r5, r10)
        L6f:
            if (r4 == 0) goto L7a
            d.e.f<java.lang.String, android.graphics.Typeface> r5 = d.g.g.d.b
            java.lang.String r6 = d(r6, r7, r8)
            r5.b(r6, r4)
        L7a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.g.d.b(android.content.Context, d.g.f.b.c, android.content.res.Resources, int, int, d.g.f.b.h$c, android.os.Handler, boolean):android.graphics.Typeface");
    }

    public static android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, int i, java.lang.String str, int i2) {
        android.graphics.Typeface typefaceD = a.d(context, resources, i, str, i2);
        if (typefaceD != null) {
            b.b(d(resources, i, i2), typefaceD);
        }
        return typefaceD;
    }

    public static java.lang.String d(android.content.res.Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
