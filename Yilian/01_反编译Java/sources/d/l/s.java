package d.l;

/* loaded from: classes.dex */
public abstract class s {
    public final java.util.Map<java.lang.String, java.lang.Object> a = new java.util.HashMap();
    public volatile boolean b = false;

    public void a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T b(java.lang.String str, T t) throws java.io.IOException {
        java.lang.Object obj;
        synchronized (this.a) {
            obj = this.a.get(str);
            if (obj == 0) {
                this.a.put(str, t);
            }
        }
        if (obj != 0) {
            t = obj;
        }
        if (this.b && (t instanceof java.io.Closeable)) {
            try {
                ((java.io.Closeable) t).close();
            } catch (java.io.IOException e2) {
                throw new java.lang.RuntimeException(e2);
            }
        }
        return t;
    }
}
