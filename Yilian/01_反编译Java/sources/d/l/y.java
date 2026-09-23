package d.l;

/* loaded from: classes.dex */
public class y {
    public final java.util.HashMap<java.lang.String, d.l.s> a = new java.util.HashMap<>();

    public final void a() {
        for (d.l.s sVar : this.a.values()) {
            sVar.b = true;
            java.util.Map<java.lang.String, java.lang.Object> map = sVar.a;
            if (map != null) {
                synchronized (map) {
                    for (java.lang.Object obj : sVar.a.values()) {
                        if (obj instanceof java.io.Closeable) {
                            try {
                                ((java.io.Closeable) obj).close();
                            } catch (java.io.IOException e2) {
                                throw new java.lang.RuntimeException(e2);
                            }
                        }
                    }
                }
            }
            sVar.a();
        }
        this.a.clear();
    }
}
