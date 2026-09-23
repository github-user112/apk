package d.g.g;

/* loaded from: classes.dex */
public class j {

    @android.annotation.SuppressLint({"BanConcurrentHashMap"})
    public java.util.concurrent.ConcurrentHashMap<java.lang.Long, d.g.f.b.d> a = new java.util.concurrent.ConcurrentHashMap<>();

    public class a implements d.g.g.j.b<d.g.j.h> {
        public a(d.g.g.j jVar) {
        }

        @Override // d.g.g.j.b
        public int a(d.g.j.h hVar) {
            return hVar.f1977c;
        }

        @Override // d.g.g.j.b
        public boolean b(d.g.j.h hVar) {
            return hVar.f1978d;
        }
    }

    public interface b<T> {
        int a(T t);

        boolean b(T t);
    }

    public static <T> T e(T[] tArr, int i, d.g.g.j.b<T> bVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (java.lang.Math.abs(bVar.a(t2) - i2) * 2) + (bVar.b(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    public static long g(android.graphics.Typeface typeface) throws java.lang.NoSuchFieldException {
        if (typeface == null) {
            return 0L;
        }
        try {
            java.lang.reflect.Field declaredField = android.graphics.Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((java.lang.Number) declaredField.get(typeface)).longValue();
        } catch (java.lang.IllegalAccessException e2) {
            android.util.Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        } catch (java.lang.NoSuchFieldException e3) {
            android.util.Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e3);
            return 0L;
        }
    }

    public android.graphics.Typeface a(android.content.Context context, d.g.f.b.d dVar, android.content.res.Resources resources, int i) throws java.lang.NoSuchFieldException {
        d.g.f.b.e eVar = (d.g.f.b.e) e(dVar.a, i, new d.g.g.k(this));
        if (eVar == null) {
            return null;
        }
        android.graphics.Typeface typefaceC = d.g.g.d.c(context, resources, eVar.f1944f, eVar.a, i);
        long jG = g(typefaceC);
        if (jG != 0) {
            this.a.put(java.lang.Long.valueOf(jG), dVar);
        }
        return typefaceC;
    }

    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, d.g.j.h[] hVarArr, int i) {
        java.io.InputStream inputStreamOpenInputStream;
        java.io.InputStream inputStream = null;
        if (hVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(f(hVarArr, i).a);
            try {
                android.graphics.Typeface typefaceC = c(context, inputStreamOpenInputStream);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (java.io.IOException unused) {
                    }
                }
                return typefaceC;
            } catch (java.io.IOException unused2) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (java.io.IOException unused3) {
                    }
                }
                return null;
            } catch (java.lang.Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (java.io.IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (java.io.IOException unused5) {
            inputStreamOpenInputStream = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public android.graphics.Typeface c(android.content.Context context, java.io.InputStream inputStream) {
        java.io.File fileM = d.b.k.r.M(context);
        if (fileM == null) {
            return null;
        }
        try {
            if (d.b.k.r.o(fileM, inputStream)) {
                return android.graphics.Typeface.createFromFile(fileM.getPath());
            }
            return null;
        } catch (java.lang.RuntimeException unused) {
            return null;
        } finally {
            fileM.delete();
        }
    }

    public android.graphics.Typeface d(android.content.Context context, android.content.res.Resources resources, int i, java.lang.String str, int i2) {
        java.io.File fileM = d.b.k.r.M(context);
        if (fileM == null) {
            return null;
        }
        try {
            if (d.b.k.r.n(fileM, resources, i)) {
                return android.graphics.Typeface.createFromFile(fileM.getPath());
            }
            return null;
        } catch (java.lang.RuntimeException unused) {
            return null;
        } finally {
            fileM.delete();
        }
    }

    public d.g.j.h f(d.g.j.h[] hVarArr, int i) {
        return (d.g.j.h) e(hVarArr, i, new d.g.g.j.a(this));
    }
}
