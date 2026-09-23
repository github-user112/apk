package f.a.j;

/* loaded from: classes.dex */
public final class j<T> {

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> f3016g = java.util.Collections.synchronizedMap(new java.util.HashMap());
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> h;
    public static final java.util.Map<f.a.j.k<?>, f.a.j.h<?, ?>> i;
    public static final java.util.Map<java.lang.Class<?>, f.a.j.h<?, ?>> j;
    public final java.lang.Class<T> a;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.reflect.InvocationHandler f3017c;
    public java.lang.ClassLoader b = f.a.j.j.class.getClassLoader();

    /* renamed from: d, reason: collision with root package name */
    public java.lang.Class<?>[] f3018d = new java.lang.Class[0];

    /* renamed from: e, reason: collision with root package name */
    public java.lang.Object[] f3019e = new java.lang.Object[0];

    /* renamed from: f, reason: collision with root package name */
    public java.util.Set<java.lang.Class<?>> f3020f = new java.util.HashSet();

    public static class a {
        public final java.lang.String a;
        public final java.lang.Class<?>[] b;

        /* renamed from: c, reason: collision with root package name */
        public final java.lang.Class<?> f3021c;

        /* renamed from: d, reason: collision with root package name */
        public final java.lang.reflect.Method f3022d;

        public a(java.lang.reflect.Method method) {
            this.f3022d = method;
            this.a = method.getName();
            this.b = method.getParameterTypes();
            this.f3021c = method.getReturnType();
        }

        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof f.a.j.j.a)) {
                return false;
            }
            f.a.j.j.a aVar = (f.a.j.j.a) obj;
            return this.a.equals(aVar.a) && this.f3021c.equals(aVar.f3021c) && java.util.Arrays.equals(this.b, aVar.b);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() + 527 + 17;
            int iHashCode2 = this.f3021c.hashCode() + (iHashCode * 31) + iHashCode;
            return (iHashCode2 * 31) + java.util.Arrays.hashCode(this.b) + iHashCode2;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        h = map;
        map.put(java.lang.Boolean.TYPE, java.lang.Boolean.class);
        h.put(java.lang.Integer.TYPE, java.lang.Integer.class);
        h.put(java.lang.Byte.TYPE, java.lang.Byte.class);
        h.put(java.lang.Long.TYPE, java.lang.Long.class);
        h.put(java.lang.Short.TYPE, java.lang.Short.class);
        h.put(java.lang.Float.TYPE, java.lang.Float.class);
        h.put(java.lang.Double.TYPE, java.lang.Double.class);
        h.put(java.lang.Character.TYPE, java.lang.Character.class);
        i = new java.util.HashMap();
        for (java.util.Map.Entry<java.lang.Class<?>, java.lang.Class<?>> entry : h.entrySet()) {
            f.a.j.k<?> kVarA = f.a.j.k.a(entry.getKey());
            f.a.j.k kVarA2 = f.a.j.k.a(entry.getValue());
            i.put(kVarA, kVarA2.b(kVarA2, "valueOf", kVarA));
        }
        java.util.HashMap map2 = new java.util.HashMap();
        map2.put(java.lang.Boolean.TYPE, f.a.j.k.a(java.lang.Boolean.class).b(f.a.j.k.f3023d, "booleanValue", new f.a.j.k[0]));
        map2.put(java.lang.Integer.TYPE, f.a.j.k.a(java.lang.Integer.class).b(f.a.j.k.i, "intValue", new f.a.j.k[0]));
        map2.put(java.lang.Byte.TYPE, f.a.j.k.a(java.lang.Byte.class).b(f.a.j.k.f3024e, "byteValue", new f.a.j.k[0]));
        map2.put(java.lang.Long.TYPE, f.a.j.k.a(java.lang.Long.class).b(f.a.j.k.j, "longValue", new f.a.j.k[0]));
        map2.put(java.lang.Short.TYPE, f.a.j.k.a(java.lang.Short.class).b(f.a.j.k.k, "shortValue", new f.a.j.k[0]));
        map2.put(java.lang.Float.TYPE, f.a.j.k.a(java.lang.Float.class).b(f.a.j.k.h, "floatValue", new f.a.j.k[0]));
        map2.put(java.lang.Double.TYPE, f.a.j.k.a(java.lang.Double.class).b(f.a.j.k.f3026g, "doubleValue", new f.a.j.k[0]));
        map2.put(java.lang.Character.TYPE, f.a.j.k.a(java.lang.Character.class).b(f.a.j.k.f3025f, "charValue", new f.a.j.k[0]));
        j = map2;
    }

    public j(java.lang.Class<T> cls) {
        this.a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:191:0x059d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x04be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T a() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.SecurityException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 1780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.j.j.a():java.lang.Object");
    }

    public final void b(java.util.Set<f.a.j.j.a> set, java.util.Set<f.a.j.j.a> set2, java.lang.Class<?> cls) throws java.lang.SecurityException {
        for (java.lang.reflect.Method method : cls.getDeclaredMethods()) {
            if ((method.getModifiers() & 16) != 0) {
                f.a.j.j.a aVar = new f.a.j.j.a(method);
                set2.add(aVar);
                set.remove(aVar);
            } else if ((method.getModifiers() & 8) == 0 && ((java.lang.reflect.Modifier.isPublic(method.getModifiers()) || java.lang.reflect.Modifier.isProtected(method.getModifiers())) && (!method.getName().equals("finalize") || method.getParameterTypes().length != 0))) {
                f.a.j.j.a aVar2 = new f.a.j.j.a(method);
                if (!set2.contains(aVar2)) {
                    set.add(aVar2);
                }
            }
        }
        if (cls.isInterface()) {
            for (java.lang.Class<?> cls2 : cls.getInterfaces()) {
                b(set, set2, cls2);
            }
        }
    }
}
