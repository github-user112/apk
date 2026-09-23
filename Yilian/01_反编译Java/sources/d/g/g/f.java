package d.g.g;

/* loaded from: classes.dex */
public class f extends d.g.g.j {
    public static final java.lang.Class<?> b;

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.reflect.Constructor<?> f1955c;

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.reflect.Method f1956d;

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.reflect.Method f1957e;

    static {
        java.lang.Class<?> cls;
        java.lang.reflect.Method method;
        java.lang.reflect.Method method2;
        java.lang.reflect.Constructor<?> constructor = null;
        try {
            cls = java.lang.Class.forName("android.graphics.FontFamily");
            java.lang.reflect.Constructor<?> constructor2 = cls.getConstructor(new java.lang.Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", java.nio.ByteBuffer.class, java.lang.Integer.TYPE, java.util.List.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE);
            method = android.graphics.Typeface.class.getMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e2) {
            android.util.Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f1955c = constructor;
        b = cls;
        f1956d = method2;
        f1957e = method;
    }

    public static boolean h(java.lang.Object obj, java.nio.ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((java.lang.Boolean) f1956d.invoke(obj, byteBuffer, java.lang.Integer.valueOf(i), null, java.lang.Integer.valueOf(i2), java.lang.Boolean.valueOf(z))).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public static android.graphics.Typeface i(java.lang.Object obj) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        try {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(b, 1);
            java.lang.reflect.Array.set(objNewInstance, 0, obj);
            return (android.graphics.Typeface) f1957e.invoke(null, objNewInstance);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }

    @Override // d.g.g.j
    public android.graphics.Typeface a(android.content.Context context, d.g.f.b.d dVar, android.content.res.Resources resources, int i) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.Object objNewInstance;
        java.nio.MappedByteBuffer map;
        try {
            objNewInstance = f1955c.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (d.g.f.b.e eVar : dVar.a) {
            int i2 = eVar.f1944f;
            java.io.File fileM = d.b.k.r.M(context);
            if (fileM == null) {
                map = null;
            } else {
                try {
                    if (d.b.k.r.n(fileM, resources, i2)) {
                        try {
                            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(fileM);
                            try {
                                java.nio.channels.FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                            } catch (java.lang.Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (java.lang.Throwable unused2) {
                                }
                                throw th;
                            }
                        } catch (java.io.IOException unused3) {
                            map = null;
                        }
                    } else {
                        map = null;
                    }
                } finally {
                    fileM.delete();
                }
            }
            if (map == null || !h(objNewInstance, map, eVar.f1943e, eVar.b, eVar.f1941c)) {
                return null;
            }
        }
        return i(objNewInstance);
    }

    @Override // d.g.g.j
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, d.g.j.h[] hVarArr, int i) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.io.IOException, java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException, java.lang.NegativeArraySizeException {
        java.lang.Object objNewInstance;
        try {
            objNewInstance = f1955c.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        d.e.h hVar = new d.e.h();
        for (d.g.j.h hVar2 : hVarArr) {
            android.net.Uri uri = hVar2.a;
            java.nio.ByteBuffer byteBufferV = (java.nio.ByteBuffer) hVar.get(uri);
            if (byteBufferV == null) {
                byteBufferV = d.b.k.r.V(context, cancellationSignal, uri);
                hVar.put(uri, byteBufferV);
            }
            if (byteBufferV == null || !h(objNewInstance, byteBufferV, hVar2.b, hVar2.f1977c, hVar2.f1978d)) {
                return null;
            }
        }
        android.graphics.Typeface typefaceI = i(objNewInstance);
        if (typefaceI == null) {
            return null;
        }
        return android.graphics.Typeface.create(typefaceI, i);
    }
}
