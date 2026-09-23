package d.g.g;

/* loaded from: classes.dex */
public class e extends d.g.g.j {
    public static java.lang.Class<?> b = null;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Constructor<?> f1951c = null;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Method f1952d = null;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Method f1953e = null;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f1954f = false;

    public static boolean h(java.lang.Object obj, java.lang.String str, int i, boolean z) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        j();
        try {
            return ((java.lang.Boolean) f1952d.invoke(obj, str, java.lang.Integer.valueOf(i), java.lang.Boolean.valueOf(z))).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }

    public static void j() throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        java.lang.reflect.Method method;
        java.lang.Class<?> cls;
        java.lang.reflect.Method method2;
        if (f1954f) {
            return;
        }
        f1954f = true;
        java.lang.reflect.Constructor<?> constructor = null;
        try {
            cls = java.lang.Class.forName("android.graphics.FontFamily");
            java.lang.reflect.Constructor<?> constructor2 = cls.getConstructor(new java.lang.Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", java.lang.String.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE);
            method = android.graphics.Typeface.class.getMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e2) {
            android.util.Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
            method = null;
            cls = null;
            method2 = null;
        }
        f1951c = constructor;
        b = cls;
        f1952d = method2;
        f1953e = method;
    }

    @Override // d.g.g.j
    public android.graphics.Typeface a(android.content.Context context, d.g.f.b.d dVar, android.content.res.Resources resources, int i) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.InstantiationException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException, java.lang.NegativeArraySizeException {
        j();
        try {
            java.lang.Object objNewInstance = f1951c.newInstance(new java.lang.Object[0]);
            for (d.g.f.b.e eVar : dVar.a) {
                java.io.File fileM = d.b.k.r.M(context);
                if (fileM == null) {
                    return null;
                }
                try {
                    if (!d.b.k.r.n(fileM, resources, eVar.f1944f)) {
                        return null;
                    }
                    if (!h(objNewInstance, fileM.getPath(), eVar.b, eVar.f1941c)) {
                        return null;
                    }
                } catch (java.lang.RuntimeException unused) {
                    return null;
                } finally {
                    fileM.delete();
                }
            }
            j();
            try {
                java.lang.Object objNewInstance2 = java.lang.reflect.Array.newInstance(b, 1);
                java.lang.reflect.Array.set(objNewInstance2, 0, objNewInstance);
                return (android.graphics.Typeface) f1953e.invoke(null, objNewInstance2);
            } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e2) {
                throw new java.lang.RuntimeException(e2);
            }
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException e3) {
            throw new java.lang.RuntimeException(e3);
        }
    }

    @Override // d.g.g.j
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, d.g.j.h[] hVarArr, int i) throws java.io.IOException {
        if (hVarArr.length < 1) {
            return null;
        }
        d.g.j.h hVarF = f(hVarArr, i);
        try {
            android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(hVarF.a, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                }
                return null;
            }
            try {
                java.io.File fileI = i(parcelFileDescriptorOpenFileDescriptor);
                if (fileI != null && fileI.canRead()) {
                    android.graphics.Typeface typefaceCreateFromFile = android.graphics.Typeface.createFromFile(fileI);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceCreateFromFile;
                }
                java.io.FileInputStream fileInputStream = new java.io.FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    android.graphics.Typeface typefaceC = super.c(context, fileInputStream);
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceC;
                } catch (java.lang.Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (java.lang.Throwable unused) {
                    }
                    throw th;
                }
            } finally {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (java.lang.Throwable unused2) {
                }
            }
        } catch (java.io.IOException unused3) {
            return null;
        }
    }

    public final java.io.File i(android.os.ParcelFileDescriptor parcelFileDescriptor) throws android.system.ErrnoException {
        try {
            java.lang.String str = android.system.Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (android.system.OsConstants.S_ISREG(android.system.Os.stat(str).st_mode)) {
                return new java.io.File(str);
            }
            return null;
        } catch (android.system.ErrnoException unused) {
            return null;
        }
    }
}
