package d.g.g;

/* loaded from: classes.dex */
public class g extends d.g.g.e {

    /* renamed from: g, reason: collision with root package name */
    public final java.lang.Class<?> f1958g;
    public final java.lang.reflect.Constructor<?> h;
    public final java.lang.reflect.Method i;
    public final java.lang.reflect.Method j;
    public final java.lang.reflect.Method k;
    public final java.lang.reflect.Method l;
    public final java.lang.reflect.Method m;

    public g() throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        java.lang.reflect.Method methodS;
        java.lang.reflect.Method method;
        java.lang.reflect.Constructor<?> constructor;
        java.lang.reflect.Method methodQ;
        java.lang.reflect.Method methodR;
        java.lang.reflect.Method method2;
        java.lang.Class<?> cls = null;
        try {
            java.lang.Class<?> cls2 = java.lang.Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(new java.lang.Class[0]);
            methodQ = q(cls2);
            methodR = r(cls2);
            method2 = cls2.getMethod("freeze", new java.lang.Class[0]);
            method = cls2.getMethod("abortCreation", new java.lang.Class[0]);
            methodS = s(cls2);
            cls = cls2;
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unable to collect necessary methods for class ");
            sbO.append(e2.getClass().getName());
            android.util.Log.e("TypefaceCompatApi26Impl", sbO.toString(), e2);
            methodS = null;
            method = null;
            constructor = null;
            methodQ = null;
            methodR = null;
            method2 = null;
        }
        this.f1958g = cls;
        this.h = constructor;
        this.i = methodQ;
        this.j = methodR;
        this.k = method2;
        this.l = method;
        this.m = methodS;
    }

    private java.lang.Object p() {
        try {
            return this.h.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }

    @Override // d.g.g.e, d.g.g.j
    public android.graphics.Typeface a(android.content.Context context, d.g.f.b.d dVar, android.content.res.Resources resources, int i) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!o()) {
            return super.a(context, dVar, resources, i);
        }
        java.lang.Object objP = p();
        if (objP == null) {
            return null;
        }
        for (d.g.f.b.e eVar : dVar.a) {
            if (!l(context, objP, eVar.a, eVar.f1943e, eVar.b, eVar.f1941c ? 1 : 0, android.graphics.fonts.FontVariationAxis.fromFontVariationSettings(eVar.f1942d))) {
                k(objP);
                return null;
            }
        }
        if (n(objP)) {
            return m(objP);
        }
        return null;
    }

    @Override // d.g.g.e, d.g.g.j
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, d.g.j.h[] hVarArr, int i) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        android.graphics.Typeface typefaceM;
        boolean zBooleanValue;
        if (hVarArr.length < 1) {
            return null;
        }
        if (!o()) {
            d.g.j.h hVarF = f(hVarArr, i);
            try {
                android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(hVarF.a, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                    return null;
                }
                try {
                    android.graphics.Typeface typefaceBuild = new android.graphics.Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(hVarF.f1977c).setItalic(hVarF.f1978d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } finally {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (java.lang.Throwable unused) {
                    }
                }
            } catch (java.io.IOException unused2) {
                return null;
            }
        }
        java.util.HashMap map = new java.util.HashMap();
        for (d.g.j.h hVar : hVarArr) {
            if (hVar.f1979e == 0) {
                android.net.Uri uri = hVar.a;
                if (!map.containsKey(uri)) {
                    map.put(uri, d.b.k.r.V(context, cancellationSignal, uri));
                }
            }
        }
        java.util.Map mapUnmodifiableMap = java.util.Collections.unmodifiableMap(map);
        java.lang.Object objP = p();
        if (objP == null) {
            return null;
        }
        boolean z = false;
        for (d.g.j.h hVar2 : hVarArr) {
            java.nio.ByteBuffer byteBuffer = (java.nio.ByteBuffer) mapUnmodifiableMap.get(hVar2.a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((java.lang.Boolean) this.j.invoke(objP, byteBuffer, java.lang.Integer.valueOf(hVar2.b), null, java.lang.Integer.valueOf(hVar2.f1977c), java.lang.Integer.valueOf(hVar2.f1978d ? 1 : 0))).booleanValue();
                } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused3) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    k(objP);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            k(objP);
            return null;
        }
        if (n(objP) && (typefaceM = m(objP)) != null) {
            return android.graphics.Typeface.create(typefaceM, i);
        }
        return null;
    }

    @Override // d.g.g.j
    public android.graphics.Typeface d(android.content.Context context, android.content.res.Resources resources, int i, java.lang.String str, int i2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!o()) {
            return super.d(context, resources, i, str, i2);
        }
        java.lang.Object objP = p();
        if (objP == null) {
            return null;
        }
        if (!l(context, objP, str, 0, -1, -1, null)) {
            k(objP);
            return null;
        }
        if (n(objP)) {
            return m(objP);
        }
        return null;
    }

    public final void k(java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            this.l.invoke(obj, new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
        }
    }

    public final boolean l(android.content.Context context, java.lang.Object obj, java.lang.String str, int i, int i2, int i3, android.graphics.fonts.FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((java.lang.Boolean) this.i.invoke(obj, context.getAssets(), str, 0, java.lang.Boolean.FALSE, java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public android.graphics.Typeface m(java.lang.Object obj) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        try {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(this.f1958g, 1);
            java.lang.reflect.Array.set(objNewInstance, 0, obj);
            return (android.graphics.Typeface) this.m.invoke(null, objNewInstance, -1, -1);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean n(java.lang.Object obj) {
        try {
            return ((java.lang.Boolean) this.k.invoke(obj, new java.lang.Object[0])).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean o() {
        if (this.i == null) {
            android.util.Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.i != null;
    }

    public java.lang.reflect.Method q(java.lang.Class<?> cls) {
        java.lang.Class<?> cls2 = java.lang.Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", android.content.res.AssetManager.class, java.lang.String.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE, cls2, cls2, cls2, android.graphics.fonts.FontVariationAxis[].class);
    }

    public java.lang.reflect.Method r(java.lang.Class<?> cls) {
        java.lang.Class<?> cls2 = java.lang.Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", java.nio.ByteBuffer.class, cls2, android.graphics.fonts.FontVariationAxis[].class, cls2, cls2);
    }

    public java.lang.reflect.Method s(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        java.lang.reflect.Method declaredMethod = android.graphics.Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
