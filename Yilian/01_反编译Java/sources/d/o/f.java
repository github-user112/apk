package d.o;

/* loaded from: classes.dex */
public class f implements java.io.FileFilter {
    public f(d.o.g gVar) {
    }

    @Override // java.io.FileFilter
    public boolean accept(java.io.File file) {
        return !file.getName().equals("MultiDex.lock");
    }
}
