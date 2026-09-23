package f.a.j;

/* loaded from: classes.dex */
public final class d {
    public final java.util.Map<f.a.j.k<?>, f.a.j.d.c> a = new java.util.LinkedHashMap();
    public java.lang.ClassLoader b;

    /* renamed from: c, reason: collision with root package name */
    public e.a.b.b.c.m f2995c;

    public static class a {
        public final f.a.j.e<?, ?> a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final java.lang.Object f2996c;

        public a(f.a.j.e<?, ?> eVar, int i, java.lang.Object obj) {
            if ((i & 8) == 0 && obj != null) {
                throw new java.lang.IllegalArgumentException("instance fields may not have a value");
            }
            this.a = eVar;
            this.b = i;
            this.f2996c = obj;
        }
    }

    public static class b {
        public final f.a.j.h<?, ?> a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final f.a.j.b f2997c = new f.a.j.b(this);

        public b(f.a.j.h<?, ?> hVar, int i) {
            this.a = hVar;
            this.b = i;
        }
    }

    public static class c {
        public final f.a.j.k<?> a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f2998c;

        /* renamed from: d, reason: collision with root package name */
        public f.a.j.k<?> f2999d;

        /* renamed from: e, reason: collision with root package name */
        public java.lang.String f3000e;

        /* renamed from: f, reason: collision with root package name */
        public f.a.j.l f3001f;

        /* renamed from: g, reason: collision with root package name */
        public e.a.b.b.c.f f3002g;
        public final java.util.Map<f.a.j.e, f.a.j.d.a> h = new java.util.LinkedHashMap();
        public final java.util.Map<f.a.j.h, f.a.j.d.b> i = new java.util.LinkedHashMap();

        public c(f.a.j.k<?> kVar) {
            this.a = kVar;
        }
    }

    public f.a.j.b a(f.a.j.h<?, ?> hVar, int i) {
        f.a.j.d.c cVarE = e(hVar.a);
        if (cVarE.i.containsKey(hVar)) {
            throw new java.lang.IllegalStateException("already declared: " + hVar);
        }
        if ((i & (-64)) != 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected flag: ");
            sbO.append(java.lang.Integer.toHexString(i));
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        if ((i & 32) != 0) {
            i = (i & (-33)) | 131072;
        }
        if (hVar.f3012c.equals("<init>") || hVar.f3012c.equals("<clinit>")) {
            i |= 65536;
        }
        f.a.j.d.b bVar = new f.a.j.d.b(hVar, i);
        cVarE.i.put(hVar, bVar);
        return bVar.f2997c;
    }

    public void b(f.a.j.e<?, ?> eVar, int i, java.lang.Object obj) {
        f.a.j.d.c cVarE = e(eVar.a);
        if (cVarE.h.containsKey(eVar)) {
            throw new java.lang.IllegalStateException("already declared: " + eVar);
        }
        if ((i & (-224)) == 0) {
            cVarE.h.put(eVar, new f.a.j.d.a(eVar, i, null));
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected flag: ");
            sbO.append(java.lang.Integer.toHexString(i));
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:228:0x057e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.ClassLoader c(java.lang.ClassLoader r31, java.io.File r32) throws java.security.NoSuchAlgorithmException, java.security.DigestException, java.io.IOException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 1882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.j.d.c(java.lang.ClassLoader, java.io.File):java.lang.ClassLoader");
    }

    public final java.lang.ClassLoader d(java.io.File file, java.io.File file2, java.lang.ClassLoader classLoader) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            if (this.b == null) {
                return (java.lang.ClassLoader) java.lang.Class.forName("dalvik.system.DexClassLoader").getConstructor(java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.ClassLoader.class).newInstance(file.getPath(), file2.getAbsolutePath(), null, classLoader);
            }
            if (classLoader == null) {
                classLoader = this.b;
            }
            classLoader.getClass().getMethod("addDexPath", java.lang.String.class).invoke(classLoader, file.getPath());
            return classLoader;
        } catch (java.lang.ClassNotFoundException e2) {
            throw new java.lang.UnsupportedOperationException("load() requires a Dalvik VM", e2);
        } catch (java.lang.IllegalAccessException unused) {
            throw new java.lang.AssertionError();
        } catch (java.lang.InstantiationException unused2) {
            throw new java.lang.AssertionError();
        } catch (java.lang.NoSuchMethodException unused3) {
            throw new java.lang.AssertionError();
        } catch (java.lang.reflect.InvocationTargetException e3) {
            throw new java.lang.RuntimeException(e3.getCause());
        }
    }

    public f.a.j.d.c e(f.a.j.k<?> kVar) {
        f.a.j.d.c cVar = this.a.get(kVar);
        if (cVar != null) {
            return cVar;
        }
        f.a.j.d.c cVar2 = new f.a.j.d.c(kVar);
        this.a.put(kVar, cVar2);
        return cVar2;
    }
}
