package d.l;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static d.l.b f2157c = new d.l.b();
    public final java.util.Map<java.lang.Class<?>, d.l.b.a> a = new java.util.HashMap();
    public final java.util.Map<java.lang.Class<?>, java.lang.Boolean> b = new java.util.HashMap();

    public static class a {
        public final java.util.Map<d.l.e.a, java.util.List<d.l.b.C0054b>> a = new java.util.HashMap();
        public final java.util.Map<d.l.b.C0054b, d.l.e.a> b;

        public a(java.util.Map<d.l.b.C0054b, d.l.e.a> map) {
            this.b = map;
            for (java.util.Map.Entry<d.l.b.C0054b, d.l.e.a> entry : map.entrySet()) {
                d.l.e.a value = entry.getValue();
                java.util.List<d.l.b.C0054b> arrayList = this.a.get(value);
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList<>();
                    this.a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        public static void a(java.util.List<d.l.b.C0054b> list, d.l.h hVar, d.l.e.a aVar, java.lang.Object obj) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    d.l.b.C0054b c0054b = list.get(size);
                    if (c0054b == null) {
                        throw null;
                    }
                    try {
                        int i = c0054b.a;
                        if (i == 0) {
                            c0054b.b.invoke(obj, new java.lang.Object[0]);
                        } else if (i == 1) {
                            c0054b.b.invoke(obj, hVar);
                        } else if (i == 2) {
                            c0054b.b.invoke(obj, hVar, aVar);
                        }
                    } catch (java.lang.IllegalAccessException e2) {
                        throw new java.lang.RuntimeException(e2);
                    } catch (java.lang.reflect.InvocationTargetException e3) {
                        throw new java.lang.RuntimeException("Failed to call observer method", e3.getCause());
                    }
                }
            }
        }
    }

    /* renamed from: d.l.b$b, reason: collision with other inner class name */
    public static final class C0054b {
        public final int a;
        public final java.lang.reflect.Method b;

        public C0054b(int i, java.lang.reflect.Method method) {
            this.a = i;
            this.b = method;
            method.setAccessible(true);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d.l.b.C0054b)) {
                return false;
            }
            d.l.b.C0054b c0054b = (d.l.b.C0054b) obj;
            return this.a == c0054b.a && this.b.getName().equals(c0054b.b.getName());
        }

        public int hashCode() {
            return this.b.getName().hashCode() + (this.a * 31);
        }
    }

    public final d.l.b.a a(java.lang.Class<?> cls, java.lang.reflect.Method[] methodArr) {
        int i;
        d.l.b.a aVarB;
        java.lang.Class<?> superclass = cls.getSuperclass();
        java.util.HashMap map = new java.util.HashMap();
        if (superclass != null && (aVarB = b(superclass)) != null) {
            map.putAll(aVarB.b);
        }
        for (java.lang.Class<?> cls2 : cls.getInterfaces()) {
            for (java.util.Map.Entry<d.l.b.C0054b, d.l.e.a> entry : b(cls2).b.entrySet()) {
                c(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (java.lang.NoClassDefFoundError e2) {
                throw new java.lang.IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
            }
        }
        boolean z = false;
        for (java.lang.reflect.Method method : methodArr) {
            d.l.o oVar = (d.l.o) method.getAnnotation(d.l.o.class);
            if (oVar != null) {
                java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(d.l.h.class)) {
                        throw new java.lang.IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                d.l.e.a aVarValue = oVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(d.l.e.a.class)) {
                        throw new java.lang.IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarValue != d.l.e.a.ON_ANY) {
                        throw new java.lang.IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new java.lang.IllegalArgumentException("cannot have more than 2 params");
                }
                c(map, new d.l.b.C0054b(i, method), aVarValue, cls);
                z = true;
            }
        }
        d.l.b.a aVar = new d.l.b.a(map);
        this.a.put(cls, aVar);
        this.b.put(cls, java.lang.Boolean.valueOf(z));
        return aVar;
    }

    public d.l.b.a b(java.lang.Class<?> cls) {
        d.l.b.a aVar = this.a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    public final void c(java.util.Map<d.l.b.C0054b, d.l.e.a> map, d.l.b.C0054b c0054b, d.l.e.a aVar, java.lang.Class<?> cls) {
        d.l.e.a aVar2 = map.get(c0054b);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(c0054b, aVar);
                return;
            }
            return;
        }
        java.lang.reflect.Method method = c0054b.b;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Method ");
        sbO.append(method.getName());
        sbO.append(" in ");
        sbO.append(cls.getName());
        sbO.append(" already declared with different @OnLifecycleEvent value: previous value ");
        sbO.append(aVar2);
        sbO.append(", new value ");
        sbO.append(aVar);
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }
}
