package androidx.lifecycle;

/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements d.l.f {
    public final java.lang.Object a;
    public final d.l.b.a b;

    public ReflectiveGenericLifecycleObserver(java.lang.Object obj) {
        this.a = obj;
        this.b = d.l.b.f2157c.b(obj.getClass());
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        d.l.b.a aVar2 = this.b;
        java.lang.Object obj = this.a;
        d.l.b.a.a(aVar2.a.get(aVar), hVar, aVar, obj);
        d.l.b.a.a(aVar2.a.get(d.l.e.a.ON_ANY), hVar, aVar, obj);
    }
}
