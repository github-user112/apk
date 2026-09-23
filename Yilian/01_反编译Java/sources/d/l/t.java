package d.l;

/* loaded from: classes.dex */
public class t extends d.l.w {

    /* renamed from: c, reason: collision with root package name */
    public static d.l.t f2175c;
    public android.app.Application b;

    public t(android.app.Application application) {
        this.b = application;
    }

    @Override // d.l.w, d.l.u
    public <T extends d.l.s> T a(java.lang.Class<T> cls) {
        if (!d.l.a.class.isAssignableFrom(cls)) {
            return (T) super.a(cls);
        }
        try {
            return cls.getConstructor(android.app.Application.class).newInstance(this.b);
        } catch (java.lang.IllegalAccessException e2) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (java.lang.InstantiationException e3) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (java.lang.NoSuchMethodException e4) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e4);
        } catch (java.lang.reflect.InvocationTargetException e5) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e5);
        }
    }
}
