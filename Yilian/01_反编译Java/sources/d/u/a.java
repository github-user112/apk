package d.u;

/* loaded from: classes.dex */
public abstract class a {
    public final d.e.a<java.lang.String, java.lang.reflect.Method> a;
    public final d.e.a<java.lang.String, java.lang.reflect.Method> b;

    /* renamed from: c, reason: collision with root package name */
    public final d.e.a<java.lang.String, java.lang.Class> f2334c;

    public a(d.e.a<java.lang.String, java.lang.reflect.Method> aVar, d.e.a<java.lang.String, java.lang.reflect.Method> aVar2, d.e.a<java.lang.String, java.lang.Class> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.f2334c = aVar3;
    }

    public abstract void a();

    public abstract d.u.a b();

    public final java.lang.Class c(java.lang.Class<? extends d.u.c> cls) throws java.lang.ClassNotFoundException {
        java.lang.Class orDefault = this.f2334c.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        java.lang.Class<?> cls2 = java.lang.Class.forName(java.lang.String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f2334c.put(cls.getName(), cls2);
        return cls2;
    }

    public final java.lang.reflect.Method d(java.lang.String str) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.reflect.Method orDefault = this.a.getOrDefault(str, null);
        if (orDefault != null) {
            return orDefault;
        }
        java.lang.System.currentTimeMillis();
        java.lang.reflect.Method declaredMethod = java.lang.Class.forName(str, true, d.u.a.class.getClassLoader()).getDeclaredMethod(com.huawei.hms.framework.common.ExceptionCode.READ, d.u.a.class);
        this.a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final java.lang.reflect.Method e(java.lang.Class cls) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        java.lang.reflect.Method orDefault = this.b.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        java.lang.Class clsC = c(cls);
        java.lang.System.currentTimeMillis();
        java.lang.reflect.Method declaredMethod = clsC.getDeclaredMethod(com.huawei.hms.framework.common.ExceptionCode.WRITE, cls, d.u.a.class);
        this.b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public boolean f(boolean z, int i) {
        return !h(i) ? z : ((d.u.b) this).f2336e.readInt() != 0;
    }

    public java.lang.CharSequence g(java.lang.CharSequence charSequence, int i) {
        return !h(i) ? charSequence : (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((d.u.b) this).f2336e);
    }

    public abstract boolean h(int i);

    public int i(int i, int i2) {
        return !h(i2) ? i : ((d.u.b) this).f2336e.readInt();
    }

    public <T extends android.os.Parcelable> T j(T t, int i) {
        return !h(i) ? t : (T) ((d.u.b) this).f2336e.readParcelable(d.u.b.class.getClassLoader());
    }

    public <T extends d.u.c> T k() {
        java.lang.String string = ((d.u.b) this).f2336e.readString();
        if (string == null) {
            return null;
        }
        try {
            return (T) d(string).invoke(null, b());
        } catch (java.lang.ClassNotFoundException e2) {
            throw new java.lang.RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (java.lang.IllegalAccessException e3) {
            throw new java.lang.RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (java.lang.NoSuchMethodException e4) {
            throw new java.lang.RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (java.lang.reflect.InvocationTargetException e5) {
            if (e5.getCause() instanceof java.lang.RuntimeException) {
                throw ((java.lang.RuntimeException) e5.getCause());
            }
            throw new java.lang.RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    public abstract void l(int i);

    public void m(int i, int i2) {
        l(i2);
        ((d.u.b) this).f2336e.writeInt(i);
    }

    public void n(android.os.Parcelable parcelable, int i) {
        l(i);
        ((d.u.b) this).f2336e.writeParcelable(parcelable, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void o(d.u.c cVar) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (cVar == null) {
            ((d.u.b) this).f2336e.writeString(null);
            return;
        }
        try {
            ((d.u.b) this).f2336e.writeString(c(cVar.getClass()).getName());
            d.u.a aVarB = b();
            try {
                e(cVar.getClass()).invoke(null, cVar, aVarB);
                aVarB.a();
            } catch (java.lang.ClassNotFoundException e2) {
                throw new java.lang.RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
            } catch (java.lang.IllegalAccessException e3) {
                throw new java.lang.RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
            } catch (java.lang.NoSuchMethodException e4) {
                throw new java.lang.RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
            } catch (java.lang.reflect.InvocationTargetException e5) {
                if (!(e5.getCause() instanceof java.lang.RuntimeException)) {
                    throw new java.lang.RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
                }
                throw ((java.lang.RuntimeException) e5.getCause());
            }
        } catch (java.lang.ClassNotFoundException e6) {
            throw new java.lang.RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e6);
        }
    }
}
