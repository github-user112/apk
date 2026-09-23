package f.a.j;

/* loaded from: classes.dex */
public class i implements java.util.Comparator<java.lang.reflect.Method> {
    public i(f.a.j.j jVar) {
    }

    @Override // java.util.Comparator
    public int compare(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        return method.toString().compareTo(method2.toString());
    }
}
