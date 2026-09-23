package d.g.g;

/* loaded from: classes.dex */
public class h extends d.g.g.g {
    @Override // d.g.g.g
    public android.graphics.Typeface m(java.lang.Object obj) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        try {
            java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(this.f1958g, 1);
            java.lang.reflect.Array.set(objNewInstance, 0, obj);
            return (android.graphics.Typeface) this.m.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }

    @Override // d.g.g.g
    public java.lang.reflect.Method s(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.Class cls2 = java.lang.Integer.TYPE;
        java.lang.reflect.Method declaredMethod = android.graphics.Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", java.lang.reflect.Array.newInstance(cls, 1).getClass(), java.lang.String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
