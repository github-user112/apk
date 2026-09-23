package d.o;

/* loaded from: classes.dex */
public class b implements d.o.a {
    public final java.lang.reflect.Constructor<?> a;

    public b(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.reflect.Constructor<?> constructor = cls.getConstructor(java.io.File.class, java.util.zip.ZipFile.class, dalvik.system.DexFile.class);
        this.a = constructor;
        constructor.setAccessible(true);
    }

    @Override // d.o.a
    public java.lang.Object a(java.io.File file, dalvik.system.DexFile dexFile) {
        return this.a.newInstance(file, new java.util.zip.ZipFile(file), dexFile);
    }
}
